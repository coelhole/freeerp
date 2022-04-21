unit dbal;

interface

uses
  DB, ZAbstractRODataset, ZDataset;

function newROQuery:TZReadOnlyQuery;

implementation

uses
  FixedConnPool;

const
  DATABASE:ansistring='C:\Users\Administrador.WIN-6NJAJAVM677\Desktop\TESTE.FDB';
  FB_LIB:ansistring='C:\Users\Administrador.WIN-6NJAJAVM677\Documents\GitHub\CSG\server\db\fbclient.dll';
  PORT:integer=3050;
  POOL_SIZE:integer=8;
  CLEANUP_DELAY_MINUTES:integer=2;
  TIMEOUT_MS:integer=10000;
  RO_CONNECTION_USER:ansistring='ROUSER';
  RO_CONNECTION_PASSWORD:ansistring='masterkey';
  W_CONNECTION_USER:ansistring='WUSER';
  W_CONNECTION_PASSWORD:ansistring='masterkey';

var
  roConnPool,
  wConnPool
    : TFixedConnectionPool;

function newROQuery:TZReadOnlyQuery;
begin
  result:=TZReadOnlyQuery.Create(nil);
  result.Connection:=roConnPool.GetConnection.Connection;
end;

initialization
  roConnPool:=TFixedConnectionPool.Create(
      {FBlib} FB_LIB,
      {Db} DATABASE,
      {Port} PORT,
      {User} RO_CONNECTION_USER,
      {Password} RO_CONNECTION_PASSWORD,
      {PoolSize} POOL_SIZE,
      {CleanupDelayMinutes} CLEANUP_DELAY_MINUTES,
      {Timeoutms} TIMEOUT_MS);

  wConnPool:=TFixedConnectionPool.Create(
      {FBlib} FB_LIB,
      {Db} DATABASE,
      {Port} PORT,
      {User} W_CONNECTION_USER,
      {Password} W_CONNECTION_PASSWORD,
      {PoolSize} POOL_SIZE,
      {CleanupDelayMinutes} CLEANUP_DELAY_MINUTES,
      {Timeoutms} TIMEOUT_MS);

finalization
  roConnPool.Free;
  wConnPool.Free;
end.
