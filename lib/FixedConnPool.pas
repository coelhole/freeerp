(* FixedConnectionPool (c) 2003-2005 Cary Jensen, Jensen Data Systems, Inc.
 *
 * This unit and its accompanying DFM file implement a connection pool.
 * The connection pool in this module provides a connection for
 * dbExpress using a SQLConnection object. To convert this connection
 * pool to provide a connection of some other type, such as an ADOConnection,
 * change the data type returned by the Connection function in the
 * IConnection interface, as well as in the data module that implements
 * the IConnection interface. The places in this unit where this change
 * needs to be implemented are marked with the comment //CHANGE.
 *
 * This project is provided for demonstration purposes only
 *
 * Note that this connection pool has not been tested on a
 * multiprocessor machine.
 *
 * No guarantees or warranties are expressed or implied concerning
 * the applicability of techniques or code included in this example.
 * If you wish to use techniques or code included in this example,
 * it is your responsibility to test and certify any code or
 * techniques design adopted as a result of this project.
 *
 * For information on consulting, training or mentorinig services,
 * please visit http://www.JensenDataSystems.com.
 *
 * Delphi Developer Days - Information-packed Delphi (TM) seminars
 * by Cary Jensen. Visit www.DelphiDeveloperDays.com for dates and locations.
 *
 * Developer Days ELetter by Cary Jensen, - Information, observations, and
 * events for the Delphi and .NET developer by Cary Jensen. And it's free.
 * Visit http://www.DeveloperDays.com to register to receive the
 * Developer Days ELetter.
 *)
unit FixedConnPool;

interface

uses
  SysUtils,
  Classes,
  DBXpress,
  DB,
  SqlExpr,
  SyncObjs,
  Windows,
  DateUtils, ZAbstractConnection, ZConnection;

type

  EConnPoolException = class (Exception);

  TCleanupThread = class; //forward declaration

  //This is the interface that is implemented
  //by the object that can provide a connection
  IConnection = Interface(IInterface)
    //CHANGE
    //To use a connection of another type, change the
    //return type of the Connection function
    function Connection: TZConnection;
    function GetRefCount: Integer;
    function GetLastAccess: TDateTime;
    property LastAccess: TDateTime read GetLastAccess;
    property RefCount: Integer read GetRefCount;
  end;

  //This is the class that manages the connection pool
  TFixedConnectionPool = class(TObject)
  private
    Flib:ansistring;
    FDatabase:ansistring;
    FPort:integer;
    FUser:ansistring;
    FPassword:ansistring;
    FPool: array of IConnection;
    FPoolSize: Integer;
    FTimeout: LargeInt;
    CleanupThread: TCleanupThread;
    //This semaphore is used to limit the number of
    //simultaneous connections. When the nth+1 connection
    //is requested, it will be blocked until a connection
    //becomes available.
    Semaphore: THandle;
    //This is the critical section that synchronizes
    //access to the connection pool
    CriticalSection: TCriticalSection;
  public
    //This constructor takes two optional
    //parameters. These parameters determine the size
    //of the connection pool, as well as how long idle
    //connections in the connection pool will be kept.
    constructor Create(
      const FBlib:ansistring='C:\Users\Administrador.WIN-6NJAJAVM677\Documents\GitHub\CSG\server\db\fbclient.dll';
      const Db:ansistring='C:\Users\Administrador.WIN-6NJAJAVM677\Desktop\TESTE.FDB';
      const Port:integer=3050;
      const User:ansistring='SYSDBA';
      const Password:ansistring='masterkey';
      const PoolSize: Integer = 16;
      const CleanupDelayMinutes: Integer = 3;
      const Timeoutms: LargeInt = 10000);
    destructor Destroy; override;
    //This function returns an object
    //that implements the IConnection interface.
    //This object can be a data module, as was
    //done in this example.
    function GetConnection: IConnection;
  end;

  //This thread class is used by the connection pool
  //object to cleanup idle connections after a
  //configurable period of time.
  TCleanupThread = class(TThread)
  private
    FCleanupDelay: Integer;
  protected
    //When the thread is created, this critical section
    //field will be assigned the connection pool's
    //critical section. This critical section is
    //used to synchronize access to data module
    //reference counts.
    CriticalSection: TCriticalSection;
    FixedConnectionPool: TFixedConnectionPool;
    procedure Execute; override;
    constructor Create(CreateSuspended: Boolean;
      const CleanupDelayMinutes: Integer);
  end;

  //This data module provides the implementation
  //of the IConnection interface. To use a data access
  //mechanism other than dbExpress, modify the components
  //that appear on this data module, and change the class
  //of the Connection function in the IConnection interface
  //as well as in this class.
  TConnectionModule = class(TDataModule, IConnection)
    ZConnection1: TZConnection;
  private
    { Private declarations }
  protected
    FRefCount: Integer;
    FLastAccess: TDateTime;
    //When the data module is created the
    //connection pool that creates the data module
    //will assign its critical section to this field.
    //The data module will use this critical section
    //to synchronize access to its reference count.
    CriticalSection: TCriticalSection;
    //This semaphore points to the FixedConnectionPool's
    //semaphore. It will be used to call ReleaseSemaphore
    //from the _Release method of the TDataModule.
    Semaphore: THandle;
    //These two static methods are reintroduced
    //in order to implement lifecycle management
    //for the interface of this object.
    //Normally, unlike normal COM objects, Delphi
    //TComponent descendants are not lifecycle managed
    //when used in interface references.
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
    {IConnection methods}
    function GetLastAccess: TDateTime;
    function GetRefCount: Integer;
  public
    { Public declarations }
    {IConnection method}
    //CHANGE
    //To use a connection of another type, change the
    //return type of the Connection function
    function Connection: TZConnection;
  end;

