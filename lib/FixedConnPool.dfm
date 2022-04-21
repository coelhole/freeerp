object ConnectionModule: TConnectionModule
  OldCreateOrder = False
  Left = 447
  Top = 259
  Height = 194
  Width = 249
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = True
    Properties.Strings = (
      'controls_cp=GET_ACP'
      'AutoEncodeStrings=True')
    HostName = 'localhost'
    Port = 3050
    Protocol = 'firebird-3.0'
    Left = 96
    Top = 24
  end
end
