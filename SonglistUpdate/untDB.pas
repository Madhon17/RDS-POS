unit untDB;

interface

uses
  SysUtils, Classes, DB, ADODB, IniFiles, Forms, ZConnection;

type
  TmdlDB = class(TDataModule)
    AdoDB1: TADOConnection;
    AdoDBacces: TADOConnection;
    DBmysql: TZConnection;
    procedure KonekDataBase(alamat : String);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mdlDB: TmdlDB;

implementation

{$R *.dfm}

procedure TmdlDB.KonekDataBase(alamat: String);
var vmysql, vdatabase : string;
begin
  vdatabase := 'karaoke';
  vmysql    := alamat;
  with AdoDB1 do
  begin
    Connected := False;
    ConnectionString := '"Provider=MSDASQL.1;Password=Viz3009Ta;User ID=karaoke;Extended Properties="DRIVER={MySQL ODBC 5.1 Driver};UID=karaoke;PWD=Viz3009Ta;'+
                        'SERVER='+ vmysql + '; '+
                        'DATABASE=' + vdatabase +
                        ';OPTION=18475;"';
    Connected := True;
  end;
end;

end.
