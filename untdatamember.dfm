object fdatamember: Tfdatamember
  Left = 258
  Top = 128
  AutoScroll = False
  BorderIcons = []
  Caption = 'Data Member Report'
  ClientHeight = 581
  ClientWidth = 826
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
    Left = 205
    Top = 24
    Width = 417
    Height = 65
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 0
    object cmbkategori: TComboBox
      Left = 119
      Top = 9
      Width = 282
      Height = 21
      Style = csDropDownList
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
    end
    object chk_kategori: TCheckBox
      Left = 14
      Top = 11
      Width = 75
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
      TabOrder = 0
      OnClick = chk_kategoriClick
    end
    object chk_ultah: TCheckBox
      Left = 14
      Top = 37
      Width = 99
      Height = 17
      Caption = 'Ulang Tahun'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = chk_ultahClick
    end
    object tgl_mulai: TDateTimePicker
      Left = 119
      Top = 34
      Width = 135
      Height = 21
      Date = 38520.000000000000000000
      Format = 'dd MMMM'
      Time = 38520.000000000000000000
      DateMode = dmUpDown
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Tgl_akhir: TDateTimePicker
      Left = 266
      Top = 34
      Width = 135
      Height = 21
      Date = 38520.999988425930000000
      Format = 'dd MMMM'
      Time = 38520.999988425930000000
      DateMode = dmUpDown
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 369
    Top = 149
    Width = 89
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
  object btnexit: TbsSkinXFormButton
    Left = 376
    Top = 524
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
  object btnprint: TbsSkinXFormButton
    Left = 41
    Top = 492
    Width = 745
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
    Caption = 'P R I N T'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Panel3: TPanel
    Left = 41
    Top = 105
    Width = 745
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
    TabOrder = 4
    object rdo_nama: TRadioButton
      Left = 344
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
      Left = 84
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID Member'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btncariClick
    end
    object rdo_ultah: TRadioButton
      Left = 548
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Ulang Tahun'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnClick = btncariClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 184
    Width = 745
    Height = 289
    DataSource = DScari
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'Member ID'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'Nama'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tgl_lahir'
        Title.Alignment = taCenter
        Title.Caption = 'Tgl Lahir'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HP'
        Title.Alignment = taCenter
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telp'
        Title.Alignment = taCenter
        Title.Caption = 'TELP'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CalAlamat'
        Title.Caption = 'Alamat'
        Width = 140
        Visible = True
      end>
  end
  object Qcari: TZQuery
    OnCalcFields = QcariCalcFields
    SQL.Strings = (
      
        'SELECT     tmember.id, tmember.nama, tmember.Tgl_lahir, tkategor' +
        'imember.kategori, tmember.HP, tmember.Telp, tmember.alamat1, tme' +
        'mber.alamat2'
      'FROM         tmember INNER JOIN'
      
        '                      tkategorimember ON tmember.id_kategori = t' +
        'kategorimember.id'
      
        'WHERE     (CONVERT(datetime, RTRIM(CAST(MONTH(tmember.Tgl_lahir)' +
        ' AS char(2))) + '#39'/'#39' + RTRIM(CAST(DAY(tmember.Tgl_lahir) AS char(' +
        '2))) + '#39'/2000'#39') '
      
        '                      > :tgl_awal) AND (CONVERT(datetime, RTRIM(' +
        'CAST(MONTH(tmember.Tgl_lahir) AS char(2))) '
      
        '                      + '#39'/'#39' + RTRIM(CAST(DAY(tmember.Tgl_lahir) ' +
        'AS char(2))) + '#39'/2000'#39') < :tgl_akhir)'
      
        'ORDER BY CONVERT(datetime, RTRIM(CAST(MONTH(tmember.Tgl_lahir) A' +
        'S char(2))) + '#39'/'#39' + RTRIM(CAST(DAY(tmember.Tgl_lahir) AS char(2)' +
        ')) + '#39'/2000'#39')')
    Params = <
      item
        DataType = ftDateTime
        Name = 'tgl_awal'
        ParamType = ptUnknown
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'tgl_akhir'
        ParamType = ptUnknown
        Value = 0d
      end>
    Left = 748
    Top = 8
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'tgl_awal'
        ParamType = ptUnknown
        Value = 0d
      end
      item
        DataType = ftDateTime
        Name = 'tgl_akhir'
        ParamType = ptUnknown
        Value = 0d
      end>
    object Qcariid: TStringField
      FieldName = 'id'
      Origin = 'VIZTA.tmember.id'
      FixedChar = True
      Size = 7
    end
    object Qcarikategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategorimember.kategori'
      FixedChar = True
      Size = 30
    end
    object Qcarinama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tmember.nama'
      FixedChar = True
      Size = 50
    end
    object QcariTgl_lahir: TDateTimeField
      Alignment = taCenter
      FieldName = 'Tgl_lahir'
      Origin = 'VIZTA.tmember.Tgl_lahir'
      DisplayFormat = 'dd-MM-yyyy'
    end
    object QcariHP: TStringField
      FieldName = 'HP'
      Origin = 'VIZTA.tmember.HP'
      FixedChar = True
    end
    object QcariTelp: TStringField
      FieldName = 'Telp'
      Origin = 'VIZTA.tmember.Telp'
      FixedChar = True
    end
    object QcariCalAlamat: TStringField
      DisplayWidth = 60
      FieldKind = fkCalculated
      FieldName = 'CalAlamat'
      Size = 60
      Calculated = True
    end
    object Qcarialamat1: TStringField
      FieldName = 'alamat1'
      Origin = 'VIZTA.tmember.alamat1'
      FixedChar = True
      Size = 100
    end
    object Qcarialamat2: TStringField
      FieldName = 'alamat2'
      Origin = 'VIZTA.tmember.alamat2'
      FixedChar = True
      Size = 100
    end
  end
  object DScari: TDataSource
    DataSet = Qcari
    Left = 748
    Top = 32
  end
  object RVdatamember: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qcari
    Left = 748
    Top = 48
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     id, kategori'
      'FROM         tkategorimember')
    Params = <>
    Left = 783
    Top = 8
    object Qkategoriid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tkategorimenu.id'
    end
    object Qkategorikategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategorimenu.kategori'
      FixedChar = True
    end
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
    BorderIcons = [biMinimize, biMaximize]
    Left = 8
    Top = 48
  end
  object Qcabang: TZQuery
    SQL.Strings = (
      'SELECT     Tsetup.id_cabang, tkategorimember.kategori'
      'FROM         Tsetup INNER JOIN'
      
        '                      tkategorimember ON Tsetup.id_cabang = tkat' +
        'egorimember.id')
    Params = <>
    Left = 696
    Top = 16
    object Qcabangid_cabang: TSmallintField
      FieldName = 'id_cabang'
      Origin = 'VIZTA.Tsetup.id_cabang'
    end
    object Qcabangkategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategorimember.kategori'
      FixedChar = True
      Size = 30
    end
  end
end
