object FsatuanKonversi: TFsatuanKonversi
  Left = 438
  Top = 143
  ActiveControl = edtJumlah
  AutoScroll = False
  BorderIcons = []
  Caption = 'FsatuanKonversi'
  ClientHeight = 146
  ClientWidth = 362
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
  object Label5: TLabel
    Left = 25
    Top = 28
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
  object Label1: TLabel
    Left = 192
    Top = 57
    Width = 41
    Height = 13
    Caption = 'Satuan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 25
    Top = 60
    Width = 29
    Height = 13
    Caption = 'Hasil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Fkeluar: TbsSkinButton
    Left = 143
    Top = 101
    Width = 75
    Height = 25
    Cursor = crHandPoint
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
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'OK'
    NumGlyphs = 1
    Spacing = 1
    OnClick = FkeluarClick
  end
  object edtJumlah: TEdit
    Left = 85
    Top = 24
    Width = 100
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = cboKonversiChange
    OnKeyPress = edtJumlahKeyPress
  end
  object cboKonversi: TComboBox
    Left = 192
    Top = 24
    Width = 145
    Height = 21
    DropDownCount = 15
    ItemHeight = 13
    TabOrder = 1
    OnChange = cboKonversiChange
    OnKeyPress = pencet
  end
  object edttotal: TAEdit
    Left = 85
    Top = 53
    Width = 100
    Height = 21
    TabStop = False
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    OnKeyPress = pencet
    Alignment = taRightJustify
  end
  object bsBusinessSkinForm2: TbsBusinessSkinForm
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
    Top = 88
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
    Left = 32
    Top = 88
  end
  object Qsatuan: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     TsatuanKonv.id, TsatuanKonv.idKonversi, TsatuanKonv.j' +
        'umlah, tsatuan.satuan, tsatuan.kode'
      'FROM         TsatuanKonv INNER JOIN'
      '                       tsatuan ON TsatuanKonv.id = tsatuan.id'
      'WHERE     (TsatuanKonv.idKonversi= :id)'
      'ORDER BY tsatuan.kode')
    Left = 272
    Top = 80
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'id'
        ParamType = ptUnknown
      end>
    object Qsatuanid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.TsatuanKonv.id'
    end
    object QsatuanidKonversi: TSmallintField
      FieldName = 'idKonversi'
      Origin = 'VIZTA.TsatuanKonv.idKonversi'
    end
    object Qsatuankode: TStringField
      FieldName = 'kode'
      Origin = 'VIZTA.tsatuan.kode'
      FixedChar = True
      Size = 7
    end
    object Qsatuanjumlah: TIntegerField
      FieldName = 'jumlah'
      Origin = 'VIZTA.TsatuanKonv.jumlah'
    end
    object Qsatuansatuan: TStringField
      FieldName = 'satuan'
      Origin = 'VIZTA.tsatuan.satuan'
      FixedChar = True
      Size = 25
    end
  end
  object DSsatuan: TDataSource
    AutoEdit = False
    DataSet = Qsatuan
    Left = 8
    Top = 144
  end
end
