object fdetailreport: Tfdetailreport
  Left = 341
  Top = 113
  AutoScroll = False
  BorderIcons = []
  Caption = 'Invoice'
  ClientHeight = 506
  ClientWidth = 704
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
    Left = 165
    Top = 27
    Width = 55
    Height = 13
    Caption = 'Invoice #'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object grpRoom: TPanel
    Left = 23
    Top = 95
    Width = 657
    Height = 308
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBgrid1: TDBGrid
      Left = 11
      Top = 32
      Width = 630
      Height = 225
      DataSource = DStabel
      FixedColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object edtTotalGrid: TAEdit
      Left = 488
      Top = 264
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 1
      Text = 'edtTotalGrid'
      Alignment = taRightJustify
    end
  end
  object btnRoom: TbsSkinButton
    Left = 48
    Top = 90
    Width = 75
    Height = 17
    TabOrder = 1
    SkinData = FrmInduk.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Room'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnRoomClick
  end
  object btnMenu: TbsSkinButton
    Left = 128
    Top = 90
    Width = 75
    Height = 17
    TabOrder = 2
    SkinData = FrmInduk.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Menu'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnMenuClick
  end
  object btnOthers: TbsSkinButton
    Left = 208
    Top = 90
    Width = 75
    Height = 17
    TabOrder = 3
    SkinData = FrmInduk.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Others'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnOthersClick
  end
  object edtinvoice: TEdit
    Left = 255
    Top = 24
    Width = 177
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnExit = edtinvoiceExit
  end
  object bsSkinButton1: TbsSkinButton
    Left = 314
    Top = 459
    Width = 75
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton1Click
  end
  object btnkeluar: TbsSkinButton
    Left = 307
    Top = 55
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
    Caption = 'CARI'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnkeluarClick
  end
  object btnprint: TbsSkinButton
    Left = 23
    Top = 424
    Width = 657
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
    Caption = 'Print'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
  end
  object Qharga: TZQuery
    Params = <>
    Left = 544
    Top = 24
  end
  object QtabelRoom: TZQuery
    SQL.Strings = (
      
        'SELECT     troom.namaroom AS Room, torder_room.tglStart AS [Chec' +
        'k In], torder_room.tglStop AS [Check Out], torder_room.durasi AS' +
        ' Durasi, '
      
        '                      torder_room.harga_asli  AS Harga,   torder' +
        '_room.diskon AS Diskon, (torder_room.harga_asli - torder_room.di' +
        'skon) * torder_room.durasi AS Jumlah'
      'FROM         torder_room INNER JOIN'
      '                      troom ON torder_room.idroom = troom.id')
    Params = <>
    Left = 576
    Top = 24
    object QtabelRoomRoom: TStringField
      FieldName = 'Room'
      FixedChar = True
      Size = 4
    end
    object QtabelRoomCheckIn: TDateTimeField
      FieldName = 'Check In'
    end
    object QtabelRoomCheckOut: TDateTimeField
      FieldName = 'Check Out'
    end
    object QtabelRoomDurasi: TSmallintField
      FieldName = 'Durasi'
    end
    object QtabelRoomHarga: TFloatField
      FieldName = 'Harga'
      DisplayFormat = '#,0'
    end
    object QtabelRoomDiskon: TFloatField
      FieldName = 'Diskon'
      DisplayFormat = '#,0'
    end
    object QtabelRoomJumlah: TFloatField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
    end
  end
  object DStabel: TDataSource
    DataSet = QtabelRoom
    Left = 576
    Top = 48
  end
  object QtabelDll: TZQuery
    SQL.Strings = (
      
        'SELECT     keterangan, jumlah AS Qty, harga AS Harga, jumlah * h' +
        'arga AS Jumlah'
      'FROM         torder_dll')
    Params = <>
    Left = 640
    Top = 24
    object QtabelDllketerangan: TStringField
      FieldName = 'keterangan'
      Origin = 'VIZTA.torder_dll.keterangan'
      FixedChar = True
      Size = 30
    end
    object QtabelDllQty: TSmallintField
      FieldName = 'Qty'
      Origin = 'VIZTA.torder_dll.jumlah'
    end
    object QtabelDllHarga: TFloatField
      FieldName = 'Harga'
      Origin = 'VIZTA.torder_dll.harga'
      DisplayFormat = '#,0'
    end
    object QtabelDllJumlah: TFloatField
      FieldName = 'Jumlah'
      Origin = 'VIZTA.torder_dll.jumlah'
      DisplayFormat = '#,0'
    end
  end
  object QtabelMenu: TZQuery
    SQL.Strings = (
      
        'SELECT     tmenu.menu AS [Menu Item], torder_menu.qty AS Qty, to' +
        'rder_menu.harga_asli - torder_menu.diskon AS Harga, '
      
        '                      (torder_menu.harga_asli - torder_menu.disk' +
        'on) * torder_menu.qty AS Jumlah'
      'FROM         torder_menu INNER JOIN'
      '                      tmenu ON torder_menu.idmenu = tmenu.id')
    Params = <>
    Left = 608
    Top = 24
    object QtabelMenuMenuItem: TStringField
      FieldName = 'Menu Item'
      FixedChar = True
      Size = 50
    end
    object QtabelMenuQty: TLargeintField
      FieldName = 'Qty'
    end
    object QtabelMenuHarga: TFloatField
      FieldName = 'Harga'
      DisplayFormat = '#,0'
    end
    object QtabelMenuJumlah: TFloatField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
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
    Left = 8
  end
  object Qcari: TZQuery
    Params = <>
    Left = 504
    Top = 24
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
    Top = 24
  end
  object RVtabelroom: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QtabelRoom
    Left = 576
    Top = 8
  end
  object RVtabelmenu: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QtabelMenu
    Left = 608
    Top = 8
  end
  object RVtabelDll: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QtabelDll
    Left = 640
    Top = 8
  end
  object Qsetup: TZQuery
    SQL.Strings = (
      'SELECT     TaxCaption, ServiceCaption'
      'FROM         Tsetup')
    Params = <>
    Left = 472
    Top = 24
  end
  object Qothers: TZQuery
    Params = <>
    Left = 440
    Top = 24
  end
end
