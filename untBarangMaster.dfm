object FbarangMaster: TFbarangMaster
  Left = 226
  Top = 62
  ActiveControl = cmbKategori
  AutoScroll = False
  BorderIcons = []
  Caption = 'Stok Barang'
  ClientHeight = 665
  ClientWidth = 921
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPanel1: TbsSkinPanel
    Left = 16
    Top = 24
    Width = 473
    Height = 585
    TabOrder = 0
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel1'
    object Label2: TLabel
      Left = 16
      Top = 38
      Width = 41
      Height = 13
      Caption = 'Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 16
      Top = 15
      Width = 48
      Height = 13
      Caption = 'Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnCari: TbsSkinButton
      Left = 208
      Top = 36
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
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 64
      Width = 441
      Height = 465
      DataSource = DSbarang
      FixedColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = btneditClick
      Columns = <
        item
          Alignment = taCenter
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
          Width = 198
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'LUsatuan'
          Title.Alignment = taCenter
          Title.Caption = 'Satuan'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Harga'
          Width = 96
          Visible = True
        end>
    end
    object btntambah: TbsSkinButton
      Left = 119
      Top = 540
      Width = 75
      Height = 25
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
      Caption = 'Tambah'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btntambahClick
    end
    object btnedit: TbsSkinButton
      Left = 199
      Top = 540
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
      Caption = 'Edit'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btneditClick
    end
    object btnhapus: TbsSkinButton
      Left = 279
      Top = 540
      Width = 75
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
      Caption = 'Hapus'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnhapusClick
    end
    object edtIdBarang: TEdit
      Left = 80
      Top = 36
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = edtIdBarangChange
      OnEnter = edtIdBarangEnter
      OnExit = edtIdBarangExit
      OnKeyPress = tkn13
    end
    object edtBarang: TEdit
      Left = 240
      Top = 36
      Width = 217
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = edtBarangChange
      OnEnter = edtBarangEnter
      OnExit = edtBarangExit
      OnKeyPress = tkn13
    end
    object cmbKategori: TComboBox
      Left = 80
      Top = 11
      Width = 377
      Height = 21
      Style = csDropDownList
      DropDownCount = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      OnClick = cmbKategoriClick
      OnKeyPress = tkn13
      Items.Strings = (
        ''
        'CASH'
        'CARD'
        'FOC'
        'CANCEL'
        'CORRECTION')
    end
  end
  object bsSkinPanel2: TbsSkinPanel
    Left = 504
    Top = 24
    Width = 401
    Height = 305
    TabOrder = 1
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel2'
    object Label4: TLabel
      Left = 173
      Top = 10
      Width = 50
      Height = 13
      Caption = 'Supplyer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBGrid3: TDBGrid
      Left = 14
      Top = 32
      Width = 373
      Height = 225
      DataSource = DSdistributor
      FixedColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid3DrawColumnCell
      OnDblClick = btnSeditClick
      Columns = <
        item
          Expanded = False
          FieldName = 'IDdistributor'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUnama'
          Title.Caption = 'Supplyer'
          Width = 189
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Harga'
          Width = 96
          Visible = True
        end>
    end
    object btnStambah: TbsSkinButton
      Left = 83
      Top = 267
      Width = 75
      Height = 25
      TabOrder = 1
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
      Caption = 'Tambah'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnStambahClick
    end
    object btnSedit: TbsSkinButton
      Left = 163
      Top = 267
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
      Caption = 'Edit'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnSeditClick
    end
    object btnShapus: TbsSkinButton
      Left = 243
      Top = 267
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
      Caption = 'Hapus'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnShapusClick
    end
  end
  object bsSkinPanel3: TbsSkinPanel
    Left = 504
    Top = 336
    Width = 401
    Height = 273
    TabOrder = 2
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel2'
    object Label3: TLabel
      Left = 187
      Top = 10
      Width = 27
      Height = 13
      Alignment = taCenter
      Caption = 'Stok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBGrid2: TDBGrid
      Left = 14
      Top = 32
      Width = 373
      Height = 209
      DataSource = DSstok
      FixedColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'gudang'
          Title.Caption = 'Gudang'
          Width = 255
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CalStok'
          Title.Alignment = taCenter
          Title.Caption = 'Stok'
          Width = 96
          Visible = True
        end>
    end
    object edttotal: TAEdit
      Left = 280
      Top = 244
      Width = 95
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Alignment = taRightJustify
    end
  end
  object btnOk: TbsSkinButton
    Left = 434
    Top = 627
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
    Caption = 'OK'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnOkClick
  end
  object DSbarang: TDataSource
    AutoEdit = False
    DataSet = tbarang
    Top = 56
  end
  object DSdistributor: TDataSource
    AutoEdit = False
    DataSet = Tdistributor
    Left = 688
    Top = 152
  end
  object Qstok: TQuery
    OnCalcFields = QstokCalcFields
    DatabaseName = 'vizta'
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
      'WHERE (Tgudang.id > 5)'
      'ORDER BY Tgudang.id')
    Left = 704
    Top = 464
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
      DisplayFormat = '#,0.##'
      Calculated = True
    end
  end
  object DSstok: TDataSource
    AutoEdit = False
    DataSet = Qstok
    Left = 704
    Top = 480
  end
  object tbarang: TTable
    AfterScroll = tbarangAfterScroll
    DatabaseName = 'vizta'
    TableName = 'tbarang'
    Top = 32
    object tbarangidbarang: TStringField
      DisplayLabel = 'ID-Barang'
      FieldName = 'idbarang'
      FixedChar = True
      Size = 10
    end
    object tbarangnamabarang: TStringField
      DisplayLabel = 'Nama Barang'
      FieldName = 'namabarang'
      FixedChar = True
      Size = 30
    end
    object tbarangidkategori: TSmallintField
      FieldName = 'idkategori'
    end
    object tbarangminstok: TFloatField
      FieldName = 'minstok'
    end
    object tbarangketerangan: TStringField
      FieldName = 'keterangan'
      FixedChar = True
      Size = 60
    end
    object tbarangidsatuan: TSmallintField
      FieldName = 'idsatuan'
    end
    object tbarangharga: TFloatField
      FieldName = 'harga'
      DisplayFormat = '#,0.##'
    end
    object tbarangLUsatuan: TStringField
      FieldKind = fkLookup
      FieldName = 'LUsatuan'
      LookupDataSet = Qsatuan
      LookupKeyFields = 'id'
      LookupResultField = 'kode'
      KeyFields = 'idsatuan'
      Size = 3
      Lookup = True
    end
    object tbarangstatus: TBooleanField
      FieldName = 'status'
    end
  end
  object Qsatuan: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, satuan, kode'
      'FROM         tsatuan'
      'ORDER BY satuan')
    Top = 72
    object Qsatuanid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tsatuan.id'
    end
    object Qsatuansatuan: TStringField
      FieldName = 'satuan'
      Origin = 'VIZTA.tsatuan.satuan'
      FixedChar = True
      Size = 25
    end
    object Qsatuankode: TStringField
      FieldName = 'kode'
      Origin = 'VIZTA.tsatuan.kode'
      FixedChar = True
      Size = 7
    end
  end
  object Tdistributor: TTable
    OnCalcFields = TdistributorCalcFields
    DatabaseName = 'vizta'
    IndexFieldNames = 'IDbarang'
    MasterFields = 'idbarang'
    MasterSource = DSbarang
    TableName = 'TbarangDistributor'
    Left = 688
    Top = 136
    object TdistributorIDdistributor: TSmallintField
      Alignment = taCenter
      FieldName = 'IDdistributor'
      Required = True
      DisplayFormat = '0000'
    end
    object TdistributorIDbarang: TStringField
      FieldName = 'IDbarang'
      Required = True
      FixedChar = True
      Size = 8
    end
    object Tdistributorharga: TFloatField
      FieldName = 'harga'
      Required = True
      DisplayFormat = '#,0.##'
    end
    object TdistributorLUnama: TStringField
      FieldKind = fkLookup
      FieldName = 'LUnama'
      LookupDataSet = Qdistributor
      LookupKeyFields = 'id'
      LookupResultField = 'nama'
      KeyFields = 'IDdistributor'
      Lookup = True
    end
    object TdistributorCalnama: TStringField
      FieldKind = fkCalculated
      FieldName = 'Calnama'
      Calculated = True
    end
  end
  object Qdistributor: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, nama'
      'FROM         tdistributor'
      'ORDER BY id')
    Left = 688
    Top = 176
    object Qdistributorid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tdistributor.id'
    end
    object Qdistributornama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tdistributor.nama'
      FixedChar = True
      Size = 30
    end
  end
  object Qkategori: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     kode, kategori, id'
      'FROM         tkategoribarang'
      'ORDER BY kategori')
    Left = 112
    object Qkategorikode: TStringField
      FieldName = 'kode'
      Origin = 'VIZTA.tkategoribarang.kode'
      FixedChar = True
      Size = 3
    end
    object Qkategorikategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategoribarang.kategori'
      FixedChar = True
    end
    object Qkategoriid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tkategoribarang.id'
    end
  end
  object bsBusinessSkinForm2: TbsBusinessSkinForm
    UseFormCursorInNCArea = True
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
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
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
    Left = 24
  end
  object Qother: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     kode, kategori, id'
      'FROM         tkategoribarang'
      'ORDER BY kategori')
    Top = 120
  end
end
