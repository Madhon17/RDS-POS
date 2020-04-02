object FgudangMutasiDetail: TFgudangMutasiDetail
  Left = 496
  Top = 126
  AutoScroll = False
  BorderIcons = []
  Caption = 'Mutasi'
  ClientHeight = 578
  ClientWidth = 611
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
  object Label3: TLabel
    Left = 40
    Top = 28
    Width = 25
    Height = 13
    Caption = 'Asal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 40
    Top = 54
    Width = 40
    Height = 13
    Caption = 'Tujuan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 40
    Top = 81
    Width = 112
    Height = 13
    Caption = 'Penanggung Jawab'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 40
    Top = 108
    Width = 66
    Height = 13
    Caption = 'Keterangan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Panel1: TPanel
    Left = 24
    Top = 144
    Width = 561
    Height = 377
    BevelOuter = bvLowered
    Color = clRed
    TabOrder = 5
    object Label7: TLabel
      Left = 20
      Top = 13
      Width = 61
      Height = 13
      Caption = 'Nama Item'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 20
      Top = 64
      Width = 20
      Height = 13
      Caption = 'Qty'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object txtSatuan: TLabel
      Left = 192
      Top = 60
      Width = 20
      Height = 13
      Caption = 'Qty'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 20
      Top = 37
      Width = 27
      Height = 13
      Caption = 'Stok'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object btnSatuan: TbsSkinButton
      Left = 217
      Top = 59
      Width = 24
      Height = 20
      TabOrder = 11
      SkinData = FrmInduk.bsSkinData1
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
      Caption = '... '
      NumGlyphs = 1
      Spacing = 1
    end
    object DBGrid1: TDBGrid
      Left = 20
      Top = 89
      Width = 521
      Height = 224
      TabStop = False
      DataSource = DSbarangmasuk
      FixedColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnKeyPress = cmbAsalKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'idbarang'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'barang'
          Title.Caption = 'Item'
          Width = 225
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qty'
          Title.Alignment = taCenter
          Title.Caption = 'Qty'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'satuan'
          Title.Alignment = taCenter
          Title.Caption = 'Satuan'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Visible = True
        end>
    end
    object btnCariBarang: TbsSkinButton
      Left = 251
      Top = 8
      Width = 24
      Height = 20
      TabOrder = 9
      SkinData = FrmInduk.bsSkinData1
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
      Caption = '... '
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnCariBarangClick
    end
    object bbtnsimpan: TLMDButton
      Left = 199
      Top = 336
      Width = 81
      Height = 25
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Visible = False
      OnClick = bbtnsimpanClick
      Color = clNavy
      ParentColor = False
    end
    object bbtnbatal: TLMDButton
      Left = 279
      Top = 336
      Width = 81
      Height = 25
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Visible = False
      OnClick = bbtnbatalClick
      Color = clNavy
      ParentColor = False
    end
    object bbtntambah: TLMDButton
      Left = 160
      Top = 336
      Width = 81
      Height = 25
      Caption = 'Tambah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbtntambahClick
      Color = clNavy
      ParentColor = False
    end
    object bbtnhapus: TLMDButton
      Left = 320
      Top = 336
      Width = 81
      Height = 25
      Caption = 'Hapus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bbtnhapusClick
      Color = clNavy
      ParentColor = False
    end
    object bbtnedit: TLMDButton
      Left = 240
      Top = 336
      Width = 81
      Height = 25
      Caption = 'Edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bbtneditClick
      Color = clNavy
      ParentColor = False
    end
    object edtIDbarang: TDBEdit
      Left = 128
      Top = 8
      Width = 113
      Height = 21
      DataField = 'idbarang'
      DataSource = DSbarangmasuk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = edtIDbarangChange
      OnExit = edtIDbarangExit
      OnKeyPress = edtIDbarangKeyPress
    end
    object edtNamaBarang: TDBEdit
      Left = 284
      Top = 8
      Width = 257
      Height = 21
      TabStop = False
      DataField = 'barang'
      DataSource = DSbarangmasuk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyPress = cmbAsalKeyPress
    end
    object edtQty: TDBEdit
      Left = 128
      Top = 58
      Width = 57
      Height = 21
      DataField = 'qty'
      DataSource = DSbarangmasuk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnKeyPress = cmbAsalKeyPress
    end
    object edtStok: TAEdit
      Left = 128
      Top = 33
      Width = 57
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      OnKeyPress = cmbAsalKeyPress
      Alignment = taRightJustify
    end
  end
  object btnSimpan: TLMDButton
    Left = 230
    Top = 536
    Width = 81
    Height = 25
    Caption = 'Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnSimpanClick
    Color = clNavy
    ParentColor = False
  end
  object btnBatal: TLMDButton
    Left = 310
    Top = 536
    Width = 81
    Height = 25
    Caption = 'Batal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnBatalClick
    Color = clNavy
    ParentColor = False
  end
  object cmbAsal: TComboBox
    Left = 168
    Top = 24
    Width = 145
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    OnClick = cmbAsalClick
    OnKeyPress = cmbAsalKeyPress
  end
  object cmbTujuan: TComboBox
    Left = 168
    Top = 50
    Width = 145
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
    OnKeyPress = cmbAsalKeyPress
  end
  object edtTanggungjawabID: TEdit
    Left = 168
    Top = 77
    Width = 113
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = edtTanggungjawabIDChange
    OnExit = edtTanggungjawabIDExit
    OnKeyPress = edtTanggungjawabIDKeyPress
  end
  object btnCariKasir: TbsSkinButton
    Left = 288
    Top = 77
    Width = 24
    Height = 20
    TabOrder = 8
    SkinData = FrmInduk.bsSkinData1
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
    Caption = '... '
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnCariKasirClick
  end
  object edtketerangan: TEdit
    Left = 168
    Top = 104
    Width = 393
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnKeyPress = cmbAsalKeyPress
  end
  object edtTanggungJawabNama: TEdit
    Left = 320
    Top = 76
    Width = 241
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    OnKeyPress = cmbAsalKeyPress
  end
  object DSbarangmasuk: TDataSource
    AutoEdit = False
    DataSet = vtBarangMasuk
    Left = 504
    Top = 216
  end
  object vtBarangMasuk: TVirtualTable
    FieldDefs = <
      item
        Name = 'idbarang'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'barang'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'satuan'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'qty'
        DataType = ftFloat
      end
      item
        Name = 'harga'
        DataType = ftFloat
      end>
    Left = 504
    Top = 192
    Data = {
      0200050008006964626172616E6701000A000600626172616E6701001E000600
      73617475616E01000A0003007174790600000005006861726761060000000000
      00000000}
    object vtBarangMasukidbarang: TStringField
      FieldName = 'idbarang'
      Size = 10
    end
    object vtBarangMasukbarang: TStringField
      FieldName = 'barang'
      Size = 30
    end
    object vtBarangMasuksatuan: TStringField
      FieldName = 'satuan'
      Size = 10
    end
    object vtBarangMasukqty: TFloatField
      FieldName = 'qty'
    end
    object vtBarangMasukharga: TFloatField
      FieldName = 'harga'
    end
  end
  object Qbarang: TZQuery
    SQL.Strings = (
      
        'SELECT     Tbarang.idbarang, Tbarang.namabarang, tsatuan.kode, T' +
        'barang.harga'
      'FROM         Tbarang INNER JOIN'
      '                      tsatuan ON Tbarang.idsatuan = tsatuan.id'
      'ORDER BY Tbarang.idbarang')
    Params = <>
    Left = 536
    Top = 192
    object Qbarangidbarang: TStringField
      FieldName = 'idbarang'
      Origin = 'VIZTA.Tbarang.idbarang'
      FixedChar = True
      Size = 8
    end
    object Qbarangnamabarang: TStringField
      FieldName = 'namabarang'
      Origin = 'VIZTA.Tbarang.namabarang'
      FixedChar = True
      Size = 30
    end
    object Qbarangkode: TStringField
      FieldName = 'kode'
      Origin = 'VIZTA.tsatuan.kode'
      FixedChar = True
      Size = 7
    end
    object Qbarangharga: TFloatField
      FieldName = 'harga'
      Origin = 'VIZTA.Tbarang.harga'
    end
  end
  object Qgudang: TZQuery
    SQL.Strings = (
      'SELECT     id, gudang'
      'FROM         Tgudang'
      'ORDER BY id')
    Params = <>
    object Qgudangid: TIntegerField
      FieldName = 'id'
      Origin = 'VIZTA.Tgudang.id'
    end
    object Qgudanggudang: TStringField
      FieldName = 'gudang'
      Origin = 'VIZTA.Tgudang.gudang'
      FixedChar = True
    end
  end
  object Qid: TZQuery
    SQL.Strings = (
      'SELECT     id, gudang'
      'FROM         Tgudang'
      'ORDER BY id')
    Params = <>
    Left = 48
  end
  object QgudangMutasiDetail: TZQuery
    SQL.Strings = (
      'INSERT INTO TgudangMutasiDetail'
      '                      (idmutasi, idbarang, qty, harga)'
      'VALUES        (:idmutasi, :idbarang, :qty, :harga)')
    Params = <
      item
        DataType = ftString
        Name = 'idmutasi'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'idbarang'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'qty'
        ParamType = ptUnknown
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'harga'
        ParamType = ptUnknown
        Value = 0.000000000000000000
      end>
    Left = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'idmutasi'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'idbarang'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'qty'
        ParamType = ptUnknown
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'harga'
        ParamType = ptUnknown
        Value = 0.000000000000000000
      end>
  end
  object bsBusinessSkinForm2: TbsBusinessSkinForm
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
    Left = 352
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
    Left = 376
  end
  object Qkasir: TZQuery
    SQL.Strings = (
      'SELECT     login, nama'
      'FROM         tkasir'
      'ORDER BY login')
    Params = <>
    Left = 336
    Top = 72
    object Qkasirlogin: TStringField
      FieldName = 'login'
      Origin = 'VIZTA.tkasir.login'
      FixedChar = True
      Size = 5
    end
    object Qkasirnama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tkasir.nama'
      FixedChar = True
    end
  end
  object Qstok: TZQuery
    OnCalcFields = QstokCalcFields
    SQL.Strings = (
      
        'SELECT     Tgudang.id, Tgudang.gudang, TVM.qty AS masuk, TVK.qty' +
        ' AS keluar'
      'FROM         Tgudang LEFT OUTER JOIN'
      
        '                          (SELECT     TMd.idbarang, SUM(TMd.qty)' +
        ' AS qty, TM.tujuan'
      
        '                            FROM          TgudangMutasiDetail TM' +
        'd INNER JOIN'
      
        '                                                   TgudangMutasi' +
        ' TM ON TMd.idmutasi = TM.id'
      '                            GROUP BY TMd.idbarang, TM.tujuan'
      
        '                            HAVING      (TMd.idbarang = :idbaran' +
        'gMasuk)) TVM ON Tgudang.id = TVM.tujuan LEFT OUTER JOIN'
      
        '                          (SELECT     TMd.idbarang, SUM(TMd.qty)' +
        ' AS qty, TM.asal'
      
        '                            FROM          TgudangMutasiDetail TM' +
        'd INNER JOIN'
      
        '                                                   TgudangMutasi' +
        ' TM ON TMd.idmutasi = TM.id'
      '                            GROUP BY TMd.idbarang, TM.asal'
      
        '                            HAVING      (TMd.idbarang = :idbaran' +
        'gKeluar)) TVK ON Tgudang.id = TVK.asal'
      'WHERE (Tgudang.gudang = :Gudang)'
      'ORDER BY Tgudang.id')
    Params = <
      item
        DataType = ftString
        Name = 'idbarangMasuk'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'idbarangKeluar'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Gudang'
        ParamType = ptUnknown
      end>
    Left = 112
    Top = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'idbarangMasuk'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'idbarangKeluar'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Gudang'
        ParamType = ptUnknown
      end>
    object Qstokid: TIntegerField
      FieldName = 'id'
    end
    object Qstokgudang: TStringField
      FieldName = 'gudang'
      FixedChar = True
    end
    object Qstokmasuk: TFloatField
      FieldName = 'masuk'
    end
    object Qstokkeluar: TFloatField
      FieldName = 'keluar'
    end
    object QstokCalStok: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalStok'
      Calculated = True
    end
  end
  object Qdel: TZQuery
    SQL.Strings = (
      'DELETE FROM TgudangMutasiDetail'
      'WHERE     (idmutasi = :idmutasi)')
    Params = <
      item
        DataType = ftString
        Name = 'idmutasi'
        ParamType = ptUnknown
      end>
    Left = 138
    ParamData = <
      item
        DataType = ftString
        Name = 'idmutasi'
        ParamType = ptUnknown
      end>
  end
end
