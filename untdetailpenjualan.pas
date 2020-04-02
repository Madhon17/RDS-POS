unit untdetailpenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, DB, DBTables, Grids, DBGrids,
  bsSkinCtrls, StdCtrls, ComCtrls, ExtCtrls, RpDefine, RpCon, RpConDS,
  AEDIT, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfdetailpenjualan = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    cmbkategori: TComboBox;
    chk_kategori: TCheckBox;
    chk_tanggal: TCheckBox;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    btncari: TbsSkinXFormButton;
    Qkategori: TZQuery;
    Qcari: TZQuery;
    DScari: TDataSource;
    Qcariidmenu: TStringField;
    Qcarimenu: TStringField;
    QcariQTY: TLargeintField;
    QcariTotal: TFloatField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Panel3: TPanel;
    rdo_namamenu: TRadioButton;
    rdo_idmenu: TRadioButton;
    rdo_quantity: TRadioButton;
    rdo_total: TRadioButton;
    Qkategoriid: TStringField;
    Qkategorikategori: TStringField;
    Qothers: TZQuery;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    RVdeatilpenjualan: TRvDataSetConnection;
    chk_lokasi: TCheckBox;
    cmblokasi: TComboBox;
    Qlokasi: TZQuery;
    Qlokasiid: TSmallintField;
    Qlokasilokasi: TStringField;
    QcariTotal_Diskon: TFloatField;
    Qcariharga_asli: TFloatField;
    DBGrid1: TDBGrid;
    RVrpKategori: TRvDataSetConnection;
    Qcarikategori: TStringField;
    edtTotal: TAEdit;
    Query1: TZQuery;
    DataSource1: TDataSource;
    procedure btncariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chk_tanggalClick(Sender: TObject);
    procedure rdo_idmenuClick(Sender: TObject);
    procedure rdo_quantityClick(Sender: TObject);
    procedure rdo_totalClick(Sender: TObject);
    procedure rdo_namamenuClick(Sender: TObject);
    procedure chk_kategoriClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnprintClick(Sender: TObject);
    procedure chk_lokasiClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    pvtotal     : Real;
    pvlokasi, pvorderby , vsql1   : string;

    { Private declarations }
  public
    pbvsql, pbidmenu : string;
    { Public declarations }
  end;

var
  fdetailpenjualan: Tfdetailpenjualan;

implementation
      uses unit1, unit3, Math, untdetailrekapitulasi, untdetailreport;
{$R *.dfm}

