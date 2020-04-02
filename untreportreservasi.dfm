object Freportreservasi: TFreportreservasi
  Left = 201
  Top = 166
  AutoScroll = False
  BorderIcons = []
  Caption = 'Room Reservation'
  ClientHeight = 622
  ClientWidth = 883
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
    Left = 126
    Top = 32
    Width = 610
    Height = 71
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 332
      Top = 10
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
      Left = 123
      Top = 7
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 1
    end
    object chk_tanggal: TCheckBox
      Left = 32
      Top = 9
      Width = 81
      Height = 17
      Caption = 'Tanggal'
      Color = clSilver
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
      Left = 251
      Top = 7
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Kind = dtkTime
      TabOrder = 2
    end
    object Tgl_akhir: TDateTimePicker
      Left = 363
      Top = 7
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 3
    end
    object waktuakhir: TDateTimePicker
      Left = 491
      Top = 7
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Kind = dtkTime
      TabOrder = 4
    end
    object chk_status: TCheckBox
      Left = 32
      Top = 34
      Width = 97
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
      TabOrder = 5
      OnClick = chk_statusClick
    end
    object cmbstatus: TComboBox
      Left = 123
      Top = 32
      Width = 121
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = 'BELUM'
      Items.Strings = (
        'BELUM'
        'SUDAH')
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 404
    Top = 149
    Width = 75
    Height = 26
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
    Caption = 'Cari'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object DBGrid1: TDBGrid
    Left = 25
    Top = 184
    Width = 833
    Height = 329
    DataSource = DSReportReservasi
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Room'
        Title.Alignment = taCenter
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 162
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telpon'
        Title.Alignment = taCenter
        Title.Caption = 'Telpon'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HP'
        Title.Alignment = taCenter
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'durasi'
        Title.Alignment = taCenter
        Title.Caption = 'Durasi'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DP'
        Title.Alignment = taCenter
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'keterangan'
        Title.Alignment = taCenter
        Title.Caption = 'Keterangan'
        Width = 156
        Visible = True
      end>
  end
  object btnprint: TbsSkinXFormButton
    Left = 25
    Top = 531
    Width = 833
    Height = 26
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
    Caption = 'P R I N T'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 404
    Top = 567
    Width = 75
    Height = 26
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
    OnClick = btnexitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Panel3: TPanel
    Left = 125
    Top = 107
    Width = 610
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
    TabOrder = 5
    object rdo_room: TRadioButton
      Left = 480
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
      Left = 248
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object rdo_nama: TRadioButton
      Left = 48
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Nama'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
  end
  object DSReportReservasi: TDataSource
    DataSet = Qcari
    Left = 96
    Top = 48
  end
  object Qroom: TZQuery
    SQL.Strings = (
      'SELECT     id, namaroom'
      'FROM         troom'
      'order by namaroom')
    Params = <>
    Left = 16
    Top = 24
  end
  object Qcari: TZQuery
    SQL.Strings = (
      
        'SELECT     id, idroom, nama, alamat, telpon, tanggal, durasi, ke' +
        'terangan, HP, status, DP'
      'FROM         Treservasi'
      '')
    Params = <>
    Left = 104
    Top = 32
    object Qcariidroom: TSmallintField
      FieldName = 'idroom'
      Origin = 'VIZTA.Treservasi.idroom'
    end
    object Qcarinama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.Treservasi.nama'
      FixedChar = True
      Size = 30
    end
    object Qcarialamat: TStringField
      FieldName = 'alamat'
      Origin = 'VIZTA.Treservasi.alamat'
      FixedChar = True
      Size = 30
    end
    object Qcaritelpon: TStringField
      FieldName = 'telpon'
      Origin = 'VIZTA.Treservasi.telpon'
      FixedChar = True
    end
    object Qcaritanggal: TDateTimeField
      FieldName = 'tanggal'
      Origin = 'VIZTA.Treservasi.tanggal'
      DisplayFormat = 'dddd, dd MMM yyyy HH:mm'
    end
    object Qcaridurasi: TSmallintField
      FieldName = 'durasi'
      Origin = 'VIZTA.Treservasi.durasi'
    end
    object Qcariketerangan: TMemoField
      FieldName = 'keterangan'
      Origin = 'VIZTA.Treservasi.keterangan'
      BlobType = ftMemo
      Size = 40
    end
    object QcariHP: TStringField
      FieldName = 'HP'
      Origin = 'VIZTA.Treservasi.HP'
      FixedChar = True
    end
    object QcariDP: TFloatField
      FieldName = 'DP'
      Origin = 'VIZTA.Treservasi.DP'
      DisplayFormat = '#,0'
    end
    object QcariRoom: TStringField
      FieldKind = fkLookup
      FieldName = 'Room'
      LookupDataSet = Qroom
      LookupKeyFields = 'id'
      LookupResultField = 'namaroom'
      KeyFields = 'idroom'
      Size = 15
      Lookup = True
    end
    object Qcaristatus: TStringField
      FieldName = 'status'
      Origin = 'VIZTA.Treservasi.status'
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
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 40
    Top = 88
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
    Left = 40
    Top = 112
  end
  object RVReservasi: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qcari
    Left = 96
    Top = 72
  end
end
