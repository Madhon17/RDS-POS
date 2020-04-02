unit untDB;

interface

uses
  SysUtils, Classes, ZConnection;

type
  TmdlDB = class(TDataModule)
    DBmysql: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mdlDB: TmdlDB;

implementation

{$R *.dfm}

end.
