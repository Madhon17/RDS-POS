unit untBarangMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, bsSkinCtrls, StdCtrls, Mask, DBCtrls, DB,
  DBTables, ExtCtrls, bsMessages, BusinessSkinForm, AEDIT;

type
  TFbarangMaster = class(TForm)
    DSbarang: TDataSource;
    DSdistributor: TDataSource;
    Qstok: TQuery;
    DSstok: TDataSource;
    bsSkinPanel1: TbsSkinPanel;
    Label2: TLabel;
    btnCari: TbsSkinButton;
    DBGrid1: TDBGrid;
    bsSkinPanel2: TbsSkinPanel;
    DBGrid3: TDBGrid;
    tbarang: TTable;
    tbarangidbarang: TStringField;
    tbarangnamabarang: TStringField;
    tbarangidkategori: TSmallintField;
    tbarangketerangan: TStringField;
    tbarangidsatuan: TSmallintField;
    tbarangharga: TFloatField;
    btntambah: TbsSkinButton;
    btnedit: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnStambah: TbsSkinButton;
    btnSedit: TbsSkinButton;
    btnShapus: TbsSkinButton;
    tbarangminstok: TFloatField;
    Qsatuan: TQuery;
    tbarangLUsatuan: TStringField;
    Qsatuanid: TSmallintField;
    Qsatuansatuan: TStringField;
    Qsatuankode: TStringField;
    Tdistributor: TTable;
    TdistributorIDdistributor: TSmallintField;
    TdistributorIDbarang: TStringField;
    Tdistributorharga: TFloatField;
    Qdistributor: TQuery;
    Qdistributorid: TSmallintField;
    Qdistributornama: TStringField;
    TdistributorLUnama: TStringField;
    bsSkinPanel3: TbsSkinPanel;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    btnOk: TbsSkinButton;
    edtIdBarang: TEdit;
    edtBarang: TEdit;
    TdistributorCalnama: TStringField;
    Qstokid: TIntegerField;
    Qstokgudang: TStringField;
    Qstokmasuk: TFloatField;
    Qstokkeluar: TFloatField;
    cmbKategori: TComboBox;
    Label1: TLabel;
    Qkategori: TQuery;
    Qkategorikode: TStringField;
    Qkategorikategori: TStringField;
    Qkategoriid: TSmallintField;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Label4: TLabel;
    QstokCalStok: TFloatField;
    edttotal: TAEdit;
    Qother: TQuery;
    tbarangstatus: TBooleanField;
    procedure btntambahClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnStambahClick(Sender: TObject);
    procedure btnSeditClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnShapusClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtIdBarangChange(Sender: TObject);
    procedure edtBarangChange(Sender: TObject);
    procedure TdistributorCalcFields(DataSet: TDataSet);
    procedure tbarangAfterScroll(DataSet: TDataSet);
    procedure cmbKategoriClick(Sender: TObject);
    procedure edtIdBarangExit(Sender: TObject);
    procedure edtBarangExit(Sender: TObject);
    procedure QstokCalcFields(DataSet: TDataSet);
    procedure tkn13(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure edtIdBarangEnter(Sender: TObject);
    procedure edtBarangEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbarangMaster: TFbarangMaster;

implementation

uses untBarang, unit3, untDistributorBarang, Math;

{$R *.dfm}

procedure TFbarangMaster.btntambahClick(Sender: TObject);
begin
  tbarang.Append;
  tbarangstatus.Value := True;

  Application.CreateForm(Tfbarang, fbarang);

  fbarang.pvtambah := True;

  FrmInduk.Enabled := False;
  FbarangMaster.Enabled := False;
end;

procedure TFbarangMaster.btnhapusClick(Sender: TObject);
begin
  if tbarang.RecordCount = 0 then
  begin
    Exit;
  end;

  Qother.Active := False;
  Qother.SQL.Text := ' SELECT     COUNT(*) AS jumlah '+
                     ' FROM         tbarang_masuk '+
                     ' WHERE     (idbarang = ' + QuotedStr(tbarangidbarang.Value)+ ' )';
  Qother.Active := True;

  if Qother.FieldByName('jumlah').AsInteger > 0 then
  begin
    bsSkinMessage1.MessageDlg('          Data tidak dapat dihapus        ', mtError, [mbOK],0);
    exit;
  end;

  if bsSkinMessage1.MessageDlg('          Hapus Data  ?       ', mtConfirmation,[mbYes, mbNo],0) = mryes then
    Tbarang.Delete;
end;

procedure TFbarangMaster.FormCreate(Sender: TObject);
begin
  FrmInduk.pbbarang := True;

  Qsatuan.Active := True;
  tbarang.Active := True;

  Tdistributor.Active := True;

  Qkategori.Active := True;
  qkategori.First;
  cmbKategori.Clear;
  cmbKategori.Items.Add('');
  while not(Qkategori.Eof) do
  begin
    cmbKategori.Items.Add(Qkategorikategori.Value);
    Qkategori.Next;
  end;
  cmbKategori.ItemIndex := 0;
end;

procedure TFbarangMaster.btneditClick(Sender: TObject);
begin
  if tbarang.RecordCount = 0 then
  begin
    Exit;
  end;
  
  Application.CreateForm(Tfbarang,fbarang);

  Qother.Active := False;
  Qother.SQL.Text := ' SELECT     COUNT(*) AS jumlah '+
                     ' FROM         tbarang_masuk '+
                     ' WHERE     (idbarang = ' + QuotedStr(tbarangidbarang.Value)+ ' )';
  Qother.Active := True;

  tbarang.Edit;

  if Qother.FieldByName('jumlah').AsInteger > 0 then
  begin
    fbarang.DBLkategori.Color := clBlue;
    fbarang.DBLookupComboBox1.Color := clBlue;
    fbarang.dbidbarang.Color := clBlue;

    fbarang.DBLkategori.font.Color := clAqua;
    fbarang.DBLookupComboBox1.font.Color := clAqua;
    fbarang.dbidbarang.font.Color := clAqua;
  end;

    fbarang.DBLkategori.ReadOnly := True;
//    fbarang.DBLookupComboBox1.ReadOnly := True;



  fbarang.pvtambah := False;
  fbarang.cekidbarang := tbarangidbarang.Value;

  FrmInduk.Enabled := False;
  FbarangMaster.Enabled := False;
end;

procedure TFbarangMaster.btnStambahClick(Sender: TObject);
begin
  Tdistributor.Append;

  Application.CreateForm(TFdistributorBarang, FdistributorBarang);
  FbarangMaster.Enabled := False;
  FrmInduk.Enabled := False;
end;

procedure TFbarangMaster.btnSeditClick(Sender: TObject);
begin
  if Tdistributor.RecordCount = 0 then
  begin
    Exit;
  end;

  Tdistributor.Edit;

  Application.CreateForm(TFdistributorBarang, FdistributorBarang);
  FdistributorBarang.pvharga := Tdistributorharga.Value;
  FdistributorBarang.edtidbarang.Text := TdistributorIDdistributor.AsString;
  FdistributorBarang.edtnamabarang.Text := TdistributorLUnama.Value;
  FdistributorBarang.Qdistributor.Locate('id', TdistributorIDdistributor.Value,[]);
  FdistributorBarang.edtHarga.Text := FormatFloat('0', FdistributorBarang.pvharga);
  FdistributorBarang.edtHargaExit(Sender);
end;

procedure TFbarangMaster.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFbarangMaster.DBGrid3DrawColumnCell(Sender: TObject;
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
    DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFbarangMaster.btnShapusClick(Sender: TObject);
begin
  if Tdistributor.RecordCount = 0 then
  begin
    Exit;
  end;

  if MessageDlg('      Hapus Data  Supplyer   ',mtConfirmation,mbOKCancel,0) = mrOk then
    Tdistributor.Delete;
end;

procedure TFbarangMaster.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TFbarangMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbbarang := False;

  Tdistributor.Active := False;
  tbarang.Active := False;
  Qsatuan.Active := False;
  Qdistributor.Active := False;

  Action := caFree;
end;

procedure TFbarangMaster.edtIdBarangChange(Sender: TObject);
begin
  tbarang.Locate('idbarang', edtIdBarang.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFbarangMaster.edtBarangChange(Sender: TObject);
begin
  tbarang.Locate('namabarang', edtBarang.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFbarangMaster.TdistributorCalcFields(DataSet: TDataSet);
begin
  TdistributorCalnama.Value := TdistributorLUnama.Value
end;

procedure TFbarangMaster.tbarangAfterScroll(DataSet: TDataSet);
var total : Real;
begin
  Qstok.Active := False;
  Qstok.Prepare;
  Qstok.ParamByName('idbarangMasuk').Value := tbarangidbarang.Value;
  Qstok.ParamByName('idbarangKeluar').Value := tbarangidbarang.Value;
  Qstok.Active := True;

  total := 0;
  Qstok.First;
  while not(Qstok.Eof) do
  begin
    total := total + QstokCalStok.Value;
    Qstok.Next;
  end;
  edttotal.Text := FormatFloat('#,0',total);

end;

procedure TFbarangMaster.cmbKategoriClick(Sender: TObject);
begin
  if cmbKategori.ItemIndex = 0 then
  begin
    tbarang.Filtered := False;
    exit;
  end;

  Qkategori.Locate('kategori', cmbKategori.Text, []);
  tbarang.Filter := 'idkategori = ' + Qkategoriid.AsString;
  tbarang.Filtered := True;
end;

procedure TFbarangMaster.edtIdBarangExit(Sender: TObject);
begin
  edtIdBarang.Text := '';
end;

procedure TFbarangMaster.edtBarangExit(Sender: TObject);
begin
  edtBarang.Text := '';
end;

procedure TFbarangMaster.QstokCalcFields(DataSet: TDataSet);
begin
  QstokCalStok.Value := Qstokmasuk.Value - Qstokkeluar.Value;
end;

procedure TFbarangMaster.tkn13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end; 
end;

procedure TFbarangMaster.FormActivate(Sender: TObject);
begin
  FbarangMaster.Width := 929;
  FbarangMaster.Height := 699;
end;

procedure TFbarangMaster.edtIdBarangEnter(Sender: TObject);
begin
  tbarang.IndexFieldNames := 'idbarang';
end;

procedure TFbarangMaster.edtBarangEnter(Sender: TObject);
begin
  tbarang.IndexFieldNames := 'namabarang';
end;

end.
