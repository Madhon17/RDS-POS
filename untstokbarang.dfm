object fstokbarang: Tfstokbarang
  Left = 213
  Top = 173
  AutoScroll = False
  BorderIcons = []
  Caption = 'REPORT STOK BARANG'
  ClientHeight = 632
  ClientWidth = 778
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
  object btncari: TbsSkinXFormButton
    Left = 352
    Top = 155
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
    Caption = 'Cari'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Panel3: TPanel
    Left = 244
    Top = 112
    Width = 291
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object rdo_namabarang: TRadioButton
      Left = 166
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object rdo_idbarang: TRadioButton
      Left = 56
      Top = 8
      Width = 89
      Height = 17
      Caption = 'ID'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
  end
  object btnprint: TbsSkinXFormButton
    Left = 60
    Top = 537
    Width = 658
    Height = 26
    TabOrder = 2
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
    Caption = 'P R I N T'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 351
    Top = 577
    Width = 75
    Height = 26
    TabOrder = 3
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnexitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Panel2: TPanel
    Left = 244
    Top = 10
    Width = 291
    Height = 97
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object cmbKategori: TComboBox
      Left = 31
      Top = 60
      Width = 234
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      Items.Strings = (
        ''
        'CASH'
        'CARD'
        'FOC'
        'CANCEL'
        'CORRECTION')
    end
    object Tgl_akhir: TDateTimePicker
      Left = 32
      Top = 11
      Width = 150
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object waktuakhir: TDateTimePicker
      Left = 192
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
      TabOrder = 2
    end
    object cmbGudang: TComboBox
      Left = 31
      Top = 36
      Width = 234
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        ''
        'CASH'
        'CARD'
        'FOC'
        'CANCEL'
        'CORRECTION')
    end
  end
  object DBGrid1: TDBGrid
    Left = 60
    Top = 192
    Width = 658
    Height = 329
    DataSource = DSstok
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
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
        FieldName = 'idbarang'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'namabarang'
        Title.Caption = 'Item'
        Width = 386
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CalStok'
        Title.Alignment = taCenter
        Title.Caption = 'Stok'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode'
        Title.Caption = 'Satuan'
        Width = 50
        Visible = True
      end>
  end
  object Qcari: TZQuery
    OnCalcFields = QcariCalcFields
    SQL.Strings = (
      
        'SELECT     Tbarang.idbarang, Tbarang.namabarang, TM.qty AS masuk' +
        ', TK.qty AS keluar, tsatuan.kode, Tbarang.idkategori'
      'FROM         Tbarang LEFT OUTER JOIN'
      
        '                      tsatuan ON Tbarang.idsatuan = tsatuan.id L' +
        'EFT OUTER JOIN'
      
        '                          (SELECT     TKd.idbarang, SUM(TKd.qty)' +
        ' AS qty'
      
        '                            FROM          TgudangMutasiDetail TK' +
        'd INNER JOIN'
      
        '                                                   TgudangMutasi' +
        ' TK ON TKd.idmutasi = TK.id'
      
        '                            WHERE      (TK.asal > 5) AND (TK.tan' +
        'ggal >= CONVERT(DATETIME, '#39'2000-01-01 00:00:00'#39', 102))'
      
        '                            GROUP BY TKd.idbarang) TK ON Tbarang' +
        '.idbarang = TK.idbarang LEFT OUTER JOIN'
      
        '                          (SELECT     TMd.idbarang, SUM(TMd.qty)' +
        ' AS qty'
      
        '                            FROM          TgudangMutasiDetail TM' +
        'd INNER JOIN'
      
        '                                                   TgudangMutasi' +
        ' TM ON TMd.idmutasi = TM.id'
      
        '                            WHERE      (TM.tujuan > 5) AND (TM.t' +
        'anggal >= CONVERT(DATETIME, '#39'2000-01-01 00:00:00'#39', 102))'
      
        '                            GROUP BY TMd.idbarang) TM ON Tbarang' +
        '.idbarang = TM.idbarang'
      'WHERE     (Tbarang.idkategori = 6)'
      'ORDER BY Tbarang.idbarang')
    Params = <>
    Left = 48
    Top = 128
    object Qcariidbarang: TStringField
      Alignment = taCenter
      FieldName = 'idbarang'
      FixedChar = True
      Size = 8
    end
    object Qcarinamabarang: TStringField
      FieldName = 'namabarang'
      FixedChar = True
      Size = 30
    end
    object Qcarimasuk: TFloatField
      FieldName = 'masuk'
    end
    object Qcarikeluar: TFloatField
      FieldName = 'keluar'
    end
    object QcariCalStok: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalStok'
      Calculated = True
    end
    object Qcarikode: TStringField
      Alignment = taCenter
      FieldName = 'kode'
      FixedChar = True
      Size = 7
    end
    object Qcariidkategori: TSmallintField
      FieldName = 'idkategori'
    end
  end
  object DSstok: TDataSource
    DataSet = Qcari
    Left = 48
    Top = 144
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
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
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
    Top = 24
  end
  object RVstok: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qcari
    Left = 48
    Top = 160
  end
  object RVkategoristok: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = Qkategori
    Left = 16
    Top = 152
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     kode, kategori, id'
      'FROM         tkategoribarang'
      'ORDER BY kategori')
    Params = <>
    Left = 16
    Top = 128
    object Qkategorikode: TStringField
      FieldName = 'kode'
      Origin = 'VIZTA.tkategoribarang.kode'
      FixedChar = True
      Size = 3
    end
    object Qkategorikategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategoribarang.kategori'
      FixedChar = True
    end
    object Qkategoriid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tkategoribarang.id'
    end
  end
  object Qgudang: TZQuery
    OnFilterRecord = QgudangFilterRecord
    SQL.Strings = (
      'SELECT     id, gudang'
      'FROM         Tgudang'
      'WHERE     (id > 5)'
      'ORDER BY gudang')
    Params = <>
    Left = 80
    Top = 128
    object Qgudangid: TIntegerField
      FieldName = 'id'
      Origin = 'VIZTA.Tgudang.id'
    end
    object Qgudanggudang: TStringField
      FieldName = 'gudang'
      Origin = 'VIZTA.Tgudang.gudang'
      FixedChar = True
    end
  end
end