procedure Tfdetailpenjualan.btncariClick(Sender: TObject);
var vsql,  sqlfilter : string;
begin
   pvtotal := 0;
   vsql   :=  ' SELECT     torder_menu.idmenu, tmenu.menu, SUM(torder_menu.qty) AS QTY, SUM( torder_menu.qty * (torder_menu.harga_asli - torder_menu.diskon)) ' +
              ' AS Total, torder_menu.harga_asli, SUM(torder_menu.diskon * torder_menu.qty) AS Total_Diskon, cast(tmenu.kategori as char(3)) kategori ' +
              ' FROM   torder_menu INNER JOIN ' +
              ' tmenu ON torder_menu.idmenu = tmenu.id INNER JOIN ' +
              ' tpayment ON torder_menu.idorder = tpayment.idorder ';


    vsql1 := ' SELECT     torder_menu.idmenu, tmenu.menu, SUM(torder_menu.qty) AS QTY, SUM( torder_menu.qty * (torder_menu.harga_asli - torder_menu.diskon)) ' +
              ' AS Total, torder_menu.harga_asli, SUM(torder_menu.diskon * torder_menu.qty) AS Total_Diskon, tmenu.kategori, tpayment.invoice ' +
              ' FROM   torder_menu INNER JOIN ' +
              ' tmenu ON torder_menu.idmenu = tmenu.id INNER JOIN ' +
              ' tpayment ON torder_menu.idorder = tpayment.idorder ' ;

  sqlfilter := ' WHERE   (torder_menu.status=1) and  (tpayment.tglstop <> 0) and (tpayment.payment <> 0) and (tpayment.payment <> 4) and (tpayment.payment <>5)';

  if chk_tanggal.Checked then
  begin
    sqlfilter := sqlfilter +  ' and ((tpayment.tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +
                              ' and (tglstop <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
  end;

  if chk_lokasi.Checked then
  begin
    Qothers.Active := False;
    Qothers.SQL.Text := ' select id ' +
                        ' FROM tlokasi ' +
                        ' WHERE (lokasi = ' + QuotedStr(cmblokasi.Text) + ')';
    Qothers.Active := True;

    sqlfilter := sqlfilter + ' and (tmenu.id_lokasi = ' + Qothers.fieldByName('id').AsString + ')';
    pvlokasi := cmblokasi.Text;
  end;

  if chk_kategori.Checked then
  begin
   Qothers.Active := False;
   Qothers.SQL.Text := 'SELECT     id   ' +
                      ' FROM         tkategorimenu ' +
                      ' WHERE  (kategori = ' + QuotedStr(cmbkategori.Text) + ')';
   Qothers.Active := True;

   sqlfilter := sqlfilter + ' and (tmenu.kategori = ' +  Qothers.fieldByName('id').AsString + ')';
  end;

   sqlfilter := sqlfilter  + ' AND (tpayment.payment <> 0 AND tpayment.payment <> 4 AND tpayment.payment <> 5) ';

  vsql := vsql + sqlfilter +  ' GROUP BY tmenu.menu, torder_menu.status,torder_menu.idmenu, torder_menu.idmenu, torder_menu.idmenu, torder_menu.harga_asli, tmenu.kategori ' ;
  vsql1 := vsql1 + sqlfilter + ' GROUP BY tmenu.menu,torder_menu.status, torder_menu.idmenu, torder_menu.idmenu, torder_menu.idmenu, torder_menu.harga_asli, tmenu.kategori, tpayment.invoice ';

  Qkategori.Active := False;

  qkategori.SQL.Text := 'SELECT     cast(tbk.kategori as char(3)) as id, tkm.kategori    ' +
                        'FROM         ( ' +
                        vsql +
                        ') tbk INNER JOIN    ' +
                        ' tkategorimenu tkm ON tbk.kategori = tkm.id ' +
                        ' GROUP BY tbk.kategori, tkm.kategori ';

  if (rdo_namamenu.Checked) then
  begin
      vsql := vsql +  ' ORDER BY tmenu.menu ' ;
      pvorderby :=' Order By Nama Menu ';
  end;
  if (rdo_idmenu.Checked) then
  begin
      vsql := vsql +  ' ORDER BY torder_menu.idmenu ';
       pvorderby :=' Order By ID-Menu ';
  end;
  if (rdo_quantity.Checked) then
  begin
      vsql := vsql +  ' ORDER BY SUM(torder_menu.qty) ';
       pvorderby :=' Order By Jumlah ';
  end;
  if (rdo_total.Checked) then
  begin
      vsql := vsql +  ' ORDER BY SUM(torder_menu.harga_asli * torder_menu.qty - torder_menu.diskon)';
       pvorderby :=' Order By Total ';
  end;

  Qcari.SQL.Text := vsql;
  Qcari.Active := True;
  Qcari.First;
  while not (Qcari.Eof) do
  begin
    pvtotal := pvtotal + Qcari.fieldByName('total').AsFloat;
    Qcari.Next;
  end;
  edttotal.Text := FormatFloat('#,0',pvtotal);

end;

procedure Tfdetailpenjualan.FormCreate(Sender: TObject);
begin

  Qkategori.Connection := modul.Database1;
  Qcari.Connection := modul.Database1;
  Qothers.Connection := modul.Database1;
  Qlokasi.Connection := modul.Database1;
  Query1.Connection := modul.Database1;

  FrmInduk.pbdetailpenjualan := True;

    Qkategori.Active := True;
    cmbkategori.Clear;
    while not (Qkategori.Eof) do
    begin
      cmbkategori.Items.Add(Qkategorikategori.AsString);
      Qkategori.Next;
    end;
    cmbkategori.ItemIndex := 0;

  tgl_mulai.DateTime := now;
  Tgl_akhir.DateTime := now + 1;
  chk_tanggal.Checked := True;
  chk_tanggalClick(sender);
  chk_kategoriClick(sender);
  chk_lokasiClick(sender);
  btncariClick(sender);

  
