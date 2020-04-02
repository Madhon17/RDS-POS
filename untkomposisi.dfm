object fkomposisi: Tfkomposisi
  Left = 430
  Top = 118
  ActiveControl = cmbKategori
  AutoScroll = False
  BorderIcons = []
  Caption = 'Menu'
  ClientHeight = 599
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
  object bsSkinPanel3: TbsSkinPanel
    Left = 24
    Top = 24
    Width = 873
    Height = 353
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
    object Kategori: TLabel
      Left = 16
      Top = 15
      Width = 48
      Height = 13
      Caption = 'Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 16
      Top = 40
      Width = 32
      Height = 13
      Caption = 'Menu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cmbKategori: TComboBox
      Left = 78
      Top = 11
      Width = 379
      Height = 21
      Style = csDropDownList
      DropDownCount = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnClick = cmbKategoriClick
      OnKeyPress = TKN13
    end
    object edtidmenucari: TAEdit
      Left = 78
      Top = 36
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = edtidmenucariChange
      OnEnter = AEdit1Enter
      OnKeyPress = TKN13
      Alignment = taCenter
    end
    object edtnamamenucari: TAEdit
      Left = 240
      Top = 36
      Width = 217
      Height = 21
      BiDiMode = bdLeftToRight
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnChange = edtnamamenucariChange
      OnEnter = edtnamamenucariEnter
      OnKeyPress = TKN13
      Alignment = taCenter
    end
    object btntambah: TbsSkinButton
      Left = 319
      Top = 316
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
      Left = 399
      Top = 316
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
      Left = 479
      Top = 316
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
    object DBGmenu: TDBGrid
      Left = 14
      Top = 64
      Width = 843
      Height = 241
      DataSource = DSmenu
      FixedColor = clRed
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
      OnDrawColumnCell = DBGmenuDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'menu'
          Title.Caption = 'Menu'
          Width = 291
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUkategori'
          Title.Alignment = taCenter
          Title.Caption = 'Kategori'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUlokasi'
          Title.Alignment = taCenter
          Title.Caption = 'Lokasi'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Harga'
          Title.Alignment = taCenter
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lstatus'
          Title.Alignment = taCenter
          Title.Caption = 'Aktif'
          Width = 51
          Visible = True
        end>
    end
    object DBCheckBox1: TDBCheckBox
      Left = 808
      Top = 88
      Width = 17
      Height = 17
      DataField = 'status'
      DataSource = DSmenu
      TabOrder = 8
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
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
    object btnRemoveOrphan: TbsSkinButton
      Left = 559
      Top = 316
      Width = 130
      Height = 25
      TabOrder = 9
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
      Caption = 'Hapus Menu Yatim'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnRemoveOrphanClick
    end
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 24
    Top = 384
    Width = 873
    Height = 217
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
    object Label5: TLabel
      Left = 408
      Top = 10
      Width = 57
      Height = 13
      Alignment = taCenter
      Caption = 'Komposisi'
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
      Width = 843
      Height = 137
      DataSource = DSkomposisi
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
      OnDrawColumnCell = DBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'idbarang'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUbarang'
          Title.Caption = 'Item'
          Width = 358
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtysatuan'
          Title.Alignment = taCenter
          Title.Caption = 'Qty'
          Width = 47
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUkode'
          Title.Alignment = taCenter
          Title.Caption = 'Satuan'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LUharga'
          Title.Alignment = taCenter
          Title.Caption = 'Harga'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CalJumlah'
          Title.Alignment = taCenter
          Title.Caption = 'Jumlah'
          Width = 110
          Visible = True
        end>
    end
    object btnStambah: TbsSkinButton
      Left = 319
      Top = 180
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
      Top = 180
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
      Top = 180
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
    Left = 463
    Top = 612
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnOkClick
  end
  object btnPrint: TbsSkinButton
    Left = 383
    Top = 612
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
    Caption = 'Print'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnPrintClick
  end
  object DSmenu: TDataSource
    Top = 16
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
    Left = 440
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
    Left = 424
  end
  object DSkomposisi: TDataSource
    AutoEdit = False
    Top = 400
  end
  object RVKomposisiMenu: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = tmenu
    Top = 40
  end
  object RVkomposisiKomposisi: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Top = 504
  end
  object tmenu: TZTable
    OnCalcFields = tmenuCalcFields
    Left = 208
    object tmenuid: TStringField
      FieldName = 'id'
    end
    object tmenumenu: TStringField
      FieldName = 'menu'
    end
    object tmenuLUkategori: TStringField
      FieldKind = fkCalculated
      FieldName = 'LUkategori'
      Calculated = True
    end
    object tmenuLUlokasi: TStringField
      FieldKind = fkCalculated
      FieldName = 'LUlokasi'
      Calculated = True
    end
    object tmenuHarga: TFloatField
      FieldName = 'Harga'
      DisplayFormat = '#,0'
      EditFormat = '#'
    end
    object tmenustatus: TStringField
      FieldName = 'status'
    end
    object tmenuLstatus: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Lstatus'
      Calculated = True
    end
    object tmenukategori: TSmallintField
      FieldName = 'kategori'
    end
    object tmenuid_lokasi: TSmallintField
      FieldName = 'id_lokasi'
    end
    object tmenuketerangan: TStringField
      FieldName = 'keterangan'
    end
    object tmenubarcode: TStringField
      FieldName = 'barcode'
    end
  end
  object Qkategori: TZQuery
    Params = <>
    Left = 240
    object Qkategoriid: TSmallintField
      FieldName = 'id'
    end
    object Qkategorikategori: TStringField
      FieldName = 'kategori'
    end
  end
  object Tkomposisi: TZTable
    OnCalcFields = TkomposisiCalcFields
    MasterSource = DSmenu
    Left = 312
    object Tkomposisiidmenu: TStringField
      FieldName = 'idmenu'
    end
    object Tkomposisiqtysatuan: TFloatField
      FieldName = 'qtysatuan'
    end
    object Tkomposisiidbarang: TStringField
      FieldName = 'idbarang'
    end
    object TkomposisiLUbarang: TStringField
      FieldKind = fkCalculated
      FieldName = 'LUbarang'
      Calculated = True
    end
    object TkomposisiLUkode: TStringField
      FieldKind = fkCalculated
      FieldName = 'LUkode'
      Calculated = True
    end
    object TkomposisiLUharga: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LUharga'
      Calculated = True
    end
    object TkomposisiCalJumlah: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalJumlah'
      Calculated = True
    end
  end
end
