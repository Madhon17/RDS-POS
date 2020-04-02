unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, DBCtrls, Mask, ZDataset,
  bsSkinData, BusinessSkinForm, bsSkinCtrls, bsSkinGrids, bsDBGrids,
  bsMessages, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable;


  

type
  Tfkategorimember = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dbkategori: TDBEdit;
    dbmketerangan: TDBMemo;
    Dskategorimember: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label3: TLabel;
    Dbkode: TDBEdit;
    bsSkinData2: TbsSkinData;
    bsCompressedStoredSkin1: TbsCompressedStoredSkin;
    bsCompressedStoredSkin3: TbsCompressedStoredSkin;
    bsSkinData3: TbsSkinData;
    DBGrid1: TDBGrid;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    Label4: TLabel;
    dbdiskon: TDBEdit;
    Label5: TLabel;
    dbdiskonmenu: TDBEdit;
    tkmember: TZTable;
    tkmemberid: TSmallintField;
    tkmemberkategori: TStringField;
    tkmemberketerangan: TMemoField;
    tkmemberdiskonroom: TFloatField;
    tkmemberdiskonmenu: TFloatField;
    tkmemberkode: TStringField;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    pvtambah, pvedit : Boolean ;
    cekkategori, cekkode : string  ;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fkategorimember: Tfkategorimember;

implementation
  uses unit1, unit3;
{$R *.dfm}

procedure Tfkategorimember.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure Tfkategorimember.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
end;
procedure Tfkategorimember.FormCreate(Sender: TObject);
begin
  FrmInduk.pbkatmember := true;

  tkmember.Connection := modul.Database1;
  tkmember.TableName := 'tkategorimember';
  tkmember.Active := True;
  Dskategorimember.DataSet := tkmember;

  DBGrid1.Enabled:=True;

  if FrmInduk.pbidkasir <> 'vizta' then
  begin
    btnedit.Enabled := False;
  end;
end;

procedure Tfkategorimember.btneditClick(Sender: TObject);
begin
  pvedit := True;
  pvtambah := False;
  if tkmember.RecordCount = 0 then
    begin
      beep;
      dbkategori.SetFocus;
      Exit;
  end;
  DBGrid1.Enabled:=False;
  tkmember.Edit;
  buka;
  dbkategori.SetFocus;
  cekkategori := tkmemberkategori.Value;
  cekkode := tkmemberkode.Value;
end;

procedure Tfkategorimember.btnhapusClick(Sender: TObject);
begin
  if tkmember.RecordCount = 0 then
  begin
    Exit;
  end;
   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       tkmember.Delete;
end;

procedure Tfkategorimember.btnkeluarClick(Sender: TObject);
begin
  fkategorimember.Close;
  FrmInduk.pbkatmember := False;
end;

procedure Tfkategorimember.btnbatalClick(Sender: TObject);
begin
  tutup;
  tkmember.Cancel;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
end;

procedure Tfkategorimember.btntambahClick(Sender: TObject);
begin
  DBGrid1.Enabled := False;
  pvTambah := True;
  tkmember.Append;
  dbkategori.SetFocus;
  buka;
end;

procedure Tfkategorimember.btnsimpanClick(Sender: TObject);
var id : Smallint;
  qid, qkategori: TZQuery;
begin
  if dbkategori.Text = '' then
  begin
    Beep;
    dbkategori.SetFocus;
    exit;
  end;
  
  if Dbkode.Text = '' then
  begin
    beep ;
    bsSkinMessage1.MessageDlg(' kode belum diisi', mtInformation,[mbOK],0);
    Dbkode.SetFocus;
    exit;
  end;

  if dbdiskon.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg(' DISKON ROOM BELUM DIISI ',mtInformation,[mbOK],0);
    dbdiskon.SetFocus;
    Exit;
  end;

  if dbdiskonmenu.Text = '' then
   begin
    beep;
    bsSkinMessage1.MessageDlg(' DISKON MENU BELUM DIISI ',mtInformation,[mbOK],0);
    dbdiskonmenu.SetFocus;
    exit;
  end;

  if dbmketerangan.Text = '' then
  begin
    Beep;
    dbmketerangan.SetFocus;
    exit;
  end;


  if pvTambah then
  begin
    qid := TZQuery.Create(self);
    Qid.Connection := modul.Database1;
    Qid.DataSource := Dskategorimember;
    Qid.SQL.Text := 'SELECT MAX(id) AS id ' +
                    'FROM tkategorimember';
    qid.Active := True;
    if  qid.FieldByName('id').AsInteger = null then
      id := 1
    else
      id:= qid.FieldByName('id').AsInteger + 1;
    tkmemberid.value := id;
 end;

 qkategori := TZQuery.Create(self);
 qkategori.Connection := modul.Database1;
 qkategori.Active := False;
 qkategori.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tkategorimember ' +
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
                       ' FROM         tkategorimember ' +
                       ' WHERE     (kode= ' + QuotedStr(Dbkode.Text) + ')';
 qkategori.Active := True;
 if qkategori.FieldByName('jumlah').AsInteger > 0 then
 begin
  if (pvedit = true) and  (Dbkode.Text <> cekkode) then
  begin
    bsSkinMessage1.MessageDlg(' Nama Kategori Sudah Ada ',mtInformation,[mbOK],0);
    Dbkode.SetFocus;
    exit;
  end;
  if pvtambah then
  begin
     bsSkinMessage1.MessageDlg(' Kode Sudah Ada, masukkan Kode Yang Lain ',mtInformation,[mbOK],0);
     Dbkode.SetFocus;
     exit;
     end;
  end;

  tkmember.Post;
  DBGrid1.Enabled := True;
  pvTambah := False;
  dbkategori.Enabled:=True;
  dbmketerangan.Enabled:=True;
  tutup;
  DBGrid1.SetFocus;

end;

procedure Tfkategorimember.TKN13(Sender: TObject; var Key: Char);
begin
   if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfkategorimember.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbkatmember := False;
end;

end.
