unit UNewStop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, RpDefine, RpCon, RpConDS, DB, DBTables, StdCtrls,
  Spin, bsSkinCtrls, Grids, DBGrids, ExtCtrls, AEDIT, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, BusinessSkinForm, MemDS, VirtualTable;

type
  TFNewStop = class(TForm)
    lblRoom: TLabel;
    Nama: TLabel;
    Label6: TLabel;
    Label19: TLabel;
    btnCancel: TbsSkinButton;
    btnOK: TbsSkinButton;
    edtNama: TEdit;
    btnRoom: TbsSkinButton;
    btnMenu: TbsSkinButton;
    btnOthers: TbsSkinButton;
    edtOrderID: TEdit;
    edtIdMember: TEdit;
    edtJumOrang: TAEdit;
    chkPajak: TCheckBox;
    DBPromo: TDBGrid;
    Qharga: TZQuery;
    DStabel: TDataSource;
    QtabelRoom: TZQuery;
    QtabelRoomRoom: TStringField;
    QtabelRoomCheckIn: TDateTimeField;
    QtabelRoomCheckOut: TDateTimeField;
    QtabelRoomDurasi: TSmallintField;
    QtabelRoomHarga: TFloatField;
    QtabelRoomdiskon: TFloatField;
    QtabelRoomJumlah: TFloatField;
    QtabelMenu: TZQuery;
    QtabelMenuMenuItem: TStringField;
    QtabelMenuQty: TLargeintField;
    QtabelMenuHarga: TFloatField;
    QtabelMenuJumlah: TFloatField;
    QtabelDll: TZQuery;
    QtabelDllketerangan: TStringField;
    QtabelDllQty: TSmallintField;
    QtabelDllHarga: TFloatField;
    QtabelDllJumlah: TFloatField;
    RvRoom: TRvDataSetConnection;
    RvMenu: TRvDataSetConnection;
    RvDll: TRvDataSetConnection;
    Qmember: TZQuery;
    Qmemberid: TStringField;
    Qmemberid_kategori: TSmallintField;
    Qmembernama: TStringField;
    Qmemberdiskonroom: TFloatField;
    Qmemberdiskonmenu: TFloatField;
    Qmembertgl_registrasi: TDateTimeField;
    Qmemberberlaku: TDateTimeField;
    bsSkinMessage1: TbsSkinMessage;
    QmsOrderID: TZQuery;
    Qbarang: TZQuery;
    Qbarangkeluar: TZQuery;
    Qbarangcari: TZQuery;
    Qfreepass: TZQuery;
    Qfreepassid: TSmallintField;
    Qfreepasskategori: TStringField;
    Qfreepassharga: TFloatField;
    Qfreepassfreepass: TFloatField;
    QmasaFreepass: TZQuery;
    QmasaFreepassmasaFreepass: TIntegerField;
    QmasaFreepasspesanbill: TStringField;
    QmasaFreepasspromobill: TSmallintField;
    QmasaFreepassid_cabang: TSmallintField;
    QmasaFreepasskode: TStringField;
    Qkategori: TZQuery;
    Qkategoriidroom: TSmallintField;
    Qkategoriidkategori: TSmallintField;
    Qother: TZQuery;
    QcashBack: TZQuery;
    QcashBackidkategori: TSmallintField;
    QcashBackmin_charge: TFloatField;
    QcashBackvoucher: TFloatField;
    DataSource1: TDataSource;
    Qpromo: TZQuery;
    DSPromo: TDataSource;
    cmbMember: TComboBox;
    QTdisc: TZQuery;
    QTdiscdother: TFloatField;
    QTdiscdmenu: TFloatField;
    QTdiscdroom: TFloatField;
    QTdiscfreejam: TIntegerField;
    Label5: TLabel;
    cmbtambah: TComboBox;
    Label13: TLabel;
    Qtambah: TZQuery;
    cmember: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinPanel1: TbsSkinPanel;
    Label14: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Label2: TLabel;
    edtdiskonvoucher: TAEdit;
    spnRoom: TSpinEdit;
    spnMenu: TSpinEdit;
    spnOthers: TSpinEdit;
    edtRoomHarga: TAEdit;
    edtMenuHarga: TAEdit;
    edtOthersHarga: TAEdit;
    edtJumlahHarga: TAEdit;
    edtRoomDiskon: TAEdit;
    edtMenuDiskon: TAEdit;
    edtOthersDiskon: TAEdit;
    edtJumlahDiskon: TAEdit;
    edtRoomTotal: TAEdit;
    edtMenuTotal: TAEdit;
    edtOthersTotal: TAEdit;
    edtTotal: TAEdit;
    edtTax: TAEdit;
    edtService: TAEdit;
    edtGrandTotal: TAEdit;
    edtmemberdiskon: TAEdit;
    AEdit1: TAEdit;
    AEdit2: TAEdit;
    AEdit3: TAEdit;
    AEdit4: TAEdit;
    AEdit5: TAEdit;
    AEdit6: TAEdit;
    AEdit7: TAEdit;
    AEdit8: TAEdit;
    AEdit9: TAEdit;
    Label15: TLabel;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinPanel4: TbsSkinPanel;
    bsSkinPanel5: TbsSkinPanel;
    bsSkinPanel6: TbsSkinPanel;
    bsSkinPanel7: TbsSkinPanel;
    edtPromo: TEdit;
    BsPromo: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    Label20: TLabel;
    grpRoom: TbsSkinPanel;
    DBGrid1: TDBGrid;
    edtTotalGrid: TAEdit;
    qTutupRoom: TZQuery;
    Qpromoid: TStringField;
    Qpromopromo: TStringField;
    Qpromoactive: TStringField;
    chkAuto: TbsSkinCheckRadioBox;
    chkPromo: TbsSkinCheckRadioBox;
    chkManual: TbsSkinCheckRadioBox;
    QmyROOM: TZQuery;
    QmyRoom2: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure jumlah;
    procedure mulai;
    procedure Nolkan;
    procedure CekHak;
    procedure prcUbahMember;
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure pencet(Sender: TObject; var Key: Char);
    procedure pencetNomer(Sender: TObject; var Key: Char);
    procedure btnRoomClick(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure btnOthersClick(Sender: TObject);
    procedure cmbMemberClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtIdMemberEnter(Sender: TObject);
    procedure edtIdMemberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNamaChange(Sender: TObject);
    procedure BsPromoClick(Sender: TObject);
    procedure DBPromoDblClick(Sender: TObject);
    procedure DBPromoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBPromoKeyPress(Sender: TObject; var Key: Char);
    procedure edtRoomDiskonExit(Sender: TObject);
    procedure edtRoomDiskonEnter(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure spnRoomChange(Sender: TObject);
    procedure spnRoomClick(Sender: TObject);
    procedure spnMenuChange(Sender: TObject);
    procedure spnOthersChange(Sender: TObject);
    procedure edtMenuDiskonEnter(Sender: TObject);
    procedure edtMenuDiskonExit(Sender: TObject);
    procedure edtOthersDiskonEnter(Sender: TObject);
    procedure edtOthersDiskonExit(Sender: TObject);
    procedure edtdiskonvoucherExit(Sender: TObject);
    procedure edtdiskonvoucherEnter(Sender: TObject);
    procedure cmemberClick(Sender: TObject);
    procedure edtIdMemberKeyPress(Sender: TObject; var Key: Char);
    procedure chkManualClick(Sender: TObject);
    procedure chkAutoClick(Sender: TObject);
    procedure chkPromoClick(Sender: TObject);
 private
    pvHargaRoom, pvHargaMenu, pvHargaOthers, pvtax, pvservice, pvtaxmenu,pvtaxother, pvserviceother, pvservicemenu : Real;
    pvRoomDisc, pvMenuDisc, pvOtherDisc, pvmemberdiskonroom, pvmemberdiskonmenu, pvHanyaRoom, pvHanyaMenu : Real;
    pvtotmemberdiskon, pvtotmemberroom, pvtotmembermenu, pvvoucher : Real;
    pvtotal, pvGrandTotal, tser, ttax : Real;
    tutup : Boolean;
    vDiscMenu : Integer;
    pvArrayDiskonRoom : array of Real;
    pvTaxCaption, pvServiceCaption : string;
    vTaxRoom, vServiceRoom : Real;
    vTaxMenu, vServiceMenu : Real;
    vTaxOther, vServiceOther : Real;
    promo: String;
  public
    pbidanak : integer;
    pbIdRoom : integer;
    pbnama, pbIdOrder : String;
    jenisdiskon : integer;
    bypass,hak :Boolean;
    activityMemberId : String;
  end;

var
  FNewStop: TFNewStop;

implementation
      uses StrUtils, DateUtils, Unit3, UntBill, konversi, Printers, Math, unit1,
           untAutorisasi, untMemberCari;
{$R *.dfm}

procedure TFNewStop.prcUbahMember;
begin
  if (edtIdMember.Text <> '00000') or (edtIdMember.Text <> '')then
  begin
    Qmember.Active := False;
    Qmember.SQL.Text := 'SELECT     tmember.id, tmember.id_kategori, tmember.nama, tmember.tgl_registrasi, tmember.berlaku, tkategorimember.diskonroom,   '+
                        ' tkategorimember.diskonmenu     '+
                        ' FROM         tmember INNER JOIN      '+
                        ' tkategorimember ON tmember.id_kategori = tkategorimember.id     '+
                        ' WHERE     (tmember.id = '+ QuotedStr (Trim(edtIdMember.Text)) +') '+
                        ' ORDER BY tmember.id  ';

    Qmember.Active := True;

    edtIdMember.Text  := Qmemberid.AsString;
    edtNama.Text := Qmembernama.AsString;
    pvmemberdiskonroom := Qmemberdiskonroom.AsInteger;
    pvmemberdiskonmenu := Qmemberdiskonmenu.AsInteger;
    jumlah;
  end;
end;

procedure TFNewStop.CekHak;
var qKasirAdmin : TZQuery;
begin
  qKasirAdmin :=  TZQuery.Create(Self);
  qKasirAdmin.Connection := modul.Database1;
  qKasirAdmin.Active := False;
  qKasirAdmin.SQL.Text := ' SELECT     admin '+
                          ' FROM       tkasir '+
                          ' WHERE      (login = '+QuotedStr(FrmInduk.pbidkasir)+') ';
  qKasirAdmin.Active := True;
  if QkasirAdmin.FieldByName('admin').AsString = '1' then
  begin
    hak := true;
  end
  else
  begin
    hak := false;
  end;

  qKasirAdmin.Active := False;
  qKasirAdmin.Destroy;
end;

procedure TFNewStop.mulai;
var
  pvHargaMenu2: Real;
begin
  Qharga.Active := False;
  Qharga.SQL.Text := 'UPDATE    troom ' +
                     'SET       billstop = 1 '+
                     'WHERE     (id = ' + IntToStr(pbIdRoom) +
                     ') ';
  Qharga.ExecSQL;

  Qharga.SQL.Text := 'SELECT     SUM((harga_asli * durasi - diskon)) AS jumlah '+
                     'FROM         torder_room '+
                     'WHERE     (idorder = ' + QuotedStr(pbIdOrder) +
                     ') GROUP BY idorder ';
  Qharga.Active := True;
  pvHargaRoom := Qharga.FieldByName('jumlah').AsFloat;

  Qharga.Active := False;
  Qharga.SQL.Text := 'SELECT     SUM((harga_asli - diskon) * qty) AS jumlah '+
                     'FROM         torder_menu '+
                     'WHERE     (idorder = ' + QuotedStr(pbIdOrder) +
                     ') and (status = 1) GROUP BY idorder ';
  Qharga.Active := True;
  pvHargaMenu := Qharga.FieldByName('jumlah').AsFloat;

  pvHargaMenu2 := 0;
  Qharga.Active := False;
  Qharga.SQL.Text := 'select (harga_asli-diskon)*qty total from torder_menu where idorder=' + QuotedStr(pbIdOrder) + ' and status=1';
  Qharga.Active := True;
  while Qharga.Eof = False do
  begin
    pvHargaMenu2 := pvHargaMenu2 + Qharga.FieldByName('total').AsFloat;
    Qharga.Next;
  end;

  if pvHargaMenu2 > pvHargaMenu then
  begin
    pvHargaMenu := pvHargaMenu2;
  end;

  Qharga.Active := False;
  Qharga.SQL.Text := 'SELECT     SUM(jumlah * harga) AS jumlah '+
                     'FROM         torder_dll '+
                     'WHERE     (idorder = ' + QuotedStr(pbIdOrder) +
                     ') GROUP BY idorder ';
  Qharga.Active := True;
  pvHargaOthers := Qharga.FieldByName('jumlah').AsFloat;

  //ROOM
  QtabelRoom.Active := False;
  QtabelRoom.SQL.Text := 'SELECT     troom.namaroom AS Room, torder_room.tglStart AS `Check In`, torder_room.tglStop AS `Check Out`, torder_room.durasi AS Durasi, '+
                     '           torder_room.harga_asli  AS Harga, torder_room.diskon AS Diskon,  (torder_room.harga_asli  * torder_room.durasi - torder_room.diskon) AS Jumlah '+
                     'FROM       torder_room INNER JOIN ' +
                     '           troom ON torder_room.idroom = troom.id ' +
                     'WHERE     (torder_room.idorder = ' + QuotedStr(pbIdOrder) +
                     ') ORDER BY tglStart desc';
  QtabelRoom.Active := True;
  //MENU
  QtabelMenu.Active := False;
  QtabelMenu.SQL.Text := 'SELECT     tmenu.menu AS `Menu Item`, cast(torder_menu.qty as signed integer) AS Qty, torder_menu.harga_asli - torder_menu.diskon AS Harga, '+
                     '           (torder_menu.harga_asli - torder_menu.diskon) * torder_menu.qty AS Jumlah '+
                     ' FROM      torder_menu INNER JOIN '+
                     '           tmenu ON torder_menu.idmenu = tmenu.id ' +
                     'WHERE     (torder_menu.idorder = ' + QuotedStr(pbIdOrder) +') and (torder_menu.status = 1)';
  QtabelMenu.Active := True;
  //DLL
  QtabelDll.Active := False;
  QtabelDll.SQL.Text := 'SELECT     keterangan, jumlah AS Qty, harga AS Harga, jumlah * harga AS Jumlah '+
                     ' FROM         torder_dll ' +
                     ' WHERE     (idorder = ' + QuotedStr(pbIdOrder) +')';
  QtabelDll.Active := True;

  chkAuto.Checked := True;
end;

procedure TFNewStop.jumlah;
var 
    QnominalAutoPajak : TZQuery;
begin

  edtRoomHarga.Text := FormatFloat('#,0',pvHargaRoom);
  edtMenuHarga.Text := FormatFloat('#,0',pvHargaMenu);
  edtOthersHarga.Text := FormatFloat('#,0',pvHargaOthers );
  edtJumlahHarga.Text :=  FormatFloat('#,0',pvHargaRoom + pvHargaMenu + pvHargaOthers );

  edtRoomDiskon.Text := FormatFloat('#,0',pvRoomDisc );
  edtMenuDiskon.Text := FormatFloat('#,0',pvMenuDisc );
  edtOthersDiskon.Text := FormatFloat('#,0',pvOtherDisc );
  edtdiskonvoucher.Text := FormatFloat('#,0',pvvoucher) ;

  pvtotmemberroom :=  pvHargaRoom - pvRoomDisc;
  pvtotmembermenu :=  pvHargaMenu - pvMenuDisc;

  pvHanyaRoom := (pvtotmemberroom * pvmemberdiskonroom /100);
  pvHanyaMenu := (pvtotmembermenu * pvmemberdiskonmenu /100);

  AEdit5.Text := FormatFloat('#,0',pvHanyaRoom);
  AEdit6.Text := FormatFloat('#,0',pvHanyaMenu);

  edtRoomTotal.Text := FormatFloat('#,0',(pvHargaRoom - pvRoomDisc - pvHanyaRoom ));
  edtMenuTotal.Text := FormatFloat('#,0',(pvHargaMenu - pvMenuDisc - pvHanyaMenu ));
  edtOthersTotal.Text := FormatFloat('#,0',pvHargaOthers - pvOtherDisc);

  pvtotmemberdiskon := pvHanyaRoom + pvHanyaMenu;
  edtmemberdiskon.Text :=  FormatFloat('#,0',pvtotmemberdiskon);
  edtJumlahDiskon.Text := FormatFloat('#,0', pvRoomDisc + pvMenuDisc + pvOtherDisc );

  pvtotal :=  (pvHargaRoom - pvRoomDisc- pvHanyaRoom )+
              (pvHargaMenu - pvMenuDisc - pvHanyaMenu ) +
              (pvHargaOthers - pvOtherDisc) ;

  edtTotal.Text := FormatFloat('#,0',pvtotal);

  //Room Tax & Service
  //vServiceRoom := ((pvHargaRoom - pvRoomDisc- pvHanyaRoom )  * pvservice / 100);
  //vServiceRoom := ((pvHargaRoom)  * pvservice / 100);
  vServiceRoom := ((pvHargaRoom - pvRoomDisc)  * pvservice / 100);
  AEdit3.Text := FormatFloat('#,0', vServiceRoom);
  //vTaxRoom := (((pvHargaRoom - pvRoomDisc- pvHanyaRoom )  * pvservice / 100)+ (pvHargaRoom - pvRoomDisc- pvHanyaRoom )) * pvtax / 100;
  //vTaxRoom := (((pvHargaRoom) * pvservice / 100) + (pvHargaRoom)) * pvtax / 100;
  vTaxRoom := (((pvHargaRoom - pvRoomDisc)  * pvservice / 100)+ (pvHargaRoom - pvRoomDisc)) * pvtax / 100;

  AEdit1.Text := FormatFloat('#,0', vTaxRoom);

  //menu tax & service
  //vServiceMenu := ((pvHargaMenu - pvMenuDisc - pvHanyaMenu ) * pvservicemenu / 100);
  vServiceMenu := ((pvHargaMenu) * pvservicemenu / 100);
  AEdit4.Text := FormatFloat('#,0', vServiceMenu);
  //vTaxMenu := (((pvHargaMenu - pvMenuDisc - pvHanyaMenu) * pvservicemenu / 100)+
  //                                    (pvHargaMenu - pvMenuDisc - pvHanyaMenu )) * pvtaxmenu / 100;
  vTaxMenu := (((pvHargaMenu) * pvservicemenu / 100) + (pvHargaMenu)) * pvtaxmenu / 100;
  AEdit2.Text := FormatFloat('#,0', vTaxMenu);

  //other tax & service
  //vServiceOther := ((pvHargaOthers - pvOtherDisc) * pvserviceother / 100);
  vServiceOther := ((pvHargaOthers) * pvserviceother / 100);
  AEdit8.Text := FormatFloat('#,0', vServiceOther);
  //vTaxOther := (((pvHargaOthers - pvOtherDisc) * pvserviceother / 100)+
  //                                    (pvHargaOthers - pvOtherDisc)) * pvtaxother / 100;
  vTaxOther := (((pvHargaOthers) * pvserviceother / 100)+
                                      (pvHargaOthers)) * pvtaxother / 100;
  AEdit7.Text := FormatFloat('#,0', vTaxOther);


  ttax := vTaxRoom + vTaxMenu + vTaxOther;
  tser := vServiceRoom + vServiceMenu + vServiceOther;
  //total tax & Service
  AEdit9.Text := FormatFloat('#,0',ttax + tser + pvtotal );
  edtTax.Text  :=  FormatFloat('#,0',ttax);
  edtService.Text := FormatFloat('#,0', tser);

  //Grand total
  pvGrandTotal :=  pvtotal + ttax + tser - pvvoucher;

  edtGrandTotal.Text := FormatFloat('#,0',pvGrandTotal );

  QnominalAutoPajak :=  TZQuery.Create(Self);
  QnominalAutoPajak.Connection := modul.Database1;
  QnominalAutoPajak.SQL.Text := ' SELECT     NominalAutoPajak '+
                                ' FROM         Tsetup ';
  QnominalAutoPajak.Active := True;
  if (pvGrandTotal < QnominalAutoPajak.FieldByName('NominalAutoPajak').AsFloat) and
     (QnominalAutoPajak.FieldByName('NominalAutoPajak').AsFloat > 0) then
  begin
    chkPajak.Checked := True;
  end
  else
    chkPajak.Checked := False;

  QnominalAutoPajak.Active := False;
  QnominalAutoPajak.Destroy;
end;

procedure TFNewStop.FormCreate(Sender: TObject);
begin

  promo := '';
    
  Qharga.Connection := modul.Database1;
  QtabelRoom.Connection := modul.Database1;
  QtabelMenu.Connection := modul.Database1;
  QtabelDll.Connection := modul.Database1;
  Qmember.Connection := modul.Database1;
  QmsOrderID.Connection := modul.Database1;
  Qbarang.Connection := modul.Database1;
  Qbarangkeluar.Connection := modul.Database1;
  Qbarangcari.Connection := modul.Database1;
  Qfreepass.Connection := modul.Database1;
  QmasaFreepass.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;
  Qother.Connection := modul.Database1;
  QcashBack.Connection := modul.Database1;
  Qpromo.Connection := modul.Database1;
  QTdisc.Connection := modul.Database1;
  Qtambah.Connection := modul.Database1;
  qTutupRoom.Connection := modul.Database1;

  Height := 738;

  if FrmInduk.pbbill then Fbill.Enabled := False;

  FrmInduk.pbBillStop := True;
  hak := False;

  Qharga.Active := False;
  Qharga.SQL.Text := ' SELECT     tax, service, taxmenu, servicemenu, taxother, serviceother, TaxCaption, ServiceCaption  '+
                     ' FROM         Tsetup ';
  Qharga.Active := True;
  pvtaxmenu := Qharga.FieldByName('taxmenu').AsFloat;
  pvservicemenu := Qharga.FieldByName('servicemenu').AsFloat;
  pvtax := Qharga.FieldByName('tax').AsFloat;
  pvservice := Qharga.FieldByName('service').AsFloat;

  pvtaxother := Qharga.FieldByName('taxother').AsFloat;
  pvserviceother :=  Qharga.FieldByName('serviceother').AsFloat;

  if Qharga.FieldByName('TaxCaption').AsString = '' then
    pvTaxCaption := 'Tax'
  else
    pvTaxCaption := Qharga.FieldByName('TaxCaption').AsString;

  if Qharga.FieldByName('ServiceCaption').AsString = '' then
    pvServiceCaption := 'Service'
  else
    pvServiceCaption := Qharga.FieldByName('ServiceCaption').AsString;

  pvRoomDisc := 0;
  pvMenuDisc := 0;
  pvOtherDisc := 0;
  pvmemberdiskonroom := 0;
  pvmemberdiskonmenu := 0;
  pvvoucher := 0;

  cmbtambah.ItemIndex := 0;

  CekHak;
  cmbMember.Enabled := hak;

  FrmInduk.activityLogin := FrmInduk.pbidkasir;
  FrmInduk.activityName := FrmInduk.pbnamakasir;
end;

procedure TFNewStop.btnOKClick(Sender: TObject);
var id, idpajak, pvPajak : integer;
    ids, idspajak, idorderpajak, idmember : String;
    invoice: String;
    tambahjam: integer;
    query : TZQuery;
    pvHargaMenu2: Real;
begin

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  pvHargaMenu2 := 0;
  query.SQL.Text := 'select (harga_asli-diskon)*qty total from torder_menu where idorder=' + QuotedStr(pbIdOrder) + ' and status=1';
  query.Active := True;
  while query.Eof = False do
  begin
    pvHargaMenu2 := pvHargaMenu2 + query.FieldByName('total').AsFloat;
    query.Next;
  end;
  if pvHargaMenu2 > pvHargaMenu then
  begin
    bsSkinMessage1.MessageDlg( 'Terjadi selisih harga. Tolong ulangi lagi.', mtError, [mbOK], 0);
    Close;
    Exit;
  end;

  if (edtOrderID.Text = '')  then
  begin
    bsSkinMessage1.MessageDlg( '        Data tidak valid         ', mtError, [mbOK], 0);
    Exit;
  end;
  if (pbIdOrder = '') then
  begin
    bsSkinMessage1.MessageDlg( '        Data tidak valid         ', mtError, [mbOK], 0);
    Exit;
  end;
  if (pbIdRoom < 1) or (pbIdRoom > 999)then
  begin
    bsSkinMessage1.MessageDlg( '        Data tidak valid         ', mtError, [mbOK], 0);
    Exit;
  end;

  if edtNama.Text = '' then
  begin
    bsSkinMessage1.MessageDlg( '        Nama tamu tidak lengkap         ', mtError, [mbOK], 0);
    edtNama.SetFocus;
    Exit;
  end;

  //CEK SUDAH DALAM KONDISI START / STOP
  QmasaFreepass.Active := True;
  Qother.Active := False;
  Qother.SQL.Text := ' SELECT     billstop ' +
                    '            FROM         troom ' +
                    '            WHERE     (id = ' + IntToStr(pbIdRoom) + ')';
  Qother.Active := True;
  if not(Qother.FieldByName('billstop').AsString = '1') then
  begin
    beep;
    bsSkinMessage1.MessageDlg( '        Room status has changed         ', mtError, [mbOK], 0);
    Close;
    Exit;
  end;

  QtabelRoom.Active := False;
  QtabelMenu.Active := False;
  QtabelDll.Active := False;

  QtabelRoom.Active := True;
  QtabelMenu.Active := True;
  QtabelDll.Active := True;

  QtabelRoom.First;
  QtabelMenu.First;
  QtabelDll.First;

  while not QtabelRoom.Eof do
  begin
    QtabelRoom.Next;
  end;
  while not QtabelMenu.Eof do
  begin
    QtabelMenu.Next;
  end;
  while not QtabelDll.Eof do
  begin
    QtabelDll.Next;
  end;

  QtabelRoom.First;
  QtabelMenu.First;
  QtabelDll.First;

  Qharga.Active := False;
  Qharga.SQL.Text := ' SELECT     durasi, waktu, jambooking '+
                     ' FROM         troom '+
                     ' WHERE     (idorder = '+ QuotedStr(pbIdOrder) +')';
  Qharga.Active := True;


  //NO INVOICE
  QmsOrderID.Active := False;
  QmsOrderID.SQL.Text := ' SELECT     MAX(RIGHT(invoice, 4)) AS id  ' +
                         ' FROM         tpayment ' +
                         ' WHERE     (invoice LIKE ' + QuotedStr(FormatDateTime('RyyMMdd',Now)+'%')+')';
  QmsOrderID.Active := True;
  try
    id := StrToInt(QmsOrderID.FieldByName('id').Value);
  except
    id :=0;
  end;
  id := id+1;
  ids := FormatDateTime('RyyMMdd',Now) + FormatFloat('0000',id);

  //NO INVOICE PAJAK
  idorderpajak := '';
  idspajak := '';

  if chkPajak.Checked then
  begin
    QmsOrderID.Active := False;
    QmsOrderID.SQL.Text := ' SELECT     MAX(RIGHT(invoice, 4)) AS id  ' +
                           ' FROM         tbayar ' +
                           ' WHERE     (invoice LIKE ' + QuotedStr(FormatDateTime('RyyMMdd',Now)+'%')+')';
    QmsOrderID.Active := True;
    try
      idpajak := StrToInt(QmsOrderID.FieldByName('id').Value);
    except
      idpajak :=0;
    end;
    idpajak := idpajak+1;
    idspajak := FormatDateTime('RyyMMdd',Now) + FormatFloat('0000',idpajak);
    QmsOrderID.Active := False;

    //NO IDORDER PAJAK
    QmsOrderID.Active := False;
    QmsOrderID.SQL.Text := ' SELECT     MAX(RIGHT(idorder, 4)) AS id  ' +
                           ' FROM         tbayar ' +
                           ' WHERE     (idorder LIKE ' + QuotedStr(FormatDateTime('yyMMdd',Now)+'%')+')';
    QmsOrderID.Active := True;
    try
      idpajak := StrToInt(QmsOrderID.FieldByName('id').Value);
    except
      idpajak :=0;
    end;
    idpajak := idpajak+1;
    idorderpajak := FormatDateTime('yyMMdd',Now) + FormatFloat('0000',idpajak);
    QmsOrderID.Active := False;
  end;

  if cmbMember.ItemIndex > 0 then
    idmember := edtIdMember.Text
  else
    idmember := '00000';

  if promo = '' then
  begin
    if chkPromo.Checked then
    begin
      promo := edtPromo.Text;
    end
    else if chkManual.Checked then
    begin
      promo := 'Manual';
    end;
  end;

  modul.Database1.StartTransaction;
  try
    if (cmbtambah.ItemIndex = 0) and (Now >= IncHour(Qharga.fieldByName('waktu').AsDateTime, Max(Qharga.fieldByName('durasi').AsInteger, Qharga.fieldByName('jambooking').AsInteger))) then
    begin
      qTutupRoom.Active := False;
      qTutupRoom.SQL.Text :=     'UPDATE    troom '+
                                 ' SET       status = 0 ' +
                                           ' , chekin = 0 ' +
                                           ' , idorder = ' + QuotedStr('') +
                                           ' , durasi =  0' +
                                           ' , nama = ' + QuotedStr('') +
                                           ' , roomcharge = 0 ' +
                                           ' , menucharge = 0 ' +
                                           ' , othercharge = 0 ' +
                                           ' , jambooking = 0 ' +
                                           ' , tambahjam = 0 ' +
                                           ' , corection = 0 ' +
                                           ' , billstop = 0 ' +
                                ' WHERE     (id = ' + IntToStr(pbIdRoom) +
                                ' ) ';
      qTutupRoom.ExecSQL;
      modul.syncDataToBackupProcedure(Handle, qTutupRoom.SQL.Text);

      if modul.My2.Connected =  True then
      begin
        try
          QmyRoom2.Active := False;
          QmyRoom2.SQL.Text := 'UPDATE room SET STATUS = ' + QuotedStr('chekout') + ', APA= ' + QuotedStr('tutup') +
                                    ' WHERE IDROOM = ' + IntToStr(pbIdRoom);
          QmyRoom2.ExecSQL;
        except
          modul.My2.Connected := False;
        end;
      end;

      try
        QmyROOM.Active := False;
        QmyROOM.SQL.Text := 'UPDATE room SET STATUS = ' + QuotedStr('chekout') + ', APA= ' + QuotedStr('tutup') +
                                  ' WHERE IDROOM = ' + IntToStr(pbIdRoom);
        QmyROOM.ExecSQL;
      except
        bsSkinMessage1.MessageDlg( '        Lost connection to Server 1        ', mtError, [mbOK], 0);
      end;
    end
    else
    begin
      tambahjam := StrToInt(cmbtambah.Text);
      if (Qharga.fieldByName('durasi').AsInteger > 0) or (MinutesBetween(Qharga.fieldByName('waktu').AsDateTime, Now) >= 15) then
      begin
        tambahjam := tambahjam + MinutesBetween(Now, IncHour(Qharga.fieldByName('waktu').AsDateTime, Max(Qharga.fieldByName('durasi').AsInteger, Qharga.fieldByName('jambooking').AsInteger)));
      end;
      qTutupRoom.Active := False;
      qTutupRoom.SQL.Text :=    'UPDATE    troom '+
                                ' SET   roomcharge = 0 ' +
                                           ' , startextra = ' + QuotedStr(FormatDateTime('yyyy-MM-dd hh:mm:ss', now)) +
                                           ' , menucharge = 0 ' +
                                           ' , othercharge = 0 ' +
                                           ' , jambooking = 0 ' +
                                           ' , tambahjam = ' + IntToStr(tambahjam) +
                                           ' , billstop = 0 ' +
                                ' WHERE     (id = ' + IntToStr(pbIdRoom) +
                                ' ) ';
      qTutupRoom.ExecSQL;
      modul.syncDataToBackupProcedure(Handle, qTutupRoom.SQL.Text);

      if tambahjam = 0 then
      begin

        qTutupRoom.Active := False;
        qTutupRoom.SQL.Text :=     'UPDATE    troom '+
                                   ' SET       status = 0 ' +
                                             ' , chekin = 0 ' +
                                             ' , idorder = ' + QuotedStr('') +
                                             ' , durasi =  0' +
                                             ' , nama = ' + QuotedStr('') +
                                             ' , roomcharge = 0 ' +
                                             ' , menucharge = 0 ' +
                                             ' , othercharge = 0 ' +
                                             ' , jambooking = 0 ' +
                                             ' , tambahjam = 0 ' +
                                             ' , corection = 0 ' +
                                             ' , billstop = 0 ' +
                                  ' WHERE     (id = ' + IntToStr(pbIdRoom) +
                                  ' ) ';
        qTutupRoom.ExecSQL;
        modul.syncDataToBackupProcedure(Handle, qTutupRoom.SQL.Text);

        if modul.My2.Connected =  True then
        begin
          try
            QmyRoom2.Active := False;
            QmyRoom2.SQL.Text := 'UPDATE room SET STATUS = ' + QuotedStr('chekout') + ', APA= ' + QuotedStr('tutup') +
                                      ' WHERE IDROOM = ' + IntToStr(pbIdRoom);
            QmyRoom2.ExecSQL;
          except
            modul.My2.Connected := False;
          end;
        end;

        try
          QmyROOM.Active := False;
          QmyROOM.SQL.Text := 'UPDATE room SET STATUS = ' + QuotedStr('chekout') + ', APA= ' + QuotedStr('tutup') +
                                    ' WHERE IDROOM = ' + IntToStr(pbIdRoom);
          QmyROOM.ExecSQL;
        except
          bsSkinMessage1.MessageDlg( '        Lost connection to Server 1        ', mtError, [mbOK], 0);
        end;
      end;
    end;

    if chkPajak.Checked then
      pvPajak := 1
    else
      pvPajak := 0;

    Qharga.Active := False;
    Qharga.SQL.Text := 'UPDATE    tpayment ' +
                       'SET  tglstop = ' + QuotedStr(FormatDateTime('yyyy-MM-dd hh:mm:ss', now)) +
                       ',                  nama = ' + QuotedStr(edtNama.Text) +
                       ',                  idroom = ' + IntToStr(pbIdRoom) +
                       ',                  payment = 0 '+
                       ',                  disroom = ' + FormatFloat('0', pvRoomDisc) +
                       ',                  dismenu = ' + FormatFloat('0', pvMenuDisc) +
                       ',                  disdll = ' + FormatFloat('0', pvHargaOthers * spnOthers.Value / 100 ) +
                       ',                  discmember = ' + FormatFloat('0',pvtotmemberdiskon) +
                       ',                  extradiskon = ' + FormatFloat('0',pvvoucher) +
                       ',                  tax    = ' + FormatFloat('0',ttax) +
                       ',                  service    = ' + FormatFloat('0',tser) +
                       ',                  croom    = ' + FormatFloat('0',pvHargaRoom) +
                       ',                  cmenu    = ' + FormatFloat('0',pvHargaMenu) +
                       ',                  cother    = ' + FormatFloat('0',pvHargaOthers)+
                       ',                  idmember = ' + QuotedStr(idmember)+
                       ',                  kasir = '+ QuotedStr(FrmInduk.pbidkasir)+
                       ',                  invoice = '+ QuotedStr(ids) +
                       ',                  orang = ' + edtJumOrang.Text +
                       ',                  pajak = ' + IntToStr(pvPajak) +
                       ',                  jenisdiskon = '+ IntToStr(jenisdiskon) +
                       ',                  invoice2 = ' + QuotedStr(idspajak) +
                       ',                  idorder2 = ' + QuotedStr(idorderpajak) +
                       ',                  promo = ' + QuotedStr(promo) +
                       ' WHERE     (idorder = '+ QuotedStr(pbIdOrder) +
                       ')';
    Qharga.ExecSQL;
    modul.syncDataToBackupProcedure(Handle, Qharga.SQL.Text);

    if chkPajak.Checked then
    begin
      QmsOrderID.Active := False;
      QmsOrderID.SQL.Text := ' SELECT     tanggal AS chekin '+
                         ' FROM         tpayment '+
                         ' WHERE     (idorder = '+ QuotedStr(pbIdOrder) + ')';
      QmsOrderID.Active := True;

      Qharga.SQL.Text := 'INSERT INTO tbayar ' +
                       ' (idorder, invoice, tanggal, tglstop, payment, nama, idroom, disroom, dismenu, disdll, discmember, extradiskon ' +
                       ', tax, service, croom, cmenu, cother, idmember, kasir, orang, jenisdiskon, taxRoom, taxMenu, taxOther, serviceRoom, serviceMenu, serviceOther, promo) '+
                       'VALUES     ( '+ QuotedStr(idorderpajak) +
                       ', ' + QuotedStr(idspajak) +
                       ', '+ QuotedStr(FormatDateTime('yyyy-MM-dd hh:mm:ss', QmsOrderID.fieldByName('chekin').AsDateTime)) +
                       ', ' + QuotedStr(FormatDateTime('yyyy-MM-dd hh:mm:ss', now)) +
                       ', 0'+
                       ', ' +                 QuotedStr(edtNama.Text) +
                       ', ' + IntToStr(pbIdRoom) +
                       ', ' + FormatFloat('0', 0) +
                       ', ' + FormatFloat('0', pvMenuDisc) +
                       ', ' + FormatFloat('0', pvHargaOthers * spnOthers.Value / 100 ) +
                       ', ' + FormatFloat('0',pvtotmemberdiskon) +
                       ', ' + FormatFloat('0',pvvoucher) +
                       ', ' + FormatFloat('0',ttax) +
                       ', ' + FormatFloat('0',tser) +
                       ', ' + FormatFloat('0',pvHargaRoom - pvRoomDisc) +
                       ', ' + FormatFloat('0',pvHargaMenu) +
                       ', ' + FormatFloat('0',pvHargaOthers)+
                       ', ' + QuotedStr(idmember)+
                       ', '+ QuotedStr(FrmInduk.pbidkasir)+
                       ', ' + edtJumOrang.Text +
                       ', '+ IntToStr(jenisdiskon) +
                       ', ' + FormatFloat('0', vTaxRoom) +
                       ', ' + FormatFloat('0', vTaxMenu) +
                       ', ' + FormatFloat('0', vTaxOther) +
                       ', ' + FormatFloat('0', vServiceRoom) +
                       ', ' + FormatFloat('0', vServiceMenu) +
                       ', ' + FormatFloat('0', vServiceOther) +
                       ', ' + QuotedStr(promo) +
                       ')';
      Qharga.ExecSQL;
      modul.syncDataToBackupProcedure(Handle, Qharga.SQL.Text);
      QmsOrderID.Active := False;
    end;

//    Fbill.QmsOther.ExecSQL;
//    Qharga.ExecSQL;
    modul.Database1.Commit;
  except
    on e: Exception do
    begin
      modul.Database1.Rollback;
      modul.log('except');
      modul.log(e.ClassName + ': ' + e.Message);
      Exit;
    end;
  end;

  Qharga.Active := False;
  Qharga.SQL.Text := ' SELECT     tanggal AS chekin, tglstop AS chekout '+
                     ' FROM         tpayment '+
                     ' WHERE     (idorder = '+ QuotedStr(pbIdOrder) + ')';
  Qharga.Active := True;

  Qbarangcari.Active := False;
  Qbarangcari.SQL.Text := ' SELECT     torder_menu.qty * tkomposisi.qtysatuan AS `Total Order Barang`, tkomposisi.qtysatuan AS `Jumlah Barang`, ' +
                      ' tbarang.namabarang AS `Nama Barang`, tkomposisi.idbarang as IDbarang, torder_menu.qty AS `Jumlah Menu Order`, torder_menu.idmenu as IDmenu , Tbarang.harga AS Harga' +
                      ' FROM         torder_menu INNER JOIN ' +
                      ' tkomposisi ON torder_menu.idmenu = tkomposisi.idmenu LEFT OUTER JOIN ' +
                      ' tbarang ON tkomposisi.idbarang = tbarang.idbarang ' +
                      ' WHERE     (torder_menu.idorder = ' + QuotedStr(pbIdOrder) + ') ' ;
  Qbarangcari.Active := True;
  Qbarangcari.First;
  while not (Qbarangcari.eof) do
  begin
    Qbarangkeluar.SQL.Text := ' INSERT INTO tbarang_keluar ' +
                        ' (idorder, idmenu, idbarang, qty, harga ) ' +
                        ' VALUES     (:idorder, :idmenu, :idbarang, :qty, :harga) ';
    Qbarangkeluar.Params[0].AsString := pbIdOrder;
    Qbarangkeluar.Params[1].AsString := Qbarangcari.fieldbyName('IDmenu').AsString;
    Qbarangkeluar.Params[2].AsString := Qbarangcari.FieldbyName('IDbarang').AsString;
    Qbarangkeluar.Params[3].AsFloat := Qbarangcari.fieldByName('Total Order Barang').AsFloat;
    Qbarangkeluar.Params[4].AsFloat := Qbarangcari.fieldByName('Harga').AsFloat;
    Qbarangkeluar.ExecSQL;
    modul.syncDataToBackupProcedure(Handle, Qbarangkeluar.SQL.Text);
    Qbarangcari.Next;
  end;

  //cetak
  if chkPajak.Checked then
  begin
    invoice := idspajak;
  end
  else
  begin
    invoice := ids;
  end;

  FrmInduk.printInvoice(invoice, pbIdOrder, chkPajak.Checked, False);

  fbill.pbCekInvoiceError[pbidanak] := True;
{  with Fbill do
  begin
    edtOrderID[pbidanak].Text := '';
    //edtKategori[pbidanak].Text := '';
    edtNama[pbidanak].Text := '';
    edtTanggal[pbidanak].Text := '';
    spnInterfal[pbidanak].Text := '0';
    edtDurasi[pbidanak].Text := '';
    edtRoomCharge[pbidanak].Text := '';
    edtMenuCharge[pbidanak].Text := '';
    edtOtherCharge[pbidanak].Text := '';
    edtTotalCharge[pbidanak].Text := '';
    //memKasir[pbidanak].Text := '';
    anak[pbidanak].Color := $00FF6833;
    spnInterfal[pbidanak].Color := clWhite;

    btnStart[pbidanak].Visible := False;
    btnStop[pbidanak].Visible := True;
  end;
  Fbill.btnStart[pbidanak].Visible := True;
  Fbill.btnStop[pbidanak].Visible := False;
}

  if idmember <> activityMemberId then
  begin
    FrmInduk.logActivity('Checkout - Member - ' + pbIdOrder + ' - ' + idmember);
  end;

  if chkManual.Checked then
  begin
    FrmInduk.logActivity('Checkout - Discount Manual - ' + pbIdOrder);
  end;

  tutup := True;
  Close;
end;

procedure TFNewStop.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFNewStop.btnRoomClick(Sender: TObject);
begin
  QtabelRoom.Active := False;
  QtabelRoom.SQL.Text := 'SELECT     troom.namaroom AS Room, torder_room.tglStart AS `Check In`, torder_room.tglStop AS `Check Out`, torder_room.durasi AS Durasi, '+
                     '           torder_room.harga_asli AS Harga,  torder_room.diskon AS Diskon,  (torder_room.harga_asli  * torder_room.durasi - torder_room.diskon)AS Jumlah '+
                     'FROM       torder_room INNER JOIN ' +
                     '           troom ON torder_room.idroom = troom.id ' +
                     'WHERE     (torder_room.idorder = ' + QuotedStr(pbIdOrder) +
                     ') ORDER BY tglStart desc';
  QtabelRoom.Active := True;

  Qharga.Active := False;
  Qharga.SQL.Text := 'SELECT     SUM((harga_asli  * durasi - diskon)) AS jumlah '+
                     'FROM         torder_room '+
                     'WHERE     (idorder = ' + QuotedStr(pbIdOrder) +
                     ') ';
  Qharga.Active := True;

  edtTotalGrid.Text := FormatFloat('#,0',Qharga.FieldByName('jumlah').AsFloat);

  DStabel.DataSet := QtabelRoom;
  DBGrid1.Columns[0].Width := 80;
  DBGrid1.Columns[1].Width := 112;
  DBGrid1.Columns[2].Width := 112;
  DBGrid1.Columns[3].Width := 60;
  DBGrid1.Columns[4].Width := 150;
  DBGrid1.Columns[5].Width := 150;
  DBGrid1.Columns[6].Width := 150;
end;

procedure TFNewStop.btnMenuClick(Sender: TObject);
begin
  QtabelMenu.Active := False;
  QtabelMenu.SQL.Text := 'SELECT     tmenu.menu AS `Menu Item`, cast(SUM(torder_menu.qty) as signed integer) AS Qty, torder_menu.harga_asli - torder_menu.diskon AS Harga, '+
                     '            SUM((torder_menu.harga_asli - torder_menu.diskon) * torder_menu.qty) AS Jumlah '+
                     ' FROM         torder_menu INNER JOIN '+
                     '           tmenu ON torder_menu.idmenu = tmenu.id ' +
                     ' WHERE     (torder_menu.idorder = ' + QuotedStr(pbIdOrder) +') and (torder_menu.status =1)'+
                     ' GROUP BY tmenu.menu, torder_menu.harga_asli - torder_menu.diskon' +
                     ' ORDER BY tmenu.menu';
  QtabelMenu.Active := True;

  Qharga.Active := False;
  Qharga.SQL.Text := 'SELECT     SUM((harga_asli - diskon) * qty) AS jumlah '+
                     'FROM         torder_menu '+
                     'WHERE     (idorder = ' + QuotedStr(pbIdOrder) +
                     ') and (status =1) ';
  Qharga.Active := True;
  edtTotalGrid.Text := FormatFloat('#,0',Qharga.FieldByName('jumlah').AsFloat);

  DStabel.DataSet := QtabelMenu;
  DBGrid1.Columns[0].Width := 450;
  DBGrid1.Columns[1].Width := 64;
  DBGrid1.Columns[2].Width := 150;
  DBGrid1.Columns[3].Width := 150;
end;

procedure TFNewStop.btnOthersClick(Sender: TObject);
begin
 QtabelDll.Active := False;
  QtabelDll.SQL.Text := ' SELECT     Keterangan, jumlah AS Qty, harga AS Harga, jumlah * harga AS Jumlah '+
                        ' FROM         torder_dll ' +
                        ' WHERE     (idorder = ' + QuotedStr(pbIdOrder) +')';
  QtabelDll.Active := True;

  Qharga.Active := False;
  Qharga.SQL.Text := 'SELECT     SUM(jumlah * harga) AS jumlah '+
                     'FROM         torder_dll '+
                     'WHERE     (idorder = ' + QuotedStr(pbIdOrder) +
                     ') ';
  Qharga.Active := True;
  edtTotalGrid.Text := FormatFloat('#,0',Qharga.FieldByName('jumlah').AsFloat);

  DStabel.DataSet := QtabelDll;
  DBGrid1.Columns[0].Width := 450;
  DBGrid1.Columns[1].Width := 64;
  DBGrid1.Columns[2].Width := 150;
  DBGrid1.Columns[3].Width := 150;
end;

procedure TFNewStop.cmbMemberClick(Sender: TObject);
begin
 if cmbMember.ItemIndex = 0 then
  begin
    Qmember.Active := False;
    edtIdMember.Visible := False;
    edtNama.Left := edtOrderID.Left;
    spnRoom.Value := 0;
    spnMenu.Value := 0 ;
    spnOthers.Value := 0;
    pvmemberdiskonroom := 0;
    pvmemberdiskonmenu := 0;
    edtNama.Text := pbnama;
    edtNama.ReadOnly := False;
    jumlah;
  end
  else
  begin
    edtIdMember.Visible := True;
    edtNama.Left := edtOrderID.Left + edtIdMember.Width + 8;
    edtNama.ReadOnly := True;

    Application.CreateForm(TFmemberCari, FmemberCari);
    FmemberCari.Show;
    FmemberCari.vasal := 3;
    FmemberCari.ComboBox1.SetFocus;
  end;
end;

procedure TFNewStop.pencet(Sender: TObject; var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFNewStop.pencetNomer(Sender: TObject; var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

procedure TFNewStop.FormClose(Sender: TObject; var Action: TCloseAction);
var
  roomcharge: double;
begin

  if fbill.durasiBeforeStop > 0 then
  begin

    Qharga.Active := false;
    Qharga.SQL.Text := 'update torder_room set durasi = ' + IntToStr(fbill.durasiBeforeStop) + ' where idorder = ' + QuotedStr(pbIdOrder) + ' order by tglStart desc limit 1';
    Qharga.ExecSQL;

    Qharga.Active := False;
    Qharga.SQL.Text := 'SELECT     SUM((harga_asli  * durasi - diskon)) AS jumlah '+
                     'FROM         torder_room '+
                     'WHERE     (idorder = ' + QuotedStr(pbIdOrder) +
                     ')  ';
    Qharga.Active := True;
    roomcharge := Qharga.fieldbyname('jumlah').AsFloat;

    Qharga.Active := False;
    Qharga.SQL.Text := 'update troom set roomcharge = ' + FloatToStr(roomcharge) + ', durasi = ' + IntToStr(fbill.durasiBeforeStop) + ' where idorder = ' + QuotedStr(pbIdOrder);
    Qharga.ExecSQL;
  end;

  Qharga.Active := False;
  Qharga.SQL.Text := 'update troom set billstop = 0 where idorder = ' + QuotedStr(pbIdOrder);
  Qharga.ExecSQL;

  FrmInduk.pbBillStop := False;
  Action := caFree;

  if FrmInduk.pbbill then Fbill.Enabled := True;
end;

procedure TFNewStop.edtIdMemberEnter(Sender: TObject);
begin
  edtIdMember.SelectAll;
end;

procedure TFNewStop.edtIdMemberKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if hak = true then
begin

  end;
end;

procedure TFNewStop.edtNamaChange(Sender: TObject);
begin
{  if edtIdMember.Focused then exit;
  if cmbMember.ItemIndex = 1 then
  begin
    if Qmember.Active then
    begin
      Qmember.Locate('nama', edtNama.text,[loPartialKey, loCaseInsensitive]);
      edtIdMember.Text := Qmemberid.Value;
    end;
  end; }
end;

procedure TFNewStop.BsPromoClick(Sender: TObject);
begin
  DBPromo.Height := 224;
  DBPromo.Top := edtPromo.Top + 125;
  DBPromo.Visible :=True;

  Qpromo.Active := False;
  Qpromo.SQL.Text :='SELECT     id, promo, active '+
                    ' FROM         tdisc '+
                    ' WHERE     (active = 1) AND (otomatis = 0) '+
                    ' ORDER BY promo';
  Qpromo.Active := True;
end;

procedure TFNewStop.DBPromoDblClick(Sender: TObject);
var i, vIdKategoriRoom : integer;
    wktAwal, wktBerjalan, tglPromoAwal, tglPromoAkhir : TDateTime;
    qCekPromo, qCekDiskon : TZQuery;
    vPromoMenuProses : Boolean;
    vFreeroom : Integer;
    vfreeroomNominalProses : Boolean;
const Hari: array[1..7] of string =
           ('mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun');
begin
  if not(chkPromo.Checked) then
  begin
    chkPromo.Checked := True;
  end;
    
  edtPromo.Text := Qpromopromo.AsString;
  qCekPromo := TZQuery.Create(Self);
  qCekPromo.Connection := modul.Database1;
  qCekDiskon := TZQuery.Create(Self);
  qCekDiskon.Connection := modul.Database1;

  vPromoMenuProses := False;
  vFreeroomNominalProses := False;


  if not(chkAuto.Checked) then
  begin
    pvRoomDisc := 0;
    pvMenuDisc := 0;
    vDiscMenu := 0;
    for i := 1 to QtabelRoomDurasi.AsInteger do
    begin
      pvArrayDiskonRoom[i] := 0;
    end;
  end;

  qCekPromo.Active := False;
  qCekPromo.SQL.Text := ' SELECT     id, promo, tglAwal, tglAkhir, timeAwal, timeAkhir, discMenu, sun, mon, wed, tue, thu, fri, sat, freeroom, freeroomnominal '+
                        ' FROM         tdisc '+
                        ' WHERE id = ' + QuotedStr(Qpromoid.AsString);
  qCekPromo.Active := True;

  wktAwal := QtabelRoomCheckIn.AsDateTime;
  wktBerjalan := QtabelRoomCheckIn.AsDateTime;
  tglPromoAwal := EncodeDateTime(YearOf(qCekPromo.FieldByName('tglAwal').AsDateTime),
                                 MonthOf(qCekPromo.FieldByName('tglAwal').AsDateTime),
                                 DayOf(qCekPromo.FieldByName('tglAwal').AsDateTime),
                                 0,0,0,0
                                 );
  tglPromoAkhir := EncodeDateTime(YearOf(qCekPromo.FieldByName('tglAkhir').AsDateTime),
                                 MonthOf(qCekPromo.FieldByName('tglAkhir').AsDateTime),
                                 DayOf(qCekPromo.FieldByName('tglAkhir').AsDateTime),
                                 23,59,59,0
                                 );

  if (wktBerjalan >= tglPromoAwal) and (wktBerjalan <= tglPromoAkhir ) then
  begin
    If pvHargaRoom > 0 then
    begin
      vFreeroom := qCekPromo.FieldByName('freeroom').AsInteger;
      qCekDiskon.Active := False;
      qCekDiskon.SQL.Text := ' SELECT     idkategori '+
                             ' FROM         troom '+
                             ' WHERE     (id = '+ IntToStr(pbIdRoom)+')';
      qCekDiskon.Active := True;
      vIdKategoriRoom := qCekDiskon.FieldByName('idkategori').AsInteger;

      for i:= 1 to QtabelRoomDurasi.AsInteger do
      begin
        tglPromoAwal := EncodeDateTime(YearOf(wktAwal), MonthOf(wktAwal), DayOf(wktAwal),
                                       HourOf(qCekPromo.FieldByName('timeAwal').AsDateTime),
                                       MinuteOf(qCekPromo.FieldByName('timeAwal').AsDateTime),0,0
                                       );
        tglPromoAkhir := EncodeDateTime(YearOf(wktAwal), MonthOf(wktAwal), DayOf(wktAwal),
                                       HourOf(qCekPromo.FieldByName('timeAkhir').AsDateTime),
                                       MinuteOf(qCekPromo.FieldByName('timeAkhir').AsDateTime),0,0
                                       );

        if (qCekPromo.FieldByName('timeAwal').AsDateTime > qCekPromo.FieldByName('timeAkhir').AsDateTime) AND
           (wktAwal > EncodeDateTime(YearOf(wktAwal), MonthOf(wktAwal), DayOf(wktAwal),8,0,0,0))
        then
        begin
           tglPromoAkhir := IncDay(tglPromoAkhir,1);
        end;
        if (qCekPromo.FieldByName('timeAwal').AsDateTime > qCekPromo.FieldByName('timeAkhir').AsDateTime) AND
           (wktAwal <= EncodeDateTime(YearOf(wktAwal), MonthOf(wktAwal), DayOf(wktAwal),8,0,0,0))
        then
        begin
           tglPromoAwal := IncDay(tglPromoAwal,-1);
        end;

        if (wktBerjalan >= tglPromoAwal) and (wktBerjalan <= tglPromoAkhir) then
        begin
          if qCekPromo.FieldByName(Hari[DayOfTheWeek(wktBerjalan)]).AsString = '1' then
          begin
            if vFreeroom = 0 then
            begin
              qCekDiskon.Active := False;
              qCekDiskon.SQL.Text :=  ' SELECT     iddisc, idroom, diskon '+
                                      ' FROM       Tdiskonroom '+
                                      ' WHERE     (iddisc = '+QuotedStr(Qpromoid.AsString) + ') AND '+
                                                 '(idroom = '+IntToStr(vIdKategoriRoom)+')';
              qCekDiskon.Active := True;
              pvRoomDisc := pvRoomDisc + qCekDiskon.FieldByName('diskon').AsFloat;
            end
            else
            begin
              if not(QtabelRoomHarga.AsFloat = pvArrayDiskonRoom[i])  then
              begin
                pvRoomDisc := pvRoomDisc + QtabelRoomHarga.AsFloat - pvArrayDiskonRoom[i] ;
                vFreeroom := vFreeroom - 1;
              end;
            end;

            if not(vfreeroomNominalProses) then
            begin
              vfreeroomNominalProses := True;
              pvRoomDisc := pvRoomDisc +  qCekPromo.FieldByName('freeroomnominal').AsFloat;
            end;

            if not(vPromoMenuProses) then
            begin
              vPromoMenuProses := True;
              vDiscMenu := vDiscMenu + qCekPromo.FieldByName('discMenu').AsInteger;
            end;
          end;
        end;
        wktBerjalan := IncHour(wktBerjalan, 1);
      end;
    end
    else
    begin
      if qCekPromo.FieldByName(Hari[DayOfTheWeek(wktBerjalan)]).AsString = '1' then
      begin
        if not(vPromoMenuProses) then
        begin
          vDiscMenu := vDiscMenu + qCekPromo.FieldByName('discMenu').AsInteger;
        end;
      end;
      {}
    end;
  end;
  if vDiscMenu > 100 then vDiscMenu := 100;
  If pvHargaMenu > 0 then
  begin
       spnMenu.Value := vDiscMenu;
       pvMenuDisc := pvHargaMenu * vDiscMenu / 100;
  end;

  pvMenuDisc := pvHargaMenu * spnMenu.Value / 100;

  if pvRoomDisc > pvHargaRoom then pvRoomDisc:=pvHargaRoom;
  if pvMenuDisc > pvHargaMenu then pvMenuDisc:=pvHargaMenu;
  jumlah;

  DBPromo.Visible :=False;
  qCekPromo.Destroy;
  qCekDiskon.Destroy;
end;

procedure TFNewStop.DBPromoDrawColumnCell(Sender: TObject;
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
    DBPromo.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFNewStop.DBPromoKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBPromoDblClick(sender);
end;

procedure TFNewStop.edtRoomDiskonExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtRoomDiskon.Text);
  except
    x:=0;
  end;
  if x > pvHargaRoom then
      x:=pvHargaRoom;

  pvRoomDisc := x;

  if not(pvHargaRoom=0) then
    spnRoom.Text:= FormatFloat('0', pvRoomDisc / pvHargaRoom * 100)
  else
    spnRoom.Text:='0';

  jumlah;
end;

procedure TFNewStop.Nolkan;
begin
  promo := '';
  edtPromo.Text := '';
  If pvHargaRoom > 0 then
  begin
        spnRoom.Value := 0;
        pvRoomDisc := pvHargaRoom * spnRoom.Value / 100;
        jumlah;
  end;
  If pvHargaMenu > 0 then
  begin
       spnMenu.Value := 0;
       pvMenuDisc := pvHargaMenu * spnMenu.Value / 100;
       jumlah;
  end;
  If pvHargaOthers > 0 then
  begin
      spnOthers.Value := 0;
      pvOtherDisc := pvHargaOthers * spnOthers.Value / 100;
      jumlah;
  end;
  spnRoom.Enabled := false;
  spnMenu.Enabled := false;
  spnOthers.Enabled := false;
  edtRoomDiskon.Enabled := false;
  edtMenuDiskon.Enabled := false;
  edtOthersDiskon.Enabled := false;
end;

procedure TFNewStop.edtRoomDiskonEnter(Sender: TObject);
begin
  edtRoomDiskon.Text := FormatFloat('0', pvRoomDisc);
  edtRoomDiskon.SelectAll;
end;

procedure TFNewStop.RadioButton1Click(Sender: TObject);
begin
  if hak then
  begin
    Nolkan;
    spnRoom.Enabled := True;
    spnMenu.Enabled := True;
    spnOthers.Enabled := True;
    edtRoomDiskon.Enabled := True;
    edtMenuDiskon.Enabled := True;
    edtOthersDiskon.Enabled := True;
  end
  else
  begin
    Application.CreateForm(TfAutorisasi, fAutorisasi);
    fAutorisasi.Show;
    fAutorisasi.kiriman :=3;
    FNewStop.Enabled := False;
  end;
end;

procedure TFNewStop.spnRoomChange(Sender: TObject);
begin
if Not (spnRoom.Focused) then exit;
if spnRoom.Text = '' then exit;
  pvRoomDisc := pvHargaRoom * spnRoom.Value / 100;
  jumlah;
end;

procedure TFNewStop.spnRoomClick(Sender: TObject);
begin
 if cmbMember.ItemIndex = 1 then exit;
end;

procedure TFNewStop.spnMenuChange(Sender: TObject);
begin
if Not (spnMenu.Focused) then exit;
  if spnMenu.Text = '' then exit;
    pvMenuDisc := pvHargaMenu * spnMenu.Value / 100;
    jumlah;
end;

procedure TFNewStop.spnOthersChange(Sender: TObject);
begin
  if spnOthers.Text = '' then exit;

  pvOtherDisc := pvHargaOthers * spnOthers.Value / 100;

  jumlah;
end;

procedure TFNewStop.edtMenuDiskonEnter(Sender: TObject);
begin
edtMenuDiskon.Text := FormatFloat('0', pvMenuDisc);
  edtMenuDiskon.SelectAll;
end;

procedure TFNewStop.edtMenuDiskonExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtMenuDiskon.Text);
  except
    x:=0;
  end;
  if x > pvHargaMenu then
    x:=pvHargaMenu;

  pvMenuDisc := x;

  if not(pvHargaMenu=0) then
    spnMenu.Text:= FormatFloat('0', pvMenuDisc / pvHargaMenu * 100)
  else
    spnMenu.Text:='0';

  jumlah;

end;

procedure TFNewStop.edtOthersDiskonEnter(Sender: TObject);
begin
 edtOthersDiskon.Text := FormatFloat('0', pvOtherDisc);
  edtOthersDiskon.SelectAll;
end;

procedure TFNewStop.edtOthersDiskonExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtOthersDiskon.Text);
  except
    x:=0;
  end;
  if x > pvHargaOthers then
    x:=pvHargaOthers;

  pvOtherDisc := x;

  if not(pvHargaOthers=0) then
    spnOthers.Text:=FloatToStr(int(pvOtherDisc / pvHargaOthers * 100))
  else
    spnOthers.Text:='0';

  jumlah;

end;

procedure TFNewStop.edtdiskonvoucherExit(Sender: TObject);
var x: Real;
begin
  try
    x:=StrToFloat(edtdiskonvoucher.Text);
  except
    x:=0;
  end;

  if x > pvGrandTotal then
     x:=pvGrandTotal;
  pvvoucher := x;

  jumlah;
end;

procedure TFNewStop.edtdiskonvoucherEnter(Sender: TObject);
begin
    edtdiskonvoucher.Text := FormatFloat('0', pvvoucher);
  edtdiskonvoucher.SelectAll;
end;

procedure TFNewStop.cmemberClick(Sender: TObject);
begin
  if hak then
  begin
    cmbMember.ItemIndex := 1;
    cmbMemberClick(Sender);
  end
  else
  begin
    Application.CreateForm(TFautorisasi, Fautorisasi);
    Fautorisasi.Show;
    Fautorisasi.kiriman :=1;
    FNewStop.Enabled := False;
  end;
end;

procedure TFNewStop.edtIdMemberKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFNewStop.chkManualClick(Sender: TObject);
begin
  if hak then
  begin
    Nolkan;
    if chkManual.Checked then
    begin
      chkAuto.Checked := False;
      chkPromo.Checked := False;
      spnRoom.Enabled := True;
      spnMenu.Enabled := True;
      spnOthers.Enabled := True;
      edtRoomDiskon.Enabled := True;
      edtMenuDiskon.Enabled := True;
      edtOthersDiskon.Enabled := True;
    end;
  end
  else
  begin
    Application.CreateForm(TfAutorisasi, fAutorisasi);
    fAutorisasi.Show;
    fAutorisasi.kiriman :=3;
    FNewStop.Enabled := False;
  end;
end;

procedure TFNewStop.chkAutoClick(Sender: TObject);
var i, vIdKategoriRoom : Integer;
    wktAwal, wktBerjalan, tglPromoAwal, tglPromoAkhir : TDateTime;
    qCekPromo, qCekDiskon : TZQuery;
    vPromoMenuProses : Boolean;
    vFreeroom : Integer;
    vfreeroomNominalProses : Boolean;
const Hari: array[1..7] of string =
           ('mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun');
begin
  if chkManual.Focused then exit;
  if not(chkAuto.Checked) then
  begin
    Nolkan;
    if (chkPromo.Checked) then
    begin
      DBPromoDblClick(Sender);
    end;
    exit;
  end
  else
  begin
    if chkManual.Checked then
    begin
      chkManual.Checked := False;
      chkManualClick(Sender);
    end;
  end;

//  if not(chkPromo.Checked) then
//  begin
    pvRoomDisc := 0;
    pvMenuDisc := 0;
    vDiscMenu := 0;
//  end;

  qCekPromo := TZQuery.Create(Self);
  qCekPromo.Connection := modul.Database1;
  qCekDiskon := TZQuery.Create(Self);
  qCekDiskon.Connection := modul.Database1;

  qCekDiskon.Active := False;
  qCekDiskon.SQL.Text := ' SELECT     idkategori '+
                         ' FROM       troom '+
                         ' WHERE     (id = '+ IntToStr(pbIdRoom)+')';
  qCekDiskon.Active := True;
  vIdKategoriRoom := qCekDiskon.FieldByName('idkategori').AsInteger;

  qCekPromo.Active := False;
  qCekPromo.SQL.Text := ' SELECT     id, promo, tglAwal, tglAkhir, timeAwal, timeAkhir, discMenu, sun, mon, wed, tue, thu, fri, sat, freeroom, freeroomnominal '+
                        ' FROM         tdisc '+
                        ' WHERE (Active = 1) AND (otomatis = 1)  AND '+
                        '       (tglAwal  <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd', QtabelRoomCheckIn.AsDateTime)) + ') AND '+
                        '       (tglAkhir >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd', QtabelRoomCheckIn.AsDateTime)) +
                        ') ORDER BY id';
  qCekPromo.Active := True;
  qCekPromo.First;
  SetLength(pvArrayDiskonRoom, QtabelRoomDurasi.AsInteger + 1);
  for i := 1 to QtabelRoomDurasi.AsInteger do
  begin
    pvArrayDiskonRoom[i] := 0;
  end;

  while not(qCekPromo.Eof) do
  begin
    vPromoMenuProses := False;
    vfreeroomNominalProses := False;
        wktAwal := QtabelRoomCheckIn.AsDateTime;
        wktBerjalan := QtabelRoomCheckIn.AsDateTime;

        If pvHargaRoom > 0 then
        begin
          vFreeroom := qCekPromo.FieldByName('freeroom').AsInteger;
          for i:= 1 to QtabelRoomDurasi.AsInteger do
          begin
            tglPromoAwal := EncodeDateTime(YearOf(wktAwal), MonthOf(wktAwal), DayOf(wktAwal),
                                           HourOf(qCekPromo.FieldByName('timeAwal').AsDateTime),
                                           MinuteOf(qCekPromo.FieldByName('timeAwal').AsDateTime),0,0
                                           );
            tglPromoAkhir := EncodeDateTime(YearOf(wktAwal), MonthOf(wktAwal), DayOf(wktAwal),
                                           HourOf(qCekPromo.FieldByName('timeAkhir').AsDateTime),
                                           MinuteOf(qCekPromo.FieldByName('timeAkhir').AsDateTime),0,0
                                           );
            if (qCekPromo.FieldByName('timeAwal').AsDateTime > qCekPromo.FieldByName('timeAkhir').AsDateTime) AND
               (wktAwal > EncodeDateTime(YearOf(wktAwal), MonthOf(wktAwal), DayOf(wktAwal),8,0,0,0))
            then
            begin
               tglPromoAkhir := IncDay(tglPromoAkhir,1);
            end;
            if (qCekPromo.FieldByName('timeAwal').AsDateTime > qCekPromo.FieldByName('timeAkhir').AsDateTime) AND
               (wktAwal <= EncodeDateTime(YearOf(wktAwal), MonthOf(wktAwal), DayOf(wktAwal),8,0,0,0))
            then
            begin
               tglPromoAwal := IncDay(tglPromoAwal,-1);
            end;

            if (wktBerjalan >= tglPromoAwal) and (wktBerjalan <= tglPromoAkhir) then
            begin
              if qCekPromo.FieldByName(Hari[DayOfTheWeek(wktBerjalan)]).AsString = '1' then
              begin
                promo := qCekPromo.FieldByName('promo').AsString;
                if vFreeroom = 0 then
                begin
                  qCekDiskon.Active := False;
                  qCekDiskon.SQL.Text :=  ' SELECT     iddisc, idroom, diskon '+
                                          ' FROM       Tdiskonroom '+
                                          ' WHERE     (iddisc = '+QuotedStr( qCekPromo.FieldByName('id').AsString) + ') AND '+
                                                     '(idroom = '+IntToStr(vIdKategoriRoom)+')';
                  qCekDiskon.Active := True;
                  pvRoomDisc := pvRoomDisc + qCekDiskon.FieldByName('diskon').AsFloat;
                  pvArrayDiskonRoom[i] := pvArrayDiskonRoom[i] + qCekDiskon.FieldByName('diskon').AsFloat;
                end
                else
                begin
                  pvRoomDisc := pvRoomDisc + QtabelRoomHarga.AsFloat;
                  vFreeroom := vFreeroom - 1;
                  pvArrayDiskonRoom[i] := QtabelRoomHarga.AsFloat;
                end;
                if not(vfreeroomNominalProses) then
                begin
                  vfreeroomNominalProses := True;
                  pvRoomDisc := pvRoomDisc +  qCekPromo.FieldByName('freeroomnominal').AsFloat;
                end;
                if not(vPromoMenuProses) then
                begin
                  vDiscMenu := vDiscMenu + qCekPromo.FieldByName('discMenu').AsInteger;
                  vPromoMenuProses := True;
                end;
              end;
            end;
            wktBerjalan := IncHour(wktBerjalan, 1);
          end;
        end;
        qCekPromo.Next;
  end;

  if vDiscMenu > 100 then vDiscMenu := 100;
  If pvHargaMenu > 0 then
  begin
       spnMenu.Value := vDiscMenu;
       pvMenuDisc := pvHargaMenu * vDiscMenu / 100;
  end;

  pvMenuDisc := pvHargaMenu * spnMenu.Value / 100;

  if pvRoomDisc > pvHargaRoom then pvRoomDisc:=pvHargaRoom;
  if pvMenuDisc > pvHargaMenu then pvMenuDisc:=pvHargaMenu;
  jumlah;

  qCekPromo.Destroy;
  qCekDiskon.Destroy;
  jenisdiskon := 1;

  if chkPromo.Checked then DBPromoDblClick(Self);
end;

procedure TFNewStop.chkPromoClick(Sender: TObject);
begin
  if chkManual.Focused then exit;
  if chkPromo.Checked then
  begin
    if chkManual.Checked then
    begin
      chkManual.Checked := False;
    end;
    BsPromo.Enabled := True;
    BsPromoClick(Sender);
  end
  else
  begin
    Nolkan;
    if chkAuto.Checked then
    begin
      chkAutoClick(Sender);
    end;
  end;
end;

end.
