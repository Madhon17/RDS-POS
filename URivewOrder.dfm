object FreviewOrder: TFreviewOrder
  Left = 453
  Top = 76
  AutoScroll = False
  BorderIcons = []
  Caption = 'Confirm Order'
  ClientHeight = 448
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Panel1: TPanel
    Left = 18
    Top = 89
    Width = 497
    Height = 280
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BorderWidth = 1
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object edtTotal: TAEdit
      Left = 377
      Top = 223
      Width = 98
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      TabOrder = 0
      Alignment = taRightJustify
    end
    object btnhapus: TbsSkinButton
      Left = 211
      Top = 244
      Width = 75
      Height = 26
      TabOrder = 1
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
      Caption = 'Delete'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnhapusClick
    end
    object DBOrder: TDBGrid
      Left = 17
      Top = 16
      Width = 462
      Height = 201
      TabStop = False
      Color = clWhite
      DataSource = DSorder
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
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'idmenu'
          Title.Alignment = taCenter
          Title.Caption = 'ID Menu'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'menu'
          Title.Caption = 'Menu'
          Width = 223
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qty'
          Title.Alignment = taCenter
          Title.Caption = 'Qty'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 98
          Visible = True
        end>
    end
  end
  object btnok: TbsSkinButton
    Left = 18
    Top = 376
    Width = 497
    Height = 26
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
    Caption = 'Save'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnokClick
  end
  object Btncancel: TbsSkinButton
    Left = 229
    Top = 408
    Width = 75
    Height = 26
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
    Caption = 'Cancel'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BtncancelClick
  end
  object grpMenu: TPanel
    Left = 18
    Top = 17
    Width = 497
    Height = 64
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BorderWidth = 1
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label6: TLabel
      Left = 3
      Top = 3
      Width = 490
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'Room'
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label8: TLabel
      Left = 16
      Top = 37
      Width = 38
      Height = 13
      Caption = 'Waiter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtNamaCs: TEdit
      Left = 221
      Top = 33
      Width = 257
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object edtCs: TAEdit
      Left = 123
      Top = 33
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      Alignment = taCenter
    end
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = True
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
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
  end
  object DSorder: TDataSource
    DataSet = fordermenu.VtOrder
    Left = 103
    Top = 121
  end
end
