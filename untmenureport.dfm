object fmenureport: Tfmenureport
  Left = 609
  Top = 275
  AutoScroll = False
  BorderIcons = []
  Caption = 'Menu'
  ClientHeight = 479
  ClientWidth = 575
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 43
    Top = 32
    Width = 489
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 0
    object cmbkategori: TComboBox
      Left = 119
      Top = 5
      Width = 282
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
    end
    object chk_kategori: TCheckBox
      Left = 30
      Top = 7
      Width = 75
      Height = 17
      Caption = 'Kategori'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 250
    Top = 117
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
    Caption = 'Cari'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 250
    Top = 436
    Width = 75
    Height = 26
    TabOrder = 2
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
    Left = 43
    Top = 396
    Width = 489
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
    Caption = 'Print'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Panel3: TPanel
    Left = 43
    Top = 73
    Width = 489
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
    TabOrder = 4
    object rdo_namamenu: TRadioButton
      Left = 188
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btncariClick
    end
    object rdo_idmenu: TRadioButton
      Left = 56
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID Menu'
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
    object rdo_harga: TRadioButton
      Left = 328
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Harga'
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
  object DBGrid1: TDBGrid
    Left = 43
    Top = 152
    Width = 489
    Height = 233
    DataSource = DScari
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'menu'
        Title.Alignment = taCenter
        Title.Caption = 'Menu'
        Width = 317
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Harga'
        Title.Alignment = taCenter
        Width = 147
        Visible = True
      end>
  end
  object Qcari: TZQuery
    SQL.Strings = (
      
        'SELECT     tkategorimenu.kategori, tmenu.menu, tmenu.Harga, tlok' +
        'asi.lokasi, tmenu.status'
      'FROM         tmenu LEFT OUTER JOIN'
      
        '                      tlokasi ON tmenu.id_lokasi = tlokasi.id LE' +
        'FT OUTER JOIN'
      
        '                      tkategorimenu ON tmenu.kategori = tkategor' +
        'imenu.id'
      'WHERE     (tmenu.status = 1)'
      'ORDER BY tkategorimenu.kategori')
    Params = <>
    Left = 464
    Top = 8
    object Qcarikategori: TStringField
      FieldName = 'kategori'
      FixedChar = True
    end
    object Qcarimenu: TStringField
      FieldName = 'menu'
      FixedChar = True
      Size = 50
    end
    object QcariHarga: TFloatField
      FieldName = 'Harga'
      DisplayFormat = '#,0'
    end
    object Qcarilokasi: TStringField
      FieldName = 'lokasi'
      FixedChar = True
      Size = 15
    end
    object Qcaristatus: TStringField
      FieldName = 'status'
    end
  end
  object DScari: TDataSource
    DataSet = Qcari
    Left = 464
    Top = 32
  end
  object RVmenureport: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qcari
    Left = 464
    Top = 48
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
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
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
    Top = 24
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     id, kategori'
      'FROM         tkategorimenu')
    Params = <>
    Left = 499
    Top = 9
    object Qkategoriid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tkategorimenu.id'
    end
    object Qkategorikategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategorimenu.kategori'
      FixedChar = True
    end
  end
end
