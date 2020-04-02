object fdatasong: Tfdatasong
  Left = 194
  Top = 138
  AutoScroll = False
  BorderIcons = []
  Caption = 'DATA LAGU'
  ClientHeight = 674
  ClientWidth = 938
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
  object Label1: TLabel
    Left = 640
    Top = 568
    Width = 61
    Height = 16
    Caption = 'JUMLAH'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBGrid1: TDBGrid
    Left = 168
    Top = 215
    Width = 665
    Height = 338
    DataSource = DataSource1
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
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
    Columns = <
      item
        Expanded = False
        FieldName = 'IDMUSIC'
        Title.Alignment = taCenter
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITLE'
        Title.Alignment = taCenter
        Width = 335
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SINGER'
        Title.Alignment = taCenter
        Width = 184
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 280
    Top = 24
    Width = 433
    Height = 97
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 1
    object Label2: TLabel
      Left = 144
      Top = 7
      Width = 44
      Height = 13
      Caption = 'FILTER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmbkategori: TComboBox
      Left = 111
      Top = 27
      Width = 162
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        'ALL'
        'INDONESIA'
        'BARAT'
        'MANDARIN'
        'ANAK-ANAK'
        'MALAYSIA'
        'INDIA'
        'DAERAH'
        'JEPANG'
        'KOREA'
        'ROHANI'
        'HOUSE MUSIC')
    end
    object chkkategori: TCheckBox
      Left = 24
      Top = 28
      Width = 81
      Height = 17
      Caption = 'Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object chktitle: TCheckBox
      Left = 24
      Top = 54
      Width = 81
      Height = 17
      Caption = 'Title'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = chktitleClick
    end
    object edttitle: TAEdit
      Left = 112
      Top = 56
      Width = 161
      Height = 21
      TabOrder = 3
      Alignment = taRightJustify
    end
  end
  object Panel3: TPanel
    Left = 198
    Top = 133
    Width = 562
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object rdo_title: TRadioButton
      Left = 256
      Top = 8
      Width = 97
      Height = 17
      Caption = 'Title'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btncariClick
    end
    object rdo_idmusic: TRadioButton
      Left = 24
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID-Music'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = btncariClick
    end
    object rdo_singer: TRadioButton
      Left = 464
      Top = 8
      Width = 89
      Height = 17
      Caption = 'Singer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btncariClick
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 431
    Top = 173
    Width = 75
    Height = 26
    TabOrder = 3
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
    Caption = 'C A R I'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 460
    Top = 628
    Width = 75
    Height = 26
    TabOrder = 4
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
    Caption = 'Cancel'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnexitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnprint: TbsSkinXFormButton
    Left = 197
    Top = 596
    Width = 610
    Height = 26
    TabOrder = 5
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
    Caption = 'P R I N T'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object edttotal: TAEdit
    Left = 712
    Top = 564
    Width = 118
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Alignment = taCenter
  end
  object qkategori: TZQuery
    SQL.Strings = (
      'SELECT     id, kategori'
      'FROM         tkategorilagu')
    Params = <>
    Left = 72
    Top = 56
    object qkategoriid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tkategorilagu.id'
    end
    object qkategorikategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategorilagu.kategori'
      FixedChar = True
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = ZReadOnlyQuery1
    Left = 144
    Top = 88
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = modul.DBmysql
    SQL.Strings = (
      'SELECT * FROM `masters`'
      '')
    Params = <>
    Properties.Strings = (
      'SELECT * FROM `masters`'
      '')
    Left = 144
    Top = 56
    object ZReadOnlyQuery1IDMUSIC: TIntegerField
      FieldName = 'IDMUSIC'
    end
    object ZReadOnlyQuery1VCD: TStringField
      FieldName = 'VCD'
      Size = 10
    end
    object ZReadOnlyQuery1TITLE: TStringField
      FieldName = 'TITLE'
      Size = 100
    end
    object ZReadOnlyQuery1SINGER: TStringField
      FieldName = 'SINGER'
      Size = 100
    end
    object ZReadOnlyQuery1DISC: TStringField
      FieldName = 'DISC'
      Size = 10
    end
    object ZReadOnlyQuery1PATH: TStringField
      FieldName = 'PATH'
      Size = 50
    end
    object ZReadOnlyQuery1ANALOG: TStringField
      FieldName = 'ANALOG'
      Size = 2
    end
    object ZReadOnlyQuery1WORD: TIntegerField
      FieldName = 'WORD'
    end
    object ZReadOnlyQuery1TIME: TTimeField
      FieldName = 'TIME'
    end
    object ZReadOnlyQuery1FLAG: TStringField
      FieldName = 'FLAG'
      Size = 1
    end
    object ZReadOnlyQuery1VOL: TIntegerField
      FieldName = 'VOL'
    end
    object ZReadOnlyQuery1ISHOUSE: TStringField
      FieldName = 'ISHOUSE'
      Size = 100
    end
    object ZReadOnlyQuery1HOLD: TSmallintField
      FieldName = 'HOLD'
    end
    object ZReadOnlyQuery1CHUSR: TIntegerField
      FieldName = 'CHUSR'
    end
    object ZReadOnlyQuery1CHTIME: TIntegerField
      FieldName = 'CHTIME'
    end
  end
  object RVDataSong: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ZReadOnlyQuery1
    Left = 144
    Top = 104
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
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 56
    Top = 96
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
    Left = 56
    Top = 120
  end
end
