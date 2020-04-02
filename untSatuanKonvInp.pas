unit untSatuanKonvInp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, DBCtrls, StdCtrls, Mask,
  bsSkinCtrls, bsMessages, BusinessSkinForm, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractTable;

type
  TFsatuanKonvSetup = class(TForm)
    DBGrid1: TDBGrid;
    DSkonversi: TDataSource;
    DBEdit1: TDBEdit;
    DSsatuan: TDataSource;
    DBLsatuan: TDBLookupComboBox;
    DBLkonversi: TDBLookupComboBox;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Label5: TLabel;
    Label2: TLabel;
    Qsatuan: TZQuery;
    Qsatuanid: TSmallintField;
    Qsatuansatuan: TStringField;
    Qsatuankode: TStringField;
    Qstatus: TZQuery;
    Qstatusid: TSmallintField;
    QstatusidKonversi: TSmallintField;
    Tkonversi: TZTable;
    Tkonversiid: TSmallintField;
    TkonversiidKonversi: TSmallintField;
    Tkonversijumlah: TIntegerField;
    TkonversiLUid: TStringField;
    TkonversiLUidkonversi: TStringField;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBLsatuanKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FsatuanKonvSetup: TFsatuanKonvSetup;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TFsatuanKonvSetup.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;

//  DBGrid1.Enabled := False;
end;

procedure TFsatuanKonvSetup.tutup;
begin
  btnedit.Visible:= True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;

//  DBGrid1.Enabled := True;
end;

procedure TFsatuanKonvSetup.FormCreate(Sender: TObject);
begin

  Qsatuan.Connection := modul.Database1;
  Qsatuan.SQL.Text := 'SELECT     id, satuan, kode FROM         tsatuan ORDER BY id';
  Qsatuan.Active := True;
  DSsatuan.DataSet := Qsatuan;

  Qstatus.Connection := modul.Database1;
  Qstatus.SQL.Text := 'SELECT     id, idKonversi FROM         TsatuanKonv WHERE     (id = :id) AND (idKonversi = :idkonversi) ORDER BY id, idKonversi';
  Qstatus.Active := True;

  Tkonversi.Connection := modul.Database1;
  Tkonversi.Active := True;
  DSkonversi.DataSet := Tkonversi;

  frmInduk.pbsatuankonversi := False;

  Qsatuan.Active := True;
  Tkonversi.Active := True;
end;

procedure TFsatuanKonvSetup.btntambahClick(Sender: TObject);
begin
    Tkonversi.Append;
    buka;
    DBLsatuan.SetFocus;
end;

procedure TFsatuanKonvSetup.btnsimpanClick(Sender: TObject);
var id, idkonversi : Smallint;
begin
  if DBLsatuan.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Data belum lengkap...!!!',mtError,[mbok],0);
    DBLsatuan.SetFocus;
    exit;
  end;
  if DBEdit1.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Data belum lengkap...!!!',mtError,[mbok],0);
    DBEdit1.SetFocus;
    exit;
  end;
  if DBLkonversi.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Data belum lengkap...!!!',mtError,[mbok],0);
    DBLkonversi.SetFocus;
    exit;
  end;

  id := Tkonversiid.Value;
  idkonversi := TkonversiidKonversi.Value;

  Qstatus.Params[0].Value := Tkonversiid.Value;
  Qstatus.Params[1].Value := TkonversiidKonversi.Value;
  Qstatus.Active := True;

  if Qstatus.Locate('id', Tkonversiid.Value, []) then
  begin
    Tkonversi.Cancel;
    Tkonversi.Locate('id;idKonversi', VarArrayOf([id, idkonversi]), []);
    bsSkinMessage1.MessageDlg('Data Sudah ada...!!!',mtError,[mbok],0);
  end
  else
  begin
    Tkonversi.Post;
  end;
  DBGrid1.Refresh;
  DBGrid1.Repaint;
  tutup;

  Qstatus.Active := False;
end;

procedure TFsatuanKonvSetup.btnbatalClick(Sender: TObject);
begin
  Tkonversi.Cancel;
  tutup;
end;

procedure TFsatuanKonvSetup.btnkeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFsatuanKonvSetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmInduk.pbsatuankonversi := False;

  Tkonversi.Active := False;
  Qsatuan.Active := False;
  Action := caFree;
end;

procedure TFsatuanKonvSetup.btneditClick(Sender: TObject);
begin
  if Tkonversi.RecordCount = 0 then
  begin
    beep;
    exit;
  end;
  Tkonversi.edit;
  buka;
end;

procedure TFsatuanKonvSetup.btnhapusClick(Sender: TObject);
begin
  if Tkonversi.RecordCount = 0 then
  begin
    beep;
    exit;
  end;
  Tkonversi.Delete;
end;

procedure TFsatuanKonvSetup.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFsatuanKonvSetup.DBLsatuanKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

end.
