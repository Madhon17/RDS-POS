unit untMemberUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, Mask, bsSkinBoxCtrls, DB, DBTables,
  BusinessSkinForm, bsMessages, Grids, DBGrids, DBCtrls;

type
  TfMemberUpdate = class(TForm)
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    dbMember: TDatabase;
    edtServer: TbsSkinEdit;
    Label1: TLabel;
    btnUpdate: TbsSkinXFormButton;
    btnExit: TbsSkinXFormButton;
    edtDatabase: TbsSkinEdit;
    Label2: TLabel;
    QmemberPusat: TQuery;
    QupdateLocal: TQuery;
    QmemberPusatid: TStringField;
    QmemberPusatid_kategori: TSmallintField;
    QmemberPusattgl_registrasi: TDateTimeField;
    QmemberPusatberlaku: TDateTimeField;
    QmemberPusatnama: TStringField;
    QmemberPusatTgl_lahir: TDateTimeField;
    QmemberPusatAgama: TSmallintField;
    QmemberPusatJenis_kelamin: TBooleanField;
    QmemberPusatHP: TStringField;
    QmemberPusatTelp: TStringField;
    QmemberPusatpoin: TIntegerField;
    QmemberPusatalamat1: TStringField;
    QmemberPusatalamat2: TStringField;
    QmemberPusattglUpdate: TDateTimeField;
    QmemberLocal: TQuery;
    QmemberLocalid: TStringField;
    QmemberLocalid_kategori: TSmallintField;
    QmemberLocaltgl_registrasi: TDateTimeField;
    QmemberLocalberlaku: TDateTimeField;
    QmemberLocalnama: TStringField;
    QmemberLocalTgl_lahir: TDateTimeField;
    QmemberLocalAgama: TSmallintField;
    QmemberLocalJenis_kelamin: TBooleanField;
    QmemberLocalHP: TStringField;
    QmemberLocalTelp: TStringField;
    QmemberLocalpoin: TIntegerField;
    QmemberLocalalamat1: TStringField;
    QmemberLocalalamat2: TStringField;
    QmemberLocaltglUpdate: TDateTimeField;
    QupdatePusat: TQuery;
    QdelLocal: TQuery;
    QdelPusat: TQuery;
    BtnUpdateRemote: TbsSkinXFormButton;
    QmaxPusat: TQuery;
    QmaxLocal: TQuery;
    QmaxLocalid: TStringField;
    QmaxLocalid_kategori: TSmallintField;
    QmaxPusatid: TStringField;
    QmaxPusatid_kategori: TSmallintField;
    procedure konekDataBase;
    procedure btnUpdateClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinXFormButton1Click(Sender: TObject);
    procedure BtnUpdateRemoteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMemberUpdate: TfMemberUpdate;

implementation

uses StrUtils, Unit1;

{$R *.dfm}

procedure TfMemberUpdate.konekDataBase;
begin
  if edtServer.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('         Database Server tidak lengkap   !!!          ', mtError,[mbOK], 0);
    edtServer.SetFocus;
    edtServer.SelectAll;
    exit;
  end;
  if edtDatabase.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('         Database Name tidak lengkap   !!!          ', mtError,[mbOK], 0);
    edtDatabase.SetFocus;
    edtDatabase.SelectAll;
    exit;
  end;

  dbMember.Connected := False;

     with dbMember.Params do
     begin
      Values['SERVER NAME'] := Trim(edtServer.Text);
      Values['DATABASE NAME'] := Trim(edtDatabase.Text);
      Values['USER NAME'] := 'karaoke';
      Values['PASSWORD'] := 'Baru9Nih';
     end;

  try
    dbMember.Connected := True;
  except
    bsSkinMessage1.MessageDlg('         Tidak terkoneksi   !!!          ', mtError,[mbOK], 0);
    edtServer.SetFocus;
    edtServer.SelectAll;
    exit;
  end;

end;

