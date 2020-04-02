object fdetailmemberreport: Tfdetailmemberreport
  Left = 476
  Top = 216
  AutoScroll = False
  BorderIcons = []
  Caption = 'Member Transaction'
  ClientHeight = 619
  ClientWidth = 756
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
    Left = 53
    Top = 23
    Width = 650
    Height = 98
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 321
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
    object tgl_mulai: TDateTimePicker
      Left = 112
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
      TabOrder = 1
    end
    object cmbkategori: TComboBox
      Left = 112
      Top = 36
      Width = 121
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
    end
    object chk_kategori: TCheckBox
      Left = 14
      Top = 38
      Width = 97
      Height = 17
      Caption = 'Kategori'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = chk_kategoriClick
    end
    object chk_tanggal: TCheckBox
      Left = 14
      Top = 13
      Width = 81
      Height = 17
      Caption = 'Tanggal'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object waktuawal: TDateTimePicker
      Left = 240
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Kind = dtkTime
      TabOrder = 4
    end
    object Tgl_akhir: TDateTimePicker
      Left = 352
      Top = 11
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 5
    end
    object waktuakhir: TDateTimePicker
      Left = 480
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Kind = dtkTime
      TabOrder = 6
    end
    object chkidmember: TCheckBox
      Left = 14
      Top = 65
      Width = 97
      Height = 17
      Caption = 'ID Member'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      OnClick = chkidmemberClick
    end
    object edtidmember: TEdit
      Left = 112
      Top = 64
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object btnCariMenu: TbsSkinButton
      Left = 240
      Top = 64
      Width = 24
      Height = 20
      TabOrder = 9
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
      Caption = '... '
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnCariMenuClick
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 340
    Top = 171
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
  object DBGrid1: TDBGrid
    Left = 53
    Top = 206
    Width = 650
    Height = 291
    DataSource = DataSource1
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'namaroom'
        Title.Alignment = taCenter
        Width = 81
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'discmember'
        Title.Alignment = taCenter
        Width = 104
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Total_Charge'
        Title.Alignment = taCenter
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal'
        Title.Alignment = taCenter
        Width = 132
        Visible = True
      end>
  end
  object Panel3: TPanel
    Left = 53
    Top = 127
    Width = 650
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object rdo_nama: TRadioButton
      Left = 178
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btncariClick
    end
    object rdo_idmember: TRadioButton
      Left = 24
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID Member'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = btncariClick
    end
    object rdo_tanggal: TRadioButton
      Left = 488
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btncariClick
    end
    object rdo_namaroom: TRadioButton
      Left = 325
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Nama Room'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btncariClick
    end
  end
  object btnprint: TbsSkinXFormButton
    Left = 53
    Top = 533
    Width = 650
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
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 340
    Top = 573
    Width = 75
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnexitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object edttotal: TAEdit
    Left = 564
    Top = 504
    Width = 121
    Height = 21
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
    TabOrder = 6
    Alignment = taCenter
  end
  object Qcari: TZQuery
    SQL.Strings = (
      
        'SELECT     tmember.id, tmember.nama, tpayment.discmember, troom.' +
        'namaroom, '
      
        '                     SUM(tpayment.croom + tpayment.cmenu + tpaym' +
        'ent.cother -  tpayment.disroom - tpayment.dismenu - tpayment.dis' +
        'dll - tpayment.discmember + tpayment.tax + tpayment.service - tp' +
        'ayment.extradiskon) AS Total_Charge, '
      '                      tpayment.tanggal'
      'FROM         tkategorimember INNER JOIN'
      
        '                      tmember ON tkategorimember.id = tmember.id' +
        '_kategori INNER JOIN'
      
        '                      tpayment ON tmember.id = tpayment.idmember' +
        ' INNER JOIN'
      '                      troom ON tpayment.idroom = troom.id'
      'WHERE     (tpayment.discmember > 0)'
      
        'GROUP BY tmember.id, tmember.nama, tpayment.discmember, troom.na' +
        'maroom, tpayment.tanggal'
      'ORDER BY tpayment.tanggal, tmember.id')
    Params = <>
    Left = 668
    Top = 56
    object Qcariid: TStringField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'id'
      FixedChar = True
      Size = 7
    end
    object Qcarinama: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nama'
      FieldName = 'nama'
      FixedChar = True
      Size = 50
    end
    object Qcaridiscmember: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Disc. Member'
      FieldName = 'discmember'
      DisplayFormat = '#,0'
    end
    object Qcarinamaroom: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nama Room'
      FieldName = 'namaroom'
      FixedChar = True
      Size = 4
    end
    object QcariTotal_Charge: TFloatField
      Alignment = taCenter
      DisplayLabel = 'Total Charge'
      FieldName = 'Total_Charge'
      DisplayFormat = '#,0'
    end
    object Qcaritanggal: TDateTimeField
      Alignment = taCenter
      DisplayLabel = 'Tanggal'
      FieldName = 'tanggal'
      DisplayFormat = 'dd MMMM yyyy'
    end
  end
  object DataSource1: TDataSource
    DataSet = Qcari
    Left = 668
    Top = 102
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     id, kategori'
      'FROM         tkategorimember'
      'ORDER BY id')
    Params = <>
    Left = 668
    Top = 150
    object Qkategoriid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tkategorimember.id'
    end
    object Qkategorikategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategorimember.kategori'
      FixedChar = True
      Size = 30
    end
  end
  object RVdetailmemberreport: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qcari
    Left = 668
    Top = 32
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
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 4
    Top = 38
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
    Left = 4
    Top = 62
  end
end
