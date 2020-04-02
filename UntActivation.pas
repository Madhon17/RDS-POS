unit UntActivation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, BusinessSkinForm, bsMessages, StdCtrls;

type
  TFActivation = class(TForm)
    csActivation: TClientSocket;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label3: TLabel;
    Label1: TLabel;
    btnOK: TButton;
    edtChallenge: TEdit;
    edtActivation: TEdit;
    btnOK2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnOK2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FActivation: TFActivation;

implementation

uses Unit1;

{$R *.dfm}

procedure TFActivation.FormCreate(Sender: TObject);
var
  buffer: array[0..65535] of char;
  return: Integer;
  headerLength: Integer;
  activationChallenge: String;
begin

  try

    ModalResult := mrCancel;
    
    csActivation.Host := modul.vmysql;
    csActivation.Port := 32768;
    csActivation.Open;
    if csActivation.Socket.Connected = False then
    begin
      ShowMessage('Koneksi error');
      Exit;
    end;

    if modul.responseChallenge(csActivation.Socket) = False then
    begin
      Exit;
    end;

    if modul.sendData(csActivation.Socket, 'getActivationRequestCode') = False then
    begin
      exit;
    end;

    return := csActivation.Socket.ReceiveBuf(buffer, 4);
    if return <> 4 then
    begin
      ShowMessage('ReceiveBuf fail');
      Exit;
    end;
    Move(buffer, headerLength, 4);

    return := csActivation.Socket.ReceiveBuf(buffer, headerLength);
    if return <> headerLength then
    begin
      ShowMessage('ReceiveBuf fail');
      Exit;
    end;
    SetString(activationChallenge, buffer, return);
    edtChallenge.Text := activationChallenge;
    
  except
    bsSkinMessage1.MessageDlg('Koneksi error', mtInformation,[mbOK], 0);
  end;
end;

procedure TFActivation.btnOKClick(Sender: TObject);
var
  activation: String;
  activationLength: Integer;
  buffer: array[0..65535] of char;
  return: Integer;
  headerLength: Integer;
begin

  try

    activation := edtActivation.Text;

    activationLength := Length(activation);
    if activationLength <> 16 then
    begin
      bsSkinMessage1.MessageDlg('Kode aktivasi tidak valid', mtInformation,[mbOK], 0);
      Exit;
    end;

    if csActivation.Socket.Connected = False then
    begin
      csActivation.Open;

      if csActivation.Socket.Connected = False then
      begin
        ShowMessage('Koneksi error');
        Exit;
      end;

      if modul.responseChallenge(csActivation.Socket) = False then
      begin
        Exit;
      end;
    end;

    if modul.sendData(csActivation.Socket, 'setRoyaltyActivation') = False then
    begin
      exit;
    end;

    StrLCopy(buffer, PAnsiChar(activation), activationLength);

    if modul.sendData(csActivation.Socket, buffer, activationLength) = False then
    begin
      Exit;
    end;


    return := csActivation.Socket.ReceiveBuf(buffer, 4);
    if return <> 4 then
    begin
      ShowMessage('ReceiveBuf fail');
      Exit;
    end;
    Move(buffer, headerLength, 4);

    return := csActivation.Socket.ReceiveBuf(buffer, headerLength);
    if return <> headerLength then
    begin
      ShowMessage('ReceiveBuf fail');
      Exit;
    end;

    if Ord(buffer[0]) = 0 then
    begin
      bsSkinMessage1.MessageDlg('Berhasil', mtInformation, [mbOK], 0);
      ModalResult := mrOK;
    end
    else
    begin
      bsSkinMessage1.MessageDlg('Kode tidak valid', mtInformation,[mbOK], 0);
    end;

  except
    bsSkinMessage1.MessageDlg('Gagal', mtInformation,[mbOK], 0);
  end;
end;

procedure TFActivation.btnOK2Click(Sender: TObject);
var
  activation: String;
  activationLength: Integer;
  buffer: array[0..65535] of char;
  return: Integer;
  headerLength: Integer;
begin

  try

    activation := edtActivation.Text;

    activationLength := Length(activation);
    if activationLength <> 16 then
    begin
      bsSkinMessage1.MessageDlg('Kode aktivasi tidak valid', mtInformation,[mbOK], 0);
      Exit;
    end;

    if csActivation.Socket.Connected = False then
    begin
      csActivation.Open;

      if csActivation.Socket.Connected = False then
      begin
        ShowMessage('Koneksi error');
        Exit;
      end;

      if modul.responseChallenge(csActivation.Socket) = False then
      begin
        Exit;
      end;
    end;

    if modul.sendData(csActivation.Socket, 'setSystemActivation') = False then
    begin
      exit;
    end;

    StrLCopy(buffer, PAnsiChar(activation), activationLength);

    if modul.sendData(csActivation.Socket, buffer, activationLength) = False then
    begin
      Exit;
    end;


    return := csActivation.Socket.ReceiveBuf(buffer, 4);
    if return <> 4 then
    begin
      ShowMessage('ReceiveBuf fail');
      Exit;
    end;
    Move(buffer, headerLength, 4);

    return := csActivation.Socket.ReceiveBuf(buffer, headerLength);
    if return <> headerLength then
    begin
      ShowMessage('ReceiveBuf fail');
      Exit;
    end;

    if Ord(buffer[0]) = 0 then
    begin
      bsSkinMessage1.MessageDlg('Berhasil', mtInformation, [mbOK], 0);
      ModalResult := mrOK;
    end
    else
    begin
      bsSkinMessage1.MessageDlg('Kode tidak valid', mtInformation,[mbOK], 0);
    end;

  except
    bsSkinMessage1.MessageDlg('Gagal', mtInformation,[mbOK], 0);
  end;
end;

end.
