object forderroom: Tforderroom
  Left = 484
  Top = 174
  ActiveControl = DBGrid1
  AutoScroll = False
  BorderIcons = []
  Caption = 'Room Charge'
  ClientHeight = 333
  ClientWidth = 719
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
  object cmbroom: TComboBox
    Left = 0
    Top = -1
    Width = 709
    Height = 37
    BevelInner = bvLowered
    BevelKind = bkFlat
    Style = csDropDownList
    Color = clRed
    DropDownCount = 10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 29
    ParentFont = False
    TabOrder = 0
    OnClick = cmbroomClick
  end
  object btnkeluar: TbsSkinButton
    Left = 318
    Top = 288
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnkeluarClick
  end
  object btnsimpan: TbsSkinButton
    Left = 186
    Top = 288
    Width = 75
    Height = 25
    TabOrder = 3
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
  end
  object btnbatal: TbsSkinButton
    Left = 106
    Top = 288
    Width = 75
    Height = 25
    TabOrder = 4
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
  object btnedit: TbsSkinButton
    Left = 147
    Top = 288
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
    Caption = 'Edit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btneditClick
  end
  object Panel3: TPanel
    Left = 44
    Top = 56
    Width = 621
    Height = 113
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 16738355
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Label1: TLabel
      Left = 24
      Top = 12
      Width = 35
      Height = 13
      Caption = 'Harga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 24
      Top = 36
      Width = 37
      Height = 13
      Caption = 'Durasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 24
      Top = 61
      Width = 40
      Height = 13
      Caption = 'Diskon'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 24
      Top = 86
      Width = 40
      Height = 13
      Caption = 'Jumlah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtharga: TEdit
      Left = 88
      Top = 8
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = TKN13
    end
    object edtdiskon: TEdit
      Left = 88
      Top = 57
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = edtdiskonEnter
      OnExit = edtdiskonExit
    end
    object edtjumlah: TEdit
      Left = 88
      Top = 82
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnEnter = edtjumlahEnter
      OnExit = edtjumlahExit
    end
    object SPNdurasi: TSpinEdit
      Left = 88
      Top = 32
      Width = 121
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 20
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 1
      OnChange = SPNdurasiChange
    end
  end
  object DBGrid1: TDBGrid
    Left = 44
    Top = 56
    Width = 623
    Height = 217
    DataSource = DStabel
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'idorder'
        Title.Alignment = taCenter
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'namaroom'
        Title.Alignment = taCenter
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_asli'
        Title.Alignment = taCenter
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'durasi'
        Title.Alignment = taCenter
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'diskon'
        Title.Alignment = taCenter
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Jumlah'
        Title.Alignment = taCenter
        Width = 105
        Visible = True
      end>
  end
  object Qothers: TZQuery
    Params = <>
    Left = 88
  end
  object DStabel: TDataSource
    DataSet = qtabel
    Left = 160
    Top = 16
  end
  object qtabel: TZQuery
    OnCalcFields = qtabelCalcFields
    SQL.Strings = (
      
        'SELECT     torder_room.idroom, troom.namaroom, torder_room.idord' +
        'er, torder_room.harga_asli, torder_room.diskon, torder_room.dura' +
        'si, torder_room.tglStart, torder_room.tglStop'
      'FROM         torder_room INNER JOIN'
      '                      troom ON torder_room.idroom = troom.id'
      
        'GROUP BY torder_room.idroom, troom.namaroom, torder_room.idorder' +
        ', torder_room.harga_asli, torder_room.diskon, torder_room.durasi' +
        ', torder_room.tglStart, torder_room.tglStop'
      ''
      'ORDER BY troom.namaroom')
    Params = <>
    Left = 160
    object qtabelidroom: TSmallintField
      Alignment = taCenter
      FieldName = 'idroom'
      Origin = 'VIZTA.torder_room.idroom'
    end
    object qtabelnamaroom: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nama Room'
      FieldName = 'namaroom'
      Origin = 'VIZTA.troom.namaroom'
      FixedChar = True
      Size = 4
    end
    object qtabelidorder: TStringField
      Alignment = taCenter
      DisplayLabel = 'IDorder'
      FieldName = 'idorder'
      Origin = 'VIZTA.torder_room.idorder'
      FixedChar = True
      Size = 10
    end
    object qtabelharga_asli: TFloatField
      DisplayLabel = 'Harga'
      FieldName = 'harga_asli'
      Origin = 'VIZTA.torder_room.harga_asli'
      DisplayFormat = '#,0'
    end
    object qtabeldiskon: TFloatField
      DisplayLabel = 'Diskon'
      FieldName = 'diskon'
      Origin = 'VIZTA.torder_room.diskon'
      DisplayFormat = '#,0'
    end
    object qtabeldurasi: TSmallintField
      DisplayLabel = 'Durasi'
      FieldName = 'durasi'
      Origin = 'VIZTA.torder_room.durasi'
      DisplayFormat = '#,0'
    end
    object qtabelJumlah: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object qtabeltglStart: TDateTimeField
      FieldName = 'tglStart'
      Origin = 'VIZTA.torder_room.tglStart'
    end
    object qtabeltglStop: TDateTimeField
      FieldName = 'tglStop'
      Origin = 'VIZTA.torder_room.tglStop'
    end
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
    Left = 24
  end
  object Qupdate: TZQuery
    Params = <>
    Left = 120
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
  end
end
