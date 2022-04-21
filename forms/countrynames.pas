unit countrynames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZDataset, ZAbstractConnection,
  ZConnection, Grids, DBGrids, StdCtrls, ExtCtrls, Buttons;

type
  TFrmLocalizacaoAreasGeograficas = class(TForm)
    ZConnection1: TZConnection;
    QueryCodigos: TZReadOnlyQuery;
    GridCodigos: TDBGrid;
    DataSourceCodigos: TDataSource;
    ZConnection2: TZConnection;
    ZReadOnlyQuery2: TZReadOnlyQuery;
    DataSourceLocalizacoes: TDataSource;
    GridNomes: TDBGrid;
    QueryCodigosNUMERIC3: TStringField;
    QueryCodigosALPHA3: TStringField;
    QueryCodigosALPHA2: TStringField;
    QueryCodigosAREA: TStringField;
    EdtPesquisar: TEdit;
    EdtCodLng: TLabeledEdit;
    BtFechar: TBitBtn;
    EdtNome: TLabeledEdit;
    EdtDescr: TLabeledEdit;
    BtAdicionar: TSpeedButton;
    BtRemover: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    LblInfoAlterarOrdemLocalizacoes: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BtFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtNomeChange(Sender: TObject);
    procedure EdtDescrChange(Sender: TObject);
  private
    colocarFocusNoEditPesquisar:boolean;
  public
    { Public declarations }
  end;

var
  FrmLocalizacaoAreasGeograficas: TFrmLocalizacaoAreasGeograficas;

implementation

{$R *.dfm}

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
  QueryCodigos.Open;
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
