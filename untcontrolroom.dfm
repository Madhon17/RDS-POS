object Fcontrolroom: TFcontrolroom
  Left = 534
  Top = 108
  AutoScroll = False
  BorderIcons = []
  Caption = 'Room Control'
  ClientHeight = 546
  ClientWidth = 585
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
  object Panel1: TPanel
    Left = 65
    Top = 42
    Width = 456
    Height = 65
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 0
    object chkstatus: TCheckBox
      Left = 119
      Top = 34
      Width = 83
      Height = 17
      Caption = 'Status'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = chkstatusClick
    end
    object chkroom: TCheckBox
      Left = 119
      Top = 11
      Width = 83
      Height = 17
      Caption = 'Room'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = chkroomClick
    end
    object cmbstatus: TComboBox
      Left = 216
      Top = 32
      Width = 122
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = 'CHEKIN'
      OnClick = cmbstatusClick
      Items.Strings = (
        'CHEKIN'
        'CHEKOUT')
    end
    object cmbroom: TComboBox
      Left = 216
      Top = 9
      Width = 122
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      OnClick = cmbroomClick
      Items.Strings = (
        ''
        'CASH'
        'CARD'
        'FOC'
        'CANCEL'
        'CORRECTION')
    end
  end
  object btnbuka: TbsSkinButton
    Left = 55
    Top = 464
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
    Caption = 'Active'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnbukaClick
  end
  object btnhajar: TbsSkinButton
    Left = 215
    Top = 464
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
    Caption = 'Hajar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnhajarClick
  end
  object btndesktop: TbsSkinButton
    Left = 295
    Top = 464
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
    Caption = 'Desktop'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btndesktopClick
  end
  object btnshutdown: TbsSkinButton
    Left = 455
    Top = 464
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
    Caption = 'ShutDown'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnshutdownClick
  end
  object btntutup: TbsSkinButton
    Left = 135
    Top = 464
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
    Caption = 'StandBy'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btntutupClick
  end
  object btnrestart: TbsSkinButton
    Left = 375
    Top = 464
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
    Caption = 'Restart'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnrestartClick
  end
  object bsSkinXFormButton1: TbsSkinXFormButton
    Left = 255
    Top = 502
    Width = 75
    Height = 26
    TabOrder = 7
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = ANSI_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
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
    OnClick = bsSkinXFormButton1Click
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object DBGrid1: TDBGrid
    Left = 65
    Top = 152
    Width = 456
    Height = 257
    Hint = 'DoubleClick For Details'
    DataSource = DataSource1
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'roomname'
        Title.Alignment = taCenter
        Title.Caption = 'ROOM'
        Width = 188
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Title.Caption = 'Tamu'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'calStatus'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Width = 120
        Visible = True
      end>
  end
  object btncari: TbsSkinXFormButton
    Left = 255
    Top = 116
    Width = 75
    Height = 26
    TabOrder = 9
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
  object edtServer: TAEdit
    Left = 224
    Top = 16
    Width = 121
    Height = 21
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    Text = 'edtServer'
    Alignment = taCenter
  end
  object bsSkinXFormButton2: TbsSkinXFormButton
    Left = 248
    Top = 422
    Width = 89
    Height = 26
    TabOrder = 11
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = ANSI_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
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
    Caption = 'Hidup kan..!!'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinXFormButton2Click
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Qupdate: TZQuery
    Connection = modul.DBmysql
    Params = <>
    Top = 40
  end
  object Qroom: TZQuery
    Params = <>
    Left = 111
    Top = 65532
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
    Top = 65528
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
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = []
    Top = 65528
  end
  object myQcari: TZQuery
    Connection = modul.DBmysql
    OnCalcFields = myQcariCalcFields
    SQL.Strings = (
      
        'select idroom, roomname, status, apa, ipadd, wakeon from room  O' +
        'RDER BY roomname')
    Params = <>
    Top = 80
    object myQcariidroom: TSmallintField
      FieldName = 'idroom'
      Required = True
    end
    object myQcariroomname: TStringField
      FieldName = 'roomname'
      Required = True
    end
    object myQcaristatus: TStringField
      FieldName = 'status'
      Required = True
      Size = 7
    end
    object myQcariapa: TStringField
      FieldName = 'apa'
      Required = True
      Size = 5
    end
    object myQcaricalStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'calStatus'
      Calculated = True
    end
    object myQcariipadd: TStringField
      FieldName = 'ipadd'
      Required = True
    end
    object myQcariwakeon: TStringField
      FieldName = 'wakeon'
      Required = True
      Size = 30
    end
  end
  object DataSource1: TDataSource
    DataSet = myQcari
    Top = 96
  end
  object QmsUpdate: TZQuery
    Params = <>
    Left = 31
    Top = 44
  end
  object Qupdate2: TZQuery
    Connection = modul.My2
    Params = <>
    Left = 24
    Top = 160
  end
end
