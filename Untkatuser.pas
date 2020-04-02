unit Untkatuser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, bsSkinCtrls, DBTables, Grids, DBGrids, StdCtrls, Mask, ZDataset,
  DBCtrls, bsMessages, BusinessSkinForm, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable;

type
  Tfkatuser = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dbkategori: TDBEdit;
    dbkode: TDBEdit;
    DSkatuser: TDataSource;
    DBGrid1: TDBGrid;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    tkategoriuser: TZTable;
    tkategoriuserid: TSmallintField;
    tkategoriuserkategori: TStringField;
    tkategoriuserkode: TStringField;
    procedure buka;
    procedure tutup;
    procedure btnsimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    pvtambah, pvedit : Boolean;
    cekkategori, cekkode : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fkatuser: Tfkatuser;

implementation
  uses unit1, unit3;
{$R *.dfm}

procedure Tfkatuser.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btndelete.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure Tfkatuser.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btndelete.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
end;
procedure Tfkatuser.btnsimpanClick(Sender: TObject);
var id : Smallint;
  qid, qkategori: TZQuery;
begin
   if dbkategori.Text = '' then
    begin
      beep;
      bsSkinMessage1.MessageDlg(' NAMA KATEGORI MENU BELUM DIISI ', mtInformation, [mbOK], 0);
      dbkategori.SetFocus;
      exit;
   end;

  if Length(Trim(dbkode.Text))<> 2 then Begin
    beep;
    bsSkinMessage1.MessageDlg ('Kode Kategori harus 2 Karakter!' , mtInformation , [mbOK],0);
    dbkode.SetFocus;
    exit;
  end;
  if dbkode.Text = '' then
  begin
    beep;
    dbkode.SetFocus;
    exit;
  end;

  qkategori := TZQuery.Create(self);
  qkategori.Connection := modul.Database1;
  qkategori.Active := False;
 qkategori.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tkategoriuser ' +
                       ' WHERE     (kategori= ' + QuotedStr(dbkategori.Text) + ')';
 qkategori.Active := True;
 if qkategori.FieldByName('jumlah').AsInteger > 0 then
 begin
  if (pvedit = true) and  (dbkategori.Text <> cekkategori) then
  begin
    bsSkinMessage1.MessageDlg(' Nama Kategori Sudah Ada ',mtInformation,[mbOK],0);
    dbkategori.SetFocus;
    exit;
  end;
  if pvtambah then
  begin
     bsSkinMessage1.MessageDlg(' Nama Kategori Sudah Ada ',mtInformation,[mbOK],0);
     dbkategori.SetFocus;
     exit;
     end;
  end;

 qkategori.Active := False;
 qkategori.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tkategoriuser ' +
                       ' WHERE     (kode= ' + QuotedStr(dbkode.Text) + ')';
 qkategori.Active := True;
 if qkategori.FieldByName('jumlah').AsInteger > 0 then
 begin
  if (pvedit = true) and  (Dbkode.Text <> cekkode) then
  begin
    bsSkinMessage1.MessageDlg(' Nama Kategori Sudah Ada ',mtInformation,[mbOK],0);
    dbkode.SetFocus;
    exit;
  end;
  if pvtambah then
  begin
     bsSkinMessage1.MessageDlg(' Kode Sudah Ada, masukkan Kode Yang Lain ',mtInformation,[mbOK],0);
     Dbkode.SetFocus;
     exit;
     end;
  end;


  if pvTambah then
  begin
    qid := TZQuery.Create(self);
    qid.Connection := modul.Database1;
    qid.SQL.Text := 'SELECT     MAX(id) AS id ' +
                    'FROM   tkategoriuser ';
    qid.Active := True;
    if  qid.FieldByName('id').AsInteger = null then
    else
    begin
      id := qid.FieldByName('id').AsInteger + 1;
      tkategoriuserid.Value := id;
    end;
end;
  tkategoriuser.Post;
  DBGrid1.Enabled := True;
  pvTambah := False;
  dbkategori.Enabled:=True;
  tutup;
  DBGrid1.SetFocus;
end;

procedure Tfkatuser.FormCreate(Sender: TObject);
begin

  FrmInduk.pbkatuser := True;

  tkategoriuser.Connection := modul.Database1;
  tkategoriuser.TableName := 'tkategoriuser';
  tkategoriuser.Active := True;
  DSkatuser.DataSet := tkategoriuser;

  DBGrid1.Enabled:= True;
end;

procedure Tfkatuser.btntambahClick(Sender: TObject);
begin
    DBGrid1.Enabled := false;
    pvTambah := True;
    tkategoriuser.Append;
    dbkategori.SetFocus;
    buka;
end;

procedure Tfkatuser.btnbatalClick(Sender: TObject);
begin
  tkategoriuser.Cancel;
  DBGrid1.Enabled := True; 
  tutup;
end;

procedure Tfkatuser.btndeleteClick(Sender: TObject);
begin
   if tkategoriuser.RecordCount = 0 then
    begin
      Exit;
    end;
    if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       tkategoriuser.Delete;
end;

procedure Tfkatuser.btneditClick(Sender: TObject);
begin
   if tkategoriuser.RecordCount = 0 then
  begin
    beep;
    dbkategori.SetFocus;
    exit;
  end;
  pvedit := True;
  pvtambah := False;
  cekkategori := tkategoriuserkategori.Value;
  cekkode := tkategoriuserkode.Value;
  DBGrid1.Enabled:=False;
  tkategoriuser.Edit;
  buka;
  dbkategori.SetFocus
end;

procedure Tfkatuser.btnkeluarClick(Sender: TObject);
begin
 FrmInduk.pbkatuser := False;
 fkatuser.Close;
end;

procedure Tfkatuser.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfkatuser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbkatuser := False;
end;

end.
