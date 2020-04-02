object fstok: Tfstok
  Left = 189
  Top = 156
  AutoScroll = False
  BorderIcons = []
  Caption = 'STOK BARANG'
  ClientHeight = 648
  ClientWidth = 921
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
    Left = 447
    Top = 156
    Width = 75
    Height = 19
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
  object Panel1: TPanel
    Left = 177
    Top = 23
    Width = 610
    Height = 73
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    TabOrder = 1
    object Label2: TLabel
      Left = 321
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
      Top = 38
      Width = 97
      Height = 17
      Caption = 'Kategori'
      Color = clGray
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
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
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
      OnExit = Tgl_akhirExit
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
  end
  object btnprint: TbsSkinXFormButton
    Left = 153
    Top = 505
    Width = 610
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
    Caption = 'P R I N T'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 441
    Top = 586
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
    Caption = 'Cancel'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnexitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object DBGrid3: TDBGrid
    Left = 35
    Top = 215
    Width = 848
    Height = 321
    DataSource = DataSource3
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'ID-Barang'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NamaBarang'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = '1-in'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = '1-0ut'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '2-in'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '2-out'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '3-in'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '3-out'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '4-in'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '4-out'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '5-in'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '5-out'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '6-in'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '6-out'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '7-in'
        Visible = True
      end
      item
        Expanded = False
        FieldName = '7-out'
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 176
    Top = 106
    Width = 610
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object rdo_jumlah: TRadioButton
      Left = 480
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
      TabOrder = 1
    end
    object rdo_namabarang: TRadioButton
      Left = 248
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Nama Barang'
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
    object rdo_idbarang: TRadioButton
      Left = 24
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID-Barang'
      TabOrder = 2
    end
  end
  object Edit1: TEdit
    Left = 243
    Top = 194
    Width = 90
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 421
    Top = 194
    Width = 90
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 332
    Top = 194
    Width = 90
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object Edit4: TEdit
    Left = 511
    Top = 194
    Width = 90
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object Edit5: TEdit
    Left = 601
    Top = 194
    Width = 90
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object Edit6: TEdit
    Left = 691
    Top = 194
    Width = 90
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object Edit7: TEdit
    Left = 782
    Top = 194
    Width = 90
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 12
  end
  object bsSkinXFormButton1: TbsSkinXFormButton
    Left = 175
    Top = 556
    Width = 610
    Height = 26
    TabOrder = 13
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
  object Memo1: TMemo
    Left = 32
    Top = 8
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 14
  end
  object Qbarang_masuk: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     tbarang_masuk.tgl_masuk, tbarang_masuk.qty, tbarang_m' +
        'asuk.idbarang, Tbarang.namabarang'
      'FROM         tbarang_masuk INNER JOIN'
      
        '                      Tbarang ON tbarang_masuk.idbarang = Tbaran' +
        'g.idbarang')
    Left = 585
    Top = 64
    object Qbarang_masukidbarang: TStringField
      FieldName = 'idbarang'
      Origin = 'VIZTA.tbarang_masuk.idbarang'
      FixedChar = True
      Size = 10
    end
    object Qbarang_masuktgl_masuk: TDateTimeField
      FieldName = 'tgl_masuk'
      Origin = 'VIZTA.tbarang_masuk.tgl_masuk'
    end
    object Qbarang_masukqty: TIntegerField
      FieldName = 'qty'
      Origin = 'VIZTA.tbarang_masuk.qty'
    end
    object Qbarang_masuknamabarang: TStringField
      FieldName = 'namabarang'
      Origin = 'VIZTA.Tbarang.namabarang'
      FixedChar = True
      Size = 30
    end
  end
  object Qbarang_keluar: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     tbarang_keluar.idbarang, tbarang_keluar.qty, tbarang_' +
        'keluar.tgl_keluar, Tbarang.namabarang'
      'FROM         tbarang_keluar INNER JOIN'
      
        '                      tpayment ON tbarang_keluar.idorder = tpaym' +
        'ent.idorder INNER JOIN'
      
        '                      Tbarang ON tbarang_keluar.idbarang = Tbara' +
        'ng.idbarang '
      
        'WHERE     (tpayment.payment <> 0 AND tpayment.payment <> 4 AND t' +
        'payment.payment <> 5)')
    Left = 617
    Top = 64
    object Qbarang_keluaridbarang: TStringField
      FieldName = 'idbarang'
      Origin = 'VIZTA.tbarang_keluar.idbarang'
      FixedChar = True
      Size = 8
    end
    object Qbarang_keluarqty: TIntegerField
      FieldName = 'qty'
      Origin = 'VIZTA.tbarang_keluar.qty'
    end
    object Qbarang_keluartgl_keluar: TDateTimeField
      FieldName = 'tgl_keluar'
      Origin = 'VIZTA.tbarang_keluar.tgl_keluar'
    end
    object Qbarang_keluarnamabarang: TStringField
      FieldName = 'namabarang'
      FixedChar = True
      Size = 30
    end
  end
  object Qstokbarang: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     Tbarang.namabarang, Tbarang.idbarang, tkategoribarang' +
        '.id, tkategoribarang.kategori, tm.masuk AS Masuk, tk.keluar AS K' +
        'eluar, tsatuan.satuan'
      'FROM         tkategoribarang INNER JOIN'
      
        '                      Tbarang ON tkategoribarang.id = Tbarang.id' +
        'kategori  INNER JOIN'
      
        '                      tsatuan ON Tbarang.idsatuan = tsatuan.id L' +
        'EFT OUTER JOIN'
      
        '                          (SELECT     SUM(tbarang_keluar.qty) AS' +
        ' keluar, tbarang_keluar.idbarang'
      
        '                            FROM          tbarang_keluar LEFT OU' +
        'TER JOIN'
      
        '                                                   tpayment ON t' +
        'barang_keluar.idorder = tpayment.idorder'
      
        '                            WHERE   (tbarang_keluar.idorder is n' +
        'ot null) and   (tpayment.payment <> 0) OR'
      
        '                                                   (tpayment.pay' +
        'ment <> 4) OR'
      
        '                                                   (tpayment.pay' +
        'ment <> 5)'
      
        '                            GROUP BY tbarang_keluar.idbarang) tk' +
        ' ON Tbarang.idbarang = tk.idbarang LEFT OUTER JOIN'
      
        '                          (SELECT     idbarang, SUM(qty) AS masu' +
        'k'
      '                            FROM          tbarang_masuk'
      
        '                            GROUP BY idbarang) tm ON Tbarang.idb' +
        'arang = tm.idbarang'
      ''
      
        'GROUP BY Tbarang.namabarang, Tbarang.idbarang, tkategoribarang.i' +
        'd, tkategoribarang.kategori, tk.keluar, tm.masuk, tsatuan.satuan'
      'ORDER BY tk.keluar DESC'
      '')
    Left = 649
    Top = 64
    object Qstokbarangnamabarang: TStringField
      FieldName = 'namabarang'
      FixedChar = True
      Size = 30
    end
    object Qstokbarangidbarang: TStringField
      FieldName = 'idbarang'
      FixedChar = True
      Size = 8
    end
    object Qstokbarangid: TSmallintField
      FieldName = 'id'
    end
    object Qstokbarangkategori: TStringField
      FieldName = 'kategori'
      FixedChar = True
    end
    object QstokbarangMasuk: TIntegerField
      FieldName = 'Masuk'
    end
    object QstokbarangKeluar: TIntegerField
      FieldName = 'Keluar'
    end
    object Qstokbarangsatuan: TStringField
      FieldName = 'satuan'
      FixedChar = True
      Size = 25
    end
  end
  object Qkatbarang: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, kategori'
      'FROM         tkategoribarang'
      'ORDER BY kategori')
    Left = 664
    Top = 64
    object Qkatbarangid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tkategoribarang.id'
    end
    object Qkatbarangkategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategoribarang.kategori'
      FixedChar = True
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
    Left = 776
    Top = 24
  end
  object VTbarang_masuk: TVirtualTable
    FieldDefs = <
      item
        Name = 'idbarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tglmasuk'
        DataType = ftDateTime
      end
      item
        Name = 'qty'
        DataType = ftInteger
      end
      item
        Name = 'NamaBarang'
        DataType = ftString
        Size = 60
      end>
    Left = 832
    Top = 24
    Data = {
      0200040008006964626172616E6701001400080074676C6D6173756B0B000000
      0300717479030000000A004E616D61426172616E6701003C00000000000000}
    object VTbarang_masukidbarang: TStringField
      FieldName = 'idbarang'
    end
    object VTbarang_masuktglmasuk: TDateTimeField
      FieldName = 'tglmasuk'
      DisplayFormat = 'dd/MMMM/yyyy'
    end
    object VTbarang_masukqty: TIntegerField
      FieldName = 'qty'
    end
    object VTbarang_masukNamaBarang: TStringField
      FieldName = 'NamaBarang'
      Size = 60
    end
  end
  object VTbarang_keluar: TVirtualTable
    FieldDefs = <
      item
        Name = 'idbarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tglkeluar'
        DataType = ftDateTime
      end
      item
        Name = 'qty'
        DataType = ftInteger
      end
      item
        Name = 'namabarang'
        DataType = ftString
        Size = 60
      end>
    Left = 856
    Top = 24
    Data = {
      0200040008006964626172616E6701001400090074676C6B656C7561720B0000
      000300717479030000000A006E616D61626172616E6701003C00000000000000}
    object VTbarang_keluaridbarang: TStringField
      FieldName = 'idbarang'
    end
    object VTbarang_keluartglkeluar: TDateTimeField
      FieldName = 'tglkeluar'
      DisplayFormat = 'dd/MMMM/yyyy'
    end
    object VTbarang_keluarqty: TIntegerField
      FieldName = 'qty'
    end
    object VTbarang_keluarnamabarang: TStringField
      FieldName = 'namabarang'
      Size = 60
    end
  end
  object DataSource1: TDataSource
    DataSet = VTstokBarang
    Left = 776
    Top = 136
  end
  object VTstokBarang: TVirtualTable
    FieldDefs = <
      item
        Name = 'IDBarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NamaBarang'
        DataType = ftString
        Size = 40
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
        Name = 'Stok'
        DataType = ftInteger
      end
      item
        Name = 'Satuan'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'VTstokBarangField7'
        DataType = ftString
        Size = 20
      end>
    Left = 776
    Top = 112
    Data = {
      0200070008004944426172616E67010014000A004E616D61426172616E670100
      280005004D6173756B0300000006004B656C75617203000000040053746F6B03
      000000060053617475616E010019001200565473746F6B426172616E67466965
      6C643701001400000000000000}
    object VTstokBarangIDBarang: TStringField
      FieldName = 'IDBarang'
    end
    object VTstokBarangNamaBarang: TStringField
      FieldName = 'NamaBarang'
      Size = 40
    end
    object VTstokBarangMasuk: TIntegerField
      FieldName = 'Masuk'
    end
    object VTstokBarangKeluar: TIntegerField
      FieldName = 'Keluar'
    end
    object VTstokBarangStok: TIntegerField
      FieldName = 'Stok'
    end
    object VTstokBarangSatuan: TStringField
      FieldName = 'Satuan'
      Size = 25
    end
  end
  object RVbarang_keluar: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = VTbarang_keluar
    Left = 856
    Top = 48
  end
  object RVbarang_masuk: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = VTbarang_masuk
    Left = 832
    Top = 48
  end
  object RVSTKBRNG: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = VTMasukKeluar
    Left = 826
    Top = 160
  end
  object DataSource2: TDataSource
    DataSet = VTbarang_masuk
    Left = 792
    Top = 71
  end
  object VTMasukKeluar: TVirtualTable
    FieldDefs = <
      item
        Name = 'ID-Barang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NamaBarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = '1-in'
        DataType = ftString
        Size = 20
      end
      item
        Name = '1-0ut'
        DataType = ftString
        Size = 20
      end
      item
        Name = '2-in'
        DataType = ftString
        Size = 20
      end
      item
        Name = '2-out'
        DataType = ftString
        Size = 20
      end
      item
        Name = '3-in'
        DataType = ftString
        Size = 20
      end
      item
        Name = '3-out'
        DataType = ftString
        Size = 20
      end
      item
        Name = '4-in'
        DataType = ftString
        Size = 20
      end
      item
        Name = '4-out'
        DataType = ftString
        Size = 20
      end
      item
        Name = '5-in'
        DataType = ftString
        Size = 20
      end
      item
        Name = '5-out'
        DataType = ftString
        Size = 20
      end
      item
        Name = '6-in'
        DataType = ftString
        Size = 20
      end
      item
        Name = '6-out'
        DataType = ftString
        Size = 20
      end
      item
        Name = '7-in'
        DataType = ftString
        Size = 20
      end
      item
        Name = '7-out'
        DataType = ftString
        Size = 20
      end
      item
        Name = '8-in'
        DataType = ftString
        Size = 20
      end
      item
        Name = '8-out'
        DataType = ftString
        Size = 20
      end
      item
        Name = '9-in'
        DataType = ftString
        Size = 20
      end
      item
        Name = '9-out'
        DataType = ftString
        Size = 20
      end
      item
        Name = '10-in'
        DataType = ftString
        Size = 20
      end
      item
        Name = '10-out'
        DataType = ftString
        Size = 20
      end>
    Left = 808
    Top = 112
    Data = {
      02001600090049442D426172616E67010014000A004E616D61426172616E6701
      0014000400312D696E010014000500312D307574010014000400322D696E0100
      14000500322D6F7574010014000400332D696E010014000500332D6F75740100
      14000400342D696E010014000500342D6F7574010014000400352D696E010014
      000500352D6F7574010014000400362D696E010014000500362D6F7574010014
      000400372D696E010014000500372D6F7574010014000400382D696E01001400
      0500382D6F7574010014000400392D696E010014000500392D6F757401001400
      050031302D696E01001400060031302D6F757401001400000000000000}
    object VTMasukKeluarIDBarang: TStringField
      FieldName = 'ID-Barang'
    end
    object VTMasukKeluarNamaBarang: TStringField
      FieldName = 'NamaBarang'
    end
    object VTMasukKeluarDSDesigner1in: TStringField
      FieldName = '1-in'
    end
    object VTMasukKeluarDSDesigner10ut: TStringField
      FieldName = '1-0ut'
    end
    object VTMasukKeluarDSDesigner2in: TStringField
      FieldName = '2-in'
    end
    object VTMasukKeluarDSDesigner2out: TStringField
      FieldName = '2-out'
    end
    object VTMasukKeluarDSDesigner3in: TStringField
      FieldName = '3-in'
    end
    object VTMasukKeluarDSDesigner3out: TStringField
      FieldName = '3-out'
    end
    object VTMasukKeluarDSDesigner4in: TStringField
      FieldName = '4-in'
    end
    object VTMasukKeluarDSDesigner4out: TStringField
      FieldName = '4-out'
    end
    object VTMasukKeluarDSDesigner5in: TStringField
      FieldName = '5-in'
    end
    object VTMasukKeluarDSDesigner5out: TStringField
      FieldName = '5-out'
    end
    object VTMasukKeluarDSDesigner6in: TStringField
      FieldName = '6-in'
    end
    object VTMasukKeluarDSDesigner6out: TStringField
      FieldName = '6-out'
    end
    object VTMasukKeluarDSDesigner7in: TStringField
      FieldName = '7-in'
    end
    object VTMasukKeluarDSDesigner7out: TStringField
      FieldName = '7-out'
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
    Left = 808
    Top = 24
  end
  object DataSource3: TDataSource
    DataSet = VTMasukKeluar
    Left = 808
    Top = 128
  end
end
