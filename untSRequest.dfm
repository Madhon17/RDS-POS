object FSsong: TFSsong
  Left = 279
  Top = 49
  AutoScroll = False
  BorderIcons = []
  Caption = 'FSsong'
  ClientHeight = 619
  ClientWidth = 620
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
  object Label1: TLabel
    Left = 51
    Top = 36
    Width = 14
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 51
    Top = 60
    Width = 62
    Height = 13
    Caption = 'Requested'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 51
    Top = 108
    Width = 30
    Height = 13
    Caption = 'Artist'
    FocusControl = edtArtist
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 51
    Top = 84
    Width = 26
    Height = 13
    Caption = 'Title'
    FocusControl = edtTitle
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 51
    Top = 132
    Width = 51
    Height = 13
    Caption = 'Category'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 51
    Top = 156
    Width = 40
    Height = 13
    Caption = 'Priority'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 51
    Top = 204
    Width = 37
    Height = 13
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 51
    Top = 228
    Width = 32
    Height = 13
    Caption = 'Login'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 51
    Top = 252
    Width = 42
    Height = 13
    Caption = 'Update'
    FocusControl = tglUbah
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 51
    Top = 180
    Width = 49
    Height = 13
    Caption = 'Arranger'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBEdit1: TDBEdit
    Left = 139
    Top = 32
    Width = 134
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'id'
    DataSource = DSrequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    OnKeyPress = tknEnter
  end
  object edtArtist: TDBEdit
    Left = 139
    Top = 104
    Width = 398
    Height = 21
    DataField = 'artist'
    DataSource = DSrequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnKeyPress = tknEnter
  end
  object edtTitle: TDBEdit
    Left = 139
    Top = 80
    Width = 398
    Height = 21
    DataField = 'title'
    DataSource = DSrequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnKeyPress = tknEnter
  end
  object DBEdit9: TDBEdit
    Left = 139
    Top = 224
    Width = 69
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'login'
    DataSource = DSrequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
    OnKeyPress = tknEnter
  end
  object tglUbah: TDBEdit
    Left = 139
    Top = 248
    Width = 238
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'ubah'
    DataSource = DSrequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    OnKeyPress = tknEnter
  end
  object btnedit: TbsSkinButton
    Left = 273
    Top = 543
    Width = 75
    Height = 27
    TabOrder = 12
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
    Caption = 'Edit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btneditClick
  end
  object btntambah: TbsSkinButton
    Left = 193
    Top = 543
    Width = 75
    Height = 25
    TabOrder = 11
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
    Caption = 'Tambah'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btntambahClick
  end
  object btnhapus: TbsSkinButton
    Left = 353
    Top = 543
    Width = 75
    Height = 25
    TabOrder = 13
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
    Caption = 'Hapus'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnhapusClick
  end
  object btnkeluar: TbsSkinButton
    Left = 273
    Top = 574
    Width = 75
    Height = 25
    TabOrder = 14
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
    Caption = 'Keluar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnkeluarClick
  end
  object btnsimpan: TbsSkinButton
    Left = 225
    Top = 551
    Width = 75
    Height = 25
    TabOrder = 15
    Visible = False
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
    Caption = 'Simpan'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnsimpanClick
  end
  object btnbatal: TbsSkinButton
    Left = 321
    Top = 551
    Width = 75
    Height = 25
    TabOrder = 16
    Visible = False
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
    Caption = 'Batal'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnbatalClick
  end
  object cboPriority: TComboBox
    Left = 139
    Top = 152
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
    TabOrder = 5
    OnKeyPress = tknEnter
    Items.Strings = (
      'High'
      'Normal'
      'Low')
  end
  object dblKategori: TDBLookupComboBox
    Left = 139
    Top = 128
    Width = 145
    Height = 21
    DataField = 'category'
    DataSource = DSrequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'id'
    ListField = 'category'
    ListFieldIndex = 1
    ListSource = DSkategori
    ParentFont = False
    TabOrder = 4
    OnKeyPress = tknEnter
  end
  object dblProcessor: TDBLookupComboBox
    Left = 139
    Top = 200
    Width = 145
    Height = 21
    DataField = 'processor'
    DataSource = DSrequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'id'
    ListField = 'nama'
    ListFieldIndex = 1
    ListSource = DSprocessor
    ParentFont = False
    TabOrder = 7
    OnKeyPress = tknEnter
  end
  object edtRequest: TDBEdit
    Left = 139
    Top = 56
    Width = 238
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'requested'
    DataSource = DSrequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    OnKeyPress = tknEnter
  end
  object tglProcess: TDateTimePicker
    Left = 307
    Top = 176
    Width = 145
    Height = 21
    Date = 38520.662762094910000000
    Format = 'dd MMMM yyyy'
    Time = 38520.662762094910000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnKeyPress = tknEnter
  end
  object DBGrid1: TDBGrid
    Left = 50
    Top = 280
    Width = 521
    Height = 249
    TabStop = False
    Color = clWhite
    DataSource = DSrequest
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 17
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'title'
        Title.Caption = 'Title'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'artist'
        Title.Caption = 'Artist'
        Width = 215
        Visible = True
      end>
  end
  object dblArranger: TDBLookupComboBox
    Left = 139
    Top = 176
    Width = 145
    Height = 21
    DataField = 'arranger'
    DataSource = DSrequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    KeyField = 'id'
    ListField = 'arranger'
    ListFieldIndex = 1
    ListSource = DSarranger
    ParentFont = False
    TabOrder = 6
    OnKeyPress = tknEnter
  end
  object DBCheckBox1: TDBCheckBox
    Left = 288
    Top = 178
    Width = 17
    Height = 17
    DataField = 'selesai'
    DataSource = DSrequest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    ValueChecked = 'True'
    ValueUnchecked = 'False'
  end
  object bsSkinButton1: TbsSkinButton
    Left = 281
    Top = 32
    Width = 24
    Height = 20
    TabOrder = 19
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
    Caption = '...'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton1Click
  end
  object bsSkinButton2: TbsSkinButton
    Left = 545
    Top = 80
    Width = 24
    Height = 20
    TabOrder = 20
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
    Caption = '...'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton2Click
  end
  object bsSkinButton3: TbsSkinButton
    Left = 545
    Top = 104
    Width = 24
    Height = 20
    TabOrder = 21
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
    Caption = '...'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton3Click
  end
  object TSrequest: TZTable
    SortedFields = 'id'
    AfterScroll = TSrequestAfterScroll
    TableName = 'TSrequest'
    IndexFieldNames = 'id Asc'
    Left = 8
    Top = 8
    object TSrequestid: TIntegerField
      Alignment = taCenter
      FieldName = 'id'
      Required = True
      DisplayFormat = '00000'
    end
    object TSrequestrequested: TDateTimeField
      FieldName = 'requested'
      DisplayFormat = 'dddd, dd MMMM yyyy'
    end
    object TSrequestartist: TStringField
      FieldName = 'artist'
      FixedChar = True
      Size = 50
    end
    object TSrequesttitle: TStringField
      FieldName = 'title'
      FixedChar = True
      Size = 50
    end
    object TSrequestcategory: TSmallintField
      FieldName = 'category'
    end
    object TSrequestpriority: TSmallintField
      FieldName = 'priority'
    end
    object TSrequestprocessor: TSmallintField
      FieldName = 'processor'
    end
    object TSrequesttanggal: TDateTimeField
      FieldName = 'tanggal'
      DisplayFormat = 'dddd, dd MMMM yyyy'
    end
    object TSrequestlogin: TStringField
      FieldName = 'login'
      FixedChar = True
      Size = 5
    end
    object TSrequestubah: TDateTimeField
      FieldName = 'ubah'
      DisplayFormat = 'dddd, dd MMMM yyyy'
    end
    object TSrequestarranger: TSmallintField
      FieldName = 'arranger'
    end
    object TSrequestselesai: TStringField
      FieldName = 'selesai'
    end
  end
  object DSrequest: TDataSource
    DataSet = TSrequest
    Left = 8
    Top = 24
  end
  object Qid: TZQuery
    SQL.Strings = (
      'SELECT     MAX(id) AS id'
      'FROM         TSrequest')
    Params = <>
    Left = 48
    Top = 10
    object Qidid: TIntegerField
      FieldName = 'id'
      Origin = 'VIZTA.TSrequest.id'
    end
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     *'
      'FROM         TScategory'
      'ORDER BY category')
    Params = <>
    Left = 88
    Top = 10
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
  object DSkategori: TDataSource
    DataSet = Qkategori
    Left = 88
    Top = 24
  end
  object Qprocessor: TZQuery
    SQL.Strings = (
      'SELECT     *'
      'FROM         TSprocess'
      'ORDER BY nama')
    Params = <>
    Left = 128
    Top = 10
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
  object DSprocessor: TDataSource
    DataSet = Qprocessor
    Left = 128
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
    MenusSkinData = FrmInduk.bsSkinData1
    MinHeight = 480
    MinWidth = 640
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 568
    Top = 16
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
    Left = 568
    Top = 40
  end
  object Qarranger: TZQuery
    SQL.Strings = (
      'SELECT     id, arranger'
      'FROM         TSarranger')
    Params = <>
    Left = 160
    Top = 10
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
  object DSarranger: TDataSource
    DataSet = Qarranger
    Left = 160
    Top = 24
  end
end
