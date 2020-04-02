unit untstokharian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Grids, DBGrids, DB, MemDS, VirtualTable, bsSkinCtrls,
  StdCtrls, ComCtrls, ExtCtrls, bsMessages, BusinessSkinForm, RpDefine,
  RpCon, RpConDS, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFdailybarangkeluar = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Panel1: TPanel;
    tgl_mulai: TDateTimePicker;
    waktuawal: TDateTimePicker;
    Panel3: TPanel;
    rdo_namabarang: TRadioButton;
    rdo_idbarang: TRadioButton;
    btncari: TbsSkinXFormButton;
    DBGrid1: TDBGrid;
    DSSTOK: TDataSource;
    VTstoktemp: TVirtualTable;
    qstokmasuk: TZQuery;
    Qstokkeluar: TZQuery;
    qstokmasukidbarang: TStringField;
    qstokmasukmasuk: TIntegerField;
    QstokkeluarKeluar: TIntegerField;
    Qstokkeluaridbarang: TStringField;
    VTtempkeluar: TVirtualTable;
    VTtempkeluarIDbarang: TStringField;
    VTtempkeluarKeluar: TIntegerField;
    Qstokkeluarnamabarang: TStringField;
    qstokmasuknamabarang: TStringField;
    VTtempkeluarNamaBarang: TStringField;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    VTstokawal: TVirtualTable;
    VTstokawalIDbarang: TStringField;
    VTstokawalNamabarang: TStringField;
    VTstokawalMasuk: TIntegerField;
    VTstokawalKeluar: TIntegerField;
    VTstokawalStokawal: TIntegerField;
    VTtempkeluarawal: TVirtualTable;
    VTtempkeluarawalIDbarang: TStringField;
    VTtempkeluarawalNamaBarang: TStringField;
    VTtempkeluarawalKeluar: TIntegerField;
    Qkategori: TZQuery;
    qstokmasukidkategori: TSmallintField;
    Qstokkeluaridkategori: TSmallintField;
    VTtempkeluarIDkategori: TStringField;
    VTkategori: TVirtualTable;
    Qkategoriid: TSmallintField;
    Qkategorikategori: TStringField;
    VTkategoriID: TStringField;
    DataSource1: TDataSource;
    VTkategoriKategori: TStringField;
    RVkategori: TRvDataSetConnection;
    RVdailyreportkeluar: TRvDataSetConnection;
    Label2: TLabel;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    VTstoktempIDbarang: TStringField;
    VTstoktempmasuk: TIntegerField;
    VTstoktempKeluar: TIntegerField;
    VTstoktempStokawal: TIntegerField;
    VTstoktempCalAkhir: TIntegerField;
    VTstoktempIDkategori: TStringField;
    VTstoktempNama: TStringField;
    VTstoktempBarang: TStringField;
    chk_kategori: TCheckBox;
    cmbkategori: TComboBox;
    chk_tanggal: TCheckBox;
    procedure btncariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VTstoktempCalcFields(DataSet: TDataSet);
    procedure btnprintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdo_idbarangClick(Sender: TObject);
    procedure chk_kategoriClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdailybarangkeluar: TFdailybarangkeluar;

implementation

uses Math, unit1, unit3;
{$R *.dfm}

procedure TFdailybarangkeluar.btncariClick(Sender: TObject);
var  pvtglawal, pvtglakhir : TDateTime;
begin
  pvtglawal  := tgl_mulai.DateTime;
  pvtglakhir := Tgl_akhir.DateTime;

