object FdistributorMaster: TFdistributorMaster
  Left = 354
  Top = 182
  AutoScroll = False
  BorderIcons = []
  Caption = 'Supplier'
  ClientHeight = 648
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPanel1: TbsSkinPanel
    Left = 24
    Top = 24
    Width = 873
    Height = 321
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
      Left = 24
      Top = 14
      Width = 59
      Height = 13
      Caption = 'Distributor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnCari: TbsSkinButton
      Left = 216
      Top = 12
      Width = 24
      Height = 20
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
      Top = 40
      Width = 841
      Height = 233
      DataSource = DSdistributor
      FixedColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Title.Caption = 'Supplier'
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cperson'
          Title.Caption = 'Kontak'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'telpon'
          Title.Alignment = taCenter
          Title.Caption = 'Telephone'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HP'
          Title.Alignment = taCenter
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'fax'
          Title.Alignment = taCenter
          Title.Caption = 'FAX'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Alignment = taCenter
          Title.Caption = 'Aktif'
          Visible = True
        end>
    end
    object btntambah: TbsSkinButton
      Left = 319
      Top = 284
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
      Caption = 'Tambah'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btntambahClick
    end
    object btnedit: TbsSkinButton
      Left = 399
      Top = 284
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
      Caption = 'Edit'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btneditClick
    end
    object btnhapus: TbsSkinButton
      Left = 479
      Top = 284
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
      Caption = 'Hapus'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnhapusClick
    end
    object edtId: TEdit
      Left = 88
      Top = 12
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = edtIdChange
      OnEnter = edtIdEnter
      OnKeyPress = Tkn13
    end
    object edtSupplyer: TEdit
      Left = 248
      Top = 12
      Width = 217
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = edtSupplyerChange
      OnEnter = edtSupplyerEnter
    end
    object DBCheckBox1: TDBCheckBox
      Left = 112
      Top = 288
      Width = 97
      Height = 17
      Caption = 'status'
      DataField = 'status'
      DataSource = DSdistributor
      TabOrder = 7
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
    end
  end
  object bsSkinPanel2: TbsSkinPanel
    Left = 24
    Top = 361
    Width = 873
    Height = 233
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
    object Label1: TLabel
      Left = 416
      Top = 6
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
    object DBGrid3: TDBGrid
      Left = 16
      Top = 24
      Width = 841
      Height = 161
      DataSource = DSbarang
      FixedColor = clRed
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
      Columns = <
        item
          Expanded = False
          FieldName = 'IDbarang'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUbarang'
          Title.Caption = 'Item'
          Width = 528
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
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Harga'
          Width = 123
          Visible = True
        end>
    end
    object btnStambah: TbsSkinButton
      Left = 319
      Top = 195
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
      Left = 399
      Top = 195
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
      Left = 479
      Top = 195
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
  object btnOk: TbsSkinButton
    Left = 423
    Top = 601
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
    Caption = 'OK'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnOkClick
  end
  object DSdistributor: TDataSource
    AutoEdit = False
    DataSet = Tdistributor
    Top = 80
  end
  object Tdistributor: TTable
    DatabaseName = 'vizta'
    TableName = 'tdistributor'
    Top = 56
    object Tdistributorid: TSmallintField
      Alignment = taCenter
      FieldName = 'id'
      Required = True
      DisplayFormat = '0000'
    end
    object Tdistributornama: TStringField
      FieldName = 'nama'
      FixedChar = True
      Size = 30
    end
    object Tdistributortelpon: TStringField
      Alignment = taCenter
      FieldName = 'telpon'
      FixedChar = True
    end
    object TdistributorHP: TStringField
      Alignment = taCenter
      FieldName = 'HP'
      FixedChar = True
      Size = 30
    end
    object Tdistributorcperson: TStringField
      FieldName = 'cperson'
      FixedChar = True
      Size = 30
    end
    object Tdistributorfax: TStringField
      Alignment = taCenter
      FieldName = 'fax'
      FixedChar = True
    end
    object Tdistributoralamat: TMemoField
      FieldName = 'alamat'
      BlobType = ftMemo
    end
    object Tdistributorstatus: TBooleanField
      FieldName = 'status'
    end
    object Tdistributorketerangan: TMemoField
      FieldName = 'keterangan'
      BlobType = ftMemo
    end
  end
  object Qothers: TQuery
    DatabaseName = 'vizta'
    Left = 72
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
  object Tbarang: TTable
    DatabaseName = 'vizta'
    IndexFieldNames = 'IDdistributor'
    MasterFields = 'id'
    MasterSource = DSdistributor
    TableName = 'TbarangDistributor'
    Top = 392
    object TbarangIDdistributor: TSmallintField
      FieldName = 'IDdistributor'
      Required = True
    end
    object TbarangIDbarang: TStringField
      Alignment = taCenter
      FieldName = 'IDbarang'
      Required = True
      FixedChar = True
      Size = 8
    end
    object Tbarangharga: TFloatField
      FieldName = 'harga'
      Required = True
      DisplayFormat = '#,0'
    end
    object TbarangLUsatuan: TStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = 'LUsatuan'
      LookupDataSet = Qsatuan
      LookupKeyFields = 'id'
      LookupResultField = 'kode'
      KeyFields = 'IDbarang'
      Lookup = True
    end
    object TbarangLUbarang: TStringField
      FieldKind = fkLookup
      FieldName = 'LUbarang'
      LookupDataSet = Qsatuan
      LookupKeyFields = 'id'
      LookupResultField = 'namabarang'
      KeyFields = 'IDbarang'
      Lookup = True
    end
  end
  object DSbarang: TDataSource
    AutoEdit = False
    DataSet = Tbarang
    Top = 408
  end
  object Qsatuan: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     Tbarang.idbarang AS id, tsatuan.satuan, tsatuan.kode,' +
        ' Tbarang.namabarang'
      'FROM         Tbarang INNER JOIN'
      '                      tsatuan ON Tbarang.idsatuan = tsatuan.id'
      'ORDER BY Tbarang.idbarang')
    Top = 424
    object Qsatuanid: TStringField
      FieldName = 'id'
      Origin = 'VIZTA.Tbarang.idbarang'
      FixedChar = True
      Size = 8
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
    object Qsatuannamabarang: TStringField
      FieldName = 'namabarang'
      Origin = 'VIZTA.Tbarang.namabarang'
      FixedChar = True
      Size = 30
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
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
  end
end
