unit untkatbarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, bsSkinCtrls, Grids, DBGrids, StdCtrls, Mask, ZDataset,
  DBCtrls, BusinessSkinForm, bsMessages, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable;

type
  Tfkatbarang = class(TForm)
    Label1: TLabel;
    dbkategori: TDBEdit;
    Label3: TLabel;
    dbkode: TDBEdit;
    Label2: TLabel;
    dbketerangan: TDBEdit;
    DBGrid1: TDBGrid;
    btntambah: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnedit: TbsSkinButton;
    btnbatal: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    DSkatbarang: TDataSource;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    tkatbarang: TZTable;
    tkatbarangid: TSmallintField;
    tkatbarangkategori: TStringField;
    tkatbarangkode: TStringField;
    tkatbarangketerangan: TStringField;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure dbkategoriKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btntambahKeyPress(Sender: TObject; var Key: Char);
  private
     pvtambah, pvedit   : Boolean;
     cekkategori, cekkode   : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fkatbarang: Tfkatbarang;

implementation
   uses unit1, unit3 ;
{$R *.dfm}
procedure Tfkatbarang.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btndelete.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure Tfkatbarang.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btndelete.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;

end;

procedure Tfkatbarang.FormCreate(Sender: TObject);
begin

  tkatbarang.Connection := modul.Database1;
  tkatbarang.TableName := 'tkategoribarang';
  DSkatbarang.DataSet := tkatbarang;

  FrmInduk.pbkatbarang := True;
  tkatbarang.Active := True;
  DBGrid1.Enabled:= True;
end;

procedure Tfkatbarang.btntambahClick(Sender: TObject);
begin
  DBGrid1.Enabled := false;
  pvTambah := True;
  tkatbarang.Append;
  dbkategori.SetFocus;
  buka;
end;

procedure Tfkatbarang.btneditClick(Sender: TObject);
begin
  pvedit := True;
  pvTambah := False;

  if tkatbarang.RecordCount = 0 then
  begin
    beep;
    dbkategori.SetFocus;
    exit;
  end;

  DBGrid1.Enabled:=False;
  tkatbarang.Edit;
  cekkategori := tkatbarangkategori.Value;
  cekkode := tkatbarangkode.Value;
  buka;
  dbkategori.SetFocus
end;

procedure Tfkatbarang.btndeleteClick(Sender: TObject);
begin
   if tkatbarang.RecordCount = 0 then
    begin
      bsSkinMessage1.MessageDlg('Data Tidak ada',mtInformation,[mbOK],0);
      Exit;
    end;


    if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       tkatbarang.Delete;


end;

procedure Tfkatbarang.btnbatalClick(Sender: TObject);
begin
  tutup;
  tkatbarang.Cancel;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  pvtambah := False;
  pvedit := False;
end;

procedure Tfkatbarang.btnkeluarClick(Sender: TObject);
begin
   fkatbarang.close;
end;

procedure Tfkatbarang.btnsimpanClick(Sender: TObject);
var id : Smallint;
  qid, Qkategori: TZQuery;
begin

  qid := TZQuery.Create(self);
  qid.Connection := modul.Database1;

  Qkategori := TZQuery.Create(self);
  Qkategori.Connection := modul.Database1;

  if dbkategori.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg(' NAMA KATEGORI MENU BELUM DIISI ', mtInformation, [mbOK], 0);
    dbkategori.SetFocus;
    exit;
  end;

  if Length(Trim(dbkode.Text))<> 3 then Begin
    beep;
    bsSkinMessage1.MessageDlg ('Kode Kategori harus 3 Karakter!' , mtInformation , [mbOK],0);
    dbkode.SetFocus;
    exit;
  end;

  if dbkode.Text = '' then
  begin
    beep;
    dbkode.SetFocus;
    exit;
  end;

  if pvTambah then
  begin
    Qid.SQL.Text := 'SELECT     MAX(id) AS id ' +
                    'FROM   tkategoribarang';
    qid.Active := True;
    if  qid.FieldByName('id').AsInteger = null then
    else
    begin
      id := qid.FieldByName('id').AsInteger + 1;
      tkatbarangid.Value := id;
    end;
  end;

  dbkode.Text := UpperCase(dbkode.Text) ;

  qkategori.Active := False;
  qkategori.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tkategoribarang ' +
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
                       ' FROM         tkategoribarang ' +
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

  tkatbarang.Post;
  DBGrid1.Enabled := True;
  pvTambah := False;
  dbkategori.Enabled:=True;
  tutup;
  DBGrid1.SetFocus;
end;

procedure Tfkatbarang.dbkategoriKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfkatbarang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
   FrmInduk.pbkatbarang := False;
end;

procedure Tfkatbarang.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     Font.Style := [fsBold];
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfkatbarang.btntambahKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

end.
