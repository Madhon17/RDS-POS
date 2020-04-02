object mdlDB: TmdlDB
  OldCreateOrder = False
  Left = 359
  Top = 134
  Height = 150
  Width = 215
  object DBmysql: TZConnection
    Protocol = 'mysql'
    HostName = '192.168.0.254'
    Port = 3306
    Database = 'karaoke'
    User = 'karaoke'
    Password = 'sekret'
    AutoCommit = False
    ReadOnly = True
    TransactIsolationLevel = tiNone
    Connected = False
    SQLHourGlass = True
    Left = 72
    Top = 8
  end
end
