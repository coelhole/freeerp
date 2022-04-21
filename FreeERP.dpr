program FreeERP;

uses
  Forms,
  uMainForm in 'forms\uMainForm.pas' {MainForm},
  dbal in 'lib\dbal.pas',
  FixedConnPool in 'lib\FixedConnPool.pas' {ConnectionModule: TDataModule},
  threads in 'lib\threads.pas',
  countrynames in 'forms\countrynames.pas' {FrmLocalizacaoAreasGeograficas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmLocalizacaoAreasGeograficas, FrmLocalizacaoAreasGeograficas);
  Application.Run;
end.
