unit untbarangmasuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AEDIT, StdCtrls, ComCtrls, bsMessages, BusinessSkinForm,
  bsSkinCtrls, Spin, Grids, DBGrids, DB, DBTables, DBCtrls, Mask, ExtCtrls,
  MemDS, VirtualTable, LMDCustomButton, LMDButton, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfbarangmasuk = class(TForm)
    DSbarangmasuk: TDataSource;
    Panel1: TPanel;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    vtBarangMasuk: TVirtualTable;
    Label7: TLabel;
    vtBarangMasukidbarang: TStringField;
    vtBarangMasukbarang: TStringField;
    vtBarangMasukharga: TCurrencyField;
    vtBarangMasukCaltotal: TCurrencyField;
    Label3: TLabel;
    btnSatuan: TbsSkinButton;
    Label1: TLabel;
    vtBarangMasuksatuan: TStringField;
    vtBarangMasukqty: TFloatField;
    Qsatuan: TZQuery;
    Qsatuanid: TSmallintField;
    Qsatuankode: TStringField;
    Qsatuansatuan: TStringField;
    DBGrid1: TDBGrid;
    txt_total: TAEdit;
    Qsupplyer: TZQuery;
    Qsupplyerid: TSmallintField;
    Qsupplyernama: TStringField;
    Qbarang: TZQuery;
    Qbarangidbarang: TStringField;
    Qbarangnamabarang: TStringField;
    Qbarangkode: TStringField;
    Label2: TLabel;
    btnSimpan: TbsSkinButton;
    btnBatal: TbsSkinButton;
    txtSatuan: TLabel;
    btnCariBarang: TbsSkinButton;
    bbtnsimpan: TLMDButton;
    bbtnbatal: TLMDButton;
    bbtntambah: TLMDButton;
    bbtnhapus: TLMDButton;
    bbtnedit: TLMDButton;
    Qid: TZQuery;
    Qbarangharga: TFloatField;
    edtHargaPokok: TAEdit;
    edtidbarang: TDBEdit;
    edtharga: TDBEdit;
    edtQty: TDBEdit;
    edttotal: TDBEdit;
    edtnamabarang: TDBEdit;
    QbarangMasuk: TZQuery;
    Panel2: TPanel;
    Label4: TLabel;
    edtSupplyerID: TEdit;
    btnCari: TbsSkinButton;
    edtSuplyerNama: TEdit;
    cmbStatus: TComboBox;
    Label5: TLabel;
    Qdel: TZQuery;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSatuanClick(Sender: TObject);
    procedure bbtntambahClick(Sender: TObject);
    procedure bbtnsimpanClick(Sender: TObject);
    procedure bbtnhapusClick(Sender: TObject);
    procedure bbtneditClick(Sender: TObject);
    procedure edtSupplyerIDChange(Sender: TObject);
    procedure edtSupplyerIDExit(Sender: TObject);
    procedure edtidbarangChange(Sender: TObject);
    procedure edtidbarangExit(Sender: TObject);
    procedure edthargaKeyPress(Sender: TObject; var Key: Char);
    procedure edtidbarangKeyPress(Sender: TObject; var Key: Char);
    procedure btnSimpanClick(Sender: TObject);
    procedure Pencet13(Sender: TObject; var Key: Char);
    procedure bbtnbatalClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure vtBarangMasukCalcFields(DataSet: TDataSet);
    procedure btnBatalClick(Sender: TObject);
    procedure cmbStatusClick(Sender: TObject);
    procedure btnCariBarangClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure edtSupplyerIDKeyPress(Sender: TObject; var Key: Char);

  private
       vpokok : Real;
       pvtutup,  pvTambah, pvedit : Boolean;
  public
       pbtambah : Boolean;
  end;

var
  fbarangmasuk: Tfbarangmasuk;

implementation

uses Math, Unit1, unit3, QsatuanKonvInp,  VarUtils,
     untBarangMasukMaster, untBarangCar, untSupplierCari;

{$R *.dfm}

