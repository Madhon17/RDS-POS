unit untdetailreport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, bsSkinCtrls, AEDIT, Grids, DBGrids, ExtCtrls, DB,
  DBTables, BusinessSkinForm, bsMessages, RpDefine, RpCon, RpConDS, ZDataset,
  ZAbstractRODataset, ZAbstractDataset;

type
  Tfdetailreport = class(TForm)
    grpRoom: TPanel;
    DBgrid1: TDBGrid;
    edtTotalGrid: TAEdit;
    btnRoom: TbsSkinButton;
    btnMenu: TbsSkinButton;
    btnOthers: TbsSkinButton;
    edtinvoice: TEdit;
    Label1: TLabel;
    Qharga: TZQuery;
    QtabelRoom: TZQuery;
    DStabel: TDataSource;
    QtabelDll: TZQuery;
    QtabelMenu: TZQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinButton1: TbsSkinButton;
    Qcari: TZQuery;
    btnkeluar: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    RVtabelroom: TRvDataSetConnection;
    RVtabelmenu: TRvDataSetConnection;
    RVtabelDll: TRvDataSetConnection;
    QtabelRoomRoom: TStringField;
    QtabelRoomCheckIn: TDateTimeField;
    QtabelRoomCheckOut: TDateTimeField;
    QtabelRoomDurasi: TSmallintField;
    QtabelRoomHarga: TFloatField;
    QtabelRoomJumlah: TFloatField;
    QtabelDllketerangan: TStringField;
    QtabelDllQty: TSmallintField;
    QtabelDllHarga: TFloatField;
    QtabelDllJumlah: TFloatField;
    btnprint: TbsSkinButton;
    QtabelMenuMenuItem: TStringField;
    QtabelMenuQty: TLargeintField;
    QtabelMenuHarga: TFloatField;
    QtabelMenuJumlah: TFloatField;
    QtabelRoomDiskon: TFloatField;
    Qsetup: TZQuery;
    Qothers: TZQuery;
    procedure caritotal;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRoomClick(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure btnOthersClick(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure edtinvoiceExit(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
  private
    pvtotalroom, pvtotalmenu, pvtotaldll, pvgrandtotal, pvroomdisc, pvmenudisc, pvmemberdisc, pvsubtotal  : Real;
    pvtax, pvservice, pvtotal,pvVoucher  : Real;
    { Private declarations }
  public
      pbinvoice, pbidorder, pbnamaroom : String;
      pbInvoice2 : string;
      pbPajak : Boolean;
  end;

var
  fdetailreport: Tfdetailreport;

implementation
  uses strutils, unit1, unit3, untdailyreport, konversi, unit16, untdetailpayment;
{$R *.dfm}


procedure Tfdetailreport.caritotal;
begin
 pvsubtotal := pvtotalroom + pvtotalmenu + pvtotaldll;
 pvtotal := pvsubtotal - pvroomdisc - pvmenudisc - pvmemberdisc;
 pvgrandtotal := pvsubtotal - pvroomdisc - pvmenudisc - pvmemberdisc + pvtax + pvservice - pvVoucher;
end;


procedure Tfdetailreport.FormCreate(Sender: TObject);
begin

  Qharga.Connection := modul.Database1;
  QtabelRoom.Connection := modul.Database1;
  QtabelDll.Connection := modul.Database1;
  QtabelMenu.Connection := modul.Database1;
  Qcari.Connection := modul.Database1;
  Qsetup.Connection := modul.Database1;
  Qothers.Connection := modul.Database1;

  FrmInduk.pbdetailreport := true;

end;

procedure Tfdetailreport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   FrmInduk.pbdetailreport := False;
end;

procedure Tfdetailreport.btnRoomClick(Sender: TObject);
begin
  QtabelRoom.Active := False;
  QtabelRoom.SQL.Text := 'SELECT     troom.namaroom AS Room, torder_room.tglStart AS "Check In", torder_room.tglStop AS "Check Out", torder_room.durasi AS Durasi, '+
                     '           torder_room.harga_asli AS Harga, torder_room.diskon AS Diskon,  (torder_room.harga_asli  * torder_room.durasi - torder_room.diskon) AS Jumlah '+
                     'FROM       torder_room INNER JOIN ' +
                     '           troom ON torder_room.idroom = troom.id ' +
                     'WHERE     (torder_room.idorder = ' + QuotedStr(pbidorder) +')';

  QtabelRoom.Active := True;
 
  Qharga.Active := False;
  Qharga.SQL.Text := 'SELECT     SUM((harga_asli  * durasi - diskon)) AS jumlah '+
                     'FROM         torder_room '+
                     'WHERE     (idorder = ' + QuotedStr(pbIdOrder) +
                     ')  ';
  Qharga.Active := True;

  pvtotalroom := Qharga.fieldByName('jumlah').AsFloat;

  edtTotalGrid.Text := FormatFloat('#,0',Qharga.FieldByName('jumlah').AsFloat);

  DStabel.DataSet := QtabelRoom;
  DBGrid1.Columns[0].Width := 50;
  DBGrid1.Columns[1].Width := 118;
  DBGrid1.Columns[2].Width := 118;
  DBGrid1.Columns[3].Width := 50;
  DBGrid1.Columns[4].Width := 87;
  DBGrid1.Columns[5].Width := 87;
  DBGrid1.Columns[6].Width := 87;
end;

procedure Tfdetailreport.btnMenuClick(Sender: TObject);
begin
  QtabelMenu.Active := False;
  QtabelMenu.SQL.Text := 'SELECT     tmenu.menu AS `Menu Item`, SUM(torder_menu.qty) AS Qty, torder_menu.harga_asli - torder_menu.diskon AS Harga, '+
                     '            SUM((torder_menu.harga_asli - torder_menu.diskon) * torder_menu.qty) AS Jumlah '+
                     ' FROM         torder_menu INNER JOIN '+
                     '           tmenu ON torder_menu.idmenu = tmenu.id ' +
                     ' WHERE     (torder_menu.idorder = ' + QuotedStr(pbIdOrder) +') and (torder_menu.status =1)'+
                     ' GROUP BY tmenu.menu, torder_menu.harga_asli - torder_menu.diskon';
  QtabelMenu.Active := True;

  Qharga.Active := False;
  Qharga.SQL.Text := 'SELECT     SUM((harga_asli - diskon) * qty) AS jumlah '+
                     'FROM         torder_menu '+
                     'WHERE  (status=1) and   (idorder = ' + QuotedStr(pbidorder) +
                     ') ';
  Qharga.Active := True;

  pvtotalmenu := Qharga.fieldByName('jumlah').AsFloat;
  edtTotalGrid.Text := FormatFloat('#,0',Qharga.FieldByName('jumlah').AsFloat);

  DStabel.DataSet := QtabelMenu;
  DBGrid1.Columns[0].Width := 270;
  DBGrid1.Columns[1].Width := 64;
  DBGrid1.Columns[2].Width := 110;
  DBGrid1.Columns[3].Width := 110;
end;

procedure Tfdetailreport.btnOthersClick(Sender: TObject);
begin
  QtabelDll.Active := False;
  QtabelDll.SQL.Text := ' SELECT     keterangan, jumlah AS Qty, harga AS Harga, jumlah * harga AS Jumlah '+
                        ' FROM         torder_dll ' +
                        ' WHERE     (idorder = ' + QuotedStr(pbIdOrder) +')';
  QtabelDll.Active := True;

  Qharga.Active := False;
  Qharga.SQL.Text := 'SELECT     SUM(jumlah * harga) AS jumlah '+
                     'FROM         torder_dll '+
                     'WHERE     (idorder = ' + QuotedStr(pbIdOrder) +
                     ') ';
  Qharga.Active := True;

  pvtotaldll := Qharga.fieldByName('jumlah').AsFloat;
  edtTotalGrid.Text := FormatFloat('#,0',Qharga.FieldByName('jumlah').AsFloat);

  DStabel.DataSet := QtabelDll;
  DBGrid1.Columns[0].Width := 240;
  DBGrid1.Columns[1].Width := 64;
  DBGrid1.Columns[2].Width := 125;
  DBGrid1.Columns[3].Width := 125;
end;

procedure Tfdetailreport.bsSkinButton1Click(Sender: TObject);
begin

  fdetailreport.Close;
end;

procedure Tfdetailreport.edtinvoiceExit(Sender: TObject);
begin
  Qcari.Active := False;
  if pbPajak then
  begin
    Qcari.SQL.Text := 'select tpayment.idorder, tpayment.invoice from tbayar inner join tpayment on tpayment.idorder2=tbayar.idorder where tbayar.invoice=' + QuotedStr(edtinvoice.Text);
  end
  else
  begin
    Qcari.SQL.Text := 'SELECT     idorder, invoice ' +
                    'FROM         tpayment ' +
                    ' WHERE     (invoice = ' + QuotedStr(edtinvoice.Text) + ')';
  end;
  Qcari.Active := True;

  pbidorder := Qcari.fieldByName('idorder').AsString;
  pbinvoice := Qcari.fieldByName('invoice').AsString;
  pbInvoice2 := Trim(edtinvoice.Text);
end;

procedure Tfdetailreport.btnkeluarClick(Sender: TObject);
begin
  if edtinvoice.Text = '' then
  begin
    bsSkinMessage1.MessageDlg(' Invoice Belum Diisi ',mtInformation,[mbOK],0);
    edtinvoice.SetFocus;
    exit;
  end;

  btnRoomClick(sender);
end;

procedure Tfdetailreport.btnprintClick(Sender: TObject);
begin
  FrmInduk.printInvoice(pbinvoice2, pbIdOrder, pbPajak, True);
end;


end.
