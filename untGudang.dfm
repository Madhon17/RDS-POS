object FgudangMutasi: TFgudangMutasi
  Left = 300
  Top = 2
  AutoScroll = False
  BorderIcons = []
  Caption = 'Mutasi Gudang'
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPanel1: TbsSkinPanel
    Left = 16
    Top = 72
    Width = 889
    Height = 337
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
      Width = 14
      Height = 13
      Caption = 'ID'
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
      Height = 285
      DataSource = DSmutasi
      FixedColor = clRed
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
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tanggal'
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idtanggungjawab'
          Title.Alignment = taCenter
          Title.Caption = 'Responsible'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LuAsal'
          Title.Alignment = taCenter
          Title.Caption = 'Asal'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LuTujuan'
          Title.Alignment = taCenter
          Title.Caption = 'Tujuan'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'keterangan'
          Title.Caption = 'Keterangan'
          Width = 236
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'opperator'
          Title.Alignment = taCenter
          Title.Caption = 'Opperator'
          Width = 85
          Visible = True
        end>
    end
    object edtIdBarang: TEdit
      Left = 88
      Top = 12
      Width = 121
      Height = 21
      TabOrder = 1
      OnChange = edtIdBarangChange
    end
  end
  object bsSkinPanel2: TbsSkinPanel
    Left = 16
    Top = 416
    Width = 889
    Height = 193
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
          FieldName = 'LUbarang'
          Title.Caption = 'Item'
          Width = 625
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
          FieldName = 'LuSatuan'
          Title.Alignment = taCenter
          Title.Caption = 'Satuan'
          Width = 65
          Visible = True
        end>
    end
  end
  object btntambah: TbsSkinButton
    Left = 343
    Top = 620
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
    Caption = 'Edit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btneditClick
  end
  object bsSkinPanel3: TbsSkinPanel
    Left = 16
    Top = 24
    Width = 889
    Height = 41
    TabOrder = 4
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
      Width = 44
      Height = 13
      Caption = 'Periode'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 317
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
      Left = 231
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
      Left = 495
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
      Left = 583
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
  object DSmutasi: TDataSource
    AutoEdit = False
    DataSet = TgudangMutasi
    Top = 48
  end
  object DSbarang: TDataSource
    AutoEdit = False
    DataSet = Tbarang
    Top = 448
  end
  object QgudangMutasi: TZQuery
    SQL.Strings = (
      'SELECT     id, gudang'
      'FROM         Tgudang'
      'ORDER BY id')
    Params = <>
    Top = 72
    object QgudangMutasiid: TIntegerField
      FieldName = 'id'
      Origin = 'VIZTA.Tgudang.id'
    end
    object QgudangMutasigudang: TStringField
      FieldName = 'gudang'
      Origin = 'VIZTA.Tgudang.gudang'
      FixedChar = True
    end
  end
  object TgudangMutasi: TZTable
    TableName = 'TgudangMutasi'
    Top = 32
    object TgudangMutasiid: TStringField
      FieldName = 'id'
      Required = True
      FixedChar = True
      Size = 12
    end
    object TgudangMutasitanggal: TDateTimeField
      FieldName = 'tanggal'
      Required = True
    end
    object TgudangMutasiidtanggungjawab: TStringField
      Alignment = taCenter
      FieldName = 'idtanggungjawab'
      Required = True
      FixedChar = True
      Size = 5
    end
    object TgudangMutasiasal: TIntegerField
      FieldName = 'asal'
      Required = True
    end
    object TgudangMutasitujuan: TIntegerField
      FieldName = 'tujuan'
      Required = True
    end
    object TgudangMutasiketerangan: TStringField
      FieldName = 'keterangan'
      FixedChar = True
      Size = 60
    end
    object TgudangMutasiLuAsal: TStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = 'LuAsal'
      LookupDataSet = QgudangMutasi
      LookupKeyFields = 'id'
      LookupResultField = 'gudang'
      KeyFields = 'asal'
      Lookup = True
    end
    object TgudangMutasiLuTujuan: TStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = 'LuTujuan'
      LookupDataSet = QgudangMutasi
      LookupKeyFields = 'id'
      LookupResultField = 'gudang'
      KeyFields = 'tujuan'
      Lookup = True
    end
    object TgudangMutasiopperator: TStringField
      Alignment = taCenter
      FieldName = 'opperator'
      Required = True
      FixedChar = True
      Size = 5
    end
  end
  object Tbarang: TZTable
    SortedFields = 'idmutasi'
    TableName = 'TgudangMutasiDetail'
    MasterFields = 'id'
    MasterSource = DSmutasi
    IndexFieldNames = 'idmutasi Asc'
    Top = 432
    object Tbarangidmutasi: TStringField
      FieldName = 'idmutasi'
      FixedChar = True
      Size = 12
    end
    object Tbarangidbarang: TStringField
      Alignment = taCenter
      FieldName = 'idbarang'
      FixedChar = True
      Size = 8
    end
    object Tbarangqty: TFloatField
      Alignment = taCenter
      FieldName = 'qty'
    end
    object TbarangLUbarang: TStringField
      FieldKind = fkLookup
      FieldName = 'LUbarang'
      LookupDataSet = Qbarang
      LookupKeyFields = 'idbarang'
      LookupResultField = 'namabarang'
      KeyFields = 'idbarang'
      Lookup = True
    end
    object TbarangLuSatuan: TStringField
      Alignment = taCenter
      FieldKind = fkLookup
      FieldName = 'LuSatuan'
      LookupDataSet = Qbarang
      LookupKeyFields = 'idbarang'
      LookupResultField = 'kode'
      KeyFields = 'idbarang'
      Lookup = True
    end
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
  object Qkasir: TZQuery
    SQL.Strings = (
      'SELECT     login, nama'
      'FROM         tkasir'
      'ORDER BY login')
    Params = <>
    Top = 88
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
end
