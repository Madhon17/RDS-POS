object fsummary: Tfsummary
  Left = 326
  Top = 28
  AutoScroll = False
  BorderIcons = []
  Caption = 'Omset'
  ClientHeight = 585
  ClientWidth = 657
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
  object Panel1: TPanel
    Left = 24
    Top = 16
    Width = 609
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 280
      Top = 10
      Width = 20
      Height = 13
      Caption = 's/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 62
      Top = 10
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
      Left = 116
      Top = 6
      Width = 145
      Height = 21
      Date = 37943.000000000000000000
      Format = 'dd MMMM yyyy'
      Time = 37943.000000000000000000
      DateFormat = dfLong
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = tgl_mulaiChange
      OnExit = tgl_mulaiExit
    end
    object tgl_akhir: TDateTimePicker
      Left = 318
      Top = 6
      Width = 145
      Height = 21
      Date = 37943.999988425930000000
      Format = 'dd MMMM yyyy'
      Time = 37943.999988425930000000
      DateFormat = dfLong
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = tgl_akhirChange
      OnExit = tgl_akhirExit
    end
    object waktuakhir: TDateTimePicker
      Left = 474
      Top = 6
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
      TabOrder = 2
    end
    object chkPajak: TCheckBox
      Left = 560
      Top = 8
      Width = 33
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 3
      Visible = False
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 291
    Top = 61
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
    Left = 232
    Top = 505
    Width = 193
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
    Caption = 'P R I N T'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 291
    Top = 540
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
  object Panel2: TPanel
    Left = 24
    Top = 96
    Width = 609
    Height = 401
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Caption = 'Panel2'
    Color = clGray
    TabOrder = 4
    object Label6: TLabel
      Left = 362
      Top = 324
      Width = 82
      Height = 13
      Caption = 'Total Payment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 17
      Top = 332
      Width = 62
      Height = 13
      Caption = 'Total Cash'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 364
      Width = 60
      Height = 13
      Caption = 'Total Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 9
      Width = 569
      Height = 304
      DataSource = DScari
      FixedColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -12
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'tanggal'
          Title.Alignment = taCenter
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Jumlah Room'
          Title.Alignment = taCenter
          Title.Caption = 'Jumlah Payment'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cash'
          Title.Alignment = taCenter
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Card'
          Title.Alignment = taCenter
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'omset'
          Title.Alignment = taCenter
          Width = 105
          Visible = True
        end>
    end
    object edtJumPayment: TAEdit
      Left = 456
      Top = 320
      Width = 129
      Height = 45
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Alignment = taCenter
    end
    object edttotcash: TEdit
      Left = 96
      Top = 328
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object edttotcard: TEdit
      Left = 96
      Top = 360
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object edttotal: TAEdit
      Left = 456
      Top = 370
      Width = 129
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Alignment = taCenter
    end
  end
  object btnEmail: TbsSkinXFormButton
    Left = 24
    Top = 505
    Width = 193
    Height = 26
    TabOrder = 5
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
    Caption = 'E M A I L'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnEmailClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object bsSkinXFormButton1: TbsSkinXFormButton
    Left = 440
    Top = 505
    Width = 193
    Height = 26
    TabOrder = 6
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
    Caption = 'C S V'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinXFormButton1Click
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Qcari: TZQuery
    SQL.Strings = (
      
        'SELECT     CAST(CONVERT(CHAR(10), tglstop, 102) AS datetime) AS ' +
        'tanggal, SUM(croom + cmenu + cother + tax + service - disroom - ' +
        'dismenu - disdll - discmember)'
      '                       AS omset'
      'FROM         tpayment'
      'WHERE     (payment <> 4) OR'
      '                      (payment <> 5) OR'
      '                      (payment <> 0)'
      'GROUP BY CAST(CONVERT(CHAR(10), tglstop, 102) AS datetime)')
    Params = <>
    Left = 568
    Top = 160
  end
  object DScari: TDataSource
    DataSet = VTsummary
    Left = 592
    Top = 192
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
    MinWidth = 640
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
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
    Top = 16
  end
  object RVsummary: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = VTsummary
    Left = 592
    Top = 208
  end
  object VTsummary: TVirtualTable
    FieldDefs = <
      item
        Name = 'tanggal'
        DataType = ftDateTime
      end
      item
        Name = 'omset'
        DataType = ftFloat
      end
      item
        Name = 'Card'
        DataType = ftFloat
      end
      item
        Name = 'Cash'
        DataType = ftFloat
      end
      item
        Name = 'Jumlah Room'
        DataType = ftInteger
      end>
    Left = 592
    Top = 160
    Data = {
      02000500070074616E6767616C0B00000005006F6D7365740600000004004361
      726406000000040043617368060000000B004A756D6C616820526F6F6D030000
      00000000000000}
    object VTsummarytanggal: TDateTimeField
      DisplayLabel = 'Tanggal'
      FieldName = 'tanggal'
      DisplayFormat = 'dd MMMM yyyy'
    end
    object VTsummaryomset: TFloatField
      DisplayLabel = 'Omset'
      FieldName = 'omset'
      DisplayFormat = '#,0'
    end
    object VTsummaryCard: TFloatField
      FieldName = 'Card'
      DisplayFormat = '#,0'
    end
    object VTsummaryCash: TFloatField
      FieldName = 'Cash'
      DisplayFormat = '#,0'
    end
    object VTsummaryJumlahRoom: TIntegerField
      FieldName = 'Jumlah Room'
      DisplayFormat = '#,0'
    end
  end
  object Qomset: TZQuery
    Params = <>
    Left = 88
  end
  object Qother: TZQuery
    Params = <>
    Left = 48
  end
end
