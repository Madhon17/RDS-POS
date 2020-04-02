object fbarangmasuk: Tfbarangmasuk
  Left = 431
  Top = 140
  AutoScroll = False
  BorderIcons = []
  Caption = 'Input Purchase Order'
  ClientHeight = 603
  ClientWidth = 680
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
    Left = 24
    Top = 112
    Width = 633
    Height = 425
    BevelOuter = bvLowered
    Color = 16738355
    TabOrder = 1
    TabStop = True
    object Label7: TLabel
      Left = 24
      Top = 13
      Width = 77
      Height = 13
      Caption = 'Nama Barang'
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
    object Label3: TLabel
      Left = 24
      Top = 39
      Width = 39
      Height = 13
      Caption = 'Harga '
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
    object Label1: TLabel
      Left = 24
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
    object Label2: TLabel
      Left = 24
      Top = 85
      Width = 30
      Height = 13
      Caption = 'Total'
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
      Left = 184
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
    object btnSatuan: TbsSkinButton
      Left = 217
      Top = 56
      Width = 24
      Height = 20
      TabOrder = 12
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
      Enabled = False
      OnClick = btnSatuanClick
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 113
      Width = 601
      Height = 240
      TabStop = False
      DataSource = DSbarangmasuk
      FixedColor = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = Pencet13
      Columns = <
        item
          Expanded = False
          FieldName = 'idbarang'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'barang'
          Title.Caption = 'Item'
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Harga'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qty'
          Title.Alignment = taCenter
          Title.Caption = 'Qty'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'satuan'
          Title.Alignment = taCenter
          Title.Caption = 'Satuan'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Caltotal'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 100
          Visible = True
        end>
    end
    object txt_total: TAEdit
      Left = 499
      Top = 359
      Width = 100
      Height = 21
      TabStop = False
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      Alignment = taRightJustify
    end
    object btnCariBarang: TbsSkinButton
      Left = 248
      Top = 8
      Width = 24
      Height = 20
      TabOrder = 4
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
      Left = 240
      Top = 389
      Width = 81
      Height = 25
      Caption = 'Simpan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Visible = False
      OnClick = bbtnsimpanClick
      Color = clNavy
      ParentColor = False
    end
    object bbtnbatal: TLMDButton
      Left = 320
      Top = 389
      Width = 81
      Height = 25
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      Visible = False
      OnClick = bbtnbatalClick
      Color = clNavy
      ParentColor = False
    end
    object bbtntambah: TLMDButton
      Left = 201
      Top = 389
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
      Left = 361
      Top = 389
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
      Left = 281
      Top = 389
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
    object edtHargaPokok: TAEdit
      Left = 480
      Top = 8
      Width = 121
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
      TabOrder = 6
      OnKeyPress = edthargaKeyPress
      Alignment = taRightJustify
    end
    object edtidbarang: TDBEdit
      Left = 120
      Top = 8
      Width = 121
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
      OnChange = edtidbarangChange
      OnExit = edtidbarangExit
      OnKeyPress = edtidbarangKeyPress
    end
    object edtharga: TDBEdit
      Left = 120
      Top = 32
      Width = 121
      Height = 21
      DataField = 'harga'
      DataSource = DSbarangmasuk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnKeyPress = edthargaKeyPress
    end
    object edtQty: TDBEdit
      Left = 120
      Top = 56
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
      TabOrder = 8
      OnKeyPress = edthargaKeyPress
    end
    object edttotal: TDBEdit
      Left = 120
      Top = 80
      Width = 121
      Height = 21
      TabStop = False
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clNavy
      DataField = 'Caltotal'
      DataSource = DSbarangmasuk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
      OnKeyPress = edthargaKeyPress
    end
    object edtnamabarang: TDBEdit
      Left = 280
      Top = 8
      Width = 193
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
      ReadOnly = True
      TabOrder = 5
      OnKeyPress = edthargaKeyPress
    end
  end
  object btnSimpan: TbsSkinButton
    Left = 262
    Top = 549
    Width = 75
    Height = 25
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
    Caption = 'Simpan'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnSimpanClick
  end
  object btnBatal: TbsSkinButton
    Left = 342
    Top = 549
    Width = 75
    Height = 25
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
    Caption = 'Batal'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnBatalClick
  end
  object Panel2: TPanel
    Left = 24
    Top = 40
    Width = 633
    Height = 62
    BevelOuter = bvLowered
    Color = 16738355
    TabOrder = 0
    TabStop = True
    object Label4: TLabel
      Left = 24
      Top = 36
      Width = 50
      Height = 13
      Caption = 'Supplyer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 24
      Top = 12
      Width = 37
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtSupplyerID: TEdit
      Left = 120
      Top = 32
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = edtSupplyerIDChange
      OnExit = edtSupplyerIDExit
      OnKeyPress = edtSupplyerIDKeyPress
    end
    object btnCari: TbsSkinButton
      Left = 248
      Top = 32
      Width = 24
      Height = 20
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
      OnClick = btnCariClick
    end
    object edtSuplyerNama: TEdit
      Left = 280
      Top = 32
      Width = 217
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = edtidbarangKeyPress
    end
    object cmbStatus: TComboBox
      Left = 120
      Top = 8
      Width = 377
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      Style = csDropDownList
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      OnClick = cmbStatusClick
      OnKeyPress = Pencet13
      Items.Strings = (
        ''
        'Request'
        'Order '
        'Bill'
        'Cancel')
    end
  end
  object DSbarangmasuk: TDataSource
    AutoEdit = False
    DataSet = vtBarangMasuk
    Left = 576
    Top = 144
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
    Left = 2
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
    Left = 2
    Top = 24
  end
  object vtBarangMasuk: TVirtualTable
    OnCalcFields = vtBarangMasukCalcFields
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
        Name = 'qty'
        DataType = ftFloat
      end
      item
        Name = 'satuan'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'harga'
        DataType = ftFloat
      end>
    Left = 576
    Top = 128
    Data = {
      0200050008006964626172616E6701000A000600626172616E6701001E000300
      71747906000000060073617475616E01000A0005006861726761060000000000
      00000000}
    object vtBarangMasukidbarang: TStringField
      Alignment = taCenter
      FieldName = 'idbarang'
      Size = 10
    end
    object vtBarangMasukbarang: TStringField
      FieldName = 'barang'
      Size = 30
    end
    object vtBarangMasukharga: TCurrencyField
      FieldName = 'harga'
      DisplayFormat = '#,0'
    end
    object vtBarangMasuksatuan: TStringField
      Alignment = taCenter
      FieldName = 'satuan'
      Size = 10
    end
    object vtBarangMasukCaltotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Caltotal'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object vtBarangMasukqty: TFloatField
      FieldName = 'qty'
      DisplayFormat = '#,0'
    end
  end
  object Qsatuan: TZQuery
    SQL.Strings = (
      'SELECT     id, kode, satuan'
      'FROM         tsatuan'
      'ORDER BY id')
    Params = <>
    Left = 10
    Top = 96
    object Qsatuanid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tsatuan.id'
    end
    object Qsatuankode: TStringField
      FieldName = 'kode'
      Origin = 'VIZTA.tsatuan.kode'
      FixedChar = True
      Size = 7
    end
    object Qsatuansatuan: TStringField
      FieldName = 'satuan'
      Origin = 'VIZTA.tsatuan.satuan'
      FixedChar = True
      Size = 25
    end
  end
  object Qsupplyer: TZQuery
    SQL.Strings = (
      'SELECT     id, nama'
      'FROM         tdistributor'
      'ORDER BY id')
    Params = <>
    Left = 138
    object Qsupplyerid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tdistributor.id'
    end
    object Qsupplyernama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tdistributor.nama'
      FixedChar = True
      Size = 30
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
    Left = 616
    Top = 128
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
  object Qid: TZQuery
    SQL.Strings = (
      'SELECT     id, gudang'
      'FROM         Tgudang'
      'ORDER BY id')
    Params = <>
    Left = 48
  end
  object QbarangMasuk: TZQuery
    SQL.Strings = (
      'INSERT INTO tbarang_masuk'
      '                      (idfaktur, idbarang, qty, harga_beli)'
      'VALUES        (:idfaktur, :idbarang, :qty, :harga_beli)')
    Params = <
      item
        DataType = ftString
        Name = 'idfaktur'
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
        Name = 'harga_beli'
        ParamType = ptUnknown
        Value = 0.000000000000000000
      end>
    Left = 176
    ParamData = <
      item
        DataType = ftString
        Name = 'idfaktur'
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
        Name = 'harga_beli'
        ParamType = ptUnknown
        Value = 0.000000000000000000
      end>
  end
  object Qdel: TZQuery
    SQL.Strings = (
      'DELETE FROM tbarang_masuk'
      'WHERE     (idfaktur = :idfaktur)')
    Params = <
      item
        DataType = ftString
        Name = 'idfaktur'
        ParamType = ptUnknown
      end>
    Left = 234
    ParamData = <
      item
        DataType = ftString
        Name = 'idfaktur'
        ParamType = ptUnknown
      end>
  end
end
