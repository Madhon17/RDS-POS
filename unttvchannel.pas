unit unttvchannel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, bsSkinCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, StdCtrls, Mask, DBCtrls,
  BusinessSkinForm, bsMessages;

type
  TFtvchannel = class(TForm)
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    qtv: TZQuery;
    edtchannel: TEdit;
    edtfrekuensi: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Qupdate: TZQuery;
    Qid: TZQuery;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    qtvchannel: TStringField;
    qtvfrekwensi: TLargeintField;
    qtvid: TIntegerField;
    procedure buka;
    procedure tutup;
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure edtfrekuensiKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    pvtambah, pvedit    : Boolean;
    cekchannel, cekfrekuensi : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ftvchannel: TFtvchannel;

implementation
   uses unit1, unit3;
{$R *.dfm}
procedure TFtvchannel.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure TFtvchannel.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
end;

procedure TFtvchannel.btntambahClick(Sender: TObject);
begin
  DBGrid1.Enabled := False;
  pvTambah := True;
  edtchannel.Text := '';
  edtfrekuensi.Text := '';
  edtchannel.SetFocus;
  buka;
end;

procedure TFtvchannel.btnsimpanClick(Sender: TObject);
var id    : Smallint;
begin
   if edtchannel.Text = '' then
  begin
    Beep;
    edtchannel.SetFocus;
    exit;
  end;

   if edtfrekuensi.Text = '' then
  begin
    Beep;
    edtfrekuensi.SetFocus;
    exit;
  end;

  if pvTambah then
  begin
    Qid.SQL.Text := 'SELECT MAX(ID) AS id ' +
                    'FROM tvchannel';
    qid.Active := True;
    id :=0;
    if  qid.FieldByName('id').AsInteger = null then
      id := 1
    else
      id:= qid.FieldByName('id').AsInteger + 1;

     Qupdate.Active := False;

      Qupdate.SQL.Text := ' INSERT INTO tvchannel  ' +
                      ' ( ID, channel, frekwensi)'  +
                      ' VALUES ( :ID, :channel, :frekwensi) ' ;
    Qupdate.ParamByName('id').AsInteger := id;
    Qupdate.ParamByName('channel').AsString := edtchannel.Text;
    Qupdate.ParamByName('frekwensi').AsString := edtfrekuensi.Text;
    Qupdate.ExecSQL;
 end;


 if pvedit then
 begin
     Qupdate.Active := False;

      Qupdate.SQL.Text := ' UPDATE tvchannel SET ' +
                      '  channel='  + QuotedStr(edtchannel.Text) +
                      ', frekwensi= '+ QuotedStr(edtfrekuensi.Text) +
                      ' WHERE (channel= ' + QuotedStr(cekchannel) + ')' +
                      ' AND (frekwensi= ' + QuotedStr(cekfrekuensi) + ')';
    Qupdate.ExecSQL;
 end;

  DBGrid1.Enabled := True;
  qtv.Active := False;
  qtv.Active := True;
  pvTambah := False;
  edtchannel.Enabled:=True;
  tutup;
  DBGrid1.SetFocus;
end;

procedure TFtvchannel.FormCreate(Sender: TObject);
begin
  FrmInduk.pbtvchannel := True;
  qtv.Active := True;
end;

procedure TFtvchannel.btneditClick(Sender: TObject);
begin
  pvedit := True;
  pvtambah := False;
  if qtv.RecordCount = 0 then
    begin
      beep;
      edtchannel.SetFocus;
      Exit;
  end;
  DBGrid1.Enabled:=False;
  edtchannel.Text := qtvchannel.Value;
  edtfrekuensi.Text := IntToStr(qtvfrekwensi.Value);
  buka;
  edtchannel.SetFocus;

  cekchannel := qtvchannel.Value;
  cekfrekuensi := IntToStr(qtvfrekwensi.value);
end;

procedure TFtvchannel.btnhapusClick(Sender: TObject);
begin
   if qtv.RecordCount = 0 then
  begin
    Exit;
  end;
   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       BEGIN
        Qupdate.Active := False;
        Qupdate.SQL.Text := ' delete FROM tvchannel ' +
                            ' WHERE (Channel= ' + QuotedStr(qtvchannel.AsString) + ')' +
                            ' AND (frekwensi= ' + QuotedStr(IntToStr(qtvfrekwensi.Value)) +')';
        Qupdate.ExecSQL;
       END;

  qtv.Active := False;
  qtv.Active := True;
end;

procedure TFtvchannel.btnbatalClick(Sender: TObject);
begin
  tutup;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  edtchannel.Text := '';
  edtfrekuensi.Text := '';

end;

procedure TFtvchannel.edtfrekuensiKeyPress(Sender: TObject; var Key: Char);
begin
   if not(((Key>='0')and(Key<='9'))or(Key=#8)or(Key=DecimalSeparator)or(Key='-')) then Key:=#0;
end;

procedure TFtvchannel.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFtvchannel.btnkeluarClick(Sender: TObject);
begin
  Ftvchannel.Close;
end;

procedure TFtvchannel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.pbtvchannel := False;
  Action := caFree;
end;

end.
