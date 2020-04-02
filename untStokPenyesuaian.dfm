object FstokPenyesuaian: TFstokPenyesuaian
  Left = 302
  Top = 85
  AutoScroll = False
  BorderIcons = []
  Caption = 'Penyesuaian Stok'
  ClientHeight = 632
  ClientWidth = 635
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 60
    Top = 10
    Width = 514
    Height = 39
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clSilver
    TabOrder = 0
    object Label2: TLabel
      Left = 13
      Top = 10
      Width = 45
      Height = 13
      Caption = 'Gudang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cmbGudang: TComboBox
      Left = 128
      Top = 8
      Width = 353
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Tkn13
    end
  end
  object Panel3: TPanel
    Left = 60
    Top = 52
    Width = 514
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
      Left = 328
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Nama Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = rdo_idbarangClick
      OnKeyPress = Tkn13
    end
    object rdo_idbarang: TRadioButton
      Left = 120
      Top = 8
      Width = 113
      Height = 17
      Caption = 'ID'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rdo_idbarangClick
      OnKeyPress = Tkn13
    end
  end
  object bsSkinPanel2: TbsSkinPanel
    Left = 32
    Top = 177
    Width = 569
    Height = 392
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
    object Label1: TLabel
      Left = 24
      Top = 12
      Width = 58
      Height = 13
      Caption = 'ID Barang'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBGrid1: TDBGrid
      Left = 20
      Top = 38
      Width = 529
      Height = 299
      DataSource = DSstok
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'idbarang'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namabarang'
          ReadOnly = True
          Title.Caption = 'Item'
          Width = 199
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'kode'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Satuan'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'mutasi'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'Stok'
          Width = 75
          Visible = True
        end
        item
          Color = clAqua
          Expanded = False
          FieldName = 'stok'
          Title.Alignment = taCenter
          Title.Caption = 'Aktual'
          Width = 75
          Visible = True
        end>
    end
    object btnSimpan: TbsSkinButton
      Left = 247
      Top = 351
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
      Caption = 'Simpan'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnSimpanClick
    end
    object edtNamaBarang: TEdit
      Left = 304
      Top = 8
      Width = 241
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = edtNamaBarangChange
      OnEnter = edtNamaBarangEnter
      OnKeyPress = Tkn13
    end
    object bsSkinButton2: TbsSkinButton
      Left = 272
      Top = 9
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
    end
    object edtIdBarang: TAEdit
      Left = 152
      Top = 8
      Width = 113
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnChange = edtIdBarangChange
      OnEnter = edtIdBarangEnter
      OnKeyPress = Tkn13
      Alignment = taCenter
    end
  end
  object btnKeluar: TbsSkinButton
    Left = 280
    Top = 587
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnKeluarClick
  end
  object btncari: TbsSkinXFormButton
    Left = 280
    Top = 95
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
    Caption = 'GO'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 32
    Top = 129
    Width = 569
    Height = 40
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
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel2'
    object Label6: TLabel
      Left = 24
      Top = 13
      Width = 112
      Height = 13
      Caption = 'Penanggung Jawab'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object bsSkinButton1: TbsSkinButton
      Left = 247
      Top = 407
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
      Caption = 'Simpan'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnSimpanClick
    end
    object edtTanggungjawabID: TEdit
      Left = 152
      Top = 9
      Width = 113
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = edtTanggungjawabIDChange
      OnExit = edtTanggungjawabIDExit
      OnKeyPress = Tkn13
    end
    object btnCariKasir: TbsSkinButton
      Left = 272
      Top = 9
      Width = 24
      Height = 20
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
    end
    object edtTanggungJawabNama: TEdit
      Left = 304
      Top = 8
      Width = 241
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnKeyPress = Tkn13
    end
  end
  object Qgudang: TZQuery
    SQL.Strings = (
      'SELECT     id, gudang'
      'FROM         Tgudang'
      'WHERE     (id > 5)'
      'ORDER BY id')
    Params = <>
    Left = 64
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
  object Qstok: TZQuery
    SQL.Strings = (
      
        'SELECT     Tbarang.idbarang, Tbarang.namabarang, tsatuan.kode, t' +
        'gdk.qty AS masuk, tgdk.harga AS Hmasuk, tgdm.qty AS keluar, tgdm' +
        '.harga AS Hkeluar,  Tbarang.harga'
      'FROM         Tbarang LEFT OUTER JOIN'
      
        '                          (SELECT     TgudangMutasiDetail.idbara' +
        'ng, SUM(TgudangMutasiDetail.qty) AS qty, SUM(TgudangMutasiDetail' +
        '.harga * TgudangMutasiDetail.qty) '
      '                                                   AS harga'
      
        '                            FROM          TgudangMutasi INNER JO' +
        'IN'
      
        '                                                   TgudangMutasi' +
        'Detail ON TgudangMutasi.id = TgudangMutasiDetail.idmutasi'
      
        '                            WHERE      (TgudangMutasi.asal = :id' +
        'gudangKeluar)'
      
        '                            GROUP BY TgudangMutasiDetail.idbaran' +
        'g) tgdk ON Tbarang.idbarang = tgdk.idbarang LEFT OUTER JOIN'
      
        '                          (SELECT     TgudangMutasiDetail.idbara' +
        'ng, SUM(TgudangMutasiDetail.qty) AS qty, SUM(TgudangMutasiDetail' +
        '.harga * TgudangMutasiDetail.qty) '
      '                                                   AS harga'
      
        '                            FROM          TgudangMutasi INNER JO' +
        'IN'
      
        '                                                   TgudangMutasi' +
        'Detail ON TgudangMutasi.id = TgudangMutasiDetail.idmutasi'
      
        '                            WHERE      (TgudangMutasi.tujuan = :' +
        'idgudangMasuk)'
      
        '                            GROUP BY TgudangMutasiDetail.idbaran' +
        'g) tgdm ON Tbarang.idbarang = tgdm.idbarang LEFT OUTER JOIN'
      '                      tsatuan ON Tbarang.idsatuan = tsatuan.id'
      'WHERE     (Tbarang.status = 1)')
    Params = <
      item
        DataType = ftInteger
        Name = 'idgudangKeluar'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'idgudangMasuk'
        ParamType = ptUnknown
      end>
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idgudangKeluar'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'idgudangMasuk'
        ParamType = ptUnknown
      end>
    object Qstokidbarang: TStringField
      FieldName = 'idbarang'
      FixedChar = True
      Size = 8
    end
    object Qstoknamabarang: TStringField
      FieldName = 'namabarang'
      FixedChar = True
      Size = 30
    end
    object Qstokkode: TStringField
      FieldName = 'kode'
      FixedChar = True
      Size = 7
    end
    object Qstokmasuk: TFloatField
      FieldName = 'masuk'
    end
    object QstokHmasuk: TFloatField
      FieldName = 'Hmasuk'
    end
    object Qstokkeluar: TFloatField
      FieldName = 'keluar'
    end
    object QstokHkeluar: TFloatField
      FieldName = 'Hkeluar'
    end
    object Qstokharga: TFloatField
      FieldName = 'harga'
    end
  end
  object DSstok: TDataSource
    DataSet = VTbarang
    Left = 32
    Top = 96
  end
  object VTbarang: TVirtualTable
    FieldDefs = <
      item
        Name = 'idbarang'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'namabarang'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'kode'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'mutasi'
        DataType = ftFloat
      end
      item
        Name = 'Hmutasi'
        DataType = ftFloat
      end
      item
        Name = 'stok'
        DataType = ftFloat
      end
      item
        Name = 'Hstok'
        DataType = ftFloat
      end
      item
        Name = 'harga'
        DataType = ftFloat
      end>
    Left = 32
    Top = 80
    Data = {
      0200080008006964626172616E6701000A000A006E616D61626172616E670100
      1E0004006B6F64650100140006006D7574617369060000000700486D75746173
      6906000000040073746F6B0600000005004873746F6B06000000050068617267
      6106000000000000000000}
    object VTbarangidbarang: TStringField
      FieldName = 'idbarang'
      Size = 10
    end
    object VTbarangnamabarang: TStringField
      FieldName = 'namabarang'
      Size = 30
    end
    object VTbarangkode: TStringField
      FieldName = 'kode'
    end
    object VTbarangmutasi: TFloatField
      FieldName = 'mutasi'
    end
    object VTbarangHmutasi: TFloatField
      FieldName = 'Hmutasi'
    end
    object VTbarangstok: TFloatField
      FieldName = 'stok'
    end
    object VTbarangHstok: TFloatField
      FieldName = 'Hstok'
    end
    object VTbarangharga: TFloatField
      FieldName = 'harga'
    end
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
    Left = 24
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
    MaximizeOnFullScreen = False
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
  object Qid: TZQuery
    SQL.Strings = (
      'SELECT     id, gudang'
      'FROM         Tgudang'
      'ORDER BY id')
    Params = <>
    Left = 120
    Top = 504
  end
  object Qmaster: TZQuery
    SQL.Strings = (
      'INSERT INTO TgudangMutasi'
      
        '                      (id, tanggal, idtanggungjawab, asal, tujua' +
        'n, opperator, keterangan)'
      
        'VALUES     (:id, :tanggal, :idtanggungjawab, :asal, :tujuan, :op' +
        'perator, :keterangan)')
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'tanggal'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'idtanggungjawab'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'asal'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tujuan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'opperator'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'keterangan'
        ParamType = ptUnknown
      end>
    Left = 152
    Top = 504
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'tanggal'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'idtanggungjawab'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'asal'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'tujuan'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'opperator'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'keterangan'
        ParamType = ptUnknown
      end>
  end
  object Qdetail: TZQuery
    SQL.Strings = (
      'INSERT INTO TgudangMutasiDetail'
      '                      (idmutasi, idbarang, qty, harga)'
      'VALUES     (:idmutasi, :idbarang, :qty, :harga)')
    Params = <
      item
        DataType = ftString
        Name = 'idmutasi'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'idbarang'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'qty'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'harga'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 504
    ParamData = <
      item
        DataType = ftString
        Name = 'idmutasi'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'idbarang'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'qty'
        ParamType = ptUnknown
      end
      item
        DataType = ftFloat
        Name = 'harga'
        ParamType = ptUnknown
      end>
  end
  object Qkasir: TZQuery
    SQL.Strings = (
      'SELECT     login, nama'
      'FROM         tkasir'
      'ORDER BY login')
    Params = <>
    Left = 240
    Top = 136
    object Qkasirlogin: TStringField
      FieldName = 'login'
      Origin = 'VIZTA.tkasir.login'
      FixedChar = True
      Size = 5
    end
    object Qkasirnama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tkasir.nama'
      FixedChar = True
    end
  end
end
