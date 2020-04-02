unit untstok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, bsSkinCtrls, Grids, DBGrids, DB,
  DBTables, bsMessages, MemDS, VirtualTable, RpDefine, RpCon, RpConDS,
  BusinessSkinForm, AEDIT;

type
  Tfstok = class(TForm)
    Qbarang_masuk: TQuery;
    Qbarang_keluar: TQuery;
    Qstokbarang: TQuery;
    btncari: TbsSkinXFormButton;
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    cmbkategori: TComboBox;
    chk_kategori: TCheckBox;
    chk_tanggal: TCheckBox;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    Qkatbarang: TQuery;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    Qkatbarangid: TSmallintField;
    Qkatbarangkategori: TStringField;
    bsSkinMessage1: TbsSkinMessage;
    VTbarang_masuk: TVirtualTable;
    VTbarang_keluar: TVirtualTable;
    DataSource1: TDataSource;
    Qbarang_masukidbarang: TStringField;
    Qbarang_masuktgl_masuk: TDateTimeField;
    Qbarang_masukqty: TIntegerField;
    VTbarang_masukidbarang: TStringField;
    VTbarang_masuktglmasuk: TDateTimeField;
    VTbarang_masukqty: TIntegerField;
    VTbarang_keluaridbarang: TStringField;
    VTbarang_keluartglkeluar: TDateTimeField;
    VTbarang_keluarqty: TIntegerField;
    Qbarang_keluaridbarang: TStringField;
    Qbarang_keluarqty: TIntegerField;
    Qbarang_keluartgl_keluar: TDateTimeField;
    VTstokBarang: TVirtualTable;
    VTstokBarangIDBarang: TStringField;
    VTstokBarangNamaBarang: TStringField;
    VTstokBarangMasuk: TIntegerField;
    VTstokBarangKeluar: TIntegerField;
    VTstokBarangStok: TIntegerField;
    VTstokBarangSatuan: TStringField;
    Qstokbarangnamabarang: TStringField;
    Qstokbarangidbarang: TStringField;
    Qstokbarangid: TSmallintField;
    Qstokbarangkategori: TStringField;
    QstokbarangMasuk: TIntegerField;
    QstokbarangKeluar: TIntegerField;
    Qstokbarangsatuan: TStringField;
    RVbarang_keluar: TRvDataSetConnection;
    RVbarang_masuk: TRvDataSetConnection;
    Qbarang_keluarnamabarang: TStringField;
    Qbarang_masuknamabarang: TStringField;
    VTbarang_masukNamaBarang: TStringField;
    VTbarang_keluarnamabarang: TStringField;
    RVSTKBRNG: TRvDataSetConnection;
    DataSource2: TDataSource;
    VTMasukKeluar: TVirtualTable;
    VTMasukKeluarIDBarang: TStringField;
    VTMasukKeluarNamaBarang: TStringField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    rdo_jumlah: TRadioButton;
    rdo_namabarang: TRadioButton;
    rdo_idbarang: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    VTMasukKeluarDSDesigner1in: TStringField;
    VTMasukKeluarDSDesigner10ut: TStringField;
    VTMasukKeluarDSDesigner2in: TStringField;
    VTMasukKeluarDSDesigner2out: TStringField;
    VTMasukKeluarDSDesigner3in: TStringField;
    VTMasukKeluarDSDesigner3out: TStringField;
    VTMasukKeluarDSDesigner4in: TStringField;
    VTMasukKeluarDSDesigner4out: TStringField;
    VTMasukKeluarDSDesigner5in: TStringField;
    VTMasukKeluarDSDesigner5out: TStringField;
    VTMasukKeluarDSDesigner6in: TStringField;
    VTMasukKeluarDSDesigner6out: TStringField;
    VTMasukKeluarDSDesigner7in: TStringField;
    VTMasukKeluarDSDesigner7out: TStringField;
    bsSkinXFormButton1: TbsSkinXFormButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure chk_kategoriClick(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure Tgl_akhirExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    sql1, sql2  : String;

    { Private declarations }
  public
    
    { Public declarations }
  end;

var
  fstok: Tfstok;

implementation
     uses DateUtils, unit1, unit3;
{$R *.dfm}

procedure Tfstok.FormCreate(Sender: TObject);
begin
  FrmInduk.pbstokbarang := True;
  chk_tanggal.Checked := True;
  Qkatbarang.Active   := True;
  tgl_mulai.DateTime  := Now;
  Tgl_akhir.DateTime  := Now + 1;

  btncariClick(sender);
end;

procedure Tfstok.chk_kategoriClick(Sender: TObject);
begin
  IF chk_kategori.Checked then
  begin
    cmbkategori.Enabled := True;
    Qkatbarang.Active := True;
    cmbkategori.Clear;
     while not (Qkatbarang.Eof) do
    begin
      cmbkategori.Items.Add(Qkatbarangkategori.AsString);
      Qkatbarang.Next;
    end;
     cmbkategori.ItemIndex := 0
   end
   else
   begin
   Qkatbarang.Active := False;
   cmbkategori.Enabled := False;
   end;
end;

procedure Tfstok.btncariClick(Sender: TObject);
var   objek : TComponent;
      idmenu      : string;
      pvtglawal, pvtglakhir : TDateTime;
       i,j,k,l, x : integer;
begin

  idmenu := 'MMMMMMMM';

  VTbarang_masuk.Active := True;
  VTbarang_keluar.Active := True;
  VTbarang_masuk.Clear;
  VTbarang_keluar.Clear;
  VTstokBarang.Clear;

   if Tgl_akhir.DateTime - tgl_mulai.DateTime > 7 then
  begin
    ShowMessage('Maksimal 7 hari');
    Tgl_akhir.DateTime := tgl_mulai.DateTime + 6;
    Exit;
  end;

// pvtglawal := tgl_mulai.DateTime;

  pvtglawal := tgl_mulai.DateTime;
  pvtglakhir := Tgl_akhir.DateTime;

  if pvtglawal > pvtglakhir then
  begin
    bsSkinMessage1.MessageDlg('Tanggal Salah',mtError, [mbOK],0);
    Tgl_akhir.SetFocus;
    exit;
  end;

    x := 0;
    i := 6;
   // j := 16;
  //  k := 17 ;
  //  l := 0;

{ VTMasukKeluar.Fields.Clear; }

  while not (pvtglawal > pvtglakhir) do
    begin
       l:= l + 2;
    // for x := 2 to 20 do
    // begin
      //VTMasukKeluar.AddField(DateToStr(DateOf(pvtglawal))+ ' IN',ftInteger);
     // VTMasukKeluar.AddField(DateToStr(DateOf(pvtglawal))+ ' OUT',ftInteger);
       x:= 2;
       while not (x>14)  do
       begin
        // FormatDateTime('ddMMyy', pvtglawal)+
        // FormatDateTime('ddMMyy', pvtglawal)+
      DBGrid3.Columns[x].Title.Caption  :=  '  IN';
      DBGrid3.Columns[x+1].Title.Caption :=  ' OUT';
      DBGrid3.Columns[x].Width := 44;
      DBGrid3.Columns[x+1].Width := 44;
      x := x+2;

     end;
     // penamaan field Title
      objek := Controls[i];
      with objek as TEdit do
      begin
        text :=  FormatDateTime('     ddMMyy', pvtglawal);
      end;
      i:= i +1;
   {
      // penamaan field in
      objek := Controls[j];
      with objek as TEdit do
      begin
        text :=  'IN';
      end;
      j:= j +2;

     // penamaan field out
       objek := Controls[k];
      with objek as TEdit do
      begin
        text :=  'OUT';
      end;
      k:= k +2;     }


    Qbarang_masuk.Active := False;
    Qbarang_masuk.SQL.Text := ' SELECT     tbarang_masuk.tgl_masuk, tbarang_masuk.qty, tbarang_masuk.idbarang, Tbarang.namabarang ' +
                              ' FROM         tbarang_masuk INNER JOIN ' +
                              ' Tbarang ON tbarang_masuk.idbarang = Tbarang.idbarang ' +
                              ' WHERE  ((tbarang_masuk.tgl_masuk > ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) + ') ' +
                              ' and    (tbarang_masuk.tgl_masuk < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal+1)+ FormatDateTime('HH:mm:ss ', waktuakhir.Time)) + '))';
    Qbarang_masuk.Active := True;

    VTbarang_masuk.Active := True;
    VTbarang_masuk.Clear;

    Qbarang_masuk.First;
    while not (Qbarang_masuk.Eof) do
      begin
        VTbarang_masuk.Append;
        VTbarang_masukidbarang.Value := Qbarang_masukidbarang.Value;
        VTbarang_masuktglmasuk.Value := pvtglawal;
        VTbarang_masukqty.Value := Qbarang_masukqty.Value;
        VTbarang_masukNamaBarang.Value := Qbarang_masuknamabarang.Value;
        VTbarang_masuk.Post;

        Qbarang_masuk.Next;
      end;

