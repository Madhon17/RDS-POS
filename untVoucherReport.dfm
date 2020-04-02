object fVoucherReport: TfVoucherReport
  Left = 192
  Top = 114
  AutoScroll = False
  BorderIcons = []
  Caption = 'Voucher'
  ClientHeight = 469
  ClientWidth = 679
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lvVoucher: TListView
    Left = 48
    Top = 144
    Width = 585
    Height = 153
    Columns = <
      item
        Caption = 'Tanggal'
        Width = 110
      end
      item
        AutoSize = True
        Caption = 'Voucher'
      end
      item
        AutoSize = True
        Caption = 'Kode'
      end
      item
        AutoSize = True
        Caption = 'Nama'
      end
      item
        Alignment = taRightJustify
        AutoSize = True
        Caption = 'Nominal'
      end
      item
        Alignment = taRightJustify
        AutoSize = True
        Caption = 'Harga'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    RowSelect = True
    ParentFont = False
    TabOrder = 0
    ViewStyle = vsReport
    OnEditing = lvVoucherEditing
  end
  object btncari: TbsSkinXFormButton
    Left = 297
    Top = 106
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
  object printbsSkinXFormButton: TbsSkinXFormButton
    Left = 113
    Top = 426
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
    Caption = 'Print'
    NumGlyphs = 1
    Spacing = 1
    OnClick = printbsSkinXFormButtonClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object tutupbsSkinXFormButton: TbsSkinXFormButton
    Left = 209
    Top = 426
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
    Caption = 'Tutup'
    NumGlyphs = 1
    Spacing = 1
    OnClick = tutupbsSkinXFormButtonClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object GroupBox1: TGroupBox
    Left = 48
    Top = 16
    Width = 585
    Height = 81
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    object Label1: TLabel
      Left = 256
      Top = 16
      Width = 20
      Height = 13
      Caption = 's/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tanggalCheckBox: TCheckBox
      Left = 16
      Top = 16
      Width = 81
      Height = 17
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object tanggalDateTimePicker: TDateTimePicker
      Left = 96
      Top = 16
      Width = 145
      Height = 21
      Date = 43459.966218668980000000
      Format = 'dd MMMM yyyy '
      Time = 43459.966218668980000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object tanggal2DateTimePicker: TDateTimePicker
      Left = 288
      Top = 16
      Width = 145
      Height = 21
      Date = 43459.966218668980000000
      Format = 'dd MMMM yyyy '
      Time = 43459.966218668980000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object voucherCheckBox: TCheckBox
      Left = 16
      Top = 48
      Width = 81
      Height = 17
      Caption = 'Voucher'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object voucherComboBox: TComboBox
      Left = 96
      Top = 48
      Width = 145
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 48
    Top = 304
    Width = 585
    Height = 113
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 5
    object Label2: TLabel
      Left = 32
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Payment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Nominal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 32
      Top = 88
      Width = 35
      Height = 13
      Caption = 'Harga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object paymentAEdit: TAEdit
      Left = 96
      Top = 16
      Width = 121
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Alignment = taRightJustify
    end
    object nominalAEdit: TAEdit
      Left = 96
      Top = 48
      Width = 121
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Alignment = taRightJustify
    end
    object hargaAEdit: TAEdit
      Left = 96
      Top = 80
      Width = 121
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Alignment = taRightJustify
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
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
    Left = 6
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
  object queryZQuery: TZQuery
    Params = <>
    Left = 8
    Top = 72
    object queryZQuerytglstop: TDateTimeField
      FieldName = 'tglstop'
      DisplayFormat = 'dd-MM-yy HH:mm'
    end
    object queryZQueryvoucher2_name: TStringField
      FieldName = 'voucher2_name'
    end
    object queryZQueryvoucher2_code: TStringField
      FieldName = 'voucher2_code'
    end
    object queryZQueryvoucher2_name2: TStringField
      FieldName = 'voucher2_name2'
    end
    object queryZQueryvoucher2_value: TFloatField
      FieldName = 'voucher2_value'
      DisplayFormat = '#,0'
    end
    object queryZQueryvoucher2_value2: TFloatField
      FieldName = 'voucher2_value2'
      DisplayFormat = '#,0'
    end
  end
  object reportRvDataSetConnection: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = queryZQuery
    Left = 8
    Top = 104
  end
end