implementation

{$R *.dfm}

//This variable is used to control
//the cleanup thread's cleanup delay
var
  InternalEvent: TEvent;

{ TFixedConnectionPool }

constructor TFixedConnectionPool.Create(
      const FBlib:ansistring='C:\Users\Administrador.WIN-6NJAJAVM677\Documents\GitHub\CSG\server\db\fbclient.dll';
      const Db:ansistring='C:\Users\Administrador.WIN-6NJAJAVM677\Desktop\TESTE.FDB';
      const Port:integer=3050;
      const User:ansistring='SYSDBA';
      const Password:ansistring='masterkey';
      const PoolSize: Integer = 16;
      const CleanupDelayMinutes: Integer = 3;
      const Timeoutms: LargeInt = 10000);
begin
  FLib := FBlib;
  FDatabase := Db;
  FPort := Port;
  FUser := User;
  FPassword := Password;
  FPoolSize := PoolSize;
  FTimeout := Timeoutms;
  Semaphore := CreateSemaphore(nil, PoolSize, PoolSize, '');
  CriticalSection := TCriticalSection.Create;
  //Set the length of the connection pool
  SetLength(FPool, PoolSize);
  //Create and start the cleanup thread
  CleanupThread := TCleanupThread.Create(True,
    CleanupDelayMinutes);
  with CleanupThread do
  begin
    FreeOnTerminate := True;
    Priority := tpLower;
    FixedConnectionPool := Self;
    Resume;
  end;
end;

destructor TFixedConnectionPool.Destroy;
var
  i: Integer;
begin
  //Terminate the cleanup thread
  CleanupThread.Terminate;
  //If the cleanup thread is waiting for the
  //InternalEvent object, cause that wait
  //to timeout.
  InternalEvent.SetEvent;
  //Free any remaining connections
  CriticalSection.Enter;
  try
    for i := Low(FPool) to High(FPool) do
      FPool[i] := nil;
    SetLength(FPool,0);
  finally
    CriticalSection.Leave;
  end;
  CriticalSection.Free;
  //Release the semaphore
  CloseHandle(Semaphore);
  inherited;
end;

function TFixedConnectionPool.GetConnection: IConnection;
var
  i: Integer;
  DM: TConnectionModule;
  WaitResult: Integer;
begin
Result := nil;
WaitResult := WaitForSingleObject(Semaphore, FTimeout);
if WaitResult <> WAIT_OBJECT_0 then
  raise EConnPoolException.Create('Connection pool timeout. '+
    'Cannot obtain a connection');
