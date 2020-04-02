object fbarang: Tfbarang
  Left = 869
  Top = 211
  ActiveControl = DBLkategori
  AutoScroll = False
  BorderIcons = []
  Caption = 'Input Stok Barang'
  ClientHeight = 280
  ClientWidth = 473
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
  object Label1: TLabel
    Left = 40
    Top = 52
    Width = 18
    Height = 13
    Caption = 'ID '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 40
    Top = 76
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
  object Label3: TLabel
    Left = 40
    Top = 100
    Width = 73
    Height = 13
    Caption = 'Minimal Stok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 40
    Top = 28
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
  object Label5: TLabel
    Left = 40
    Top = 172
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
  object Label6: TLabel
    Left = 40
    Top = 124
    Width = 41
    Height = 13
    Caption = 'Satuan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 39
    Top = 148
    Width = 75
    Height = 13
    Caption = 'Harga Pokok'
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
    Top = 196
    Width = 37
    Height = 13
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 176
    Top = 196
    Width = 27
    Height = 13
    Caption = 'Aktif'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dbidbarang: TDBEdit
    Left = 154
    Top = 48
    Width = 150
    Height = 21
    DataField = 'idbarang'
    DataSource = FbarangMaster.DSbarang
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    OnEnter = dbidbarangEnter
    OnKeyPress = TKN13
  end
  object dbnamabarang: TDBEdit
    Left = 154
    Top = 72
    Width = 279
    Height = 21
    DataField = 'namabarang'
    DataSource = FbarangMaster.DSbarang
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnKeyPress = TKN13
  end
  object btnsimpan: TbsSkinButton
    Left = 159
    Top = 229
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
    Caption = 'Simpan'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnsimpanClick
    OnKeyPress = TKN13
  end
  object btnbatal: TbsSkinButton
    Left = 239
    Top = 229
    Width = 75
    Height = 25
    TabOrder = 8
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
    OnClick = btnbatalClick
  end
  object DBLkategori: TDBLookupComboBox
    Left = 154
    Top = 24
    Width = 150
    Height = 21
    DataField = 'idkategori'
    DataSource = FbarangMaster.DSbarang
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'id'
    ListField = 'kategori'
    ListSource = DSkatbarang
    ParentFont = False
    TabOrder = 0
    OnClick = DBLkategoriClick
    OnKeyPress = TKN13
  end
  object dbketerangan: TDBEdit
    Left = 154
    Top = 168
    Width = 279
    Height = 21
    DataField = 'keterangan'
    DataSource = FbarangMaster.DSbarang
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnKeyPress = TKN13
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 154
    Top = 120
    Width = 150
    Height = 21
    DataField = 'idsatuan'
    DataSource = FbarangMaster.DSbarang
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'id'
    ListField = 'satuan'
    ListSource = DSsatuan
    ParentFont = False
    TabOrder = 4
    OnClick = DBLookupComboBox1Click
    OnKeyPress = TKN13
  end
  object dbharga: TDBEdit
    Left = 154
    Top = 144
    Width = 150
    Height = 21
    DataField = 'harga'
    DataSource = FbarangMaster.DSbarang
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnKeyPress = TKN13
  end
  object dbminimalstok: TDBEdit
    Left = 154
    Top = 96
    Width = 73
    Height = 21
    DataField = 'minstok'
    DataSource = FbarangMaster.DSbarang
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnKeyPress = TKN13
  end
  object DBCheckBox1: TDBCheckBox
    Left = 152
    Top = 194
    Width = 17
    Height = 17
    DataField = 'status'
    DataSource = FbarangMaster.DSbarang
    TabOrder = 9
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object bsSkinMessage1: TbsSkinMessage
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    SkinData = FrmInduk.bsSkinData2
    CtrlSkinData = FrmInduk.bsSkinData2
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
  object Qkatbarang: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, kode, kategori'
      'FROM         tkategoribarang'
      'ORDER BY kategori')
    Left = 40
  end
  object DSkatbarang: TDataSource
    AutoEdit = False
    DataSet = Qkatbarang
    Left = 56
  end
  object Qid: TQuery
    DatabaseName = 'vizta'
    Left = 96
  end
  object Qsatuan: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, satuan, kode'
      'FROM         tsatuan'
      'ORDER BY satuan')
    Left = 136
  end
  object DSsatuan: TDataSource
    AutoEdit = False
    DataSet = Qsatuan
    Left = 152
  end
  object qnamabarang: TQuery
    DatabaseName = 'vizta'
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
    Left = 336
  end
end
