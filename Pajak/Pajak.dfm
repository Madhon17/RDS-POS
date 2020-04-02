object FormPajak: TFormPajak
  Left = 583
  Top = 36
  AutoScroll = False
  BorderIcons = []
  Caption = 'Setting Pajak'
  ClientHeight = 605
  ClientWidth = 751
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
  object btnOk: TbsSkinButton
    Left = 338
    Top = 555
    Width = 75
    Height = 25
    TabOrder = 0
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
    OnClick = btnOkClick
  end
  object bsSkinPanel3: TbsSkinPanel
    Left = 22
    Top = 24
    Width = 707
    Height = 49
    TabOrder = 1
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel2'
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 112
      Height = 13
      Caption = 'Nominal Auto Pajak'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object bsSkinXFormButton1: TbsSkinXFormButton
      Left = 262
      Top = 9
      Width = 75
      Height = 27
      TabOrder = 0
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
      Caption = 'Update'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinXFormButton1Click
      DefActiveFontColor = clNavy
      DefDownFontColor = clBlack
    end
    object edtNominalAutoPajak: TAEdit
      Left = 134
      Top = 12
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = edtNominalAutoPajakEnter
      OnExit = edtNominalAutoPajakExit
      OnKeyPress = edtNominalAutoPajakKeyPress
      Alignment = taCenter
    end
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 22
    Top = 80
    Width = 707
    Height = 457
    TabOrder = 2
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel2'
    object DBCheckBox1: TDBCheckBox
      Left = 384
      Top = 360
      Width = 17
      Height = 17
      DataField = 'pajak'
      DataSource = DataSource2
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
      Visible = False
      OnClick = DBCheckBox1Click
    end
    object btnNumber: TbsSkinXFormButton
      Left = 20
      Top = 414
      Width = 668
      Height = 27
      TabOrder = 0
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
      Caption = 'Renumbering'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnNumberClick
      DefActiveFontColor = clNavy
      DefDownFontColor = clBlack
    end
    object DBGrid1: TDBGrid
      Left = 20
      Top = 112
      Width = 668
      Height = 289
      DataSource = DataSource2
      FixedColor = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = DBGrid1ColExit
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'invoice'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Invoice'
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'invoice2'
          Title.Alignment = taCenter
          Title.Caption = 'Tax Invoice'
          Width = 120
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'tglstop'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Date'
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Width = 136
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'pajak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Tax'
          Width = 47
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CalPayment'
          Title.Alignment = taCenter
          Title.Caption = 'Payment'
          Visible = True
        end>
    end
    object btncari: TbsSkinXFormButton
      Left = 316
      Top = 73
      Width = 75
      Height = 27
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
      Caption = 'Filter'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btncariClick
      DefActiveFontColor = clNavy
      DefDownFontColor = clBlack
    end
    object grpRoom: TPanel
      Left = 21
      Top = 24
      Width = 668
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
      TabOrder = 3
      object Label2: TLabel
        Left = 329
        Top = 11
        Width = 5
        Height = 13
        Caption = '-'
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
        Caption = 'Date'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 0
      end
      object tgl_mulai: TDateTimePicker
        Left = 120
        Top = 9
        Width = 113
        Height = 21
        Date = 38520.000000000000000000
        Format = 'dd MMM yyyy'
        Time = 38520.000000000000000000
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
        Date = 38520.000000000000000000
        Format = 'dd MMM yyyy'
        Time = 38520.000000000000000000
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
    Left = 446
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
    Left = 448
    Top = 24
  end
  object DataSource2: TDataSource
    DataSet = QPajak
    Left = 504
    Top = 16
  end
  object QPajak: TZQuery
    OnCalcFields = QPajakCalcFields
    Params = <>
    Left = 65528
    Top = 120
    object QPajaktanggal: TDateTimeField
      FieldName = 'tanggal'
    end
    object QPajaktglstop: TDateTimeField
      FieldName = 'tglstop'
    end
    object QPajakdisroom: TFloatField
      FieldName = 'disroom'
    end
    object QPajakdismenu: TFloatField
      FieldName = 'dismenu'
    end
    object QPajakdisdll: TFloatField
      FieldName = 'disdll'
    end
    object QPajaktax: TFloatField
      FieldName = 'tax'
    end
    object QPajakservice: TFloatField
      FieldName = 'service'
    end
    object QPajakcroom: TFloatField
      FieldName = 'croom'
    end
    object QPajakcmenu: TFloatField
      FieldName = 'cmenu'
    end
    object QPajakcother: TFloatField
      FieldName = 'cother'
    end
    object QPajakinvoice: TStringField
      FieldName = 'invoice'
    end
    object QPajakextradiskon: TFloatField
      FieldName = 'extradiskon'
    end
    object QPajakpajak: TStringField
      FieldName = 'pajak'
    end
    object QPajakcalroom: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calroom'
      Calculated = True
    end
    object QPajakcalmenu: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calmenu'
      Calculated = True
    end
    object QPajakcaldll: TFloatField
      FieldKind = fkCalculated
      FieldName = 'caldll'
      Calculated = True
    end
    object QPajakTotal: TFloatField
      FieldName = 'Total'
      DisplayFormat = '#,0'
    end
    object QPajakdiscmember: TFloatField
      FieldName = 'discmember'
    end
    object QPajakinvoice2: TStringField
      FieldName = 'invoice2'
    end
    object QPajakpayment: TSmallintField
      FieldName = 'payment'
    end
    object QPajakjenisdiskon: TSmallintField
      FieldName = 'jenisdiskon'
    end
    object QPajakorang: TSmallintField
      FieldName = 'orang'
    end
    object QPajakCalPayment: TStringField
      FieldName = 'CalPayment'
    end
    object QPajaknama: TStringField
      FieldName = 'nama'
    end
    object QPajakkasir: TStringField
      FieldName = 'kasir'
    end
    object QPajakidmember: TStringField
      FieldName = 'idmember'
    end
    object QPajakidroom: TSmallintField
      FieldName = 'idroom'
    end
  end
end
