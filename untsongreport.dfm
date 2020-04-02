object FSsongReport: TFSsongReport
  Left = 202
  Top = 117
  AutoScroll = False
  BorderIcons = []
  Caption = 'Song Report'
  ClientHeight = 618
  ClientWidth = 953
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
  object Panel1: TPanel
    Left = 127
    Top = 23
    Width = 698
    Height = 146
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 279
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
    object Label1: TLabel
      Left = 481
      Top = 114
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
      Left = 280
      Top = 114
      Width = 13
      Height = 13
      Caption = '@'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tgl_mulai: TDateTimePicker
      Left = 111
      Top = 11
      Width = 154
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object cmbkategori: TComboBox
      Left = 111
      Top = 36
      Width = 154
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
    object chkkategori: TCheckBox
      Left = 14
      Top = 38
      Width = 97
      Height = 17
      Caption = 'Category'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      OnClick = chkkategoriClick
    end
    object chk_tanggal: TCheckBox
      Left = 14
      Top = 13
      Width = 81
      Height = 17
      Caption = 'Requested'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = chk_tanggalClick
    end
    object Tgl_akhir: TDateTimePicker
      Left = 312
      Top = 11
      Width = 154
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object chkPriority: TCheckBox
      Left = 14
      Top = 88
      Width = 97
      Height = 17
      Caption = 'Priority'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      OnClick = chkPriorityClick
    end
    object cmbPriority: TComboBox
      Left = 111
      Top = 86
      Width = 154
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 8
      Items.Strings = (
        'High'
        'Normal'
        'Low')
    end
    object chkStatus: TCheckBox
      Left = 14
      Top = 63
      Width = 97
      Height = 17
      Caption = 'Status'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      OnClick = chkStatusClick
    end
    object cmbStatus: TComboBox
      Left = 271
      Top = 61
      Width = 154
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 6
    end
    object chkArranger: TCheckBox
      Left = 14
      Top = 112
      Width = 97
      Height = 17
      Caption = 'Arranger'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 9
      OnClick = chkArrangerClick
    end
    object cmbArranger: TComboBox
      Left = 111
      Top = 110
      Width = 154
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 10
      Items.Strings = (
        'High'
        'Normal'
        'Low')
    end
    object tglArrangerMulai: TDateTimePicker
      Left = 312
      Top = 110
      Width = 154
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object tglArrangerSelesai: TDateTimePicker
      Left = 519
      Top = 110
      Width = 154
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object cmbStatusKon: TComboBox
      Left = 111
      Top = 61
      Width = 154
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 13
      Items.Strings = (
        '='
        '<>')
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 439
    Top = 221
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
  object btnexit: TbsSkinXFormButton
    Left = 439
    Top = 569
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
    Left = 14
    Top = 529
    Width = 923
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
    Left = 127
    Top = 177
    Width = 698
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object rdoArtist: TRadioButton
      Left = 142
      Top = 8
      Width = 83
      Height = 17
      Caption = 'Artist'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object rdoRequested: TRadioButton
      Left = 32
      Top = 8
      Width = 90
      Height = 17
      Caption = 'Requested'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object rdoTitle: TRadioButton
      Left = 236
      Top = 8
      Width = 85
      Height = 17
      Caption = 'Title'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object rdoCategory: TRadioButton
      Left = 331
      Top = 8
      Width = 90
      Height = 17
      Caption = 'Category'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object rdoPriority: TRadioButton
      Left = 457
      Top = 8
      Width = 90
      Height = 17
      Caption = 'Priority'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object rdoProcessor: TRadioButton
      Left = 568
      Top = 8
      Width = 90
      Height = 17
      Caption = 'Processor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid
    Left = 14
    Top = 256
    Width = 923
    Height = 265
    DataSource = DSrequest
    FixedColor = clRed
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
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'no'
        Title.Alignment = taCenter
        Title.Caption = 'No'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'requested'
        Title.Alignment = taCenter
        Title.Caption = 'Requested'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'title'
        Title.Alignment = taCenter
        Title.Caption = 'Title'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'artist'
        Title.Alignment = taCenter
        Title.Caption = 'Artist'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'arranger'
        Title.Alignment = taCenter
        Title.Caption = 'Arranger'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'priority'
        Title.Alignment = taCenter
        Title.Caption = 'Priority'
        Width = 57
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'login'
        Title.Alignment = taCenter
        Title.Caption = 'Login'
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ubah'
        Title.Alignment = taCenter
        Title.Caption = 'Ubah'
        Width = 90
        Visible = True
      end>
  end
  object Qrequest: TZQuery
    OnCalcFields = QrequestCalcFields
    SQL.Strings = (
      
        'SELECT     TS.id, TS.requested, TS.artist, TS.title, TS.priority' +
        ', TS.tanggal, TS.login, TS.ubah, TC.category, TP.nama AS status,' +
        ' TA.arranger'
      'FROM         TSrequest TS INNER JOIN'
      
        '                      TSprocess TP ON TS.processor = TP.id INNER' +
        ' JOIN'
      
        '                      TScategory TC ON TS.category = TC.id INNER' +
        ' JOIN'
      '                      TSarranger TA ON TS.arranger = TA.id')
    Params = <>
    Left = 16
    Top = 120
    object Qrequestid: TIntegerField
      Alignment = taCenter
      FieldName = 'id'
      DisplayFormat = '00000'
    end
    object Qrequestrequested: TDateTimeField
      FieldName = 'requested'
      DisplayFormat = 'dd MM yy'
    end
    object Qrequestartist: TStringField
      FieldName = 'artist'
      FixedChar = True
      Size = 50
    end
    object Qrequesttitle: TStringField
      FieldName = 'title'
      FixedChar = True
      Size = 50
    end
    object Qrequestpriority: TSmallintField
      FieldName = 'priority'
    end
    object Qrequesttanggal: TDateTimeField
      FieldName = 'tanggal'
      DisplayFormat = 'dd MM yy'
    end
    object Qrequestlogin: TStringField
      FieldName = 'login'
      FixedChar = True
      Size = 5
    end
    object Qrequestubah: TDateTimeField
      FieldName = 'ubah'
      DisplayFormat = 'dd MM yy'
    end
    object Qrequestcategory: TStringField
      FieldName = 'category'
      FixedChar = True
      Size = 30
    end
    object Qrequeststatus: TStringField
      FieldName = 'status'
      FixedChar = True
      Size = 50
    end
    object Qrequestarranger: TStringField
      FieldName = 'arranger'
      FixedChar = True
      Size = 50
    end
    object QrequestCalpriority: TStringField
      FieldKind = fkCalculated
      FieldName = 'Calpriority'
      Size = 10
      Calculated = True
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
    MinWidth = 640
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 16
    Top = 152
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
    Left = 16
    Top = 176
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     *'
      'FROM         TScategory'
      'ORDER BY category')
    Params = <>
    Left = 16
    Top = 26
    object Qkategoriid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.TScategory.id'
    end
    object Qkategoricategory: TStringField
      FieldName = 'category'
      Origin = 'VIZTA.TScategory.category'
      FixedChar = True
      Size = 30
    end
  end
  object Qprocessor: TZQuery
    SQL.Strings = (
      'SELECT     *'
      'FROM         TSprocess'
      'ORDER BY nama')
    Params = <>
    Left = 48
    Top = 26
    object Qprocessorid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.TSprocess.id'
    end
    object Qprocessornama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.TSprocess.nama'
      FixedChar = True
      Size = 50
    end
  end
  object Qcari: TZQuery
    Params = <>
    Left = 16
    Top = 56
  end
  object DSrequest: TDataSource
    DataSet = Vcari
    Left = 40
    Top = 120
  end
  object Qarranger: TZQuery
    SQL.Strings = (
      'SELECT     *'
      'FROM         TSarranger'
      'ORDER BY arranger')
    Params = <>
    Left = 48
    Top = 56
    object Qarrangerid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.TSarranger.id'
    end
    object Qarrangerarranger: TStringField
      FieldName = 'arranger'
      Origin = 'VIZTA.TSarranger.arranger'
      FixedChar = True
      Size = 50
    end
  end
  object RVsongReport: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Vcari
    Left = 64
    Top = 176
  end
  object Vcari: TVirtualTable
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'requested'
        DataType = ftDateTime
      end
      item
        Name = 'artist'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'title'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'priority'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tanggal'
        DataType = ftDateTime
      end
      item
        Name = 'login'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'ubah'
        DataType = ftDateTime
      end
      item
        Name = 'category'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'status'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'arranger'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'no'
        DataType = ftSmallint
      end>
    Left = 56
    Top = 152
    Data = {
      02000C00020069640300000009007265717565737465640B0000000600617274
      6973740100320005007469746C650100320008007072696F7269747901001400
      070074616E6767616C0B00000005006C6F67696E010005000400756261680B00
      0000080063617465676F72790100140006007374617475730100140008006172
      72616E6765720100140002006E6F02000000000000000000}
    object Vcariid: TIntegerField
      FieldName = 'id'
      DisplayFormat = '00000'
    end
    object Vcarirequested: TDateTimeField
      Alignment = taCenter
      FieldName = 'requested'
      DisplayFormat = 'dd MM yy'
    end
    object Vcariartist: TStringField
      FieldName = 'artist'
      Size = 50
    end
    object Vcarititle: TStringField
      FieldName = 'title'
      Size = 50
    end
    object Vcaripriority: TStringField
      Alignment = taCenter
      FieldName = 'priority'
    end
    object Vcaritanggal: TDateTimeField
      Alignment = taCenter
      FieldName = 'tanggal'
      DisplayFormat = 'dd MM yy'
    end
    object Vcarilogin: TStringField
      Alignment = taCenter
      FieldName = 'login'
      Size = 5
    end
    object Vcariubah: TDateTimeField
      Alignment = taCenter
      FieldName = 'ubah'
      DisplayFormat = 'dd MM yy'
    end
    object Vcaricategory: TStringField
      FieldName = 'category'
    end
    object Vcaristatus: TStringField
      Alignment = taCenter
      FieldName = 'status'
    end
    object Vcariarranger: TStringField
      Alignment = taCenter
      FieldName = 'arranger'
    end
    object Vcarino: TSmallintField
      FieldName = 'no'
    end
  end
end
