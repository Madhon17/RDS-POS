unit untBillCashOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, AEDIT, Spin, StdCtrls, DB, DBTables, Grids,
  DBGrids, ExtCtrls, RpDefine, RpCon, RpConDS;

type
  TFbillCashOrder = class(TForm)
    Nama: TLabel;
    edtNama: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    spnMenu: TSpinEdit;
    edtMenuHarga: TAEdit;
    edtMenuDiskon: TAEdit;
    edtMenuTotal: TAEdit;
    btnOk: TbsSkinButton;
    Label8: TLabel;
    edtTax: TAEdit;
    edtService: TAEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtGrandTotal: TAEdit;
    QmsOrderID: TQuery;
    Label13: TLabel;
    Panel1: TPanel;
    TOTAL: TLabel;
    DBGordermenu: TDBGrid;
    edtTotal: TAEdit;
    btnExit: TbsSkinButton;
    cmbMember: TComboBox;
    edtIdMember: TEdit;
    Qmember: TQuery;
    RvCashMenu: TRvDataSetConnection;
    Label1: TLabel;
    edtmemberdiskon: TAEdit;
    Label4: TLabel;
    DBmember: TDBGrid;
    DSmember: TDataSource;
    Qmemberid: TStringField;
    Qmemberid_kategori: TSmallintField;
    Qmembernama: TStringField;
    Qmembertgl_registrasi: TDateTimeField;
    Qmemberberlaku: TDateTimeField;
    Qmemberdiskonroom: TFloatField;
    Qmemberdiskonmenu: TFloatField;
    edtsubtotal: TAEdit;
    Label5: TLabel;
    Qbarangkeluar: TQuery;
    Qbarangcari: TQuery;
    Label6: TLabel;
    edtvoucher: TAEdit;
    QmasaFreepass: TQuery;
    QmasaFreepassmasaFreepass: TIntegerField;
    QmasaFreepasspesanbill: TStringField;
    QmasaFreepasspromobill: TSmallintField;
    QmasaFreepassid_cabang: TSmallintField;
    QmasaFreepasskode: TStringField;
    procedure jumlah;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtMenuDiskonEnter(Sender: TObject);
    procedure edtMenuDiskonExit(Sender: TObject);
    procedure spnMenuChange(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNamaEnter(Sender: TObject);
    procedure edtIdMemberChange(Sender: TObject);
    procedure edtIdMemberExit(Sender: TObject);
    procedure cmbMemberClick(Sender: TObject);
    procedure edtIdMemberEnter(Sender: TObject);
    procedure edtIdMemberKeyPress(Sender: TObject; var Key: Char);
    procedure pencet(Sender: TObject; var Key: Char);
    procedure spnMenuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGordermenuKeyPress(Sender: TObject; var Key: Char);
    procedure edtIdMemberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBmemberDblClick(Sender: TObject);
    procedure DBmemberDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBmemberKeyPress(Sender: TObject; var Key: Char);
    procedure spnMenuEnter(Sender: TObject);
    procedure edtMenuDiskonKeyPress(Sender: TObject; var Key: Char);
    procedure edtMenuTotalEnter(Sender: TObject);
    procedure edtsubtotalEnter(Sender: TObject);
    procedure edtTaxEnter(Sender: TObject);
    procedure edtServiceEnter(Sender: TObject);
    procedure edtGrandTotalEnter(Sender: TObject);
    procedure edtMenuHargaEnter(Sender: TObject);
    procedure edtvoucherExit(Sender: TObject);
    procedure edtvoucherEnter(Sender: TObject);
  private
    pvMenuDisc : Real;
    pvtotal, pvGrandTotal, pvtotalmenu    : Real;
    pvtax, pvservice, pvmemberdisc, pvtotmemberdisc, pvvoucher : Real;
    printbaris : integer;
  public
    pbtotal  : Real;
  end;

var
  FbillCashOrder: TFbillCashOrder;

implementation

uses Unit14, Unit3, konversi, RpRave, Printers, strUtils;

{$R *.dfm}

procedure TFbillCashOrder.jumlah;
begin
  edtMenuDiskon.Text := FormatFloat('#,0',pvMenuDisc );
  pvtotalmenu := (pbtotal - pvMenuDisc);
  pvtotmemberdisc := pvtotalmenu * (pvmemberdisc /100);
  pvtotal :=  (pvtotalmenu - pvtotmemberdisc );

  edtTax.Text := FormatFloat('#,0', (pvtotal * pvtax / 100));
  edtService.Text := FormatFloat('#,0', (pvtotal * pvservice / 100));
  pvGrandTotal := pvtotal + (pvtotal * pvtax / 100) + (pvtotal * pvservice / 100);

  edtMenuTotal.Text := FormatFloat('#,0',pvtotalmenu);
  edtmemberdiskon.Text := FormatFloat('#,0',pvtotmemberdisc);
  edtsubtotal.Text := FormatFloat('#,0',pvtotal);
  edtTax.Text := FormatFloat('#,0', (pvtotal * pvtax / 100));
  edtService.Text := FormatFloat('#,0', (pvtotal * pvservice / 100));
  edtvoucher.Text := FormatFloat('#,0',pvvoucher);
  pvGrandTotal := pvtotal + (pvtotal * pvtax / 100) + (pvtotal * pvservice / 100)- pvvoucher;
  edtGrandTotal.Text := FormatFloat('#,0',pvGrandTotal );
end;

procedure TFbillCashOrder.btnOkClick(Sender: TObject);
var id : integer;
    ids, idv, idmember : string;
    i, j, k, grsatas : integer;
    terbilang : String;
begin

  QmsOrderID.Active := False;
  QmsOrderID.SQL.Text := ' SELECT     MAX(RIGHT(idorder, 4)) AS id  ' +
                         ' FROM         tpayment ' +
                         ' WHERE     (idorder LIKE ' + QuotedStr(FormatDateTime('yyMMdd',Now)+'%')+')';
  QmsOrderID.Active := True;
  try
    id := StrToInt(QmsOrderID.FieldByName('id').Value);
  except
    id :=0;
  end;
  id := id+1;
  ids := FormatDateTime('yyMMdd',Now) + FormatFloat('0000',id);

  //NO INVOICE
  QmsOrderID.Active := False;
  QmsOrderID.SQL.Text := ' SELECT     MAX(RIGHT(invoice, 4)) AS id  ' +
                         ' FROM         tpayment ' +
                         ' WHERE     (invoice LIKE ' + QuotedStr(FormatDateTime('VyyMMdd',Now)+'%')+')';
  QmsOrderID.Active := True;
  try
    id := StrToInt(QmsOrderID.FieldByName('id').Value);
  except
    id :=0;
  end;
  id := id+1;
  idv := FormatDateTime('VyyMMdd',Now) + FormatFloat('0000',id);

  if cmbMember.ItemIndex > 0 then
    idmember := edtIdMember.Text
  else
    idmember := '00000';

  QmasaFreepass.Active := True;

  QmsOrderID.Active := False;
  QmsOrderID.SQL.Text := ' INSERT INTO tpayment '+
                    '              (idorder, tanggal, tglstop, nama, disroom, dismenu, disdll, kasir, payment, tax, service, idroom, croom, cmenu, cother, discmember, invoice, idmember, extradiskon) '+
                    ' VALUES     (' + QuotedStr(ids) +
                    ',   '+         QuotedStr(FormatDateTime('yyyy-MM-dd hh:mm:ss', now)) +
                    ',   '+         QuotedStr(FormatDateTime('yyyy-MM-dd hh:mm:ss ', now)) +
                    ',   '+         QuotedStr(edtNama.Text)+
                    ', 0 '+
                    ',   '+         FormatFloat('0',pvMenuDisc)+
                    ', 0 '+
                    ',   '+         QuotedStr(FrmInduk.pbidkasir) +
                    ', 0 '+
                    ',   '+         FormatFloat('0',(pvtotal * pvtax / 100)) +
                    ',   '+         FormatFloat('0',(pvtotal * pvservice / 100)) +
                    ', 0 '+
                    ', 0 '+
                    ',   '+         FormatFloat('0',pbtotal) +
                    ', 0 '+
                    ',   '+         FormatFloat('0',pvtotmemberdisc) +
                    ',   '+         QuotedStr(idv) +
                    ',   '+         QuotedStr(idmember)+
                    ',   '+         FormatFloat('0',pvvoucher)+
                    ' )  ';
  QmsOrderID.ExecSQL;           

  QmsOrderID.Active := False;
  QmsOrderID.SQL.Text :=' INSERT INTO torder_menu '+
                       ' (idorder, idmenu, harga_asli, diskon, qty, status, cs) '+
                        ' VALUES     (:idorder, :idmenu, :harga_asli, :diskon, :qty, :status, :cs)';

  fordermenu.vtCashOrder.First;
  while not(fordermenu.vtCashOrder.Eof) do
  begin
       QmsOrderID.Prepare;
    QmsOrderID.ParamByName('idorder').AsString := ids;
    QmsOrderID.ParamByName('idmenu').AsString := fordermenu.vtCashOrderidmenu.AsString;
    QmsOrderID.ParamByName('harga_asli').AsFloat := fordermenu.vtCashOrderharga_asli.AsFloat;
    QmsOrderID.ParamByName('diskon').AsFloat := fordermenu.vtCashOrderdiskon.AsFloat;
    QmsOrderID.ParamByName('qty').AsInteger := fordermenu.vtCashOrderqty.AsInteger;
    QmsOrderID.ParamByName('status').AsInteger := 1;
    QmsOrderID.ParamByName('cs').AsString := fordermenu.vtCashOrdercs.AsString;
    QmsOrderID.ExecSQL;
    fordermenu.vtCashOrder.Next;
  end;

  Qbarangcari.Active := False;
  Qbarangcari.SQL.Text := ' SELECT     torder_menu.qty * tkomposisi.qtysatuan AS [Total Order Barang], tkomposisi.qtysatuan AS [Jumlah Barang], ' +
                      ' tbarang.namabarang AS [Nama Barang], tkomposisi.idbarang as IDbarang, torder_menu.qty AS [Jumlah Menu Order], torder_menu.idmenu as IDmenu,  Tbarang.harga AS Harga' +
                      ' FROM         torder_menu INNER JOIN ' +
                      ' tkomposisi ON torder_menu.idmenu = tkomposisi.idmenu LEFT OUTER JOIN ' +
                      ' tbarang ON tkomposisi.idbarang = tbarang.idbarang ' +
                      ' WHERE     (torder_menu.idorder = ' + QuotedStr(ids) + ') ' ;
  Qbarangcari.Active := True;
  Qbarangcari.First;
  while not (Qbarangcari.eof) do
  begin
        Qbarangkeluar.SQL.Text := ' INSERT INTO tbarang_keluar ' +
                            ' (idorder, idmenu, idbarang, tgl_keluar, qty, harga ) ' +
                            ' VALUES     (:idorder, :idmenu, :idbarang, :tgl_keluar, :qty, :harga) ';
        Qbarangkeluar.Prepare;
        Qbarangkeluar.Params[0].AsString := ids;
        Qbarangkeluar.Params[1].AsString := Qbarangcari.fieldbyName('IDmenu').AsString;
        Qbarangkeluar.Params[2].AsString := Qbarangcari.FieldbyName('IDbarang').AsString;
        Qbarangkeluar.Params[3].AsString := FormatDateTime('yyyy-MM-dd HH:mm:ss ', now) ;
        Qbarangkeluar.Params[4].AsInteger := Qbarangcari.fieldByName('Total Order Barang').AsInteger;
        Qbarangkeluar.Params[5].AsFloat := Qbarangcari.fieldByName('Harga').AsFloat ;
        Qbarangkeluar.ExecSQL;
    Qbarangcari.Next;
  end;




  //cetak

{    with FrmInduk.RvProject1 do
    begin
      SetParam('Nama', edtNama.Text);
      SetParam('checkin', FormatDateTime('dd MMM yyyy HH:mm', Now));
      SetParam('MenuDisc', edtMenuDiskon.Text);
      SetParam('MenuTot', edtMenuTotal.Text);
      SetParam('SubTotal', edtMenuTotal.Text);
      SetParam('Total', edtTotal.Text);
      SetParam('Tax', edtTax.Text);
      SetParam('Service', edtService.Text);
      SetParam('GrandTotal', edtGrandTotal.Text);
      SetParam('terbilang', Num2Word(pvGrandTotal));
      SetParam('orderid', idv);
      SetParam('MemberDisc', edtmemberdiskon.Text);
      ExecuteReport('FbillCashCetak');
    end;
}

  Printer.BeginDoc;
  with Printer.Canvas do
  begin
    MoveTo(7,91);
    LineTo(448, 91);
    TextOut(10,96,  'Nama                :');
    TextOut(140,96, edtNama.Text);
    TextOut(370,96, idv);
    TextOut(10,108,  'Tanggal            :');
    TextOut(140,108, FormatDateTime('dd MMM yyyy HH:mm', Now));
//    TextOut(10,120, 'Check Out         :');
//    TextOut(140,120, FormatDateTime('dd MMM yyyy HH:mm', Qharga.fieldByName('chekout').AsDateTime));
    MoveTo(7,133);
    LineTo(448, 133);

    printbaris := 146;
{    if jumRoom > 0 then
    begin
      Font.Style := [fsBold];
      TextOut(10,printbaris, 'ROOM CHARGE');
      Font.Style := [];
      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;
      TextOut(20,printbaris, 'Room Name');
      TextOut(260,printbaris, 'Price');
      TextOut(340,printbaris, 'Hour');
      TextOut(395,printbaris, 'Jumlah');

      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;
      while not(QtabelRoom.Eof) do
      begin
        TextOut(20,printbaris, QtabelRoomRoom.AsString);
        TextOut(240,printbaris, RightStr('.                    ' + FormatFloat('#,0', QtabelRoomHarga.AsFloat),12));
        TextOut(345,printbaris, RightStr('.                    ' + FormatFloat('#,0', QtabelRoomDurasi.AsFloat),3));
        TextOut(375,printbaris,RightStr('                    ' + FormatFloat('#,0', QtabelRoomJumlah.AsFloat),12));

        printbaris:=printbaris + 12;
        QtabelRoom.Next;
      end;
      printbaris:=printbaris - 12;
      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;
      TextOut(375,printbaris,RightStr('                    ' + edtRoomHarga.Text,12));
      printbaris:=printbaris + 12;

    end;
}
      //MENU
//    if jumMenu > 0 then
//    begin
      Font.Style := [fsBold];
      TextOut(10,printbaris, 'MENU CHARGE');
      Font.Style := [];
      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;
      TextOut(20,printbaris, 'Menu');
      TextOut(260,printbaris, 'Price');
      TextOut(342,printbaris, 'Qty.');
      TextOut(395,printbaris, 'Jumlah');
      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;

      fordermenu.vtCashOrder.First;
      while not(fordermenu.vtCashOrder.Eof) do
      begin

        TextOut(20,printbaris, fordermenu.vtCashOrdermenu.AsString);
        TextOut(240,printbaris, RightStr('.                    ' + FormatFloat('#,0', fordermenu.vtCashOrderhardisk.AsFloat),12));
        TextOut(345,printbaris, RightStr('.                    ' + FormatFloat('#,0', fordermenu.vtCashOrderqty.AsFloat),3));
        TextOut(375,printbaris,RightStr('                    ' + FormatFloat('#,0', fordermenu.vtCashOrdertotal.AsFloat),12));

        printbaris:=printbaris + 12;
        fordermenu.vtCashOrder.Next;

        if printbaris >= 510 then
        begin
          //Footer
          MoveTo(7, 528);
          LineTo(448, 528);
          TextOut(10,531, FrmInduk.pbidkasir);
          Printer.NewPage;
          printbaris := 80;
        end;

      end;
      printbaris:=printbaris - 12;
      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;
      TextOut(375,printbaris,RightStr('                    ' + edtMenuHarga.Text,12));
      printbaris:=printbaris + 12;
//    end;

        if printbaris >= 520 then
        begin
          //Footer
          MoveTo(7, 528);
          LineTo(448, 528);
          TextOut(10,531, FrmInduk.pbidkasir);
          Printer.NewPage;
          printbaris := 80;
        end;


{      //OTHERS
    if jumDll > 0 then
    begin
      Font.Style := [fsBold];
      TextOut(10,printbaris, 'OTHER CHARGE');
      Font.Style := [];
      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;
      TextOut(20,printbaris, 'Keterangan');
      TextOut(260,printbaris, 'Price');
      TextOut(342,printbaris, 'Qty.');
      TextOut(395,printbaris, 'Jumlah');
      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;
      while not(QtabelDll.Eof) do
      begin
        TextOut(20,printbaris, QtabelDllketerangan.AsString);
        TextOut(240,printbaris, RightStr('.                    ' + FormatFloat('#,0', QtabelDllHarga.AsFloat),12));
        TextOut(345,printbaris, RightStr('.                    ' + FormatFloat('#,0', QtabelDllQty.AsFloat),3));
        TextOut(375,printbaris,RightStr('                    ' + FormatFloat('#,0', QtabelDllJumlah.AsFloat),12));

        printbaris:=printbaris + 12;
        QtabelDll.Next;
      end;
      printbaris:=printbaris - 12;
      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;
      TextOut(375,printbaris,RightStr('                    ' + edtOthersHarga.Text,12));
      printbaris:=printbaris + 12;
    end;
}
    printbaris:=printbaris + 6;



    if printbaris >= 400 then
    begin
      //Footer
      MoveTo(7, 528);
      LineTo(448, 528);
      TextOut(10,531, FrmInduk.pbidkasir);
      Printer.NewPage;
      printbaris := 80;
    end;

      printbaris:=printbaris - 12;

      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      //tentukan titik awal garis vertikal
      grsatas := printbaris;

      LineTo(448, printbaris);
      printbaris:=printbaris + 4;

    Font.Style := [fsBold];
    TextOut(10,printbaris, 'SUB TOTAL');
    TextOut(375,printbaris,RightStr('                    ' + edtTotal.Text,12));
    Font.Style := [];
      printbaris:=printbaris + 12;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;

//    if jumMenu > 0 then
//    begin
      TextOut(20,printbaris, 'Menu Disc.');
      TextOut(240,printbaris,RightStr('                    ' + edtMenuDiskon.Text,12));
      printbaris:=printbaris + 12;
//    end;
{    if jumDll > 0 then
    begin
      TextOut(20,printbaris, 'Others Disc.');
      TextOut(240,printbaris,RightStr('                    ' + edtOthersDiskon.Text,12));
      printbaris:=printbaris + 12;
    end;
}
      TextOut(20,printbaris, 'Member Disc.');
      TextOut(240,printbaris,RightStr('                    ' + edtmemberdiskon.Text,12));
      printbaris:=printbaris + 12;

      printbaris:=printbaris - 12;
      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 4;

    Font.Style := [fsBold];
    TextOut(10,printbaris, 'TOTAL');
    TextOut(375,printbaris,RightStr('                    ' + edtsubtotal.Text,12));
    Font.Style := [];
      printbaris:=printbaris + 12;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 2;

      if (QmasaFreepassid_cabang.Value = 20) or  //bali
         (QmasaFreepassid_cabang.Value = 26) or  //depok
         (QmasaFreepassid_cabang.Value = 28) then //cirebon
      begin
        TextOut(20,printbaris, 'Tax & Service   ');
        TextOut(100,printbaris, FloatToStr(pvtax + pvservice) +'%');
        TextOut(240,printbaris,RightStr('                    ' + FormatFloat('#,0', (pvtotal * pvtax / 100)+ (pvtotal * pvservice / 100)),12));
        printbaris:=printbaris + 12;
      end
      else
      begin
        TextOut(20,printbaris, 'Tax ');
        TextOut(100,printbaris, FloatToStr(pvtax) +'%');
        TextOut(240,printbaris,RightStr('                    ' + edtTax.Text,12));
        printbaris:=printbaris + 12;
        TextOut(20,printbaris, 'Service ');
        TextOut(100,printbaris, FloatToStr(pvservice) +'%');
        TextOut(240,printbaris,RightStr('                    ' + edtService.Text,12));
      end;


      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 6;

   if pvvoucher > 0 then
   begin
      TextOut(20,printbaris, 'Voucher Disc.');
      TextOut(240, printbaris,RightStr('                   ' + edtvoucher.Text,12));
      printbaris:=printbaris + 10;
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
      printbaris:=printbaris + 6;
   end;

    Font.Style := [fsBold];
    TextOut(10,printbaris, 'GRAND TOTAL');
    Font.Style := [fsBold];
    TextOut(375,printbaris,RightStr('                    ' + edtGrandTotal.Text,12));
    Font.Style := [fsItalic];
    printbaris:=printbaris + 16;
    terbilang :=Num2Word(pvGrandTotal);
    j :=  StrLen(Pchar(terbilang)) div 54;
    k := StrLen(Pchar(terbilang));
    if StrLen(Pchar(terbilang)) mod 54 > 0 then j:=j+1;
    for i := 1 to j do
    begin
          if k > 54 then
          begin
            for k := 54 downto 1 do
            begin
              if terbilang[k] = ' ' then break;
            end;
          end;
          TextOut(10,printbaris, LeftStr(terbilang, k));
          terbilang := RightStr(terbilang,StrLen(Pchar(terbilang))-k);
          k := StrLen(Pchar(terbilang));
          printbaris:=printbaris + 12;
    end;

    Font.Style := [];
      MoveTo(7,printbaris);
      LineTo(448, printbaris);
 //   MoveTo(7, printbaris - 125 - (j * 12));
    MoveTo(7, grsatas);
    LineTo(7, printbaris);
    MoveTo(447, grsatas);
    LineTo(447, printbaris);


    printbaris:=printbaris + 12;
    Font.Style := [fsBold, fsItalic];
    font.Size := 10;
    if QmasaFreepasspesanbill.Value = '' then
      TextOut(20,printbaris, '                      ***     Terimakasih atas Kunjungan Anda     ***')
    else
      TextOut(20,printbaris, QmasaFreepasspesanbill.AsString);
    Font.Style := [];
    font.Size := 8;
    printbaris:=printbaris + 12;
    
    //Footer
    MoveTo(7, 528);
    LineTo(448, 528);
    TextOut(10,531, FrmInduk.pbidkasir);
  end;
  Printer.EndDoc;


  Close;
  fordermenu.Close;
end;

procedure TFbillCashOrder.FormCreate(Sender: TObject);
begin
  Qmember.Active := True;
  QmsOrderID.Active := False;
  QmsOrderID.SQL.Text := ' SELECT     tax, service '+
                     ' FROM         Tsetup ';
  QmsOrderID.Active := True;
  pvtax := QmsOrderID.FieldByName('tax').AsFloat;
  pvservice := QmsOrderID.FieldByName('service').AsFloat;

  cmbMemberClick(Sender);
end;

procedure TFbillCashOrder.edtMenuDiskonEnter(Sender: TObject);
begin
  edtMenuDiskon.Text := FormatFloat('0', pvMenuDisc);
  edtMenuDiskon.SelectAll;
   DBmember.Visible := False;
end;

procedure TFbillCashOrder.edtMenuDiskonExit(Sender: TObject);
var x : Real;
begin
 if edtMenuDiskon.Text = '' then exit;
  try
    x:=StrToFloat(edtMenuDiskon.Text);
  except
    x:=0;
  end;

   if x > pbtotal then
      x:=pbtotal;

  pvMenuDisc := x;

  if not(pbtotal=0) then
    spnMenu.Text:= FormatFloat('0', pvMenuDisc / pbtotal * 100)
  else
    spnMenu.Text:='0';

  jumlah;


end;

procedure TFbillCashOrder.spnMenuChange(Sender: TObject);
begin
if Not (spnMenu.Focused) then exit;
  if spnMenu.Text = '' then exit;
  pvMenuDisc := pbtotal * spnMenu.Value / 100;
  jumlah;
end;

procedure TFbillCashOrder.btnExitClick(Sender: TObject);
begin
  fordermenu.Enabled := True;
  fordermenu.cmbroom.ItemIndex := 0;
  fordermenu.cmbroomClick(Sender);
  Close;
end;

procedure TFbillCashOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QmasaFreepass.Active := False;
  Action := caFree;
end;

procedure TFbillCashOrder.edtNamaEnter(Sender: TObject);
begin
  edtNama.SelectAll;
end;

procedure TFbillCashOrder.edtIdMemberChange(Sender: TObject);
begin
  if cmbMember.ItemIndex = 1 then
  begin
    Qmember.Locate('id', edtIdMember.Text, [loPartialKey]);
    edtNama.Text := Qmember.FieldByName('nama').AsString;
  end;
end;

procedure TFbillCashOrder.edtIdMemberExit(Sender: TObject);
begin
  if edtIdMember.Text = '' then edtNama.Text := '';
  edtIdMember.Text := Qmemberid.AsString;
  edtNama.Text := Qmembernama.AsString;
  pvmemberdisc := Qmemberdiskonmenu.AsInteger;
  jumlah;
end;

procedure TFbillCashOrder.cmbMemberClick(Sender: TObject);
begin

    edtIdMember.Text := '';
    edtNama.Text := '';
  if cmbMember.ItemIndex = 0 then
  begin
    Qmember.Active := False;
    edtNama.Text := 'VIZTA';
    edtIdMember.Visible := False;
    edtNama.Left := 168;
    pvmemberdisc := 0;
    DBmember.Visible := False;
    jumlah;
  end
  else
  begin
    Qmember.Active := True;
    edtIdMember.Visible := True;
    edtNama.Left := 304;
    DBmember.Visible := True;
    edtIdMember.SetFocus;
    
  end;
end;

procedure TFbillCashOrder.edtIdMemberEnter(Sender: TObject);
begin
  DBmember.Visible := True;
  edtIdMember.SelectAll;
end;

procedure TFbillCashOrder.edtIdMemberKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    DBGordermenu.SetFocus;
  end;
end;

procedure TFbillCashOrder.pencet(Sender: TObject; var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFbillCashOrder.spnMenuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    edtMenuDiskon.SetFocus;
  end;
end;

procedure TFbillCashOrder.DBGordermenuKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    spnMenu.SetFocus;
  end;
end;

procedure TFbillCashOrder.edtIdMemberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = vk_down then
  begin
    Qmember.Next;
    edtIdMember.Text := Qmemberid.AsString;
    edtNama.Text := Qmembernama.AsString;
    edtIdMember.SelectAll;
  end;

  if key = vk_up then
  begin
    Qmember.Prior;
    edtIdMember.Text := Qmemberid.AsString;
    edtNama.Text := Qmembernama.AsString;
    edtIdMember.SelectAll;
  end;

  if key = VK_RETURN	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;

end;

procedure TFbillCashOrder.DBmemberDblClick(Sender: TObject);
begin
  edtNama.Text := Qmembernama.AsString;
  edtIdMember.Text := Qmemberid.AsString;

  pvmemberdisc := Qmemberdiskonmenu.AsInteger;
  DBmember.Visible := False;
  edtmemberdiskon.SetFocus;
  jumlah;

end;

procedure TFbillCashOrder.DBmemberDrawColumnCell(Sender: TObject;
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
    DBmember.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFbillCashOrder.DBmemberKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then DBmemberDblClick(sender);
end;

procedure TFbillCashOrder.spnMenuEnter(Sender: TObject);
begin
   DBmember.Visible := False;
end;

procedure TFbillCashOrder.edtMenuDiskonKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFbillCashOrder.edtMenuTotalEnter(Sender: TObject);
begin
   DBmember.Visible := False;
end;

procedure TFbillCashOrder.edtsubtotalEnter(Sender: TObject);
begin
   DBmember.Visible := False;
end;

procedure TFbillCashOrder.edtTaxEnter(Sender: TObject);
begin
   DBmember.Visible := False;
end;

procedure TFbillCashOrder.edtServiceEnter(Sender: TObject);
begin
   DBmember.Visible := False;
end;

procedure TFbillCashOrder.edtGrandTotalEnter(Sender: TObject);
begin
   DBmember.Visible := False;
end;

procedure TFbillCashOrder.edtMenuHargaEnter(Sender: TObject);
begin
   DBmember.Visible := False;
end;

procedure TFbillCashOrder.edtvoucherExit(Sender: TObject);
var x : Real;
begin
  if edtvoucher.Text = '' then exit;
  try
    x:=StrToFloat(edtvoucher.Text);
  except
    x:=0;
  end;

   if x > pbtotal then
      x:=pbtotal;

  pvvoucher := x;

  jumlah;
end;

procedure TFbillCashOrder.edtvoucherEnter(Sender: TObject);
begin
  edtvoucher.Text := FormatFloat('0', pvvoucher);
  edtvoucher.SelectAll;
end;

end.
