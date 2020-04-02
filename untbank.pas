unit untbank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ZDataset,
  bsSkinCtrls, bsMessages, BusinessSkinForm, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable;

type
  Tfbank = class(TForm)
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DSbank: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    dbnama: TDBEdit;
    Tbank: TZTable;
    Tbankid: TSmallintField;
    Tbanknama: TStringField;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    pvtambah, pvedit      : Boolean;
    ceknama   : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbank: Tfbank;

implementation
   uses unit1, unit3;
{$R *.dfm}
procedure Tfbank.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btndelete.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure Tfbank.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btndelete.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
end;

procedure Tfbank.FormCreate(Sender: TObject);
begin
  FrmInduk.pbbank := True;
  Tbank.Connection := modul.Database1;
  Tbank.TableName := 'tbank';
  Tbank.Active := True;
  DSbank.DataSet := Tbank;
  tutup;
end;

procedure Tfbank.btntambahClick(Sender: TObject);
begin
  DBGrid1.Enabled := False;
  pvtambah := True;
  Tbank.Append;
  dbnama.SetFocus;
  buka;
end;

procedure Tfbank.btneditClick(Sender: TObject);
begin
  pvedit := True;
  pvedit := False;
  DBGrid1.Enabled:=False;
  Tbank.Edit;
  ceknama := Tbanknama.Value;
  buka;
  dbnama.SetFocus;
end;

procedure Tfbank.btndeleteClick(Sender: TObject);
begin
   if Tbank.RecordCount = 0 then
  begin
    Exit;
  end;
   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       Tbank.Delete;
end;

procedure Tfbank.btnsimpanClick(Sender: TObject);
var id    : Smallint;
  Qid, Qkategori: TZQuery;
begin
   if dbnama.Text = '' then
  begin
    Beep;
    dbnama.SetFocus;
    exit;
  end;

  if pvTambah then
  begin
    Qid := TZQuery.Create(self);
    Qid.Connection := modul.Database1;
    Qid.SQL.Text := 'SELECT MAX(id) AS id ' +
                    'FROM tbank';
    qid.Active := True;
    if  qid.FieldByName('id').AsInteger = 0 then
      id := 1
    else
      id:= qid.FieldByName('id').AsInteger + 1;
    Tbankid.Value := id;
  end;

  Qkategori := TZQuery.Create(self);
  Qkategori.Connection := modul.Database1;
 qkategori.Active := False;
 qkategori.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tbank ' +
                       ' WHERE     (nama= ' + QuotedStr(dbnama.Text) + ')';
 qkategori.Active := True;
 if qkategori.FieldByName('jumlah').AsInteger > 0 then
 begin
  if (pvedit = true) and  (dbnama.Text <> ceknama) then
  begin
    bsSkinMessage1.MessageDlg(' Nama Bank Sudah Ada ',mtInformation,[mbOK],0);
    dbnama.SetFocus;
    exit;
  end;
  if pvtambah then
  begin
     bsSkinMessage1.MessageDlg(' Nama Bank Sudah Ada ',mtInformation,[mbOK],0);
     dbnama.SetFocus;
     exit;
     end;
  end;

  Tbank.Post;
  DBGrid1.Enabled := True;
  pvTambah := False;
  dbnama.Enabled:=True;
  tutup;
  DBGrid1.SetFocus;
end;

procedure Tfbank.btnkeluarClick(Sender: TObject);
begin
  //FrmInduk.pbkatroom := False;
  fbank.close;
end;

procedure Tfbank.btnbatalClick(Sender: TObject);
begin
  tutup;
  Tbank.Cancel;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  pvTambah := False;
  pvedit := False;
end;

procedure Tfbank.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     font.Style := [fsBold]
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfbank.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.pbbank := False;
  Action := caFree;
end;

end.
