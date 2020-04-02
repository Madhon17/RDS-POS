unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ZDataset,
  BusinessSkinForm, bsSkinCtrls, bsMessages, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable;

type
    Tfbar = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    dbnama: TDBEdit;
    dbip: TDBEdit;
    DSbar: TDataSource;
    DBGrid1: TDBGrid;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    tbar: TZTable;
    tbarid: TSmallintField;
    tbarnama: TStringField;
    tbarip: TStringField;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    pvtambah, pvedit : Boolean ;
    ceknama : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbar: Tfbar;

implementation
 uses unit1, unit3;
{$R *.dfm}

procedure Tfbar.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure Tfbar.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
end;

procedure Tfbar.FormCreate(Sender: TObject);
begin

  tbar.Connection := modul.Database1;
  tbar.TableName := 'tbar';
  DSbar.DataSet := tbar;

  FrmInduk.pbbar := True;
  tbar.Active := True;
  DBGrid1.Enabled:=True;

end;

procedure Tfbar.btnkeluarClick(Sender: TObject);
begin
  FrmInduk.pbbar := False;
  fbar.close;
end;

procedure Tfbar.btneditClick(Sender: TObject);
begin
  pvedit := True;
  pvtambah := False;

  if tbar.RecordCount = 0 then
  begin
  beep;
  dbnama.SetFocus;
  exit;
  end;

  ceknama := tbarnama.Value;
  DBGrid1.Enabled:= True;
  dbnama.SetFocus;
  buka;
  tbar.Edit;
end;

procedure Tfbar.btnbatalClick(Sender: TObject);
begin
  tutup;
  tbar.Cancel;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  pvedit := False;
end;

procedure Tfbar.btnhapusClick(Sender: TObject);
begin
  if tbar.RecordCount = 0 then
  begin
    Exit;
  end;
   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       tbar.Delete;
end;

procedure Tfbar.btnsimpanClick(Sender: TObject);
 var id : Smallint;
 qid, qkategori: TZQuery;
begin

  qid := TZQuery.Create(self);
  qid.Connection := modul.Database1;

  qkategori := TZQuery.Create(self);
  qkategori.Connection := modul.Database1;

   if dbnama.Text = '' then
   begin
      beep;
      dbnama.SetFocus;
      exit;
   end;
   if dbip.Text = '' then
   begin
    beep;
      dbip.SetFocus;
      exit;
    end;

  if pvTambah then
  begin
    Qid.SQL.Text := 'SELECT MAX(id) AS id ' +
                     'FROM  tbar ';
    qid.Active := True;
    if  qid.FieldByName('id').AsInteger = null then
      id := 1
    else
    begin
      id := qid.FieldByName('id').AsInteger + 1;
    end;
    tbarid.Value := id;
  end;

  qkategori.Active := False;
 qkategori.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tbar ' +
                       ' WHERE     (nama= ' + QuotedStr(dbnama.Text) + ')';
 qkategori.Active := True;
 if qkategori.FieldByName('jumlah').AsInteger > 0 then
 begin
  if (pvedit = true) and  (dbnama.Text <> ceknama) then
  begin
    bsSkinMessage1.MessageDlg(' Nama Kategori Sudah Ada ',mtInformation,[mbOK],0);
    dbnama.SetFocus;
    exit;
  end;
  if pvtambah then
  begin
     bsSkinMessage1.MessageDlg(' Nama Kategori Sudah Ada ',mtInformation,[mbOK],0);
     dbnama.SetFocus;
     exit;
     end;
  end;


  tbar.Post;
  DBGrid1.Enabled := True;
  pvTambah := False;
  tutup;
  DBGrid1.SetFocus;
end;


procedure Tfbar.btntambahClick(Sender: TObject);
begin
    DBGrid1.Enabled := false;
    pvTambah := True;
    tbar.Append;
    dbnama.SetFocus;
    buka;
end;

procedure Tfbar.TKN13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfbar.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tfbar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbbar := False;
end;

end.
