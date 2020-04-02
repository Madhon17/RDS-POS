object Fbillkoreksi: TFbillkoreksi
  Left = 462
  Top = 94
  AutoScroll = False
  BorderIcons = []
  Caption = 'Koreksi'
  ClientHeight = 504
  ClientWidth = 646
  Color = 16738355
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
  object Label3: TLabel
    Left = 80
    Top = 124
    Width = 43
    Height = 13
    Caption = 'Invoice'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object grpRoom: TPanel
    Left = 38
    Top = 32
    Width = 572
    Height = 41
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 321
      Top = 11
      Width = 20
      Height = 13
      Caption = 's/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object chktanggal: TCheckBox
      Left = 23
      Top = 13
      Width = 82
      Height = 13
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = chktanggalClick
    end
    object tgl_mulai: TDateTimePicker
      Left = 120
      Top = 9
      Width = 113
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMM yyyy'
      Time = 38520.662762094910000000
      TabOrder = 1
    end
    object waktuawal: TDateTimePicker
      Left = 240
      Top = 9
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Kind = dtkTime
      TabOrder = 2
    end
    object Tgl_akhir: TDateTimePicker
      Left = 352
      Top = 9
      Width = 113
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMM yyyy'
      Time = 38520.662762094910000000
      TabOrder = 3
    end
    object waktuakhir: TDateTimePicker
      Left = 472
      Top = 9
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Kind = dtkTime
      TabOrder = 4
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 286
    Top = 81
    Width = 75
    Height = 27
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
  object DBGrid1: TDBGrid
    Left = 37
    Top = 149
    Width = 572
    Height = 204
    TabStop = False
    Color = clWhite
    DataSource = DataSource1
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tanggal'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 104
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'invoice'
        Title.Alignment = taCenter
        Title.Caption = 'Invoice'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'Nama'
        Width = 171
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'namaroom'
        Title.Alignment = taCenter
        Title.Caption = 'Room'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 115
        Visible = True
      end>
  end
  object btnkeluar: TbsSkinButton
    Left = 281
    Top = 455
    Width = 75
    Height = 26
    TabOrder = 6
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
  object Panel1: TPanel
    Left = 37
    Top = 360
    Width = 572
    Height = 81
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BorderWidth = 1
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Label4: TLabel
      Left = 149
      Top = 124
      Width = 99
      Height = 13
      Caption = 'Correction Status'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 14
      Top = 12
      Width = 66
      Height = 13
      Caption = 'Keterangan'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object btnsimpan: TbsSkinButton
      Left = 14
      Top = 39
      Width = 545
      Height = 26
      TabOrder = 0
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
      Caption = 'Correction'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnsimpanClick
    end
    object cboKategori: TComboBox
      Left = 261
      Top = 120
      Width = 145
      Height = 21
      Style = csDropDownList
      Enabled = False
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Active'
      Items.Strings = (
        'Active'
        'Billing')
    end
    object edtKeterangan: TEdit
      Left = 104
      Top = 8
      Width = 455
      Height = 21
      TabOrder = 2
      OnKeyDown = edtKeteranganKeyDown
    end
  end
  object edtInvoice: TAEdit
    Left = 141
    Top = 120
    Width = 113
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = edtInvoiceChange
    OnEnter = edtInvoiceEnter
    OnExit = edtInvoiceExit
    OnKeyDown = edtInvoiceKeyDown
    Alignment = taCenter
  end
  object edtNama: TEdit
    Left = 261
    Top = 120
    Width = 305
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    OnChange = edtNamaChange
    OnKeyDown = edtNamaKeyDown
  end
  object DataSource1: TDataSource
    Top = 168
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
    Left = 600
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
    SkinData = FrmInduk.bsSkinData2
    MinHeight = 304
    MinWidth = 645
    MaxHeight = 525
    MaxWidth = 331
    Magnetic = False
    MagneticSize = 0
    BorderIcons = []
    Left = 600
    Top = 48
  end
  object Qcari: TZQuery
    AfterScroll = QcariAfterScroll
    OnCalcFields = QcariCalcFields
    Params = <>
    Left = 8
    Top = 8
    object Qcariidorder: TStringField
      FieldName = 'idorder'
    end
    object Qcarinama: TStringField
      FieldName = 'nama'
    end
    object Qcariroom: TFloatField
      FieldName = 'room'
    end
    object Qcarimenu: TFloatField
      FieldName = 'menu'
    end
    object Qcaridll: TFloatField
      FieldName = 'dll'
    end
    object Qcarinamaroom: TStringField
      FieldName = 'namaroom'
    end
    object Qcaritanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object Qcaridisroom: TFloatField
      FieldName = 'disroom'
    end
    object Qcaridismenu: TFloatField
      FieldName = 'dismenu'
    end
    object Qcaridisdll: TFloatField
      FieldName = 'disdll'
    end
    object QcariCalRoom: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalRoom'
      Calculated = True
    end
    object QcariCalMenu: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalMenu'
      Calculated = True
    end
    object QcariCalDll: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalDll'
      Calculated = True
    end
    object Qcaritotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
    object Qcariidroom: TSmallintField
      FieldName = 'idroom'
    end
    object Qcaritax: TFloatField
      FieldName = 'tax'
    end
    object Qcariservice: TFloatField
      FieldName = 'service'
    end
    object Qcaridiscmember: TFloatField
      FieldName = 'discmember'
    end
    object Qcariinvoice: TStringField
      FieldName = 'invoice'
    end
  end
end
