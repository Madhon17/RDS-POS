unit untSetup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StdCtrls;

type
  TFSetup = class(TForm)
    edtMsSql: TEdit;
    edtMySql: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSetup: TFSetup;

implementation

{$R *.dfm}

procedure TFSetup.Button1Click(Sender: TObject);
var
    FileIni  : TIniFile;
begin
  FileIni := TIniFile.Create(ExtractFilePath (Application.ExeName)+'..\..\Setting-pos.ini');
  FileIni.WriteString('Database', 'MsSql', edtMsSql.Text);
  FileIni.WriteString('Database', 'MySql', edtMySql.Text);
  FileIni.Free
end;

end.
