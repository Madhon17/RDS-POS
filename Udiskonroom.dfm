object Fdiskonroom: TFdiskonroom
  Left = 281
  Top = 85
  AutoScroll = False
  BorderIcons = []
  Caption = 'Joint Promo'
  ClientHeight = 475
  ClientWidth = 954
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPanel1: TbsSkinPanel
    Left = 480
    Top = 22
    Width = 465
    Height = 315
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
    Enabled = False
    object Label9: TLabel
      Left = 8
      Top = 20
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
    object Label7: TLabel
      Left = 8
      Top = 164
      Width = 62
      Height = 13
      Caption = 'Room Disc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 8
      Top = 44
      Width = 93
      Height = 13
      Caption = 'Promotion Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 224
      Top = 92
      Width = 5
      Height = 13
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 8
      Top = 92
      Width = 47
      Height = 13
      Caption = 'Apply at'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 224
      Top = 68
      Width = 5
      Height = 13
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 68
      Width = 58
      Height = 13
      Caption = 'Valid date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 168
      Top = 141
      Width = 10
      Height = 13
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 8
      Top = 140
      Width = 61
      Height = 13
      Caption = 'Menu Disc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 116
      Width = 23
      Height = 13
      Caption = 'Day'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object waktuawal2: TDateTimePicker
      Left = 112
      Top = 88
      Width = 97
      Height = 21
      Date = 2.000000000000000000
      Format = 'HH:mm'
      Time = 2.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
      TabOrder = 0
    end
    object waktuakhir2: TDateTimePicker
      Left = 240
      Top = 88
      Width = 97
      Height = 21
      Date = 2.000000000000000000
      Format = 'HH:mm'
      Time = 2.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
      TabOrder = 1
    end
    object tgl_awal2: TDateTimePicker
      Left = 112
      Top = 64
      Width = 97
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object tgl_akhir2: TDateTimePicker
      Left = 240
      Top = 64
      Width = 97
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object spnDiscMenu2: TSpinEdit
      Left = 112
      Top = 136
      Width = 41
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 100
      MinValue = 0
      ParentFont = False
      TabOrder = 4
      Value = 0
    end
    object edtPromo2: TEdit
      Left = 112
      Top = 40
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object edtID2: TEdit
      Left = 112
      Top = 16
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object dbKategoriRoom2: TDBGrid
      Left = 112
      Top = 160
      Width = 345
      Height = 137
      DataSource = dsRoomDisc2
      FixedColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clMenu
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'kategori'
          Title.Caption = 'Room Category'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMenu
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Price'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMenu
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'diskon'
          Title.Alignment = taCenter
          Title.Caption = 'Discount'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMenu
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'calHarga'
          Title.Alignment = taCenter
          Title.Caption = 'New Price'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMenu
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end>
    end
    object chkWed2: TbsSkinCheckRadioBox
      Left = 264
      Top = 110
      Width = 49
      Height = 25
      TabOrder = 8
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Wed'
    end
    object chkTue2: TbsSkinCheckRadioBox
      Left = 214
      Top = 110
      Width = 49
      Height = 25
      TabOrder = 9
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Tue'
    end
    object chkThu2: TbsSkinCheckRadioBox
      Left = 315
      Top = 110
      Width = 49
      Height = 25
      TabOrder = 10
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Thu'
    end
    object chkSun2: TbsSkinCheckRadioBox
      Left = 113
      Top = 110
      Width = 48
      Height = 25
      TabOrder = 11
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Sun'
    end
    object chkSat2: TbsSkinCheckRadioBox
      Left = 416
      Top = 110
      Width = 41
      Height = 25
      TabOrder = 12
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Sat'
    end
    object chkMon2: TbsSkinCheckRadioBox
      Left = 163
      Top = 110
      Width = 54
      Height = 25
      TabOrder = 13
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Mon'
    end
    object chkFri2: TbsSkinCheckRadioBox
      Left = 365
      Top = 110
      Width = 41
      Height = 25
      TabOrder = 14
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Fri'
    end
    object chkAktif2: TbsSkinCheckRadioBox
      Left = 249
      Top = 14
      Width = 72
      Height = 25
      TabOrder = 15
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Active'
    end
  end
  object btnSave: TbsSkinXFormButton
    Left = 479
    Top = 429
    Width = 75
    Height = 26
    TabOrder = 0
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
    Caption = 'Save'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnSaveClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object bsSkinPanel2: TbsSkinPanel
    Left = 8
    Top = 22
    Width = 465
    Height = 315
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
    Enabled = False
    object Label8: TLabel
      Left = 8
      Top = 20
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
    object Label12: TLabel
      Left = 8
      Top = 164
      Width = 62
      Height = 13
      Caption = 'Room Disc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 8
      Top = 44
      Width = 93
      Height = 13
      Caption = 'Promotion Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 224
      Top = 92
      Width = 5
      Height = 13
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 8
      Top = 92
      Width = 47
      Height = 13
      Caption = 'Apply at'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 224
      Top = 68
      Width = 5
      Height = 13
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label17: TLabel
      Left = 8
      Top = 68
      Width = 58
      Height = 13
      Caption = 'Valid date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 168
      Top = 141
      Width = 10
      Height = 13
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 8
      Top = 140
      Width = 61
      Height = 13
      Caption = 'Menu Disc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 8
      Top = 116
      Width = 23
      Height = 13
      Caption = 'Day'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object waktuawal: TDateTimePicker
      Left = 112
      Top = 88
      Width = 97
      Height = 21
      Date = 2.000000000000000000
      Format = 'HH:mm'
      Time = 2.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
      TabOrder = 0
    end
    object waktuakhir: TDateTimePicker
      Left = 240
      Top = 88
      Width = 97
      Height = 21
      Date = 2.000000000000000000
      Format = 'HH:mm'
      Time = 2.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
      TabOrder = 1
    end
    object tgl_awal: TDateTimePicker
      Left = 112
      Top = 64
      Width = 97
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object tgl_akhir: TDateTimePicker
      Left = 240
      Top = 64
      Width = 97
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object spnDiscMenu: TSpinEdit
      Left = 112
      Top = 136
      Width = 41
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 100
      MinValue = 0
      ParentFont = False
      TabOrder = 4
      Value = 0
    end
    object edtPromo: TEdit
      Left = 112
      Top = 40
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object edtID: TEdit
      Left = 112
      Top = 16
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object dbKategoriRoom: TDBGrid
      Left = 112
      Top = 160
      Width = 345
      Height = 137
      DataSource = dsRoomDisc
      FixedColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clMenu
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'kategori'
          Title.Caption = 'Room Category'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMenu
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Price'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMenu
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'diskon'
          Title.Alignment = taCenter
          Title.Caption = 'Discount'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMenu
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'calHarga'
          Title.Alignment = taCenter
          Title.Caption = 'New Price'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clMenu
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end>
    end
    object chkWed: TbsSkinCheckRadioBox
      Left = 264
      Top = 110
      Width = 49
      Height = 25
      TabOrder = 8
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Wed'
    end
    object chkTue: TbsSkinCheckRadioBox
      Left = 214
      Top = 110
      Width = 49
      Height = 25
      TabOrder = 9
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Tue'
    end
    object chkThu: TbsSkinCheckRadioBox
      Left = 315
      Top = 110
      Width = 49
      Height = 25
      TabOrder = 10
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Thu'
    end
    object chkSun: TbsSkinCheckRadioBox
      Left = 113
      Top = 110
      Width = 48
      Height = 25
      TabOrder = 11
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Sun'
    end
    object chkSat: TbsSkinCheckRadioBox
      Left = 416
      Top = 110
      Width = 41
      Height = 25
      TabOrder = 12
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Sat'
    end
    object chkMon: TbsSkinCheckRadioBox
      Left = 163
      Top = 110
      Width = 65
      Height = 25
      TabOrder = 13
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Mon'
    end
    object chkFri: TbsSkinCheckRadioBox
      Left = 365
      Top = 110
      Width = 41
      Height = 25
      TabOrder = 14
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Fri'
    end
    object chkAktif: TbsSkinCheckRadioBox
      Left = 249
      Top = 14
      Width = 72
      Height = 25
      TabOrder = 15
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Active'
    end
  end
  object bsSkinPanel3: TbsSkinPanel
    Left = 8
    Top = 344
    Width = 937
    Height = 68
    TabOrder = 3
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
    object chkPromo1: TbsSkinCheckRadioBox
      Left = 394
      Top = 27
      Width = 70
      Height = 25
      TabOrder = 0
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Promo1'
      OnClick = chkPromo1Click
    end
    object chkPromo2: TbsSkinCheckRadioBox
      Left = 468
      Top = 27
      Width = 76
      Height = 25
      TabOrder = 1
      SkinDataName = 'checkbox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      ImageIndex = 0
      Flat = True
      TabStop = True
      CanFocused = True
      Radio = False
      Checked = False
      GroupIndex = 0
      Caption = 'Promo2'
      OnClick = chkPromo2Click
    end
  end
  object btnCancel: TbsSkinXFormButton
    Left = 399
    Top = 429
    Width = 75
    Height = 26
    TabOrder = 4
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
    Caption = 'Cancel'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnCancelClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
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
    Top = 16
  end
  object qRoomDisc: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     Tdiskonroom.iddisc, Tdiskonroom.diskon, tkategoriroom' +
        '.kategori, tkategoriroom.harga, Tdiskonroom.idroom'
      'FROM         Tdiskonroom INNER JOIN'
      
        '                      tkategoriroom ON Tdiskonroom.idroom = tkat' +
        'egoriroom.id')
    Left = 93
    object qRoomDisciddisc: TStringField
      FieldName = 'iddisc'
      Origin = 'VIZTA.Tdiskonroom.iddisc'
      FixedChar = True
      Size = 10
    end
    object qRoomDiscdiskon: TFloatField
      FieldName = 'diskon'
      Origin = 'VIZTA.Tdiskonroom.diskon'
      DisplayFormat = '#,0'
    end
    object qRoomDisckategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategoriroom.kategori'
      FixedChar = True
      Size = 10
    end
    object qRoomDischarga: TFloatField
      FieldName = 'harga'
      Origin = 'VIZTA.tkategoriroom.harga'
      DisplayFormat = '#,0'
    end
    object qRoomDisccalHarga: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calHarga'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object qRoomDiscidroom: TSmallintField
      FieldName = 'idroom'
      Origin = 'VIZTA.Tdiskonroom.idroom'
    end
  end
  object dsRoomDisc: TDataSource
    DataSet = qRoomDisc
    Left = 109
  end
  object qRoomDisc2: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     Tdiskonroom.iddisc, Tdiskonroom.diskon, tkategoriroom' +
        '.kategori, tkategoriroom.harga, Tdiskonroom.idroom'
      'FROM         Tdiskonroom INNER JOIN'
      
        '                      tkategoriroom ON Tdiskonroom.idroom = tkat' +
        'egoriroom.id')
    Left = 149
    object StringField1: TStringField
      FieldName = 'iddisc'
      Origin = 'VIZTA.Tdiskonroom.iddisc'
      FixedChar = True
      Size = 10
    end
    object FloatField1: TFloatField
      FieldName = 'diskon'
      Origin = 'VIZTA.Tdiskonroom.diskon'
      DisplayFormat = '#,0'
    end
    object StringField2: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategoriroom.kategori'
      FixedChar = True
      Size = 10
    end
    object FloatField2: TFloatField
      FieldName = 'harga'
      Origin = 'VIZTA.tkategoriroom.harga'
      DisplayFormat = '#,0'
    end
    object FloatField3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calHarga'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'idroom'
      Origin = 'VIZTA.Tdiskonroom.idroom'
    end
  end
  object dsRoomDisc2: TDataSource
    DataSet = qRoomDisc2
    Left = 165
  end
end