// cari transaksi barang masuk sesuai query
  qstokmasuk.Active := False;
  qstokmasuk.SQL.Text := 'SELECT     SUM(tbarang_masuk.qty) AS masuk, tbarang_masuk.idbarang, Tbarang.namabarang, Tbarang.idkategori ' +
                         ' FROM         tbarang_masuk INNER JOIN ' +
                         ' Tbarang ON tbarang_masuk.idbarang = Tbarang.idbarang ' +
                          ' INNER JOIN ' +
                        ' tkategoribarang ON Tbarang.idkategori = tkategoribarang.id ' +
                         ' WHERE (tbarang_masuk.tgl_masuk > ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) + ') ' +
                         ' AND (tbarang_masuk.tgl_masuk < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglakhir) + FormatDateTime('HH:mm:ss ', waktuakhir.Time)) + ') ' ;
  if chk_kategori.Checked then
  begin
    qstokmasuk.SQL.Text := qstokmasuk.SQL.Text + 'AND(tkategoribarang.kategori = '+ QuotedStr(cmbkategori.Text) + ')';
  end;

  qstokmasuk.SQL.Text := qstokmasuk.SQL.Text + ' GROUP BY tbarang_masuk.idbarang, tbarang_masuk.idbarang, Tbarang.namabarang, Tbarang.idkategori, tkategoribarang.kategori';
  qstokmasuk.Active := True;


  qstokmasuk.First ;
  VTstoktemp.Active := True;
  VTstoktemp.Clear;
  while not (qstokmasuk.Eof) do
  begin
    VTstoktemp.Append ;
    VTstoktempIDbarang.Value := qstokmasukidbarang.Value;
    VTstoktempnama.Value := qstokmasuknamabarang.Value;
    VTstoktempmasuk.Value := qstokmasukmasuk.Value;
    VTstoktempIDkategori.Value := IntToStr(qstokmasukidkategori.Value);
    VTstoktemp.Post;
    qstokmasuk.Next;
  end;

// cari transaksi barang keluar sesuai query
  Qstokkeluar.Active := False;
  Qstokkeluar.SQL.Text := ' SELECT     SUM(tbarang_keluar.qty) AS Keluar, tbarang_keluar.idbarang, Tbarang.namabarang, Tbarang.idkategori ' +
                          ' FROM         tbarang_keluar INNER JOIN ' +
                          ' Tbarang ON tbarang_keluar.idbarang = Tbarang.idbarang ' +
                          ' INNER JOIN tkategoribarang ON Tbarang.idkategori = tkategoribarang.id '+
                          ' LEFT OUTER JOIN ' +
                          ' tpayment ON tbarang_keluar.idorder = tpayment.idorder ' +
                          ' WHERE  (tbarang_keluar.tgl_keluar > ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) + ') ' +
                          ' AND (tbarang_keluar.tgl_keluar < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglakhir) + FormatDateTime('HH:mm:ss ', waktuakhir.Time)) + ') ' +
                          ' AND (tbarang_keluar.idorder IS NOT NULL) AND (tpayment.payment <> 0) AND (tpayment.payment <> 4) AND (tpayment.payment <> 5) ' ;
  if chk_kategori.Checked then
  begin
    Qstokkeluar.SQL.Text := Qstokkeluar.SQL.Text + 'AND (tkategoribarang.kategori = ' + QuotedStr(cmbkategori.Text) + ')';
  end;
  Qstokkeluar.SQL.Text := Qstokkeluar.SQL.Text + ' GROUP BY tbarang_keluar.idbarang, Tbarang.namabarang, Tbarang.idkategori';

  Qstokkeluar.Active := True;