procedure tfbarangmasuk.buka;
begin
  edtidbarang.Enabled := True;
  edtnamabarang.Enabled := True;
  edtharga.Enabled := True;
  edtQty.Enabled := True;
  btnSatuan.Enabled := True;
  btnCariBarang.Enabled := True;
  edttotal.Enabled := True;

  bbtntambah.Visible := False;
  bbtnedit.Visible := False;
  bbtnhapus.Visible := False;
  bbtnsimpan.Visible := True;
  bbtnbatal.Visible := True;

  btnSimpan.Visible := False;
  btnBatal.Visible := False;

  DBGrid1.Enabled := False;
  Panel2.Enabled := False;
end;

procedure tfbarangmasuk.tutup;
begin
  edtidbarang.Enabled := False;
  edtnamabarang.Enabled := False;
  edtharga.Enabled := False;
  edtQty.Enabled := False;
  btnSatuan.Enabled := False;
  btnCariBarang.Enabled := False;
  edttotal.Enabled := False;

  bbtntambah.Visible := True;
  bbtnedit.Visible := True;
  bbtnhapus.Visible := True;
  bbtnsimpan.Visible := False;
  bbtnbatal.Visible := False;

  btnSimpan.Visible := True;
  btnBatal.Visible := True;

  DBGrid1.Enabled := True;
  Panel2.Enabled := True;
end;

procedure Tfbarangmasuk.FormCreate(Sender: TObject);
begin

  Qsatuan.Connection := modul.Database1;
  Qsupplyer.Connection := modul.Database1;
  Qbarang.Connection := modul.Database1;
  Qid.Connection := modul.Database1;
  QbarangMasuk.Connection := modul.Database1;
  Qdel.Connection := modul.Database1;

  Qsupplyer.Active := True;
  Qbarang.Active := True;
  vtBarangMasuk.Active := True;
  tutup;
end;

procedure Tfbarangmasuk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmInduk.Enabled := True;
  FbarangMasukMaster.Enabled := True;

  if not(pvtutup) then FbarangMasukMaster.TbeliReal.Cancel;

  Action := caFree;
end;

procedure Tfbarangmasuk.btnSatuanClick(Sender: TObject);
begin
{  Application.CreateForm(TFsatuanKonversi,FsatuanKonversi);
  FsatuanKonversi.pbsatuan :=Qbarangidsatuan.Value;
  FsatuanKonversi.Buka;
  FsatuanKonversi.Label1.Caption := Qbarangkode.Value;
  FrmInduk.Enabled := False;    }
end;

procedure Tfbarangmasuk.bbtntambahClick(Sender: TObject);
begin
  buka;
  pvTambah := True;
  vtBarangMasuk.Append;

  edtidbarang.SetFocus;
end;

procedure Tfbarangmasuk.bbtnsimpanClick(Sender: TObject);
begin
  if (edtidbarang.Text='') then
  begin
    Beep;
    bsSkinMessage1.MessageDlg('   Data tidak lengkap... !   ', mtError, [mbok],0);
    edtidbarang.SetFocus;
    Exit;
  end;
  if (vtBarangMasukharga.Value=0) then
  begin
    Beep;
    bsSkinMessage1.MessageDlg('   Data tidak lengkap... !   ', mtError, [mbok],0);
    edtharga.SetFocus;
    Exit;
  end;
  if (vtBarangMasukqty.Value=0) then
  begin
    Beep;
    bsSkinMessage1.MessageDlg('   Data tidak lengkap... !   ', mtError, [mbok],0);
    edtQty.SetFocus;
    Exit;
  end;

  vtBarangMasuk.Post;

  pvTambah := False;
  pvEdit := False;
  tutup;
  bbtntambah.SetFocus;
end;

procedure Tfbarangmasuk.bbtnhapusClick(Sender: TObject);
begin
  if vtBarangMasuk.RecordCount = 0 then
  begin
    beep;
    exit;
  end;
  vtBarangMasuk.Delete;
end;

procedure Tfbarangmasuk.bbtneditClick(Sender: TObject);
begin
  if vtBarangMasuk.RecordCount = 0 then
  begin
    beep;
    exit;
  end;

  buka;
  pvEdit := True;
  vtBarangMasuk.Edit;

  edtidbarang.SetFocus;
end;

