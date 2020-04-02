unit Untbaranglap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, DB, DBTables, bsSkinCtrls, Grids,
  DBGrids, StdCtrls, ComCtrls, ExtCtrls, MemDS, VirtualTable, OleCtrls,
  ShockwaveFlashObjects_TLB;

type
  TFsplash = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    a : integer;
  public
    { Public declarations }
  end;

var
  Fsplash: TFsplash;

implementation

uses Unit3, UntLogin;

{$R *.dfm}

procedure TFsplash.Timer1Timer(Sender: TObject);
begin
FrmInduk.Enabled:=False;
a:=a+1;
if a=3 then
begin
  Timer1.Enabled := False;
  FreeAndNil(FSplash);
  Application.CreateForm(Tflogin, Flogin);
end;
end;

procedure TFsplash.FormActivate(Sender: TObject);
begin
  a := 1;
end;

procedure TFsplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Action := caFree;
end;

end.
