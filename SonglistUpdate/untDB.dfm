object mdlDB: TmdlDB
  OldCreateOrder = False
  Left = 253
  Top = 150
  Height = 150
  Width = 341
  object AdoDB1: TADOConnection
    ConnectionString = 
      '"Provider=MSDASQL.1;Password=Viz3009Ta;User ID=karaoke;Extended ' +
      'Properties="DRIVER={MySQL ODBC 5.1 Driver};UID=karaoke;PWD=Viz30' +
      '09Ta;SERVER=192.168.0.1;DATABASE=karaoke;OPTION=18475;"'
    LoginPrompt = False
    Left = 88
    Top = 40
  end
  object AdoDBacces: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Project\Lagu\Inp' +
      'ut\SongListUpdate\Vizta3.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 160
    Top = 40
  end
  object DBmysql: TZConnection
    Protocol = 'mysql'
    HostName = '192.168.0.210'
    Port = 3306
    Database = 'karaoke'
    User = 'karaoke'
    Password = 'Viz3009Ta'
    ReadOnly = True
    Left = 72
    Top = 8
  end
end
