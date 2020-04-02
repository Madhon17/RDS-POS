unit DataModul1;

interface

uses
  SysUtils, Classes, ZConnection, IniFiles, Forms;

type
  TDataModule5 = class(TDataModule)
    DBmysql: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule5: TDataModule5;

implementation
     uses untupdatelagu;
{$R *.dfm}

procedure TDataModule5.DataModuleCreate(Sender: TObject);
var NamaFile : TFileName;
    FileIni  : TIniFile;
    vmssql, vmysql : string;
begin
  DBmysql.Connected := False;

  NamaFile := ExtractFilePath (Application.ExeName)+'setting.ini';
  FileIni := TIniFile.Create(NamaFile);
  vmysql := FileIni.ReadString('Database', 'MySql','127.0.0.1');

  DBmysql.HostName := vmysql;

  DBmysql.Database := 'karaoke';
  DBmysql.User := 'karaoke';
  DBmysql.Password := 'Viz3009Ta';
  DBmysql.Connected := True;
end;

end.
