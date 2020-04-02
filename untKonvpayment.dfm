object fkonversipayment: Tfkonversipayment
  Left = 550
  Top = 125
  AutoScroll = False
  BorderIcons = []
  Caption = 'Konversi Payment'
  ClientHeight = 590
  ClientWidth = 827
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 361
    Top = 350
    Width = 105
    Height = 29
    Caption = 'INVOICE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object Panel1: TPanel
    Left = 104
    Top = 12
    Width = 618
    Height = 45
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clRed
    TabOrder = 0
    object Label2: TLabel
      Left = 318
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
    object Label3: TLabel
      Left = 23
      Top = 13
      Width = 59
      Height = 16
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tgl_mulai: TDateTimePicker
      Left = 109
      Top = 11
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 0
    end
    object waktuawal: TDateTimePicker
      Left = 237
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
      Left = 349
      Top = 11
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 2
    end
    object waktuakhir: TDateTimePicker
      Left = 477
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Kind = dtkTime
      TabOrder = 3
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 376
    Top = 66
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
    Caption = 'CARI'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Panel3: TPanel
    Left = 24
    Top = 424
    Width = 780
    Height = 89
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clRed
    TabOrder = 2
    object Label1: TLabel
      Left = 238
      Top = 13
      Width = 113
      Height = 24
      Caption = 'Konversi Ke'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cmbpayment: TComboBox
      Left = 376
      Top = 10
      Width = 169
      Height = 28
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clNone
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 20
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'CASH'
      Items.Strings = (
        'CASH'
        'CARD'
        'FOC')
    end
    object bsSkinButton1: TbsSkinButton
      Left = 38
      Top = 48
      Width = 703
      Height = 26
      TabOrder = 1
      SkinData = FrmInduk.bsSkinData2
      SkinDataName = 'button'
      DefaultFont.Charset = ANSI_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -16
      DefaultFont.Name = 'MS Sans Serif'
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
      Caption = 'Konversi'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton1Click
    end
  end
  object bsSkinXFormButton1: TbsSkinXFormButton
    Left = 376
    Top = 537
    Width = 75
    Height = 26
    TabOrder = 3
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = ANSI_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
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
    OnClick = bsSkinXFormButton1Click
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object DBGrid1: TDBGrid
    Left = 41
    Top = 103
    Width = 746
    Height = 236
    Hint = 'DoubleClick Untuk Konversi'
    DataSource = DataSource1
    FixedColor = clGray
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
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'tglstop'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'invoice'
        Title.Alignment = taCenter
        Title.Caption = 'Invoice'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Caltotal'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 95
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clAqua
        Expanded = False
        FieldName = 'Calpayment'
        Title.Alignment = taCenter
        Title.Caption = 'Payment'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kasir'
        Title.Alignment = taCenter
        Title.Caption = 'Kasir'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'keterangan'
        Title.Alignment = taCenter
        Title.Caption = 'Keterangan'
        Width = 134
        Visible = True
      end>
  end
  object edtinvoice: TAEdit
    Left = 321
    Top = 384
    Width = 201
    Height = 32
    TabStop = False
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnKeyPress = edtinvoiceKeyPress
    Alignment = taCenter
  end
  object Qcari: TZQuery
    OnCalcFields = QcariCalcFields
    SQL.Strings = (
      
        'SELECT     idorder, tglstop, payment, nama, kasir, croom, cmenu,' +
        ' cother, disroom, dismenu, disdll, tax, service, discmember, inv' +
        'oice, keterangan, extradiskon'
      'FROM         tpayment'
      'WHERE     (payment > 0)'
      '')
    Params = <>
    Left = 16
    Top = 48
    object Qcariidorder: TStringField
      FieldName = 'idorder'
      Origin = 'VIZTA.tpayment.idorder'
      FixedChar = True
      Size = 10
    end
    object Qcaritglstop: TDateTimeField
      FieldName = 'tglstop'
      Origin = 'VIZTA.tpayment.tglstop'
    end
    object Qcaripayment: TSmallintField
      FieldName = 'payment'
      Origin = 'VIZTA.tpayment.payment'
    end
    object Qcarinama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tpayment.nama'
      FixedChar = True
      Size = 15
    end
    object Qcarikasir: TStringField
      FieldName = 'kasir'
      Origin = 'VIZTA.tpayment.kasir'
      FixedChar = True
      Size = 5
    end
    object Qcaricroom: TFloatField
      FieldName = 'croom'
      Origin = 'VIZTA.tpayment.croom'
    end
    object Qcaricmenu: TFloatField
      FieldName = 'cmenu'
      Origin = 'VIZTA.tpayment.cmenu'
    end
    object Qcaricother: TFloatField
      FieldName = 'cother'
      Origin = 'VIZTA.tpayment.cother'
    end
    object Qcaridisroom: TFloatField
      FieldName = 'disroom'
      Origin = 'VIZTA.tpayment.disroom'
    end
    object Qcaridismenu: TFloatField
      FieldName = 'dismenu'
      Origin = 'VIZTA.tpayment.dismenu'
    end
    object Qcaridisdll: TFloatField
      FieldName = 'disdll'
      Origin = 'VIZTA.tpayment.disdll'
    end
    object Qcaritax: TFloatField
      FieldName = 'tax'
      Origin = 'VIZTA.tpayment.tax'
    end
    object Qcariservice: TFloatField
      FieldName = 'service'
      Origin = 'VIZTA.tpayment.service'
    end
    object Qcaridiscmember: TFloatField
      FieldName = 'discmember'
      Origin = 'VIZTA.tpayment.discmember'
    end
    object Qcariinvoice: TStringField
      FieldName = 'invoice'
      Origin = 'VIZTA.tpayment.invoice'
      FixedChar = True
      Size = 11
    end
    object Qcariketerangan: TStringField
      FieldName = 'keterangan'
      Origin = 'VIZTA.tpayment.keterangan'
      FixedChar = True
      Size = 30
    end
    object Qcariextradiskon: TFloatField
      FieldName = 'extradiskon'
      Origin = 'VIZTA.tpayment.extradiskon'
    end
    object QcariCaltotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Caltotal'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object QcariCalpayment: TStringField
      FieldKind = fkCalculated
      FieldName = 'Calpayment'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Qcari
    Left = 16
    Top = 64
  end
  object Qupdate: TZQuery
    Params = <>
    Left = 48
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
    MinHeight = 480
    MinWidth = 480
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
    Left = 6
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
    Left = 8
    Top = 16
  end
end
