object fmember: Tfmember
  Left = 526
  Top = 168
  AutoScroll = False
  BorderIcons = []
  Caption = 'Member'
  ClientHeight = 560
  ClientWidth = 732
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
  object btntambah: TbsSkinButton
    Left = 248
    Top = 488
    Width = 75
    Height = 25
    TabOrder = 2
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
  object btnkeluar: TbsSkinButton
    Left = 328
    Top = 519
    Width = 75
    Height = 25
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
    Left = 289
    Top = 504
    Width = 75
    Height = 25
    TabOrder = 0
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
    OnKeyPress = TKN13
  end
  object btnbatal: TbsSkinButton
    Left = 369
    Top = 503
    Width = 75
    Height = 25
    TabOrder = 1
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
  object btnedit: TbsSkinButton
    Left = 328
    Top = 488
    Width = 75
    Height = 25
    TabOrder = 4
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
  object btnhapus: TbsSkinButton
    Left = 408
    Top = 488
    Width = 75
    Height = 25
    TabOrder = 5
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
  object bsSkinPanel2: TbsSkinPanel
    Left = 17
    Top = 16
    Width = 320
    Height = 249
    TabOrder = 6
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
    object Label1: TLabel
      Left = 16
      Top = 42
      Width = 14
      Height = 13
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 16
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 16
      Top = 68
      Width = 107
      Height = 13
      Caption = 'Tanggal Registrasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 16
      Top = 94
      Width = 78
      Height = 13
      Caption = 'Masa Berlaku'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object dbid: TDBEdit
      Left = 128
      Top = 38
      Width = 177
      Height = 21
      DataField = 'id'
      DataSource = DSmember
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = TKN13
    end
    object DBLkategori: TDBLookupComboBox
      Left = 128
      Top = 12
      Width = 145
      Height = 21
      DataField = 'id_kategori'
      DataSource = DSmember
      DropDownRows = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'id'
      ListField = 'kategori'
      ListSource = DSkatmember
      ParentFont = False
      TabOrder = 1
      OnClick = DBLkategoriClick
      OnKeyPress = TKN13
    end
    object DTMberlaku: TDateTimePicker
      Left = 128
      Top = 90
      Width = 177
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
      TabOrder = 2
      OnKeyPress = TKN13
    end
    object btnCari: TbsSkinButton
      Left = 281
      Top = 12
      Width = 24
      Height = 20
      TabOrder = 3
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
      OnClick = btnCariClick
    end
    object DBEdit3: TDBEdit
      Left = 128
      Top = 64
      Width = 177
      Height = 21
      DataField = 'tgl_registrasi'
      DataSource = DSmember
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 345
    Top = 16
    Width = 368
    Height = 249
    TabOrder = 7
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
    object Label6: TLabel
      Left = 15
      Top = 16
      Width = 33
      Height = 13
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 15
      Top = 41
      Width = 79
      Height = 13
      Caption = 'Tanggal Lahir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 15
      Top = 67
      Width = 39
      Height = 13
      Caption = 'Agama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 15
      Top = 93
      Width = 78
      Height = 13
      Caption = 'Jenis Kelamin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 15
      Top = 144
      Width = 18
      Height = 13
      Caption = 'HP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 15
      Top = 118
      Width = 26
      Height = 13
      Caption = 'Telp'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 15
      Top = 170
      Width = 39
      Height = 13
      Caption = 'E-mail '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 16
      Top = 196
      Width = 39
      Height = 13
      Caption = 'Alamat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object dbnama: TDBEdit
      Left = 126
      Top = 12
      Width = 226
      Height = 21
      DataField = 'Nama'
      DataSource = DSmember
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = TKN13
    end
    object dbhp: TDBEdit
      Left = 126
      Top = 140
      Width = 145
      Height = 21
      DataField = 'HP'
      DataSource = DSmember
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyPress = TKN13
    end
    object dbtelp: TDBEdit
      Left = 126
      Top = 114
      Width = 145
      Height = 21
      DataField = 'Telp'
      DataSource = DSmember
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = TKN13
    end
    object cmbagama: TComboBox
      Left = 126
      Top = 63
      Width = 145
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      OnKeyPress = TKN13
      Items.Strings = (
        ''
        'Islam'
        'Kristen Protestan'
        'Kristen Katholik'
        'Hindu'
        'Budha')
    end
    object cmbkelamin: TComboBox
      Left = 126
      Top = 89
      Width = 145
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'Pria'
      OnClick = cmbkelaminClick
      OnKeyPress = TKN13
      Items.Strings = (
        'Pria'
        'Wanita')
    end
    object DTMlahir: TDateTimePicker
      Left = 126
      Top = 37
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
      TabOrder = 5
      OnKeyPress = TKN13
    end
    object dbemail: TDBEdit
      Left = 126
      Top = 166
      Width = 226
      Height = 21
      DataField = 'email'
      DataSource = DSmember
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 126
      Top = 191
      Width = 226
      Height = 21
      DataField = 'alamat1'
      DataSource = DSmember
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 126
      Top = 216
      Width = 226
      Height = 21
      DataField = 'alamat2'
      DataSource = DSmember
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
  end
  object DBmember: TDBGrid
    Left = 17
    Top = 274
    Width = 696
    Height = 199
    DataSource = DSmember
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMenu
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBmemberDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'Nama'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 391
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'berlaku'
        Title.Alignment = taCenter
        Title.Caption = 'Valid Thru'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 151
        Visible = True
      end>
  end
  object DSmember: TDataSource
    AutoEdit = False
    Left = 104
    Top = 200
  end
  object DSkatmember: TDataSource
    AutoEdit = False
    Left = 152
    Top = 200
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
    MaximizeOnFullScreen = False
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
    Top = 72
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
    Top = 88
  end
  object Qcabang: TZQuery
    Params = <>
    Left = 8
    Top = 480
    object Qcabangid_cabang: TSmallintField
      FieldName = 'id_cabang'
    end
  end
  object Tmembersql: TZTable
    AfterScroll = TmembersqlAfterScroll
    OnCalcFields = TmembersqlCalcFields
    OnFilterRecord = TmembersqlFilterRecord
    Left = 8
    Top = 200
    object Tmembersqlid_kategori: TSmallintField
      FieldName = 'id_kategori'
    end
    object Tmembersqltgl_registrasi: TDateTimeField
      FieldName = 'tgl_registrasi'
    end
    object Tmembersqlberlaku: TDateTimeField
      FieldName = 'berlaku'
    end
    object Tmembersqlnama: TStringField
      FieldName = 'nama'
    end
    object TmembersqlTgl_lahir: TDateTimeField
      FieldName = 'Tgl_lahir'
    end
    object TmembersqlAgama: TSmallintField
      FieldName = 'Agama'
    end
    object TmembersqlHP: TStringField
      FieldName = 'HP'
    end
    object TmembersqlTelp: TStringField
      FieldName = 'Telp'
    end
    object Tmembersqlpoin: TIntegerField
      FieldName = 'poin'
    end
    object Tmembersqlalamat1: TStringField
      FieldName = 'alamat1'
    end
    object Tmembersqlalamat2: TStringField
      FieldName = 'alamat2'
    end
    object TmembersqlCalkelamin: TStringField
      FieldKind = fkCalculated
      FieldName = 'Calkelamin'
      Calculated = True
    end
    object TmembersqlCalAgama: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalAgama'
      Calculated = True
    end
    object TmembersqltglUpdate: TDateTimeField
      FieldKind = fkCalculated
      FieldName = 'tglUpdate'
      Calculated = True
    end
    object Tmembersqlemail: TStringField
      FieldName = 'email'
    end
    object Tmembersqlid: TStringField
      FieldName = 'id'
    end
    object TmembersqlJenis_kelamin_boolean: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Jenis_kelamin_boolean'
      Calculated = True
    end
    object TmembersqlJenis_kelamin: TStringField
      FieldName = 'Jenis_kelamin'
    end
  end
end
