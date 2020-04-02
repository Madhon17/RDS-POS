object FreportOrder: TFreportOrder
  Left = 235
  Top = 141
  AutoScroll = False
  BorderIcons = []
  Caption = 'Order Report'
  ClientHeight = 593
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 120
    Top = 23
    Width = 610
    Height = 82
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    TabOrder = 0
    object Label2: TLabel
      Left = 330
      Top = 14
      Width = 20
      Height = 13
      Caption = 's/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tgl_mulai: TDateTimePicker
      Left = 120
      Top = 11
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object waktuawal: TDateTimePicker
      Left = 248
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Kind = dtkTime
      TabOrder = 1
    end
    object Tgl_akhir: TDateTimePicker
      Left = 368
      Top = 11
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 2
    end
    object waktuakhir: TDateTimePicker
      Left = 496
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Kind = dtkTime
      TabOrder = 3
    end
    object cmblokasi: TComboBox
      Left = 39
      Top = 43
      Width = 533
      Height = 21
      Style = csDropDownList
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'ORDER'
        'CANCEL ORDER')
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 381
    Top = 148
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
    Caption = 'C A R I'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnprint: TbsSkinXFormButton
    Left = 34
    Top = 504
    Width = 769
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
    Caption = 'Print'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 381
    Top = 544
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnexitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object DBview: TDBGrid
    Left = 34
    Top = 184
    Width = 768
    Height = 298
    DataSource = Dsview
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'idorder'
        Title.Alignment = taCenter
        Title.Caption = 'ID Order'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'idso'
        Title.Alignment = taCenter
        Title.Caption = 'ID So'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'idmenu'
        Title.Alignment = taCenter
        Title.Caption = 'ID Menu'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'menu'
        Title.Caption = 'Menu'
        Width = 209
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'qty'
        Title.Alignment = taCenter
        Title.Caption = 'Qty.'
        Width = 40
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'cs'
        Title.Alignment = taCenter
        Title.Caption = 'Cs'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'statustb'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'keterangan'
        Title.Caption = 'Keterangan'
        Width = 150
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 120
    Top = 108
    Width = 610
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object rdo_tanggal: TRadioButton
      Left = 309
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID SO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object rdo_orderid: TRadioButton
      Left = 189
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID Order'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
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
    MinWidth = 480
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
    Left = 14
    Top = 24
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
    Left = 16
    Top = 40
  end
  object Dsview: TDataSource
    DataSet = Qview
    Left = 48
    Top = 32
  end
  object Qview: TZQuery
    OnCalcFields = QviewCalcFields
    SQL.Strings = (
      
        'SELECT     torder_menu.idorder AS idorder, torder_menu.idso AS i' +
        'dso, torder_menu.idmenu AS idmenu, tmenu.menu AS menu, torder_me' +
        'nu.qty AS qty, '
      
        '                   torder_menu.cs AS cs, torder_menu.status AS s' +
        'tatus, torder_menu.keterangan AS keterangan, tpayment.payment, T' +
        'so.jam     '
      
        'FROM         torder_menu INNER JOIN                             ' +
        '        '
      
        '                    tmenu ON torder_menu.idmenu = tmenu.id INNER' +
        ' JOIN       '
      
        '                 Tso ON torder_menu.idso = Tso.idso INNER JOIN  ' +
        '        '
      
        '                    tpayment ON torder_menu.idorder = tpayment.i' +
        'dorder       '
      
        'WHERE     (tpayment.payment <> 0) AND (tpayment.payment <> 4) AN' +
        'D (tpayment.payment <> 5)')
    Params = <>
    Left = 48
    Top = 16
    object Qviewidorder: TStringField
      FieldName = 'idorder'
      FixedChar = True
      Size = 10
    end
    object Qviewidso: TStringField
      FieldName = 'idso'
      FixedChar = True
      Size = 10
    end
    object Qviewidmenu: TStringField
      FieldName = 'idmenu'
      FixedChar = True
      Size = 8
    end
    object Qviewmenu: TStringField
      FieldName = 'menu'
      FixedChar = True
      Size = 50
    end
    object Qviewqty: TSmallintField
      FieldName = 'qty'
    end
    object Qviewcs: TStringField
      FieldName = 'cs'
      FixedChar = True
      Size = 5
    end
    object Qviewstatus: TIntegerField
      FieldName = 'status'
    end
    object Qviewketerangan: TStringField
      FieldName = 'keterangan'
      FixedChar = True
    end
    object Qviewpayment: TSmallintField
      FieldName = 'payment'
    end
    object Qviewjam: TDateTimeField
      FieldName = 'jam'
    end
    object Qviewstatustb: TStringField
      FieldKind = fkCalculated
      FieldName = 'statustb'
      Calculated = True
    end
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qview
    Left = 48
    Top = 56
  end
end
