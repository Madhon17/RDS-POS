object fAuthorizationReport: TfAuthorizationReport
  Left = 192
  Top = 114
  AutoScroll = False
  BorderIcons = []
  Caption = 'fAuthorizationReport'
  ClientHeight = 387
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 28
    Width = 47
    Height = 13
    Caption = 'Tanggal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 272
    Top = 28
    Width = 42
    Height = 13
    Caption = 'Sampai'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dtpFrom: TDateTimePicker
    Left = 120
    Top = 24
    Width = 121
    Height = 21
    Date = 38520.662762094910000000
    Format = 'dd MMMM yyyy '
    Time = 38520.662762094910000000
    TabOrder = 0
  end
  object dtpTo: TDateTimePicker
    Left = 328
    Top = 24
    Width = 121
    Height = 21
    Date = 38520.662762094910000000
    Format = 'dd MMMM yyyy '
    Time = 38520.662762094910000000
    TabOrder = 1
  end
  object lvMenu: TListView
    Left = 40
    Top = 104
    Width = 481
    Height = 257
    Columns = <
      item
        Caption = 'Waktu'
        Width = 100
      end
      item
        Caption = 'Login'
        Width = 100
      end
      item
        Caption = 'Nama'
        Width = 100
      end
      item
        Caption = 'Keterangan'
        Width = 150
      end>
    RowSelect = True
    TabOrder = 2
    ViewStyle = vsReport
  end
  object btncari: TbsSkinXFormButton
    Left = 169
    Top = 58
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
    Caption = 'CARI'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnPrint: TbsSkinXFormButton
    Left = 257
    Top = 58
    Width = 75
    Height = 26
    TabOrder = 4
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
    OnClick = btnPrintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
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
    BorderIcons = [biMinimize, biMaximize]
    Left = 8
    Top = 8
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
    Top = 40
  end
  object qreport: TZQuery
    Params = <>
    Left = 8
    Top = 73
    object qreportdateTime: TDateTimeField
      DisplayLabel = 'Waktu'
      FieldName = 'dateTime'
      Origin = 'VIZTA.tControlRoom.dateTime'
      DisplayFormat = 'dd-MM-yy HH:mm'
    end
    object qreportlogin: TStringField
      DisplayLabel = 'Login'
      FieldName = 'login'
      Origin = 'VIZTA.tControlRoom'
      Size = 255
    end
    object qreportname: TStringField
      FieldName = 'name'
    end
    object qreportdescription: TStringField
      FieldName = 'description'
      Size = 255
    end
  end
  object rvActivity: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qreport
    Left = 8
    Top = 105
  end
end