CriticalSection.Enter;
try
  for i := Low(FPool) to High(FPool) do
    begin
      //If FPool[i] = nil, the IConnection has
      //not yet been created. Create it, initialize
      //it, and return it. If FPool[i] <> nil, then
      //check to see if its RefCount = 1 (only the pool
      //is referencing the object).
      if FPool[i] = nil then
        begin
          DM := TConnectionModule.Create(nil);
          DM.ZConnection1.Database:=FDatabase;
          DM.ZConnection1.Port:=FPort;
          DM.ZConnection1.User:=FUser;
          DM.ZConnection1.Password:=FPassword;
          DM.ZConnection1.LibraryLocation:=FLib;
          DM.CriticalSection := Self.CriticalSection;
          DM.Semaphore := Self.Semaphore;
          FPool[i] := DM;
          FPool[i].Connection.Connected := True;
          Result := FPool[i];
          Exit;
        end;
      //if FPool[i].FRefCount = 1 then
      //the connection is available. Return it.
      if FPool[i].RefCount = 1 then
        begin
          Result := FPool[i];
          Exit;
        end;
    end; //for
finally
  CriticalSection.Leave;
end;
end;

{ TDataModule1 }

function TConnectionModule._AddRef: Integer;
begin
//increment the reference count
CriticalSection.Enter;
try
  Inc(FRefCount);
  Result := FRefCount;
finally
  CriticalSection.Leave;
end;
end;

function TConnectionModule._Release: Integer;
var
  tmpCriticalSection: TCriticalSection;
  tmpSemaphore: THandle;
begin
// Get local references to the critical section and semaphore
// These are necessary since the critical section and
// semaphore members of this class will be invalid when
// the data module is being destroyed.
tmpCriticalSection := CriticalSection;
tmpSemaphore := Semaphore;
Result := FRefCount;
//decrement the reference count
CriticalSection.Enter;
try
  Dec(FRefCount);
  Result := FRefCount;
  //if not more references, call Destroy
  if Result = 0 then
    Destroy
  else
    Self.FLastAccess := Now;
finally
  tmpCriticalSection.Leave;
  if Result = 1 then
    ReleaseSemaphore(tmpSemaphore, 1, nil);
end;
end;

{IConnection }

//CHANGE
//To use a connection of another type, change the
//return type of the Connection function
function TConnectionModule.Connection: TZConnection;
begin
  //Return a connection
  Result := ZConnection1;
end;

function TConnectionModule.GetRefCount: Integer;
begin
  CriticalSection.Enter;
  Result := FRefCount;
  CriticalSection.Leave;
end;

function TConnectionModule.GetLastAccess: TDateTime;
begin
  CriticalSection.Enter;
  Result := FLastAccess;
  CriticalSection.Leave;
end;

{ TCleanupThread }

constructor TCleanupThread.Create(CreateSuspended: Boolean;
      const CleanupDelayMinutes: Integer);
begin
  // always create suspended
  inherited Create(True); // always create suspended
  FCleanupDelay := CleanupDelayMinutes;
  //Resume if not created suspended
  if not CreateSuspended then
    Resume;
end;

procedure TCleanupThread.Execute;
var
  i: Integer;
  WaitMinutes: Integer;
begin
WaitMinutes := FCleanupDelay * 1000 * 60;
while True do
begin
  if Terminated then Exit;
  //wait for the FCleanupDelay period
  if  InternalEvent.WaitFor(WaitMinutes) <> wrTimeout then
    //InternalEvent has been signaled, is in error, or is abandoned,
    //in which which case this thread should terminate.
    Exit;
  if Terminated then Exit;
  //WaitForSingleObject has timed out. Look for connections to clean up
  FixedConnectionPool.CriticalSection.Enter;
  try
    for i := low(FixedConnectionPool.FPool) to
      High(FixedConnectionPool.FPool) do
      //if the connection exists, has no external reference,
      //and has not been used lately, release it
      if (FixedConnectionPool.FPool[i] <> nil) and
        (FixedConnectionPool.FPool[i].RefCount = 1) and
        (MinutesBetween(FixedConnectionPool.FPool[i].LastAccess, Now) >
          FCleanupDelay) then
          FixedConnectionPool.FPool[i] := nil;
  finally
    FixedConnectionPool.CriticalSection.Leave;
  end;//try
end;//while
end;

initialization
  InternalEvent := TEvent.Create(nil, False, False, '');

finalization
  //Setting this event causes the cleanup thread to wake up
  InternalEvent.Free;

end.