procedure TfMemberUpdate.btnUpdateClick(Sender: TObject);
begin
  konekDataBase;

  QmemberLocal.Active := False;
  QmemberPusat.Active := False;

  QmemberLocal.SQL.Text := ' SELECT     * '+
                           ' FROM         tmember '+
                           ' ORDER BY id ';
  QmemberPusat.SQL.Text := ' SELECT     * '+
                           ' FROM         tmember '+
                           ' ORDER BY id ';

  QmemberLocal.Active := True;
  QmemberPusat.Active := True;
  QmemberLocal.First;
  QmemberPusat.First;

  while not(QmemberLocal.Eof) do
  begin
    if NOT(QmemberPusat.Locate('id',QmemberLocalid.asString,[loCaseInsensitive])) then
    begin
        QupdatePusat.Prepare;
        QupdatePusat.Params[0].Value := QmemberLocal.Fields[0].Value;
        QupdatePusat.Params[1].Value := QmemberLocal.Fields[1].Value;
        QupdatePusat.Params[2].Value := QmemberLocal.Fields[2].Value;
        QupdatePusat.Params[3].Value := QmemberLocal.Fields[3].Value;
        QupdatePusat.Params[4].Value := QmemberLocal.Fields[4].Value;
        QupdatePusat.Params[5].Value := QmemberLocal.Fields[5].Value;
        QupdatePusat.Params[6].Value := QmemberLocal.Fields[6].Value;
        QupdatePusat.Params[7].AsBoolean := QmemberLocal.Fields[7].AsBoolean;
        QupdatePusat.Params[8].Value := QmemberLocal.Fields[8].Value;
        QupdatePusat.Params[9].Value := QmemberLocal.Fields[9].Value;
        QupdatePusat.Params[10].Value := QmemberLocal.Fields[10].Value;
        QupdatePusat.Params[11].Value := QmemberLocal.Fields[11].Value;
        QupdatePusat.Params[12].Value := QmemberLocal.Fields[12].Value;
        QupdatePusat.Params[13].Value := QmemberLocal.Fields[13].Value;
        QupdatePusat.ExecSQL;
    end
    else
    begin
      if QmemberLocaltglUpdate.Value > QmemberPusattglUpdate.Value then
      begin
        QdelPusat.Prepare;
        QdelPusat.ParamByName('id').AsString := QmemberLocalid.AsString;
        QdelPusat.ExecSQL;

        QupdatePusat.Prepare;
        QupdatePusat.Params[0].Value := QmemberLocal.Fields[0].Value;
        QupdatePusat.Params[1].Value := QmemberLocal.Fields[1].Value;
        QupdatePusat.Params[2].Value := QmemberLocal.Fields[2].Value;
        QupdatePusat.Params[3].Value := QmemberLocal.Fields[3].Value;
        QupdatePusat.Params[4].Value := QmemberLocal.Fields[4].Value;
        QupdatePusat.Params[5].Value := QmemberLocal.Fields[5].Value;
        QupdatePusat.Params[6].Value := QmemberLocal.Fields[6].Value;
        QupdatePusat.Params[7].AsBoolean := QmemberLocal.Fields[7].AsBoolean;
        QupdatePusat.Params[8].Value := QmemberLocal.Fields[8].Value;
        QupdatePusat.Params[9].Value := QmemberLocal.Fields[9].Value;
        QupdatePusat.Params[10].Value := QmemberLocal.Fields[10].Value;
        QupdatePusat.Params[11].Value := QmemberLocal.Fields[11].Value;
        QupdatePusat.Params[12].Value := QmemberLocal.Fields[12].Value;
        QupdatePusat.Params[13].Value := QmemberLocal.Fields[13].Value;
        QupdatePusat.ExecSQL;
      end;
    end;
    QmemberLocal.Next;
  end;

  QmemberLocal.Active := False;
  QmemberPusat.Active := False;
  QmemberLocal.Active := True;
  QmemberPusat.Active := True;
  QmemberLocal.First;
  QmemberPusat.First;
  while not(QmemberPusat.Eof) do
  begin
    if not(QmemberLocal.Locate('id', QmemberPusatid.AsString,[loCaseInsensitive])) then
    begin
        QupdateLocal.Prepare;
        QupdateLocal.Params[0].Value := QmemberPusat.Fields[0].Value;
        QupdateLocal.Params[1].Value := QmemberPusat.Fields[1].Value;
        QupdateLocal.Params[2].Value := QmemberPusat.Fields[2].Value;
        QupdateLocal.Params[3].Value := QmemberPusat.Fields[3].Value;
        QupdateLocal.Params[4].Value := QmemberPusat.Fields[4].Value;
        QupdateLocal.Params[5].Value := QmemberPusat.Fields[5].Value;
        QupdateLocal.Params[6].Value := QmemberPusat.Fields[6].Value;
        QupdateLocal.Params[7].AsBoolean := QmemberPusat.Fields[7].AsBoolean;
        QupdateLocal.Params[8].Value := QmemberPusat.Fields[8].Value;
        QupdateLocal.Params[9].Value := QmemberPusat.Fields[9].Value;
        QupdateLocal.Params[10].Value := QmemberPusat.Fields[10].Value;
        QupdateLocal.Params[11].Value := QmemberPusat.Fields[11].Value;
        QupdateLocal.Params[12].Value := QmemberPusat.Fields[12].Value;
        QupdateLocal.Params[13].Value := QmemberPusat.Fields[13].Value;
        QupdateLocal.ExecSQL;
    end
    else
    begin
      if QmemberPusattglUpdate.Value > QmemberLocaltglUpdate.Value then
      begin
        QdelLocal.Prepare;
        QdelLocal.ParamByName('id').AsString := QmemberPusatid.AsString;
        QdelLocal.ExecSQL;

        QupdateLocal.Prepare;
        QupdateLocal.Params[0].Value := QmemberPusat.Fields[0].Value;
        QupdateLocal.Params[1].Value := QmemberPusat.Fields[1].Value;
        QupdateLocal.Params[2].Value := QmemberPusat.Fields[2].Value;
        QupdateLocal.Params[3].Value := QmemberPusat.Fields[3].Value;
        QupdateLocal.Params[4].Value := QmemberPusat.Fields[4].Value;
        QupdateLocal.Params[5].Value := QmemberPusat.Fields[5].Value;
        QupdateLocal.Params[6].Value := QmemberPusat.Fields[6].Value;
        QupdateLocal.Params[7].AsBoolean := QmemberPusat.Fields[7].AsBoolean;
        QupdateLocal.Params[8].Value := QmemberPusat.Fields[8].Value;
        QupdateLocal.Params[9].Value := QmemberPusat.Fields[9].Value;
        QupdateLocal.Params[10].Value := QmemberPusat.Fields[10].Value;
        QupdateLocal.Params[11].Value := QmemberPusat.Fields[11].Value;
        QupdateLocal.Params[12].Value := QmemberPusat.Fields[12].Value;
        QupdateLocal.Params[13].Value := QmemberPusat.Fields[13].Value;
        QupdateLocal.ExecSQL;
      end;
    end;
    QmemberPusat.Next;
  end;

 bsSkinMessage1.MessageDlg('         Update Completed          ', mtInformation,[mbOK], 0);

