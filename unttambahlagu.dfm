object Ftambahlagu: TFtambahlagu
  Left = 318
  Top = 265
  AutoScroll = False
  BorderIcons = []
  Caption = 'Ftambahlagu'
  ClientHeight = 594
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 129
    Top = 16
    Width = 473
    Height = 65
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 1
    object Label2: TLabel
      Left = 321
      Top = 14
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmbkategori: TComboBox
      Left = 112
      Top = 10
      Width = 184
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
    end
    object rdoID: TRadioButton
      Left = 24
      Top = 40
      Width = 89
      Height = 17
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = rdoIDClick
    end
    object rdoVCD: TRadioButton
      Left = 120
      Top = 40
      Width = 89
      Height = 17
      Caption = 'VCD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = rdoIDClick
    end
    object rdoTitle: TRadioButton
      Left = 240
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Title'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TabStop = True
      OnClick = rdoIDClick
    end
    object rdoSinger: TRadioButton
      Left = 352
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Singer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = rdoIDClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 45
    Top = 120
    Width = 641
    Height = 329
    DataSource = DataSource1
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
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
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Alignment = taCenter
        Color = clAqua
        Expanded = False
        FieldName = 'IDMUSIC'
        Title.Alignment = taCenter
        Width = 78
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14811134
        Expanded = False
        FieldName = 'VCD'
        Title.Alignment = taCenter
        Width = 97
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clAqua
        Expanded = False
        FieldName = 'TITLE'
        Title.Alignment = taCenter
        Width = 220
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14811134
        Expanded = False
        FieldName = 'SINGER'
        Title.Alignment = taCenter
        Width = 220
        Visible = True
      end>
  end
  object btntambah: TbsSkinButton
    Left = 253
    Top = 520
    Width = 75
    Height = 25
    TabOrder = 2
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
  object btnedit: TbsSkinButton
    Left = 328
    Top = 520
    Width = 75
    Height = 25
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
  object btndelete: TbsSkinButton
    Left = 403
    Top = 520
    Width = 75
    Height = 25
    TabOrder = 4
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
    OnClick = btndeleteClick
  end
  object btnkeluar: TbsSkinButton
    Left = 328
    Top = 551
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
    Caption = 'Keluar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnkeluarClick
  end
  object btncari: TbsSkinXFormButton
    Left = 328
    Top = 88
    Width = 75
    Height = 26
    TabOrder = 6
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Pitch = fpFixed
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    CanFocused = False
    Down = False
    GroupIndex = 0
    Caption = 'C A R I'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Button1: TButton
    Left = 608
    Top = 520
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    Visible = False
    OnClick = Button1Click
  end
  object Panel2: TPanel
    Left = 45
    Top = 461
    Width = 641
    Height = 44
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clRed
    TabOrder = 8
    object CARI: TLabel
      Left = 32
      Top = 9
      Width = 41
      Height = 25
      Caption = 'Cari'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object cmbcari: TComboBox
      Left = 93
      Top = 9
      Width = 100
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ItemIndex = 2
      ParentFont = False
      TabOrder = 0
      Text = 'TITLE'
      OnClick = cmbcariClick
      Items.Strings = (
        'IDMUSIC'
        'VCD'
        'TITLE'
        'SINGER')
    end
    object edtcari: TEdit
      Left = 210
      Top = 9
      Width = 407
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = edtcariChange
      OnEnter = edtcariEnter
      OnKeyDown = edtcariKeyDown
      OnKeyPress = edtcariKeyPress
    end
  end
  object Qcari: TZQuery
    Connection = modul.DBmysql
    AutoCalcFields = False
    SQL.Strings = (
      'SELECT IDMUSIC, VCD, TITLE, SINGER FROM masters')
    Params = <>
    Left = 48
    Top = 24
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = VTcari
    Left = 48
    Top = 44
  end
  object Qkategori: TZQuery
    Connection = modul.DBmysql
    SQL.Strings = (
      'select type, typename from kategori order by type')
    Params = <>
    Left = 88
    Top = 40
    object Qkategoritype: TLargeintField
      FieldName = 'type'
    end
    object Qkategoritypename: TStringField
      FieldName = 'typename'
      Size = 100
    end
  end
  object Qlookup: TZQuery
    Connection = modul.DBmysql
    SQL.Strings = (
      'Select type, typename from kategori')
    Params = <>
    Left = 88
    Top = 24
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
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
    BorderIcons = []
    Left = 8
    Top = 16
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
    Left = 8
    Top = 40
  end
  object VTcari: TVirtualTable
    FieldDefs = <
      item
        Name = 'IDMUSIC'
        DataType = ftInteger
      end
      item
        Name = 'VCD'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TITLE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SINGER'
        DataType = ftString
        Size = 100
      end>
    Left = 48
    Top = 80
    Data = {
      02000400070049444D5553494303000000030056434401000A0005005449544C
      4501006400060053494E47455201006400000000000000}
    object VTcariIDMUSIC: TIntegerField
      FieldName = 'IDMUSIC'
    end
    object VTcariVCD: TStringField
      FieldName = 'VCD'
      Size = 10
    end
    object VTcariTITLE: TStringField
      FieldName = 'TITLE'
      Size = 100
    end
    object VTcariSINGER: TStringField
      FieldName = 'SINGER'
      Size = 100
    end
  end
end
