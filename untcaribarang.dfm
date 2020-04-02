object fcaribarang: Tfcaribarang
  Left = 735
  Top = 260
  ActiveControl = edtnamabarang
  AutoScroll = False
  BorderIcons = []
  Caption = 'Cari Barang'
  ClientHeight = 526
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 88
    Top = 24
    Width = 441
    Height = 449
    Caption = 'Panel1'
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 18
      Width = 48
      Height = 13
      Caption = 'Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 41
      Top = 42
      Width = 41
      Height = 13
      Caption = 'Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBGbarang: TDBGrid
      Left = 22
      Top = 70
      Width = 401
      Height = 291
      Hint = 'DoubleClick For Select'
      DataSource = DSbarang
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGbarangDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'idbarang'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namabarang'
          Width = 231
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'satuan'
          Width = 82
          Visible = True
        end>
    end
    object cmbkatbarang: TComboBox
      Left = 104
      Top = 16
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cmbkatbarangChange
    end
    object bsSkinButton1: TbsSkinButton
      Left = 128
      Top = 407
      Width = 177
      Height = 26
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
      Caption = 'Batal'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton1Click
    end
    object edtidbarang: TAEdit
      Left = 104
      Top = 40
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = edtidbarangChange
      OnEnter = edtidbarangEnter
      OnExit = edtidbarangExit
      OnKeyPress = edtidbarangKeyPress
      Alignment = taCenter
    end
    object edtnamabarang: TAEdit
      Left = 200
      Top = 40
      Width = 185
      Height = 21
      TabOrder = 3
      OnChange = edtnamabarangChange
      OnEnter = edtnamabarangEnter
      OnExit = edtnamabarangExit
      OnKeyPress = edtnamabarangKeyPress
      Alignment = taCenter
    end
    object btnsimpan: TbsSkinButton
      Left = 152
      Top = 376
      Width = 129
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
      Caption = 'Simpan'
      NumGlyphs = 1
      Spacing = 1
    end
  end
  object Qkatbarang: TQuery
    DatabaseName = 'vizta'
    Left = 416
    Top = 8
  end
  object Qbarang: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     tbarang.idbarang, tbarang.namabarang, tbarang.idkateg' +
        'ori, tsatuan.satuan, tkategoribarang.kategori, tbarang.idsatuan'
      'FROM         tsatuan INNER JOIN'
      
        '                      tbarang ON tsatuan.id = tbarang.idsatuan L' +
        'EFT OUTER JOIN'
      
        '                      tkategoribarang ON tbarang.idkategori = tk' +
        'ategoribarang.id')
    Left = 16
    Top = 24
    object Qbarangidbarang: TStringField
      DisplayLabel = 'ID-Barang'
      FieldName = 'idbarang'
      FixedChar = True
      Size = 8
    end
    object Qbarangnamabarang: TStringField
      DisplayLabel = 'Nama Barang'
      FieldName = 'namabarang'
      FixedChar = True
      Size = 30
    end
    object Qbarangidkategori: TSmallintField
      FieldName = 'idkategori'
    end
    object Qbarangsatuan: TStringField
      DisplayLabel = 'Satuan'
      FieldName = 'satuan'
      FixedChar = True
      Size = 25
    end
    object Qbarangkategori: TStringField
      FieldName = 'kategori'
      FixedChar = True
    end
    object Qbarangidsatuan: TSmallintField
      FieldName = 'idsatuan'
    end
  end
  object DSbarang: TDataSource
    DataSet = Qbarang
    Left = 16
    Top = 40
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
    Left = 8
    Top = 192
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
    Left = 16
    Top = 208
  end
end
