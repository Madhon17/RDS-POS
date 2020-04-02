unit untGudang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, Grids, DBGrids, bsSkinCtrls, ComCtrls,
  bsMessages, BusinessSkinForm, ZDataset, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable;

type
  TFgudangMutasi = class(TForm)
    bsSkinPanel1: TbsSkinPanel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    edtIdBarang: TEdit;
    bsSkinPanel2: TbsSkinPanel;
    DSmutasi: TDataSource;
    DSbarang: TDataSource;
    QgudangMutasi: TZQuery;
    DBGrid2: TDBGrid;
    btntambah: TbsSkinButton;
    btnedit: TbsSkinButton;
    TgudangMutasi: TZTable;
    TgudangMutasiid: TStringField;
    TgudangMutasitanggal: TDateTimeField;
    TgudangMutasiasal: TIntegerField;
    TgudangMutasitujuan: TIntegerField;
    TgudangMutasiketerangan: TStringField;
    QgudangMutasiid: TIntegerField;
    QgudangMutasigudang: TStringField;
    Tbarang: TZTable;
    Tbarangidmutasi: TStringField;
    Tbarangidbarang: TStringField;
    Tbarangqty: TFloatField;
    Qbarang: TZQuery;
    Qbarangidbarang: TStringField;
    Qbarangnamabarang: TStringField;
    TbarangLUbarang: TStringField;
    TgudangMutasiLuAsal: TStringField;
    TgudangMutasiLuTujuan: TStringField;
    Qkasir: TZQuery;
    Qkasirlogin: TStringField;
    Qkasirnama: TStringField;
    TgudangMutasiidtanggungjawab: TStringField;
    Label4: TLabel;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    bsSkinPanel3: TbsSkinPanel;
    Label3: TLabel;
    tgl_mulai: TDateTimePicker;
    waktuawal: TDateTimePicker;
    Label1: TLabel;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    btnGo: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    Qbarangkode: TStringField;
    TbarangLuSatuan: TStringField;
    TgudangMutasiopperator: TStringField;
    procedure btntambahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnGoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure edtIdBarangChange(Sender: TObject);
    procedure btneditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FgudangMutasi: TFgudangMutasi;

implementation

uses untGudangMutasiDetail, Unit3, Unit1;

{$R *.dfm}

procedure TFgudangMutasi.btntambahClick(Sender: TObject);
begin
  TgudangMutasi.Append;
  Application.CreateForm(TFgudangMutasiDetail, FgudangMutasiDetail);
  FgudangMutasiDetail.pbtambah := True;
  frmInduk.Enabled := False;
  FgudangMutasi.Enabled := False;
end;

procedure TFgudangMutasi.FormCreate(Sender: TObject);
begin

  Qbarang.Connection := modul.Database1;
  QgudangMutasi.Connection := modul.Database1;
  Qkasir.Connection := modul.Database1;
  TgudangMutasi.Connection := modul.Database1;
  Tbarang.Connection := modul.Database1;
  
  frmInduk.pbGudangMutasi := True;

  tgl_mulai.Date := Date;
  Tgl_akhir.Date := Date + 1;
  TgudangMutasi.Active := True;
  Tbarang.Active := True;

  btnGoClick(Sender);
end;

procedure TFgudangMutasi.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFgudangMutasi.btnGoClick(Sender: TObject);
begin
  TgudangMutasi.Filter := '(tanggal >= ' + QuotedStr(DateToStr(tgl_mulai.Date) + ' ' + TimeToStr(waktuawal.Time)) + ') and ' +
                '(tanggal <= ' + QuotedStr(DateToStr(Tgl_akhir.Date) + ' ' + TimeToStr(waktuakhir.Time)) + ') ';
  TgudangMutasi.Filtered := True;
end;

procedure TFgudangMutasi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmInduk.pbGudangMutasi := False;

  Tbarang.Active := False;
  Qbarang.Active := False;
  TgudangMutasi.Active := False;
  Qkasir.Active := False;
  QgudangMutasi.Active := False;

  action := caFree;
end;

procedure TFgudangMutasi.bsSkinButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFgudangMutasi.edtIdBarangChange(Sender: TObject);
begin
  TgudangMutasi.Locate('id', edtIdBarang.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFgudangMutasi.btneditClick(Sender: TObject);
begin
  TgudangMutasi.Edit;
  Application.CreateForm(TFgudangMutasiDetail, FgudangMutasiDetail);
  frmInduk.Enabled := False;
  FgudangMutasi.Enabled := False;


 //masukkan data barang
  FgudangMutasiDetail.vtBarangMasuk.Clear;
  Tbarang.First;
  while not(Tbarang.Eof) do
  begin
    with FgudangMutasiDetail do
    begin
      vtBarangMasuk.Append;
      vtBarangMasukidbarang.Value := Tbarangidbarang.Value;
      vtBarangMasukbarang.Value := TbarangLUbarang.Value;
      vtBarangMasukqty.Value := Tbarangqty.Value;
      vtBarangMasuksatuan.Value := TbarangLuSatuan.Value;
      vtBarangMasuk.Post;
    end;
    Tbarang.Next;
  end;
  FgudangMutasiDetail.cmbAsal.ItemIndex := FgudangMutasiDetail.cmbAsal.Items.IndexOf(TgudangMutasiLuAsal.Value);
  FgudangMutasiDetail.cmbTujuan.ItemIndex := FgudangMutasiDetail.cmbTujuan.Items.IndexOf(TgudangMutasiLuTujuan.Value);
  FgudangMutasiDetail.edtTanggungjawabID.Text := TgudangMutasiidtanggungjawab.Value;
  FgudangMutasiDetail.edtTanggungjawabIDExit(Sender);
  FgudangMutasiDetail.edtketerangan.Text := TgudangMutasiketerangan.Value;
end;
end.
