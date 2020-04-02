object fcarimenu: Tfcarimenu
  Left = 347
  Top = 141
  AutoScroll = False
  BorderIcons = []
  Caption = 'Cari Menu'
  ClientHeight = 535
  ClientWidth = 514
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
    Left = 48
    Top = 104
    Width = 39
    Height = 13
    Caption = 'Kategori'
  end
  object dbcarimenu: TDBGrid
    Left = 32
    Top = 144
    Width = 449
    Height = 201
    DataSource = DSmenu
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbcarimenuDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'menu'
        Width = 259
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Harga'
        Width = 172
        Visible = True
      end>
  end
  object btnok: TButton
    Left = 168
    Top = 405
    Width = 83
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = btnokClick
  end
  object btnbatal: TButton
    Left = 259
    Top = 405
    Width = 86
    Height = 25
    Caption = 'Batal'
    TabOrder = 2
    OnClick = btnbatalClick
  end
  object cmbKategori: TComboBox
    Left = 96
    Top = 104
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 3
    OnClick = cmbKategoriClick
    Items.Strings = (
      '')
  end
  object edtcarimenu: TEdit
    Left = 272
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 4
    OnChange = edtcarimenuChange
  end
  object Edit1: TEdit
    Left = 80
    Top = 368
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
  object qmenu: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     menu, Harga'
      'FROM         tmenu')
    Left = 360
    Top = 8
  end
  object DSmenu: TDataSource
    AutoEdit = False
    DataSet = qmenu
    Left = 360
    Top = 32
  end
  object qKatMenu: TQuery
    DatabaseName = 'vizta'
    Left = 304
    Top = 8
  end
  object DSkatmenu: TDataSource
    AutoEdit = False
    DataSet = qKatMenu
    Left = 304
    Top = 32
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
    MinHeight = 480
    MinWidth = 640
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 216
    Top = 56
  end
end
