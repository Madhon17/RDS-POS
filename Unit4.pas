unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Grids, DBGrids, Mask, DBCtrls,
  BusinessSkinForm, bsSkinCtrls, bsMessages, ZDataset, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable;

type
  Tfkategorimenu = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dbkategori: TDBEdit;
    dbketerangan: TDBEdit;
    DBGrid1: TDBGrid;
    DSkategorimenu: TDataSource;
    Label3: TLabel;
    dbkode: TDBEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DSlokasi: TDataSource;
    tkategorimenu: TZTable;
    tkategorimenuid: TSmallintField;
    tkategorimenukategori: TStringField;
    tkategorimenukode: TStringField;
    tkategorimenuketerangan: TStringField;
    tkategorimenulokasi: TSmallintField;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    pvTambah, pvedit : Boolean;
    cekkategori, cekkode : string;
    Qlokasi: TZQuery;
  public
    { Public declarations }
  end;

var
  fkategorimenu: Tfkategorimenu;

implementation
   uses unit1, unit3;
{$R *.dfm}

procedure Tfkategorimenu.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btndelete.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure Tfkategorimenu.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btndelete.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
end;

procedure Tfkategorimenu.FormCreate(Sender: TObject);
begin

  tkategorimenu.Connection := modul.Database1;
  tkategorimenu.TableName := 'tkategorimenu';
  DSkategorimenu.DataSet := tkategorimenu;

  FrmInduk.pbkatmenu := True;

  Qlokasi := TZQuery.Create(self);
  Qlokasi.Connection := modul.Database1;
  Qlokasi.SQL.Text := 'SELECT id, lokasi FROM tlokasi ORDER BY lokasi';
  Qlokasi.Active := True;
  DSlokasi.DataSet := Qlokasi;

  tkategorimenu.Active := True;
  DBGrid1.Enabled:= True;
end;

procedure Tfkategorimenu.btneditClick(Sender: TObject);
begin
  pvedit := True;
  pvTambah := False;
  if tkategorimenu.RecordCount = 0 then
  begin
    beep;
    dbkategori.SetFocus;
    exit;
  end;

  DBGrid1.Enabled:=False;
  tkategorimenu.Edit;
  cekkategori := tkategorimenukategori.Value;
  cekkode := tkategorimenukode.Value;
  buka;
  dbkategori.SetFocus
end;

procedure Tfkategorimenu.btntambahClick(Sender: TObject);
begin
    DBGrid1.Enabled := false;
    pvTambah := True;
    tkategorimenu.Append;
    dbkategori.SetFocus;
    buka;
end;

procedure Tfkategorimenu.btnsimpanClick(Sender: TObject);
var id : Smallint;
  qid, qkategori : TZQuery;
begin
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
    qid := TZQuery.Create(self);
    qid.Connection := modul.Database1;
    qid.DataSource := DSkategorimenu;
    Qid.SQL.Text := 'SELECT     MAX(id) AS id ' +
                    'FROM   tkategorimenu';
    qid.Active := True;
    if  qid.FieldByName('id').AsInteger = null then
    begin
      id := 1;
      tkategorimenuid.Value := id;
    end
    else
    begin
      id := qid.FieldByName('id').AsInteger + 1;
      tkategorimenuid.Value := id;
    end;
  end;

  dbkode.Text := UpperCase(dbkode.Text) ;


  qkategori := TZQuery.Create(self);
  qkategori.Connection := modul.Database1;
 qkategori.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tkategorimenu ' +
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

 
  tkategorimenu.Post;
  DBGrid1.Enabled := True;
  pvTambah := False;
  dbkategori.Enabled:=True;
  tutup;
  DBGrid1.SetFocus;
end;

procedure Tfkategorimenu.btnbatalClick(Sender: TObject);
begin
  tutup;
  tkategorimenu.Cancel;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  pvTambah := False;
  pvedit := False;
end;

procedure Tfkategorimenu.btndeleteClick(Sender: TObject);
var
  query : TZQuery;
begin
    if tkategorimenu.RecordCount = 0 then
    begin
      Exit;
    end;

    query := TZQuery.Create(Self);
    query.Connection := modul.Database1;
    query.SQL.Text := 'select count(*) count from tmenu where kategori = ' + tkategorimenuid.AsString;
    query.Active := True;
    if query.FieldByName('count').AsInteger > 0 then
    begin
      beep;
      bsSkinMessage1.MessageDlg('           Data sudah terpakai          ', mtError,[mbOK],0);
      exit;
    end;

    if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       tkategorimenu.Delete;
end;

procedure Tfkategorimenu.btnkeluarClick(Sender: TObject);
begin
  FrmInduk.pbkatmenu := False;
  Fkategorimenu.close;
end;

procedure Tfkategorimenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    tkategorimenu.Active:=False;
    Action := caFree;
    FrmInduk.pbkatmenu := False;
end;



procedure Tfkategorimenu.TKN13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfkategorimenu.DBGrid1DrawColumnCell(Sender: TObject;
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

end.
