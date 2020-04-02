object fbarangkeluar: Tfbarangkeluar
  Left = 278
  Top = 263
  AutoScroll = False
  BorderIcons = []
  Caption = 'Report Barang Keluar'
  ClientHeight = 665
  ClientWidth = 922
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
    Left = 203
    Top = 10
    Width = 514
    Height = 63
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 16738355
    TabOrder = 0
    object Label2: TLabel
      Left = 245
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
      Left = 35
      Top = 7
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 0
    end
    object waktuawal: TDateTimePicker
      Left = 163
      Top = 7
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Kind = dtkTime
      TabOrder = 1
    end
    object Tgl_akhir: TDateTimePicker
      Left = 278
      Top = 7
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 2
    end
    object waktuakhir: TDateTimePicker
      Left = 408
      Top = 7
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Kind = dtkTime
      TabOrder = 3
    end
    object cmbkategori: TComboBox
      Left = 35
      Top = 32
      Width = 446
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 4
    end
  end
  object Panel3: TPanel
    Left = 203
    Top = 76
    Width = 514
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 16738355
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object rdo_namabarang: TRadioButton
      Left = 328
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Nama Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = rdo_idbarangClick
    end
    object rdo_idbarang: TRadioButton
      Left = 120
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rdo_idbarangClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 152
    Width = 889
    Height = 385
    DataSource = DScari
    FixedColor = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'idbarang'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'namabarang'
        Title.Caption = 'Item'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode'
        Title.Alignment = taCenter
        Title.Caption = 'Satuan'
        Width = 45
        Visible = True
      end
      item
        Color = 16305869
        Expanded = False
        FieldName = 'penjualan'
        Title.Alignment = taCenter
        Width = 30
        Visible = True
      end
      item
        Color = 16305869
        Expanded = False
        FieldName = 'Hpenjualan'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Color = 11073531
        Expanded = False
        FieldName = 'service'
        Title.Alignment = taCenter
        Width = 30
        Visible = True
      end
      item
        Color = 11073531
        Expanded = False
        FieldName = 'hservice'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Color = 14806704
        Expanded = False
        FieldName = 'reject'
        Title.Alignment = taCenter
        Width = 30
        Visible = True
      end
      item
        Color = 14806704
        Expanded = False
        FieldName = 'hreject'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Color = 11463679
        Expanded = False
        FieldName = 'retur'
        Title.Alignment = taCenter
        Width = 30
        Visible = True
      end
      item
        Color = 11463679
        Expanded = False
        FieldName = 'hretur'
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Color = 14806704
        Expanded = False
        FieldName = 'penyesuaian'
        Width = 30
        Visible = True
      end
      item
        Color = 14806704
        Expanded = False
        FieldName = 'hpenyesuaian'
        Width = 80
        Visible = True
      end>
  end
  object btncari: TbsSkinXFormButton
    Left = 423
    Top = 119
    Width = 75
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
    Caption = 'Cari'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnprint: TbsSkinXFormButton
    Left = 16
    Top = 579
    Width = 889
    Height = 26
    TabOrder = 4
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
    Caption = 'P R I N T'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 423
    Top = 615
    Width = 75
    Height = 26
    TabOrder = 5
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
  object StaticText3: TStaticText
    Left = 336
    Top = 156
    Width = 65
    Height = 13
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvSpace
    Caption = 'BILLING'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 8
  end
  object StaticText4: TStaticText
    Left = 456
    Top = 156
    Width = 76
    Height = 17
    Alignment = taCenter
    Caption = 'PENJUALAN'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 9
  end
  object StaticText5: TStaticText
    Left = 440
    Top = 169
    Width = 23
    Height = 17
    Alignment = taCenter
    Caption = 'Qty'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 10
  end
  object StaticText6: TStaticText
    Left = 490
    Top = 169
    Width = 38
    Height = 17
    Alignment = taCenter
    Caption = 'Harga'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 11
  end
  object StaticText7: TStaticText
    Left = 576
    Top = 156
    Width = 51
    Height = 17
    Alignment = taCenter
    Caption = 'REJECT'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 12
  end
  object StaticText9: TStaticText
    Left = 602
    Top = 169
    Width = 38
    Height = 17
    Alignment = taCenter
    Caption = 'Harga'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 14
  end
  object StaticText10: TStaticText
    Left = 680
    Top = 156
    Width = 47
    Height = 17
    Alignment = taCenter
    Caption = 'RETUR'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 15
  end
  object StaticText11: TStaticText
    Left = 665
    Top = 169
    Width = 23
    Height = 17
    Alignment = taCenter
    Caption = 'Qty'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 16
  end
  object StaticText12: TStaticText
    Left = 714
    Top = 169
    Width = 38
    Height = 17
    Alignment = taCenter
    Caption = 'Harga'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 17
  end
  object StaticText1: TStaticText
    Left = 328
    Top = 169
    Width = 23
    Height = 17
    Alignment = taCenter
    Caption = 'Qty'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object StaticText2: TStaticText
    Left = 379
    Top = 169
    Width = 38
    Height = 17
    Alignment = taCenter
    Caption = 'Harga'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
  end
  object StaticText8: TStaticText
    Left = 552
    Top = 169
    Width = 23
    Height = 17
    Alignment = taCenter
    Caption = 'Qty'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 13
  end
  object txtBilling: TAEdit
    Left = 348
    Top = 544
    Width = 90
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = 16305869
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 18
    Alignment = taRightJustify
  end
  object txtService: TAEdit
    Left = 460
    Top = 544
    Width = 90
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = 11073531
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 19
    Alignment = taRightJustify
  end
  object txtReject: TAEdit
    Left = 572
    Top = 544
    Width = 90
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = 14806704
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 20
    Alignment = taRightJustify
  end
  object txtRetur: TAEdit
    Left = 684
    Top = 544
    Width = 90
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = 11463679
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 21
    Alignment = taRightJustify
  end
  object StaticText15: TStaticText
    Left = 784
    Top = 156
    Width = 91
    Height = 17
    Alignment = taCenter
    Caption = 'PENYESUAIAN'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 24
  end
  object StaticText13: TStaticText
    Left = 777
    Top = 169
    Width = 23
    Height = 17
    Alignment = taCenter
    Caption = 'Qty'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 22
  end
  object StaticText14: TStaticText
    Left = 826
    Top = 169
    Width = 38
    Height = 17
    Alignment = taCenter
    Caption = 'Harga'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 23
  end
  object txtPenyesuaian: TAEdit
    Left = 796
    Top = 544
    Width = 90
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = 14806704
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 25
    Alignment = taRightJustify
  end
  object Qcari: TZQuery
    SQL.Strings = (
      
        'SELECT     Tbarang.idbarang, tkp.harga, tkp.qty AS penjualan, tg' +
        'ks.qty AS service, tgks.harga AS Hservice, tgkr.qty AS reject, t' +
        'gkr.harga AS Hreject, '
      
        '                      tgkt.qty AS retur, tgkt.harga AS Hretur, t' +
        'satuan.kode, Tbarang.namabarang, tgkt.qty AS penyesuaian, tgkt.h' +
        'arga AS Hpenyesuaian'
      'FROM         Tbarang INNER JOIN'
      
        '                      tsatuan ON Tbarang.idsatuan = tsatuan.id L' +
        'EFT OUTER JOIN'
      
        '                          (SELECT     TgudangMutasiDetail.idbara' +
        'ng, TgudangMutasiDetail.qty, TgudangMutasiDetail.harga * Tgudang' +
        'MutasiDetail.qty AS harga'
      
        '                            FROM          TgudangMutasi INNER JO' +
        'IN'
      
        '                                                   TgudangMutasi' +
        'Detail ON TgudangMutasi.id = TgudangMutasiDetail.idmutasi'
      
        '                            WHERE      (TgudangMutasi.tujuan = 4' +
        ')) tgkt ON Tbarang.idbarang = tgkt.idbarang LEFT OUTER JOIN'
      
        '                          (SELECT     TgudangMutasiDetail.idbara' +
        'ng, TgudangMutasiDetail.qty, TgudangMutasiDetail.harga * Tgudang' +
        'MutasiDetail.qty AS harga'
      
        '                            FROM          TgudangMutasi INNER JO' +
        'IN'
      
        '                                                   TgudangMutasi' +
        'Detail ON TgudangMutasi.id = TgudangMutasiDetail.idmutasi'
      
        '                            WHERE      (TgudangMutasi.tujuan = 3' +
        ')) tgkr ON Tbarang.idbarang = tgkr.idbarang LEFT OUTER JOIN'
      
        '                          (SELECT     TgudangMutasiDetail.idbara' +
        'ng, TgudangMutasiDetail.qty, TgudangMutasiDetail.harga * Tgudang' +
        'MutasiDetail.qty AS harga'
      
        '                            FROM          TgudangMutasi INNER JO' +
        'IN'
      
        '                                                   TgudangMutasi' +
        'Detail ON TgudangMutasi.id = TgudangMutasiDetail.idmutasi'
      
        '                            WHERE      (TgudangMutasi.tujuan = 2' +
        ')) tgks ON Tbarang.idbarang = tgks.idbarang LEFT OUTER JOIN'
      
        '                          (SELECT     tbarang_keluar.idbarang, S' +
        'UM(tbarang_keluar.qty) AS qty, SUM(tbarang_keluar.qty * tbarang_' +
        'keluar.harga) AS harga'
      
        '                            FROM          tbarang_keluar INNER J' +
        'OIN'
      
        '                                                   tpayment ON t' +
        'barang_keluar.idorder = tpayment.idorder'
      
        '                            WHERE      (tpayment.payment <> 4) A' +
        'ND (tpayment.payment <> 5) AND (tpayment.payment <> 0)'
      
        '                            GROUP BY tbarang_keluar.idbarang) tk' +
        'p ON Tbarang.idbarang = tkp.idbarang')
    Params = <>
    Left = 816
    Top = 24
    object Qcariidbarang: TStringField
      FieldName = 'idbarang'
      FixedChar = True
      Size = 8
    end
    object Qcarinamabarang: TStringField
      FieldName = 'namabarang'
      FixedChar = True
      Size = 30
    end
    object Qcarikode: TStringField
      FieldName = 'kode'
      FixedChar = True
      Size = 7
    end
    object Qcaripenjualan: TFloatField
      FieldName = 'penjualan'
    end
    object Qcariharga: TFloatField
      FieldName = 'harga'
    end
    object Qcariservice: TFloatField
      FieldName = 'service'
    end
    object QcariHservice: TFloatField
      FieldName = 'Hservice'
    end
    object Qcarireject: TFloatField
      FieldName = 'reject'
    end
    object QcariHreject: TFloatField
      FieldName = 'Hreject'
    end
    object Qcariretur: TFloatField
      FieldName = 'retur'
    end
    object QcariHretur: TFloatField
      FieldName = 'Hretur'
    end
    object Qcaripenyesuaian: TFloatField
      FieldName = 'penyesuaian'
    end
    object QcariHpenyesuaian: TFloatField
      FieldName = 'Hpenyesuaian'
    end
  end
  object DScari: TDataSource
    DataSet = VTBarang_Keluar
    Left = 104
    Top = 88
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
    Top = 96
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
    Top = 120
  end
  object RVbarangkeluar: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = VTBarang_Keluar
    Left = 24
    Top = 56
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     id, kategori'
      'FROM         tkategoribarang'
      'ORDER BY kategori')
    Params = <>
    Left = 848
    Top = 24
    object Qkategoriid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tkategoribarang.id'
    end
    object Qkategorikategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategoribarang.kategori'
      FixedChar = True
    end
  end
  object RVbarangkeluarKategori: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qkategori
    Left = 848
    Top = 48
  end
  object VTBarang_Keluar: TVirtualTable
    OnFilterRecord = VTBarang_KeluarFilterRecord
    FieldDefs = <
      item
        Name = 'idbarang'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'namabarang'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'kode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'penjualan'
        DataType = ftFloat
      end
      item
        Name = 'Hpenjualan'
        DataType = ftFloat
      end
      item
        Name = 'service'
        DataType = ftFloat
      end
      item
        Name = 'hservice'
        DataType = ftFloat
      end
      item
        Name = 'reject'
        DataType = ftFloat
      end
      item
        Name = 'hreject'
        DataType = ftFloat
      end
      item
        Name = 'retur'
        DataType = ftFloat
      end
      item
        Name = 'hretur'
        DataType = ftFloat
      end
      item
        Name = 'penyesuaian'
        DataType = ftFloat
      end
      item
        Name = 'hpenyesuaian'
        DataType = ftFloat
      end>
    Left = 104
    Top = 72
    Data = {
      02000D0008006964626172616E6701000A000A006E616D61626172616E670100
      1E0004006B6F646501001400090070656E6A75616C616E060000000A00487065
      6E6A75616C616E06000000070073657276696365060000000800687365727669
      636506000000060072656A6563740600000007006872656A6563740600000005
      007265747572060000000600687265747572060000000B0070656E7965737561
      69616E060000000C006870656E796573756169616E06000000000000000000}
    object VTBarang_Keluaridbarang: TStringField
      Alignment = taCenter
      FieldName = 'idbarang'
      Size = 10
    end
    object VTBarang_Keluarnamabarang: TStringField
      FieldName = 'namabarang'
      Size = 30
    end
    object VTBarang_Keluarkode: TStringField
      Alignment = taCenter
      FieldName = 'kode'
    end
    object VTBarang_Keluarpenjualan: TFloatField
      Alignment = taCenter
      FieldName = 'penjualan'
      DisplayFormat = '#,0.##'
    end
    object VTBarang_KeluarHpenjualan: TFloatField
      FieldName = 'Hpenjualan'
      DisplayFormat = '#,0'
    end
    object VTBarang_Keluarservice: TFloatField
      Alignment = taCenter
      FieldName = 'service'
      DisplayFormat = '#,0.##'
    end
    object VTBarang_Keluarhservice: TFloatField
      FieldName = 'hservice'
      DisplayFormat = '#,0'
      currency = True
    end
    object VTBarang_Keluarreject: TFloatField
      Alignment = taCenter
      FieldName = 'reject'
      DisplayFormat = '#,0.##'
    end
    object VTBarang_Keluarhreject: TFloatField
      FieldName = 'hreject'
      DisplayFormat = '#,0'
    end
    object VTBarang_Keluarretur: TFloatField
      Alignment = taCenter
      FieldName = 'retur'
      DisplayFormat = '#,0'
    end
    object VTBarang_Keluarhretur: TFloatField
      FieldName = 'hretur'
      DisplayFormat = '#,0'
    end
    object VTBarang_Keluarpenyesuaian: TFloatField
      FieldName = 'penyesuaian'
    end
    object VTBarang_Keluarhpenyesuaian: TFloatField
      FieldName = 'hpenyesuaian'
    end
  end
  object Qothers: TZQuery
    SQL.Strings = (
      'SELECT     kategori'
      'FROM         tkategoribarang'
      'ORDER BY kategori')
    Params = <>
    Left = 56
    Top = 16
  end
  object BatchMove1: TBatchMove
    Left = 136
    Top = 40
  end
end
