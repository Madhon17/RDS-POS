object fordermenu: Tfordermenu
  Left = 190
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = '..:: Input Order ::..'
  ClientHeight = 763
  ClientWidth = 1016
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPanel7: TbsSkinPanel
    Left = 8
    Top = 11
    Width = 1001
    Height = 662
    TabOrder = 5
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
  object cmbroom: TComboBox
    Left = 18
    Top = 24
    Width = 979
    Height = 37
    BevelInner = bvLowered
    BevelKind = bkFlat
    Style = csDropDownList
    Color = clRed
    DropDownCount = 15
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -24
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemHeight = 29
    ParentFont = False
    TabOrder = 1
    OnClick = cmbroomClick
  end
  object grpMenu: TPanel
    Left = 18
    Top = 72
    Width = 484
    Height = 593
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BorderWidth = 1
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 13
      Top = 113
      Width = 32
      Height = 13
      Caption = 'Menu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 13
      Top = 88
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
    object Label8: TLabel
      Left = 13
      Top = 15
      Width = 38
      Height = 13
      Caption = 'Waiter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 13
      Top = 320
      Width = 72
      Height = 13
      Caption = 'Order By    '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 13
      Top = 432
      Width = 51
      Height = 13
      Caption = 'Discount'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object persen: TLabel
      Left = 147
      Top = 432
      Width = 10
      Height = 13
      Caption = '%'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 232
      Top = 460
      Width = 20
      Height = 13
      Caption = 'Qty'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 312
      Top = 432
      Width = 8
      Height = 13
      Caption = '='
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object cmbkategori: TComboBox
      Left = 118
      Top = 84
      Width = 355
      Height = 21
      Style = csDropDownList
      DropDownCount = 30
      ItemHeight = 13
      TabOrder = 1
      OnChange = cmbkategoriChange
      OnEnter = cmbkategoriEnter
      OnKeyPress = Tekan13
    end
    object btnCariMenu: TbsSkinButton
      Left = 216
      Top = 12
      Width = 24
      Height = 20
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
      OnClick = btnCariMenuClick
    end
    object edtNamaCs: TEdit
      Left = 248
      Top = 11
      Width = 225
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 5
      OnEnter = edtNamaCsEnter
      OnKeyPress = Tekan13
    end
    object edtCs: TAEdit
      Left = 118
      Top = 11
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = edtCsChange
      OnEnter = edtCsEnter
      OnExit = edtCsExit
      OnKeyPress = Tekan13
      Alignment = taCenter
    end
    object rdoKategori: TRadioButton
      Left = 136
      Top = 319
      Width = 105
      Height = 17
      Caption = 'Kategori'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 7
      TabStop = True
    end
    object rdoID: TRadioButton
      Left = 360
      Top = 319
      Width = 97
      Height = 17
      Caption = 'ID Menu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 8
    end
    object rdoMenu: TRadioButton
      Left = 240
      Top = 319
      Width = 113
      Height = 17
      Caption = 'Item Menu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 9
    end
    object edtidmenu: TAEdit
      Left = 118
      Top = 109
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = edtidmenuChange
      OnEnter = edtidmenuEnter
      OnExit = edtidmenuExit
      OnKeyDown = edtidmenuKeyDown
      OnKeyPress = Tekan13
      OnKeyUp = edtidmenuKeyUp
      Alignment = taCenter
    end
    object edtcarimenu: TAEdit
      Left = 216
      Top = 109
      Width = 257
      Height = 21
      TabOrder = 3
      OnChange = edtcarimenuChange
      OnEnter = edtcarimenuEnter
      OnExit = edtcarimenuExit
      OnKeyDown = edtcarimenuKeyDown
      OnKeyPress = edtcarimenuKeyPress
      OnKeyUp = edtcarimenuKeyUp
      Alignment = taRightJustify
    end
    object spndiskon: TSpinEdit
      Left = 85
      Top = 427
      Width = 51
      Height = 22
      TabStop = False
      MaxLength = 3
      MaxValue = 100
      MinValue = 0
      TabOrder = 11
      Value = 0
      OnChange = spndiskonChange
    end
    object edtPotongan: TAEdit
      Left = 170
      Top = 428
      Width = 121
      Height = 21
      TabStop = False
      TabOrder = 12
      Text = 'edtPotongan'
      OnEnter = edtpotonganEnter
      OnExit = edtpotonganExit
      OnKeyPress = Tekan13
      Alignment = taRightJustify
    end
    object spnquantity: TSpinEdit
      Left = 208
      Top = 475
      Width = 84
      Height = 42
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 3
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 13
      Value = 1
      OnChange = spnquantityChange
      OnDblClick = spnquantityDblClick
      OnEnter = spnquantityEnter
      OnKeyDown = spnquantityKeyDown
    end
    object edtafterquantity: TAEdit
      Left = 189
      Top = 524
      Width = 121
      Height = 21
      TabStop = False
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
      TabOrder = 14
      OnKeyPress = Tekan13
      Alignment = taCenter
    end
    object edtAfterDisc: TAEdit
      Left = 347
      Top = 428
      Width = 121
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 15
      Text = 'edtAfterDisc'
      OnKeyPress = Tekan13
      Alignment = taRightJustify
    end
    object btntambah: TbsSkinButton
      Left = 9
      Top = 552
      Width = 466
      Height = 26
      TabOrder = 16
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
      OnKeyPress = Tekan13
    end
    object btnbatal: TbsSkinButton
      Left = 9
      Top = 552
      Width = 227
      Height = 26
      TabOrder = 17
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
    object DBmenu: TDBGrid
      Left = 7
      Top = 146
      Width = 466
      Height = 271
      TabStop = False
      Color = clWhite
      DataSource = DScarimenu
      FixedColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBmenuDrawColumnCell
      OnDblClick = DBmenuDblClick
      OnEnter = DBmenuEnter
      OnKeyPress = DBmenuKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'ID Menu'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'menu'
          Title.Caption = 'Item Menu'
          Width = 255
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Harga'
          Width = 105
          Visible = True
        end>
    end
    object btnsimpan: TbsSkinButton
      Left = 248
      Top = 552
      Width = 227
      Height = 26
      TabOrder = 18
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
      UseSkinFont = True
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = 'S a v e'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnsimpanClick
    end
    object bsSkinButton1: TbsSkinButton
      Left = 13
      Top = 48
      Width = 75
      Height = 26
      TabOrder = 19
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
      Caption = 'Bar'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton1Click
    end
    object bsSkinButton2: TbsSkinButton
      Left = 92
      Top = 48
      Width = 75
      Height = 26
      TabOrder = 20
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
      Caption = 'Kitchen'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton2Click
    end
    object bsSkinButton3: TbsSkinButton
      Left = 172
      Top = 48
      Width = 75
      Height = 26
      TabOrder = 21
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
      Caption = 'IT'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton3Click
    end
    object edtLokasi: TAEdit
      Tag = 1
      Left = 253
      Top = 48
      Width = 220
      Height = 21
      TabStop = False
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
      ReadOnly = True
      TabOrder = 22
      Text = 'Bar'
      OnKeyPress = Tekan13
      Alignment = taCenter
    end
    object dbcs: TDBGrid
      Left = 118
      Top = 32
      Width = 355
      Height = 25
      Hint = 'DoubleClick For Select'
      Color = clRed
      DataSource = Dscs
      FixedColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = dbcsDrawColumnCell
      OnDblClick = dbcsDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'login'
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Title.Alignment = taCenter
          Title.Caption = 'Nama'
          Width = 221
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 513
    Top = 72
    Width = 484
    Height = 593
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BorderWidth = 1
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label7: TLabel
      Left = 13
      Top = 197
      Width = 28
      Height = 13
      Caption = 'Note'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBGordermenu: TDBGrid
      Left = 8
      Top = 304
      Width = 467
      Height = 209
      TabStop = False
      Color = clWhite
      DataSource = DSorder
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
      OnDrawColumnCell = DBGordermenuDrawColumnCell
      OnDblClick = DBGordermenuDblClick
      OnKeyPress = Tekan13
      Columns = <
        item
          Expanded = False
          FieldName = 'idmenu'
          Title.Alignment = taCenter
          Title.Caption = 'ID Menu'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'menu'
          Title.Caption = 'Menu'
          Width = 234
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'qty'
          Title.Alignment = taCenter
          Title.Caption = 'Qty.'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 96
          Visible = True
        end>
    end
    object edtTotal: TAEdit
      Left = 360
      Top = 519
      Width = 104
      Height = 21
      TabStop = False
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
    object btnedit: TbsSkinButton
      Left = 204
      Top = 552
      Width = 75
      Height = 26
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
      Left = 8
      Top = 552
      Width = 467
      Height = 26
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
      Caption = 'Delete'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnhapusClick
    end
    object DBOrder: TDBGrid
      Left = 8
      Top = 11
      Width = 467
      Height = 150
      TabStop = False
      DataSource = DsVtOrder
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBOrderDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'idmenu'
          Title.Alignment = taCenter
          Title.Caption = 'ID Menu'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'menu'
          Title.Caption = 'Menu'
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qty'
          Title.Alignment = taCenter
          Title.Caption = 'Qty.'
          Width = 33
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 96
          Visible = True
        end>
    end
    object btnDeleteVtOrder: TbsSkinButton
      Left = 204
      Top = 166
      Width = 75
      Height = 26
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
      OnClick = btnDeleteVtOrderClick
    end
    object btnkeluar: TbsSkinButton
      Left = 9
      Top = 271
      Width = 467
      Height = 26
      TabOrder = 6
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
      Caption = 'Save'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnkeluarClick
    end
    object Memo1: TMemo
      Left = 64
      Top = 197
      Width = 411
      Height = 63
      Ctl3D = False
      Lines.Strings = (
        '')
      ParentCtl3D = False
      TabOrder = 7
    end
  end
  object SaveOrder: TButton
    Left = 8
    Top = 688
    Width = 75
    Height = 25
    Caption = 'SaveOrder'
    TabOrder = 4
    Visible = False
    OnClick = SaveOrderClick
  end
  object btnExit: TbsSkinButton
    Left = 470
    Top = 685
    Width = 75
    Height = 26
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
    OnClick = btnExitClick
  end
  object qmenu: TZQuery
    AfterScroll = qmenuAfterScroll
    SQL.Strings = (
      'SELECT     id, kategori, menu, harga '
      '                    FROM         tmenu '
      ''
      '')
    Params = <>
    Left = 792
    Top = 8
    object qmenuid: TStringField
      Alignment = taCenter
      FieldName = 'id'
      FixedChar = True
      Size = 8
    end
    object qmenukategori: TSmallintField
      FieldName = 'kategori'
    end
    object qmenumenu: TStringField
      FieldName = 'menu'
      FixedChar = True
      Size = 50
    end
    object qmenuharga: TFloatField
      FieldName = 'harga'
      DisplayFormat = '#,0'
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
    MainMenuBar = FrmInduk.bsSkinMainMenuBar1
    SkinData = FrmInduk.bsSkinData2
    MenusSkinData = FrmInduk.bsSkinData1
    MinHeight = 755
    MinWidth = 1024
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
    Left = 24
    Top = 8
  end
  object qkatmenu: TZQuery
    Params = <>
    Left = 832
    Top = 8
  end
  object DSkatmenu: TDataSource
    DataSet = qkatmenu
    Left = 832
    Top = 24
  end
  object DScarimenu: TDataSource
    AutoEdit = False
    DataSet = qmenu
    Left = 792
    Top = 24
  end
  object Qothers: TZQuery
    Params = <>
    Left = 672
    Top = 8
  end
  object Qorder: TZQuery
    SQL.Strings = (
      
        'SELECT     torder_menu.idmenu, tmenu.menu, torder_menu.harga_asl' +
        'i, torder_menu.diskon, torder_menu.qty, '
      
        '                      torder_menu.harga_asli - torder_menu.disko' +
        'n AS hardisk, (torder_menu.harga_asli - torder_menu.diskon) * to' +
        'rder_menu.qty AS total, '
      '                      torder_menu.idso'
      'FROM         torder_menu INNER JOIN'
      '                      tmenu ON torder_menu.idmenu = tmenu.id'
      'WHERE     (torder_menu.status = 1)')
    Params = <>
    Left = 744
    Top = 8
    object Qorderidmenu: TStringField
      Alignment = taCenter
      FieldName = 'idmenu'
      Origin = 'VIZTA.torder_menu.idmenu'
      FixedChar = True
      Size = 8
    end
    object Qordermenu: TStringField
      FieldName = 'menu'
      Origin = 'VIZTA.tmenu.menu'
      FixedChar = True
      Size = 50
    end
    object Qorderharga_asli: TFloatField
      FieldName = 'harga_asli'
      Origin = 'VIZTA.torder_menu.harga_asli'
    end
    object Qorderdiskon: TFloatField
      FieldName = 'diskon'
      Origin = 'VIZTA.torder_menu.diskon'
      DisplayFormat = '#,0'
    end
    object Qorderqty: TSmallintField
      FieldName = 'qty'
      Origin = 'VIZTA.torder_menu.qty'
    end
    object Qorderhardisk: TFloatField
      FieldName = 'hardisk'
      Origin = 'VIZTA.torder_menu.harga_asli'
      DisplayFormat = '#,0'
    end
    object Qordertotal: TFloatField
      FieldName = 'total'
      Origin = 'VIZTA.torder_menu.harga_asli'
      DisplayFormat = '#,0'
    end
    object Qorderidso: TStringField
      FieldName = 'idso'
      Origin = 'VIZTA.torder_menu.idso'
      FixedChar = True
      Size = 10
    end
  end
  object DSorder: TDataSource
    DataSet = Qorder
    Left = 728
    Top = 32
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
    Left = 56
    Top = 8
  end
  object Qupdate: TZQuery
    Params = <>
    Left = 88
    Top = 8
  end
  object vtCashOrder: TVirtualTable
    OnCalcFields = vtCashOrderCalcFields
    FieldDefs = <
      item
        Name = 'idmenu'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'menu'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'harga_asli'
        DataType = ftFloat
      end
      item
        Name = 'diskon'
        DataType = ftFloat
      end
      item
        Name = 'qty'
        DataType = ftInteger
      end
      item
        Name = 'cs'
        DataType = ftString
        Size = 5
      end>
    Left = 712
    Top = 8
    Data = {
      02000600060069646D656E7501000A0004006D656E75010032000A0068617267
      615F61736C690600000006006469736B6F6E0600000003007174790300000002
      00637301000500000000000000}
    object vtCashOrderidmenu: TStringField
      Alignment = taCenter
      FieldName = 'idmenu'
      Size = 10
    end
    object vtCashOrdermenu: TStringField
      FieldName = 'menu'
      Size = 50
    end
    object vtCashOrderharga_asli: TFloatField
      FieldName = 'harga_asli'
      DisplayFormat = '#,0'
    end
    object vtCashOrderdiskon: TFloatField
      FieldName = 'diskon'
    end
    object vtCashOrderqty: TIntegerField
      FieldName = 'qty'
    end
    object vtCashOrderhardisk: TFloatField
      FieldKind = fkCalculated
      FieldName = 'hardisk'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object vtCashOrdertotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object vtCashOrdercs: TStringField
      FieldName = 'cs'
      Size = 5
    end
  end
  object Qcs: TZQuery
    SQL.Strings = (
      'SELECT     login, nama'
      'FROM         tkasir'
      'ORDER BY login')
    Params = <>
    Left = 120
    Top = 8
    object Qcslogin: TStringField
      FieldName = 'login'
      Origin = 'VIZTA.tkasir.login'
      FixedChar = True
      Size = 5
    end
    object Qcsnama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tkasir.nama'
      FixedChar = True
    end
  end
  object Dscs: TDataSource
    AutoEdit = False
    DataSet = Qcs
    Left = 120
    Top = 24
  end
  object Qidso: TZQuery
    Params = <>
    Left = 488
    Top = 8
  end
  object Qdetaiso: TZQuery
    Params = <>
    Left = 520
    Top = 8
  end
  object DsVtOrder: TDataSource
    DataSet = VtOrder
    Left = 584
    Top = 24
  end
  object VtOrder: TVirtualTable
    OnCalcFields = VtOrderCalcFields
    FieldDefs = <
      item
        Name = 'idmenu'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'menu'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'harga_asli'
        DataType = ftFloat
      end
      item
        Name = 'diskon'
        DataType = ftFloat
      end
      item
        Name = 'qty'
        DataType = ftInteger
      end
      item
        Name = 'cs'
        DataType = ftString
        Size = 5
      end>
    Left = 584
    Top = 8
    Data = {
      02000600060069646D656E7501000A0004006D656E75010032000A0068617267
      615F61736C690600000006006469736B6F6E0600000003007174790300000002
      00637301000500000000000000}
    object VtOrderidmenu: TStringField
      FieldName = 'idmenu'
      Size = 10
    end
    object VtOrderharga_asli: TFloatField
      FieldName = 'harga_asli'
    end
    object VtOrderdiskon: TFloatField
      FieldName = 'diskon'
    end
    object VtOrderqty: TIntegerField
      FieldName = 'qty'
    end
    object VtOrdertotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object VtOrdermenu: TStringField
      FieldName = 'menu'
      Size = 50
    end
  end
  object Qcari: TZQuery
    Params = <>
    Left = 152
    Top = 8
  end
end
