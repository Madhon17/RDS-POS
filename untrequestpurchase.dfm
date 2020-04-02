object FpurchaseRequest: TFpurchaseRequest
  Left = 219
  Top = 33
  AutoScroll = False
  BorderIcons = []
  Caption = 'FpurchaseRequest'
  ClientHeight = 746
  ClientWidth = 712
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
  object Label6: TLabel
    Left = 93
    Top = 165
    Width = 70
    Height = 13
    Caption = 'Tgl Request'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 93
    Top = 190
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
  object Label2: TLabel
    Left = 93
    Top = 103
    Width = 56
    Height = 13
    Caption = 'Karyawan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 93
    Top = 247
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
  object Label1: TLabel
    Left = 93
    Top = 127
    Width = 32
    Height = 13
    Caption = 'Divisi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 93
    Top = 71
    Width = 37
    Height = 13
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object tglrequest: TDateTimePicker
    Left = 174
    Top = 162
    Width = 147
    Height = 21
    Date = 38520.662762094910000000
    Format = 'dd MMMM yyyy '
    Time = 38520.662762094910000000
    TabOrder = 1
  end
  object tglperlu: TDateTimePicker
    Left = 174
    Top = 186
    Width = 147
    Height = 21
    Date = 38520.662762094910000000
    Format = 'dd MMMM yyyy '
    Time = 38520.662762094910000000
    TabOrder = 2
  end
  object edtCs: TAEdit
    Left = 174
    Top = 98
    Width = 91
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
    OnChange = edtCsChange
    OnEnter = edtCsEnter
    OnExit = edtCsExit
    Alignment = taCenter
  end
  object btnCariMenu: TbsSkinButton
    Left = 272
    Top = 99
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
    Left = 301
    Top = 98
    Width = 228
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    TabOrder = 5
    OnEnter = edtNamaCsEnter
    OnExit = edtNamaCsExit
  end
  object Memo1: TMemo
    Left = 174
    Top = 248
    Width = 353
    Height = 57
    Lines.Strings = (
      '')
    TabOrder = 6
  end
  object grpMenu: TPanel
    Left = 90
    Top = 328
    Width = 496
    Height = 329
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
    TabOrder = 0
    object Barang: TLabel
      Left = 30
      Top = 49
      Width = 41
      Height = 13
      Caption = 'Barang'
    end
    object Label4: TLabel
      Left = 31
      Top = 102
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
    object edtidbarang: TAEdit
      Left = 88
      Top = 44
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = edtidbarangChange
      OnEnter = edtidbarangEnter
      OnExit = edtidbarangExit
      OnKeyDown = edtidbarangKeyDown
      OnKeyPress = TKN13
      Alignment = taCenter
    end
    object edtnamabarang: TAEdit
      Left = 210
      Top = 44
      Width = 233
      Height = 21
      TabOrder = 1
      OnChange = edtnamabarangChange
      OnEnter = edtnamabarangEnter
      OnExit = edtnamabarangExit
      OnKeyDown = edtnamabarangKeyDown
      OnKeyPress = edtnamabarangKeyPress
      Alignment = taRightJustify
    end
    object spnquantity: TSpinEdit
      Left = 88
      Top = 96
      Width = 89
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 3
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 1
      OnChange = spnquantityChange
      OnEnter = spnquantityEnter
      OnExit = spnquantityExit
      OnKeyDown = spnquantityKeyDown
    end
    object btnhapus: TbsSkinButton
      Left = 291
      Top = 528
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
    object btntambah: TbsSkinButton
      Left = 131
      Top = 528
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
      Caption = 'Tambah'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btntambahClick
    end
    object btnubah: TbsSkinButton
      Left = 211
      Top = 528
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
      Caption = 'Edit'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnubahClick
    end
    object btnbatal: TbsSkinButton
      Left = 251
      Top = 528
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
      Caption = 'Batal'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnbatalClick
      OnEnter = btnbatalEnter
    end
    object btnsimpan: TbsSkinButton
      Left = 163
      Top = 528
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
      Caption = 'Simpan'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnsimpanClick
    end
    object DBGrid2: TDBGrid
      Left = 15
      Top = 144
      Width = 458
      Height = 121
      DataSource = DScari
      FixedColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 8
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
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qty'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Harga'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Width = 67
          Visible = True
        end>
    end
    object bsSkinButton1: TbsSkinButton
      Left = 184
      Top = 43
      Width = 24
      Height = 20
      TabOrder = 9
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
    object btnBtambah: TbsSkinButton
      Left = 126
      Top = 288
      Width = 75
      Height = 25
      TabOrder = 10
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
      OnClick = btnBtambahClick
    end
    object btnBedit: TbsSkinButton
      Left = 206
      Top = 288
      Width = 75
      Height = 25
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
    end
    object btnBhapus: TbsSkinButton
      Left = 286
      Top = 288
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
      Caption = 'Hapus'
      NumGlyphs = 1
      Spacing = 1
    end
    object btnBsimpan: TbsSkinButton
      Left = 155
      Top = 272
      Width = 75
      Height = 25
      TabOrder = 13
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
      OnClick = btnBsimpanClick
    end
    object btnBbatal: TbsSkinButton
      Left = 230
      Top = 272
      Width = 75
      Height = 25
      TabOrder = 14
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
    end
    object AEdit1: TAEdit
      Left = 90
      Top = 68
      Width = 233
      Height = 21
      TabOrder = 15
      OnChange = edtnamabarangChange
      OnEnter = edtnamabarangEnter
      OnExit = edtnamabarangExit
      OnKeyDown = edtnamabarangKeyDown
      OnKeyPress = edtnamabarangKeyPress
      Alignment = taRightJustify
    end
  end
  object btnadd: TbsSkinButton
    Left = 182
    Top = 687
    Width = 75
    Height = 25
    TabOrder = 7
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
    Left = 262
    Top = 687
    Width = 75
    Height = 25
    TabOrder = 8
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
    Left = 342
    Top = 687
    Width = 75
    Height = 25
    TabOrder = 9
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
    Left = 262
    Top = 717
    Width = 75
    Height = 25
    TabOrder = 10
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
  object btnsave: TbsSkinButton
    Left = 211
    Top = 672
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
    Caption = 'Simpan'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnsaveClick
  end
  object btncancel: TbsSkinButton
    Left = 286
    Top = 672
    Width = 75
    Height = 25
    TabOrder = 12
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
  object Edit1: TEdit
    Left = 174
    Top = 122
    Width = 356
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    TabOrder = 13
    OnEnter = edtNamaCsEnter
    OnExit = edtNamaCsExit
  end
  object ComboBox1: TComboBox
    Left = 174
    Top = 64
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 14
    Text = 'Request'
    Items.Strings = (
      'Request'
      'Cancel'
      'Confirm')
  end
  object DSrequest: TDataSource
    DataSet = Qrequest
    Left = 560
    Top = 16
  end
  object Qrequest: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     idrequest, iddivisi, tglperlu, tglrequest, nominal, i' +
        'dkarkonfirmasi, keterangan'
      'FROM         trequest')
    Left = 560
    object Qrequestidrequest: TStringField
      FieldName = 'idrequest'
      Origin = 'VIZTA.trequest.idrequest'
      FixedChar = True
      Size = 10
    end
    object Qrequesttglperlu: TDateTimeField
      FieldName = 'tglperlu'
      Origin = 'VIZTA.trequest.tglperlu'
    end
    object Qrequesttglrequest: TDateTimeField
      FieldName = 'tglrequest'
      Origin = 'VIZTA.trequest.tglrequest'
    end
    object Qrequestnominal: TFloatField
      FieldName = 'nominal'
      Origin = 'VIZTA.trequest.nominal'
    end
    object Qrequestiddivisi: TStringField
      FieldName = 'iddivisi'
      Origin = 'VIZTA.trequest.iddivisi'
      FixedChar = True
      Size = 5
    end
    object Qrequestidkarkonfirmasi: TStringField
      FieldName = 'idkarkonfirmasi'
      Origin = 'VIZTA.trequest.idkarkonfirmasi'
      FixedChar = True
      Size = 5
    end
    object Qrequestketerangan: TStringField
      FieldName = 'keterangan'
      Origin = 'VIZTA.trequest.keterangan'
      FixedChar = True
      Size = 10
    end
  end
  object Qidrequest: TQuery
    DatabaseName = 'vizta'
    Left = 512
  end
  object Qupdate: TQuery
    DatabaseName = 'vizta'
    Left = 536
  end
  object Qbarang: TQuery
    AfterScroll = QbarangAfterScroll
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     idbarang, namabarang, harga'
      'FROM         Tbarang')
    Left = 360
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
    Left = 360
    Top = 16
  end
  object DScari: TDataSource
    DataSet = VTrequest
    Left = 389
    Top = 16
  end
  object Qothers: TQuery
    DatabaseName = 'vizta'
    Left = 432
  end
  object VTrequest: TVirtualTable
    FieldDefs = <
      item
        Name = 'IDbarang'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Qty'
        DataType = ftInteger
      end
      item
        Name = 'Harga'
        DataType = ftFloat
      end
      item
        Name = 'Total'
        DataType = ftFloat
      end>
    Left = 389
    Data = {
      0200040008004944626172616E67010014000300517479030000000500486172
      6761060000000500546F74616C06000000000000000000}
    object VTrequestIDbarang: TStringField
      FieldName = 'IDbarang'
    end
    object VTrequestHarga: TFloatField
      FieldName = 'Harga'
    end
    object VTrequestIDrequest: TStringField
      FieldName = 'IDrequest'
    end
    object VTrequestTotal: TFloatField
      FieldName = 'Total'
    end
    object VTrequestQty: TIntegerField
      FieldName = 'Qty'
    end
  end
  object Qcs: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, login, nama'
      'FROM         tkasir')
    Left = 488
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
  object Qkonfirmasi: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, login, nama'
      'FROM         tkasir')
    Left = 464
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