procedure Tfbarangmasuk.edtSupplyerIDChange(Sender: TObject);
begin
  if edtSupplyerID.Text = '' then
  begin
    edtSuplyerNama.Text := '';
    Exit;
  end;
  if (Qsupplyer.Locate('id', edtSupplyerID.Text, [loCaseInsensitive, loPartialKey])) then
    edtSuplyerNama.Text := Qsupplyernama.Value
  else
    edtSuplyerNama.Text := '';
end;

procedure Tfbarangmasuk.edtSupplyerIDExit(Sender: TObject);
begin
  if edtSupplyerID.Text = '' then
  begin
    edtSuplyerNama.Text := '';
    Exit;
  end;
  if (Qsupplyer.Locate('id', edtSupplyerID.Text, [loCaseInsensitive, loPartialKey])) then
  begin
    edtSupplyerID.Text := Qsupplyerid.AsString;
    edtSuplyerNama.Text := Qsupplyernama.Value;
  end
  else
  begin
    edtSupplyerID.Text := '';
    edtSuplyerNama.Text := '';
  end;
end;

procedure Tfbarangmasuk.edtidbarangChange(Sender: TObject);
begin
  if (pvTambah or pvEdit) then
  begin
    txtSatuan.Caption := '';
    if edtidbarang.Text = '' then
    begin
      txtSatuan.Caption := '';
      edtnamabarang.Text := '';
      edtHargaPokok.Text := '';
      edtQty.Text := '';
      edttotal.Text := '';
      Exit;
    end;
    if (Qbarang.Locate('idbarang', edtidbarang.Text, [loCaseInsensitive, loPartialKey])) then
    begin
      edtnamabarang.Text := Qbarangnamabarang.Value;
      txtSatuan.Caption := Qbarangkode.Value;
      vpokok := Qbarangharga.Value;
      edtHargaPokok.Text := FormatFloat('#,0.00',Qbarangharga.Value);
    end
    else
    begin
      txtSatuan.Caption := '';
      edtnamabarang.Text := '';
      edtHargaPokok.Text := '';
      edtQty.Text := '';
      edttotal.Text := '';
    end;
  end;
end;

procedure Tfbarangmasuk.edtidbarangExit(Sender: TObject);
begin
  if (pvTambah or pvEdit) then
  begin
    txtSatuan.Caption := '';
    if edtidbarang.Text = '' then
    begin
      txtSatuan.Caption := '';
      edtnamabarang.Text := '';
      edtHargaPokok.Text := '';
      edtQty.Text := '';
      edttotal.Text := '';
      Exit;
    end;
    if (Qbarang.Locate('idbarang', edtidbarang.Text, [loCaseInsensitive, loPartialKey])) then
    begin
      vtBarangMasukidbarang.Value := Qbarangidbarang.Value;
      vtBarangMasukbarang.Value := Qbarangnamabarang.Value;
      txtSatuan.Caption := Qbarangkode.Value;
      vpokok := Qbarangharga.Value;
      if pvTambah then vtBarangMasukharga.Value := Qbarangharga.Value;
      edtHargaPokok.Text := FormatFloat('#,0.00',Qbarangharga.Value);
    end
    else
    begin
      vtBarangMasukidbarang.Value := '';
      vtBarangMasukbarang.Value := '';
      txtSatuan.Caption := '';
      edtHargaPokok.Text := '';
      edtQty.Text := '';
      edttotal.Text := '';
    end;
  end;
end;

procedure Tfbarangmasuk.edthargaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfbarangmasuk.edtidbarangKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    if edtidbarang.Text = '' then
      btnCariBarangClick(btnCariBarang)
    else
      Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfbarangmasuk.btnSimpanClick(Sender: TObject);
var id  : integer;
    ids : string;
