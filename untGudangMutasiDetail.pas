unit untGudangMutasiDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBTables, MemDS, VirtualTable, LMDCustomButton,
  LMDButton, Mask, DBCtrls, Grids, DBGrids, bsSkinCtrls, AEDIT, ExtCtrls,
  bsMessages, BusinessSkinForm, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TFgudangMutasiDetail = class(TForm)
    Panel1: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    txtSatuan: TLabel;
    btnSatuan: TbsSkinButton;
    DBGrid1: TDBGrid;
    btnCariBarang: TbsSkinButton;
    bbtnsimpan: TLMDButton;
    bbtnbatal: TLMDButton;
    bbtntambah: TLMDButton;
    bbtnhapus: TLMDButton;
    bbtnedit: TLMDButton;
    DSbarangmasuk: TDataSource;
    vtBarangMasuk: TVirtualTable;
    Qbarang: TZQuery;
    Qbarangidbarang: TStringField;
    Qbarangnamabarang: TStringField;
    Qbarangkode: TStringField;
    vtBarangMasukidbarang: TStringField;
    vtBarangMasukbarang: TStringField;
    vtBarangMasuksatuan: TStringField;
    vtBarangMasukqty: TFloatField;
    btnSimpan: TLMDButton;
    btnBatal: TLMDButton;
    cmbAsal: TComboBox;
    cmbTujuan: TComboBox;
    Label3: TLabel;
    Label5: TLabel;
    edtTanggungjawabID: TEdit;
    Label6: TLabel;
    btnCariKasir: TbsSkinButton;
    edtketerangan: TEdit;
    Label8: TLabel;
    Qgudang: TZQuery;
    Qgudangid: TIntegerField;
    Qgudanggudang: TStringField;
    edtIDbarang: TDBEdit;
    edtNamaBarang: TDBEdit;
    edtQty: TDBEdit;
    Qid: TZQuery;
    edtTanggungJawabNama: TEdit;
    QgudangMutasiDetail: TZQuery;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qkasir: TZQuery;
    Qkasirlogin: TStringField;
    Qkasirnama: TStringField;
    Qstok: TZQuery;
    Qstokid: TIntegerField;
    Qstokgudang: TStringField;
    Qstokmasuk: TFloatField;
    Qstokkeluar: TFloatField;
    QstokCalStok: TFloatField;
    edtStok: TAEdit;
    Label2: TLabel;
    Qdel: TZQuery;
    Qbarangharga: TFloatField;
    vtBarangMasukharga: TFloatField;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure bbtntambahClick(Sender: TObject);
    procedure bbtneditClick(Sender: TObject);
    procedure bbtnhapusClick(Sender: TObject);
    procedure bbtnsimpanClick(Sender: TObject);
    procedure bbtnbatalClick(Sender: TObject);
    procedure edtIDbarangKeyPress(Sender: TObject; var Key: Char);
    procedure edtIDbarangChange(Sender: TObject);
    procedure edtIDbarangExit(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtTanggungjawabIDChange(Sender: TObject);
    procedure edtTanggungjawabIDExit(Sender: TObject);
    procedure cmbAsalClick(Sender: TObject);
    procedure QstokCalcFields(DataSet: TDataSet);
    procedure btnCariBarangClick(Sender: TObject);
    procedure cmbAsalKeyPress(Sender: TObject; var Key: Char);
    procedure btnCariKasirClick(Sender: TObject);
    procedure edtTanggungjawabIDKeyPress(Sender: TObject; var Key: Char);
  private
    pvTambah, pvEdit : Boolean;
    pvbStok : Real;
    pvtutup : boolean;
  public
    pbtambah : Boolean;
  end;

var
  FgudangMutasiDetail: TFgudangMutasiDetail;

implementation

uses Unit3, untGudang, Unit1, untBarangCar;

{$R *.dfm}

procedure TFgudangMutasiDetail.buka;
begin
    bbtntambah.Visible := False;
    bbtnedit.Visible := False;
    bbtnhapus.Visible := False;
    bbtnsimpan.Visible := True;
    bbtnbatal.Visible := True;
    btnCariBarang.Enabled := True;

    cmbAsal.Enabled := False;
    cmbTujuan.Enabled := False;
    edtTanggungjawabID.Enabled := False;
    edtTanggungJawabNama.Enabled := False;
    edtketerangan.Enabled := False;
    btnSimpan.Visible := False;
    btnBatal.Visible := False;

    DBGrid1.Enabled := False;
end;

procedure TFgudangMutasiDetail.tutup;
begin
    bbtntambah.Visible := True;
    bbtnedit.Visible := True;
    bbtnhapus.Visible := True;
    bbtnsimpan.Visible := False;
    bbtnbatal.Visible := False;
    btnCariBarang.Enabled := False;

    cmbAsal.Enabled := True;
    cmbTujuan.Enabled := True;
    edtTanggungjawabID.Enabled := True;
    edtTanggungJawabNama.Enabled := True;
    edtketerangan.Enabled := True;
    btnSimpan.Visible := True;
    btnBatal.Visible := True;

    DBGrid1.Enabled := True;
end;


procedure TFgudangMutasiDetail.FormCreate(Sender: TObject);
begin

  Qbarang.Connection := modul.Database1;
  Qgudang.Connection := modul.Database1;
  Qid.Connection := modul.Database1;
  QgudangMutasiDetail.Connection := modul.Database1;
  Qkasir.Connection := modul.Database1;
  Qstok.Connection := modul.Database1;
  Qdel.Connection := modul.Database1;

  Qkasir.Active := True;
  Qgudang.Active := True;
  Qgudang.First;
  cmbAsal.Clear;
  while not Qgudang.Eof do
  begin
    cmbAsal.Items.Add(Qgudanggudang.Value);
    Qgudang.Next;
  end;
  cmbAsal.ItemIndex := 0;

  Qgudang.First;
  cmbTujuan.Clear;
  while not Qgudang.Eof do
  begin
    cmbTujuan.Items.Add(Qgudanggudang.Value);
    Qgudang.Next;
  end;
  cmbTujuan.ItemIndex := 0;

  vtBarangMasuk.Active := True;
  vtBarangMasuk.Clear;

  Qbarang.Active := True;
  tutup;
end;

procedure TFgudangMutasiDetail.bbtntambahClick(Sender: TObject);
begin
  pvTambah := True;
  vtBarangMasuk.Append;
  buka;
  edtIDbarang.SetFocus;
end;

procedure TFgudangMutasiDetail.bbtneditClick(Sender: TObject);
begin
  if vtBarangMasuk.RecordCount = 0 then
  begin
    beep;
    exit;
  end;
  buka;
  pvEdit := True;
  vtBarangMasuk.Edit;
  edtIDbarang.SetFocus;
  edtIDbarang.SelectAll;
end;

procedure TFgudangMutasiDetail.bbtnhapusClick(Sender: TObject);
begin
  if vtBarangMasuk.RecordCount = 0 then
  begin
    beep;
    exit;
  end;
  vtBarangMasuk.Delete;
end;

procedure TFgudangMutasiDetail.bbtnsimpanClick(Sender: TObject);
begin
  if (edtQty.Text='') then
  begin
    Beep;
    bsSkinMessage1.MessageDlg('   Data tidak lengkap... !   ', mtError, [mbok],0);
    edtQty.SetFocus;
    Exit;
  end;

  if (vtBarangMasukqty.Value > pvbStok) and
     (Qstokid.Value <> 1)  then
  begin
     bsSkinMessage1.MessageDlg('   Quantity tidak cukup    ',mtError,[mbok],0);
     edtQty.SetFocus;
     exit;
  end;
  vtBarangMasukharga.Value := Qbarangharga.Value;
  vtBarangMasuk.Post;
  pvTambah := False;
  pvEdit   := False;
  tutup;
  bbtntambah.SetFocus;
end;

procedure TFgudangMutasiDetail.bbtnbatalClick(Sender: TObject);
begin
  vtBarangMasuk.Cancel;
  pvTambah := False;
  pvEdit   := False;
  tutup;
  bbtntambah.SetFocus;
end;

procedure TFgudangMutasiDetail.edtIDbarangKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if edtIDbarang.Text = '' then
      btnCariBarangClick(btnCariBarang)
    else
      Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFgudangMutasiDetail.edtIDbarangChange(Sender: TObject);
begin
  if (pvTambah or pvEdit) then
  begin
    edtStok.Text := '';
    txtSatuan.Caption := '';
    if edtidbarang.Text = '' then
    begin
      txtSatuan.Caption := '';
      edtnamabarang.Text := '';
      Exit;
    end;
    if (Qbarang.Locate('idbarang', edtidbarang.Text, [loCaseInsensitive, loPartialKey])) then
    begin
      edtnamabarang.Text := Qbarangnamabarang.Value;
      txtSatuan.Caption := Qbarangkode.Value
    end
    else
    begin
      edtnamabarang.Text := '';
      txtSatuan.Caption := '';
    end;
  end;
end;

procedure TFgudangMutasiDetail.edtIDbarangExit(Sender: TObject);
begin
  if (pvTambah or pvEdit) then
  begin
    if edtIDbarang.Text = '' then
    begin
      vtBarangMasukbarang.Value := '';
      Exit;
    end;
    if (Qbarang.Locate('idbarang', edtIDbarang.Text, [loCaseInsensitive, loPartialKey])) then
    begin
      vtBarangMasukidbarang.Value := Qbarangidbarang.Value;
      vtBarangMasukbarang.Value := Qbarangnamabarang.Value;
      vtBarangMasuksatuan.Value := Qbarangkode.Value;
    end
    else
    begin
      vtBarangMasukidbarang.Value := Qbarangidbarang.Value;
      vtBarangMasukbarang.Value := Qbarangnamabarang.Value;
      vtBarangMasuksatuan.Value := Qbarangkode.Value;
    end;
    Qstok.Active := False;
    Qstok.ParamByName('idbarangMasuk').Value := edtIDbarang.Text;
    Qstok.ParamByName('idbarangKeluar').Value := edtIDbarang.Text;
    Qstok.ParamByName('Gudang').Value := cmbAsal.Text;
    Qstok.Active := True;
    if Qstokid.Value <> 1 then
    begin
      edtStok.Text := FormatFloat('#,0.00', QstokCalStok.Value);
      pvbStok := QstokCalStok.Value;
    end
    else
    begin
      edtStok.Text := '';
    end;
  end;
end;

procedure TFgudangMutasiDetail.btnSimpanClick(Sender: TObject);
var id  : Integer;
    ids : String;
begin
  if cmbAsal.Text = cmbTujuan.Text then
  begin
     beep;
     bsSkinMessage1.MessageDlg('   Lokasi Asal dan Tujuan Sama    ', mtInformation,[mbok],0);
     edtTanggungjawabID.SetFocus;
     exit;
  end;

  if edtTanggungjawabID.Text = '' then
  begin
     beep;
     bsSkinMessage1.MessageDlg('   Penanggung Jawab    ', mtInformation,[mbok],0);
     edtTanggungjawabID.SetFocus;
     exit;
  end;
    
  frmInduk.Enabled := True;
  FgudangMutasi.Enabled := True;

  if pbtambah then
  begin
    //ID
    Qid.Active := False;
    Qid.SQL.Text := ' SELECT     MAX(RIGHT(id, 4)) AS id  ' +
                           ' FROM         TgudangMutasi ' +
                           ' WHERE     (id LIKE ' + QuotedStr('MG' + FormatDateTime('yyMMdd',Now)+'%')+')';
    Qid.Active := True;
    try
      id := StrToInt(Qid.FieldByName('id').Value);
    except
      id :=0;
    end;
    id := id+1;
    ids := 'MG' + FormatDateTime('yyMMdd',Now) + FormatFloat('0000',id);
    FgudangMutasi.TgudangMutasiid.Value := ids;
    FgudangMutasi.TgudangMutasitanggal.Value := Now;
  end;
  
  FgudangMutasi.TgudangMutasiidtanggungjawab.Value := edtTanggungjawabID.Text;
  Qgudang.Locate('gudang', cmbAsal.Text, []);
  FgudangMutasi.TgudangMutasiasal.Value := Qgudangid.Value;
  Qgudang.Locate('gudang', cmbTujuan.Text, []);
  FgudangMutasi.TgudangMutasitujuan.Value := Qgudangid.Value;
  FgudangMutasi.TgudangMutasiopperator.Value := FrmInduk.pbidkasir;
  FgudangMutasi.TgudangMutasiketerangan.Value := edtketerangan.Text;
  FgudangMutasi.TgudangMutasi.Post;

  Qdel.Params[0].AsString := FgudangMutasi.TgudangMutasiid.Value;
  Qdel.ExecSQL;

  vtBarangMasuk.First;
  while not(vtBarangMasuk.Eof) do
  begin
    QgudangMutasiDetail.Params[0].Value := FgudangMutasi.TgudangMutasiid.Value;
    QgudangMutasiDetail.Params[1].Value := vtBarangMasukidbarang.Value;
    QgudangMutasiDetail.Params[2].Value := vtBarangMasukqty.Value;
    QgudangMutasiDetail.Params[3].Value := vtBarangMasukharga.Value;
    QgudangMutasiDetail.ExecSQL;
    vtBarangMasuk.Next;
  end;

  FgudangMutasi.Tbarang.Active := False;
  FgudangMutasi.Tbarang.Active := True;

  pvtutup := True;
  Close;
end;

procedure TFgudangMutasiDetail.btnBatalClick(Sender: TObject);
begin
  frmInduk.Enabled := True;
  FgudangMutasi.Enabled := True;

  FgudangMutasi.TgudangMutasi.Cancel;

  pvtutup := True;
  Close;
end;

procedure TFgudangMutasiDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not(pvtutup) then FgudangMutasi.TgudangMutasi.Cancel;
  
  frmInduk.Enabled := True;
  FgudangMutasi.Enabled := True;
  
  Action := caFree;
end;

procedure TFgudangMutasiDetail.edtTanggungjawabIDChange(Sender: TObject);
begin
  if edtTanggungjawabID.Text = '' then
    edtTanggungJawabNama.Text := ''
  else
  begin
    Qkasir.Locate('login', edtTanggungjawabID.Text, [loCaseInsensitive, loPartialKey]);
    edtTanggungJawabNama.Text := Qkasirnama.Value;
  end;
end;

procedure TFgudangMutasiDetail.edtTanggungjawabIDExit(Sender: TObject);
begin
  if edtTanggungjawabID.Text = '' then
    edtTanggungJawabNama.Text := ''
  else
  begin
    Qkasir.Locate('login', edtTanggungjawabID.Text, [loCaseInsensitive, loPartialKey]);
    edtTanggungjawabID.Text := Qkasirlogin.Value;
    edtTanggungJawabNama.Text := Qkasirnama.Value;
  end;
end;

procedure TFgudangMutasiDetail.cmbAsalClick(Sender: TObject);
begin
  vtBarangMasuk.Clear;
end;

procedure TFgudangMutasiDetail.QstokCalcFields(DataSet: TDataSet);
begin
  QstokCalStok.Value := Qstokmasuk.Value - Qstokkeluar.Value;
end;

procedure TFgudangMutasiDetail.btnCariBarangClick(Sender: TObject);
begin
  Application.CreateForm(TFbarangCar, FbarangCar);
  FbarangCar.vasal := 2;
end;

procedure TFgudangMutasiDetail.cmbAsalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
        Key := #0;
        Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFgudangMutasiDetail.btnCariKasirClick(Sender: TObject);
begin
//
end;

procedure TFgudangMutasiDetail.edtTanggungjawabIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if edtTanggungjawabID.Text = '' then
      btnCariKasirClick(btnCariBarang)
    else
      Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

end.
