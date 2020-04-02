object FpurchaseOrder: TFpurchaseOrder
  Left = 191
  Top = 62
  AutoScroll = False
  BorderIcons = []
  Caption = 'Order Purchase'
  ClientHeight = 734
  ClientWidth = 981
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 490
    Top = 24
    Width = 575
    Height = 585
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    TabOrder = 0
    object btnadd: TbsSkinButton
      Left = 126
      Top = 495
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
      OnClick = btnaddClick
    end
    object btnedit: TbsSkinButton
      Left = 206
      Top = 495
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
    object btndelete: TbsSkinButton
      Left = 286
      Top = 495
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
    object btnexit: TbsSkinButton
      Left = 206
      Top = 525
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
      OnClick = btnexitClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 414
    Top = 32
    Width = 539
    Height = 473
    DataSource = DSorder
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'idorder'
        Title.Alignment = taCenter
        Title.Caption = 'ID-Order'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idkarrequest'
        Title.Alignment = taCenter
        Title.Caption = 'Request'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idkonfirmasi'
        Title.Alignment = taCenter
        Title.Caption = 'Konfirmasi'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_order'
        Title.Alignment = taCenter
        Title.Caption = 'Tgl Order'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_perlu'
        Title.Alignment = taCenter
        Title.Caption = 'Tgl Perlu'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_janji'
        Title.Alignment = taCenter
        Title.Caption = 'Tgl Janji'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nominal'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iddistributor'
        Title.Alignment = taCenter
        Title.Caption = 'Distributor'
        Visible = True
      end>
  end
  object grpMenu: TPanel
    Left = 11
    Top = 23
    Width = 574
    Height = 682
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
    Visible = False
    object Barang: TLabel
      Left = 21
      Top = 234
      Width = 41
      Height = 13
      Caption = 'Barang'
    end
    object Label4: TLabel
      Left = 228
      Top = 253
      Width = 48
      Height = 13
      Caption = 'Quantity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 278
      Top = 579
      Width = 33
      Height = 13
      Caption = 'T A X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 277
      Top = 603
      Width = 40
      Height = 13
      Caption = 'Diskon'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 206
      Top = 623
      Width = 103
      Height = 23
      Caption = 'Grand Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtidbarang: TAEdit
      Left = 87
      Top = 231
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = edtidbarangChange
      OnEnter = edtidbarangEnter
      OnExit = edtidbarangExit
      OnKeyDown = edtidbarangKeyDown
      OnKeyPress = TKN13
      Alignment = taCenter
    end
    object edtnamabarang: TAEdit
      Left = 185
      Top = 231
      Width = 233
      Height = 21
      TabOrder = 2
      OnChange = edtnamabarangChange
      OnEnter = edtnamabarangEnter
      OnExit = edtnamabarangExit
      OnKeyDown = edtnamabarangKeyDown
      OnKeyPress = edtnamabarangKeyPress
      Alignment = taRightJustify
    end
    object spnquantity: TSpinEdit
      Left = 220
      Top = 269
      Width = 65
      Height = 47
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxLength = 3
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 1
      OnChange = spnquantityChange
      OnEnter = spnquantityEnter
      OnExit = spnquantityExit
      OnKeyDown = spnquantityKeyDown
    end
    object btnhapus: TbsSkinButton
      Left = 275
      Top = 541
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
      Caption = 'Hapus'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnhapusClick
    end
    object btntambah: TbsSkinButton
      Left = 115
      Top = 541
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
      Caption = 'Tambah'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btntambahClick
    end
    object btnubah: TbsSkinButton
      Left = 195
      Top = 541
      Width = 75
      Height = 25
      TabOrder = 6
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
      OnClick = btnubahClick
    end
    object btnbatal: TbsSkinButton
      Left = 235
      Top = 565
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
      Caption = 'Batal'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnbatalClick
    end
    object btnsimpan: TbsSkinButton
      Left = 155
      Top = 565
      Width = 75
      Height = 25
      TabOrder = 8
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
    object DBGrid2: TDBGrid
      Left = 88
      Top = 322
      Width = 329
      Height = 188
      DataSource = DSVirtual
      FixedColor = clAqua
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNone
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid2DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'IDbarang'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTY'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Harga'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Width = 80
          Visible = True
        end>
    end
    object DBbarang: TDBGrid
      Left = 87
      Top = 317
      Width = 332
      Height = 193
      TabStop = False
      Color = clWhite
      DataSource = DSbarang
      FixedColor = clRed
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
      Visible = False
      OnDrawColumnCell = DBbarangDrawColumnCell
      OnDblClick = DBbarangDblClick
      OnKeyDown = DBbarangKeyDown
      OnKeyPress = DBbarangKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'idbarang'
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namabarang'
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Width = 71
          Visible = True
        end>
    end
    object btnsave: TbsSkinButton
      Left = 155
      Top = 649
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
      OnClick = btnsaveClick
    end
    object btncancel: TbsSkinButton
      Left = 237
      Top = 649
      Width = 75
      Height = 25
      TabOrder = 11
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
      OnClick = btncancelClick
    end
    object edtidorder: TAEdit
      Left = 87
      Top = 4
      Width = 209
      Height = 21
      CharCase = ecUpperCase
      ReadOnly = True
      TabOrder = 12
      Alignment = taCenter
    end
    object edtTax: TAEdit
      Left = 328
      Top = 575
      Width = 129
      Height = 21
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnEnter = edtTaxEnter
      OnExit = edtTaxExit
      Alignment = taRightJustify
    end
    object edtdiskon: TAEdit
      Left = 328
      Top = 599
      Width = 129
      Height = 21
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnEnter = edtdiskonEnter
      OnExit = edtdiskonExit
      Alignment = taRightJustify
    end
    object edtGrandTotal: TAEdit
      Left = 328
      Top = 624
      Width = 129
      Height = 23
      TabStop = False
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      Alignment = taRightJustify
    end
    object edttotal: TAEdit
      Left = 288
      Top = 514
      Width = 129
      Height = 21
      TabStop = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      OnEnter = edtTaxEnter
      OnExit = edtTaxExit
      Alignment = taRightJustify
    end
    object Panel1: TPanel
      Left = 87
      Top = 27
      Width = 449
      Height = 201
      BevelInner = bvLowered
      BevelOuter = bvSpace
      Color = clGray
      TabOrder = 17
      object Label6: TLabel
        Left = 13
        Top = 7
        Width = 54
        Height = 13
        Caption = 'Tgl Order'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 13
        Top = 32
        Width = 49
        Height = 13
        Caption = 'Tgl Janji'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 13
        Top = 105
        Width = 59
        Height = 13
        Caption = 'Konfirmasi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 13
        Top = 129
        Width = 59
        Height = 13
        Caption = 'Distributor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 13
        Top = 81
        Width = 48
        Height = 13
        Caption = 'Request'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 13
        Top = 56
        Width = 52
        Height = 13
        Caption = 'Tgl Perlu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 13
        Top = 154
        Width = 66
        Height = 13
        Caption = 'Keterangan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMenuText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object tglorder: TDateTimePicker
        Left = 86
        Top = 4
        Width = 147
        Height = 21
        Date = 38520.662762094910000000
        Format = 'dd MMMM yyyy '
        Time = 38520.662762094910000000
        TabOrder = 0
      end
      object tgljanji: TDateTimePicker
        Left = 86
        Top = 28
        Width = 147
        Height = 21
        Date = 38520.662762094910000000
        Format = 'dd MMMM yyyy '
        Time = 38520.662762094910000000
        TabOrder = 1
      end
      object edtidkonfirmasi: TAEdit
        Left = 86
        Top = 100
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnChange = edtidkonfirmasiChange
        OnEnter = edtidkonfirmasiEnter
        OnExit = edtidkonfirmasiExit
        Alignment = taCenter
      end
      object btncarikonfrm: TbsSkinButton
        Left = 184
        Top = 101
        Width = 24
        Height = 20
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
        Caption = '... '
        NumGlyphs = 1
        Spacing = 1
        OnClick = btncarikonfrmClick
      end
      object edtnamakonfirmasi: TEdit
        Left = 213
        Top = 100
        Width = 228
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        TabOrder = 4
        OnChange = edtnamakonfirmasiChange
        OnEnter = edtnamakonfirmasiEnter
        OnExit = edtnamakonfirmasiExit
      end
      object cmbdistributor: TComboBox
        Left = 86
        Top = 125
        Width = 295
        Height = 21
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentFont = False
        TabOrder = 5
        OnChange = cmbdistributorChange
        Items.Strings = (
          '')
      end
      object edtRequest: TAEdit
        Left = 86
        Top = 76
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
        OnChange = edtRequestChange
        OnEnter = edtRequestEnter
        OnExit = edtRequestExit
        Alignment = taCenter
      end
      object btnrequest: TbsSkinButton
        Left = 184
        Top = 77
        Width = 24
        Height = 20
        TabOrder = 7
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
        OnClick = btnrequestClick
      end
      object edtNamaRequest: TEdit
        Left = 213
        Top = 76
        Width = 228
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        TabOrder = 8
        OnChange = edtNamaRequestChange
        OnEnter = edtNamaRequestEnter
        OnExit = edtNamaRequestExit
      end
      object tglperlu: TDateTimePicker
        Left = 86
        Top = 52
        Width = 147
        Height = 21
        Date = 38520.662762094910000000
        Format = 'dd MMMM yyyy '
        Time = 38520.662762094910000000
        TabOrder = 9
      end
      object Memo1: TMemo
        Left = 86
        Top = 152
        Width = 353
        Height = 41
        TabOrder = 10
      end
    end
  end
  object Qidorder: TQuery
    DatabaseName = 'vizta'
    Left = 296
  end
  object Qbarang: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     idbarang, namabarang, harga'
      'FROM         Tbarang')
    Left = 320
    object Qbarangidbarang: TStringField
      FieldName = 'idbarang'
      Origin = 'VIZTA.Tbarang.idbarang'
      FixedChar = True
      Size = 8
    end
    object Qbarangnamabarang: TStringField
      FieldName = 'namabarang'
      Origin = 'VIZTA.Tbarang.namabarang'
      FixedChar = True
      Size = 30
    end
    object Qbarangharga: TFloatField
      FieldName = 'harga'
      Origin = 'VIZTA.Tbarang.harga'
    end
  end
  object DSbarang: TDataSource
    DataSet = Qbarang
    Left = 320
    Top = 24
  end
  object Qorder: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     idorder, idkarrequest, idkonfirmasi, tgl_order, tgl_p' +
        'erlu, tgl_janji, nominal, iddistributor, tax, diskon'
      'FROM         Torder')
    Left = 272
    object Qorderidkarrequest: TStringField
      FieldName = 'idkarrequest'
      Origin = 'VIZTA.Torder.idkarrequest'
      FixedChar = True
      Size = 5
    end
    object Qorderidkonfirmasi: TStringField
      FieldName = 'idkonfirmasi'
      Origin = 'VIZTA.Torder.idkonfirmasi'
      FixedChar = True
      Size = 5
    end
    object Qordertgl_order: TDateTimeField
      FieldName = 'tgl_order'
      Origin = 'VIZTA.Torder.tgl_order'
    end
    object Qordertgl_perlu: TDateTimeField
      FieldName = 'tgl_perlu'
      Origin = 'VIZTA.Torder.tgl_perlu'
    end
    object Qordertgl_janji: TDateTimeField
      FieldName = 'tgl_janji'
      Origin = 'VIZTA.Torder.tgl_janji'
    end
    object Qordernominal: TFloatField
      FieldName = 'nominal'
      Origin = 'VIZTA.Torder.nominal'
    end
    object Qorderidorder: TStringField
      FieldName = 'idorder'
      FixedChar = True
      Size = 12
    end
    object Qorderiddistributor: TSmallintField
      FieldName = 'iddistributor'
    end
    object Qordertax: TFloatField
      FieldName = 'tax'
      Origin = 'VIZTA.Torder.tax'
    end
    object Qorderdiskon: TFloatField
      FieldName = 'diskon'
      Origin = 'VIZTA.Torder.diskon'
    end
  end
  object DSorder: TDataSource
    DataSet = Qorder
    Left = 272
    Top = 24
  end
  object VTorderbarang: TVirtualTable
    FieldDefs = <
      item
        Name = 'IDbarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'QTY'
        DataType = ftInteger
      end
      item
        Name = 'Harga'
        DataType = ftFloat
      end
      item
        Name = 'Total'
        DataType = ftFloat
      end
      item
        Name = 'Diskon'
        DataType = ftFloat
      end>
    Left = 392
    Data = {
      0200050008004944626172616E67010014000300515459030000000500486172
      6761060000000500546F74616C0600000006004469736B6F6E06000000000000
      000000}
    object VTorderbarangIDbarang: TStringField
      FieldName = 'IDbarang'
    end
    object VTorderbarangQTY: TIntegerField
      FieldName = 'QTY'
    end
    object VTorderbarangHarga: TFloatField
      FieldName = 'Harga'
    end
    object VTorderbarangTotal: TFloatField
      FieldName = 'Total'
    end
    object VTorderbarangDiskon: TFloatField
      FieldName = 'Diskon'
    end
  end
  object Qdistributor: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     nama, id'
      'FROM         tdistributor')
    Left = 368
    object Qdistributornama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tdistributor.nama'
      FixedChar = True
      Size = 30
    end
    object Qdistributorid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tdistributor.id'
    end
  end
  object DSVirtual: TDataSource
    DataSet = VTorderbarang
    Left = 392
    Top = 24
  end
  object Qcs: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, login, nama'
      'FROM         tkasir')
    Left = 344
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
  object Qupdate: TQuery
    DatabaseName = 'vizta'
    Left = 424
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
    Left = 8
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
    MainMenuBar = FrmInduk.bsSkinMainMenuBar1
    SkinData = FrmInduk.bsSkinData2
    MenusSkinData = FrmInduk.bsSkinData1
    MinHeight = 480
    MinWidth = 640
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
    Left = 8
    Top = 24
  end
  object Qothers: TQuery
    DatabaseName = 'vizta'
    Left = 248
  end
  object Qkonfirmasi: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, login, nama'
      'FROM         tkasir')
    Left = 456
    object Qkonfirmasiid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tkasir.id'
    end
    object Qkonfirmasilogin: TStringField
      FieldName = 'login'
      Origin = 'VIZTA.tkasir.login'
      FixedChar = True
      Size = 5
    end
    object Qkonfirmasinama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tkasir.nama'
      FixedChar = True
    end
  end
end
