object FsongList: TFsongList
  Left = 327
  Top = 240
  AutoScroll = False
  BorderIcons = []
  Caption = 'Song List'
  ClientHeight = 157
  ClientWidth = 432
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
    Left = 43
    Top = 36
    Width = 110
    Height = 13
    Caption = 'Vizta Song List File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object BtnBackup: TbsSkinXFormButton
    Left = 138
    Top = 89
    Width = 75
    Height = 27
    TabOrder = 0
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
    Caption = 'BackUp'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BtnBackupClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnUpdate: TbsSkinXFormButton
    Left = 136
    Top = 89
    Width = 157
    Height = 27
    TabOrder = 1
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
    Caption = 'Update'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnUpdateClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnFile: TbsSkinXFormButton
    Left = 361
    Top = 29
    Width = 27
    Height = 24
    TabOrder = 2
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
    Caption = '...'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnFileClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnExit: TbsSkinXFormButton
    Left = 178
    Top = 121
    Width = 75
    Height = 27
    TabOrder = 3
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnExitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object edtPath: TbsSkinEdit
    Left = 168
    Top = 32
    Width = 189
    Height = 18
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    UseSkinFont = False
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = False
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object bsSkinGauge1: TbsSkinGauge
    Left = 44
    Top = 61
    Width = 345
    Height = 20
    TabOrder = 5
    Visible = False
    SkinData = FrmInduk.bsSkinData2
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
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\db1.mdb;Persist ' +
      'Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 104
  end
  object taMaster: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'idmusic'
    TableName = 'Master'
    Left = 128
    object taMasterIDMUSIC: TIntegerField
      FieldName = 'IDMUSIC'
    end
    object taMasterVCD: TWideStringField
      FieldName = 'VCD'
      Size = 10
    end
    object taMasterTITLE: TWideStringField
      FieldName = 'TITLE'
      Size = 100
    end
    object taMasterSINGER: TWideStringField
      FieldName = 'SINGER'
      Size = 100
    end
    object taMasterDISC: TWideStringField
      FieldName = 'DISC'
      Size = 10
    end
    object taMasterPATH: TWideStringField
      FieldName = 'PATH'
      Size = 50
    end
    object taMasterANALOG: TWideStringField
      FieldName = 'ANALOG'
      Size = 2
    end
    object taMasterTYPE: TIntegerField
      FieldName = 'TYPE'
    end
    object taMasterWORD: TIntegerField
      FieldName = 'WORD'
    end
    object taMasterFLAG: TWideStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object taMasterVOL: TIntegerField
      FieldName = 'VOL'
    end
    object taMasterHITS: TIntegerField
      FieldName = 'HITS'
    end
    object taMasterNEW: TIntegerField
      FieldName = 'NEW'
    end
    object taMasterPOPULER: TIntegerField
      FieldName = 'POPULER'
    end
  end
  object QmyMaster: TZQuery
    Connection = modul.DBmysql
    Params = <>
    Left = 232
  end
  object qaMaster: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 152
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Vizta Karaoke Song List|*.mdb'
    Left = 80
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
    Top = 8
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
    MinHeight = 200
    MinWidth = 440
    MaxHeight = 525
    MaxWidth = 440
    Magnetic = False
    MagneticSize = 0
    BorderIcons = []
    Left = 24
    Top = 8
  end
  object TmyMaster: TZTable
    Connection = modul.DBmysql
    SortedFields = 'idmusic'
    OnFilterRecord = TmyMasterFilterRecord
    TableName = 'masters'
    IndexFieldNames = 'idmusic Asc'
    Left = 200
    object TmyMasterIDMUSIC: TIntegerField
      FieldName = 'IDMUSIC'
    end
    object TmyMasterVCD: TStringField
      FieldName = 'VCD'
      Size = 10
    end
    object TmyMasterTITLE: TStringField
      FieldName = 'TITLE'
      Size = 100
    end
    object TmyMasterSINGER: TStringField
      FieldName = 'SINGER'
      Size = 100
    end
    object TmyMasterDISC: TStringField
      FieldName = 'DISC'
      Size = 10
    end
    object TmyMasterPATH: TStringField
      FieldName = 'PATH'
      Size = 50
    end
    object TmyMasterANALOG: TStringField
      FieldName = 'ANALOG'
      Size = 2
    end
    object TmyMasterTYPE: TIntegerField
      FieldName = 'TYPE'
    end
    object TmyMasterWORD: TIntegerField
      FieldName = 'WORD'
    end
    object TmyMasterFLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object TmyMasterVOL: TIntegerField
      FieldName = 'VOL'
    end
    object TmyMasterHITS: TSmallintField
      FieldName = 'HITS'
    end
    object TmyMasterNEW: TSmallintField
      FieldName = 'NEW'
    end
    object TmyMasterPOPULER: TLargeintField
      FieldName = 'POPULER'
    end
  end
end
