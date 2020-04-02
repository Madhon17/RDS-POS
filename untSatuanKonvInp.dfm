object FsatuanKonvSetup: TFsatuanKonvSetup
  Left = 334
  Top = 136
  AutoScroll = False
  BorderIcons = []
  Caption = 'Konversi Satuan'
  ClientHeight = 393
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 66
    Top = 51
    Width = 41
    Height = 13
    Caption = 'Satuan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 202
    Top = 51
    Width = 8
    Height = 13
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBGrid1: TDBGrid
    Left = 52
    Top = 88
    Width = 339
    Height = 217
    TabStop = False
    DataSource = DSkonversi
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'LUid'
        Title.Alignment = taCenter
        Title.Caption = 'Satuan'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah'
        Title.Alignment = taCenter
        Title.Caption = 'Jumlah'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LUidkonversi'
        Title.Alignment = taCenter
        Title.Caption = 'Satuan'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 217
    Top = 48
    Width = 81
    Height = 21
    DataField = 'jumlah'
    DataSource = DSkonversi
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnKeyPress = DBLsatuanKeyPress
  end
  object DBLsatuan: TDBLookupComboBox
    Left = 121
    Top = 48
    Width = 73
    Height = 21
    DataField = 'id'
    DataSource = DSkonversi
    DropDownRows = 15
    DropDownWidth = 185
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'id'
    ListField = 'kode;satuan'
    ListSource = DSsatuan
    ParentFont = False
    TabOrder = 2
    OnKeyPress = DBLsatuanKeyPress
  end
  object DBLkonversi: TDBLookupComboBox
    Left = 305
    Top = 48
    Width = 73
    Height = 21
    DataField = 'idKonversi'
    DataSource = DSkonversi
    DropDownRows = 15
    DropDownWidth = 180
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'id'
    ListField = 'kode;satuan'
    ListFieldIndex = 3
    ListSource = DSsatuan
    ParentFont = False
    TabOrder = 4
    OnKeyPress = DBLsatuanKeyPress
  end
  object btnedit: TbsSkinButton
    Left = 184
    Top = 320
    Width = 75
    Height = 26
    TabOrder = 3
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Edit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btneditClick
  end
  object btntambah: TbsSkinButton
    Left = 104
    Top = 321
    Width = 75
    Height = 25
    TabOrder = 5
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Tambah'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btntambahClick
  end
  object btnhapus: TbsSkinButton
    Left = 264
    Top = 321
    Width = 75
    Height = 25
    TabOrder = 6
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Hapus'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnhapusClick
  end
  object btnkeluar: TbsSkinButton
    Left = 184
    Top = 353
    Width = 75
    Height = 25
    TabOrder = 7
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Keluar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnkeluarClick
  end
  object btnsimpan: TbsSkinButton
    Left = 144
    Top = 329
    Width = 75
    Height = 25
    TabOrder = 8
    Visible = False
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Simpan'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnsimpanClick
  end
  object btnbatal: TbsSkinButton
    Left = 224
    Top = 329
    Width = 75
    Height = 25
    TabOrder = 9
    Visible = False
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Batal'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnbatalClick
  end
  object DSkonversi: TDataSource
    AutoEdit = False
    Left = 72
    Top = 24
  end
  object DSsatuan: TDataSource
    Left = 112
    Top = 24
  end
  object bsBusinessSkinForm2: TbsBusinessSkinForm
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = True
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ShowObjectHint = False
    UseDefaultObjectHint = True
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 230
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = FrmInduk.bsSkinData2
    MenusSkinData = FrmInduk.bsSkinData1
    MinHeight = 480
    MinWidth = 640
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
    Left = 8
    Top = 8
  end
  object bsSkinMessage1: TbsSkinMessage
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    SkinData = FrmInduk.bsSkinData2
    CtrlSkinData = FrmInduk.bsSkinData1
    ButtonSkinDataName = 'button'
    MessageLabelSkinDataName = 'stdlabel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = 14
    DefaultButtonFont.Name = 'Arial'
    DefaultButtonFont.Style = []
    UseSkinFont = True
    Left = 32
    Top = 8
  end
  object Qsatuan: TZQuery
    Params = <>
    Left = 8
    Top = 40
    object Qsatuanid: TSmallintField
      FieldName = 'id'
    end
    object Qsatuansatuan: TStringField
      FieldName = 'satuan'
    end
    object Qsatuankode: TStringField
      FieldName = 'kode'
    end
  end
  object Qstatus: TZQuery
    Params = <
      item
        DataType = ftSmallint
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'idkonversi'
        ParamType = ptUnknown
      end>
    Left = 8
    Top = 72
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'idkonversi'
        ParamType = ptUnknown
      end>
    object Qstatusid: TSmallintField
      FieldName = 'id'
    end
    object QstatusidKonversi: TSmallintField
      FieldName = 'idKonversi'
    end
  end
  object Tkonversi: TZTable
    TableName = 'TsatuanKonv'
    Left = 8
    Top = 104
    object Tkonversiid: TSmallintField
      FieldName = 'id'
    end
    object TkonversiidKonversi: TSmallintField
      FieldName = 'idKonversi'
    end
    object Tkonversijumlah: TIntegerField
      FieldName = 'jumlah'
    end
    object TkonversiLUid: TStringField
      FieldKind = fkLookup
      FieldName = 'LUid'
      LookupDataSet = Qsatuan
      LookupKeyFields = 'id'
      LookupResultField = 'kode'
      KeyFields = 'id'
      Lookup = True
    end
    object TkonversiLUidkonversi: TStringField
      FieldKind = fkLookup
      FieldName = 'LUidkonversi'
      LookupDataSet = Qsatuan
      LookupKeyFields = 'id'
      LookupResultField = 'kode'
      KeyFields = 'idKonversi'
      Lookup = True
    end
  end
end
