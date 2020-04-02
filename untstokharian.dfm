object Fdailybarangkeluar: TFdailybarangkeluar
  Left = 585
  Top = 208
  AutoScroll = False
  BorderIcons = []
  Caption = 'Mutasi Stok Harian'
  ClientHeight = 604
  ClientWidth = 708
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
    Left = 80
    Top = 39
    Width = 545
    Height = 74
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 304
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
      Left = 92
      Top = 6
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
      TabOrder = 0
    end
    object waktuawal: TDateTimePicker
      Left = 220
      Top = 6
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Kind = dtkTime
      TabOrder = 1
    end
    object Tgl_akhir: TDateTimePicker
      Left = 332
      Top = 7
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 2
    end
    object waktuakhir: TDateTimePicker
      Left = 457
      Top = 7
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Kind = dtkTime
      TabOrder = 3
    end
    object chk_kategori: TCheckBox
      Left = 14
      Top = 38
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
      TabOrder = 4
      OnClick = chk_kategoriClick
    end
    object cmbkategori: TComboBox
      Left = 93
      Top = 36
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
      TabOrder = 5
      Items.Strings = (
        ''
        'CASH'
        'CARD'
        'SERVICE'
        'CANCEL')
    end
    object chk_tanggal: TCheckBox
      Left = 14
      Top = 10
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
      TabOrder = 6
    end
  end
  object Panel3: TPanel
    Left = 80
    Top = 125
    Width = 545
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object rdo_namabarang: TRadioButton
      Left = 336
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
      Left = 80
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID Barang'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rdo_idbarangClick
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 315
    Top = 166
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
    Caption = 'Cari'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object DBGrid1: TDBGrid
    Left = 22
    Top = 207
    Width = 662
    Height = 305
    DataSource = DSSTOK
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'IDbarang'
        Title.Alignment = taCenter
        Title.Caption = 'ID-Barang'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Barang'
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Stokawal'
        Title.Alignment = taCenter
        Title.Caption = 'Stok Awal'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'masuk'
        Title.Alignment = taCenter
        Title.Caption = 'Masuk'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Keluar'
        Title.Alignment = taCenter
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CalAkhir'
        Title.Alignment = taCenter
        Title.Caption = 'Stok Akhir'
        Width = 90
        Visible = True
      end>
  end
  object btnprint: TbsSkinXFormButton
    Left = 22
    Top = 528
    Width = 662
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
    Caption = 'P R I N T'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 316
    Top = 560
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
    Left = 565
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
    Left = 533
    Top = 8
  end
  object DSSTOK: TDataSource
    AutoEdit = False
    DataSet = VTstoktemp
    Left = 493
    Top = 8
  end
  object VTstoktemp: TVirtualTable
    OnCalcFields = VTstoktempCalcFields
    FieldDefs = <
      item
        Name = 'IDbarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nama Barang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'masuk'
        DataType = ftInteger
      end
      item
        Name = 'Keluar'
        DataType = ftInteger
      end
      item
        Name = 'Stokawal'
        DataType = ftInteger
      end
      item
        Name = 'IDkategori'
        DataType = ftString
        Size = 20
      end>
    Left = 413
    Top = 8
    Data = {
      0200060008004944626172616E67010014000B004E616D6120426172616E6701
      00140005006D6173756B0300000006004B656C75617203000000080053746F6B
      6177616C030000000A0049446B617465676F726901001400000000000000}
    object VTstoktempIDbarang: TStringField
      FieldName = 'IDbarang'
      Size = 199
    end
    object VTstoktempmasuk: TIntegerField
      FieldName = 'masuk'
    end
    object VTstoktempKeluar: TIntegerField
      FieldName = 'Keluar'
    end
    object VTstoktempStokawal: TIntegerField
      FieldName = 'Stokawal'
    end
    object VTstoktempCalAkhir: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CalAkhir'
      Calculated = True
    end
    object VTstoktempIDkategori: TStringField
      FieldName = 'IDkategori'
      Size = 199
    end
    object VTstoktempNama: TStringField
      FieldName = 'Nama'
      Size = 199
    end
    object VTstoktempBarang: TStringField
      FieldName = 'Barang'
      Size = 50
    end
  end
  object qstokmasuk: TZQuery
    SQL.Strings = (
      
        'SELECT     SUM(tbarang_masuk.qty) AS masuk, tbarang_masuk.idbara' +
        'ng, Tbarang.namabarang, Tbarang.idkategori'
      'FROM         tbarang_masuk INNER JOIN'
      
        '                      Tbarang ON tbarang_masuk.idbarang = Tbaran' +
        'g.idbarang'
      
        'GROUP BY tbarang_masuk.idbarang, tbarang_masuk.idbarang, Tbarang' +
        '.namabarang, Tbarang.idkategori')
    Params = <>
    Left = 5
    Top = 8
    object qstokmasukidbarang: TStringField
      FieldName = 'idbarang'
      Origin = 'VIZTA.tbarang_masuk.idbarang'
      FixedChar = True
      Size = 10
    end
    object qstokmasukmasuk: TIntegerField
      FieldName = 'masuk'
      Origin = 'VIZTA.tbarang_masuk.qty'
    end
    object qstokmasuknamabarang: TStringField
      FieldName = 'namabarang'
      Origin = 'VIZTA.Tbarang.namabarang'
      FixedChar = True
      Size = 30
    end
    object qstokmasukidkategori: TSmallintField
      FieldName = 'idkategori'
      Origin = 'VIZTA.Tbarang.idkategori'
    end
  end
  object Qstokkeluar: TZQuery
    SQL.Strings = (
      
        'SELECT     SUM(tbarang_keluar.qty) AS Keluar, tbarang_keluar.idb' +
        'arang, Tbarang.namabarang, Tbarang.idkategori'
      'FROM         tbarang_keluar INNER JOIN'
      
        '                      Tbarang ON tbarang_keluar.idbarang = Tbara' +
        'ng.idbarang LEFT OUTER JOIN'
      
        '                      tpayment ON tbarang_keluar.idorder = tpaym' +
        'ent.idorder'
      'WHERE     (tbarang_keluar.idmenu = '#39'MMMMMMMM'#39') OR'
      
        '                      (tbarang_keluar.idorder IS NOT NULL) AND (' +
        'tpayment.payment <> 0) AND (tpayment.payment <> 4) AND (tpayment' +
        '.payment <> 5)'
      
        'GROUP BY tbarang_keluar.idbarang, Tbarang.namabarang, Tbarang.id' +
        'kategori')
    Params = <>
    Left = 29
    Top = 8
    object QstokkeluarKeluar: TIntegerField
      FieldName = 'Keluar'
    end
    object Qstokkeluaridbarang: TStringField
      FieldName = 'idbarang'
      FixedChar = True
      Size = 8
    end
    object Qstokkeluarnamabarang: TStringField
      FieldName = 'namabarang'
      FixedChar = True
      Size = 30
    end
    object Qstokkeluaridkategori: TSmallintField
      FieldName = 'idkategori'
    end
  end
  object VTtempkeluar: TVirtualTable
    FieldDefs = <
      item
        Name = 'IDbarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Keluar'
        DataType = ftInteger
      end
      item
        Name = 'Nama Barang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IDkategori'
        DataType = ftString
        Size = 20
      end>
    Left = 453
    Top = 8
    Data = {
      0200040008004944626172616E670100140006004B656C756172030000000B00
      4E616D6120426172616E67010014000A0049446B617465676F72690100140000
      0000000000}
    object VTtempkeluarIDbarang: TStringField
      FieldName = 'IDbarang'
    end
    object VTtempkeluarKeluar: TIntegerField
      FieldName = 'Keluar'
    end
    object VTtempkeluarNamaBarang: TStringField
      FieldName = 'Nama Barang'
    end
    object VTtempkeluarIDkategori: TStringField
      FieldName = 'IDkategori'
    end
  end
  object VTstokawal: TVirtualTable
    FieldDefs = <
      item
        Name = 'IDbarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Namabarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Masuk'
        DataType = ftInteger
      end
      item
        Name = 'Keluar'
        DataType = ftInteger
      end
      item
        Name = 'Stokawal'
        DataType = ftInteger
      end>
    Left = 384
    Top = 8
    Data = {
      0200050008004944626172616E67010014000A004E616D61626172616E670100
      140005004D6173756B0300000006004B656C75617203000000080053746F6B61
      77616C03000000000000000000}
    object VTstokawalIDbarang: TStringField
      FieldName = 'IDbarang'
    end
    object VTstokawalNamabarang: TStringField
      FieldName = 'Namabarang'
    end
    object VTstokawalMasuk: TIntegerField
      FieldName = 'Masuk'
      DisplayFormat = '#,0'
    end
    object VTstokawalKeluar: TIntegerField
      FieldName = 'Keluar'
      DisplayFormat = '#,0'
    end
    object VTstokawalStokawal: TIntegerField
      FieldName = 'Stokawal'
      DisplayFormat = '#,0'
    end
  end
  object VTtempkeluarawal: TVirtualTable
    FieldDefs = <
      item
        Name = 'IDbarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NamaBarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Keluar'
        DataType = ftInteger
      end>
    Left = 344
    Top = 8
    Data = {
      0200030008004944626172616E67010014000A004E616D61426172616E670100
      140006004B656C75617203000000000000000000}
    object VTtempkeluarawalIDbarang: TStringField
      FieldName = 'IDbarang'
    end
    object VTtempkeluarawalNamaBarang: TStringField
      FieldName = 'NamaBarang'
    end
    object VTtempkeluarawalKeluar: TIntegerField
      FieldName = 'Keluar'
    end
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     id, kategori '
      '                        FROM         tkategoribarang '
      '                        ORDER BY id ')
    Params = <>
    Left = 40
    Top = 40
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
  object VTkategori: TVirtualTable
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Kategori'
        DataType = ftString
        Size = 20
      end>
    Left = 8
    Top = 40
    Data = {
      02000200020049440100140008004B617465676F726901001400000000000000}
    object VTkategoriID: TStringField
      FieldName = 'ID'
    end
    object VTkategoriKategori: TStringField
      FieldName = 'Kategori'
    end
  end
  object DataSource1: TDataSource
    DataSet = VTkategori
    Left = 8
    Top = 64
  end
  object RVkategori: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = VTkategori
    Left = 8
    Top = 88
  end
  object RVdailyreportkeluar: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = VTstoktemp
    Left = 536
    Top = 40
  end
end
