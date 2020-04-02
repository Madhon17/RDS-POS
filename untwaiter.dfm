object fwaiterreport: Tfwaiterreport
  Left = 324
  Top = 143
  AutoScroll = False
  BorderIcons = []
  Caption = 'Waiter Report'
  ClientHeight = 650
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 71
    Top = 24
    Width = 569
    Height = 81
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    TabOrder = 0
    object chk_tanggal: TCheckBox
      Left = 14
      Top = 14
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
      TabOrder = 8
      OnClick = chk_tanggalClick
      OnKeyPress = chk_tanggalKeyPress
    end
    object edtnamawaiter: TEdit
      Left = 224
      Top = 39
      Width = 321
      Height = 21
      TabOrder = 6
    end
    object chkwaiter: TCheckBox
      Left = 14
      Top = 40
      Width = 81
      Height = 17
      Caption = 'Waiter'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object edtidwaiter: TEdit
      Left = 111
      Top = 39
      Width = 82
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnChange = edtidwaiterChange
      OnEnter = edtidwaiterEnter
      OnExit = edtidwaiterExit
      OnKeyPress = edtidwaiterKeyPress
    end
    object tgl_tahun: TDateTimePicker
      Left = 224
      Top = 13
      Width = 57
      Height = 21
      Date = 37943.999988425930000000
      Format = 'yyyy'
      Time = 37943.999988425930000000
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object tgl_bulan: TDateTimePicker
      Left = 224
      Top = 13
      Width = 121
      Height = 21
      Date = 37943.000000000000000000
      Format = 'MMMM yyyy'
      Time = 37943.000000000000000000
      DateFormat = dfLong
      DateMode = dmUpDown
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object tgl_awal: TDateTimePicker
      Left = 224
      Top = 13
      Width = 145
      Height = 21
      Date = 37943.000000000000000000
      Format = 'dd MMMM yyyy'
      Time = 37943.000000000000000000
      DateFormat = dfLong
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyPress = tgl_awalKeyPress
    end
    object tgl_akhir: TDateTimePicker
      Left = 400
      Top = 13
      Width = 145
      Height = 21
      Date = 37943.999988425930000000
      Format = 'dd MMMM yyyy'
      Time = 37943.999988425930000000
      DateFormat = dfLong
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object cbo_tanggal: TComboBox
      Left = 112
      Top = 13
      Width = 81
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
      TabOrder = 0
      OnClick = cbo_tanggalClick
      OnKeyPress = cbo_tanggalKeyPress
      Items.Strings = (
        ''
        '='
        '>='
        '<='
        'Bulan'
        'Tahun')
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 318
    Top = 153
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
  object bsSkinButton1: TbsSkinButton
    Left = 72
    Top = 572
    Width = 569
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
    Caption = 'Print'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton1Click
  end
  object btnkeluar: TbsSkinButton
    Left = 318
    Top = 604
    Width = 75
    Height = 26
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnkeluarClick
  end
  object Panel3: TPanel
    Left = 72
    Top = 112
    Width = 569
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
    TabOrder = 4
    object rdo_nama: TRadioButton
      Left = 248
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
      TabOrder = 1
      OnClick = rdo_namaClick
    end
    object rdo_id: TRadioButton
      Left = 56
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rdo_idClick
    end
    object rdo_jumlah: TRadioButton
      Left = 440
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Jumlah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = rdo_jumlahClick
    end
  end
  object dbwaiter: TDBGrid
    Left = 72
    Top = 188
    Width = 569
    Height = 376
    Color = clWhite
    DataSource = DSwaiter
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'cs'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 129
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'nama'
        Width = 279
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'jumlah'
        Title.Alignment = taCenter
        Width = 131
        Visible = True
      end>
  end
  object DSwaiter: TDataSource
    DataSet = qwaiter
    Left = 632
    Top = 112
  end
  object qwaiter: TZQuery
    SQL.Strings = (
      
        ' SELECT     torder_menu.cs, tkasir.nama, SUM(torder_menu.qty * (' +
        'torder_menu.harga_asli - torder_menu.diskon)) AS jumlah'
      'FROM         torder_menu INNER JOIN'
      
        '                      tpayment ON torder_menu.idorder = tpayment' +
        '.idorder LEFT OUTER JOIN'
      '                      tkasir ON torder_menu.cs = tkasir.login'
      'WHERE     (tpayment.tglstop IS NOT NULL)'
      'GROUP BY torder_menu.cs, tkasir.nama'
      'ORDER BY torder_menu.cs'
      ''
      '')
    Params = <>
    Left = 632
    Top = 80
    object qwaitercs: TStringField
      Alignment = taCenter
      DisplayLabel = 'Waiter/ Waitress'
      FieldName = 'cs'
      FixedChar = True
      Size = 5
    end
    object qwaiternama: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nama'
      FieldName = 'nama'
      FixedChar = True
    end
    object qwaiterjumlah: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Jumlah'
      FieldName = 'jumlah'
      DisplayFormat = '#,0'
    end
  end
  object qcs: TZQuery
    SQL.Strings = (
      'SELECT     login, nama'
      'FROM         tkasir'
      ''
      '')
    Params = <>
    Left = 632
    Top = 40
    object qcslogin: TStringField
      FieldName = 'login'
      Origin = 'VIZTA.tkasir.login'
      FixedChar = True
      Size = 5
    end
    object qcsnama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tkasir.nama'
      FixedChar = True
    end
  end
  object RVwaiterreport: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qwaiter
    Left = 632
    Top = 136
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
    Left = 8
    Top = 32
  end
end
