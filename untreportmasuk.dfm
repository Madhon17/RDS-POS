object freportmasuk: Tfreportmasuk
  Left = 240
  Top = 73
  AutoScroll = False
  BorderIcons = []
  Caption = 'Report Barang Masuk'
  ClientHeight = 632
  ClientWidth = 947
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
  object btncari: TbsSkinXFormButton
    Left = 436
    Top = 117
    Width = 75
    Height = 26
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
    Caption = 'Cari'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object DBGrid1: TDBGrid
    Left = 21
    Top = 152
    Width = 904
    Height = 337
    DataSource = DScari
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
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
        Width = 475
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode'
        Title.Alignment = taCenter
        Title.Caption = 'Satuan'
        Width = 50
        Visible = True
      end
      item
        Color = 16305869
        Expanded = False
        FieldName = 'qty'
        Width = 50
        Visible = True
      end
      item
        Color = 16305869
        Expanded = False
        FieldName = 'harga'
        Width = 90
        Visible = True
      end
      item
        Color = 11073531
        Expanded = False
        FieldName = 'eksternal'
        Width = 50
        Visible = True
      end
      item
        Color = 11073531
        Expanded = False
        FieldName = 'heksternal'
        Width = 90
        Visible = True
      end>
  end
  object btnprint: TbsSkinXFormButton
    Left = 21
    Top = 537
    Width = 904
    Height = 26
    TabOrder = 2
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
    Left = 436
    Top = 577
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnexitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Panel1: TPanel
    Left = 203
    Top = 10
    Width = 514
    Height = 63
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 4
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
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
      Font.Style = [fsBold]
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
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
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
  object txtBilling: TAEdit
    Left = 667
    Top = 496
    Width = 106
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
    TabOrder = 6
    Alignment = taRightJustify
  end
  object txtService: TAEdit
    Left = 804
    Top = 496
    Width = 106
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
    TabOrder = 7
    Alignment = taRightJustify
  end
  object StaticText3: TStaticText
    Left = 648
    Top = 156
    Width = 65
    Height = 13
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvSpace
    Caption = 'PURCHASE'
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
    Left = 792
    Top = 157
    Width = 51
    Height = 17
    Alignment = taCenter
    Caption = 'MUTASI'
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
  object StaticText1: TStaticText
    Left = 636
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
  object StaticText2: TStaticText
    Left = 698
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
  object StaticText5: TStaticText
    Left = 780
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
    TabOrder = 12
  end
  object StaticText6: TStaticText
    Left = 842
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
    TabOrder = 13
  end
  object Qcari: TZQuery
    SQL.Strings = (
      
        'SELECT     Tbarang.idbarang, Tbarang.namabarang, tpo.qty, tpo.ha' +
        'rga, tgdm.qty AS eksternal, tgdm.harga AS Heksternal, tsatuan.ko' +
        'de'
      'FROM         Tbarang INNER JOIN'
      
        '                          (SELECT     dbo.tbarang_masuk.idbarang' +
        ', SUM(dbo.tbarang_masuk.qty) AS qty, SUM(dbo.tbarang_masuk.qty *' +
        ' dbo.tbarang_masuk.harga_beli) '
      '                                                   AS harga'
      
        '                            FROM          dbo.tbarang_masuk INNE' +
        'R JOIN'
      
        '                                                   dbo.TbeliReal' +
        ' ON dbo.tbarang_masuk.idfaktur = dbo.TbeliReal.idfaktur'
      
        '                            WHERE      (dbo.TbeliReal.status = 3' +
        ')'
      
        '                            GROUP BY dbo.tbarang_masuk.idbarang)' +
        ' tpo ON Tbarang.idbarang = tpo.idbarang INNER JOIN'
      
        '                          (SELECT     dbo.TgudangMutasiDetail.id' +
        'barang, SUM(dbo.TgudangMutasiDetail.qty) AS qty, '
      
        '                                                   SUM(dbo.Tguda' +
        'ngMutasiDetail.harga * dbo.TgudangMutasiDetail.qty) AS harga'
      
        '                            FROM          dbo.TgudangMutasi INNE' +
        'R JOIN'
      
        '                                                   dbo.TgudangMu' +
        'tasiDetail ON dbo.TgudangMutasi.id = dbo.TgudangMutasiDetail.idm' +
        'utasi'
      
        '                            WHERE      (dbo.TgudangMutasi.asal =' +
        ' 1)'
      
        '                            GROUP BY dbo.TgudangMutasiDetail.idb' +
        'arang) tgdm ON Tbarang.idbarang = tgdm.idbarang INNER JOIN'
      '                      tsatuan ON Tbarang.idsatuan = tsatuan.id')
    Params = <>
    Left = 32
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
    object Qcariqty: TFloatField
      FieldName = 'qty'
    end
    object Qcariharga: TFloatField
      FieldName = 'harga'
    end
    object Qcarieksternal: TFloatField
      FieldName = 'eksternal'
    end
    object QcariHeksternal: TFloatField
      FieldName = 'Heksternal'
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
  object RVbarangmasuk: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qcari
    Left = 32
    Top = 40
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     id, kategori'
      'FROM         tkategoribarang'
      'ORDER BY kategori')
    Params = <>
    Left = 64
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
        Name = 'qty'
        DataType = ftFloat
      end
      item
        Name = 'harga'
        DataType = ftFloat
      end
      item
        Name = 'eksternal'
        DataType = ftFloat
      end
      item
        Name = 'heksternal'
        DataType = ftFloat
      end>
    Left = 104
    Top = 72
    Data = {
      0200070008006964626172616E6701000A000A006E616D61626172616E670100
      1E0004006B6F6465010014000300717479060000000500686172676106000000
      0900656B737465726E616C060000000A0068656B737465726E616C0600000000
      0000000000}
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
    object VTBarang_Keluarqty: TFloatField
      Alignment = taCenter
      FieldName = 'qty'
    end
    object VTBarang_Keluarharga: TFloatField
      FieldName = 'harga'
    end
    object VTBarang_Keluareksternal: TFloatField
      Alignment = taCenter
      FieldName = 'eksternal'
    end
    object VTBarang_Keluarheksternal: TFloatField
      FieldName = 'heksternal'
    end
  end
end
