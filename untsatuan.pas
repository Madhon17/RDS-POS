unit untsatuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, DB, DBTables, StdCtrls, Mask, DBCtrls, Grids,
  DBGrids, bsMessages, BusinessSkinForm, ExtCtrls, ZDataset,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable;

type
  Tfsatuan = class(TForm)
    DSsatuan: TDataSource;
    btntambah: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnedit: TbsSkinButton;
    btnbatal: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    dbsatuan: TDBEdit;
    dbkode: TDBEdit;
    Label3: TLabel;
    dbketerangan: TDBEdit;
    tsatuan: TZTable;
    tsatuansatuan: TStringField;
    tsatuankode: TStringField;
    tsatuanid: TSmallintField;
    tsatuanketerangan: TStringField;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbsatuanKeyPress(Sender: TObject; var Key: Char);
  private
    pvtambah, pvedit  : Boolean;
    ceksatuan, cekkode  : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsatuan: Tfsatuan;

implementation
   uses unit1, unit3 ;
{$R *.dfm}
procedure Tfsatuan.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btndelete.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure Tfsatuan.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btndelete.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;

end;


procedure Tfsatuan.FormCreate(Sender: TObject);
begin

  tsatuan.Connection := modul.Database1;
  tsatuan.TableName := 'tsatuan';

  DSsatuan.DataSet := tsatuan;


  FrmInduk.pbsatuan := True;
  tsatuan.Active := True;
  DBGrid1.Enabled:= True;
 
end;

procedure Tfsatuan.btntambahClick(Sender: TObject);
begin
  DBGrid1.Enabled := false;
  pvTambah := True;
  tsatuan.Append;
  dbsatuan.SetFocus;
  buka;
end;

procedure Tfsatuan.btneditClick(Sender: TObject);
begin
  pvedit := True;
  pvtambah := False;

  if tsatuan.RecordCount = 0 then
  begin
    beep;
    dbsatuan.SetFocus;
    exit;
  end;

  DBGrid1.Enabled:=False;
  tsatuan.Edit;
  ceksatuan := tsatuansatuan.Value;
  cekkode := tsatuankode.Value;
  buka;
  dbsatuan.SetFocus
end;

procedure Tfsatuan.btndeleteClick(Sender: TObject);
begin
   if tsatuan.RecordCount = 0 then
    begin
      bsSkinMessage1.MessageDlg('Data Tidak ada',mtInformation,[mbOK],0);
      Exit;
    end;
    if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       tsatuan.Delete;
end;

procedure Tfsatuan.btnsimpanClick(Sender: TObject);
var id : Smallint;
  Qid, Qsatuan: TZQuery;
begin

  Qid := TZQuery.Create(self);
  Qid.Connection := modul.Database1;

  Qsatuan := TZQuery.Create(self);
  Qsatuan.Connection := modul.Database1;

  if dbsatuan.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg(' NAMA SATUAN BELUM DIISI ', mtInformation, [mbOK], 0);
    dbsatuan.SetFocus;
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
    Qid.Active := False;
    Qid.SQL.Text := 'SELECT     MAX(id) AS id ' +
                    'FROM   tsatuan';
    qid.Active := True;
    if  qid.FieldByName('id').AsInteger = null then
    else
    begin
      id := qid.FieldByName('id').AsInteger + 1;
      tsatuanid.Value := id;
    end;
  end;

 

  Qsatuan.Active := False;
  Qsatuan.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tsatuan ' +
                       ' WHERE     (satuan= ' + QuotedStr(dbsatuan.Text) + ')';
 Qsatuan.Active := True;

 if Qsatuan.FieldByName('jumlah').AsInteger > 0 then
 begin
  if (pvedit = true) and  (dbsatuan.Text <> ceksatuan) then
  begin
    bsSkinMessage1.MessageDlg(' Nama Satuan Sudah Ada ',mtInformation,[mbOK],0);
    dbsatuan.SetFocus;
    exit;
  end;
  
 if pvtambah then
  begin
     bsSkinMessage1.MessageDlg(' Nama Satuan Sudah Ada ',mtInformation,[mbOK],0);
     dbsatuan.SetFocus;
     exit;
     end;
  end;
          
 Qsatuan.Active := False;
 Qsatuan.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tsatuan ' +
                       ' WHERE     (kode= ' + QuotedStr(dbkode.Text) + ')';
 Qsatuan.Active := True;
 if Qsatuan.FieldByName('jumlah').AsInteger > 0 then
 begin
  if (pvedit = true) and  (Dbkode.Text <> cekkode) then
  begin
    bsSkinMessage1.MessageDlg(' Nama kode Sudah Ada ',mtInformation,[mbOK],0);
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

  tsatuan.Post;
  DBGrid1.Enabled := True;
  pvTambah := False;
  dbsatuan.Enabled:=True;
  tutup;
  DBGrid1.SetFocus;
end;

procedure Tfsatuan.btnbatalClick(Sender: TObject);
begin
  tutup;
  tsatuan.Cancel;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  pvtambah := False;
  pvedit := False;
end;

procedure Tfsatuan.btnkeluarClick(Sender: TObject);
begin
  fsatuan.close;
end;

procedure Tfsatuan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbsatuan := False;
end;

procedure Tfsatuan.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfsatuan.dbsatuanKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;  
end;

end.