end;

procedure Tfdetailpenjualan.chk_tanggalClick(Sender: TObject);
begin
   if not(chk_tanggal.Checked) then
  begin
    tgl_mulai.Enabled := False;
    Tgl_akhir.Enabled := False;
    waktuawal.Enabled := False;
    waktuakhir.Enabled := False;
     exit;
  end
  else
  begin
    tgl_mulai.Enabled := True;
    Tgl_akhir.Enabled := True;
    waktuawal.Enabled:= True;
    waktuakhir.Enabled := true;
  end;
end;

procedure Tfdetailpenjualan.rdo_idmenuClick(Sender: TObject);
begin
  btncariClick(sender);
end;

procedure Tfdetailpenjualan.rdo_quantityClick(Sender: TObject);
begin
  btncariClick(sender);
end;

procedure Tfdetailpenjualan.rdo_totalClick(Sender: TObject);
begin
  btncariClick(sender);
end;

procedure Tfdetailpenjualan.rdo_namamenuClick(Sender: TObject);
begin
  btncariClick(sender);
end;

procedure Tfdetailpenjualan.chk_kategoriClick(Sender: TObject);
begin
  If chk_kategori.Checked then
  begin
    cmbkategori.Enabled := True;
  end
  else
  begin
   Qkategori.Active := False;
   cmbkategori.Enabled := False;
  end;
end;

procedure Tfdetailpenjualan.btnexitClick(Sender: TObject);
begin
  fdetailpenjualan.Close;
end;

procedure Tfdetailpenjualan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbdetailpenjualan := False;
end;

procedure Tfdetailpenjualan.btnprintClick(Sender: TObject);
begin

   Qkategori.Active := True;

   FrmInduk.RvProject1.SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy', tgl_mulai.DateTime) + FormatDateTime('HH:mm', waktuawal.DateTime));
   FrmInduk.RvProject1.SetParam('tanggalakhir', FormatDateTime('dd MMMM yyyy ', Tgl_akhir.DateTime)+ FormatDateTime('HH:mm', waktuakhir.DateTime));
   FrmInduk.RvProject1.SetParam('orderby',pvorderby);
   FrmInduk.RvProject1.SetParam('totaljual', FormatFloat('#,0',pvtotal));
   FrmInduk.RvProject1.SetParam('lokasi', pvlokasi);
   FrmInduk.RvProject1.ExecuteReport('FDetailPenjualanNew');    
end;

procedure Tfdetailpenjualan.chk_lokasiClick(Sender: TObject);
begin
   If chk_lokasi.Checked then
  begin
    cmblokasi.Enabled := True;
    Qlokasi.Active := True;
    cmblokasi.Clear;
    while not (Qlokasi.Eof) do
    begin
      cmblokasi.Items.Add(Qlokasilokasi.AsString);
      Qlokasi.Next;
    end;
     cmblokasi.ItemIndex := 0 ;
     pvlokasi := cmblokasi.Text;
   end
   else
   begin
   Qlokasi.Active := False;
   cmblokasi.Enabled := False;
   pvlokasi := '';
   end;
end;

procedure Tfdetailpenjualan.DBGrid1DblClick(Sender: TObject);
begin
  if FrmInduk.pbdetailrekapitulasijual = true then
    Fdetailrekapitulasi.Show
  else
    Application.CreateForm(TFdetailrekapitulasi,Fdetailrekapitulasi);

  Fdetailrekapitulasi.pbvsql := vsql1;
  Fdetailrekapitulasi.pbidmenu := Qcariidmenu.Value;
  Fdetailrekapitulasi.btnInvoiceClick(sender);
end;

end.
