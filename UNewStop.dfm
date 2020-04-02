object FNewStop: TFNewStop
  Left = 130
  Top = 31
  AutoScroll = False
  BorderIcons = []
  Caption = 'Check Out'
  ClientHeight = 757
  ClientWidth = 925
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblRoom: TLabel
    Left = 0
    Top = 0
    Width = 925
    Height = 37
    Align = alTop
    Alignment = taCenter
    Caption = 'NAMA ROOM'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Nama: TLabel
    Left = 37
    Top = 70
    Width = 33
    Height = 13
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 46
    Width = 49
    Height = 13
    Caption = 'Order ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label19: TLabel
    Left = 304
    Top = 46
    Width = 107
    Height = 13
    Caption = 'People in the room'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 344
    Top = 602
    Width = 61
    Height = 13
    Caption = 'Extra Time'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 504
    Top = 602
    Width = 38
    Height = 13
    Caption = 'minute'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object grpRoom: TbsSkinPanel
    Left = 24
    Top = 432
    Width = 881
    Height = 161
    TabOrder = 16
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
    object DBGrid1: TDBGrid
      Left = 19
      Top = 16
      Width = 846
      Height = 113
      BorderStyle = bsNone
      DataSource = DStabel
      FixedColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object edtTotalGrid: TAEdit
      Left = 698
      Top = 134
      Width = 150
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Alignment = taRightJustify
    end
  end
  object btnCancel: TbsSkinButton
    Left = 425
    Top = 657
    Width = 75
    Height = 25
    TabOrder = 0
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
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
    OnClick = btnCancelClick
  end
  object btnOK: TbsSkinButton
    Left = 22
    Top = 625
    Width = 881
    Height = 33
    TabOrder = 1
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 33
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'STOP'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnOKClick
  end
  object edtNama: TEdit
    Left = 168
    Top = 66
    Width = 265
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnChange = edtNamaChange
    OnKeyPress = edtIdMemberKeyPress
  end
  object btnRoom: TbsSkinButton
    Left = 116
    Top = 424
    Width = 75
    Height = 17
    TabOrder = 2
    SkinData = FrmInduk.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Room'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnRoomClick
  end
  object btnMenu: TbsSkinButton
    Left = 196
    Top = 424
    Width = 75
    Height = 17
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
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Menu'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnMenuClick
  end
  object btnOthers: TbsSkinButton
    Left = 276
    Top = 424
    Width = 75
    Height = 17
    TabOrder = 4
    SkinData = FrmInduk.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Others'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnOthersClick
  end
  object edtOrderID: TEdit
    Left = 168
    Top = 42
    Width = 129
    Height = 21
    TabStop = False
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object edtIdMember: TEdit
    Left = 168
    Top = 66
    Width = 129
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    Visible = False
    OnEnter = edtIdMemberEnter
    OnKeyDown = edtIdMemberKeyDown
    OnKeyPress = edtIdMemberKeyPress
  end
  object edtJumOrang: TAEdit
    Left = 416
    Top = 42
    Width = 47
    Height = 21
    TabStop = False
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    Alignment = taCenter
  end
  object chkPajak: TCheckBox
    Left = 552
    Top = 602
    Width = 13
    Height = 13
    Color = clNavy
    ParentColor = False
    TabOrder = 10
  end
  object cmbMember: TComboBox
    Left = 36
    Top = 66
    Width = 96
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvNone
    Style = csDropDownList
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ItemIndex = 0
    ParentFont = False
    TabOrder = 6
    Text = 'Non Member'
    OnClick = cmbMemberClick
    OnKeyPress = pencet
    Items.Strings = (
      'Non Member'
      'Member')
  end
  object cmbtambah: TComboBox
    Left = 440
    Top = 598
    Width = 49
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
    TabOrder = 12
    Text = '0'
    Items.Strings = (
      '0'
      '5'
      '10'
      '15')
  end
  object cmember: TbsSkinButton
    Left = 136
    Top = 66
    Width = 25
    Height = 21
    TabOrder = 13
    SkinData = FrmInduk.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
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
    OnClick = cmemberClick
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 24
    Top = 176
    Width = 881
    Height = 241
    TabOrder = 14
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
    object Label14: TLabel
      Left = 8
      Top = 30
      Width = 77
      Height = 13
      Caption = 'Room Charge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 264
      Top = 5
      Width = 10
      Height = 13
      Alignment = taCenter
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 8
      Top = 54
      Width = 76
      Height = 13
      Caption = 'Menu Charge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 8
      Top = 78
      Width = 38
      Height = 13
      Caption = 'Others'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 8
      Top = 115
      Width = 30
      Height = 13
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 648
      Top = 5
      Width = 22
      Height = 13
      Alignment = taCenter
      Caption = 'Tax'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 528
      Top = 5
      Width = 44
      Height = 13
      Alignment = taCenter
      Caption = 'Service'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 600
      Top = 212
      Width = 103
      Height = 23
      Caption = 'Grand Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 715
      Top = 30
      Width = 8
      Height = 13
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 715
      Top = 54
      Width = 8
      Height = 13
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 715
      Top = 147
      Width = 8
      Height = 13
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 601
      Top = 184
      Width = 48
      Height = 13
      Caption = 'Voucher'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label23: TLabel
      Left = 408
      Top = 5
      Width = 78
      Height = 13
      Alignment = taCenter
      Caption = 'Member Disc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 715
      Top = 78
      Width = 8
      Height = 13
      Caption = '='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 320
      Top = 5
      Width = 51
      Height = 13
      Alignment = taCenter
      Caption = 'Discount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtdiskonvoucher: TAEdit
      Left = 736
      Top = 180
      Width = 129
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnEnter = edtdiskonvoucherEnter
      OnExit = edtdiskonvoucherExit
      OnKeyPress = pencetNomer
      Alignment = taRightJustify
    end
    object spnRoom: TSpinEdit
      Left = 248
      Top = 26
      Width = 49
      Height = 22
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 100
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 0
      OnChange = spnRoomChange
      OnClick = spnRoomClick
      OnKeyPress = pencet
    end
    object spnMenu: TSpinEdit
      Left = 248
      Top = 50
      Width = 49
      Height = 22
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 100
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 0
      OnChange = spnMenuChange
      OnKeyPress = pencet
    end
    object spnOthers: TSpinEdit
      Left = 248
      Top = 74
      Width = 49
      Height = 22
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 100
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 0
      OnChange = spnOthersChange
      OnKeyPress = pencet
    end
    object edtRoomHarga: TAEdit
      Left = 104
      Top = 26
      Width = 129
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Alignment = taRightJustify
    end
    object edtMenuHarga: TAEdit
      Left = 104
      Top = 50
      Width = 129
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Alignment = taRightJustify
    end
    object edtOthersHarga: TAEdit
      Left = 104
      Top = 74
      Width = 129
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Alignment = taRightJustify
    end
    object edtJumlahHarga: TAEdit
      Left = 104
      Top = 111
      Width = 129
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      Alignment = taRightJustify
    end
    object edtRoomDiskon: TAEdit
      Left = 304
      Top = 26
      Width = 89
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnEnter = edtRoomDiskonEnter
      OnExit = edtRoomDiskonExit
      OnKeyPress = pencetNomer
      Alignment = taRightJustify
    end
    object edtMenuDiskon: TAEdit
      Left = 304
      Top = 49
      Width = 89
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnEnter = edtMenuDiskonEnter
      OnExit = edtMenuDiskonExit
      OnKeyPress = pencetNomer
      Alignment = taRightJustify
    end
    object edtOthersDiskon: TAEdit
      Left = 304
      Top = 74
      Width = 89
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnEnter = edtOthersDiskonEnter
      OnExit = edtOthersDiskonExit
      OnKeyPress = pencetNomer
      Alignment = taRightJustify
    end
    object edtJumlahDiskon: TAEdit
      Left = 304
      Top = 111
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      Alignment = taRightJustify
    end
    object edtRoomTotal: TAEdit
      Left = 736
      Top = 26
      Width = 129
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      Alignment = taRightJustify
    end
    object edtMenuTotal: TAEdit
      Left = 736
      Top = 50
      Width = 129
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
      Alignment = taRightJustify
    end
    object edtOthersTotal: TAEdit
      Left = 736
      Top = 74
      Width = 129
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      Alignment = taRightJustify
    end
    object edtTotal: TAEdit
      Left = 736
      Top = 111
      Width = 129
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      Alignment = taRightJustify
    end
    object edtTax: TAEdit
      Left = 616
      Top = 146
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      Alignment = taRightJustify
    end
    object edtService: TAEdit
      Left = 512
      Top = 146
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      Alignment = taRightJustify
    end
    object edtGrandTotal: TAEdit
      Left = 736
      Top = 212
      Width = 129
      Height = 23
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      Alignment = taRightJustify
    end
    object edtmemberdiskon: TAEdit
      Left = 408
      Top = 111
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      Alignment = taRightJustify
    end
    object AEdit1: TAEdit
      Left = 616
      Top = 26
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
      Alignment = taRightJustify
    end
    object AEdit2: TAEdit
      Left = 616
      Top = 50
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
      Alignment = taRightJustify
    end
    object AEdit3: TAEdit
      Left = 512
      Top = 26
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
      Alignment = taRightJustify
    end
    object AEdit4: TAEdit
      Left = 512
      Top = 50
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
      Alignment = taRightJustify
    end
    object AEdit5: TAEdit
      Left = 408
      Top = 26
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
      Alignment = taRightJustify
    end
    object AEdit6: TAEdit
      Left = 408
      Top = 50
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
      Alignment = taRightJustify
    end
    object AEdit7: TAEdit
      Left = 616
      Top = 74
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 26
      Alignment = taRightJustify
    end
    object AEdit8: TAEdit
      Left = 512
      Top = 74
      Width = 89
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 27
      Alignment = taRightJustify
    end
    object AEdit9: TAEdit
      Left = 736
      Top = 146
      Width = 129
      Height = 21
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 28
      Alignment = taRightJustify
    end
    object bsSkinPanel2: TbsSkinPanel
      Left = 4
      Top = 104
      Width = 873
      Height = 2
      TabOrder = 29
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
    end
    object bsSkinPanel3: TbsSkinPanel
      Left = 4
      Top = 136
      Width = 873
      Height = 2
      TabOrder = 30
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
    end
    object bsSkinPanel4: TbsSkinPanel
      Left = 512
      Top = 173
      Width = 365
      Height = 2
      TabOrder = 31
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
    end
    object bsSkinPanel5: TbsSkinPanel
      Left = 600
      Top = 206
      Width = 281
      Height = 2
      TabOrder = 32
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
    end
    object bsSkinPanel6: TbsSkinPanel
      Left = 4
      Top = 19
      Width = 873
      Height = 2
      TabOrder = 33
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
    end
  end
  object bsSkinPanel7: TbsSkinPanel
    Left = 24
    Top = 93
    Width = 881
    Height = 78
    TabOrder = 15
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
    object Label20: TLabel
      Left = 16
      Top = 8
      Width = 51
      Height = 13
      Caption = 'Discount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtPromo: TEdit
      Left = 168
      Top = 28
      Width = 657
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object BsPromo: TbsSkinButton
      Left = 832
      Top = 28
      Width = 25
      Height = 21
      TabOrder = 1
      SkinData = FrmInduk.bsSkinData1
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
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
      Enabled = False
      OnClick = BsPromoClick
    end
    object bsSkinButton1: TbsSkinButton
      Left = 168
      Top = 52
      Width = 689
      Height = 21
      TabOrder = 2
      SkinData = FrmInduk.bsSkinData1
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
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
    end
    object chkAuto: TbsSkinCheckRadioBox
      Left = 73
      Top = 2
      Width = 72
      Height = 25
      TabOrder = 3
      SkinData = FrmInduk.bsSkinData1
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Auto'
      OnClick = chkAutoClick
    end
    object chkPromo: TbsSkinCheckRadioBox
      Left = 73
      Top = 26
      Width = 72
      Height = 25
      TabOrder = 4
      SkinData = FrmInduk.bsSkinData1
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Promo'
      OnClick = chkPromoClick
    end
    object chkManual: TbsSkinCheckRadioBox
      Left = 73
      Top = 50
      Width = 72
      Height = 25
      TabOrder = 5
      SkinData = FrmInduk.bsSkinData2
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Manual'
      OnClick = chkManualClick
    end
  end
  object DBPromo: TDBGrid
    Left = 192
    Top = 121
    Width = 657
    Height = 24
    DataSource = DSPromo
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMenu
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = DBPromoDrawColumnCell
    OnDblClick = DBPromoDblClick
    OnKeyPress = DBPromoKeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'promo'
        Title.Caption = 'Discount Promo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 561
        Visible = True
      end>
  end
  object Qharga: TZQuery
    Params = <>
    Left = 792
    Top = 1
  end
  object DStabel: TDataSource
    DataSet = QtabelMenu
    Left = 368
    Top = 426
  end
  object QtabelRoom: TZQuery
    SQL.Strings = (
      
        'SELECT     troom.namaroom AS Room, torder_room.tglStart AS `Chec' +
        'k In`, torder_room.tglStop AS `Check Out`, torder_room.durasi AS' +
        ' Durasi, '
      
        '                      torder_room.harga_asli  AS Harga, torder_r' +
        'oom.diskon AS diskon, (torder_room.harga_asli - torder_room.disk' +
        'on) * torder_room.durasi AS Jumlah'
      'FROM         torder_room INNER JOIN'
      '                      troom ON torder_room.idroom = troom.id'
      'ORDER BY tglStart desc')
    Params = <>
    Left = 136
    Top = 434
    object QtabelRoomRoom: TStringField
      Alignment = taCenter
      FieldName = 'Room'
      FixedChar = True
      Size = 4
    end
    object QtabelRoomCheckIn: TDateTimeField
      Alignment = taCenter
      FieldName = 'Check In'
      DisplayFormat = 'dd-MM-yy hh:mm'
    end
    object QtabelRoomCheckOut: TDateTimeField
      Alignment = taCenter
      FieldName = 'Check Out'
      DisplayFormat = 'dd-MM-yy hh:mm'
    end
    object QtabelRoomDurasi: TSmallintField
      Alignment = taCenter
      FieldName = 'Durasi'
    end
    object QtabelRoomHarga: TFloatField
      FieldName = 'Harga'
      DisplayFormat = '#,0'
    end
    object QtabelRoomdiskon: TFloatField
      DisplayLabel = 'Diskon'
      FieldName = 'diskon'
    end
    object QtabelRoomJumlah: TFloatField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
    end
  end
  object QtabelMenu: TZQuery
    SQL.Strings = (
      
        'SELECT     tmenu.menu AS `Menu Item`, cast(torder_menu.qty as si' +
        'gned integer) AS Qty, torder_menu.harga_asli - torder_menu.disko' +
        'n AS Harga, '
      
        '                      (torder_menu.harga_asli - torder_menu.disk' +
        'on) * torder_menu.qty AS Jumlah'
      'FROM         torder_menu INNER JOIN'
      '                      tmenu ON torder_menu.idmenu = tmenu.id')
    Params = <>
    Left = 224
    Top = 434
    object QtabelMenuMenuItem: TStringField
      FieldName = 'Menu Item'
      FixedChar = True
      Size = 50
    end
    object QtabelMenuQty: TLargeintField
      Alignment = taCenter
      FieldName = 'Qty'
    end
    object QtabelMenuHarga: TFloatField
      FieldName = 'Harga'
      DisplayFormat = '#,0'
    end
    object QtabelMenuJumlah: TFloatField
      FieldName = 'Jumlah'
      DisplayFormat = '#,0'
    end
  end
  object QtabelDll: TZQuery
    SQL.Strings = (
      
        'SELECT     keterangan, jumlah AS Qty, harga AS Harga, jumlah * h' +
        'arga AS Jumlah'
      'FROM         torder_dll')
    Params = <>
    Left = 304
    Top = 434
    object QtabelDllketerangan: TStringField
      FieldName = 'keterangan'
      Origin = 'MSVIZTA.torder_dll.keterangan'
      FixedChar = True
      Size = 30
    end
    object QtabelDllQty: TSmallintField
      Alignment = taCenter
      FieldName = 'Qty'
      Origin = 'MSVIZTA.torder_dll.jumlah'
    end
    object QtabelDllHarga: TFloatField
      FieldName = 'Harga'
      Origin = 'MSVIZTA.torder_dll.harga'
      DisplayFormat = '#,0'
    end
    object QtabelDllJumlah: TFloatField
      FieldName = 'Jumlah'
      Origin = 'MSVIZTA.torder_dll.jumlah'
      DisplayFormat = '#,0'
    end
  end
  object RvRoom: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QtabelRoom
    Left = 136
    Top = 458
  end
  object RvMenu: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QtabelMenu
    Left = 224
    Top = 458
  end
  object RvDll: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = QtabelDll
    Left = 304
    Top = 458
  end
  object Qmember: TZQuery
    SQL.Strings = (
      
        'SELECT     tmember.id, tmember.id_kategori, tmember.nama, tmembe' +
        'r.tgl_registrasi, tmember.berlaku, tkategorimember.diskonroom, t' +
        'kategorimember.diskonmenu'
      'FROM         tmember INNER JOIN'
      
        '                      tkategorimember ON tmember.id_kategori = t' +
        'kategorimember.id'
      'ORDER BY tmember.id')
    Params = <>
    Left = 256
    Top = 1
    object Qmemberid: TStringField
      FieldName = 'id'
      Origin = 'VIZTA.tmember.id'
    end
    object Qmemberid_kategori: TSmallintField
      FieldName = 'id_kategori'
      Origin = 'VIZTA.tmember.id_kategori'
    end
    object Qmembernama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tmember.nama'
      FixedChar = True
      Size = 50
    end
    object Qmemberdiskonroom: TFloatField
      FieldName = 'diskonroom'
      Origin = 'VIZTA.tkategorimember.diskonroom'
    end
    object Qmemberdiskonmenu: TFloatField
      FieldName = 'diskonmenu'
      Origin = 'VIZTA.tkategorimember.diskonmenu'
    end
    object Qmembertgl_registrasi: TDateTimeField
      FieldName = 'tgl_registrasi'
      Origin = 'VIZTA.tmember.tgl_registrasi'
    end
    object Qmemberberlaku: TDateTimeField
      FieldName = 'berlaku'
      Origin = 'VIZTA.tmember.berlaku'
    end
  end
  object bsSkinMessage1: TbsSkinMessage
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    SkinData = FrmInduk.bsSkinData2
    CtrlSkinData = FrmInduk.bsSkinData2
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
    Left = 848
  end
  object QmsOrderID: TZQuery
    SQL.Strings = (
      'select * from troom')
    Params = <>
    Left = 288
    Top = 1
  end
  object Qbarang: TZQuery
    Params = <>
    Left = 64
  end
  object Qbarangkeluar: TZQuery
    Params = <>
    Left = 384
  end
  object Qbarangcari: TZQuery
    Params = <>
    Left = 416
  end
  object Qfreepass: TZQuery
    SQL.Strings = (
      'SELECT     id, kategori, harga, freepass'
      'FROM         tkategoriroom'
      'ORDER BY harga')
    Params = <>
    Left = 96
    object Qfreepassid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tkategoriroom.id'
    end
    object Qfreepasskategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategoriroom.kategori'
      FixedChar = True
      Size = 10
    end
    object Qfreepassharga: TFloatField
      FieldName = 'harga'
      Origin = 'VIZTA.tkategoriroom.harga'
    end
    object Qfreepassfreepass: TFloatField
      FieldName = 'freepass'
      Origin = 'VIZTA.tkategoriroom.freepass'
    end
  end
  object QmasaFreepass: TZQuery
    SQL.Strings = (
      
        'SELECT     Tsetup.masaFreepass, Tsetup.pesanbill, Tsetup.promobi' +
        'll, Tsetup.id_cabang, tkategorimember.kode'
      'FROM         Tsetup INNER JOIN'
      
        '                      tkategorimember ON Tsetup.id_cabang = tkat' +
        'egorimember.id')
    Params = <>
    Left = 32
    object QmasaFreepassmasaFreepass: TIntegerField
      FieldName = 'masaFreepass'
      Origin = 'VIZTA.Tsetup.masaFreepass'
    end
    object QmasaFreepasspesanbill: TStringField
      FieldName = 'pesanbill'
      Origin = 'VIZTA.Tsetup.pesanbill'
      FixedChar = True
      Size = 50
    end
    object QmasaFreepasspromobill: TSmallintField
      FieldName = 'promobill'
      Origin = 'VIZTA.Tsetup.promobill'
    end
    object QmasaFreepassid_cabang: TSmallintField
      FieldName = 'id_cabang'
      Origin = 'VIZTA.Tsetup.id_cabang'
    end
    object QmasaFreepasskode: TStringField
      FieldName = 'kode'
      Origin = 'VIZTA.tkategorimember.kode'
      FixedChar = True
      Size = 2
    end
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     tpayment.idroom, troom.idkategori'
      'FROM         tpayment INNER JOIN'
      '                      troom ON tpayment.idroom = troom.id'
      'WHERE     (tpayment.idorder = :pbidorder)')
    Params = <
      item
        DataType = ftString
        Name = 'pbidorder'
        ParamType = ptUnknown
      end>
    Left = 160
    Top = 1
    ParamData = <
      item
        DataType = ftString
        Name = 'pbidorder'
        ParamType = ptUnknown
      end>
    object Qkategoriidroom: TSmallintField
      FieldName = 'idroom'
      Origin = 'VIZTA.tpayment.idroom'
    end
    object Qkategoriidkategori: TSmallintField
      FieldName = 'idkategori'
      Origin = 'VIZTA.troom.idkategori'
    end
  end
  object Qother: TZQuery
    SQL.Strings = (
      'select * from troom')
    Params = <>
    Left = 224
  end
  object QcashBack: TZQuery
    SQL.Strings = (
      'SELECT     *'
      'FROM         Tfreepass'
      'WHERE     (idkategori = :kategori)'
      'ORDER BY min_charge')
    Params = <
      item
        DataType = ftSmallint
        Name = 'kategori'
        ParamType = ptUnknown
        Value = 0
      end>
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'kategori'
        ParamType = ptUnknown
        Value = 0
      end>
    object QcashBackidkategori: TSmallintField
      FieldName = 'idkategori'
      Origin = 'VIZTA.Tfreepass.idkategori'
    end
    object QcashBackmin_charge: TFloatField
      FieldName = 'min_charge'
      Origin = 'VIZTA.Tfreepass.min_charge'
    end
    object QcashBackvoucher: TFloatField
      FieldName = 'voucher'
      Origin = 'VIZTA.Tfreepass.voucher'
    end
  end
  object DataSource1: TDataSource
    DataSet = QcashBack
    Top = 16
  end
  object Qpromo: TZQuery
    SQL.Strings = (
      'SELECT     id, promo, active'
      'FROM         tdisc'
      'WHERE     (active = 1)'
      'ORDER BY promo')
    Params = <>
    Left = 128
    object Qpromoid: TStringField
      FieldName = 'id'
      FixedChar = True
      Size = 10
    end
    object Qpromopromo: TStringField
      FieldName = 'promo'
      FixedChar = True
      Size = 10
    end
    object Qpromoactive: TStringField
      FieldName = 'active'
    end
  end
  object DSPromo: TDataSource
    DataSet = Qpromo
    Left = 128
    Top = 8
  end
  object QTdisc: TZQuery
    SQL.Strings = (
      'SELECT     dother, dmenu, droom, freejam'
      'FROM         tdisc')
    Params = <>
    Left = 192
    object QTdiscdother: TFloatField
      FieldName = 'dother'
      Origin = 'VIZTA.tdisc.dother'
    end
    object QTdiscdmenu: TFloatField
      FieldName = 'dmenu'
      Origin = 'VIZTA.tdisc.dmenu'
    end
    object QTdiscdroom: TFloatField
      FieldName = 'droom'
      Origin = 'VIZTA.tdisc.droom'
    end
    object QTdiscfreejam: TIntegerField
      FieldName = 'freejam'
      Origin = 'VIZTA.tdisc.freejam'
    end
  end
  object Qtambah: TZQuery
    Params = <>
    Left = 896
    Top = 552
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = True
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
    UseDefaultObjectHint = False
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
    UseDefaultSysMenu = False
    SkinData = FrmInduk.bsSkinData2
    MenusSkinData = FrmInduk.bsSkinData1
    MinHeight = 480
    MinWidth = 640
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = []
    Left = 824
  end
  object qTutupRoom: TZQuery
    SQL.Strings = (
      '')
    Params = <>
    Left = 320
    Top = 1
  end
  object QmyROOM: TZQuery
    Connection = modul.DBmysql
    Params = <>
    Left = 680
  end
  object QmyRoom2: TZQuery
    Connection = modul.My2
    Params = <>
    Left = 704
  end
end
