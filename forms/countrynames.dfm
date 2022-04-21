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
  object BtUp: TSpeedButton
    Left = 586
    Top = 248
    Width = 23
    Height = 22
    Anchors = [akRight, akBottom]
  end
  object BtDown: TSpeedButton
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
        FieldName = 'M49'
        Title.Caption = 'numeric-3'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'A3'
        Title.Caption = 'alpha-3'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'A2'
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
    Options = [dgTitles, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object EdtPesquisar: TEdit
    Left = 80
    Top = 10
    Width = 288
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
  object DataSourceCodigos: TDataSource
    DataSet = ClientDatasetCodes
    Left = 40
    Top = 3
  end
  object ClientDatasetCodes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 8
    Top = 3
    Data = {
      790000009619E0BD0100000018000000040000000000030000007900034D3439
      0100490000000100055749445448020002000300024133010049000000010005
      5749445448020002000300024132010049000000010005574944544802000200
      0200044152454101004900000001000557494454480200020010000000}
    object ClientDatasetCodesM49: TStringField
      FieldName = 'M49'
      Size = 3
    end
    object ClientDatasetCodesA3: TStringField
      FieldName = 'A3'
      Size = 3
    end
    object ClientDatasetCodesA2: TStringField
      FieldName = 'A2'
      Size = 2
    end
    object ClientDatasetCodesAREA: TStringField
      FieldName = 'AREA'
      Size = 16
    end
  end
end
