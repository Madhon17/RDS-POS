object fdetailpenjualan: Tfdetailpenjualan
  Left = 297
  Top = 104
  AutoScroll = False
  BorderIcons = []
  Caption = 'Rekapitulasi Penjualan'
  ClientHeight = 616
  ClientWidth = 819
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
    Left = 104
    Top = 23
    Width = 610
    Height = 90
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 322
      Top = 14
      Width = 24
      Height = 13
      Caption = 'S/D'
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cmbkategori: TComboBox
      Left = 111
      Top = 60
      Width = 202
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
      Items.Strings = (
        ''
        'CASH'
        'CARD'
        'SERVICE'
        'CANCEL')
    end
    object chk_kategori: TCheckBox
      Left = 14
      Top = 62
      Width = 97
      Height = 17
      Caption = 'Kategori'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = chk_kategoriClick
    end
    object chk_tanggal: TCheckBox
      Left = 14
      Top = 13
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
      Left = 240
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Kind = dtkTime
      TabOrder = 4
    end
    object Tgl_akhir: TDateTimePicker
      Left = 352
      Top = 11
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 5
    end
    object waktuakhir: TDateTimePicker
      Left = 480
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Kind = dtkTime
      TabOrder = 6
    end
    object chk_lokasi: TCheckBox
      Left = 14
      Top = 39
      Width = 97
      Height = 17
      Caption = 'Lokasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = chk_lokasiClick
    end
    object cmblokasi: TComboBox
      Left = 111
      Top = 35
      Width = 202
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 8
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 372
    Top = 164
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
    Caption = 'C A R I'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Panel3: TPanel
    Left = 104
    Top = 120
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
    TabOrder = 2
    object rdo_namamenu: TRadioButton
      Left = 176
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Nama Menu'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = rdo_namamenuClick
    end
    object rdo_idmenu: TRadioButton
      Left = 40
      Top = 8
      Width = 113
      Height = 17
      Caption = 'IDmenu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = rdo_idmenuClick
    end
    object rdo_quantity: TRadioButton
      Left = 328
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Quantity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = rdo_quantityClick
    end
    object rdo_total: TRadioButton
      Left = 472
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Total'
      TabOrder = 3
      OnClick = rdo_totalClick
    end
  end
  object btnprint: TbsSkinXFormButton
    Left = 26
    Top = 527
    Width = 768
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
    Caption = 'Print'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 372
    Top = 559
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
  object DBGrid1: TDBGrid
    Left = 25
    Top = 200
    Width = 768
    Height = 281
    Hint = 'DoubleClick For Details'
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
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'idmenu'
        Title.Alignment = taCenter
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'menu'
        Title.Alignment = taCenter
        Width = 302
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_asli'
        Title.Alignment = taCenter
        Title.Caption = 'Harga Asli'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Title.Alignment = taCenter
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Diskon'
        Title.Caption = 'Total Diskon'
        Width = 95
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'Total'
        Title.Alignment = taCenter
        Width = 106
        Visible = True
      end>
  end
  object edtTotal: TAEdit
    Left = 664
    Top = 488
    Width = 103
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Alignment = taRightJustify
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     cast(id as char(3)) id, kategori'
      'FROM         tkategorimenu'
      'ORDER BY kategori')
    Params = <>
    Left = 40
    Top = 104
    object Qkategoriid: TStringField
      FieldName = 'id'
      Origin = 'VIZTA.tkategorimenu.id'
    end
    object Qkategorikategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategorimenu.kategori'
      FixedChar = True
    end
  end
  object Qcari: TZQuery
    SQL.Strings = (
      
        'SELECT     torder_menu.idmenu, tmenu.menu, SUM(torder_menu.qty) ' +
        'AS QTY, SUM(torder_menu.qty * (torder_menu.harga_asli - torder_m' +
        'enu.diskon)) AS Total,  torder_menu.harga_asli as HPP,'
      
        '                      torder_menu.harga_asli, SUM(torder_menu.di' +
        'skon * torder_menu.qty) AS Total_Diskon, tmenu.kategori'
      'FROM         torder_menu INNER JOIN'
      
        '                      tmenu ON torder_menu.idmenu = tmenu.id INN' +
        'ER JOIN'
      
        '                      tpayment ON torder_menu.idorder = tpayment' +
        '.idorder'
      'WHERE     (tpayment.tglstop <> 0)'
      
        'GROUP BY tmenu.menu, torder_menu.idmenu, torder_menu.idmenu, tor' +
        'der_menu.harga_asli, tmenu.kategori'
      'ORDER BY torder_menu.idmenu')
    Params = <>
    Left = 8
    Top = 104
    object Qcariidmenu: TStringField
      Alignment = taCenter
      DisplayLabel = 'IDMenu'
      FieldName = 'idmenu'
      FixedChar = True
      Size = 8
    end
    object Qcarimenu: TStringField
      DisplayLabel = 'Menu'
      FieldName = 'menu'
      FixedChar = True
      Size = 50
    end
    object QcariQTY: TLargeintField
      DisplayLabel = 'Qty'
      FieldName = 'QTY'
    end
    object QcariTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '#,0'
    end
    object QcariTotal_Diskon: TFloatField
      FieldName = 'Total_Diskon'
      DisplayFormat = '#,0'
    end
    object Qcariharga_asli: TFloatField
      FieldName = 'harga_asli'
      DisplayFormat = '#,0'
    end
    object Qcarikategori: TStringField
      FieldName = 'kategori'
    end
  end
  object DScari: TDataSource
    DataSet = Qcari
    Left = 8
    Top = 120
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
    MinWidth = 480
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
    Left = 65534
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
    Top = 24
  end
  object Qothers: TZQuery
    Params = <>
    Left = 736
    Top = 16
  end
  object RVdeatilpenjualan: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qcari
    Left = 8
    Top = 136
  end
  object Qlokasi: TZQuery
    SQL.Strings = (
      'SELECT     id, lokasi'
      'FROM         tlokasi'
      'ORDER BY lokasi')
    Params = <>
    Top = 56
    object Qlokasiid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tlokasi.id'
    end
    object Qlokasilokasi: TStringField
      FieldName = 'lokasi'
      Origin = 'VIZTA.tlokasi.lokasi'
      FixedChar = True
      Size = 15
    end
  end
  object RVrpKategori: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qkategori
    Left = 40
    Top = 120
  end
  object Query1: TZQuery
    Params = <>
    Left = 56
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 56
    Top = 24
  end
end
