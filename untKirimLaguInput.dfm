object FkirimLaguInput: TFkirimLaguInput
  Left = 175
  Top = 161
  AutoScroll = False
  BorderIcons = []
  Caption = 'FkirimLaguInput'
  ClientHeight = 605
  ClientWidth = 1016
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
  object Panel1: TPanel
    Left = 272
    Top = 16
    Width = 473
    Height = 65
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 16738355
    TabOrder = 0
    object Label2: TLabel
      Left = 321
      Top = 14
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmbkategori: TComboBox
      Left = 112
      Top = 10
      Width = 184
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      Style = csDropDownList
      DropDownCount = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
    end
    object rdoID: TRadioButton
      Left = 24
      Top = 40
      Width = 89
      Height = 17
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = rdoIDClick
    end
    object rdoVCD: TRadioButton
      Left = 120
      Top = 40
      Width = 89
      Height = 17
      Caption = 'VCD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = rdoIDClick
    end
    object rdoTitle: TRadioButton
      Left = 240
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Title'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TabStop = True
      OnClick = rdoIDClick
    end
    object rdoSinger: TRadioButton
      Left = 352
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Singer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = rdoIDClick
    end
  end
  object btntambah: TbsSkinButton
    Left = 470
    Top = 552
    Width = 75
    Height = 25
    TabOrder = 1
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
    Caption = 'Kirim'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btntambahClick
  end
  object btncari: TbsSkinXFormButton
    Left = 471
    Top = 88
    Width = 75
    Height = 26
    TabOrder = 2
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
  object Button1: TButton
    Left = 888
    Top = 504
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    Visible = False
  end
  object Panel2: TPanel
    Left = 188
    Top = 493
    Width = 641
    Height = 44
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 16738355
    TabOrder = 4
    object CARI: TLabel
      Left = 32
      Top = 9
      Width = 38
      Height = 24
      Caption = 'Cari'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object cmbcari: TComboBox
      Left = 93
      Top = 9
      Width = 100
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      ItemIndex = 2
      ParentFont = False
      TabOrder = 0
      Text = 'TITLE'
      OnClick = cmbcariClick
      Items.Strings = (
        'IDMUSIC'
        'VCD'
        'TITLE'
        'SINGER')
    end
    object edtcari: TTntEdit
      Left = 200
      Top = 9
      Width = 393
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = edtcariChange
    end
  end
  object TntDBGrid1: TTntDBGrid
    Left = 20
    Top = 128
    Width = 977
    Height = 345
    DataSource = dsQcari
    FixedColor = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = TntDBGrid1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Color = clAqua
        Expanded = False
        FieldName = 'IDMUSIC'
        Title.Alignment = taCenter
        Width = 91
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14811134
        Expanded = False
        FieldName = 'VCD'
        Title.Alignment = taCenter
        Width = 94
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'TITLE'
        Title.Alignment = taCenter
        Width = 190
        Visible = True
      end
      item
        Color = 14811134
        Expanded = False
        FieldName = 'SINGER'
        Title.Alignment = taCenter
        Width = 190
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'TITLE2'
        Title.Alignment = taCenter
        Width = 190
        Visible = True
      end
      item
        Color = 14811134
        Expanded = False
        FieldName = 'SINGER2'
        Title.Alignment = taCenter
        Width = 190
        Visible = True
      end>
  end
  object bsSkinGauge1: TbsSkinGauge
    Left = 384
    Top = 317
    Width = 345
    Height = 20
    TabOrder = 6
    Visible = False
    SkinDataName = 'gauge'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    ShowProgressText = False
    ShowPercent = True
    MinValue = 0
    MaxValue = 100
    Value = 0
    Vertical = False
  end
  object AdoDB1: TADOConnection
    ConnectionString = 
      '"Provider=MSDASQL.1;Password=Viz3009Ta;User ID=karaoke;Extended ' +
      'Properties="DRIVER={MySQL ODBC 5.1 Driver};UID=karaoke;PWD=Viz30' +
      '09Ta;SERVER=192.168.0.1;DATABASE=karaoke;OPTION=18475;"'
    LoginPrompt = False
    Left = 136
    Top = 40
  end
  object dsQcari: TDataSource
    DataSet = VTcari
    Left = 704
    Top = 68
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
    MenusSkinData = FrmInduk.bsSkinData2
    MinHeight = 480
    MinWidth = 640
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize, biRollUp, biMinimizeToTray]
    Left = 56
    Top = 16
  end
  object bsSkinMessage1: TbsSkinMessage
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    SkinData = FrmInduk.bsSkinData2
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
    Top = 40
  end
  object VTcari: TVirtualTable
    FieldDefs = <
      item
        Name = 'IDMUSIC'
        DataType = ftInteger
      end
      item
        Name = 'VCD'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TITLE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'SINGER'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TITLE2'
        DataType = ftWideString
        Size = 100
      end
      item
        Name = 'SINGER2'
        DataType = ftWideString
        Size = 100
      end>
    Left = 704
    Top = 48
    Data = {
      02000600070049444D5553494303000000030056434401000A0005005449544C
      4501006400060053494E4745520100640006005449544C453218006400070053
      494E4745523218006400000000000000}
    object VTcariIDMUSIC: TIntegerField
      FieldName = 'IDMUSIC'
    end
    object VTcariVCD: TStringField
      FieldName = 'VCD'
      Size = 10
    end
    object VTcariTITLE: TStringField
      FieldName = 'TITLE'
      Size = 100
    end
    object VTcariSINGER: TStringField
      FieldName = 'SINGER'
      Size = 100
    end
    object VTcariTITLE2: TWideStringField
      FieldName = 'TITLE2'
      Size = 100
    end
    object VTcariSINGER2: TWideStringField
      FieldName = 'SINGER2'
      Size = 100
    end
  end
  object adoQlookUP: TADOQuery
    Connection = AdoDB1
    Parameters = <>
    SQL.Strings = (
      'Select type, typename from kategori')
    Left = 736
    Top = 8
  end
  object Qcari: TTntADOQueryLX
    Connection = AdoDB1
    CursorType = ctStatic
    CommandText = 
      'SELECT IDMUSIC, VCD, CODE, TITLE, TITLE2, SINGER, SINGER2 FROM m' +
      'asters'#13#10
    Parameters = <>
    SQL.Strings = (
      
        'SELECT IDMUSIC, VCD, CODE, TITLE, TITLE2, SINGER, SINGER2 FROM m' +
        'asters')
    Left = 704
    Top = 8
  end
  object Qkategori: TADOQuery
    Connection = AdoDB1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select type, typename from kategori order by type')
    Left = 760
    Top = 8
    object Qkategoritype: TAutoIncField
      FieldName = 'type'
      ReadOnly = True
    end
    object Qkategoritypename: TStringField
      FieldName = 'typename'
      Size = 100
    end
  end
end
