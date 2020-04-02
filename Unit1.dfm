object modul: Tmodul
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 345
  Top = 371
  Height = 151
  Width = 402
  object DBmysql: TZConnection
    Protocol = 'mysql'
    HostName = '10.0.0.1'
    Port = 3306
    Database = 'karaoke'
    User = 'karaoke'
    Password = 'Viz3009Ta'
    ReadOnly = True
    Left = 72
    Top = 8
  end
  object My2: TZConnection
    Protocol = 'mysql'
    HostName = '10.0.0.1'
    Port = 3306
    Database = 'karaoke'
    User = 'karaoke'
    Password = 'Viz3009Ta'
    ReadOnly = True
    Left = 152
    Top = 8
  end
  object csKey: TClientSocket
    Active = False
    ClientType = ctBlocking
    Port = 0
    Left = 192
    Top = 8
  end
  object Database1: TZConnection
    Protocol = 'mysql'
    HostName = '10.0.0.1'
    Port = 3306
    Database = 'rds'
    User = 'karaoke'
    Password = 'Viz3009Ta'
    ReadOnly = True
    Left = 16
    Top = 8
  end
  object Database2: TZConnection
    Protocol = 'mysql'
    HostName = '10.0.0.1'
    Port = 3306
    Database = 'rds'
    User = 'karaoke'
    Password = 'Viz3009Ta'
    ReadOnly = True
    Left = 16
    Top = 56
  end
end
