object fkategoriroom: Tfkategoriroom
  Left = 385
  Top = 10
  AutoScroll = False
  BorderIcons = []
  Caption = 'Room Type'
  ClientHeight = 619
  ClientWidth = 590
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnkeluar: TbsSkinButton
    Left = 257
    Top = 573
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnkeluarClick
  end
  object grpRoom: TbsSkinPanel
    Left = 46
    Top = 284
    Width = 499
    Height = 277
    TabOrder = 1
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
      Left = 22
      Top = 36
      Width = 29
      Height = 13
      Caption = 'Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 273
      Top = 36
      Width = 28
      Height = 13
      Caption = 'Rate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnDefault: TbsSkinButton
      Left = 22
      Top = 242
      Width = 447
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
      Caption = 'Set as default'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnDefaultClick
      OnKeyPress = TKN13
    end
    object cmbHari: TComboBox
      Left = 22
      Top = 8
      Width = 447
      Height = 21
      BevelKind = bkFlat
      Style = csDropDownList
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'Sunday'
      OnClick = cmbHariClick
      Items.Strings = (
        'Sunday'
        'Monday'
        'Tuesday'
        'Wednesday'
        'Thursday'
        'Friday'
        'Saturday')
    end
    object DBGrid2: TDBGrid
      Left = 22
      Top = 57
      Width = 447
      Height = 145
      Color = clWhite
      DataSource = DSkategoriDetil
      FixedColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'kategori'
          Title.Caption = 'Type'
          Width = 324
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Rate'
          Width = 100
          Visible = True
        end>
    end
    object btnDetilEdit: TbsSkinButton
      Left = 220
      Top = 210
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
      OnClick = btnDetilEditClick
    end
    object btnDetilSave: TbsSkinButton
      Left = 252
      Top = 210
      Width = 75
      Height = 25
      TabOrder = 3
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
      Caption = 'Save'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnDetilSaveClick
      OnKeyPress = TKN13
    end
    object btnDetilCancel: TbsSkinButton
      Left = 172
      Top = 210
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
      Caption = 'Cancel'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnDetilCancelClick
    end
    object edtHarga: TAEdit
      Left = 313
      Top = 32
      Width = 160
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnEnter = edtHargaEnter
      OnExit = edtHargaExit
      OnKeyPress = edtHargaKeyPress
      Alignment = taRightJustify
    end
    object edtType: TEdit
      Left = 89
      Top = 32
      Width = 160
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 46
    Top = 18
    Width = 499
    Height = 223
    TabOrder = 2
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
      Left = 26
      Top = 12
      Width = 29
      Height = 13
      Caption = 'Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 273
      Top = 12
      Width = 28
      Height = 13
      Caption = 'Rate'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object dbkategori: TDBEdit
      Left = 89
      Top = 8
      Width = 160
      Height = 21
      CharCase = ecUpperCase
      DataField = 'kategori'
      DataSource = DSroomKategori
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnKeyPress = TKN13
    end
    object dbharga: TDBEdit
      Left = 313
      Top = 8
      Width = 160
      Height = 21
      CharCase = ecUpperCase
      DataField = 'harga'
      DataSource = DSroomKategori
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyPress = TKN13
    end
    object DBGrid1: TDBGrid
      Left = 26
      Top = 33
      Width = 447
      Height = 145
      Color = clWhite
      DataSource = DSroomKategori
      FixedColor = clRed
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
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'kategori'
          Title.Caption = 'Type'
          Width = 321
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Rate'
          Width = 100
          Visible = True
        end>
    end
    object btnedit: TbsSkinButton
      Left = 212
      Top = 187
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
      Caption = 'Edit'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btneditClick
    end
    object btntambah: TbsSkinButton
      Left = 132
      Top = 187
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
      Caption = 'Add'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btntambahClick
    end
    object btndelete: TbsSkinButton
      Left = 292
      Top = 187
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
      Caption = 'Delete'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btndeleteClick
    end
    object btnsimpan: TbsSkinButton
      Left = 251
      Top = 187
      Width = 75
      Height = 25
      TabOrder = 6
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
      Caption = 'Save'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnsimpanClick
      OnKeyPress = TKN13
    end
    object btnbatal: TbsSkinButton
      Left = 171
      Top = 187
      Width = 75
      Height = 25
      TabOrder = 7
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
      Caption = 'Cancel'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnbatalClick
    end
  end
  object bsSkinButton1: TbsSkinButton
    Left = 257
    Top = 251
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
    Caption = 'Reset'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton1Click
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
    Top = 24
  end
  object DSroomKategori: TDataSource
    AutoEdit = False
    Left = 88
    Top = 8
  end
  object DSkategoriDetil: TDataSource
    AutoEdit = False
    Left = 206
    Top = 8
  end
  object QkategoriRoomDetil: TZQuery
    Params = <>
    Left = 8
    Top = 64
    object QkategoriRoomDetilid: TSmallintField
      FieldName = 'id'
    end
    object QkategoriRoomDetilhari: TSmallintField
      FieldName = 'hari'
    end
    object QkategoriRoomDetilkategori: TStringField
      FieldName = 'kategori'
    end
    object QkategoriRoomDetilharga: TFloatField
      FieldName = 'harga'
      DisplayFormat = '#,0'
    end
  end
  object Qother: TZQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'idkategori'
        ParamType = ptUnknown
      end>
    Left = 8
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idkategori'
        ParamType = ptUnknown
      end>
    object Qotherjumlah: TLargeintField
      FieldName = 'jumlah'
    end
  end
  object Troomkategori: TZTable
    AfterScroll = TroomkategoriAfterScroll
    Left = 8
    Top = 136
    object Troomkategoriid: TSmallintField
      FieldName = 'id'
    end
    object Troomkategorikategori: TStringField
      FieldName = 'kategori'
    end
    object Troomkategoriharga: TFloatField
      FieldName = 'harga'
      DisplayFormat = '#,0'
    end
  end
end
