unit untMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ExtCtrls, bsSkinCtrls, StdCtrls,
  AEDIT, OleCtrls, ShockwaveFlashObjects_TLB, jpeg, LMDCustomButton, ZDataset,
  LMDButton, ZAbstractRODataset, ZAbstractDataset;

type
  TFmessage = class(TForm)
    DBGrid1: TDBGrid;
    Qmessage: TZQuery;
    Qmessageid: TAutoIncField;
    Qmessagetanggal: TDateTimeField;
    Qmessagepesan: TStringField;
    Qmessagedari: TStringField;
    Qmessagestatus: TStringField;
    Qmessagekasir: TStringField;
    Qjumlah: TZQuery;
    Qupdate: TZQuery;
    AutoIncField2: TAutoIncField;
    DateTimeField2: TDateTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    BooleanField2: TStringField;
    StringField6: TStringField;
    DSmessage: TDataSource;
    Timer1: TTimer;
    Qjumlahjumlah: TLargeintField;
    Qinsert: TZQuery;
    AutoIncField1: TAutoIncField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TStringField;
    StringField3: TStringField;
    edtPesan: TAEdit;
    edtAsal: TAEdit;
    flsPanah: TShockwaveFlash;
    edtPesanMasuk: TEdit;
    Image1: TImage;
    LMDButton1: TLMDButton;
    LMDButton2: TLMDButton;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QmessageAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure flsPanahEnter(Sender: TObject);
    procedure Image1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure LMDButton1Click(Sender: TObject);
    procedure LMDButton2Click(Sender: TObject);
  private

    vJumlahMessage : Integer;

    callWaiterWAV: PChar;
    callWaiterWAVDuration: Integer;
    callWaiterWAVTimeOut: Integer;

  public
    { Public declarations }
  end;

var
  Fmessage: TFmessage;

implementation

uses unit3, Unit1, MMSystem;

{$R *.dfm}

procedure TFmessage.FormCreate(Sender: TObject);
var
  hFind, hRes: THandle;
begin

  Qmessage.Connection := modul.Database1;
  Qjumlah.Connection := modul.Database1;
  Qupdate.Connection := modul.Database1;
  Qinsert.Connection := modul.Database1;

  
  
  Self.Top := 0;
  self.Left := 380;
  Self.Width := 631;
  Self.Height := 550;

  Self.Height := 100;

  Qmessage.Active := True;

  vJumlahMessage := 0;
  Timer1.Enabled := True;
  Screen.Cursors[crSQLWait] := Screen.Cursors[crDefault];
  edtPesan.Alignment := taLeftJustify;

  hFind := FindResource(HInstance, 'CallWaiter', 'WAVE');
  if hFind = 0 then
  begin
    modul.log('FindResource fail');
  end
  else
  begin
    hRes := LoadResource(HInstance, hFind);
    if hRes = 0 then
    begin
      modul.log('LoadResource fail');
    end
    else
    begin
      callWaiterWAV := LockResource(hRes);
    end;
  end;
  callWaiterWAVDuration := 12000;
  callWaiterWAVTimeOut := 0;
  
end;

procedure TFmessage.Timer1Timer(Sender: TObject);
var id : integer;
begin

  id := Qmessageid.AsInteger;

  Qjumlah.Active := False;
  Qjumlah.Active := True;

  if callWaiterWAVTimeOut <= callWaiterWAVDuration then
  begin
    callWaiterWAVTimeOut := callWaiterWAVTimeOut + Timer1.Interval;
  end;
  if Qjumlahjumlah.AsInteger > 0 then
  begin
    if callWaiterWAVTimeOut > callWaiterWAVDuration then
    begin
      if Assigned(callWaiterWAV) then
      begin
        SndPlaySound(callWaiterWAV, snd_ASync or snd_Memory);
        callWaiterWAVTimeOut := 0;
      end;
    end;
  end;

  if FrmInduk.pbBillStop then exit;

  if Qjumlahjumlah.AsInteger <> vJumlahMessage then
  begin
    Qmessage.Active := False;
    Qmessage.Active := True;
    Qmessage.Active := False;
    Qmessage.Active := True;
    Qmessage.Locate('id', id, []);
  end;

  vJumlahMessage := Qjumlahjumlah.AsInteger;

end;

procedure TFmessage.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with (Sender as TDBGrid).Canvas do
  begin
    if (Qmessagestatus.Value = '0') then
    begin
      Brush.Color := $000080FF;
      FillRect(Rect);
      Font.Color := clNavy;
      font.Style := [fsBold, fsItalic];
    end;
    if (Qmessagestatus.Value = '1') then
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      Font.Color := clBlack;
      font.Style := [fsBold, fsItalic];
    end;
    if (gdSelected in State) then
    begin
      Font.Color := clBlue;
      font.Style := [fsBold];
    end;  
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFmessage.DBGrid1DblClick(Sender: TObject);
var id : integer;
begin
  Qupdate.ParamByName('id').AsInteger := Qmessageid.AsInteger;
  Qupdate.ParamByName('kasir').AsString := FrmInduk.pbidkasir;
  Qupdate.ExecSQL;

  id := Qmessageid.AsInteger;
  Qmessage.Active := False;
  Qmessage.Active := True;
  Qmessage.Locate('id', id, []);
  Qjumlah.Active := False;
  Qjumlah.Active := True;
  vJumlahMessage := Qjumlahjumlah.AsInteger;
end;

procedure TFmessage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFmessage.QmessageAfterScroll(DataSet: TDataSet);
begin
  edtAsal.Text := Qmessagedari.AsString;
  edtPesanMasuk.Text := Qmessagepesan.AsString;
end;

procedure TFmessage.FormActivate(Sender: TObject);
begin
  Qmessage.Locate('status',0,[]);
end;

procedure TFmessage.flsPanahEnter(Sender: TObject);
begin
  if Fmessage.Height < 200 then
  begin
    Fmessage.Height := 550;
    edtPesan.SetFocus;
  end
  else
  begin
    Fmessage.Height := 100;
    edtPesan.SetFocus;
  end
end;

procedure TFmessage.Image1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  ReleaseCapture;
  TFmessage(Fmessage).perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TFmessage.LMDButton1Click(Sender: TObject);
begin
  DBGrid1DblClick(Sender);
  if Qjumlahjumlah.AsInteger = 0 then
  begin
    edtAsal.Text := '';
    edtPesanMasuk.Text := '';
  end
  else
  begin
    Qmessage.Locate('status',0,[]);
  end;
end;

procedure TFmessage.LMDButton2Click(Sender: TObject);
var sql : string;
     id : integer;
begin
  if edtPesan.Text = '' then exit;

  sql := ' INSERT INTO Tmessage '+
         '             (tanggal, pesan, dari) '+
         ' VALUES     ('+ QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', Now ))+ ',' +
         QuotedStr(edtPesan.Text) + ',' +
         QuotedStr(FrmInduk.pbidkasir) +
         ')';
  Qinsert.SQL.Text := sql;
  Qinsert.ExecSQL;

  id := Qmessageid.AsInteger;
  Qmessage.Active := False;
  Qmessage.Active := True;
  Qmessage.Locate('id', id, []);
  Qjumlah.Active := False;
  Qjumlah.Active := True;
  vJumlahMessage := Qjumlahjumlah.AsInteger;
end;

end.


