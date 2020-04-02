object FSetupDisc: TFSetupDisc
  Left = 326
  Top = 0
  AutoScroll = False
  BorderIcons = []
  Caption = 'Setup Discount'
  ClientHeight = 599
  ClientWidth = 780
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
  object Label12: TLabel
    Left = 632
    Top = 188
    Width = 67
    Height = 13
    Caption = 'Joint Promo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object btnClose: TbsSkinButton
    Left = 352
    Top = 592
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
    OnClick = btnCloseClick
  end
  object btnSave: TbsSkinButton
    Left = 321
    Top = 544
    Width = 75
    Height = 25
    TabOrder = 0
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
    Caption = 'Save'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnSaveClick
  end
  object btnCancel: TbsSkinButton
    Left = 241
    Top = 544
    Width = 75
    Height = 25
    TabOrder = 2
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
    Caption = 'Cancel'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnCancelClick
  end
  object btnAdd: TbsSkinButton
    Left = 201
    Top = 544
    Width = 75
    Height = 25
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
    Caption = 'Add'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnAddClick
  end
  object btnEdit: TbsSkinButton
    Left = 281
    Top = 544
    Width = 75
    Height = 25
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
    Caption = 'Edit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnEditClick
  end
  object btnDelete: TbsSkinButton
    Left = 361
    Top = 544
    Width = 75
    Height = 25
    TabOrder = 5
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
    Caption = 'Delete'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnDeleteClick
  end
  object bsSkinPanel7: TbsSkinPanel
    Left = 30
    Top = 187
    Width = 531
    Height = 350
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
    object Label6: TLabel
      Left = 24
      Top = 36
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
    object Label2: TLabel
      Left = 24
      Top = 60
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
    object Label3: TLabel
      Left = 256
      Top = 60
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
    object Label5: TLabel
      Left = 256
      Top = 84
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
      Left = 24
      Top = 84
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
    object Label1: TLabel
      Left = 24
      Top = 108
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
    object Label7: TLabel
      Left = 24
      Top = 184
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
    object Label9: TLabel
      Left = 24
      Top = 12
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
    object Label10: TLabel
      Left = 24
      Top = 132
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
    object Label11: TLabel
      Left = 184
      Top = 133
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
    object Label8: TLabel
      Left = 24
      Top = 157
      Width = 57
      Height = 13
      Caption = 'Free room'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 176
      Top = 157
      Width = 28
      Height = 13
      Caption = 'Hour'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 272
      Top = 157
      Width = 111
      Height = 13
      Caption = 'Nominal Free Room'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object dbKategoriRoom: TDBGrid
      Left = 128
      Top = 184
      Width = 361
      Height = 121
      DataSource = dsRoomDisc
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
      TitleFont.Color = clMenu
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = dbKategoriRoomDrawColumnCell
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
          Width = 109
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
    object btnRoomAdd: TbsSkinButton
      Left = 195
      Top = 312
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
      UseSkinFont = False
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
      OnClick = btnRoomAddClick
    end
    object btnRoomEdit: TbsSkinButton
      Left = 275
      Top = 312
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
      Caption = 'Edit'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnRoomEditClick
    end
    object btnRoomDelete: TbsSkinButton
      Left = 355
      Top = 312
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
      UseSkinFont = False
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
      OnClick = btnRoomDeleteClick
    end
    object tgl_awal: TDateTimePicker
      Left = 128
      Top = 56
      Width = 121
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
      TabOrder = 4
    end
    object tgl_akhir: TDateTimePicker
      Left = 272
      Top = 56
      Width = 121
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
      TabOrder = 5
    end
    object waktuawal: TDateTimePicker
      Left = 128
      Top = 80
      Width = 121
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
      TabOrder = 6
    end
    object waktuakhir: TDateTimePicker
      Left = 272
      Top = 80
      Width = 121
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
      TabOrder = 7
    end
    object chkSun: TbsSkinCheckRadioBox
      Left = 129
      Top = 102
      Width = 48
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
      Caption = 'Sun'
    end
    object chkMon: TbsSkinCheckRadioBox
      Left = 183
      Top = 102
      Width = 65
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
      Caption = 'Mon'
    end
    object chkTue: TbsSkinCheckRadioBox
      Left = 238
      Top = 102
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
      Caption = 'Tue'
    end
    object chkWed: TbsSkinCheckRadioBox
      Left = 292
      Top = 102
      Width = 49
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
      Caption = 'Wed'
    end
    object chkThu: TbsSkinCheckRadioBox
      Left = 347
      Top = 102
      Width = 49
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
      Caption = 'Thu'
    end
    object chkFri: TbsSkinCheckRadioBox
      Left = 401
      Top = 102
      Width = 41
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
      Caption = 'Fri'
    end
    object chkSat: TbsSkinCheckRadioBox
      Left = 456
      Top = 102
      Width = 49
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
      Caption = 'Sat'
    end
    object spnDiscMenu: TSpinEdit
      Left = 128
      Top = 128
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
      TabOrder = 15
      Value = 0
    end
    object edtID: TEdit
      Left = 128
      Top = 8
      Width = 57
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      Text = 'DR0001'
    end
    object edtPromo: TEdit
      Left = 128
      Top = 32
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnKeyPress = edtPromoKeyPress
    end
    object chkAktif: TbsSkinCheckRadioBox
      Left = 193
      Top = 6
      Width = 72
      Height = 25
      TabOrder = 18
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
    object spnFreeRoom: TSpinEdit
      Left = 128
      Top = 153
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
      TabOrder = 19
      Value = 0
    end
    object edtDiscountRoomNominal: TAEdit
      Left = 392
      Top = 153
      Width = 97
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 20
      OnEnter = edtDiscountRoomNominalEnter
      OnExit = edtDiscountRoomNominalExit
      OnKeyPress = edtDiscountRoomNominalKeyPress
      Alignment = taRightJustify
    end
  end
  object dbPromo: TDBGrid
    Left = 30
    Top = 48
    Width = 720
    Height = 129
    DataSource = DSDisc
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
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBpromoDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'promo'
        Title.Alignment = taCenter
        Title.Caption = 'Promo'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tglAwal'
        Title.Alignment = taCenter
        Title.Caption = 'Valid Date'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tglAkhir'
        Title.Alignment = taCenter
        Title.Caption = 'Until'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'timeAwal'
        Title.Alignment = taCenter
        Title.Caption = 'Valid Time'
        Width = 80
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'timeAkhir'
        Title.Alignment = taCenter
        Title.Caption = 'Until'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'discMenu'
        Title.Alignment = taCenter
        Title.Caption = 'Disc. Menu'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'freeroom'
        Title.Alignment = taCenter
        Title.Caption = 'Room'
        Width = 44
        Visible = True
      end>
  end
  object dbJointPromo: TDBGrid
    Left = 581
    Top = 208
    Width = 169
    Height = 329
    DataSource = dsJointPromo
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMenu
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'idpromo1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Promo 1'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'idpromo2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Promo 2'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 72
        Visible = True
      end>
  end
  object bsSkinButton1: TbsSkinButton
    Left = 628
    Top = 504
    Width = 75
    Height = 25
    TabOrder = 9
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
    UseSkinFont = False
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
    OnClick = bsSkinButton1Click
  end
  object bsSkinPanel6: TbsSkinPanel
    Left = 30
    Top = 580
    Width = 720
    Height = 2
    TabOrder = 10
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
    BorderStyle = bvLowered
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel2'
  end
  object cmbAuto: TComboBox
    Left = 32
    Top = 16
    Width = 720
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
    TabOrder = 11
    Text = 
      '                                                                ' +
      '                 All'
    OnClick = cmbAutoClick
    Items.Strings = (
      
        '                                                                ' +
        '                 All'
      
        '                                                                ' +
        '                Auto'
      
        '                                                                ' +
        '               Promo')
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
  object dsRoomDisc: TDataSource
    Left = 65533
    Top = 112
  end
  object dsJointPromo: TDataSource
    Left = 65533
    Top = 176
  end
  object DSDisc: TDataSource
    Left = 65533
    Top = 64
  end
  object qJointPromo: TZQuery
    OnCalcFields = qJointPromoCalcFields
    Params = <>
    Top = 240
    object qJointPromoidpromo1: TStringField
      FieldName = 'idpromo1'
    end
    object qJointPromoidpromo2: TStringField
      FieldName = 'idpromo2'
    end
    object qJointPromostatus: TSmallintField
      FieldName = 'status'
    end
    object qJointPromocalStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'calStatus'
      Calculated = True
    end
  end
  object qPromo: TZQuery
    AfterScroll = qPromoAfterScroll
    Params = <>
    Top = 272
    object qPromoid: TStringField
      FieldName = 'id'
    end
    object qPromopromo: TStringField
      FieldName = 'promo'
    end
    object qPromotglAwal: TDateTimeField
      FieldName = 'tglAwal'
      DisplayFormat = 'dd MMM yyyy'
    end
    object qPromotglAkhir: TDateTimeField
      FieldName = 'tglAkhir'
      DisplayFormat = 'dd MMM yyyy'
    end
    object qPromotimeAwal: TDateTimeField
      FieldName = 'timeAwal'
      DisplayFormat = 'HH:mm:ss'
    end
    object qPromotimeAkhir: TDateTimeField
      FieldName = 'timeAkhir'
      DisplayFormat = 'HH:mm:ss'
    end
    object qPromodiscMenu: TIntegerField
      FieldName = 'discMenu'
    end
    object qPromosun: TStringField
      FieldName = 'sun'
    end
    object qPromomon: TStringField
      FieldName = 'mon'
    end
    object qPromotue: TStringField
      FieldName = 'tue'
    end
    object qPromowed: TStringField
      FieldName = 'wed'
    end
    object qPromothu: TStringField
      FieldName = 'thu'
    end
    object qPromofri: TStringField
      FieldName = 'fri'
    end
    object qPromosat: TStringField
      FieldName = 'sat'
    end
    object qPromoactive: TStringField
      FieldName = 'active'
    end
    object qPromofreeroom: TSmallintField
      FieldName = 'freeroom'
    end
    object qPromofreeroomnominal: TFloatField
      FieldName = 'freeroomnominal'
    end
  end
  object qRoomDisc: TZQuery
    OnCalcFields = qRoomDiscCalcFields
    Params = <>
    Top = 304
    object qRoomDisciddisc: TStringField
      FieldName = 'iddisc'
    end
    object qRoomDiscdiskon: TFloatField
      FieldName = 'diskon'
    end
    object qRoomDisckategori: TStringField
      FieldName = 'kategori'
    end
    object qRoomDischarga: TFloatField
      FieldName = 'harga'
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
    end
  end
end
