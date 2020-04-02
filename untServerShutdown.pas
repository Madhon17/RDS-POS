unit untServerShutdown;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, bsMessages,
  BusinessSkinForm, ScktComp, DB, DBTables, Grids, DBGrids, ZDataset,
  ZAbstractRODataset, ZAbstractDataset;

type
  TfShutdownServer = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    BtnShutdown: TbsSkinButton;
    btnRestart: TbsSkinButton;
    edtServer: TbsSkinEdit;
    Label3: TLabel;
    ClientSocket1: TClientSocket;
    btnConnect: TbsSkinButton;
    DBGrid1: TDBGrid;
    Qshutdwon: TZQuery;
    DsShutdown: TDataSource;
    Qshutdwontanggal: TDateTimeField;
    Qshutdwonidkasir: TStringField;
    bsSkinButton1: TbsSkinButton;
    procedure prcSimpanTanggal;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConnectClick(Sender: TObject);
    procedure ClientSocket1Error(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocket1Disconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ClientSocket1Connect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure BtnShutdownClick(Sender: TObject);
    procedure btnRestartClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fShutdownServer: TfShutdownServer;

implementation

uses Unit3, Unit1, DateUtils;

{$R *.dfm}

procedure TfShutdownServer.prcSimpanTanggal;
var Qsimpan : TZQuery;
begin
  Qsimpan := TZQuery.Create(Self);
  Qsimpan.Connection := modul.Database1;
  Qsimpan.SQL.Text := ' INSERT INTO tshutdown '+
                        '(tanggal, idkasir) '+
                        ' VALUES  ('+ QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss', Now)) +', '+
                        QuotedStr(FrmInduk.pbidkasir) +  ')';
  Qsimpan.ExecSQL;
  Qsimpan.Destroy;

  Qshutdwon.Active := False;
  Qshutdwon.Active := True;
end;

procedure TfShutdownServer.FormCreate(Sender: TObject);
var Qbersih : TZQuery;
    tanggal : TDateTime;
begin

  Qshutdwon.Connection := modul.Database1;

  FrmInduk.pbShutdownServer := True;

  tanggal := IncDay(Now, -3);
  Qbersih := TZQuery.Create(Self);
  Qbersih.Connection := modul.Database1;
  Qbersih.SQL.Text := 'DELETE FROM tshutdown '+
                      'WHERE     (tanggal < '+ QuotedStr(FormatDateTime('yyyy-MM-dd 00:00:00', tanggal)) + ')';
  Qbersih.ExecSQL;
  Qshutdwon.Active := True;
  Qbersih.Destroy;
end;

procedure TfShutdownServer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbShutdownServer := False;
end;

procedure TfShutdownServer.btnConnectClick(Sender: TObject);
begin
  if (edtServer.Text='') then exit;

  if btnConnect.Caption='Connect' then
  begin
    ClientSocket1.Host := edtServer.Text;
    ClientSocket1.Port := modul.csKey.Port;
    ClientSocket1.Open;
    
    if ClientSocket1.Socket.Connected = False then
    begin
      Exit;
    end;

    if modul.responseChallenge(ClientSocket1.Socket) = False then
    begin
      Exit;
    end;
  end
  else
  begin
    ClientSocket1.Close;
  end;
end;

procedure TfShutdownServer.ClientSocket1Error(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  ErrorCode:=0;
  btnConnect.Caption := 'Connect';
  BtnShutdown.Enabled := False;
  btnRestart.Enabled := False;
end;

procedure TfShutdownServer.ClientSocket1Disconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  btnConnect.Caption := 'Connect';
  BtnShutdown.Enabled := False;
  btnRestart.Enabled := False;
end;

procedure TfShutdownServer.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  BtnShutdown.Enabled := True;
  btnRestart.Enabled := True;
  btnConnect.Caption := 'Disconnect';
end;

procedure TfShutdownServer.BtnShutdownClick(Sender: TObject);
begin
  if not ClientSocket1.Active then exit;

  if not(bsSkinMessage1.MessageDlg('       Are you sure ?        ',mtConfirmation, [mbYes, mbNo],0) = mrYes) then exit;
  prcSimpanTanggal;
  ClientSocket1.Socket.SendText('');
  modul.sendData(ClientSocket1.Socket, 'windowsShutdown');
end;

procedure TfShutdownServer.btnRestartClick(Sender: TObject);
begin
  if not ClientSocket1.Active then exit;
  if not(bsSkinMessage1.MessageDlg('       Are you sure ?        ',mtConfirmation, [mbYes, mbNo],0) = mrYes) then exit;
  prcSimpanTanggal;
  modul.sendData(ClientSocket1.Socket, 'windowsRestart');
end;

procedure TfShutdownServer.Button1Click(Sender: TObject);
begin
  prcSimpanTanggal;
end;

procedure TfShutdownServer.bsSkinButton1Click(Sender: TObject);
begin
  Close;
end;

end.
