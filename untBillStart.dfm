object FBillStart: TFBillStart
  Left = 335
  Top = 264
  AutoScroll = False
  BorderIcons = []
  Caption = 'Check In'
  ClientHeight = 369
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object grpRoom: TPanel
    Left = 8
    Top = 32
    Width = 377
    Height = 249
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblRoom: TLabel
      Left = 2
      Top = 2
      Width = 373
      Height = 24
      Align = alTop
      Alignment = taCenter
      Caption = 'NAMA ROOM'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 108
      Width = 75
      Height = 13
      Caption = 'Jumlah Tamu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 16
      Top = 142
      Width = 48
      Height = 13
      Caption = 'Reserve'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 16
      Top = 76
      Width = 28
      Height = 13
      Caption = 'Start'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 176
      Top = 108
      Width = 35
      Height = 13
      Caption = 'Orang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 176
      Top = 142
      Width = 23
      Height = 13
      Caption = 'Jam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tglTanggal: TDateTimePicker
      Left = 120
      Top = 72
      Width = 89
      Height = 21
      Date = 38584.162961145840000000
      Format = 'dd-MM-yyyy'
      Time = 38584.162961145840000000
      TabOrder = 1
      OnKeyPress = Press13
    end
    object tglJam: TDateTimePicker
      Left = 216
      Top = 72
      Width = 73
      Height = 21
      Date = 38584.163214328700000000
      Format = '  HH:mm'
      Time = 38584.163214328700000000
      Kind = dtkTime
      TabOrder = 2
      OnKeyPress = Press13
    end
    object spnInterfal: TSpinEdit
      Left = 120
      Top = 137
      Width = 49
      Height = 22
      MaxValue = 12
      MinValue = 1
      TabOrder = 4
      Value = 1
      OnKeyPress = Press13
    end
    object edtNama: TEdit
      Left = 216
      Top = 40
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'edtNama'
      OnChange = edtNamaChange
      OnKeyPress = edtNamaKeyPress
    end
    object spnOrang: TSpinEdit
      Left = 120
      Top = 104
      Width = 49
      Height = 22
      MaxValue = 24
      MinValue = 1
      TabOrder = 3
      Value = 1
      OnKeyPress = Press13
    end
    object cmbMember: TComboBox
      Left = 12
      Top = 40
      Width = 96
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkFlat
      BevelOuter = bvNone
      Style = csDropDownList
      Color = 33023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 5
      Text = 'Non Member'
      OnClick = cmbMemberClick
      Items.Strings = (
        'Non Member'
        'Member')
    end
    object EdtMember: TEdit
      Left = 120
      Top = 40
      Width = 89
      Height = 21
      TabOrder = 6
      Text = 'edtMember'
      OnChange = EdtMemberChange
      OnKeyPress = EdtMemberKeyPress
    end
    object chkAuto: TCheckBox
      Left = 120
      Top = 168
      Width = 89
      Height = 17
      Caption = 'Auto Close'
      TabOrder = 7
    end
    object BsPromo: TbsSkinButton
      Left = 208
      Top = 166
      Width = 25
      Height = 21
      TabOrder = 8
      Visible = False
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
      OnClick = BsPromoClick
    end
  end
  object btnCancel: TbsSkinButton
    Left = 156
    Top = 320
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
    UseSkinFont = False
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
    OnClick = btnCancelClick
  end
  object btnOK: TbsSkinButton
    Left = 8
    Top = 288
    Width = 377
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
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'START'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnOKClick
  end
  object DBmember: TDBGrid
    Left = 8
    Top = 95
    Width = 377
    Height = 218
    BorderStyle = bsNone
    DataSource = DSmember
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMenu
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = DBmemberDrawColumnCell
    OnDblClick = DBmemberDblClick
    OnKeyDown = DBmemberKeyDown
    OnKeyPress = DBmemberKeyPress
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
        Width = 80
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
        Width = 202
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'berlaku'
        Title.Caption = 'Valid Thru'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 68
        Visible = True
      end>
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
    MinHeight = 304
    MinWidth = 331
    MaxHeight = 400
    MaxWidth = 404
    Magnetic = False
    MagneticSize = 0
    BorderIcons = []
    Left = 320
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
    DefaultFont.Style = [fsBold]
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = 14
    DefaultButtonFont.Name = 'Arial'
    DefaultButtonFont.Style = []
    UseSkinFont = False
    Left = 344
  end
  object Qreservasi: TZQuery
    SQL.Strings = (
      'select * from troom')
    Params = <>
  end
  object DSmember: TDataSource
    DataSet = QMember
    Left = 88
    Top = 18
  end
  object QMember: TZQuery
    SQL.Strings = (
      
        'SELECT tmember.id, tmember.id_kategori, tmember.nama, tmember.tg' +
        'l_registrasi, tmember.berlaku, tkategorimember.diskonroom, '
      '                      tkategorimember.diskonmenu'
      'FROM         tmember INNER JOIN'
      
        '                      tkategorimember ON tmember.id_kategori = t' +
        'kategorimember.id'
      'ORDER BY tmember.id'
      'limit 0, 14')
    Params = <>
    Left = 88
    object QMemberid: TStringField
      FieldName = 'id'
      FixedChar = True
      Size = 7
    end
    object QMemberid_kategori: TSmallintField
      FieldName = 'id_kategori'
    end
    object QMembernama: TStringField
      FieldName = 'nama'
      FixedChar = True
      Size = 50
    end
    object QMembertgl_registrasi: TDateTimeField
      FieldName = 'tgl_registrasi'
    end
    object QMemberberlaku: TDateTimeField
      FieldName = 'berlaku'
      DisplayFormat = 'dd/mm/yy'
    end
    object QMemberdiskonroom: TFloatField
      FieldName = 'diskonroom'
    end
    object QMemberdiskonmenu: TFloatField
      FieldName = 'diskonmenu'
    end
  end
  object QmyRoom2: TZQuery
    Connection = modul.My2
    Params = <>
    Left = 240
  end
  object QmyROOM: TZQuery
    Connection = modul.DBmysql
    Params = <>
    Left = 272
  end
  object QmsOther: TZQuery
    SQL.Strings = (
      'select * from troom')
    Params = <>
    Left = 184
  end
end
