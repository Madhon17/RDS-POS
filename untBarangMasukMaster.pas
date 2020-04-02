unit untBarangMasukMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, bsMessages, BusinessSkinForm, StdCtrls, Grids,
  DBGrids, bsSkinCtrls, ComCtrls, ZDataset, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable;

type
  TFbarangMasukMaster = class(TForm)
    bsSkinPanel3: TbsSkinPanel;
    Label3: TLabel;
    Label1: TLabel;
    tgl_mulai: TDateTimePicker;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    btnGo: TbsSkinButton;
    bsSkinPanel1: TbsSkinPanel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    edtFaktur: TEdit;
    bsSkinPanel2: TbsSkinPanel;
    Label4: TLabel;
    DBGrid2: TDBGrid;
    btntambah: TbsSkinButton;
    btnedit: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    TbeliReal: TZTable;
    DSmutasi: TDataSource;
    Tbarang: TZTable;
    DSbarang: TDataSource;
    Qbarang: TZQuery;
    Qbarangidbarang: TStringField;
    Qbarangnamabarang: TStringField;
    Qbarangkode: TStringField;
    TbeliRealidfaktur: TStringField;
    TbeliRealtanggal: TDateTimeField;
    TbeliRealiddistributor: TIntegerField;
    Qdistributor: TZQuery;
    Qdistributorid: TSmallintField;
    Qdistributornama: TStringField;
    TbeliRealLuDistributor: TStringField;
    Tbarangidfaktur: TStringField;
    Tbarangidbarang: TStringField;
    Tbarangqty: TFloatField;
    Tbarangharga_beli: TFloatField;
    TbarangLuBarang: TStringField;
    TbeliRealidkasir: TStringField;
    TbeliRealstatus: TSmallintField;
    TbarangLUsatuan: TStringField;
    TbarangCalTotal: TFloatField;
    btnGudang: TbsSkinButton;
    TbeliRealCalStatus: TStringField;
    procedure btnGoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TbarangCalcFields(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure btnGudangClick(Sender: TObject);
    procedure edtFakturChange(Sender: TObject);
    procedure TbeliRealCalcFields(DataSet: TDataSet);
    procedure btneditClick(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbarangMasukMaster: TFbarangMasukMaster;

implementation

uses untbarangmasuk, Unit3, untGudang, untGudangMutasiDetail, Unit1;

{$R *.dfm}

procedure TFbarangMasukMaster.btnGoClick(Sender: TObject);
begin
  TbeliReal.Filter := '(tanggal >= ' + QuotedStr(DateToStr(tgl_mulai.Date) + ' ' + TimeToStr(waktuawal.Time)) + ') and ' +
                '(tanggal <= ' + QuotedStr(DateToStr(Tgl_akhir.Date) + ' ' + TimeToStr(waktuakhir.Time)) + ') ';
  TbeliReal.Filtered := True;
end;

procedure TFbarangMasukMaster.FormCreate(Sender: TObject);
begin

  Qbarang.Connection := modul.Database1;
  Qdistributor.Connection := modul.Database1;
  TbeliReal.Connection := modul.Database1;
  Tbarang.Connection := modul.Database1;

  FrmInduk.pbbarangmasuk := True;

  tgl_mulai.Date := Date;
  Tgl_akhir.Date := Date + 1;
  TbeliReal.Active := True;
  Tbarang.Active := True;

  btnGoClick(Sender);
end;

procedure TFbarangMasukMaster.btntambahClick(Sender: TObject);
begin
  TbeliReal.Append;
  Application.CreateForm(TFbarangMasuk, FbarangMasuk);
  fbarangmasuk.pbtambah := True;
  fbarangmasuk.cmbStatus.SetFocus;
  frmInduk.Enabled := False;
  FbarangMasukMaster.Enabled := False;
end;

procedure TFbarangMasukMaster.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFbarangMasukMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbbarangmasuk := False;

  Tbarang.Active := False;
  Qbarang.Active := False;
  TbeliReal.Active := False;
  Qdistributor.Active := False;

  Action := caFree;
end;

procedure TFbarangMasukMaster.TbarangCalcFields(DataSet: TDataSet);
begin
  TbarangCalTotal.Value := Tbarangharga_beli.Value * Tbarangqty.Value;
end;

procedure TFbarangMasukMaster.FormActivate(Sender: TObject);
begin
  FbarangMasukMaster.Width := 929;
  FbarangMasukMaster.Height := 699;
end;

procedure TFbarangMasukMaster.btnGudangClick(Sender: TObject);
begin
  if FrmInduk.pbGudangMutasi = True then
    FgudangMutasi.Show
  else
    Application.CreateForm(TFgudangMutasi, FgudangMutasi);

  FgudangMutasi.btntambahClick(Sender);
  //masukkan data barang
  FgudangMutasiDetail.vtBarangMasuk.Clear;
  Tbarang.First;
  while not(Tbarang.Eof) do
  begin
    with FgudangMutasiDetail do
    begin
      vtBarangMasuk.Append;
      vtBarangMasukidbarang.Value := Tbarangidbarang.Value;
      vtBarangMasukbarang.Value := TbarangLuBarang.Value;
      vtBarangMasukqty.Value := Tbarangqty.Value;
      vtBarangMasuksatuan.Value := TbarangLUsatuan.Value;
      vtBarangMasuk.Post;
    end;
    Tbarang.Next;
  end;
  FgudangMutasiDetail.cmbAsal.ItemIndex := 0;
  FgudangMutasiDetail.edtketerangan.Text := TbeliRealidfaktur.Value;
end;

procedure TFbarangMasukMaster.edtFakturChange(Sender: TObject);
begin
  TbeliReal.Locate('idfaktur', edtFaktur.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFbarangMasukMaster.TbeliRealCalcFields(DataSet: TDataSet);
begin
  case TbeliRealstatus.Value of
    1 : TbeliRealCalStatus.Value := 'Request';
    2 : TbeliRealCalStatus.Value := 'Order';
    3 : TbeliRealCalStatus.Value := 'Bill';
    4 : TbeliRealCalStatus.Value := 'Cancel';
  end;
end;

procedure TFbarangMasukMaster.btneditClick(Sender: TObject);
begin
  TbeliReal.Edit;
  Application.CreateForm(TFbarangMasuk, FbarangMasuk);

  //masukkan data barang
  FbarangMasuk.vtBarangMasuk.Clear;
  Tbarang.First;
  while not(Tbarang.Eof) do
  begin
    with FbarangMasuk do
    begin
      vtBarangMasuk.Append;
      vtBarangMasukidbarang.Value := Tbarangidbarang.Value;
      vtBarangMasukbarang.Value := TbarangLuBarang.Value;
      vtBarangMasukharga.Value := Tbarangharga_beli.Value;
      vtBarangMasukqty.Value := Tbarangqty.Value;
      vtBarangMasuksatuan.Value := TbarangLUsatuan.Value;
      vtBarangMasuk.Post;
    end;
    Tbarang.Next;
  end;
  fbarangmasuk.cmbStatus.ItemIndex := TbeliRealstatus.Value;
  fbarangmasuk.edtSupplyerID.Text := TbeliRealiddistributor.Text;
  fbarangmasuk.edtSupplyerIDExit(Sender);

  frmInduk.Enabled := False;
  FbarangMasukMaster.Enabled := False;
end;

procedure TFbarangMasukMaster.bsSkinButton1Click(Sender: TObject);
begin
  Close;
end;

end.
