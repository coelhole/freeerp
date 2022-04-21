object FrmLocalizacaoAreasGeograficas: TFrmLocalizacaoAreasGeograficas
  Left = 192
  Top = 117
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 
    'Localiza'#231#227'o :: '#225'reas geogr'#225'ficas (continentes, subcontinentes, p' +
    'a'#237'ses e territ'#243'rios)'
  ClientHeight = 375
  ClientWidth = 643
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 488
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    643
    375)
  PixelsPerInch = 96
  TextHeight = 13
  object BtAdicionar: TSpeedButton
    Left = 8
    Top = 320
    Width = 23
    Height = 22
  end
  object BtRemover: TSpeedButton
    Left = 32
    Top = 320
    Width = 23
    Height = 22
  end
  object SpeedButton1: TSpeedButton
    Left = 586
    Top = 248
    Width = 23
    Height = 22
    Anchors = [akRight, akBottom]
  end
  object SpeedButton2: TSpeedButton
    Left = 610
    Top = 248
    Width = 23
    Height = 22
    Anchors = [akRight, akBottom]
  end
  object LblInfoAlterarOrdemLocalizacoes: TLabel
    Left = 8
    Top = 248
    Width = 412
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 
      'Use Shift + seta para cima / seta para baixo, ou os bot'#245'es ao la' +
      'do, para alterar a ordem'
  end
  object GridCodigos: TDBGrid
    Left = 8
    Top = 34
    Width = 360
    Height = 88
    Ctl3D = True
    DataSource = DataSourceCodigos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERIC3'
        Title.Caption = 'numeric-3'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALPHA3'
        Title.Caption = 'alpha-3'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ALPHA2'
        Title.Caption = 'alpha-2'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AREA'
        Title.Caption = 'tipo '#225'rea'
        Width = 80
        Visible = True
      end>
  end
  object GridNomes: TDBGrid
    Left = 8
    Top = 160
    Width = 626
    Height = 80
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSourceLocalizacoes
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object EdtPesquisar: TEdit
    Left = 107
    Top = 10
    Width = 261
    Height = 21
    TabOrder = 2
  end
  object EdtCodLng: TLabeledEdit
    Left = 587
    Top = 136
    Width = 46
    Height = 21
    Anchors = [akTop, akRight]
    CharCase = ecLowerCase
    EditLabel.Width = 45
    EditLabel.Height = 13
    EditLabel.Caption = 'Lng. cod.'
    LabelPosition = lpLeft
    MaxLength = 2
    TabOrder = 3
    Text = 'pt'
  end
  object BtFechar: TBitBtn
    Left = 540
    Top = 327
    Width = 94
    Height = 40
    Anchors = [akRight]
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BtFecharClick
  end
  object EdtNome: TLabeledEdit
    Left = 8
    Top = 290
    Width = 200
    Height = 21
    Anchors = [akLeft, akBottom]
    EditLabel.Width = 127
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome (max. 64 caracteres)'
    MaxLength = 64
    TabOrder = 5
    OnChange = EdtNomeChange
  end
  object EdtDescr: TLabeledEdit
    Left = 216
    Top = 290
    Width = 418
    Height = 21
    Anchors = [akLeft, akRight, akBottom]
    EditLabel.Width = 169
    EditLabel.Height = 13
    EditLabel.Caption = 'Descr. / Obs. (max. 128 caracteres)'
    MaxLength = 128
    TabOrder = 6
    OnChange = EdtDescrChange
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = True
    Properties.Strings = (
      'AutoEncodeStrings=True'
      'controls_cp=GET_ACP')
    HostName = 'localhost'
    Port = 3050
    Database = 'TESTE.FDB'
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebird-3.0'
    LibraryLocation = 'fbclient.dll'
    Left = 8
    Top = 3
  end
  object QueryCodigos: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT '
      '    NUM3K AS numeric3,'
      '    ALPHA3K AS alpha3,'
      '    ALPHA2K AS alpha2,'
      '    '#39'pa'#237's/territ'#243'rio'#39' AS area'
      'FROM'
      '    LC001AR08')
    Params = <>
    Left = 40
    Top = 3
    object QueryCodigosNUMERIC3: TStringField
      FieldName = 'NUMERIC3'
      ReadOnly = True
      Size = 3
    end
    object QueryCodigosALPHA3: TStringField
      FieldName = 'ALPHA3'
      ReadOnly = True
      Size = 3
    end
    object QueryCodigosALPHA2: TStringField
      FieldName = 'ALPHA2'
      ReadOnly = True
      Size = 2
    end
    object QueryCodigosAREA: TStringField
      FieldName = 'AREA'
      ReadOnly = True
      Size = 15
    end
  end
  object DataSourceCodigos: TDataSource
    DataSet = QueryCodigos
    Left = 72
    Top = 3
  end
  object ZConnection2: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = True
    Properties.Strings = (
      'AutoEncodeStrings=True'
      'controls_cp=GET_ACP')
    HostName = 'localhost'
    Port = 3306
    Database = 'teste'
    User = 'root'
    Password = 'lhc007880'
    Protocol = 'MariaDB-10'
    LibraryLocation = 
      'C:\Users\Administrador.WIN-6NJAJAVM677\Downloads\libmariadb\libm' +
      'ariadb.dll'
    Left = 8
    Top = 128
  end
  object ZReadOnlyQuery2: TZReadOnlyQuery
    Connection = ZConnection2
    SQL.Strings = (
      'SELECT'
      #9'LPAD(M49, 3, '#39'0'#39') AS M49,'
      #9'`ISO3166-1-NUMERIC` AS ISO_N3,'
      #9'`ISO3166-1-Alpha-3` AS IS0_A3,'
      #9'`ISO3166-1-Alpha-2` AS ISO_A2,'
      #9'`Sub-region Code` AS SUBREGION_CODE,'
      #9'`Sub-region Name` AS SUBREGION_NAME,'
      #9'`Region Code` AS REGION_CODE,'
      #9'`Region Name` AS REGION_NAME,'
      #9'`Geoname ID` AS GEONAMEID'
      'FROM'
      #9'country_codes_csv')
    Params = <>
    Left = 40
    Top = 128
  end
  object DataSourceLocalizacoes: TDataSource
    DataSet = ZReadOnlyQuery2
    Left = 72
    Top = 128
  end
end