begin
//simpan langsung ke gudang

  if cmbStatus.ItemIndex = 0 then
  begin
     beep;
     bsSkinMessage1.MessageDlg('     Tentukan Status      ',mtError,[mbok],0);
     cmbStatus.SetFocus;
     exit;
  end;

  if edtSupplyerID.Text = '' then
  begin
     beep;
     bsSkinMessage1.MessageDlg('     Supplyer belum lengkap      ',mtError,[mbok],0);
     edtSupplyerID.SetFocus;
     exit;
  end;

  if vtBarangMasuk.RecordCount = 0 then
  begin
     beep;
     bsSkinMessage1.MessageDlg('     Tidak ada barang      ',mtError,[mbok],0);
     bbtntambahClick(Sender);
     exit;
  end;

  frmInduk.Enabled := True;
  FbarangMasukMaster.Enabled := True;

  if pbtambah then
  begin
    //ID
    Qid.Active := False;
    Qid.SQL.Text := ' SELECT     MAX(RIGHT(idfaktur, 4)) AS id  ' +
                           ' FROM         TbeliReal ' +
                           ' WHERE     (idfaktur LIKE ' + QuotedStr('PO' + FormatDateTime('yyMMdd',Now)+'%')+')';
    Qid.Active := True;
    try
      id := StrToInt(Qid.FieldByName('id').Value);
    except
      id :=0;
    end;
    id := id+1;
    ids := 'PO' + FormatDateTime('yyMMdd',Now) + FormatFloat('0000',id);

    FbarangMasukMaster.TbeliRealidfaktur.Value := ids;
    FbarangMasukMaster.TbeliRealtanggal.Value := Now;
  end;

  FbarangMasukMaster.TbeliRealiddistributor.Value := Qsupplyerid.Value;
  FbarangMasukMaster.TbeliRealidkasir.Value := FrmInduk.pbidkasir;
  FbarangMasukMaster.TbeliRealstatus.Value := cmbStatus.ItemIndex;
  FbarangMasukMaster.TbeliReal.Post;

  Qdel.Params[0].AsString := FbarangMasukMaster.TbeliRealidfaktur.Value;
  Qdel.ExecSQL;

  vtBarangMasuk.First;
  while not(vtBarangMasuk.Eof) do
  begin
    QbarangMasuk.Params[0].Value := FbarangMasukMaster.TbeliRealidfaktur.Value;
    QbarangMasuk.Params[1].Value := vtBarangMasukidbarang.Value;
    QbarangMasuk.Params[2].Value := vtBarangMasukqty.Value;
    QbarangMasuk.Params[3].Value := vtBarangMasukharga.Value;
    QbarangMasuk.ExecSQL;
    vtBarangMasuk.Next;
  end;

  FbarangMasukMaster.Tbarang.Active := False;
  FbarangMasukMaster.Tbarang.Active := True;

  pvtutup := True;
  Close;
end;

procedure Tfbarangmasuk.Pencet13(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfbarangmasuk.bbtnbatalClick(Sender: TObject);
begin
  pvTambah := False;
  pvEdit := False;
  vtBarangMasuk.Cancel;
  tutup;
  bbtntambah.SetFocus;
end;

procedure Tfbarangmasuk.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clAqua;
     FillRect(Rect);
     Font.Color:= clBlack;
     font.Style := [fsBold]
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfbarangmasuk.vtBarangMasukCalcFields(DataSet: TDataSet);
begin
  vtBarangMasukCaltotal.Value := vtBarangMasukharga.Value * vtBarangMasukqty.Value;
end;

procedure Tfbarangmasuk.btnBatalClick(Sender: TObject);
begin
  FbarangMasukMaster.TbeliReal.Cancel;
  pvtutup := True;
  Close;
end;

procedure Tfbarangmasuk.cmbStatusClick(Sender: TObject);
begin
   cmbStatus.Font.Color := clWhite;
  case cmbStatus.ItemIndex of
    0 : begin
          cmbStatus.Font.Color := clBlack;
          cmbStatus.Color := clWhite;
        end;
    1 : cmbStatus.Color := clBlue;
    2 : cmbStatus.Color := clNavy;
    3 : cmbStatus.Color := clGreen;
  end;
end;

procedure Tfbarangmasuk.btnCariBarangClick(Sender: TObject);
begin
  Application.CreateForm(TFbarangCar, FbarangCar);
  FbarangCar.vasal := 1;
end;

procedure Tfbarangmasuk.btnCariClick(Sender: TObject);
begin
  Application.CreateForm(TfSupplierCari, fSupplierCari);
  fSupplierCari.vasal := 1;
end;

procedure Tfbarangmasuk.edtSupplyerIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    if edtSupplyerID.Text = '' then
      btnCariClick(btnCari)
    else
      bbtntambah.SetFocus;
  end;
end;

end.
