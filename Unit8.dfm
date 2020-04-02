object froom: Tfroom
  Left = 175
  Top = 7
  AutoScroll = False
  BorderIcons = []
  Caption = 'Master Room'
  ClientHeight = 589
  ClientWidth = 864
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
  object Label1: TLabel
    Left = 69
    Top = 37
    Width = 65
    Height = 14
    Caption = 'Nama Room'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Batang'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 69
    Top = 63
    Width = 46
    Height = 14
    Caption = 'Kategori'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Batang'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 69
    Top = 141
    Width = 24
    Height = 13
    Caption = 'Jual'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 69
    Top = 89
    Width = 61
    Height = 14
    Caption = 'IP Address'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Batang'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 318
    Top = 38
    Width = 84
    Height = 13
    Caption = 'Volume Master'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 318
    Top = 63
    Width = 79
    Height = 13
    Caption = 'Volume Wave'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 318
    Top = 89
    Width = 66
    Height = 13
    Caption = 'Volume Mic'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 318
    Top = 115
    Width = 62
    Height = 13
    Caption = 'Volume TV'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 318
    Top = 141
    Width = 63
    Height = 13
    Caption = 'Volume CD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Left = 69
    Top = 115
    Width = 43
    Height = 14
    Caption = 'Camera'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Batang'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 69
    Top = 169
    Width = 74
    Height = 14
    Caption = 'Admin Memo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Batang'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 574
    Top = 38
    Width = 74
    Height = 13
    Caption = 'Mac Address'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 574
    Top = 116
    Width = 70
    Height = 13
    Caption = 'Remote MIC'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 574
    Top = 142
    Width = 77
    Height = 13
    Caption = 'Remote Echo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label15: TLabel
    Left = 574
    Top = 89
    Width = 89
    Height = 13
    Caption = 'Remote Volume'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object DBGrid1: TDBGrid
    Left = 18
    Top = 240
    Width = 823
    Height = 244
    Color = clWhite
    DataSource = DSROOM
    FixedColor = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 16
    TitleFont.Charset = ANSI_CHARSET
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
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'namaroom'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Room'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kategori'
        Title.Alignment = taCenter
        Title.Caption = 'Kategori'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LIPaddress'
        Title.Alignment = taCenter
        Title.Caption = 'IP-Address'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lvolmastes'
        Title.Alignment = taCenter
        Title.Caption = 'V. Master'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lvolwave'
        Title.Alignment = taCenter
        Title.Caption = 'V. Wave'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lvolmic'
        Title.Alignment = taCenter
        Title.Caption = 'V. Mic'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lvoltv'
        Title.Alignment = taCenter
        Title.Caption = 'V. TV'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LvolCD'
        Title.Alignment = taCenter
        Title.Caption = 'V. CD'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lremotevolume'
        Title.Alignment = taCenter
        Title.Caption = 'R. Vol'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lremotemic'
        Title.Alignment = taCenter
        Title.Caption = 'R. Mic'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lecho'
        Title.Alignment = taCenter
        Title.Caption = 'R. Echo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ljual'
        Title.Alignment = taCenter
        Title.Caption = 'Jual'
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CalVideo'
        Title.Alignment = taCenter
        Title.Caption = 'Video'
        Width = 56
        Visible = True
      end>
  end
  object btnedit: TbsSkinButton
    Left = 355
    Top = 503
    Width = 75
    Height = 27
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
    Caption = 'Edit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btneditClick
  end
  object btntambah: TbsSkinButton
    Left = 275
    Top = 503
    Width = 75
    Height = 25
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
    Caption = 'Tambah'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btntambahClick
  end
  object btnhapus: TbsSkinButton
    Left = 434
    Top = 503
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
    Left = 395
    Top = 542
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
    Left = 355
    Top = 519
    Width = 75
    Height = 25
    TabOrder = 10
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
    Left = 434
    Top = 519
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
    Caption = 'Batal'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnbatalClick
  end
  object cmbvideo: TComboBox
    Left = 152
    Top = 111
    Width = 129
    Height = 21
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ItemIndex = 0
    ParentFont = False
    TabOrder = 3
    Text = 'PAL'
    Items.Strings = (
      'PAL'
      'NTSC')
  end
  object edtipaddress: TAEdit
    Left = 152
    Top = 84
    Width = 129
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnKeyPress = TKN13
    Alignment = taRightJustify
  end
  object spnmaster: TSpinEdit
    Left = 418
    Top = 32
    Width = 119
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 0
    ParentFont = False
    TabOrder = 5
    Value = 0
    OnKeyPress = TKN13
  end
  object spnwave: TSpinEdit
    Left = 418
    Top = 58
    Width = 119
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 0
    ParentFont = False
    TabOrder = 6
    Value = 0
    OnKeyPress = TKN13
  end
  object spnmic: TSpinEdit
    Left = 418
    Top = 84
    Width = 119
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 0
    ParentFont = False
    TabOrder = 7
    Value = 0
    OnKeyPress = TKN13
  end
  object spntv: TSpinEdit
    Left = 418
    Top = 111
    Width = 119
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 0
    ParentFont = False
    TabOrder = 8
    Value = 0
    OnKeyPress = TKN13
  end
  object spncd: TSpinEdit
    Left = 418
    Top = 137
    Width = 119
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 0
    ParentFont = False
    TabOrder = 9
    Value = 0
    OnKeyPress = TKN13
  end
  object edtnamaroom: TAEdit
    Left = 152
    Top = 32
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyPress = TKN13
    Alignment = taRightJustify
  end
  object cmbkategori: TComboBox
    Left = 152
    Top = 58
    Width = 129
    Height = 21
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
    OnChange = cmbkategoriChange
    OnEnter = cmbkategoriEnter
    OnKeyPress = TKN13
  end
  object chkjual: TCheckBox
    Left = 152
    Top = 140
    Width = 41
    Height = 17
    Caption = 'Ya'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnKeyPress = TKN13
  end
  object btnCocok: TbsSkinButton
    Left = 514
    Top = 503
    Width = 75
    Height = 25
    TabOrder = 17
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
    Caption = 'Synchronize  '
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnCocokClick
  end
  object edtadminmemo: TMemo
    Left = 136
    Top = 160
    Width = 641
    Height = 65
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'edtadminmemo')
    ParentFont = False
    TabOrder = 18
  end
  object Edit1: TEdit
    Left = 674
    Top = 32
    Width = 119
    Height = 21
    TabOrder = 19
  end
  object spnvolume: TSpinEdit
    Left = 674
    Top = 84
    Width = 119
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 0
    ParentFont = False
    TabOrder = 20
    Value = 0
    OnKeyPress = TKN13
  end
  object spnremotemic: TSpinEdit
    Left = 674
    Top = 111
    Width = 119
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 0
    ParentFont = False
    TabOrder = 21
    Value = 0
    OnKeyPress = TKN13
  end
  object spnecho: TSpinEdit
    Left = 674
    Top = 137
    Width = 119
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 0
    ParentFont = False
    TabOrder = 22
    Value = 0
    OnKeyPress = TKN13
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
    Left = 296
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
    Left = 296
    Top = 23
  end
  object QMyUpdate: TZQuery
    Connection = modul.DBmysql
    Params = <>
    Left = 464
  end
  object QmyRoom: TZQuery
    Connection = modul.DBmysql
    SQL.Strings = (
      'Select * from room')
    Params = <>
    Left = 440
    object QmyRoomIDROOM: TSmallintField
      FieldName = 'IDROOM'
      Required = True
    end
    object QmyRoomROOMNAME: TStringField
      FieldName = 'ROOMNAME'
      Required = True
    end
    object QmyRoomUSERROOM: TStringField
      FieldName = 'USERROOM'
      Required = True
    end
    object QmyRoomIPADD: TStringField
      FieldName = 'IPADD'
      Required = True
    end
    object QmyRoomAPA: TStringField
      FieldName = 'APA'
      Required = True
      Size = 5
    end
    object QmyRoomSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 7
    end
    object QmyRoomPANGGIL: TStringField
      FieldName = 'PANGGIL'
      Required = True
    end
    object QmyRoomWKTSTART: TDateTimeField
      FieldName = 'WKTSTART'
      Required = True
    end
    object QmyRoomDURASI: TSmallintField
      FieldName = 'DURASI'
      Required = True
    end
    object QmyRoomVOLMASTER: TSmallintField
      FieldName = 'VOLMASTER'
      Required = True
    end
    object QmyRoomVOLWAVE: TSmallintField
      FieldName = 'VOLWAVE'
      Required = True
    end
    object QmyRoomVOLMIC: TSmallintField
      FieldName = 'VOLMIC'
      Required = True
    end
    object QmyRoomVOLTV: TSmallintField
      FieldName = 'VOLTV'
      Required = True
    end
    object QmyRoomSKIN: TSmallintField
      FieldName = 'SKIN'
      Required = True
    end
    object QmyRoomVOLCD: TSmallintField
      FieldName = 'VOLCD'
      Required = True
    end
    object QmyRoomVIDEO: TSmallintField
      FieldName = 'VIDEO'
      Required = True
    end
    object QmyRoomPORT: TIntegerField
      FieldName = 'PORT'
      Required = True
    end
    object QmyRoomROOMID: TLargeintField
      FieldName = 'ROOMID'
      Required = True
    end
    object QmyRoomORDDATE: TDateField
      FieldName = 'ORDDATE'
    end
    object QmyRoomORDTIME: TTimeField
      FieldName = 'ORDTIME'
    end
    object QmyRoomchat: TSmallintField
      FieldName = 'chat'
    end
    object QmyRoomplaylist: TSmallintField
      FieldName = 'playlist'
    end
    object QmyRoomkatajalan: TSmallintField
      FieldName = 'katajalan'
    end
    object QmyRoomkirimlagu: TSmallintField
      FieldName = 'kirimlagu'
    end
    object QmyRoomkirimidlagu: TLargeintField
      FieldName = 'kirimidlagu'
    end
    object QmyRoomwakeon: TStringField
      FieldName = 'wakeon'
      Required = True
      Size = 30
    end
    object QmyRoomtambahwaktu: TSmallintField
      FieldName = 'tambahwaktu'
    end
    object QmyRoomremotevol: TSmallintField
      FieldName = 'remotevol'
    end
    object QmyRoomremotemic: TSmallintField
      FieldName = 'remotemic'
    end
    object QmyRoomremoteecho: TSmallintField
      FieldName = 'remoteecho'
    end
  end
  object DSROOM: TDataSource
    Left = 320
    Top = 24
  end
  object Qroom: TZQuery
    AfterScroll = QroomAfterScroll
    OnCalcFields = QroomCalcFields
    Params = <>
    object QroomLIPaddress: TStringField
      FieldKind = fkCalculated
      FieldName = 'LIPaddress'
      Calculated = True
    end
    object Qroomid: TSmallintField
      FieldName = 'id'
    end
    object Qroomnamaroom: TStringField
      FieldName = 'namaroom'
    end
    object Qroomkategori: TStringField
      FieldName = 'kategori'
    end
    object Qroomadmin_memo: TMemoField
      FieldName = 'admin_memo'
      BlobType = ftMemo
    end
    object QroomroyaltyLock: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'royaltyLock'
      Calculated = True
    end
    object QroomsystemLock: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'systemLock'
      Calculated = True
    end
    object QroomLjual: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Ljual'
      Calculated = True
    end
    object QroomLvolmastes: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Lvolmastes'
      Calculated = True
    end
    object QroomLvolwave: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Lvolwave'
      Calculated = True
    end
    object QroomLvolmic: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Lvolmic'
      Calculated = True
    end
    object QroomLvoltv: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Lvoltv'
      Calculated = True
    end
    object QroomLvolCD: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'LvolCD'
      Calculated = True
    end
    object QroomLremotevolume: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Lremotevolume'
      Calculated = True
    end
    object QroomLremotemic: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Lremotemic'
      Calculated = True
    end
    object QroomLecho: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Lecho'
      Calculated = True
    end
    object QroomCalVideo: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalVideo'
      Calculated = True
    end
    object Qroomjual: TStringField
      FieldName = 'jual'
    end
  end
end
