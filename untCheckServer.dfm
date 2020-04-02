object FcheckServer: TFcheckServer
  Left = 378
  Top = 298
  AutoScroll = False
  BorderIcons = []
  Caption = 'Check Server'
  ClientHeight = 652
  ClientWidth = 685
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 186
    Top = 44
    Width = 38
    Height = 13
    Caption = 'Server'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object btnkeluar: TbsSkinButton
    Left = 302
    Top = 597
    Width = 75
    Height = 25
    TabOrder = 0
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
  object Memo1: TMemo
    Left = 35
    Top = 176
    Width = 613
    Height = 377
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object edtServer: TEdit
    Left = 234
    Top = 40
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 35
    Top = 88
    Width = 302
    Height = 76
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label3: TLabel
      Left = 10
      Top = 46
      Width = 162
      Height = 13
      Caption = 'File lagu yang tidak terpakai'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 10
      Top = 14
      Width = 137
      Height = 13
      Caption = 'File lagu yang tidak ada'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object btnbatal: TbsSkinButton
      Left = 203
      Top = 40
      Width = 75
      Height = 25
      TabOrder = 0
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
      Caption = 'GO'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnbatalClick
    end
    object bsSkinButton1: TbsSkinButton
      Left = 203
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
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
      Caption = 'GO'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton1Click
    end
  end
  object Panel1: TPanel
    Left = 347
    Top = 88
    Width = 302
    Height = 76
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label2: TLabel
      Left = 10
      Top = 46
      Width = 172
      Height = 13
      Caption = 'File Movie yang tidak terpakai'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 10
      Top = 14
      Width = 147
      Height = 13
      Caption = 'File Movie yang tidak ada'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object bsSkinButton2: TbsSkinButton
      Left = 203
      Top = 40
      Width = 75
      Height = 25
      TabOrder = 0
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
      Caption = 'GO'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton2Click
    end
    object bsSkinButton3: TbsSkinButton
      Left = 203
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
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
      Caption = 'GO'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton3Click
    end
  end
  object btnDelete: TbsSkinButton
    Left = 35
    Top = 565
    Width = 609
    Height = 25
    TabOrder = 5
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
    Caption = 'Hapus Song List'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnDeleteClick
  end
  object bsSkinGauge1: TbsSkinGauge
    Left = 174
    Top = 325
    Width = 345
    Height = 20
    TabOrder = 6
    Visible = False
    SkinDataName = 'gauge'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    ShowProgressText = False
    ShowPercent = True
    MinValue = 0
    MaxValue = 100
    Value = 0
    Vertical = False
  end
  object BsSimpanNotepad: TbsSkinButton
    Left = 35
    Top = 565
    Width = 609
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
    Caption = 'Simpan'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BsSimpanNotepadClick
  end
  object Qmaster: TZReadOnlyQuery
    Connection = modul.DBmysql
    SQL.Strings = (
      'SELECT PATH FROM `masters` '
      'ORDER BY PATH')
    Params = <>
    Left = 16
    Top = 16
    object QmasterPATH: TStringField
      DisplayWidth = 200
      FieldName = 'PATH'
      Size = 200
    end
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
    BorderIcons = [biMinimize, biMaximize]
    Left = 88
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
    Left = 112
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Qmaster
    Left = 16
    Top = 32
  end
  object dWinLock1: TdWinLock
    asFrontApp = False
    noCtrlAltDel = False
    noAltTab = False
    noAltEsc = False
    noAltF4 = False
    noCtrlEsc = False
    noWinkeys = False
    noAppkey = False
    noRButton = False
    noTaskbar = False
    noTaskLinks = False
    noTaskTray = False
    noStartbutton = False
    noAltReturn = False
    noAccessibilityShortcuts = False
    noDesktop = False
    ReplaceStartmenu = False
    Version = '2.12'
    Left = 16
    Top = 72
  end
  object Tmaster: TZTable
    Connection = modul.DBmysql
    SortedFields = 'PATH'
    TableName = 'masters'
    IndexFieldNames = 'PATH Asc'
    Left = 48
    Top = 16
  end
  object Tmovie: TZTable
    Connection = modul.DBmysql
    SortedFields = 'path'
    TableName = 'film'
    IndexFieldNames = 'path Asc'
    Left = 48
    Top = 40
  end
  object Qdel: TZReadOnlyQuery
    Connection = modul.DBmysql
    SQL.Strings = (
      'SELECT PATH FROM `masters` '
      'ORDER BY PATH')
    Params = <>
    Left = 152
    Top = 16
    object StringField1: TStringField
      DisplayWidth = 200
      FieldName = 'PATH'
      Size = 200
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 8
    Top = 192
  end
  object SaveDialog1: TSaveDialog
    Left = 104
    Top = 64
  end
end