object FbarangMasukMaster: TFbarangMasukMaster
  Left = 302
  Top = 4
  AutoScroll = False
  BorderIcons = []
  Caption = 'Purchase Order'
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
  object bsSkinPanel3: TbsSkinPanel
    Left = 16
    Top = 24
    Width = 889
    Height = 41
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
    Caption = 'bsSkinPanel2'
    object Label3: TLabel
      Left = 24
      Top = 14
      Width = 47
      Height = 13
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 320
      Top = 14
      Width = 20
      Height = 13
      Caption = 's/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object tgl_mulai: TDateTimePicker
      Left = 87
      Top = 10
      Width = 137
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
      Left = 239
      Top = 10
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
      Left = 351
      Top = 10
      Width = 137
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
      Left = 503
      Top = 10
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
    object btnGo: TbsSkinButton
      Left = 591
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 4
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
      Caption = 'Go'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnGoClick
    end
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 16
    Top = 72
    Width = 889
    Height = 337
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
    Caption = 'bsSkinPanel1'
    object Label2: TLabel
      Left = 24
      Top = 14
      Width = 30
      Height = 13
      Caption = 'PO #'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 44
      Width = 857
      Height = 253
      DataSource = DSmutasi
      FixedColor = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'idfaktur'
          Title.Alignment = taCenter
          Title.Caption = 'Faktur'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tanggal'
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'iddistributor'
          Title.Alignment = taCenter
          Title.Caption = 'ID Supp.'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LuDistributor'
          Title.Caption = 'Supplyer'
          Width = 379
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CalStatus'
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idkasir'
          Title.Caption = 'Operator'
          Width = 65
          Visible = True
        end>
    end
    object edtFaktur: TEdit
      Left = 87
      Top = 12
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = edtFakturChange
    end
    object btnGudang: TbsSkinButton
      Left = 239
      Top = 10
      Width = 634
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
      Caption = 'Masukkan ke Gudang'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnGudangClick
    end
  end
  object bsSkinPanel2: TbsSkinPanel
    Left = 16
    Top = 416
    Width = 889
    Height = 193
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
    object Label4: TLabel
      Left = 432
      Top = 10
      Width = 25
      Height = 13
      Caption = 'Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 32
      Width = 857
      Height = 145
      DataSource = DSbarang
      FixedColor = clBlue
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
          FieldName = 'idbarang'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LuBarang'
          Title.Caption = 'Item'
          Width = 385
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
          FieldName = 'LUsatuan'
          Title.Alignment = taCenter
          Title.Caption = 'Satuan'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga_beli'
          Title.Alignment = taCenter
          Title.Caption = 'Harga'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CalTotal'
          Title.Alignment = taCenter
          Title.Caption = 'Jumlah'
          Width = 125
          Visible = True
        end>
    end
  end
  object btntambah: TbsSkinButton
    Left = 343
    Top = 620
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
    Caption = 'Tambah'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btntambahClick
  end
  object btnedit: TbsSkinButton
    Left = 423
    Top = 620
    Width = 75
    Height = 25
    TabOrder = 4
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
  object bsSkinButton1: TbsSkinButton
    Left = 503
    Top = 620
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton1Click
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
  object TbeliReal: TZTable
    OnCalcFields = TbeliRealCalcFields
    TableName = 'tbelireal'
    Top = 32
    object TbeliRealidfaktur: TStringField
      Alignment = taCenter
      FieldName = 'idfaktur'
      FixedChar = True
      Size = 12
    end
    object TbeliRealtanggal: TDateTimeField
      Alignment = taCenter
      FieldName = 'tanggal'
      DisplayFormat = 'dd-MM-yyyy HH:mm'
    end
    object TbeliRealiddistributor: TIntegerField
      Alignment = taCenter
      FieldName = 'iddistributor'
      DisplayFormat = '0000'
    end
    object TbeliRealLuDistributor: TStringField
      FieldKind = fkLookup
      FieldName = 'LuDistributor'
      LookupDataSet = Qdistributor
      LookupKeyFields = 'id'
      LookupResultField = 'nama'
      KeyFields = 'iddistributor'
      Lookup = True
    end
    object TbeliRealidkasir: TStringField
      Alignment = taCenter
      FieldName = 'idkasir'
      FixedChar = True
      Size = 5
    end
    object TbeliRealstatus: TSmallintField
      FieldName = 'status'
    end
    object TbeliRealCalStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalStatus'
      Calculated = True
    end
  end
  object DSmutasi: TDataSource
    AutoEdit = False
    DataSet = TbeliReal
    Top = 48
  end
  object Tbarang: TZTable
    SortedFields = 'idfaktur'
    OnCalcFields = TbarangCalcFields
    TableName = 'tbarang_masuk'
    MasterFields = 'idfaktur'
    MasterSource = DSmutasi
    IndexFieldNames = 'idfaktur Asc'
    Top = 432
    object Tbarangidfaktur: TStringField
      FieldName = 'idfaktur'
      Required = True
      FixedChar = True
      Size = 12
    end
    object Tbarangidbarang: TStringField
      Alignment = taCenter
      FieldName = 'idbarang'
      FixedChar = True
      Size = 10
    end
    object Tbarangqty: TFloatField
      Alignment = taCenter
      FieldName = 'qty'
    end
    object Tbarangharga_beli: TFloatField
      FieldName = 'harga_beli'
    end
    object TbarangLuBarang: TStringField
      FieldKind = fkLookup
      FieldName = 'LuBarang'
      LookupDataSet = Qbarang
      LookupKeyFields = 'idbarang'
      LookupResultField = 'namabarang'
      KeyFields = 'idbarang'
      Lookup = True
    end
    object TbarangLUsatuan: TStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = 'LUsatuan'
      LookupDataSet = Qbarang
      LookupKeyFields = 'idbarang'
      LookupResultField = 'kode'
      KeyFields = 'idbarang'
      Lookup = True
    end
    object TbarangCalTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalTotal'
      Calculated = True
    end
  end
  object DSbarang: TDataSource
    AutoEdit = False
    DataSet = Tbarang
    Top = 448
  end
  object Qbarang: TZQuery
    SQL.Strings = (
      'SELECT     Tbarang.idbarang, Tbarang.namabarang, tsatuan.kode'
      'FROM         Tbarang INNER JOIN'
      '                      tsatuan ON Tbarang.idsatuan = tsatuan.id'
      'ORDER BY Tbarang.idbarang')
    Params = <>
    Top = 472
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
  end
  object Qdistributor: TZQuery
    SQL.Strings = (
      'SELECT     id, nama'
      'FROM         tdistributor'
      'ORDER BY id')
    Params = <>
    Top = 72
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
end
