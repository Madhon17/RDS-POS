object FMovieList: TFMovieList
  Left = 415
  Top = 225
  AutoScroll = False
  BorderIcons = []
  Caption = 'Movie List Update'
  ClientHeight = 187
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 43
    Top = 60
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
  object Label2: TLabel
    Left = 43
    Top = 36
    Width = 38
    Height = 13
    Caption = 'Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object BtnBackup: TbsSkinXFormButton
    Left = 139
    Top = 113
    Width = 158
    Height = 27
    TabOrder = 1
    Visible = False
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
    Top = 113
    Width = 161
    Height = 27
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
    Caption = 'Update'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnUpdateClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnFile: TbsSkinXFormButton
    Left = 361
    Top = 53
    Width = 27
    Height = 24
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
    Caption = '...'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnFileClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnExit: TbsSkinXFormButton
    Left = 178
    Top = 145
    Width = 75
    Height = 27
    TabOrder = 4
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
    Top = 56
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
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object bsSkinGauge1: TbsSkinGauge
    Left = 44
    Top = 85
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
  object bsSkinEdit1: TbsSkinEdit
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
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\movie.mdb;Persis' +
      't Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 248
  end
  object taMaster: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Master'
    Left = 160
    object taMasterID: TIntegerField
      FieldName = 'ID'
    end
    object taMasterTITLE: TWideStringField
      FieldName = 'TITLE'
      Size = 255
    end
    object taMasterARTIS: TMemoField
      FieldName = 'ARTIS'
      BlobType = ftMemo
    end
    object taMasterSINOPSIS: TMemoField
      FieldName = 'SINOPSIS'
      BlobType = ftMemo
    end
    object taMasterPATH: TWideStringField
      FieldName = 'PATH'
      Size = 255
    end
    object taMasterNEGARA: TIntegerField
      FieldName = 'NEGARA'
    end
    object taMasterVOL: TIntegerField
      FieldName = 'VOL'
    end
    object taMasterDRAMA: TBooleanField
      FieldName = 'DRAMA'
    end
    object taMasterKOMEDI: TBooleanField
      FieldName = 'KOMEDI'
    end
    object taMasterACTION: TBooleanField
      FieldName = 'ACTION'
    end
    object taMasterHOROR: TBooleanField
      FieldName = 'HOROR'
    end
    object taMasterKARTUN: TBooleanField
      FieldName = 'KARTUN'
    end
  end
  object QmyMaster: TZQuery
    Connection = DBCon
    Params = <>
    Left = 216
  end
  object qaMaster: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 184
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Vizta Karaoke Song List|*.mdb'
    Left = 120
  end
  object bsSkinMessage1: TbsSkinMessage
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    SkinData = FrmInduk.bsSkinData2
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
    Left = 80
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
    Left = 56
  end
  object TmyMaster: TZTable
    Connection = DBCon
    TableName = 'film'
    Left = 280
    object TmyMasterid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object TmyMastertitle: TStringField
      FieldName = 'title'
      Size = 255
    end
    object TmyMasterartis: TMemoField
      FieldName = 'artis'
      BlobType = ftMemo
    end
    object TmyMastersinopsis: TMemoField
      FieldName = 'sinopsis'
      BlobType = ftMemo
    end
    object TmyMasterpath: TStringField
      FieldName = 'path'
      Size = 255
    end
    object TmyMasternegara: TIntegerField
      FieldName = 'negara'
    end
    object TmyMastervol: TSmallintField
      FieldName = 'vol'
    end
    object TmyMasterdrama: TSmallintField
      FieldName = 'drama'
      Required = True
    end
    object TmyMasterkomedi: TSmallintField
      FieldName = 'komedi'
      Required = True
    end
    object TmyMasteraction: TSmallintField
      FieldName = 'action'
      Required = True
    end
    object TmyMasterhoror: TSmallintField
      FieldName = 'horor'
      Required = True
    end
    object TmyMasterkartun: TSmallintField
      FieldName = 'kartun'
      Required = True
    end
  end
  object DBCon: TZConnection
    Protocol = 'mysql'
    User = 'karaoke'
    Password = 'Viz3009Ta'
    ReadOnly = True
    SQLHourGlass = True
  end
end
