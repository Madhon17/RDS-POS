unit UntCSql;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, DB, DBTables, BusinessSkinForm,
  bsMessages, ExtCtrls, Grids, DBGrids, Mask, bsSkinBoxCtrls, ScktComp;

type
  TFsqlControl = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    BtnRun: TbsSkinButton;
    Label3: TLabel;
    csBackup: TClientSocket;
    procedure BtnRunClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure csBackupError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FsqlControl: TFsqlControl;
  Ser1, Ser2 : Boolean;
implementation
uses unit1, unit3, StrUtils;
{$R *.dfm}

procedure TFsqlControl.BtnRunClick(Sender: TObject);
begin
  try
    csBackup.Host := modul.vmysql2;
    csBackup.Port := modul.csKey.Port;
    csBackup.Open;
    if csBackup.Socket.Connected = False then
    begin
      Exit;
    end;

    if modul.responseChallenge(csBackup.Socket) = False then
    begin
      Exit;
    end;

    if modul.sendData(csBackup.Socket, 'backupSQL') = False then
    begin
      Exit;
    end;

    BtnRun.Enabled := False;
    bsSkinMessage1.MessageDlg('Database akan dibackup', mtInformation,[mbOK], 0);
    
  except
    bsSkinMessage1.MessageDlg('Koneksi error', mtInformation,[mbOK], 0);
    BtnRun.Enabled := True;
  end;
end;

procedure TFsqlControl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFsqlControl.FormCreate(Sender: TObject);
begin
  if (modul.vmysql2 = '') or (modul.vmysql2 = modul.vmysql) then
  begin
    BtnRun.Enabled := False;
  end
  else
  begin
    BtnRun.Enabled := True;
  end;
end;

procedure TFsqlControl.csBackupError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  bsSkinMessage1.MessageDlg('Koneksi error', mtInformation,[mbOK], 0);
  BtnRun.Enabled := True;
end;

end.
