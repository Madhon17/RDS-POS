object DataModule5: TDataModule5
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 787
  Top = 258
  Height = 150
  Width = 215
  object DBmysql: TZConnection
    Protocol = 'mysql'
    HostName = '192.168.0.1'
    Port = 3306
    Database = 'karaoke'
    User = 'karaoke'
    Password = 'Viz3009Ta'
    AutoCommit = False
    ReadOnly = True
    SQLHourGlass = True
    Left = 72
    Top = 8
  end
end