// simpan barang keluar ke stok temp
  VTtempkeluar.Active := True;
  VTtempkeluar.Clear;
  Qstokkeluar.First;
  while not (Qstokkeluar.Eof) do
  begin
    VTtempkeluar.Append;
    VTtempkeluarIDbarang.Value := Qstokkeluaridbarang.Value;
    VTtempkeluarKeluar.Value := QstokkeluarKeluar.Value;
    VTtempkeluarNamaBarang.Value := Qstokkeluarnamabarang.Value;
    VTtempkeluarIDkategori.Value := IntToStr(Qstokkeluaridkategori.value);
    VTtempkeluar.Post;
    Qstokkeluar.Next
  end;


  VTtempkeluar.First;
   while not (VTtempkeluar.Eof) do
   begin
     if (VTstoktemp.Locate('idbarang',VTtempkeluarIDbarang.value,[])) then
     begin
      VTstoktemp.Edit;
      VTstoktempKeluar.Value := VTtempkeluarKeluar.Value;
      VTstoktemp.Post;
     end
     else
      begin
      VTstoktemp.Append;
      VTstoktempIDbarang.Value := VTtempkeluarIDbarang.Value;
      VTstoktempnama.Value := VTtempkeluarNamaBarang.Value;
      VTstoktempKeluar.Value := VTtempkeluarKeluar.Value;
      VTstoktempIDkategori.Value := VTtempkeluarIDkategori.Value;
      VTstoktemp.Post;
     end;
      VTtempkeluar.Next;
   end;




 //cari stok awal

  qstokmasuk.Active := False;
  qstokmasuk.SQL.Text := 'SELECT     SUM(tbarang_masuk.qty) AS masuk, tbarang_masuk.idbarang, Tbarang.namabarang, Tbarang.idkategori ' +
                        ' FROM         tbarang_masuk INNER JOIN ' +
                       ' Tbarang ON tbarang_masuk.idbarang = Tbarang.idbarang ' +
                        'INNER JOIN tkategoribarang ON Tbarang.idkategori = tkategoribarang.id ' +
                       '  WHERE (tbarang_masuk.tgl_masuk < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) + ') ' ;
  if chk_kategori.Checked then
  begin
    qstokmasuk.SQL.Text := qstokmasuk.SQL.Text + ' AND (tkategoribarang.kategori = '+ QuotedStr(cmbkategori.Text) + ')';
  end;
    qstokmasuk.SQL.Text := qstokmasuk.SQL.Text + ' GROUP BY tbarang_masuk.idbarang, tbarang_masuk.idbarang, Tbarang.namabarang, Tbarang.idkategori';


  qstokmasuk.Active := True;
  qstokmasuk.First;

//simpan transakasi masuk ke stok awal
  VTstokawal.Active := True;
  VTstokawal.Clear;
  while not (qstokmasuk.Eof) do
  begin
    VTstokawal.Append;
    VTstokawalIDbarang.Value := qstokmasukidbarang.Value;
    VTstokawalNamabarang.Value := qstokmasuknamabarang.Value;
    VTstokawalMasuk.Value := qstokmasukmasuk.Value;
    VTstokawal.Post;
    qstokmasuk.Next;
  end;

//cari transaksi keluar sebelum query (untuk stok awal)
  Qstokkeluar.Active := False;
  Qstokkeluar.SQL.Text := ' SELECT     SUM(tbarang_keluar.qty) AS Keluar, tbarang_keluar.idbarang, Tbarang.namabarang, Tbarang.idkategori ' +
                          ' FROM         tbarang_keluar INNER JOIN ' +
                          ' Tbarang ON tbarang_keluar.idbarang = Tbarang.idbarang '+
                          ' INNER JOIN  tkategoribarang ON Tbarang.idkategori = tkategoribarang.id ' +
                          ' LEFT OUTER JOIN ' +
                          ' tpayment ON tbarang_keluar.idorder = tpayment.idorder ' +
                          ' WHERE  (tbarang_keluar.tgl_keluar < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) + ') ' +
                          ' AND (tbarang_keluar.idorder IS NOT NULL) AND (tpayment.payment <> 0) AND (tpayment.payment <> 4) AND (tpayment.payment <> 5) ' ;
   if chk_kategori.Checked then
  begin
    Qstokkeluar.SQL.Text := Qstokkeluar.SQL.Text + ' AND (tkategoribarang.kategori = '+ QuotedStr(cmbkategori.Text) + ')';
  end;
    Qstokkeluar.SQL.Text := Qstokkeluar.SQL.Text + ' GROUP BY tbarang_keluar.idbarang, Tbarang.namabarang, Tbarang.idkategori';
    
  Qstokkeluar.Active := True;
//simpan transaksi keluar ke tabel temp keluar

  Qstokkeluar.First;
  VTtempkeluarawal.Active := True;
  VTtempkeluarawal.Clear;
  while not (Qstokkeluar.Eof) do
  begin
      VTtempkeluarawal.Append;
      VTtempkeluarawalIDbarang.Value := Qstokkeluaridbarang.Value;
      VTtempkeluarawalNamaBarang.Value := Qstokkeluarnamabarang.Value;
      VTtempkeluarawalKeluar.Value := QstokkeluarKeluar.Value;
      VTtempkeluarawal.Post;
      Qstokkeluar.Next;
  end;

