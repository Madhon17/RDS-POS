object finsertlagu: Tfinsertlagu
  Left = 491
  Top = 106
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Insert'
  ClientHeight = 732
  ClientWidth = 1018
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 32
    Top = 356
    Width = 32
    Height = 16
    Caption = 'Disc'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object lblanalog: TLabel
    Left = 360
    Top = 442
    Width = 5
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object edtvcd: TEdit
    Left = 352
    Top = 480
    Width = 121
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkTile
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnKeyPress = edtvcdKeyPress
  end
  object edttitle: TEdit
    Left = 352
    Top = 505
    Width = 361
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkTile
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnKeyPress = edtvcdKeyPress
  end
  object edtartist: TEdit
    Left = 352
    Top = 530
    Width = 361
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkTile
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnKeyPress = edtvcdKeyPress
  end
  object edtdisc: TEdit
    Left = 96
    Top = 355
    Width = 121
    Height = 21
    TabOrder = 4
    Visible = False
    OnKeyPress = edtvcdKeyPress
  end
  object edtpath: TEdit
    Left = 400
    Top = 556
    Width = 252
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkTile
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnKeyPress = edtvcdKeyPress
  end
  object cmbanalog: TComboBox
    Left = 352
    Top = 583
    Width = 57
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvSpace
    Style = csDropDownList
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ItemIndex = 0
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    Text = 'ST'
    OnChange = cmbanalogChange
    OnKeyPress = edtvcdKeyPress
    Items.Strings = (
      'ST'
      'ML'
      'MR')
  end
  object cmbtype: TComboBox
    Left = 352
    Top = 610
    Width = 137
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvSpace
    Style = csDropDownList
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    OnKeyPress = edtvcdKeyPress
  end
  object btnbrowse: TbsSkinXFormButton
    Left = 661
    Top = 556
    Width = 24
    Height = 20
    TabOrder = 8
    SkinData = FrmInduk.bsSkinData1
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
    Caption = '...'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnbrowseClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object WMP1: TWindowsMediaPlayer
    Left = 353
    Top = 69
    Width = 318
    Height = 238
    TabStop = False
    TabOrder = 9
    ControlData = {
      0003000008000200000000000500000000000000F03F03000000000005000000
      00000000000008000200000000000300010000000B00FFFF0300000000000B00
      FFFF08000200000000000300320000000B00000008000A000000660075006C00
      6C0000000B0000000B0000000B00FFFF0B00FFFF0B0000000800020000000000
      0800020000000000080002000000000008000200000000000B000000DE200000
      99180000}
  end
  object edtdepan: TEdit
    Left = 352
    Top = 556
    Width = 41
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkTile
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    OnKeyPress = edtvcdKeyPress
  end
  object trkPosisi: TbsSkinTrackBar
    Left = 353
    Top = 317
    Width = 318
    Height = 15
    TabOrder = 10
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'htrackbar'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    JumpWhenClick = True
    TabStop = True
    CanFocused = True
    MouseSupport = True
    MinValue = 0
    MaxValue = 0
    Value = 0
    Vertical = False
    OnChange = trkPosisiChange
  end
  object TrackBar1: TbsSkinTrackBar
    Left = 242
    Top = 112
    Width = 20
    Height = 123
    TabOrder = 11
    SkinData = FrmInduk.bsSkinData1
    SkinDataName = 'trackbar'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    JumpWhenClick = True
    TabStop = True
    CanFocused = True
    MouseSupport = True
    MinValue = 0
    MaxValue = 100
    Value = 50
    Vertical = True
    OnChange = TrackBar12Change
  end
  object SkinLabel1: TSkinLabel
    Left = 232
    Top = 481
    Width = 100
    Height = 17
    ParentFont = False
    TabOrder = 12
    ControlData = {
      FFFFFFFF560A0000C2010000080008000000560043004400000009000352E30B
      918FCE119DE300AA004BB85101000000BC02444201000D4D532053616E732053
      657269660000000001000000}
  end
  object Skin1: TSkin
    Left = 48
    Top = 16
    Width = 32
    Height = 32
    OnClick = Skin1Click
    ControlData = {
      01000000020000000A0000001A0000006D005F00620073007400720041007500
      740068006F00720000000400000000000000240000006D005F00620073007400
      72004400650073006300720069007000740069006F006E000000040000000000
      0000240000006D005F0062007300740072004100700070006C00690063006100
      740069006F006E00000004000000000000000E0000006D005F006E0048007500
      65000000080000000400000000000000180000006D005F004200610063006B00
      43006F006C006F00720000000700000003000000FFFFFF180000006D005F0046
      006F007200650043006F006C006F007200000007000000030000000000001A00
      00006D005F00500061006E0065006C0043006F006C006F007200000007000000
      03000000D8E9EC220000006D005F00500061006E0065006C0054006500780074
      0043006F006C006F007200000007000000030000000000001E0000006D005F00
      62004100700070006C00790043006F006C006F00720073000000060000000200
      00000000240000006D005F00620053006B0069006E0043006C00690065006E00
      7400410072006500610000000600000002000000010002000000000000000300
      00000000000000000000010000000200000002000000160000006D005F006200
      7300740072004E0061006D00650000000400000000000000140000006D005F00
      62007300740072005400610067000000040000000000000000000000}
  end
  object SkinLabel2: TSkinLabel
    Left = 232
    Top = 507
    Width = 100
    Height = 17
    ParentFont = False
    TabOrder = 14
    ControlData = {
      FFFFFFFF560A0000C201000008000C0000005400690074006C00650000000900
      0352E30B918FCE119DE300AA004BB85101000000BC02444201000D4D53205361
      6E732053657269660000000001000000}
  end
  object SkinLabel3: TSkinLabel
    Left = 232
    Top = 533
    Width = 100
    Height = 17
    ParentFont = False
    TabOrder = 15
    ControlData = {
      FFFFFFFF560A0000C201000008000E0000004100720074006900730074000000
      09000352E30B918FCE119DE300AA004BB85101000000BC02444201000D4D5320
      53616E732053657269660000000001000000}
  end
  object SkinLabel4: TSkinLabel
    Left = 232
    Top = 559
    Width = 100
    Height = 17
    ParentFont = False
    TabOrder = 16
    ControlData = {
      FFFFFFFF560A0000C201000008000A0000005000610074006800000009000352
      E30B918FCE119DE300AA004BB85101000000BC02444201000D4D532053616E73
      2053657269660000000001000000}
  end
  object SkinLabel5: TSkinLabel
    Left = 232
    Top = 585
    Width = 100
    Height = 17
    ParentFont = False
    TabOrder = 17
    ControlData = {
      FFFFFFFF560A0000C20100000800100000004300680061006E006E0065006C00
      000009000352E30B918FCE119DE300AA004BB85101000000BC02444201000D4D
      532053616E732053657269660000000001000000}
  end
  object SkinLabel6: TSkinLabel
    Left = 232
    Top = 612
    Width = 100
    Height = 17
    ParentFont = False
    TabOrder = 18
    ControlData = {
      FFFFFFFF560A0000C20100000800120000004B0061007400650067006F007200
      6900000009000352E30B918FCE119DE300AA004BB85101000000BC0244420100
      0D4D532053616E732053657269660000000001000000}
  end
  object txtVol: TAEdit
    Left = 232
    Top = 242
    Width = 41
    Height = 25
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 19
    Alignment = taCenter
  end
  object TrackBar2: TbsSkinTrackBar
    Left = 754
    Top = 112
    Width = 20
    Height = 123
    TabOrder = 20
    SkinData = FrmInduk.bsSkinData1
    SkinDataName = 'trackbar'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    JumpWhenClick = True
    TabStop = True
    CanFocused = True
    MouseSupport = True
    MinValue = 0
    MaxValue = 100
    Value = 50
    Vertical = True
    OnChange = TrackBar2Change
  end
  object txtVol1: TAEdit
    Left = 744
    Top = 242
    Width = 41
    Height = 25
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 21
    Alignment = taCenter
  end
  object Panel1: TPanel
    Left = 232
    Top = 640
    Width = 481
    Height = 25
    BevelOuter = bvSpace
    Color = clRed
    TabOrder = 22
    object chkHits: TCheckBox
      Left = 128
      Top = 4
      Width = 97
      Height = 17
      Caption = 'HITS'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object chkNew: TCheckBox
      Left = 256
      Top = 4
      Width = 97
      Height = 17
      Caption = 'NEW'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '|*.*'
    Left = 248
    Top = 8
  end
  object Qkategori: TZQuery
    Connection = modul.DBmysql
    Params = <>
    Left = 280
    Top = 8
  end
  object Qidmusic: TZQuery
    Connection = modul.DBmysql
    Params = <>
    Left = 312
    Top = 8
  end
  object Qupdate: TZQuery
    Connection = modul.DBmysql
    SQL.Strings = (
      'SELECT * from masters')
    Params = <>
    Left = 344
    Top = 8
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 376
    Top = 8
  end
  object Qedit: TZQuery
    Connection = modul.DBmysql
    Params = <>
    Left = 216
    Top = 8
  end
  object tmrPlay: TTimer
    Enabled = False
    OnTimer = tmrPlayTimer
    Left = 424
    Top = 8
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
    BorderIcons = []
    Left = 8
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
    Left = 8
    Top = 40
  end
end
