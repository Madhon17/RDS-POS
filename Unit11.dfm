object fpaketroom: Tfpaketroom
  Left = 257
  Top = 78
  AutoScroll = False
  BorderIcons = []
  Caption = 'Paket Room'
  ClientHeight = 702
  ClientWidth = 737
  Color = clInfoBk
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
  object Panel1: TPanel
    Left = 64
    Top = 326
    Width = 585
    Height = 299
    BevelWidth = 4
    BiDiMode = bdRightToLeftReadingOnly
    BorderStyle = bsSingle
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 4
      Top = 37
      Width = 35
      Height = 13
      Caption = 'Harga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Menu: TLabel
      Left = 4
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Menu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 4
      Top = 67
      Width = 48
      Height = 13
      Caption = 'Quantity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 4
      Top = 92
      Width = 73
      Height = 13
      Caption = 'Jumlah Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblcari: TLabel
      Left = 396
      Top = 10
      Width = 89
      Height = 13
      Caption = 'CARI MENU -->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 384
      Top = 245
      Width = 41
      Height = 13
      Caption = 'TOTAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgpaketmenu: TDBGrid
      Left = 92
      Top = 120
      Width = 357
      Height = 121
      DataSource = DSpaketmenu
      FixedColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'idmenu'
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantity'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jumlah'
          Visible = True
        end>
    end
    object btncarimenu: TButton
      Left = 468
      Top = 4
      Width = 25
      Height = 25
      Cursor = crHandPoint
      Caption = '.......'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btncarimenuClick
    end
    object edtmenu: TEdit
      Left = 92
      Top = 8
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = edtmenuChange
      OnExit = edtmenuExit
      OnKeyPress = TKN
    end
    object edtNamaMenu: TEdit
      Left = 244
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 3
      OnKeyPress = TKN
    end
    object EdtTotalpaketmenu: TEdit
      Left = 92
      Top = 93
      Width = 121
      Height = 21
      TabOrder = 4
      OnKeyPress = TKN
    end
    object spnquantity: TSpinEdit
      Left = 92
      Top = 64
      Width = 49
      Height = 22
      MaxValue = 80
      MinValue = 1
      TabOrder = 5
      Value = 1
      OnChange = spnquantityChange
      OnKeyPress = TKN
    end
    object Edit1: TEdit
      Left = 447
      Top = 243
      Width = 106
      Height = 21
      TabOrder = 6
    end
    object edtHarga: TDBEdit
      Left = 92
      Top = 32
      Width = 121
      Height = 21
      DataField = 'harga'
      DataSource = DSpaketmenu
      TabOrder = 7
      OnChange = edthargaChange
      OnExit = edthargaExit
      OnKeyPress = TKN
    end
    object btntambahpaketmenu: TbsSkinButton
      Left = 132
      Top = 245
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
      Caption = 'Tambah'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btntambahpaketmenuClick
    end
    object btneditpaketmenu: TbsSkinButton
      Left = 212
      Top = 245
      Width = 75
      Height = 27
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
      Caption = 'Edit'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btneditpaketmenuClick
    end
    object btnhapuspaketmenu: TbsSkinButton
      Left = 292
      Top = 245
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
      Caption = 'Hapus'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnhapuspaketmenuClick
    end
    object btnsimpanpaketmenu: TbsSkinButton
      Left = 172
      Top = 256
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
      OnClick = btnsimpanpaketmenuClick
      OnKeyPress = TKN
    end
    object btnbatalpaketmenu: TbsSkinButton
      Left = 252
      Top = 256
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
      OnClick = btnbatalpaketmenuClick
    end
  end
  object btnsimpan: TButton
    Left = 248
    Top = 653
    Width = 75
    Height = 36
    Caption = 'Simpan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnsimpanClick
  end
  object btnkeluar: TButton
    Left = 328
    Top = 653
    Width = 89
    Height = 36
    Caption = 'Keluar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnkeluarClick
  end
  object Panel2: TPanel
    Left = 64
    Top = 24
    Width = 585
    Height = 289
    BevelInner = bvSpace
    BevelWidth = 4
    BorderStyle = bsSingle
    Color = clInfoBk
    TabOrder = 3
    object Label1: TLabel
      Left = 9
      Top = 11
      Width = 84
      Height = 13
      Caption = 'Room Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 39
      Width = 35
      Height = 13
      Caption = 'Harga'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 67
      Width = 37
      Height = 13
      Caption = 'Durasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 148
      Top = 67
      Width = 19
      Height = 13
      Caption = 'Jam'
    end
    object Label3: TLabel
      Left = 8
      Top = 93
      Width = 40
      Height = 13
      Caption = 'Jumlah'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 386
      Top = 240
      Width = 41
      Height = 13
      Caption = 'TOTAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBLkatroom: TDBLookupComboBox
      Left = 105
      Top = 8
      Width = 145
      Height = 21
      DataField = 'idroom'
      DataSource = DSpaketroom
      KeyField = 'id'
      ListField = 'kategori'
      ListSource = DSkatroom
      TabOrder = 0
      OnClick = DBLkatroomClick
      OnKeyPress = TKN13
    end
    object DBhargaroom: TDBEdit
      Left = 105
      Top = 35
      Width = 121
      Height = 21
      DataField = 'harga'
      DataSource = DSpaketroom
      TabOrder = 1
      OnChange = DBhargaroomChange
      OnKeyPress = TKN13
    end
    object SPNdurasi: TSpinEdit
      Left = 105
      Top = 63
      Width = 41
      Height = 22
      MaxValue = 20
      MinValue = 1
      TabOrder = 2
      Value = 1
      OnChange = SPNdurasiChange
      OnKeyPress = TKN13
    end
    object edthargaroom: TEdit
      Left = 105
      Top = 91
      Width = 153
      Height = 21
      TabOrder = 3
    end
    object DBGpaketroom: TDBGrid
      Left = 105
      Top = 119
      Width = 337
      Height = 113
      DataSource = DSpaketroom
      FixedColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'idroom'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'durasi'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jumlah'
          Width = 74
          Visible = True
        end>
    end
    object Edit2: TEdit
      Left = 441
      Top = 233
      Width = 97
      Height = 21
      TabOrder = 6
    end
    object btneditpaketroom: TbsSkinButton
      Left = 217
      Top = 240
      Width = 75
      Height = 26
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
      Caption = 'Edit'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btneditpaketroomClick
    end
    object btntambahpaketroom: TbsSkinButton
      Left = 137
      Top = 239
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
      Caption = 'Tambah'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btntambahpaketroomClick
    end
    object btnhapuspaketroom: TbsSkinButton
      Left = 297
      Top = 239
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
      OnClick = btnhapuspaketroomClick
    end
    object btnsimpanpaketroom: TbsSkinButton
      Left = 179
      Top = 247
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
      Caption = 'Simpan'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnsimpanpaketroomClick
      OnKeyPress = TKN13
    end
    object btnbatalpaketroom: TbsSkinButton
      Left = 260
      Top = 247
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
      Caption = 'Batal'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnbatalpaketroomClick
    end
  end
  object DSkatroom: TDataSource
    DataSet = qkatroom
    Left = 440
    Top = 50
  end
  object qkatroom: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, kategori, harga'
      'FROM         tkategoriroom')
    Left = 440
    Top = 26
  end
  object DSkategori: TDataSource
    DataSet = Qharga
    Left = 472
    Top = 50
  end
  object qloading: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     MAX(id) AS id'
      'FROM         tpaketroom')
    Left = 504
    Top = 26
  end
  object Qmenucari: TQuery
    DatabaseName = 'vizta'
    DataSource = DSpaketmenu
    SQL.Strings = (
      ' SELECT     id, kategori, menu, harga '
      '                    FROM         tmenu '
      ''
      'order by id')
    Left = 616
    Top = 362
    object Qmenucariid: TStringField
      FieldName = 'id'
      Origin = 'VIZTA.tmenu.id'
      FixedChar = True
      Size = 8
    end
    object Qmenucarimenu: TStringField
      FieldName = 'menu'
      Origin = 'VIZTA.tmenu.menu'
      FixedChar = True
      Size = 50
    end
    object Qmenucarikategori: TSmallintField
      FieldName = 'kategori'
    end
    object Qmenucariharga: TFloatField
      FieldName = 'harga'
    end
  end
  object VTpaketroom: TVirtualTable
    AfterScroll = VTpaketroomAfterScroll
    FieldDefs = <
      item
        Name = 'idroom'
        DataType = ftSmallint
      end
      item
        Name = 'harga'
        DataType = ftFloat
      end
      item
        Name = 'jumlah'
        DataType = ftFloat
      end
      item
        Name = 'durasi'
        DataType = ftSmallint
      end
      item
        Name = 'totalpaketroom'
        DataType = ftFloat
      end>
    Left = 408
    Top = 26
    Data = {
      0200050006006964726F6F6D02000000050068617267610600000006006A756D
      6C6168060000000600647572617369020000000E00746F74616C70616B657472
      6F6F6D06000000000000000000}
    object VTpaketroomidroom: TSmallintField
      FieldName = 'idroom'
    end
    object VTpaketroomharga: TFloatField
      FieldName = 'harga'
    end
    object VTpaketroomjumlah: TFloatField
      FieldName = 'jumlah'
    end
    object VTpaketroomdurasi: TSmallintField
      FieldName = 'durasi'
    end
    object VTpaketroomtotalpaketroom: TFloatField
      FieldName = 'totalpaketroom'
    end
  end
  object DSpaketmenu: TDataSource
    AutoEdit = False
    DataSet = VTpaketmenu
    Left = 584
    Top = 386
  end
  object DSpaketroom: TDataSource
    AutoEdit = False
    DataSet = VTpaketroom
    Left = 408
    Top = 50
  end
  object Qharga: TQuery
    DatabaseName = 'vizta'
    Left = 472
    Top = 26
  end
  object VTpaketmenu: TVirtualTable
    AfterScroll = VTpaketmenuAfterScroll
    FieldDefs = <
      item
        Name = 'idmenu'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'harga'
        DataType = ftFloat
      end
      item
        Name = 'quantity'
        DataType = ftSmallint
      end
      item
        Name = 'jumlah'
        DataType = ftFloat
      end
      item
        Name = 'JumlahTotalPaketmenu'
        DataType = ftFloat
      end>
    Left = 584
    Top = 362
    Data = {
      02000500060069646D656E750100140005006861726761060000000800717561
      6E746974790200000006006A756D6C61680600000014004A756D6C6168546F74
      616C50616B65746D656E7506000000000000000000}
    object VTpaketmenuidmenu: TStringField
      FieldName = 'idmenu'
    end
    object VTpaketmenuharga: TFloatField
      FieldName = 'harga'
    end
    object VTpaketmenuquantity: TSmallintField
      FieldName = 'quantity'
    end
    object VTpaketmenujumlah: TFloatField
      FieldName = 'jumlah'
    end
    object VTpaketmenuJumlahTotalPaketmenu: TFloatField
      FieldName = 'JumlahTotalPaketmenu'
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
    MinHeight = 480
    MinWidth = 640
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
    Left = 696
    Top = 48
  end
end