//dari tabel temp keluar simpan ke tabel stok awal
  VTtempkeluarawal.Active := True;
  VTtempkeluarawal.First;
  while not (VTtempkeluarawal.Eof) do
  begin
    if (VTstokawal.Locate('idbarang',VTtempkeluarawalIDbarang.Value,[])) then
    begin
      VTstokawal.Edit;
      VTstokawalKeluar.Value := VTtempkeluarawalKeluar.Value;
      VTstokawal.Post
      end
      else
      begin
        VTstokawal.Append;
        VTstokawalIDbarang.Value := VTtempkeluarawalIDbarang.Value;
        VTstokawalNamabarang.Value := VTtempkeluarawalNamaBarang.Value;
        VTstokawalKeluar.Value := VTtempkeluarawalKeluar.Value;
        VTstokawal.Post;
      end;
     VTtempkeluarawal.Next;
     end;


//simpan stok awal ke stok temp
  VTstokawal.First;
    while not (VTstokawal.Eof) do
    begin
      if VTstoktemp.Locate('idbarang',VTstokawalIDbarang.Value,[]) then
      begin
        VTstoktemp.Edit;
        VTstoktempStokawal.Value := VTstokawalMasuk.Value - VTstokawalKeluar.Value ;
        VTstoktemp.Post;
      end;
      VTstokawal.Next;
    end;

  Qkategori.Active := False;
  Qkategori.SQL.Text := ' SELECT     id, kategori ' +
                        ' FROM         tkategoribarang ' +
                        ' ORDER BY id ';
  Qkategori.Active := True;

  VTkategori.Active := True;
  VTkategori.Clear;

  Qkategori.First;
  while not (Qkategori.Eof) do
   begin
    if (VTstoktemp.Locate('IDkategori',Qkategoriid.Value,[])) then
      Begin
        VTkategori.First;
        if (VTkategori.Locate('kategori',VTstoktempIDkategori.Value,[])) then
          begin
           exit;
          end
          else
          begin
            VTkategori.Append;
            VTkategoriID.Value := VTstoktempIDkategori.Value;
            VTkategoriKategori.Value := Qkategorikategori.Value;
            VTkategori.Post;
          end;
      end;
      Qkategori.Next;
    end;

  rdo_idbarangClick(Sender);
end;

procedure TFdailybarangkeluar.FormCreate(Sender: TObject);
begin

  qstokmasuk.Connection := modul.Database1;
  Qstokkeluar.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;

  frmInduk.pbdailybarangkeluar := True;
  Qkategori.Active := True;
  cmbkategori.Clear;
  Qkategori.First;
  while not (Qkategori.Eof) do
  begin
    cmbkategori.Items.Add(Qkategorikategori.AsString);
    Qkategori.Next;
  end;
   cmbkategori.ItemIndex:= 0;
   
  tgl_mulai.DateTime  := Date;
  Tgl_akhir.DateTime  := Date + 1;
  chk_tanggal.Checked := True;
  chk_kategoriClick(Sender);
  btncariClick(Sender);
end;

procedure TFdailybarangkeluar.btnexitClick(Sender: TObject);
begin
  Fdailybarangkeluar.Close;
end;

procedure TFdailybarangkeluar.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFdailybarangkeluar.VTstoktempCalcFields(DataSet: TDataSet);
begin
  VTstoktempCalAkhir.Value := VTstoktempStokawal.Value + VTstoktempmasuk.Value -
                              VTstoktempKeluar.Value;
end;

procedure TFdailybarangkeluar.btnprintClick(Sender: TObject);
begin
  FrmInduk.RvProject1.SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy', tgl_mulai.DateTime));
  FrmInduk.RvProject1.ExecuteReport('Fdailystok');
end;

procedure TFdailybarangkeluar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  VTstoktemp.Active := False;
  VTkategori.Active := False;

  frmInduk.pbdailybarangkeluar := False;
  Action := caFree;
end;

procedure TFdailybarangkeluar.rdo_idbarangClick(Sender: TObject);
begin
  if rdo_idbarang.Checked then
    VTstoktemp.IndexFieldNames := 'idbarang';
  if rdo_namabarang.Checked then
    VTstoktemp.IndexFieldNames := 'nama';
end;

procedure TFdailybarangkeluar.chk_kategoriClick(Sender: TObject);
begin
  if chk_kategori.Checked then cmbkategori.Enabled:= True
  else
    cmbkategori.Enabled := False;
end;

end.