end;

procedure TfMemberUpdate.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfMemberUpdate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfMemberUpdate.bsSkinXFormButton1Click(Sender: TObject);
begin



  while not(QmemberLocal.Eof) do
  begin
    if (QmemberPusat.Locate('id',QmemberLocal.Fields[0].asString,[loCaseInsensitive])) then
    begin
       ShowMessage('ok');
    end;
    QmemberLocal.Next;
  end;

end;

procedure TfMemberUpdate.BtnUpdateRemoteClick(Sender: TObject);
var s : string;
begin
  konekDataBase;
  s:= ' SELECT     * '+
      ' FROM         tmember '+
      ' WHERE ';

  QmaxLocal.Active := False;
  QmaxLocal.Active := True;
  while not(QmaxLocal.Eof) do
  begin
    s:= s+ ' (id > '+ QuotedStr(QmaxLocalid.Value) + ') AND (id_kategori = ' + QmaxLocalid_kategori.AsString + ') OR ';
    QmaxLocal.Next;
  end;

  s := LeftStr(s, Length(s)-3);

  QmemberPusat.SQL.Text := s;
  QmemberPusat.Active := True;

  s:= ' SELECT     * '+
      ' FROM         tmember '+
      ' WHERE ';

  QmaxPusat.Active := False;
  QmaxPusat.Active := True;
  while not(QmaxPusat.Eof) do
  begin
    s:= s+ ' (id > '+ QuotedStr(QmaxPusatid.Value) + ') AND (id_kategori = ' + QmaxPusatid_kategori.AsString + ') OR ';
    QmaxPusat.Next;
  end;

  s := LeftStr(s, Length(s)-3);

  QmemberLocal.SQL.Text := s;
  QmemberLocal.Active := True;

  QmemberLocal.First;
  QmemberPusat.First;

  while not(QmemberLocal.Eof) do
  begin
        QupdatePusat.Prepare;
        QupdatePusat.Params[0].Value := QmemberLocal.Fields[0].Value;
        QupdatePusat.Params[1].Value := QmemberLocal.Fields[1].Value;
        QupdatePusat.Params[2].Value := QmemberLocal.Fields[2].Value;
        QupdatePusat.Params[3].Value := QmemberLocal.Fields[3].Value;
        QupdatePusat.Params[4].Value := QmemberLocal.Fields[4].Value;
        QupdatePusat.Params[5].Value := QmemberLocal.Fields[5].Value;
        QupdatePusat.Params[6].Value := QmemberLocal.Fields[6].Value;
        QupdatePusat.Params[7].AsBoolean := QmemberLocal.Fields[7].AsBoolean;
        QupdatePusat.Params[8].Value := QmemberLocal.Fields[8].Value;
        QupdatePusat.Params[9].Value := QmemberLocal.Fields[9].Value;
        QupdatePusat.Params[10].Value := QmemberLocal.Fields[10].Value;
        QupdatePusat.Params[11].Value := QmemberLocal.Fields[11].Value;
        QupdatePusat.Params[12].Value := QmemberLocal.Fields[12].Value;
        QupdatePusat.Params[13].Value := QmemberLocal.Fields[13].Value;
        QupdatePusat.ExecSQL;

    QmemberLocal.Next;
  end;


  QmemberLocal.First;
  QmemberPusat.First;
  while not(QmemberPusat.Eof) do
  begin
        QupdateLocal.Prepare;
        QupdateLocal.Params[0].Value := QmemberPusat.Fields[0].Value;
        QupdateLocal.Params[1].Value := QmemberPusat.Fields[1].Value;
        QupdateLocal.Params[2].Value := QmemberPusat.Fields[2].Value;
        QupdateLocal.Params[3].Value := QmemberPusat.Fields[3].Value;
        QupdateLocal.Params[4].Value := QmemberPusat.Fields[4].Value;
        QupdateLocal.Params[5].Value := QmemberPusat.Fields[5].Value;
        QupdateLocal.Params[6].Value := QmemberPusat.Fields[6].Value;
        QupdateLocal.Params[7].AsBoolean := QmemberPusat.Fields[7].AsBoolean;
        QupdateLocal.Params[8].Value := QmemberPusat.Fields[8].Value;
        QupdateLocal.Params[9].Value := QmemberPusat.Fields[9].Value;
        QupdateLocal.Params[10].Value := QmemberPusat.Fields[10].Value;
        QupdateLocal.Params[11].Value := QmemberPusat.Fields[11].Value;
        QupdateLocal.Params[12].Value := QmemberPusat.Fields[12].Value;
        QupdateLocal.Params[13].Value := QmemberPusat.Fields[13].Value;
        QupdateLocal.ExecSQL;

    QmemberPusat.Next;
  end;

 bsSkinMessage1.MessageDlg('         Update Completed          ', mtInformation,[mbOK], 0);


end;

end.
