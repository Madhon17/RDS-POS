object Fdetailrekapitulasi: TFdetailrekapitulasi
  Left = 284
  Top = 188
  AutoScroll = False
  BorderIcons = []
  Caption = 'Detail Rekapitulasi Penjualan'
  ClientHeight = 417
  ClientWidth = 738
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grpRoom: TPanel
    Left = 18
    Top = 42
    Width = 703
    Height = 308
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
    object DBgrid1: TDBGrid
      Left = 11
      Top = 18
      Width = 678
      Height = 273
      Hint = 'DoubleClick For Details'
      DataSource = DataSource1
      FixedColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDblClick = DBgrid1DblClick
    end
  end
  object btnInvoice: TbsSkinButton
    Left = 51
    Top = 21
    Width = 75
    Height = 17
    TabOrder = 1
    Visible = False
    SkinData = FrmInduk.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Invoice'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnInvoiceClick
  end
  object btnexit: TbsSkinXFormButton
    Left = 313
    Top = 375
    Width = 75
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnexitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Qinvoice: TZQuery
    Params = <>
    Left = 176
  end
  object VTinvoice: TVirtualTable
    FieldDefs = <
      item
        Name = 'Invoice'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nama'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Check-In'
        DataType = ftDateTime
      end
      item
        Name = 'Check-Out'
        DataType = ftDateTime
      end
      item
        Name = 'Room'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Kasir'
        DataType = ftString
        Size = 20
      end>
    Left = 136
    Data = {
      020006000700496E766F6963650100140004004E616D61010014000800436865
      636B2D496E0B0000000900436865636B2D4F75740B0000000400526F6F6D0100
      140005004B6173697201001400000000000000}
    object VTinvoiceInvoice: TStringField
      FieldName = 'Invoice'
    end
    object VTinvoiceNama: TStringField
      FieldName = 'Nama'
    end
    object VTinvoiceCheckIn: TDateTimeField
      FieldName = 'Check-In'
    end
    object VTinvoiceCheckOut: TDateTimeField
      FieldName = 'Check-Out'
    end
    object VTinvoiceRoom: TStringField
      FieldName = 'Room'
    end
    object VTinvoiceKasir: TStringField
      FieldName = 'Kasir'
    end
  end
  object DataSource1: TDataSource
    DataSet = VTinvoice
    Left = 176
    Top = 16
  end
  object Qcari: TZQuery
    SQL.Strings = (
      
        'SELECT     tpayment.nama, torder_room.tglStart AS `Check-In`, to' +
        'rder_room.tglStop AS `Check-Out`, troom.namaroom AS Room, tpayme' +
        'nt.kasir'
      'FROM         tpayment INNER JOIN'
      
        '                      torder_room ON tpayment.idorder = torder_r' +
        'oom.idorder INNER JOIN'
      '                      troom ON tpayment.idroom = troom.id')
    Params = <>
    Left = 208
    object Qcarinama: TStringField
      FieldName = 'nama'
      FixedChar = True
      Size = 15
    end
    object QcariCheckIn: TDateTimeField
      FieldName = 'Check-In'
    end
    object QcariCheckOut: TDateTimeField
      FieldName = 'Check-Out'
    end
    object QcariRoom: TStringField
      FieldName = 'Room'
      FixedChar = True
      Size = 4
    end
    object Qcarikasir: TStringField
      FieldName = 'kasir'
      FixedChar = True
      Size = 5
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
    Left = 270
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
    Left = 272
    Top = 16
  end
  object Qother: TZQuery
    Params = <>
    Left = 240
  end
end