// CARI DAN INPUT DATA DARI TABEL BARANG KELUAR
    Qbarang_keluar.Active := False;
    Qbarang_keluar.SQL.Text := ' SELECT     tbarang_keluar.idbarang, tbarang_keluar.qty, tbarang_keluar.tgl_keluar, Tbarang.namabarang ' +
                               ' FROM         tbarang_keluar LEFT OUTER JOIN' +
                               ' tpayment ON tbarang_keluar.idorder = tpayment.idorder LEFT OUTER JOIN ' +
                               ' Tbarang ON tbarang_keluar.idbarang = Tbarang.idbarang ' +
                               ' WHERE ((Tbarang_keluar.tgl_keluar > ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) + ') ' +
                               ' and  (tbarang_keluar.tgl_keluar < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal+1)+ FormatDateTime('HH:mm:ss ', waktuakhir.Time)) + '))'+
                               ' AND (tpayment.payment <> 0 AND tpayment.payment <> 4 AND tpayment.payment <> 5) ' ;

    Qbarang_keluar.Active := True;
    VTbarang_keluar.Active := True;
    VTbarang_keluar.Clear;

    while not (Qbarang_keluar.Eof) do
      begin
        VTbarang_keluar.Append;
        VTbarang_keluaridbarang.Value   := Qbarang_keluaridbarang.Value;
        VTbarang_keluartglkeluar.Value  := pvtglawal ;
        VTbarang_keluarqty.Value        := Qbarang_keluarqty.Value;
        VTbarang_keluarnamabarang.Value := Qbarang_keluarnamabarang.Value;
        VTbarang_keluar.Post;

        Qbarang_keluar.Next;
      end;


    Qstokbarang.Active := False;

    sql1                    :=  ' SELECT     Tbarang.namabarang, Tbarang.idbarang, tkategoribarang.id, tkategoribarang.kategori, tm.masuk AS Masuk, tk.keluar AS Keluar, tsatuan.satuan ' +
                                ' FROM         tkategoribarang INNER JOIN ' +
                                ' Tbarang ON tkategoribarang.id = Tbarang.idkategori  INNER JOIN  ' +
                                ' tsatuan ON Tbarang.idsatuan = tsatuan.id LEFT OUTER JOIN ' +
                                ' (SELECT     SUM(tbarang_keluar.qty) AS Keluar, tbarang_keluar.idbarang ' +
                                ' FROM         tbarang_keluar LEFT OUTER JOIN ' +
                                ' tpayment ON tbarang_keluar.idorder = tpayment.idorder ' +
                                ' WHERE     (tbarang_keluar.idmenu = '+ QuotedStr(idmenu)  +  ')  ' +
                                ' AND  ((tbarang_keluar.tgl_keluar > ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) + ') ' +
                                ' and (tbarang_keluar.tgl_keluar < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal + 1)+ FormatDateTime('HH:mm:ss ', waktuakhir.Time)) + '))' +

                                ' OR ' +

                                ' ((tbarang_keluar.tgl_keluar > ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) + ') ' +
                                ' and (tbarang_keluar.tgl_keluar < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal + 1)+ FormatDateTime('HH:mm:ss ', waktuakhir.Time)) + '))' +
                                ' AND (tpayment.payment <> 0) AND (tpayment.payment <> 4) AND (tpayment.payment <> 5) ' +
                                ' GROUP BY tbarang_keluar.idbarang) tk ON Tbarang.idbarang = tk.idbarang LEFT OUTER JOIN ' +
                                ' (SELECT     idbarang, SUM(qty) AS masuk ' +
                                ' FROM          tbarang_masuk ' +
                                ' WHERE     ((tgl_masuk > ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) + ') ' +
                                ' and (tgl_masuk < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ',pvtglawal + 1)+ FormatDateTime('HH:mm:ss ', waktuakhir.Time)) + '))' +
                                ' GROUP BY idbarang) tm ON Tbarang.idbarang = tm.idbarang ' ;

    if chk_kategori.Checked then sql1 := sql1 + ' WHERE     (tkategoribarang.kategori = '+ QuotedStr(cmbkategori.Text) + ')';

    sql2                    :=  ' GROUP BY Tbarang.namabarang, Tbarang.idbarang, tkategoribarang.id, tkategoribarang.kategori, tk.keluar, tm.masuk, tsatuan.satuan ' ;
   {
    if (rdo_idbarang.Checked) then
      sql2 := sql2 + ' ORDER BY tbarang.idbarang ';
    if (rdo_namabarang.Checked) then
      sql2 := sql2 = ' ORDER BY Tbarang.namabarang ';  }

    Qstokbarang.SQL.Text := sql1 + sql2 ;

    Qstokbarang.Active := True;
    Memo1.Text := Qstokbarang.SQL.Text;
    VTstokBarang.Active := True;
    VTstokBarang.Clear;
    Qstokbarang.First;
    while not ( Qstokbarang.Eof) do
      begin
        VTstokBarang.Append;
        VTstokBarangIDBarang.Value   := Qstokbarangidbarang.Value;
        VTstokBarangNamaBarang.Value := Qstokbarangnamabarang.Value;
        VTstokBarangMasuk.Value      := QstokbarangMasuk.Value;
        VTstokBarangKeluar.Value     := QstokbarangKeluar.Value;
        VTstokBarangSatuan.Value     := Qstokbarangsatuan.Value;
        VTstokBarangStok.Value       := QstokbarangMasuk.Value - QstokbarangKeluar.Value;
        VTstokBarang.Post;
    Qstokbarang.Next;
    end;

    VTstokBarang.First;
    VTMasukKeluar.Active := True;
    while not (VTstokBarang.Eof) do
      begin
        if not(VTMasukKeluar.Locate('ID-Barang', VTstokBarangIDBarang.Value,[])) then
        begin
          VTMasukKeluar.Append;
          VTMasukKeluar.Fields[0].Value := VTstokBarangIDBarang.Value;
        end
        else
        begin
          VTMasukKeluar.Edit;
        end;

        //VTMasukKeluar.Fields[0].Value     := VTstokBarangIDBarang.Value;
        VTMasukKeluar.Fields[1].Value     := VTstokBarangNamaBarang.Value;
        VTMasukKeluar.Fields[l].Value     := VTstokBarangMasuk.Value;
        VTMasukKeluar.Fields[l+1].Value := VTstokBarangKeluar.Value;
        //VTMasukKeluar.Fields[VTMasukKeluar.FieldCount-2].Value   := VTstokBarangMasuk.Value;
       // VTMasukKeluar.Fields[VTMasukKeluar.FieldCount-1].Value := VTstokBarangKeluar.Value;
        VTMasukKeluar.Post;
        VTstokBarang.Next;
      end;                    


    pvtglawal := pvtglawal + 1;
    VTstokBarang.Clear;

  end;          // i end    

    

end;

procedure Tfstok.btnexitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfstok.btnprintClick(Sender: TObject);
begin
   with FrmInduk.RvProject1 do
    begin
      FrmInduk.RvProject1.SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy', tgl_mulai.DateTime));
      FrmInduk.RvProject1.SetParam('tanggalakhir', FormatDateTime('dd MMMM yyyy ', Tgl_akhir.DateTime));
      SetParam('1', Edit1.Text);
      SetParam('2', Edit2.Text);
      SetParam('3', Edit3.Text);
      SetParam('4', Edit4.Text);
      SetParam('5', Edit5.Text);
      SetParam('6', Edit6.Text);
      SetParam('7', Edit7.Text);
      ExecuteReport('Fstokbaru');
    end;
end;

procedure Tfstok.Tgl_akhirExit(Sender: TObject);
begin
  if Tgl_akhir.DateTime - tgl_mulai.DateTime > 10 then
  begin
    Tgl_akhir.DateTime := tgl_mulai.DateTime + 10;
    Exit;
  end;
end;

procedure Tfstok.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbstokbarang := False;
end;

end.





