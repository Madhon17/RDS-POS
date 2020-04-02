object forderdll: Tforderdll
  Left = 537
  Top = 195
  AutoScroll = False
  BorderIcons = []
  Caption = 'Others Charge'
  ClientHeight = 542
  ClientWidth = 671
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
  object btnedit: TbsSkinButton
    Left = 299
    Top = 464
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
    Caption = 'Edit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btneditClick
  end
  object btntambah: TbsSkinButton
    Left = 219
    Top = 464
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
    Caption = 'Add'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btntambahClick
    OnKeyPress = TKNTAB
  end
  object btnhapus: TbsSkinButton
    Left = 379
    Top = 464
    Width = 75
    Height = 26
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
    OnClick = btnhapusClick
  end
  object btnkeluar: TbsSkinButton
    Left = 299
    Top = 498
    Width = 75
    Height = 26
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnkeluarClick
  end
  object btnsimpan: TbsSkinButton
    Left = 259
    Top = 480
    Width = 75
    Height = 26
    TabOrder = 0
    Visible = False
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
    OnClick = btnsimpanClick
    OnKeyPress = TKNTAB
  end
  object btnbatal: TbsSkinButton
    Left = 339
    Top = 480
    Width = 75
    Height = 26
    TabOrder = 5
    Visible = False
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
    OnClick = btnbatalClick
  end
  object cmbroom: TComboBox
    Left = 23
    Top = 8
    Width = 625
    Height = 37
    BevelInner = bvNone
    BevelKind = bkFlat
    Style = csDropDownList
    Color = clRed
    DropDownCount = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 29
    ParentFont = False
    TabOrder = 6
    OnClick = cmbroomClick
  end
  object grpMenu: TPanel
    Left = 23
    Top = 56
    Width = 625
    Height = 129
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
    TabOrder = 7
    object Label2: TLabel
      Left = 48
      Top = 45
      Width = 30
      Height = 13
      Caption = 'Price'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 48
      Top = 71
      Width = 20
      Height = 13
      Caption = 'Qty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 46
      Top = 96
      Width = 30
      Height = 13
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 48
      Top = 20
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
    object spnquantity: TSpinEdit
      Left = 160
      Top = 66
      Width = 49
      Height = 22
      MaxLength = 3
      MaxValue = 999
      MinValue = 1
      TabOrder = 0
      Value = 1
      OnChange = spnquantityChange
      OnExit = spnquantityExit
      OnKeyDown = spnquantityKeyDown
      OnKeyPress = TKNTAB
    end
    object edtketerangan: TEdit
      Left = 160
      Top = 16
      Width = 329
      Height = 21
      TabOrder = 1
      OnKeyPress = TKNTAB
    end
    object edtharga: TAEdit
      Left = 160
      Top = 41
      Width = 121
      Height = 21
      TabOrder = 2
      OnEnter = edthargaEnter
      OnExit = edthargaExit
      OnKeyPress = edthargaKeyPress
      Alignment = taRightJustify
    end
    object edthargatotal: TAEdit
      Left = 160
      Top = 91
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Alignment = taRightJustify
    end
  end
  object DBGrid1: TDBGrid
    Left = 23
    Top = 200
    Width = 625
    Height = 233
    Color = clWhite
    DataSource = DSorderdll
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'keterangan'
        Title.Caption = 'Keterangan'
        Width = 327
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga'
        Title.Alignment = taCenter
        Title.Caption = 'Price'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jumlah'
        Title.Alignment = taCenter
        Title.Caption = 'Qty'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 105
        Visible = True
      end>
  end
  object edttotal: TAEdit
    Left = 507
    Top = 440
    Width = 121
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    Alignment = taRightJustify
  end
  object DSorderdll: TDataSource
    DataSet = qorder
    Left = 377
    Top = 24
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
    MainMenuBar = FrmInduk.bsSkinMainMenuBar1
    SkinData = FrmInduk.bsSkinData2
    MenusSkinData = FrmInduk.bsSkinData1
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
    Left = 105
  end
  object qchekin: TZQuery
    Params = <>
    Left = 441
    Top = 8
  end
  object qupdate: TZQuery
    Params = <>
    Left = 409
    Top = 8
  end
  object qorder: TZQuery
    SQL.Strings = (
      
        'SELECT     idorder, jumlah, keterangan, harga, (jumlah*harga) as' +
        ' total'
      'FROM         torder_dll')
    Params = <>
    Left = 377
    Top = 8
    object qorderidorder: TStringField
      Alignment = taCenter
      FieldName = 'idorder'
      Origin = 'VIZTA.torder_dll.idorder'
      FixedChar = True
      Size = 10
    end
    object qorderjumlah: TSmallintField
      Alignment = taCenter
      FieldName = 'jumlah'
      Origin = 'VIZTA.torder_dll.jumlah'
    end
    object qorderketerangan: TStringField
      Alignment = taCenter
      FieldName = 'keterangan'
      Origin = 'VIZTA.torder_dll.keterangan'
      FixedChar = True
      Size = 30
    end
    object qorderharga: TFloatField
      Alignment = taCenter
      FieldName = 'harga'
      Origin = 'VIZTA.torder_dll.harga'
    end
    object qordertotal: TFloatField
      FieldName = 'total'
      Origin = 'VIZTA.torder_dll.jumlah'
    end
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
    Left = 137
  end
  object qedit: TZQuery
    Params = <>
    Left = 345
    Top = 8
  end
end
