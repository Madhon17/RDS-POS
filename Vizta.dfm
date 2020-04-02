object froomkategori: Tfroomkategori
  Left = 222
  Top = 161
  Width = 561
  Height = 480
  Caption = 'Room Kategori'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 48
    Width = 39
    Height = 13
    Caption = 'Kategori'
  end
  object Label2: TLabel
    Left = 56
    Top = 80
    Width = 29
    Height = 13
    Caption = 'Harga'
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 45
    Width = 121
    Height = 21
    DataField = 'kategori'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 82
    Width = 121
    Height = 21
    DataField = 'harga'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 128
    Width = 249
    Height = 137
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object btnedit: TButton
    Left = 56
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 3
  end
  object btntambah: TButton
    Left = 152
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Tambah'
    TabOrder = 4
  end
  object btndelete: TButton
    Left = 248
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Delete'
    TabOrder = 5
  end
  object btnsimpan: TButton
    Left = 352
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 6
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'vizta'
    TableName = 'troomkategori'
    Left = 352
    Top = 56
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = Table1
    Left = 352
    Top = 88
  end
end
