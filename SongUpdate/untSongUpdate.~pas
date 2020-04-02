unit untSongUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, Zip,
  BusinessSkinForm, bsMessages, dwinlock, ZConnection;


type
  TfrmSongUpdate = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    bsSkinGauge1: TbsSkinGauge;
    BtnBackup: TbsSkinXFormButton;
    btnFile: TbsSkinXFormButton;
    edtPath: TbsSkinEdit;
    edtServer: TbsSkinEdit;
    Zip1: TZip;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    DBmysql: TZConnection;
    procedure ShellExecute_AndWait(FileName: string; Params: string);
    procedure BtnBackupClick(Sender: TObject);
    procedure btnFileClick(Sender: TObject);
  private
    procedure OnDwlKeyDown(Wnd: HWND; Down,Key,Shift: integer); {$IFNDEF CIL} stdcall; {$ENDIF}
  public
    { Public declarations }
  end;

var
  frmSongUpdate: TfrmSongUpdate;

implementation

uses ShellApi, dwlCore, DiskSpaceKludge, Unit3, Unit1;

{$R *.dfm}

procedure TfrmSongUpdate.OnDwlKeyDown(Wnd: HWND; Down, Key, Shift: integer);
begin
  if Key = VK_RBUTTON then
  begin
    wlDisableKey(0,0,0,0); // enable all Keys
  end;
end;

procedure TfrmSongUpdate.ShellExecute_AndWait(FileName: string; Params: string);
var
  exInfo: TShellExecuteInfo;
  Ph: DWORD;
begin
  FillChar(exInfo, SizeOf(exInfo), 0);
  with exInfo do
  begin
    cbSize := SizeOf(exInfo);
    fMask := SEE_MASK_NOCLOSEPROCESS or SEE_MASK_FLAG_DDEWAIT;
    Wnd := GetActiveWindow();
    ExInfo.lpVerb := 'open';
    ExInfo.lpParameters := PChar(Params);
    lpFile := PChar(FileName);
    nShow := SW_HIDE;
  end;
  if ShellExecuteEx(@exInfo) then
    Ph := exInfo.HProcess
  else
  begin
    ShowMessage(SysErrorMessage(GetLastError));
    Exit;
  end;
  while WaitForSingleObject(ExInfo.hProcess, 50) <> WAIT_OBJECT_0 do
    Application.ProcessMessages;
  CloseHandle(Ph);
end;

procedure TfrmSongUpdate.BtnBackupClick(Sender: TObject);
VAR
    bytes:  TInteger8;
    index:  INTEGER;
    bantai : Boolean;
begin
  if edtServer.Text = '' then
  begin
    beep;
    edtServer.SetFocus;
    Exit;
  end;

  frmSongUpdate.WindowState := wsMaximized;

  wlSetObjKeyCallback(OnDwlKeyDown,kDownEvents); // Set callback function for Keydown Events
  wlDisableKey(0,VK_DELETE,MOD_CONTROL or MOD_ALT,1);
  wlDisableKey(0,MOD_ALL,MOD_ALL,1);

  DBmysql.Connected := False;
  DBmysql.HostName := edtServer.Text;
  DBmysql.Password := modul.keyMySQL;
  try
    DBmysql.Connected := True;
  except
    Exit;
  end;

  Label2.Caption := 'Connecting to server';
  ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');

  index := 18;   // 1-origin instead of 0-origin
  bytes := DiskSpaceKludge.DiskSize(index);
  IF   bytes >= 0 THEN
  begin
    exit;
  end;

  ShellExecute_AndWait('command.com', '/c NET USE R: \\'+ Trim(edtServer.Text) +'\data ' + modul.keyWindows + ' /user:administrator');
  try
    Label2.Caption := 'Connected Please Wait';

    ZIP1.ExtractOptions := [eoWithPaths, eoUpdate];
    ZIP1.Filename := edtPath.Text;
    Zip1.Password := '2.2KsdfspoL*&%DN)@jf(7$FJHid45$%$ijfgjhhghgw,JS$%(*&HDF8345&*(&$uhyer';
    Zip1.ExtractPath := 'R:\';
    Zip1.Extract;
    if Zip1.ExtractErrorCnt > 0 then
    begin
      ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');
      wlDisableKey(0,0,0,0); // enable all Keys
      Label2.Caption := 'Gagal';
    end
    else
    begin
      Label2.Caption := 'Finish';
      frmSongUpdate.WindowState := wsNormal;
    end;
  finally
    ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');
    wlDisableKey(0,0,0,0); // enable all Keys
  end;
end;

procedure TfrmSongUpdate.btnFileClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    edtpath.Text := OpenDialog1.FileName;
end;

end.
