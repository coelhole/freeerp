unit countrynames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, ZAbstractConnection,
  ZConnection, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, DBClient;

type
  TFrmLocalizacaoAreasGeograficas = class(TForm)
    GridCodigos: TDBGrid;
    DataSourceCodigos: TDataSource;
    GridNomes: TDBGrid;
    EdtPesquisar: TEdit;
    EdtCodLng: TLabeledEdit;
    BtFechar: TBitBtn;
    EdtNome: TLabeledEdit;
    EdtDescr: TLabeledEdit;
    BtAdicionar: TSpeedButton;
    BtRemover: TSpeedButton;
    BtUp: TSpeedButton;
    BtDown: TSpeedButton;
    LblInfoAlterarOrdemLocalizacoes: TLabel;
    ClientDatasetCodes: TClientDataSet;
    ClientDatasetCodesM49: TStringField;
    ClientDatasetCodesA3: TStringField;
    ClientDatasetCodesA2: TStringField;
    ClientDatasetCodesAREA: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure BtFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtNomeChange(Sender: TObject);
    procedure EdtDescrChange(Sender: TObject);
  private
    colocarFocusNoEditPesquisar:boolean;
    procedure carregarCodigos;
  public
    { Public declarations }
  end;

var
  FrmLocalizacaoAreasGeograficas: TFrmLocalizacaoAreasGeograficas;

implementation

{$R *.dfm}

uses
  dbal, threads;

procedure TFrmLocalizacaoAreasGeograficas.carregarCodigos;
var
  qry:TZReadOnlyQuery;
begin
  qry:=newROQuery;
  try
    qry.SQL.Add('SELECT * FROM CCODES');
    qry.Open;
    while not qry.Eof do begin
      ClientDatasetCodes.Append;
      ClientDatasetCodes.FieldByName('M49').AsString:=qry.FieldByName('M49').AsString;
      ClientDatasetCodes.FieldByName('A3').AsString:=qry.FieldByName('IS0_A3').AsString;
      ClientDatasetCodes.FieldByName('A2').AsString:=qry.FieldByName('ISO_A2').AsString;
      ClientDatasetCodes.FieldByName('AREA').AsString:='país/território';
      ClientDatasetCodes.Post;
      qry.Next;
    end;
    ClientDatasetCodes.First;
    qry.Close;
  finally
    qry.Connection:=nil;
    qry.Free;
  end;
end;

procedure TFrmLocalizacaoAreasGeograficas.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmLocalizacaoAreasGeograficas.BtFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmLocalizacaoAreasGeograficas.FormShow(Sender: TObject);
begin
  if colocarFocusNoEditPesquisar then EdtPesquisar.SetFocus;
  colocarFocusNoEditPesquisar:=false;
end;

procedure TFrmLocalizacaoAreasGeograficas.FormCreate(Sender: TObject);
begin
  colocarFocusNoEditPesquisar:=true;
  sync(carregarCodigos);
end;

procedure TFrmLocalizacaoAreasGeograficas.EdtNomeChange(Sender: TObject);
begin
  EdtNome.Text:=trimleft(EdtNome.Text);
end;

procedure TFrmLocalizacaoAreasGeograficas.EdtDescrChange(Sender: TObject);
begin
  EdtDescr.Text:=trimLeft(EdtDescr.Text);
end;

end.
