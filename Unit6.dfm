object fkasir: Tfkasir
  Left = 425
  Top = 107
  AutoScroll = False
  BorderIcons = []
  Caption = 'Kasir'
  ClientHeight = 619
  ClientWidth = 895
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPanel1: TbsSkinPanel
    Left = 30
    Top = 24
    Width = 315
    Height = 521
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
    Caption = 'bsSkinPanel1'
    object btnFix: TbsSkinButton
      Left = 13
      Top = 488
      Width = 289
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
      Caption = 'FIX'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnFixClick
    end
    object DBGrid1: TDBGrid
      Left = 13
      Top = 10
      Width = 289
      Height = 503
      Color = clWhite
      DataSource = DSkasir
      FixedColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Pitch = fpVariable
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'login'
          Title.Alignment = taCenter
          Title.Caption = 'Login'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Title.Caption = 'Nama'
          Width = 157
          Visible = True
        end>
    end
  end
  object btnedit: TbsSkinButton
    Left = 402
    Top = 561
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
    Caption = 'Edit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btneditClick
  end
  object btntambah: TbsSkinButton
    Left = 322
    Top = 561
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
    Caption = 'Tambah'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btntambahClick
  end
  object btnhapus: TbsSkinButton
    Left = 481
    Top = 561
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
    Caption = 'Hapus'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnhapusClick
  end
  object btnkeluar: TbsSkinButton
    Left = 402
    Top = 592
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
    Caption = 'Keluar'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnkeluarClick
  end
  object btnsimpan: TbsSkinButton
    Left = 450
    Top = 577
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
    Left = 370
    Top = 577
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
  object bsSkinPanel2: TbsSkinPanel
    Left = 362
    Top = 24
    Width = 391
    Height = 118
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
    object Kategori: TLabel
      Left = 20
      Top = 16
      Width = 48
      Height = 13
      Caption = 'Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Login: TLabel
      Left = 20
      Top = 41
      Width = 32
      Height = 13
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Hak: TLabel
      Left = 20
      Top = 66
      Width = 59
      Height = 13
      Caption = 'Hak Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Password: TLabel
      Left = 20
      Top = 91
      Width = 55
      Height = 13
      Caption = 'Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 172
      Top = 66
      Width = 35
      Height = 13
      Caption = 'Admin'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 276
      Top = 66
      Width = 41
      Height = 13
      Caption = 'Station'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBkatuser: TDBLookupComboBox
      Left = 104
      Top = 12
      Width = 265
      Height = 21
      DataField = 'id'
      DataSource = DSkasir
      KeyField = 'id'
      ListField = 'kategori'
      ListSource = DSkatuser
      TabOrder = 0
      OnClick = DBkatuserClick
      OnKeyPress = TKN13
    end
    object dblogin: TDBEdit
      Left = 104
      Top = 37
      Width = 265
      Height = 21
      DataField = 'login'
      DataSource = DSkasir
      ReadOnly = True
      TabOrder = 1
      OnKeyPress = TKN13
    end
    object DBCheckBox1: TDBCheckBox
      Left = 104
      Top = 64
      Width = 41
      Height = 17
      DataField = 'hak'
      DataSource = DSkasir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      ValueChecked = '1'
      ValueUnchecked = '0'
      OnKeyPress = TKN13
    end
    object dbpassword: TDBEdit
      Left = 104
      Top = 87
      Width = 265
      Height = 21
      DataField = 'password'
      DataSource = DSkasir
      PasswordChar = '*'
      TabOrder = 3
      OnKeyPress = TKN13
    end
    object DBCheckBox2: TDBCheckBox
      Left = 220
      Top = 65
      Width = 45
      Height = 14
      DataField = 'admin'
      DataSource = DSkasir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox49: TDBCheckBox
      Left = 324
      Top = 65
      Width = 45
      Height = 14
      DataField = 'cs'
      DataSource = DSkasir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
  end
  object bsSkinPanel3: TbsSkinPanel
    Left = 362
    Top = 157
    Width = 500
    Height = 124
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
    Caption = 'bsSkinPanel3'
    object Nama: TLabel
      Left = 18
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
    object Label1: TLabel
      Left = 253
      Top = 16
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
    object Label2: TLabel
      Left = 18
      Top = 42
      Width = 75
      Height = 13
      Caption = 'Tempat Lahir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Agama: TLabel
      Left = 253
      Top = 41
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
    object Label6: TLabel
      Left = 18
      Top = 69
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
    object Label3: TLabel
      Left = 253
      Top = 66
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
    object Label5: TLabel
      Left = 18
      Top = 96
      Width = 78
      Height = 13
      Caption = 'Mulai Bekerja'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 253
      Top = 92
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
    object dbnama: TDBEdit
      Left = 104
      Top = 12
      Width = 138
      Height = 21
      DataField = 'nama'
      DataSource = DSkasir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = TKN13
    end
    object cmbjnskelamin: TComboBox
      Left = 343
      Top = 12
      Width = 138
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'PRIA'
      OnKeyPress = TKN13
      Items.Strings = (
        'PRIA'
        'WANITA')
    end
    object dbtempatlahir: TDBEdit
      Left = 104
      Top = 38
      Width = 138
      Height = 21
      DataField = 'tempat_lahir'
      DataSource = DSkasir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = TKN13
    end
    object cmbagama: TComboBox
      Left = 343
      Top = 36
      Width = 138
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 1
      ParentFont = False
      TabOrder = 3
      Text = 'ISLAM'
      OnKeyPress = TKN13
      Items.Strings = (
        ''
        'ISLAM'
        'KRISTEN PROTESTAN'
        'KRISTEN KATHOLIK'
        'HINDU'
        'BUDHA')
    end
    object dtmtgl_lahir: TDateTimePicker
      Left = 104
      Top = 65
      Width = 138
      Height = 21
      CalColors.TitleTextColor = clBlack
      Date = 38610.672954641200000000
      Format = 'dd MMMM yyyy'
      Time = 38610.672954641200000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = TKN13
    end
    object dbhp: TDBEdit
      Left = 343
      Top = 60
      Width = 138
      Height = 21
      DataField = 'HP'
      DataSource = DSkasir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyPress = TKN13
    end
    object dtmmulaikerja: TDateTimePicker
      Left = 104
      Top = 92
      Width = 138
      Height = 21
      CalColors.TitleTextColor = clBlack
      Date = 38610.672954641200000000
      Format = 'dd MMMM yyyy'
      Time = 38610.672954641200000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnKeyPress = TKN13
    end
    object dbtelp: TDBEdit
      Left = 343
      Top = 92
      Width = 138
      Height = 21
      DataField = 'telp'
      DataSource = DSkasir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = TKN13
    end
  end
  object bsSkinPanel6: TbsSkinPanel
    Left = 763
    Top = 25
    Width = 97
    Height = 118
    TabOrder = 9
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
    Caption = 'bsSkinPanel6'
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 95
      Height = 116
      Hint = 'Clik Disini Untuk Tambah/Ubah Image'
      Align = alClient
      Stretch = True
      OnClick = Image1Click
    end
  end
  object bsSkinPageControl1: TbsSkinPageControl
    Left = 362
    Top = 294
    Width = 500
    Height = 251
    ActivePage = bsSkinTabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 10
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBtnText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = True
    DefaultItemHeight = 20
    SkinDataName = 'tab'
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'File'
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Master'
      object DBCheckBox4: TDBCheckBox
        Left = 57
        Top = 16
        Width = 144
        Height = 17
        Caption = 'Room'
        DataField = 'pbroom'
        DataSource = DSkasir
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox3: TDBCheckBox
        Left = 57
        Top = 40
        Width = 144
        Height = 17
        Caption = 'Menu'
        DataField = 'pbkomposisi'
        DataSource = DSkasir
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox5: TDBCheckBox
        Left = 57
        Top = 88
        Width = 144
        Height = 17
        Caption = 'Persedian Barang'
        DataField = 'pbbarang'
        DataSource = DSkasir
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox6: TDBCheckBox
        Left = 57
        Top = 112
        Width = 144
        Height = 17
        Caption = 'Supplyer'
        DataField = 'pbdsitributor'
        DataSource = DSkasir
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox7: TDBCheckBox
        Left = 57
        Top = 136
        Width = 144
        Height = 17
        Caption = 'Gudang '
        DataField = 'pbGudang'
        DataSource = DSkasir
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox8: TDBCheckBox
        Left = 57
        Top = 160
        Width = 144
        Height = 17
        Caption = 'Member'
        DataField = 'pbmember'
        DataSource = DSkasir
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox61: TDBCheckBox
        Left = 57
        Top = 64
        Width = 144
        Height = 17
        Caption = 'Menu Sold Out'
        DataField = 'pbMenuSoldOut'
        DataSource = DSkasir
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object bsSkinTabSheet3: TbsSkinTabSheet
      Caption = 'Billing'
      object DBCheckBox9: TDBCheckBox
        Left = 113
        Top = 16
        Width = 144
        Height = 17
        Caption = 'Billing'
        DataField = 'pbbill'
        DataSource = DSkasir
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox10: TDBCheckBox
        Left = 113
        Top = 40
        Width = 144
        Height = 17
        Caption = 'Payment'
        DataField = 'pbpayment'
        DataSource = DSkasir
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox11: TDBCheckBox
        Left = 113
        Top = 64
        Width = 144
        Height = 17
        Caption = 'Bill Correction'
        DataField = 'pbbillcor'
        DataSource = DSkasir
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox12: TDBCheckBox
        Left = 113
        Top = 112
        Width = 144
        Height = 17
        Caption = 'Pindah Room'
        DataField = 'pbpindahroom'
        DataSource = DSkasir
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox13: TDBCheckBox
        Left = 113
        Top = 136
        Width = 144
        Height = 17
        Caption = 'Reservasi'
        DataField = 'pbreservasi'
        DataSource = DSkasir
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox14: TDBCheckBox
        Left = 113
        Top = 160
        Width = 144
        Height = 17
        Caption = 'Konversi Payment'
        DataField = 'pbkonversipayment'
        DataSource = DSkasir
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox15: TDBCheckBox
        Left = 113
        Top = 184
        Width = 144
        Height = 17
        Caption = 'Control Room'
        DataField = 'pbcontrolroom'
        DataSource = DSkasir
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox54: TDBCheckBox
        Left = 113
        Top = 88
        Width = 144
        Height = 17
        Caption = 'Payment Control'
        DataField = 'pbpaymentc'
        DataSource = DSkasir
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object bsSkinTabSheet4: TbsSkinTabSheet
      Caption = 'Transaksi'
      object DBCheckBox16: TDBCheckBox
        Left = 161
        Top = 16
        Width = 144
        Height = 17
        Caption = 'Order Menu'
        DataField = 'pbordermenu'
        DataSource = DSkasir
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox17: TDBCheckBox
        Left = 161
        Top = 40
        Width = 144
        Height = 17
        Caption = 'Order Room'
        DataField = 'pborderroom'
        DataSource = DSkasir
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox18: TDBCheckBox
        Left = 161
        Top = 64
        Width = 144
        Height = 17
        Caption = 'Order Lain Lain'
        DataField = 'pborderdll'
        DataSource = DSkasir
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox19: TDBCheckBox
        Left = 161
        Top = 88
        Width = 144
        Height = 17
        Caption = 'Purchase Order'
        DataField = 'pbbarangmasuk'
        DataSource = DSkasir
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox20: TDBCheckBox
        Left = 161
        Top = 112
        Width = 144
        Height = 17
        Caption = 'Mutasi'
        DataField = 'pbGudangMutasi'
        DataSource = DSkasir
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object bsSkinTabSheet5: TbsSkinTabSheet
      Caption = 'Setup'
      object DBCheckBox21: TDBCheckBox
        Left = 225
        Top = 8
        Width = 144
        Height = 17
        Caption = 'Kasir'
        DataField = 'pbkasir'
        DataSource = DSkasir
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox22: TDBCheckBox
        Left = 225
        Top = 32
        Width = 144
        Height = 17
        Caption = 'Room Kategori'
        DataField = 'pbkatroom'
        DataSource = DSkasir
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox23: TDBCheckBox
        Left = 225
        Top = 56
        Width = 144
        Height = 17
        Caption = 'Menu Kategori'
        DataField = 'pbkatmenu'
        DataSource = DSkasir
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox24: TDBCheckBox
        Left = 225
        Top = 80
        Width = 144
        Height = 17
        Caption = 'Member kategori'
        DataField = 'pbkatmember'
        DataSource = DSkasir
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox25: TDBCheckBox
        Left = 225
        Top = 104
        Width = 144
        Height = 17
        Caption = 'User kategori'
        DataField = 'pbkatuser'
        DataSource = DSkasir
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox26: TDBCheckBox
        Left = 225
        Top = 128
        Width = 144
        Height = 17
        Caption = 'Satuan Barang'
        DataField = 'pbsatuan'
        DataSource = DSkasir
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox27: TDBCheckBox
        Left = 225
        Top = 152
        Width = 144
        Height = 17
        Caption = 'konversi Barang satuan'
        DataField = 'pbSatuanKonversi'
        DataSource = DSkasir
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox28: TDBCheckBox
        Left = 225
        Top = 176
        Width = 144
        Height = 17
        Caption = 'Kategori Barang'
        DataField = 'pbkatbarang'
        DataSource = DSkasir
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox29: TDBCheckBox
        Left = 225
        Top = 200
        Width = 144
        Height = 17
        Caption = 'Pesan Bill'
        DataField = 'pbpesanbill'
        DataSource = DSkasir
        TabOrder = 8
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox30: TDBCheckBox
        Left = 361
        Top = 8
        Width = 122
        Height = 17
        Caption = 'Password Room'
        DataField = 'pbroompassword'
        DataSource = DSkasir
        TabOrder = 9
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox31: TDBCheckBox
        Left = 361
        Top = 32
        Width = 122
        Height = 17
        Caption = 'TV Channel '
        DataField = 'pbtvchannel'
        DataSource = DSkasir
        TabOrder = 10
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox32: TDBCheckBox
        Left = 361
        Top = 56
        Width = 122
        Height = 17
        Caption = 'Running Text'
        DataField = 'pbrunningtext'
        DataSource = DSkasir
        TabOrder = 11
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox33: TDBCheckBox
        Left = 361
        Top = 80
        Width = 122
        Height = 17
        Caption = 'Bank'
        DataField = 'pbbank'
        DataSource = DSkasir
        TabOrder = 12
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox53: TDBCheckBox
        Left = 361
        Top = 104
        Width = 122
        Height = 17
        Caption = 'Promo'
        DataField = 'pbpromo'
        DataSource = DSkasir
        TabOrder = 13
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox55: TDBCheckBox
        Left = 361
        Top = 128
        Width = 122
        Height = 17
        Caption = 'Pajak'
        DataField = 'pbpajak'
        DataSource = DSkasir
        TabOrder = 14
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox59: TDBCheckBox
        Left = 361
        Top = 152
        Width = 122
        Height = 17
        Caption = 'Tax && Service'
        DataField = 'pbtaxservice'
        DataSource = DSkasir
        TabOrder = 15
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox63: TDBCheckBox
        Left = 361
        Top = 176
        Width = 122
        Height = 17
        Caption = 'Voucher'
        DataField = 'pbVoucher'
        DataSource = DSkasir
        TabOrder = 16
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object bsSkinTabSheet6: TbsSkinTabSheet
      Caption = 'Report'
      object DBCheckBox34: TDBCheckBox
        Left = 17
        Top = 8
        Width = 144
        Height = 17
        Caption = 'Room'
        DataField = 'pbroomreport'
        DataSource = DSkasir
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox35: TDBCheckBox
        Left = 17
        Top = 56
        Width = 144
        Height = 17
        Caption = 'Rekap Penjualan'
        DataField = 'pbdetailpenjualan'
        DataSource = DSkasir
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox36: TDBCheckBox
        Left = 17
        Top = 32
        Width = 144
        Height = 17
        Caption = 'Waiters'
        DataField = 'pbwaiterreport'
        DataSource = DSkasir
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox37: TDBCheckBox
        Left = 17
        Top = 104
        Width = 144
        Height = 17
        Caption = 'Omset Harian'
        DataField = 'pbsummary'
        DataSource = DSkasir
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox38: TDBCheckBox
        Left = 17
        Top = 128
        Width = 144
        Height = 17
        Caption = 'Stok Barang Masuk'
        DataField = 'pbreportmasuk'
        DataSource = DSkasir
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox39: TDBCheckBox
        Left = 17
        Top = 152
        Width = 144
        Height = 17
        Caption = 'Stok Barang Keluar'
        DataField = 'pbreportkeluar'
        DataSource = DSkasir
        TabOrder = 5
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox40: TDBCheckBox
        Left = 17
        Top = 176
        Width = 144
        Height = 17
        Caption = 'Stok Barang'
        DataField = 'pbstokbarang'
        DataSource = DSkasir
        TabOrder = 6
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox41: TDBCheckBox
        Left = 17
        Top = 200
        Width = 144
        Height = 17
        Caption = 'Data Menu'
        DataField = 'pbmenureport'
        DataSource = DSkasir
        TabOrder = 7
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox42: TDBCheckBox
        Left = 137
        Top = 8
        Width = 144
        Height = 17
        Caption = 'Data Member'
        DataField = 'pbdatamember'
        DataSource = DSkasir
        TabOrder = 8
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox43: TDBCheckBox
        Left = 137
        Top = 32
        Width = 144
        Height = 17
        Caption = 'Transaksi Member'
        DataField = 'pbdetailmemberreport'
        DataSource = DSkasir
        TabOrder = 9
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox44: TDBCheckBox
        Left = 137
        Top = 56
        Width = 144
        Height = 17
        Caption = 'Rekapitulasi Member'
        DataField = 'pbmemberreport'
        DataSource = DSkasir
        TabOrder = 10
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox45: TDBCheckBox
        Left = 137
        Top = 80
        Width = 144
        Height = 17
        Caption = 'Saran'
        DataField = 'pbsaran'
        DataSource = DSkasir
        TabOrder = 11
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox52: TDBCheckBox
        Left = 137
        Top = 104
        Width = 144
        Height = 17
        Caption = 'Payment'
        DataField = 'pbpaymentdetailreport'
        DataSource = DSkasir
        TabOrder = 12
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox58: TDBCheckBox
        Left = 18
        Top = 80
        Width = 111
        Height = 17
        Caption = 'Report Order'
        DataField = 'pbreportorder'
        DataSource = DSkasir
        TabOrder = 13
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox60: TDBCheckBox
        Left = 137
        Top = 128
        Width = 144
        Height = 17
        Caption = 'Control Room'
        DataField = 'pbControlRoomReport'
        DataSource = DSkasir
        TabOrder = 14
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox62: TDBCheckBox
        Left = 137
        Top = 152
        Width = 144
        Height = 17
        Caption = 'Activity'
        DataField = 'pbAuthorizationReport'
        DataSource = DSkasir
        TabOrder = 15
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox64: TDBCheckBox
        Left = 137
        Top = 176
        Width = 144
        Height = 17
        Caption = 'Voucher'
        DataField = 'pbVoucherReport'
        DataSource = DSkasir
        TabOrder = 16
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object bsSkinTabSheet7: TbsSkinTabSheet
      Caption = 'Tools'
      object DBCheckBox46: TDBCheckBox
        Left = 337
        Top = 56
        Width = 144
        Height = 17
        Caption = 'Member Update'
        DataField = 'pbMemberUpdate'
        DataSource = DSkasir
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox47: TDBCheckBox
        Left = 337
        Top = 80
        Width = 144
        Height = 17
        Caption = 'Check Server'
        DataField = 'pbCheckServer'
        DataSource = DSkasir
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object DBCheckBox48: TDBCheckBox
        Left = 337
        Top = 104
        Width = 144
        Height = 17
        Caption = 'Kirim Lagu'
        DataField = 'pbkirimlagu'
        DataSource = DSkasir
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox50: TDBCheckBox
        Left = 337
        Top = 32
        Width = 144
        Height = 17
        Caption = 'Song List Update'
        DataField = 'pbSongList'
        DataSource = DSkasir
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
      object DBCheckBox51: TDBCheckBox
        Left = 337
        Top = 8
        Width = 144
        Height = 17
        Caption = 'Song Update'
        DataField = 'pdUpdateLagu'
        DataSource = DSkasir
        TabOrder = 4
        ValueChecked = '1'
        ValueUnchecked = '0'
        Visible = False
      end
    end
    object bsSkinTabSheet8: TbsSkinTabSheet
      Caption = 'Administrator'
      object DBCheckBox56: TDBCheckBox
        Left = 17
        Top = 40
        Width = 144
        Height = 17
        Caption = 'Shutdown Server'
        DataField = 'pbshutdownserver'
        DataSource = DSkasir
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCheckBox57: TDBCheckBox
        Left = 17
        Top = 16
        Width = 144
        Height = 17
        Caption = 'Backup Database'
        DataField = 'pbbackupserver'
        DataSource = DSkasir
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
  end
  object DSkasir: TDataSource
    AutoEdit = False
    Left = 72
    Top = 16
  end
  object DSkatuser: TDataSource
    AutoEdit = False
    Left = 224
    Top = 24
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 795
    Top = 73
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
    MinHeight = 0
    MinWidth = 0
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
  object tkasir: TZTable
    AfterScroll = tkasirAfterScroll
    OnCalcFields = tkasirCalcFields
    Left = 8
    Top = 152
    object tkasirid: TSmallintField
      FieldName = 'id'
    end
    object tkasirlogin: TStringField
      FieldName = 'login'
    end
    object tkasirpassword: TStringField
      FieldName = 'password'
    end
    object tkasirhak: TStringField
      FieldName = 'hak'
    end
    object tkasirnama: TStringField
      FieldName = 'nama'
    end
    object tkasirtgl_lahir: TDateTimeField
      FieldName = 'tgl_lahir'
    end
    object tkasirtempat_lahir: TStringField
      FieldName = 'tempat_lahir'
    end
    object tkasiragama: TSmallintField
      FieldName = 'agama'
    end
    object tkasirjenis_kelamin: TSmallintField
      FieldName = 'jenis_kelamin'
    end
    object tkasirHP: TStringField
      FieldName = 'HP'
    end
    object tkasirtelp: TStringField
      FieldName = 'telp'
    end
    object tkasirmulai_kerja: TDateTimeField
      FieldName = 'mulai_kerja'
    end
    object tkasirfoto: TBlobField
      FieldName = 'foto'
    end
    object tkasiradmin: TStringField
      FieldName = 'admin'
    end
    object tkasirpbkatroom: TStringField
      FieldName = 'pbkatroom'
    end
    object tkasirpbkatmenu: TStringField
      FieldName = 'pbkatmenu'
    end
    object tkasirpbbar: TStringField
      FieldName = 'pbbar'
    end
    object tkasirsecure: TStringField
      FieldName = 'secure'
      FixedChar = True
      Size = 100
    end
    object tkasirpbkasir: TStringField
      FieldName = 'pbkasir'
    end
    object tkasirpbkatmember: TStringField
      FieldName = 'pbkatmember'
    end
    object tkasirpbroom: TStringField
      FieldName = 'pbroom'
    end
    object tkasirpbmember: TStringField
      FieldName = 'pbmember'
    end
    object tkasirpbordermenu: TStringField
      FieldName = 'pbordermenu'
    end
    object tkasirpborderroom: TStringField
      FieldName = 'pborderroom'
    end
    object tkasirpborderdll: TStringField
      FieldName = 'pborderdll'
    end
    object tkasirpbpayment: TStringField
      FieldName = 'pbpayment'
    end
    object tkasirpbbill: TStringField
      FieldName = 'pbbill'
    end
    object tkasirpbbillcor: TStringField
      FieldName = 'pbbillcor'
    end
    object tkasirpbkatuser: TStringField
      FieldName = 'pbkatuser'
    end
    object tkasirpbpaymentdetailreport: TStringField
      FieldName = 'pbpaymentdetailreport'
    end
    object tkasirpbwaiterreport: TStringField
      FieldName = 'pbwaiterreport'
    end
    object tkasirpbpindahroom: TStringField
      FieldName = 'pbpindahroom'
    end
    object tkasirpbroomreport: TStringField
      FieldName = 'pbroomreport'
    end
    object tkasirpbmemberreport: TStringField
      FieldName = 'pbmemberreport'
    end
    object tkasirpbdetailpenjualan: TStringField
      FieldName = 'pbdetailpenjualan'
    end
    object tkasirpbSongList: TStringField
      FieldName = 'pbSongList'
    end
    object tkasirpbsummary: TStringField
      FieldName = 'pbsummary'
    end
    object tkasirpbsatuan: TStringField
      FieldName = 'pbsatuan'
    end
    object tkasirpbbarang: TStringField
      FieldName = 'pbbarang'
    end
    object tkasirpbkatbarang: TStringField
      FieldName = 'pbkatbarang'
    end
    object tkasirpbkomposisi: TStringField
      FieldName = 'pbkomposisi'
    end
    object tkasirpbdsitributor: TStringField
      FieldName = 'pbdsitributor'
    end
    object tkasirpbbarangmasuk: TStringField
      FieldName = 'pbbarangmasuk'
    end
    object tkasirpbreportmasuk: TStringField
      FieldName = 'pbreportmasuk'
    end
    object tkasirpbreportkeluar: TStringField
      FieldName = 'pbreportkeluar'
    end
    object tkasirpbstokbarang: TStringField
      FieldName = 'pbstokbarang'
    end
    object tkasirpbpenyesuaian: TStringField
      FieldName = 'pbpenyesuaian'
    end
    object tkasirpbMemberUpdate: TStringField
      FieldName = 'pbMemberUpdate'
    end
    object tkasirpbdetailmemberreport: TStringField
      FieldName = 'pbdetailmemberreport'
    end
    object tkasirpbmenureport: TStringField
      FieldName = 'pbmenureport'
    end
    object tkasirpbdatamember: TStringField
      FieldName = 'pbdatamember'
    end
    object tkasirpbSrequest: TStringField
      FieldName = 'pbSrequest'
    end
    object tkasirpbSongReport: TStringField
      FieldName = 'pbSongReport'
    end
    object tkasirpbdatalagu: TStringField
      FieldName = 'pbdatalagu'
    end
    object tkasirpbCheckServer: TStringField
      FieldName = 'pbCheckServer'
    end
    object tkasirpbdailybarangkeluar: TStringField
      FieldName = 'pbdailybarangkeluar'
    end
    object tkasirpbSatuanKonversi: TStringField
      FieldName = 'pbSatuanKonversi'
    end
    object tkasirpbreportreservasi: TStringField
      FieldName = 'pbreportreservasi'
    end
    object tkasirpbreservasi: TStringField
      FieldName = 'pbreservasi'
    end
    object tkasirpbtambahlagu: TStringField
      FieldName = 'pbtambahlagu'
    end
    object tkasirpbbank: TStringField
      FieldName = 'pbbank'
    end
    object tkasirpbtvchannel: TStringField
      FieldName = 'pbtvchannel'
    end
    object tkasirpbrunningtext: TStringField
      FieldName = 'pbrunningtext'
    end
    object tkasirpbkonversipayment: TStringField
      FieldName = 'pbkonversipayment'
    end
    object tkasirpbcontrolroom: TStringField
      FieldName = 'pbcontrolroom'
    end
    object tkasirpbpesanbill: TStringField
      FieldName = 'pbpesanbill'
    end
    object tkasirpbsaran: TStringField
      FieldName = 'pbsaran'
    end
    object tkasirpbroompassword: TStringField
      FieldName = 'pbroompassword'
    end
    object tkasirpbGudangMutasi: TStringField
      FieldName = 'pbGudangMutasi'
    end
    object tkasirpbGudang: TStringField
      FieldName = 'pbGudang'
    end
    object tkasirpbkirimlagu: TStringField
      FieldName = 'pbkirimlagu'
    end
    object tkasircs: TStringField
      FieldName = 'cs'
    end
    object tkasirpdUpdateLagu: TStringField
      FieldName = 'pdUpdateLagu'
    end
    object tkasirpbpajak: TStringField
      FieldName = 'pbpajak'
    end
    object tkasirpbpromo: TStringField
      FieldName = 'pbpromo'
    end
    object tkasirpbpaymentc: TStringField
      FieldName = 'pbpaymentc'
    end
    object tkasirpbshutdownserver: TStringField
      FieldName = 'pbshutdownserver'
    end
    object tkasirpbbackupserver: TStringField
      FieldName = 'pbbackupserver'
    end
    object tkasirpbreportorder: TStringField
      FieldName = 'pbreportorder'
    end
    object tkasirpbtaxservice: TStringField
      FieldName = 'pbtaxservice'
    end
    object tkasirpbControlRoomReport: TStringField
      FieldName = 'pbControlRoomReport'
    end
    object tkasirpbAuthorizationReport: TStringField
      FieldName = 'pbAuthorizationReport'
    end
    object tkasirpbMenuSoldOut: TStringField
      FieldName = 'pbMenuSoldOut'
    end
    object tkasirpbVoucher: TStringField
      FieldName = 'pbVoucher'
    end
    object tkasirpbVoucherReport: TStringField
      FieldName = 'pbVoucherReport'
    end
  end
end
