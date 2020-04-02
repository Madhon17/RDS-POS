object Fsaran: TFsaran
  Left = 421
  Top = 82
  AutoScroll = False
  BorderIcons = []
  Caption = 'Saran'
  ClientHeight = 654
  ClientWidth = 921
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
  object Panel1: TPanel
    Left = 176
    Top = 23
    Width = 570
    Height = 66
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    TabOrder = 0
    object Label2: TLabel
      Left = 321
      Top = 14
      Width = 20
      Height = 13
      Caption = 's/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tgl_mulai: TDateTimePicker
      Left = 112
      Top = 11
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = tgl_mulaiChange
    end
    object cmbroom: TComboBox
      Left = 112
      Top = 36
      Width = 121
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
      OnClick = cmbroomClick
    end
    object chk_room: TCheckBox
      Left = 14
      Top = 38
      Width = 97
      Height = 17
      Caption = 'Room'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = chk_roomClick
    end
    object chk_tanggal: TCheckBox
      Left = 14
      Top = 13
      Width = 81
      Height = 17
      Caption = 'Tanggal'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = chk_tanggalClick
    end
    object waktuawal: TDateTimePicker
      Left = 240
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 4
      OnClick = tgl_mulaiChange
    end
    object Tgl_akhir: TDateTimePicker
      Left = 352
      Top = 11
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = tgl_mulaiChange
    end
    object waktuakhir: TDateTimePicker
      Left = 480
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 6
      OnClick = tgl_mulaiChange
    end
  end
  object Panel3: TPanel
    Left = 176
    Top = 92
    Width = 570
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object rdo_room: TRadioButton
      Left = 248
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Room'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object rdo_tanggal: TRadioButton
      Left = 48
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Tanggal'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object rdo_nama: TRadioButton
      Left = 448
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 423
    Top = 134
    Width = 75
    Height = 26
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
    Caption = 'C A R I'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnPrint: TbsSkinButton
    Left = 25
    Top = 564
    Width = 870
    Height = 26
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
    Caption = 'Print'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnPrintClick
  end
  object btnExit: TbsSkinXFormButton
    Left = 423
    Top = 601
    Width = 75
    Height = 27
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnExitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Panel2: TPanel
    Left = 17
    Top = 168
    Width = 888
    Height = 385
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 26
    Top = 176
    Width = 870
    Height = 329
    Hint = 'Double Click'#13#10'Untuk melihat transaksi member'
    DataSource = DScari
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tanggal'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'room'
        Title.Alignment = taCenter
        Title.Caption = 'Room'
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'Nama'
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pesan'
        Title.Caption = 'Saran'
        Width = 554
        Visible = True
      end>
  end
  object btnclear: TbsSkinButton
    Left = 423
    Top = 515
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
    Caption = 'Clear'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnclearClick
  end
  object Qcari: TZQuery
    Connection = modul.DBmysql
    SQL.Strings = (
      'SELECT * FROM `complain`')
    Params = <>
    Top = 40
    object Qcariid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object Qcariroom: TStringField
      FieldName = 'room'
      Size = 5
    end
    object Qcaripesan: TStringField
      FieldName = 'pesan'
      Size = 255
    end
    object Qcarinama: TStringField
      FieldName = 'nama'
      Size = 50
    end
    object Qcaritanggal: TDateTimeField
      FieldName = 'tanggal'
      DisplayFormat = 'dd-MM-yyyy HH:mm'
    end
  end
  object DScari: TDataSource
    DataSet = Qcari
    Top = 56
  end
  object Qroom: TZQuery
    SQL.Strings = (
      ''
      'SELECT namaroom FROM troom  ORDER BY namaroom ')
    Params = <>
    Left = 31
    Top = 40
    object Qroomnamaroom: TStringField
      FieldName = 'namaroom'
      Origin = 'VIZTA.troom.namaroom'
      FixedChar = True
      Size = 4
    end
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
  end
  object RVsaran: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qcari
    Top = 81
  end
  object Qdel: TZQuery
    Connection = modul.DBmysql
    SQL.Strings = (
      'SELECT * FROM `complain`')
    Params = <>
    Left = 64
    Top = 40
    object LargeintField1: TLargeintField
      FieldName = 'id'
    end
    object StringField1: TStringField
      FieldName = 'room'
      Size = 5
    end
    object StringField2: TStringField
      FieldName = 'pesan'
      Size = 255
    end
    object StringField3: TStringField
      FieldName = 'nama'
      Size = 50
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'tanggal'
    end
  end
end
