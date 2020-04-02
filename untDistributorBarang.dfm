object FdistributorBarang: TFdistributorBarang
  Left = 426
  Top = 134
  AutoScroll = False
  BorderIcons = []
  Caption = 'Supplyer'
  ClientHeight = 448
  ClientWidth = 458
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
  object Label7: TLabel
    Left = 40
    Top = 37
    Width = 50
    Height = 13
    Caption = 'Supplyer'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 40
    Top = 357
    Width = 35
    Height = 13
    Caption = 'Harga'
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 64
    Width = 383
    Height = 281
    Color = clWhite
    DataSource = DSdistributor
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = edtnamabarangKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'Supplyer'
        Width = 280
        Visible = True
      end>
  end
  object edtidbarang: TAEdit
    Left = 114
    Top = 33
    Width = 97
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = edtidbarangChange
    OnKeyPress = edtidbarangKeyPress
    Alignment = taCenter
  end
  object edtnamabarang: TAEdit
    Left = 216
    Top = 33
    Width = 199
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = edtnamabarangChange
    OnKeyPress = edtnamabarangKeyPress
    Alignment = taRightJustify
  end
  object btnsimpan: TbsSkinButton
    Left = 151
    Top = 397
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
    Caption = 'Simpan'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnsimpanClick
  end
  object btnbatal: TbsSkinButton
    Left = 231
    Top = 397
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
    Caption = 'Batal'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnbatalClick
  end
  object edtHarga: TAEdit
    Left = 138
    Top = 353
    Width = 279
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnEnter = edtHargaEnter
    OnExit = edtHargaExit
    OnKeyPress = edtHargaKeyPress
    Alignment = taRightJustify
  end
  object Qdistributor: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, nama'
      'FROM         tdistributor'
      'ORDER BY id')
    Top = 16
    object Qdistributorid: TSmallintField
      Alignment = taCenter
      FieldName = 'id'
      Origin = 'VIZTA.tdistributor.id'
      DisplayFormat = '0000'
    end
    object Qdistributornama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tdistributor.nama'
      FixedChar = True
      Size = 30
    end
  end
  object DSdistributor: TDataSource
    AutoEdit = False
    DataSet = Qdistributor
    Top = 40
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
    Left = 24
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
    Left = 48
  end
end