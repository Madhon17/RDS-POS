object Freservasi: TFreservasi
  Left = 242
  Top = 145
  AutoScroll = False
  BorderIcons = []
  Caption = 'Reservasi'
  ClientHeight = 599
  ClientWidth = 827
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
  object btnbatal: TbsSkinButton
    Left = 416
    Top = 534
    Width = 75
    Height = 25
    TabOrder = 5
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
  object btnsimpan: TbsSkinButton
    Left = 341
    Top = 534
    Width = 75
    Height = 25
    TabOrder = 4
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
  object btnedit: TbsSkinButton
    Left = 377
    Top = 520
    Width = 75
    Height = 25
    TabOrder = 1
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
    Left = 302
    Top = 520
    Width = 75
    Height = 25
    TabOrder = 0
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
  object btndelete: TbsSkinButton
    Left = 452
    Top = 520
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
    Caption = 'Hapus'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btndeleteClick
  end
  object btnkeluar: TbsSkinButton
    Left = 377
    Top = 551
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
  object bsSkinPanel2: TbsSkinPanel
    Left = 376
    Top = 296
    Width = 432
    Height = 201
    TabOrder = 8
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
    object Label3: TLabel
      Left = 32
      Top = 12
      Width = 33
      Height = 13
      Caption = 'Room'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 32
      Top = 37
      Width = 37
      Height = 13
      Caption = 'Durasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 177
      Top = 37
      Width = 23
      Height = 13
      Caption = 'Jam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 32
      Top = 64
      Width = 47
      Height = 13
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 32
      Top = 92
      Width = 18
      Height = 13
      Caption = 'DP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 32
      Top = 115
      Width = 66
      Height = 13
      Caption = 'Keterangan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 32
      Top = 178
      Width = 37
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 144
      Top = 178
      Width = 18
      Height = 13
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBLRoom: TDBLookupComboBox
      Left = 120
      Top = 8
      Width = 145
      Height = 21
      DataField = 'idroom'
      DataSource = DSreservasi
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      KeyField = 'id'
      ListField = 'namaroom'
      ListSource = DSroom
      ParentFont = False
      TabOrder = 0
    end
    object SpinEdit1: TSpinEdit
      Left = 120
      Top = 34
      Width = 49
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 0
      OnExit = SpinEdit1Exit
      OnKeyPress = Tkn13
    end
    object tanggal: TDateTimePicker
      Left = 120
      Top = 60
      Width = 217
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dddd, dd MMMM yyyy'
      Time = 38520.662762094910000000
      DateFormat = dfLong
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Tkn13
    end
    object waktu: TDateTimePicker
      Left = 344
      Top = 60
      Width = 65
      Height = 21
      Date = 38520.662762094910000000
      Format = 'HH:mm'
      Time = 38520.662762094910000000
      DateFormat = dfLong
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
      TabOrder = 3
      OnKeyPress = Tkn13
    end
    object DBDP: TDBEdit
      Left = 120
      Top = 88
      Width = 121
      Height = 21
      DataField = 'DP'
      DataSource = DSreservasi
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyPress = Tkn13
    end
    object DBMemo1: TDBMemo
      Left = 120
      Top = 112
      Width = 289
      Height = 57
      DataField = 'keterangan'
      DataSource = DSreservasi
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Status: TDBCheckBox
      Left = 120
      Top = 176
      Width = 17
      Height = 17
      Caption = 'OK'
      DataField = 'status'
      DataSource = DSreservasi
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      ValueChecked = '1'
      ValueUnchecked = '0'
      OnKeyPress = Tkn13
    end
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 17
    Top = 296
    Width = 352
    Height = 201
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
    object Label1: TLabel
      Left = 24
      Top = 12
      Width = 33
      Height = 13
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 24
      Top = 36
      Width = 40
      Height = 13
      Caption = 'Telpon'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 26
      Top = 60
      Width = 18
      Height = 13
      Caption = 'HP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 24
      Top = 84
      Width = 39
      Height = 13
      Caption = 'Alamat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBnama: TDBEdit
      Left = 104
      Top = 8
      Width = 225
      Height = 21
      DataField = 'nama'
      DataSource = DSreservasi
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Tkn13
    end
    object DBtelpon: TDBEdit
      Left = 104
      Top = 32
      Width = 121
      Height = 21
      DataField = 'telpon'
      DataSource = DSreservasi
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyPress = Tkn13
    end
    object DBHp: TDBEdit
      Left = 104
      Top = 56
      Width = 121
      Height = 21
      DataField = 'HP'
      DataSource = DSreservasi
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyPress = Tkn13
    end
    object DBalamat: TDBEdit
      Left = 104
      Top = 80
      Width = 225
      Height = 21
      DataField = 'alamat'
      DataSource = DSreservasi
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyPress = Tkn13
    end
  end
  object bsSkinPanel3: TbsSkinPanel
    Left = 17
    Top = 33
    Width = 791
    Height = 256
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
    object Kategori: TLabel
      Left = 24
      Top = 15
      Width = 33
      Height = 13
      Caption = 'Room'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 272
      Top = 15
      Width = 37
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 44
      Width = 745
      Height = 205
      DataSource = DSreservasi
      FixedColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Room'
          Title.Alignment = taCenter
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Title.Caption = 'Nama'
          Width = 211
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'telpon'
          Title.Alignment = taCenter
          Title.Caption = 'Telpon'
          Width = 110
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'HP'
          Title.Alignment = taCenter
          Width = 110
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'tanggal'
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'durasi'
          Title.Alignment = taCenter
          Title.Caption = 'Durasi'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Title.Alignment = taCenter
          Title.Caption = 'Status'
          Visible = True
        end>
    end
    object DBCheckBox1: TDBCheckBox
      Left = 720
      Top = 72
      Width = 17
      Height = 17
      DataField = 'status'
      DataSource = DSreservasi
      TabOrder = 1
      ValueChecked = 'True'
      ValueUnchecked = 'False'
      Visible = False
    end
    object cmbKategori: TComboBox
      Left = 87
      Top = 11
      Width = 154
      Height = 21
      Style = csDropDownList
      DropDownCount = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 2
      OnClick = btnGoClick
    end
    object cmbStatus: TComboBox
      Left = 335
      Top = 11
      Width = 137
      Height = 21
      Style = csDropDownList
      DropDownCount = 25
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 1
      ParentFont = False
      TabOrder = 3
      Text = 'Reserve'
      OnClick = btnGoClick
      Items.Strings = (
        ''
        'Reserve'
        'OK')
    end
    object btnGo: TbsSkinButton
      Left = 479
      Top = 9
      Width = 75
      Height = 25
      TabOrder = 4
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
      Caption = 'Go'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnGoClick
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
    Left = 24
  end
  object Qroom: TZQuery
    SQL.Strings = (
      'SELECT     namaroom, id'
      'FROM         troom'
      'ORDER BY namaroom')
    Params = <>
    Left = 64
    object Qroomnamaroom: TStringField
      FieldName = 'namaroom'
      Origin = 'VIZTA.troom.namaroom'
      FixedChar = True
      Size = 4
    end
    object Qroomid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.troom.id'
    end
  end
  object DSreservasi: TDataSource
    AutoEdit = False
    DataSet = Treservasi
    Left = 136
  end
  object DSroom: TDataSource
    AutoEdit = False
    DataSet = Qroom
    Left = 80
  end
  object Qid: TZQuery
    Params = <>
    Left = 168
  end
  object Treservasi: TZTable
    AfterScroll = TreservasiAfterScroll
    TableName = 'Treservasi'
    Left = 120
    object Treservasiid: TSmallintField
      FieldName = 'id'
    end
    object Treservasiidroom: TSmallintField
      FieldName = 'idroom'
    end
    object Treservasinama: TStringField
      FieldName = 'nama'
      FixedChar = True
      Size = 30
    end
    object Treservasialamat: TStringField
      FieldName = 'alamat'
      FixedChar = True
      Size = 30
    end
    object Treservasitelpon: TStringField
      FieldName = 'telpon'
      FixedChar = True
    end
    object Treservasitanggal: TDateTimeField
      FieldName = 'tanggal'
      DisplayFormat = 'dd-MM-yyyy HH:mm'
    end
    object Treservasidurasi: TSmallintField
      Alignment = taCenter
      FieldName = 'durasi'
    end
    object TreservasiHP: TStringField
      FieldName = 'HP'
      FixedChar = True
    end
    object Treservasistatus: TStringField
      FieldName = 'status'
    end
    object TreservasiDP: TFloatField
      FieldName = 'DP'
      DisplayFormat = '#,0'
    end
    object TreservasiRoom: TStringField
      FieldKind = fkLookup
      FieldName = 'Room'
      LookupDataSet = Qroom
      LookupKeyFields = 'id'
      LookupResultField = 'namaroom'
      KeyFields = 'idroom'
      Lookup = True
    end
    object Treservasiketerangan: TMemoField
      FieldName = 'keterangan'
      BlobType = ftMemo
    end
  end
  object Qothers: TZQuery
    SQL.Strings = (
      'SELECT     *'
      'FROM         Treservasi')
    Params = <>
    Left = 200
  end
end
