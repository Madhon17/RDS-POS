object FbarangMaster: TFbarangMaster
  Left = 134
  Top = 165
  Width = 1055
  Height = 752
  Caption = 'Inventory'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 72
    Top = 26
    Width = 41
    Height = 13
    Caption = 'Barang'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 40
    Top = 402
    Width = 47
    Height = 13
    Caption = 'Supplier'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 616
    Top = 34
    Width = 54
    Height = 13
    Caption = 'Inventory'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object dbmenu: TDBEdit
    Left = 120
    Top = 21
    Width = 241
    Height = 21
    CharCase = ecUpperCase
    DataField = 'menu'
    TabOrder = 0
  end
  object btnCari: TbsSkinButton
    Left = 376
    Top = 21
    Width = 24
    Height = 20
    TabOrder = 1
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
  object DBGrid1: TDBGrid
    Left = 64
    Top = 52
    Width = 513
    Height = 309
    DataSource = DSbarang
    FixedColor = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'idbarang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'namabarang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kode'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 600
    Top = 52
    Width = 361
    Height = 293
    FixedColor = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'idbarang'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'namabarang'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'minstok'
        Width = 88
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 40
    Top = 420
    Width = 513
    Height = 229
    DataSource = DSdistributor
    FixedColor = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'IDdistributor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga'
        Visible = True
      end>
  end
  object Qbarang: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     Tbarang.idbarang, Tbarang.namabarang, tsatuan.kode, T' +
        'barang.harga'
      'FROM         Tbarang INNER JOIN'
      '                      tsatuan ON Tbarang.idsatuan = tsatuan.id'
      'ORDER BY Tbarang.idbarang')
    Left = 24
    Top = 56
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
    object Qbarangkode: TStringField
      FieldName = 'kode'
      Origin = 'VIZTA.tsatuan.kode'
      FixedChar = True
      Size = 7
    end
    object Qbarangharga: TFloatField
      FieldName = 'harga'
      Origin = 'VIZTA.Tbarang.harga'
    end
  end
  object DSbarang: TDataSource
    AutoEdit = False
    DataSet = Qbarang
    Left = 24
    Top = 72
  end
  object QbarangDistributor: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     TbarangDistributor.IDdistributor, tdistributor.nama, ' +
        'TbarangDistributor.harga'
      'FROM         tdistributor INNER JOIN'
      
        '                      TbarangDistributor ON tdistributor.id = Tb' +
        'arangDistributor.IDdistributor')
    Top = 432
    object QbarangDistributorIDdistributor: TSmallintField
      FieldName = 'IDdistributor'
      Origin = 'VIZTA.TbarangDistributor.IDdistributor'
    end
    object QbarangDistributornama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tdistributor.nama'
      FixedChar = True
      Size = 30
    end
    object QbarangDistributorharga: TFloatField
      FieldName = 'harga'
      Origin = 'VIZTA.TbarangDistributor.harga'
    end
  end
  object DSdistributor: TDataSource
    AutoEdit = False
    DataSet = QbarangDistributor
    Top = 448
  end
  object Qstok: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     TbarangDistributor.IDdistributor, tdistributor.nama, ' +
        'TbarangDistributor.harga'
      'FROM         tdistributor INNER JOIN'
      
        '                      TbarangDistributor ON tdistributor.id = Tb' +
        'arangDistributor.IDdistributor')
    Left = 976
    Top = 56
    object SmallintField1: TSmallintField
      FieldName = 'IDdistributor'
      Origin = 'VIZTA.TbarangDistributor.IDdistributor'
    end
    object StringField1: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tdistributor.nama'
      FixedChar = True
      Size = 30
    end
    object FloatField1: TFloatField
      FieldName = 'harga'
      Origin = 'VIZTA.TbarangDistributor.harga'
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = Qstok
    Left = 976
    Top = 72
  end
end
