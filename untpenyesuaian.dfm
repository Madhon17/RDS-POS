object fpenyesuaian: Tfpenyesuaian
  Left = 536
  Top = 147
  AutoScroll = False
  BorderIcons = []
  Caption = 'Transaksi Penyesuaian Barang'
  ClientHeight = 593
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 40
    Top = 28
    Width = 577
    Height = 485
    Caption = 'Panel1'
    Color = clGray
    TabOrder = 0
    object Label3: TLabel
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
    object Label4: TLabel
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
    object Label1: TLabel
      Left = 151
      Top = 374
      Width = 58
      Height = 20
      Caption = 'Jumlah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 23
      Top = 412
      Width = 66
      Height = 13
      Caption = 'Keterangan'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object btntransaksi: TbsSkinButton
      Left = 24
      Top = 443
      Width = 531
      Height = 26
      TabOrder = 7
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
      Caption = 'Transaksi'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btntransaksiClick
    end
    object DBGbarang: TDBGrid
      Left = 23
      Top = 70
      Width = 531
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGbarangDrawColumnCell
      OnDblClick = DBGbarangDblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'idbarang'
          Title.Alignment = taCenter
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namabarang'
          Width = 328
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'satuan'
          Title.Alignment = taCenter
          Width = 98
          Visible = True
        end>
    end
    object cmbkatbarang: TComboBox
      Left = 104
      Top = 16
      Width = 449
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
      OnChange = cmbkatbarangChange
    end
    object edtidbarang: TAEdit
      Left = 104
      Top = 40
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
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
      Width = 353
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = edtnamabarangChange
      OnEnter = edtnamabarangEnter
      OnExit = edtnamabarangExit
      OnKeyPress = edtnamabarangKeyPress
      Alignment = taCenter
    end
    object spnqty: TSpinEdit
      Left = 214
      Top = 368
      Width = 57
      Height = 34
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 4
      Value = 0
      OnExit = spnqtyExit
    end
    object edtsatuan: TEdit
      Left = 280
      Top = 368
      Width = 145
      Height = 32
      TabStop = False
      BorderStyle = bsNone
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object btnsimpan: TbsSkinButton
      Left = 24
      Top = 443
      Width = 260
      Height = 26
      TabOrder = 6
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
      Caption = 'OK'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnsimpanClick
    end
    object btnbatal: TbsSkinButton
      Left = 295
      Top = 443
      Width = 260
      Height = 26
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
      Caption = 'Batal'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnbatalClick
    end
    object edtKeterangan: TEdit
      Left = 99
      Top = 408
      Width = 455
      Height = 21
      TabOrder = 9
    end
  end
  object btnexit: TbsSkinXFormButton
    Left = 290
    Top = 535
    Width = 75
    Height = 26
    TabOrder = 1
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
    Top = 8
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
    Top = 24
  end
  object Qkatbarang: TQuery
    DatabaseName = 'vizta'
    Left = 488
    Top = 8
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
    Top = 72
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
    Top = 88
  end
  object Qothers: TQuery
    DatabaseName = 'vizta'
    Left = 488
    Top = 32
  end
end
