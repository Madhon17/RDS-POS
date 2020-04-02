unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, bsSkinCtrls, BusinessSkinForm, bsSkinData, RpRave,
  RpRender, RpRenderPDF, RpDefine, RpBase, RpSystem, IniFiles, OleCtrls,
  ShockwaveFlashObjects_TLB, ExtCtrls, ImgList, StdCtrls, gtXportIntf,
   gtClasses, gtCstDocEng, gtCstSpdEng, gtCstXLSEng,
  gtExXLSEng, gtXLSEng, DB, DBTables, jpeg, bsMessages, ZConnection, ZDataset,
  ZAbstractRODataset, ZAbstractDataset;

type
  TFrmInduk = class(TForm)
    MainMenu1: TMainMenu;
    Setup1: TMenuItem;
    RoomKategori1: TMenuItem;
    Exit1: TMenuItem;
    m1: TMenuItem;
    BAR1: TMenuItem;
    Kasir1: TMenuItem;
    MemberKategori1: TMenuItem;
    File1: TMenuItem;
    Room1: TMenuItem;
    Member1: TMenuItem;
    ORDER1: TMenuItem;
    ORDERMENU1: TMenuItem;
    ORDERROOM1: TMenuItem;
    OrderLainlain1: TMenuItem;
    bsSkinData2: TbsSkinData;
    bsCompressedStoredSkin2: TbsCompressedStoredSkin;
    bsCompressedStoredSkin1: TbsCompressedStoredSkin;
    bsSkinData1: TbsSkinData;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMainMenuBar1: TbsSkinMainMenuBar;
    Payment1: TMenuItem;
    Master1: TMenuItem;
    Bill1: TMenuItem;
    Billing1: TMenuItem;
    BillCorrection1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    RvSystem1: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    RvProject1: TRvProject;
    UserKategori1: TMenuItem;
    Report1: TMenuItem;
    PaymentReport1: TMenuItem;
    Waiter1: TMenuItem;
    LogOff1: TMenuItem;
    N1: TMenuItem;
    PindahRoom1: TMenuItem;
    Room2: TMenuItem;
    Member2: TMenuItem;
    RekapitulasiPenjualan1: TMenuItem;
    ools1: TMenuItem;
    SongList1: TMenuItem;
    Summary1: TMenuItem;
    Satuan1: TMenuItem;
    Barang1: TMenuItem;
    KategoriBarang1: TMenuItem;
    KomposisiMenu1: TMenuItem;
    DistributorBarang1: TMenuItem;
    PersediaanBarangMasuk1: TMenuItem;
    BarangMasuk1: TMenuItem;
    BarangKeluar1: TMenuItem;
    StokBarang1: TMenuItem;
    PenyesuainBarangKeluar1: TMenuItem;
    MemberUpdate1: TMenuItem;
    DetailMemberReport1: TMenuItem;
    Menu2: TMenuItem;
    DataMember1: TMenuItem;
    SongRequest1: TMenuItem;
    ReportSongRequest1: TMenuItem;
    DataSong1: TMenuItem;
    CheckServer1: TMenuItem;
    MutasiStok1: TMenuItem;
    KonversiSatuan1: TMenuItem;
    RoomReservation1: TMenuItem;
    RoomReservation3: TMenuItem;
    SongManager1: TMenuItem;
    Bank1: TMenuItem;
    VChannel1: TMenuItem;
    RunningText1: TMenuItem;
    KonversiPayment1: TMenuItem;
    RoomControl1: TMenuItem;
    PesanBill1: TMenuItem;
    Saran1: TMenuItem;
    PasswordRoom1: TMenuItem;
    bsSkinStatusBar2: TbsSkinStatusBar;
    bsSkinStatusPanel2: TbsSkinStatusPanel;
    txt_tanggal: TbsSkinStatusPanel;
    bsSkinStatusPanel1: TbsSkinStatusPanel;
    fls_back: TShockwaveFlash;
    MutasiGudang1: TMenuItem;
    Gudang1: TMenuItem;
    gtExcelEngine1: TgtExcelEngine;
    KirimLagu1: TMenuItem;
    SongUpdate1: TMenuItem;
    Administrator1: TMenuItem;
    SqlForm1: TMenuItem;
    PaymentControl1: TMenuItem;
    MovieListUpdate1: TMenuItem;
    Timer1: TTimer;
    Pajak1: TMenuItem;
    SetupPromo1: TMenuItem;
    ReportOrder1: TMenuItem;
    bsSkinMessage1: TbsSkinMessage;
    ServerShutdown1: TMenuItem;
    axService1: TMenuItem;
    Aktivasi1: TMenuItem;
    MenuSoldout1: TMenuItem;
    ControlRoom1: TMenuItem;
    EmergencyCall1: TMenuItem;
    Otorisasi1: TMenuItem;
    Voucher1: TMenuItem;
    Voucher2: TMenuItem;
    procedure prcStrukturTabel(databaseName: TZConnection);
    procedure prcBackupDatabase;
    procedure prcKasirAdmin;
    procedure prcRubahHarga;
    procedure FormCreate(Sender: TObject);
    procedure RoomKategori1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure m1Click(Sender: TObject);
    procedure BAR1Click(Sender: TObject);
    procedure Kasir1Click(Sender: TObject);
    procedure MemberKategori1Click(Sender: TObject);
    procedure Room1Click(Sender: TObject);
    procedure Member1Click(Sender: TObject);
    procedure ORDERMENU1Click(Sender: TObject);
    procedure ORDERROOM1Click(Sender: TObject);
    procedure OrderLainlain1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Payment1Click(Sender: TObject);
    procedure Billing1Click(Sender: TObject);
    procedure BillCorrection1Click(Sender: TObject);
    procedure UserKategori1Click(Sender: TObject);
    procedure PaymentReport1Click(Sender: TObject);
    procedure Waiter1Click(Sender: TObject);
    procedure LogOff1Click(Sender: TObject);
    procedure PindahRoom1Click(Sender: TObject);
    procedure Room2Click(Sender: TObject);
    procedure Member2Click(Sender: TObject);
    procedure RekapitulasiPenjualan1Click(Sender: TObject);
    procedure SongList1Click(Sender: TObject);
    procedure Summary1Click(Sender: TObject);
    procedure Satuan1Click(Sender: TObject);
    procedure Barang1Click(Sender: TObject);
    procedure KategoriBarang1Click(Sender: TObject);
    procedure KomposisiMenu1Click(Sender: TObject);
    procedure DistributorBarang1Click(Sender: TObject);
    procedure PersediaanBarangMasuk1Click(Sender: TObject);
    procedure BarangMasuk1Click(Sender: TObject);
    procedure BarangKeluar1Click(Sender: TObject);
    procedure StokBarang1Click(Sender: TObject);
    procedure PenyesuainBarangKeluar1Click(Sender: TObject);
    procedure MemberUpdate1Click(Sender: TObject);
    procedure DetailMemberReport1Click(Sender: TObject);
    procedure Menu2Click(Sender: TObject);
    procedure DataMember1Click(Sender: TObject);
    procedure SongRequest1Click(Sender: TObject);
    procedure ReportSongRequest1Click(Sender: TObject);
    procedure DataSong1Click(Sender: TObject);
    procedure CheckServer1Click(Sender: TObject);
    procedure MutasiStok1Click(Sender: TObject);
    procedure KonversiSatuan1Click(Sender: TObject);
    procedure RoomReservation1Click(Sender: TObject);
    procedure RoomReservation2Click(Sender: TObject);
    procedure RoomReservation3Click(Sender: TObject);
    procedure SongManager1Click(Sender: TObject);
    procedure Bank1Click(Sender: TObject);
    procedure VChannel1Click(Sender: TObject);
    procedure RunningText1Click(Sender: TObject);
    procedure KonversiPayment1Click(Sender: TObject);
    procedure RoomControl1Click(Sender: TObject);
    procedure PesanBill1Click(Sender: TObject);
    procedure Saran1Click(Sender: TObject);
    procedure PasswordRoom1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure MutasiGudang1Click(Sender: TObject);
    procedure Gudang1Click(Sender: TObject);
    procedure KirimLagu1Click(Sender: TObject);
    procedure SongUpdate1Click(Sender: TObject);
    procedure SqlForm1Click(Sender: TObject);
    procedure PaymentControl1Click(Sender: TObject);
    procedure MovieListUpdate1Click(Sender: TObject);
    procedure Pajak1Click(Sender: TObject);
    procedure SetupPromo1Click(Sender: TObject);
    procedure ReportOrder1Click(Sender: TObject);
    procedure ServerShutdown1Click(Sender: TObject);
    procedure axService1Click(Sender: TObject);
    procedure Aktivasi1Click(Sender: TObject);
    procedure MenuSoldout1Click(Sender: TObject);
    procedure ControlRoom1Click(Sender: TObject);
    procedure EmergencyCall1Click(Sender: TObject);
    procedure printInvoice(invoice2: String; idorder: string; isTax: Boolean; reprint: Boolean);
    procedure printInvoice1(invoice2: String; idorder: string; isTax: Boolean; reprint: Boolean; printRoom: Boolean; printMenu: Boolean);
    procedure printInvoice2(invoice2: String; idorder: string; isTax: Boolean; reprint: Boolean; printRoom: Boolean; printMenu: Boolean);
    procedure printInvoice3(invoice2: String; idorder: string; isTax: Boolean; reprint: Boolean; printRoom: Boolean; printMenu: Boolean);
    procedure Otorisasi1Click(Sender: TObject);
    procedure logActivity(description: String);
    procedure Voucher1Click(Sender: TObject);
    procedure Voucher2Click(Sender: TObject);

  private
    printerScaleX : double;
    printerScaleY : double;
    invoicePaper : Integer;
    procedure TextOutRight(x: integer; y: integer; text: String);
    function scalePrinterNumber(number: array of integer; printerScale: double) : integer;
    function scalePrinterNumberX(number: array of integer) : integer;
    function scalePrinterNumberY(number: array of integer) : integer;
  public
    pbidkasir : string;
    pbadmin   : Boolean;
    pbnamakasir : string;
    pbcashorder, pbreport, pbkirimlagu,pbpratama, pdUpdateLagu, StationSupport, pbkatmember, pbkatmenu, pbkatroom, pbkasir, pbbar, pbkatuser  : Boolean;
    pbbill, pbpayment, pbbillcor, pbordermenu, pborderroom, pborderdll, pbmember, pbroom, pbpaketroom, pbcarimenu : Boolean;
    pbBillStart, pbBillStop, pbwaiterreport, pbpindahroom, pbroomreport, pbmemberreport : boolean;
    pbdetailreport, pbdetailpenjualan, pbSongList, pbsummary, pbsatuan, pbbarang : Boolean;
    pbkatbarang, pbkomposisi, pbdsitributor, pbbarangmasuk, pbcaribarang, pbmenureport, pbdatamember : Boolean;
    pbreportmasuk, pbreportkeluar, pbstokbarang, pbpenyesuaian, pbMemberUpdate, pbdetailmemberreport, pbpaymentdetailreport : boolean;
    pbSrequest, pbSongReport, pbdatalagu, pbCheckServer, pbdailybarangkeluar, pbSatuanKonversi : Boolean;
    pbreservasi, pbreportreservasi, pbpenyesuaianmasuk, pbdetailrekapitulasijual, pbtambahlagu, pbinsertlagu : Boolean;
    pbrunningtext, pbtvchannel, pbcontrolroom , pbbank, pbkonversipayment, pbpesanbill, pbsaran : Boolean;
    pbroompassword, pbGudangMutasi, pbGudang, pbShutdownServer, pbSetupDiscount : boolean;
    pbreportorder, pbtaxservice : boolean;
    activityLogin : String;
    activityName : String;
    separateInvoice : Integer;
    invoiceType: Integer;
    invoiceReprintText: string;
    editPindahRoom: Integer;
    decreaseRoomDuration: Integer;
  end;

var
  FrmInduk: TFrmInduk;

implementation

uses Unit1, pajak, Unit2,usetdis, Unit4, unit5, unit6, unit7, unit8, unit10, unit12,
     unit13, unit14, unit15, unit16, untBill, untKoreksi, untkatuser, Untdailyreport, untwaiter, untLogin,
     untpindahroom, untroomreport, untmemberreport, untdetailpenjualan, untUpdateLagu,
     untsummary, untsatuan, untBarangMaster, untkatbarang, untkomposisi, untdistributorMaster,
     untreportmasuk, untstokbarang, untbarangkeluar, untStokPenyesuaian, untMemberUpdate, untreportmemberdetail, untdetailpayment, untmenureport, untdatamember,
     untSRequest, untsongreport, untdatasong, untCheckServer, untstok , untrequestpurchase,
     untstokharian, untSatuanKonvInp, untreportreservasi, untreservasi,
     untKonvpayment, untcontrolroom, unttvchannel, untrunningtext, untbank, untpesanbill, untsaran  ,
     untRoomPass, untGudang, unttambahlagu, untBarangMasukMaster, untGudangMaster, untKirimLagu,
  untSongUpdate, UntCSql, UpayControl,untUpdateMovie, shellApi, UsetPromo,
  UreportOrder, untMessage, Udiskonroom, untServerShutdown, DateUtils,
  untTaxService, Printers, untMenuSoldout, untControlRoomReport, UntActivation, StrUtils, Math, konversi,
  untAuthorizationReport, untVoucher, untVoucherReport;

{$R *.dfm}

procedure TFrmInduk.prcRubahHarga;
var query, QcekHarga, qKategori, QsetHarga : TZQuery;begin
  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'select TIMESTAMPDIFF(hour, lastUpdateHarga, now()) lastUpdateHarga from tsetup';
  query.Active := True;
  if query.FieldByName('lastUpdateHarga').AsInteger >= 18 then
  begin
    QcekHarga := TZQuery.Create(Self);
    QcekHarga.Connection := modul.Database1;
    QsetHarga := TZQuery.Create(Self);
    QsetHarga.Connection := modul.Database1;
    qKategori := TZQuery.Create(Self);
    qKategori.Connection := modul.Database1;

    QcekHarga.SQL.Text := 'SELECT     tkategoriroom.id, tKategoriRoomDetil.hari, tkategoriroom.kategori, tKategoriRoomDetil.harga '+
                                   'FROM         tKategoriRoomDetil INNER JOIN '+
                                   'tkategoriroom ON tKategoriRoomDetil.idkategori = tkategoriroom.id '+
                                   'WHERE     (tKategoriRoomDetil.hari = '+ IntToStr(DayOfWeek(Now))+ ') ';
    QcekHarga.Active := True;
    qKategori.SQL.Text := 'SELECT     id, kategori, harga '+
                          'FROM         tkategoriroom '+
                          'ORDER BY id';
    qKategori.Active := True;
    if QcekHarga.RecordCount = qKategori.RecordCount then
    begin
      QsetHarga.SQL.Text := 'DELETE FROM tkategoriroom';
      QsetHarga.ExecSQL;
      QcekHarga.First;
      while not(QcekHarga.Eof) do
      begin
        QsetHarga.SQL.Text := 'INSERT INTO tkategoriroom  '+
                         '   (id, kategori, harga) '+
                         ' VALUES     ('+ QcekHarga.FieldByName('id').AsString +', '+
                          QuotedStr(QcekHarga.FieldByName('kategori').AsString) +', '+
                          QcekHarga.FieldByName('harga').AsString + ') ';
        QsetHarga.ExecSQL;
        QcekHarga.Next;
      end;
    end;

    query.Active := False;
    query.SQL.Text := 'update Tsetup set lastUpdateHarga = now()';
    query.ExecSQL();

    QcekHarga.Destroy;
    QsetHarga.Destroy;
    qKategori.Destroy;
    Application.CreateForm(TFroomPrice, FroomPrice);
    FroomPrice.ShowModal;
  end;
end;

procedure TFrmInduk.prcStrukturTabel(databaseName: TZConnection);
var Qkolom, QtambahField, QisiField, QdropField, Qproperty, query : TZQuery;
    i : Integer;
begin
  try
    Qkolom := TZQuery.Create(Self);
    Qkolom.Connection := databaseName;
    QdropField := TZQuery.Create(Self);
    QdropField.Connection := databaseName;
    QtambahField := TZQuery.Create(Self);
    QtambahField.Connection := databaseName;
    QisiField := TZQuery.Create(Self);
    QisiField.Connection := databaseName;
    Qproperty := TZQuery.Create(Self);
    Qproperty.Connection := databaseName;
    query := TZQuery.Create(Self);
    query.Connection := databaseName;


    Qkolom.SQL.Text := ' SELECT     column_name '+
                       ' FROM       information_schema.columns '+
                       ' WHERE     (table_name = '+ QuotedStr('Tsetup')+ ')';
    Qkolom.Active := True;
    if not(Qkolom.Locate('column_name', 'BackupTanggal',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE Tsetup ADD BackupTanggal Datetime';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'versipos',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE Tsetup ADD versipos char(10) NULL';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  versipos = ' + QuotedStr('6.0');
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'TaxCaption',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE Tsetup ADD TaxCaption char(30) NULL';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  TaxCaption = ' + QuotedStr('Tax');
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'ServiceCaption',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE Tsetup ADD ServiceCaption char(30) NULL';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  ServiceCaption = ' + QuotedStr('Service');
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'NominalAutoPajak',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [NominalAutoPajak] real NULL ;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  NominalAutoPajak = 100000';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'showInvoiceCheckin',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [showInvoiceCheckin] tinyint NULL ;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  showInvoiceCheckin = 0';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'invoiceRenumbering',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [invoiceRenumbering] tinyint NULL ;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  invoiceRenumbering = 0';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'separateInvoice',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [separateInvoice] tinyint NULL ;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  separateInvoice = 0';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'showInvoiceRoomDuration',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [showInvoiceRoomDuration] tinyint NULL ;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  showInvoiceRoomDuration = 0';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'royaltyExpire',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [royaltyExpire] datetime NULL;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  royaltyExpire = DATEADD(m, 1, GETDATE())';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'syncPopulerDateTime',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [syncPopulerDateTime] datetime NULL;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  syncPopulerDateTime = DATEADD(m, 1, GETDATE())';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'syncPaymentDateTime',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [syncPaymentDateTime] datetime NULL;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  syncPaymentDateTime = DATEADD(m, 1, GETDATE())';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'syncRoomDateTime',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [syncRoomDateTime] datetime NULL;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  syncRoomDateTime = DATEADD(m, 1, GETDATE())';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'syncRoyaltyDateTime',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [syncRoyaltyDateTime] datetime NULL;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  syncRoyaltyDateTime = DATEADD(m, 1, GETDATE())';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'syncProgramDateTime',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [syncProgramDateTime] datetime NULL;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  syncProgramDateTime = DATEADD(m, 1, GETDATE())';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'syncPasswordDateTime',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [syncPasswordDateTime] datetime NULL;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  syncPasswordDateTime = DATEADD(m, 1, GETDATE())';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'checkInternet',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [checkInternet] datetime NULL;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  checkInternet = DATEADD(m, 1, GETDATE())';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'versiVOD1',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE Tsetup ADD versiVOD1 nvarchar(16) NULL';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  versiVOD1 = ' + QuotedStr('11');
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'versiVOD2',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE Tsetup ADD versiVOD2 nvarchar(16) NULL';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  versiVOD2 = ' + QuotedStr('11');
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'invoiceType',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[Tsetup] ADD [invoiceType] tinyint NULL ;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  invoiceType = 1';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'editPindahRoom',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE Tsetup ADD editPindahRoom tinyint NULL ;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  editPindahRoom = 0';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'lastUpdateHarga',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE Tsetup ADD lastUpdateHarga datetime NULL ;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  lastUpdateHarga = date_add(now(), interval -1 day)';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'decreaseRoomDuration',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE Tsetup ADD decreaseRoomDuration tinyint NULL ;';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'UPDATE    Tsetup  SET  decreaseRoomDuration = 0';
      QtambahField.ExecSQL;
    end;
    Qkolom.Active := False;

    //troom
    Qkolom.SQL.Text := ' SELECT     column_name '+
                       ' FROM       information_schema.columns '+
                       ' WHERE     (table_name = '+ QuotedStr('Troom')+ ')';
    Qkolom.Active := True;
    if not(Qkolom.Locate('column_name', 'royaltyLock',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[troom] ADD [royaltyLock] bit NULL';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'update troom set royaltyLock = 0';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'systemLock',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE [dbo].[troom] ADD [systemLock] bit NULL';
      QtambahField.ExecSQL;
      QtambahField.SQL.Text := 'update troom set systemLock = 0';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'autoClose',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE troom ADD autoClose tinyint NULL';
      QtambahField.ExecSQL;
    end;
    Qkolom.Active := False;

    Qkolom.SQL.Text := ' SELECT     column_name '+
                       ' FROM       information_schema.columns '+
                       ' WHERE     (table_name = '+ QuotedStr('tpayment')+ ')';
    Qkolom.Active := True;
    if not(Qkolom.Locate('column_name', 'voucher2_id',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tpayment ADD voucher2_id smallint';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_name',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tpayment ADD voucher2_name varchar(255)';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_fee',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tpayment ADD voucher2_fee tinyint';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_discount',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tpayment ADD voucher2_discount tinyint';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_name2',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tpayment ADD voucher2_name2 varchar(255)';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_code',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tpayment ADD voucher2_code varchar(255)';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_value',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tpayment ADD voucher2_value double default 0';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_value2',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tpayment ADD voucher2_value2 double default 0';
      QtambahField.ExecSQL;
    end;
    Qkolom.Active := False;

    Qkolom.SQL.Text := ' SELECT     column_name '+
                       ' FROM       information_schema.columns '+
                       ' WHERE     (table_name = '+ QuotedStr('tbayar')+ ')';
    Qkolom.Active := True;
    if not(Qkolom.Locate('column_name', 'promo',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tbayar ADD promo varchar(255) NULL';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher_id',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tbayar ADD voucher_id varchar(255) NULL';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_discount',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tbayar ADD voucher2_discount tinyint NULL';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_code',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tbayar ADD voucher2_code varchar(255) NULL';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_value',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tbayar ADD voucher2_value double';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'voucher2_value2',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tbayar ADD voucher2_value2 double';
      QtambahField.ExecSQL;
    end;
    Qkolom.Active := False;

    Qkolom.SQL.Text := ' SELECT     column_name '+
                       ' FROM       information_schema.columns '+
                       ' WHERE     (table_name = '+ QuotedStr('tkasir')+ ')';
    Qkolom.Active := True;
    if not(Qkolom.Locate('column_name', 'pbVoucher',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tkasir ADD pbVoucher char(1) default ''0''';
      QtambahField.ExecSQL;
    end;
    if not(Qkolom.Locate('column_name', 'pbVoucherReport',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'ALTER TABLE tkasir ADD pbVoucherReport char(1) default ''0''';
      QtambahField.ExecSQL;
    end;
    Qkolom.Active := False;

    Qkolom.SQL.Text := ' SELECT TABLE_NAME FROM information_schema.TABLES WHERE TABLE_SCHEMA = ''vizta''';
    Qkolom.Active := True;
    if not(Qkolom.Locate('TABLE_NAME', 'tvoucher',[loCaseInsensitive])) then
    begin
      QtambahField.SQL.Text := 'Create table tvoucher (id smallint NOT NULL, name varchar(255) NOT NULL, fee tinyint NOT NULL, discount tinyint NOT NULL, primary key (id), UNIQUE index (name));';
      QtambahField.ExecSQL;
    end;
    Qkolom.Active := False;

    QisiField.SQL.Text := 'update tbarang set harga = 0 where harga is null';
    QisiField.ExecSQL;
    QisiField.SQL.Text := 'UPDATE tkasir SET pbVoucher = ''0'' WHERE pbVoucher is null';
    QisiField.ExecSQL;
    QisiField.SQL.Text := 'UPDATE tkasir SET pbVoucherReport = ''0'' WHERE pbVoucherReport is null';
    QisiField.ExecSQL;
    QisiField.SQL.Text := 'UPDATE tpayment SET voucher2_value = 0 WHERE voucher2_value IS NULL';
    QisiField.ExecSQL;
    QisiField.SQL.Text := 'UPDATE tpayment SET voucher2_value2 = 0 WHERE voucher2_value2 IS NULL';
    QisiField.ExecSQL;
    QisiField.SQL.Text := 'UPDATE troom SET tambahjam = 0 WHERE (tambahjam IS NULL)';
    QisiField.ExecSQL;
    QisiField.SQL.Text := 'UPDATE troom SET billstop = 0 WHERE (billstop IS NULL)';
    QisiField.ExecSQL;

    Qkolom.Destroy;
    QdropField.Destroy;
    QtambahField.Destroy;
    QisiField.Destroy;
  except
    on E: Exception do
      begin
        ShowMessage(E.ClassName + ' error raised, with message : ' + E.Message);
      end;
  end;
end;

procedure TFrmInduk.prcBackupDatabase;
var Qbackup : TZQuery;
    vTanggalBackup : TDateTime;
begin
  Qbackup := TZQuery.Create(Self);
  Qbackup.Connection := modul.Database1;
  Qbackup.SQL.Text := ' SELECT     BackupTanggal '+
                      ' FROM         Tsetup ';
  Qbackup.Active := True;

  vTanggalBackup :=  EncodeDateTime(YearOf(Date), MonthOf(Date), DayOf(Date),
                                    23,0,0,0);
  vTanggalBackup := IncDay(vTanggalBackup, -1);

  if (Qbackup.FieldByName('BackupTanggal').AsDateTime < vTanggalBackup) then
  begin
    if (bsSkinMessage1.MessageDlg('         Database has not been backed up         '+ #13 +
                                  '             Please Backup Database              '
                                          , mtInformation,[mbYes, mbNo], 0) = mrYes) then
    begin
      Application.CreateForm(TFsqlControl, FsqlControl);
      FsqlControl.Show;
    end;
  end;
end;

procedure TFrmInduk.prcKasirAdmin;
var QkasirAdmin : TZQuery;
begin
  QkasirAdmin := TZQuery.Create(Self);
  QkasirAdmin.Connection := modul.Database1;

  QkasirAdmin.Active := False;
  QkasirAdmin.SQL.Text := ' SELECT     admin '+
                          ' FROM       tkasir '+
                          ' WHERE      (login = '+QuotedStr(pbidkasir)+') ';
  QkasirAdmin.Active := True;
  if QkasirAdmin.FieldByName('admin').AsString = '1' then
  begin
    pbadmin := false;
  end
  else
  begin
    pbadmin := false;
  end;
  QkasirAdmin.Active := False;
  QkasirAdmin.Destroy;
end;

procedure TFrmInduk.FormCreate(Sender: TObject);
var
  NamaFile : TFileName;
  iniFile : TIniFile;
  query : TZQuery;
begin

  NamaFile := ExtractFilePath(Application.ExeName) + '..\..\setting-pos.ini';
  iniFile := TIniFile.Create(NamaFile);

  Caption := iniFile.ReadString('General', 'FormCaption', 'Rds Poin of Sale') + ' ' + modul.getApplicationVersion();

  bsSkinStatusPanel2.Caption := iniFile.ReadString('General', 'StatusCaption', 'RDS KARAOKE KTV');

  txt_tanggal.Caption := iniFile.ReadString('General', 'Status2Caption', 'PT. RDS INDONESIA');

  invoicePaper := StrToInt(iniFile.ReadString('General', 'InvoicePaper', '1')) - 1;

  invoiceReprintText := iniFile.ReadString('General', 'invoiceReprintText', 'Reprint'); 


  prcStrukturTabel(modul.Database1);
  if modul.Database2.Connected then
  begin
    prcStrukturTabel(modul.Database2);
  end;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'select * from Tsetup';
  query.Active := True;
  separateInvoice := query.FieldByName('separateInvoice').AsInteger;
  invoiceType := query.FieldByName('invoiceType').AsInteger;
  editPindahRoom := query.FieldByName('editPindahRoom').AsInteger;
  decreaseRoomDuration := query.FieldByName('decreaseRoomDuration').AsInteger;
  query.Active := False;

  fls_back.Left:=(FrmInduk.Width div 2)-(fls_back.Width div 2);
  fls_back.Movie := ExtractFilePath (Application.ExeName)+'image\LATAR.swf';

  DateSeparator := '-';
  ShortDateFormat := 'dd-MM-yyyy';
  LongDateFormat := 'dddd, dd MMMM yyyy';
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  CurrencyString := 'Rp';

  RvProject1.ProjectFile := ExtractFilePath (Application.ExeName)+'\laporan.rav';

end;


procedure TFrmInduk.RoomKategori1Click(Sender: TObject);
begin
  if pbkatroom = True then
    fkategoriroom.Show
  else
  begin
    Application.CreateForm(Tfkategoriroom,fkategoriroom);
    fkategoriroom.Top := fkategoriroom.Top - 25;
  end;
end;

procedure TFrmInduk.Exit1Click(Sender: TObject);
begin
  FrmInduk.Close;
end;

procedure TFrmInduk.m1Click(Sender: TObject);
begin
  if pbkatmenu = true then
    fkategorimenu.Show
    else
  Application.CreateForm(Tfkategorimenu,fkategorimenu);
end;

procedure TFrmInduk.BAR1Click(Sender: TObject);
begin
if pbbar = true then
    fbar.Show
    else
  Application.CreateForm(Tfbar,fbar);
end;

procedure TFrmInduk.Kasir1Click(Sender: TObject);
begin
 if pbkasir = true then
    fkasir.Show
    else
  Application.CreateForm(Tfkasir,fkasir);
end;

procedure TFrmInduk.MemberKategori1Click(Sender: TObject);
begin
  if pbkatmember = true then
    fkategorimember.Show
    else
  Application.CreateForm(Tfkategorimember, fkategorimember);
end;

procedure TFrmInduk.Room1Click(Sender: TObject);
begin
if pbroom = true then
    froom.Show
    else
  Application.CreateForm(tfroom,froom);
end;

procedure TFrmInduk.Member1Click(Sender: TObject);
begin
  if pbmember = true then
    fmember.Show
    else
  Application.CreateForm(Tfmember,fmember);
end;

procedure TFrmInduk.ORDERMENU1Click(Sender: TObject);
begin
  if pbordermenu = true then  fordermenu.Show
  else
  Application.CreateForm(Tfordermenu,fordermenu);

  fordermenu.cmbroom.ItemIndex := 0;
  fordermenu.cmbroomClick(Sender);
end;

procedure TFrmInduk.ORDERROOM1Click(Sender: TObject);
begin
  if pborderroom = True then forderroom.Show
  else
  Application.CreateForm(Tforderroom,forderroom);  
end;

procedure TFrmInduk.OrderLainlain1Click(Sender: TObject);
begin
  if pborderdll = True then forderdll.Show
  else
  Application.CreateForm(Tforderdll,forderdll);
end;

procedure TFrmInduk.FormActivate(Sender: TObject);
begin
 bsBusinessSkinForm1.WindowState:=wsMaximized;
end;

procedure TFrmInduk.Payment1Click(Sender: TObject);
begin
  if pbpayment = true then fpayment.Show
  else
  Application.CreateForm(Tfpayment,fpayment);
end;

procedure TFrmInduk.Billing1Click(Sender: TObject);
begin
 if pbbill = true then
    Fbill.Show
 else
   Application.CreateForm(TFbill,Fbill);
end;

procedure TFrmInduk.BillCorrection1Click(Sender: TObject);
begin
  if pbbillcor = true then Fbillkoreksi.Show
  else
  Application.CreateForm(TFbillkoreksi,Fbillkoreksi);
end;



procedure TFrmInduk.UserKategori1Click(Sender: TObject);
begin
if pbkatuser = true then
    fkatuser.Show
    else
 Application.CreateForm(Tfkatuser,fkatuser);
end;

procedure TFrmInduk.PaymentReport1Click(Sender: TObject);
begin
  if pbpaymentdetailreport = true then
    fpaymentdetailreport.Show
  else
  begin
    Application.CreateForm(Tfpaymentdetailreport, fpaymentdetailreport);
    fpaymentdetailreport.Top := fpaymentdetailreport.Top - 25;
  end;
end;

procedure TFrmInduk.Waiter1Click(Sender: TObject);
begin
  if pbwaiterreport = true then
    fwaiterreport.Show
  else
  begin
    Application.CreateForm(Tfwaiterreport, fwaiterreport);
    fwaiterreport.Top := fwaiterreport.Top - 25;
  end;
end;

procedure TFrmInduk.LogOff1Click(Sender: TObject);
begin
  Application.CreateForm(TFlogin, Flogin);
  Flogin.Visible := False;
  Flogin.ShowModal;
end;

procedure TFrmInduk.PindahRoom1Click(Sender: TObject);
begin
  if pbpindahroom = true then
    fpindahroom.Show
  else
    Application.CreateForm(Tfpindahroom,fpindahroom);
end;

procedure TFrmInduk.Room2Click(Sender: TObject);
begin
  if pbroomreport = true then
    Froomreport.Show
  else
  begin
    Application.CreateForm(TFroomreport,Froomreport);
    Froomreport.Top := Froomreport.Top - 25;
  end;
end;

procedure TFrmInduk.Member2Click(Sender: TObject);
begin
  if pbmemberreport = true then
    fmemberreport.Show
  else
    Application.CreateForm(Tfmemberreport,fmemberreport);
end;

procedure TFrmInduk.RekapitulasiPenjualan1Click(Sender: TObject);
begin
  if pbdetailpenjualan = true then
    fdetailpenjualan.Show
  else
  begin
    Application.CreateForm(Tfdetailpenjualan, fdetailpenjualan);
    fdetailpenjualan.Top := fdetailpenjualan.Top - 25;
  end;
end;

procedure TFrmInduk.SongList1Click(Sender: TObject);
begin
  if pbSongList = true then
    FsongList.Show
  else
    Application.CreateForm(TFsongList, FsongList);
end;

procedure TFrmInduk.Summary1Click(Sender: TObject);
begin
  if pbsummary = true then
    fsummary.Show
  else
    Application.CreateForm(Tfsummary,fsummary);
end;

procedure TFrmInduk.Satuan1Click(Sender: TObject);
begin
  if pbsatuan = true then
    fsatuan.Show
  else
    Application.CreateForm(Tfsatuan,fsatuan);
end;

procedure TFrmInduk.Barang1Click(Sender: TObject);
begin
  if pbbarang = true then
    FbarangMaster.Show
  else
    Application.CreateForm(TFbarangMaster,FbarangMaster);
end;

procedure TFrmInduk.KategoriBarang1Click(Sender: TObject);
begin
  if pbkatbarang = true then
    fkatbarang.Show
  else
    Application.CreateForm(Tfkatbarang,fkatbarang);
end;

procedure TFrmInduk.KomposisiMenu1Click(Sender: TObject);
begin
  if pbkomposisi = true then
    fkomposisi.Show
  else
  begin
    Application.CreateForm(Tfkomposisi,fkomposisi);
    fkomposisi.Top := fkomposisi.Top - 25;
  end;
end;

procedure TFrmInduk.DistributorBarang1Click(Sender: TObject);
begin
  if pbdsitributor = true then
    fdistributorMaster.Show
  else
    Application.CreateForm(TfdistributorMaster, fdistributorMaster);
end;

procedure TFrmInduk.PersediaanBarangMasuk1Click(Sender: TObject);
begin
  if pbbarangmasuk = true then
    fbarangmasukMaster.Show
  else
    Application.CreateForm(TfbarangmasukMaster, fbarangmasukMaster);
end;

procedure TFrmInduk.BarangMasuk1Click(Sender: TObject);
begin
 if pbreportmasuk = True then
    freportmasuk.Show
 else
    Application.CreateForm(Tfreportmasuk,freportmasuk);
end;

procedure TFrmInduk.BarangKeluar1Click(Sender: TObject);
begin
    if pbreportkeluar = True then
      fbarangkeluar.Show
    else
      Application.CreateForm(Tfbarangkeluar,fbarangkeluar);
end;

procedure TFrmInduk.StokBarang1Click(Sender: TObject);
begin
    if pbstokbarang = True then
      fstokbarang.Show
    else
      Application.CreateForm(Tfstokbarang, fstokbarang);
end;

procedure TFrmInduk.PenyesuainBarangKeluar1Click(Sender: TObject);
begin
    if pbpenyesuaian = True then
      FstokPenyesuaian.Show
    else
      Application.CreateForm(TFstokPenyesuaian, FstokPenyesuaian);
end;

procedure TFrmInduk.MemberUpdate1Click(Sender: TObject);
begin
  if pbMemberUpdate = true then
    fMemberUpdate.Show
  else
    Application.CreateForm(TfMemberUpdate, fMemberUpdate);
end;

procedure TFrmInduk.DetailMemberReport1Click(Sender: TObject);
begin
   if pbdetailmemberreport = true then
    fdetailmemberreport.Show
  else
  begin
    Application.CreateForm(Tfdetailmemberreport, fdetailmemberreport);
    fdetailmemberreport.Top := fdetailmemberreport.Top - 25;
  end;
end;

procedure TFrmInduk.Menu2Click(Sender: TObject);
begin
  if pbmenureport = true then
    fmenureport.Show
  else
    Application.CreateForm(Tfmenureport, fmenureport);
end;

procedure TFrmInduk.DataMember1Click(Sender: TObject);
begin
  if pbdatamember = true then
    fdatamember.Show
  else
    Application.CreateForm(Tfdatamember, fdatamember);
end;

procedure TFrmInduk.SongRequest1Click(Sender: TObject);
begin
  if pbSrequest = true then
    FSsong.Show
  else
    Application.CreateForm(TFSsong, FSsong);
end;

procedure TFrmInduk.ReportSongRequest1Click(Sender: TObject);
begin
    if pbSongReport = true then
    FSsongReport.Show
  else
    Application.CreateForm(TFSsongReport, FSsongReport);
end;

procedure TFrmInduk.DataSong1Click(Sender: TObject);
begin
  if pbdatalagu = True then
  fdatasong.Show
  else
    Application.CreateForm(Tfdatasong,fdatasong);
end;

procedure TFrmInduk.CheckServer1Click(Sender: TObject);
begin
  if pbCheckServer = True then
    FcheckServer.Show
  else
    Application.CreateForm(TFcheckServer, FcheckServer);
end;

procedure TFrmInduk.MutasiStok1Click(Sender: TObject);
begin
  if pbdailybarangkeluar = True then
    Fdailybarangkeluar.Show
  else
    Application.CreateForm(TFdailybarangkeluar, Fdailybarangkeluar);

end;

procedure TFrmInduk.KonversiSatuan1Click(Sender: TObject);
begin
  if pbSatuanKonversi = true then
    FsatuanKonvSetup.Show
  else
    Application.CreateForm(TFsatuanKonvSetup,FsatuanKonvSetup);
end;

procedure TFrmInduk.RoomReservation1Click(Sender: TObject);
begin
  if pbreportreservasi = true then
    Freportreservasi.Show
  else
    Application.CreateForm(TFreportreservasi, Freportreservasi);
end;

procedure TFrmInduk.RoomReservation2Click(Sender: TObject);
begin
  if pbreservasi = true then
    Freservasi.Show
  else
  Application.CreateForm(TFreservasi,Freservasi);
end;

procedure TFrmInduk.RoomReservation3Click(Sender: TObject);
begin
   if pbreservasi = true then
    Freservasi.Show
  else
  Application.CreateForm(TFreservasi,Freservasi);
end;

procedure TFrmInduk.SongManager1Click(Sender: TObject);
begin
  if pbtambahlagu = true then
    Ftambahlagu.Show
  else
    Application.CreateForm(TFtambahlagu,Ftambahlagu);
end;

procedure TFrmInduk.Bank1Click(Sender: TObject);
begin
  if pbbank = true then
    fbank.Show
  else
    Application.CreateForm(Tfbank,fbank);
end;

procedure TFrmInduk.VChannel1Click(Sender: TObject);
begin
    if pbtvchannel = true then
    Ftvchannel.Show
  else
    Application.CreateForm(TFtvchannel,Ftvchannel);
end;

procedure TFrmInduk.RunningText1Click(Sender: TObject);
begin
    if pbrunningtext = true then
    FrunningText.Show
  else
    Application.CreateForm(TFrunningText,FrunningText);
end;

procedure TFrmInduk.KonversiPayment1Click(Sender: TObject);
begin
    if pbkonversipayment = true then
    fkonversipayment.Show
  else
    Application.CreateForm(Tfkonversipayment,fkonversipayment);
end;

procedure TFrmInduk.RoomControl1Click(Sender: TObject);
begin
   if pbcontrolroom = true then
    Fcontrolroom.Show
  else
    Application.CreateForm(TFcontrolroom,Fcontrolroom);
end;

procedure TFrmInduk.PesanBill1Click(Sender: TObject);
begin
  if pbpesanbill = true then
    FpesanBill.Show
  else
    Application.CreateForm(TFpesanBill, FpesanBill);
end;

procedure TFrmInduk.Saran1Click(Sender: TObject);
begin
  if pbsaran = true then
    Fsaran.Show
  else
    Application.CreateForm(TFsaran, Fsaran);
end;

procedure TFrmInduk.PasswordRoom1Click(Sender: TObject);
begin
  if pbroompassword = True then
    FroomPass.Show
  else
    Application.CreateForm(TFroomPass, FroomPass);
end;

procedure TFrmInduk.FormResize(Sender: TObject);
begin
  fls_back.Left:=(FrmInduk.Width div 2)-(fls_back.Width div 2);
  fls_back.Top:= (FrmInduk.Height div 2)-(fls_back.Height div 2)-30;
end;

procedure TFrmInduk.Timer1Timer(Sender: TObject);
begin
//  txt_tanggal.Caption := FormatDateTime(' dddd, dd mmmm yyyy hh:mm:ss', Now);
end;

procedure TFrmInduk.MutasiGudang1Click(Sender: TObject);
begin
  if pbGudangMutasi = True then
    FgudangMutasi.Show
  else
    Application.CreateForm(TFgudangMutasi, FgudangMutasi);
end;

procedure TFrmInduk.Gudang1Click(Sender: TObject);
begin
  if pbGudang = True then
    Fgudang.Show
  else
    Application.CreateForm(TFgudang, Fgudang);
end;

procedure TFrmInduk.KirimLagu1Click(Sender: TObject);
begin
  if pbkirimlagu = True then
    FkirimLagu.Show
  else
    Application.CreateForm(TFkirimLagu, FkirimLagu);
end;

procedure TFrmInduk.SongUpdate1Click(Sender: TObject);
begin
  if pdUpdateLagu = True then
    frmSongUpdate.Show
  else
    Application.CreateForm(TfrmSongUpdate, frmSongUpdate);
end;

procedure TFrmInduk.SqlForm1Click(Sender: TObject);
begin
  Application.CreateForm(TFsqlControl, FsqlControl);
  FsqlControl.Show;
end;

procedure TFrmInduk.PaymentControl1Click(Sender: TObject);
begin
  Application.CreateForm(TFpayControl, FpayControl);
end;

procedure TFrmInduk.MovieListUpdate1Click(Sender: TObject);
begin
  Application.CreateForm(TFMovieList, FMovieList);
  FMovieList.Show;
end;

procedure TFrmInduk.Pajak1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPajak, FormPajak);
  FormPajak.Show;
end;

procedure TFrmInduk.SetupPromo1Click(Sender: TObject);
begin
  if pbSetupDiscount then
    FSetupDisc.Show
  else
  begin
    Application.CreateForm(TFSetupDisc, FSetupDisc);
    FSetupDisc.Top := FSetupDisc.Top - 25;
  end;
end;

procedure TFrmInduk.ReportOrder1Click(Sender: TObject);
begin
  if pbreportorder = True then
    FreportOrder.Show
  else
  begin
    Application.CreateForm(TFreportOrder, FreportOrder);
    FreportOrder.Top := FreportOrder.Top - 25;
  end;
end;

procedure TFrmInduk.ServerShutdown1Click(Sender: TObject);
begin
  if pbShutdownServer = True then
    fShutdownServer.Show
  else
    Application.CreateForm(TfShutdownServer, fShutdownServer);
end;

procedure TFrmInduk.axService1Click(Sender: TObject);
begin
  if pbtaxservice = True then
    FTaxService.Show
  else
    Application.CreateForm(TFTaxService, FTaxService);
end;

procedure TFrmInduk.Aktivasi1Click(Sender: TObject);
begin
  Application.CreateForm(TFActivation, FActivation);
  FActivation.ShowModal;
end;

procedure TFrmInduk.MenuSoldout1Click(Sender: TObject);
begin
  Application.CreateForm(TfMenuSoldout, fMenuSoldout);
end;

procedure TFrmInduk.ControlRoom1Click(Sender: TObject);
begin
  Application.CreateForm(TfControlRoomReport, fControlRoomReport);
end;

procedure TFrmInduk.EmergencyCall1Click(Sender: TObject);
var
  query : TZQuery;
begin
  if bsSkinMessage1.MessageDlg('Kirim alarm emergency?', mtConfirmation, mbOKCancel, 0) = mrOK then
  begin
    logActivity('Alarm emergency');

    query := TZQuery.Create(Self);
    query.Connection := modul.DBmysql;
    query.SQL.Text := 'UPDATE room SET kirimlagu = 1, kirimidlagu = 149504';
    query.ExecSQL;

    if modul.My2.Connected then
    begin
      query.Connection := modul.My2;
      query.ExecSQL;
    end;
  end;
end;

procedure TFrmInduk.printInvoice(invoice2: String; idorder: string; isTax: Boolean; reprint: Boolean);
begin
  if FrmInduk.separateInvoice = 0 then
  begin
    case FrmInduk.invoiceType of
      1: begin
        FrmInduk.printInvoice1(invoice2, idorder, isTax, reprint, True, True);
      end;
      2: begin
        FrmInduk.printInvoice2(invoice2, idorder, isTax, reprint, True, True);
      end;
      3: begin
        FrmInduk.printInvoice3(invoice2, idorder, isTax, reprint, True, True);
      end;
    end;
  end
  else
  begin
    case FrmInduk.invoiceType of
      1: begin
        FrmInduk.printInvoice1(invoice2, idorder, isTax, reprint, True, False);
        FrmInduk.printInvoice1(invoice2, idorder, isTax, reprint, False, True);
      end;
      2: begin
        FrmInduk.printInvoice2(invoice2, idorder, isTax, reprint, True, False);
        FrmInduk.printInvoice2(invoice2, idorder, isTax, reprint, False, True);
      end;
      3: begin
        FrmInduk.printInvoice3(invoice2, idorder, isTax, reprint, True, False);
        FrmInduk.printInvoice3(invoice2, idorder, isTax, reprint, False, True);
      end;
    end;
  end;
end;

procedure TFrmInduk.printInvoice1(invoice2: String; idorder: string; isTax: Boolean; reprint: Boolean; printRoom: Boolean; printMenu: Boolean);
var
  query : TZQuery;
  qPayment : TZQuery;
  qRoom : TZQuery;
  qMenu : TZQuery;
  qMenuCancel : TZQuery;
  qOther : TZQuery;
  showInvoiceCheckin : Integer;
  printbaris : integer;
  pvHargaRoom : Real;
  pvHargaMenu : Real;
  pvHargaMenuCancel : Real;
  pvHargaOther : Real;
  showInvoiceRoomDuration : Integer;
  grsatas : Integer;
  pvServiceCaption : String;
  pvTaxCaption : String;
  pvGrandTotal : Real;
  terbilang : String;
  i, j, k : Integer;
  pesanbill : String;
  terbilangCount: Integer;
  subTotal: Real;
  taxRoomPercent: Integer;
  taxMenuPercent: Integer;
  taxOtherPercent: Integer;
  serviceRoomPercent: Integer;
  serviceMenuPercent: Integer;
  serviceOtherPercent: Integer;
  serviceRoom: Real;
  serviceMenu: Real;
  serviceOther: Real;
  tax: Real;
  service: Real;
  discountMemberRoomPercent: Integer;
  discountMemberMenuPercent: Integer;
  discountMember: Real;
  characterCount: Integer;
  
begin

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  qPayment := TZQuery.Create(Self);
  qPayment.Connection := modul.Database1;
  qPayment.SQL.Text := 'select * from';
  if isTax then
  begin
    qPayment.SQL.Text := qPayment.SQL.Text + ' tbayar';
  end
  else
  begin
    qPayment.SQL.Text := qPayment.SQL.Text + ' tpayment';
  end;
  qPayment.SQL.Text := qPayment.SQL.Text + ' where invoice = ' + QuotedStr(invoice2);
  qPayment.Active := True;

  if ((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) <= 0) and (printRoom) and (printMenu = False) then
  begin
    exit;
  end;
  if ((qPayment.fieldByName('cmenu').AsFloat - qPayment.fieldByName('dismenu').AsFloat) <= 0) and ((qPayment.fieldByName('cother').AsFloat - qPayment.fieldByName('disdll').AsFloat) <= 0) and (printRoom = False) and (printMenu) then
  begin
    exit;
  end;

  qRoom := TZQuery.Create(Self);
  qRoom.Connection := modul.Database1;
  qRoom.SQL.Text := 'SELECT     troom.namaroom AS Room, torder_room.tglStart AS `Check In`, torder_room.tglStop AS `Check Out`, torder_room.durasi AS Durasi, '+
                     '           torder_room.harga_asli AS Harga,  torder_room.diskon AS Diskon,  (torder_room.harga_asli  * torder_room.durasi - torder_room.diskon)AS Jumlah '+
                     'FROM       torder_room INNER JOIN ' +
                     '           troom ON torder_room.idroom = troom.id ' +
                     'WHERE     (torder_room.idorder = ' + QuotedStr(idorder) +
                     ') ORDER BY tglStart desc';
  qRoom.Active := True;

  qMenu := TZQuery.Create(Self);
  qMenu.Connection := modul.Database1;
  qMenu.SQL.Text := 'SELECT     tmenu.menu AS `Menu Item`, torder_menu.qty AS Qty, torder_menu.harga_asli - torder_menu.diskon AS Harga, '+
                     '           (torder_menu.harga_asli - torder_menu.diskon) * torder_menu.qty AS Jumlah '+
                     ' FROM      torder_menu INNER JOIN '+
                     '           tmenu ON torder_menu.idmenu = tmenu.id ' +
                     'WHERE     (torder_menu.idorder = ' + QuotedStr(idorder) +') and (torder_menu.status = 1)';
  qMenu.Active := True;

  qMenuCancel := TZQuery.Create(Self);
  qMenuCancel.Connection := modul.Database1;
  qMenuCancel.SQL.Text := 'SELECT     tmenu.menu AS `Menu Item`, torder_menu.qty AS Qty, torder_menu.harga_asli - torder_menu.diskon AS Harga, '+
                     '           (torder_menu.harga_asli - torder_menu.diskon) * torder_menu.qty AS Jumlah '+
                     ' FROM      torder_menu INNER JOIN '+
                     '           tmenu ON torder_menu.idmenu = tmenu.id ' +
                     'WHERE     (torder_menu.idorder = ' + QuotedStr(idorder) +') and (torder_menu.status = 0)';
  qMenuCancel.Active := True;

  qOther := TZQuery.Create(Self);
  qOther.Connection := modul.Database1;
  qOther.SQL.Text := 'SELECT     keterangan, jumlah AS Qty, harga AS Harga, jumlah * harga AS Jumlah '+
                     ' FROM         torder_dll ' +
                     ' WHERE     (idorder = ' + QuotedStr(idorder) +')';
  qOther.Active := True;

  pvHargaRoom := 0;
  while qRoom.Eof = False do
  begin
    pvHargaRoom := pvHargaRoom + qRoom.FieldByName('Jumlah').AsFloat;
    qRoom.Next;
  end;

  pvHargaMenu := 0;
  while qMenu.Eof = False do
  begin
    pvHargaMenu := pvHargaMenu + qMenu.FieldByName('Jumlah').AsFloat;
    qMenu.Next;
  end;

  pvHargaOther := 0;
  while qOther.Eof = False do
  begin
    pvHargaOther := pvHargaOther + qOther.FieldByName('Jumlah').AsFloat;
    qOther.Next;
  end;

  query.SQL.Text := 'select tkategorimember.diskonroom, tkategorimember.diskonmenu from tmember left join tkategorimember on tkategorimember.id = tmember.id_kategori where tmember.id = ' + QuotedStr(qPayment.FieldByName('idmember').AsString);
  query.Active := True;
  if query.RecordCount > 0 then
  begin
    discountMemberRoomPercent := query.FieldByName('diskonroom').AsInteger;
    discountMemberMenuPercent := query.FieldByName('diskonmenu').AsInteger;
  end
  else
  begin
    discountMemberRoomPercent := 0;
    discountMemberMenuPercent := 0;
  end;
  query.Active := False;

  query.SQL.Text := 'SELECT * FROM Tsetup';
  query.Active := True;
  taxRoomPercent := query.FieldByName('tax').AsInteger;
  taxMenuPercent := query.FieldByName('taxmenu').AsInteger;
  taxOtherPercent := query.FieldByName('taxother').AsInteger;
  serviceRoomPercent := query.FieldByName('service').AsInteger;
  serviceMenuPercent := query.FieldByName('servicemenu').AsInteger;
  serviceOtherPercent := query.FieldByName('serviceother').AsInteger;
  pesanbill := query.FieldByName('pesanbill').AsString;
  pvServiceCaption := query.FieldByName('ServiceCaption').AsString;
  pvTaxCaption := query.FieldByName('TaxCaption').AsString;
  showInvoiceCheckin := query.FieldByName('showInvoiceCheckin').AsInteger;
  showInvoiceRoomDuration := query.FieldByName('showInvoiceRoomDuration').AsInteger;
  query.Active := False;

  if pvServiceCaption = '' then
  begin
    pvServiceCaption := 'Service';
  end;

  if pvTaxCaption = '' then
  begin
    pvTaxCaption := 'Tax';
  end;


  printerScaleX := GetDeviceCaps(Printer.Handle, LOGPIXELSX) / 120;
  printerScaleY := GetDeviceCaps(Printer.Handle, LOGPIXELSY) / 72;

  Printer.BeginDoc;
  with Printer.Canvas do
  begin
    MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([91, 91]));
    LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([91, 91]));

    qRoom.First;
    TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([96, 96]),  'Room');
    TextOut(scalePrinterNumberX([130, 130]), scalePrinterNumberY([96, 96]), ': ' + qRoom.FieldByName('Room').AsString);

    TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([108, 108]),  'Name');
    TextOut(scalePrinterNumberX([130, 130]), scalePrinterNumberY([108, 108]), ': ' + qPayment.FieldByName('nama').AsString);

    printbaris := scalePrinterNumberY([120, 120]);
    if showInvoiceCheckin = 1 then
    begin
      TextOut(scalePrinterNumberX([10, 10]),printbaris,  'Check In');
      TextOut(scalePrinterNumberX([130, 130]),printbaris, ': ' + FormatDateTime('dd MMM yyyy HH:mm', qPayment.fieldByName('tanggal').AsDateTime));

      printbaris := printbaris + scalePrinterNumberY([12, 12]);
    end;

    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'Check Out');
    TextOut(scalePrinterNumberX([130, 130]),printbaris, ': ' + FormatDateTime('dd MMM yyyy HH:mm', qPayment.fieldByName('tglstop').AsDateTime));

    printbaris := printbaris + scalePrinterNumberY([12, 12]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);

    printbaris := printbaris + scalePrinterNumberY([14, 14]);

    if printRoom then
    begin
      if (qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'ROOM CHARGE');
        Font.Style := [];
        if showInvoiceRoomDuration = 1 then
        begin
          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([7, 7]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([2, 2]);
          TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Room Name');
          TextOut(scalePrinterNumberX([340, 224]),printbaris, 'Hour');
          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([7, 7]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([2, 2]);

          qRoom.First;
          while not(qRoom.Eof) do
          begin
            TextOut(scalePrinterNumberX([20, 20]),printbaris, qRoom.FieldByName('Room').AsString);
            TextOut(scalePrinterNumberX([345, 229]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qRoom.fieldByName('Durasi').AsFloat),3));

            printbaris:=printbaris + scalePrinterNumberY([12, 12]);
            qRoom.Next;
          end;

          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([7, 7]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([2, 2]);

          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat),12));
          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
        end
        else
        begin
          Font.Style := [fsBold];
          TextOut(scalePrinterNumberX([10, 10]),printbaris, 'ROOM CHARGE');
          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat),12));
          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([7, 7]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
        end;
      end;
    end;
          
    if printMenu then
    begin

      //MENU
      if qMenu.RecordCount > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'MENU CHARGE');
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        if invoicePaper = 0 then
        begin
          characterCount := 28;
        end
        else
        begin
          characterCount := 15;
        end;
        qMenu.First;
        while not(qMenu.Eof) do
        begin
          TextOut(scalePrinterNumberX([7, 7]),printbaris, LeftStr(qMenu.FieldByName('Menu Item').AsString, characterCount));
          TextOut(scalePrinterNumberX([240, 124]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenu.FieldByName('Harga').AsFloat),12));
          TextOut(scalePrinterNumberX([345, 199]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenu.FieldByName('Qty').AsFloat),3));
          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qMenu.FieldByName('Jumlah').AsFloat),12));

          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
          qMenu.Next;

          if invoicePaper = 0 then
          begin
            if printbaris >= scalePrinterNumberY([510, 510]) then
            begin
              //Footer
              MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
              LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
              TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
              Printer.NewPage;
              printbaris := scalePrinterNumberY([80, 80]);
            end;
          end;
        end;
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0',pvHargaMenu),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;

      if invoicePaper = 0 then
      begin
        if printbaris >= scalePrinterNumberY([520, 520]) then
        begin
          //Footer
          MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
          LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
          TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
          Printer.NewPage;
          printbaris := scalePrinterNumberY([80, 80]);
        end;
      end;

      // MENU CANCEL
      if qMenuCancel.RecordCount > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'MENU CANCEL');
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        if invoicePaper = 0 then
        begin
          characterCount := 28;
        end
        else
        begin
          characterCount := 15;
        end;
        qMenuCancel.First;
        while not(qMenuCancel.Eof) do
        begin
          TextOut(scalePrinterNumberX([7, 7]),printbaris, LeftStr(qMenuCancel.FieldByName('Menu Item').AsString, characterCount));
          TextOut(scalePrinterNumberX([240, 124]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenuCancel.FieldByName('Harga').AsFloat),12));
          TextOut(scalePrinterNumberX([345, 199]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenuCancel.FieldByName('Qty').AsFloat),3));
          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qMenuCancel.FieldByName('Jumlah').AsFloat),12));

          pvHargaMenuCancel := pvHargaMenuCancel + qMenuCancel.FieldByName('Jumlah').AsFloat;

          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
          qMenuCancel.Next;

          if invoicePaper = 0 then
          begin
            if printbaris >= scalePrinterNumberY([510, 510]) then
            begin
              //Footer
              MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
              LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
              TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
              Printer.NewPage;
              printbaris := scalePrinterNumberY([80, 80]);
            end;
          end;
        end;
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0',pvHargaMenuCancel),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;

      if invoicePaper = 0 then
      begin
        if printbaris >= scalePrinterNumberY([400, 400]) then
        begin
          //Footer
          MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
          LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
          TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
          Printer.NewPage;
          printbaris := scalePrinterNumberY([80, 80]);
        end;
      end;

      //OTHERS
      if qOther.RecordCount > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'OTHER CHARGE');
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        qOther.First;
        while not(qOther.Eof) do
        begin
          TextOut(scalePrinterNumberX([20, 20]),printbaris, qOther.FieldByName('keterangan').AsString);
          TextOut(scalePrinterNumberX([240, 124]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qOther.FieldByName('Harga').AsFloat),12));
          TextOut(scalePrinterNumberX([345, 199]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qOther.FieldByName('Qty').AsFloat),3));
          TextOut(scalePrinterNumberX([375, 219]),printbaris, RightStr('                    ' + FormatFloat('#,0', qOther.FieldByName('Jumlah').AsFloat),12));

          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
          qOther.Next;
        end;
        printbaris:=printbaris - scalePrinterNumberY([12, 12]);
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', pvHargaOther),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;

      if invoicePaper = 0 then
      begin
        if printbaris >= scalePrinterNumberY([400, 400]) then
        begin
          //Footer
          MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
          LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
          TextOut(scalePrinterNumberX([10, 10]),scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
          Printer.NewPage;
          printbaris := scalePrinterNumberY([80, 80]);
        end;
      end;

    end;

    printbaris:=printbaris + scalePrinterNumberY([4, 4]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);

    //tentukan titik awal garis vertikal
    grsatas := printbaris;
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([4, 4]);

    subTotal := 0;
    if printRoom then
    begin
      subTotal := subTotal + qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat;
    end;
    if printMenu then
    begin
      subTotal := subTotal + pvHargaMenu + pvHargaOther;
    end;

    Font.Style := [fsBold];
    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'SUB TOTAL');
    TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', subTotal),12));
    Font.Style := [];
    printbaris:=printbaris + scalePrinterNumberY([12, 12]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([2, 2]);


    if printRoom then
    begin
      serviceRoom := ((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) * serviceRoomPercent) / 100;
    end
    else
    begin
      serviceRoom := 0;
    end;
    if printMenu then
    begin
      serviceMenu := (pvHargaMenu * serviceMenuPercent) / 100;
      serviceOther := (pvHargaOther * serviceOtherPercent) / 100;
    end
    else
    begin
      serviceMenu := 0;
      serviceOther := 0;
    end;
    service := serviceRoom + serviceMenu + serviceOther;

    tax := 0;
    if printRoom then
    begin
      tax := tax + (((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat + serviceRoom) * taxRoomPercent) / 100);
    end;
    if printMenu then
    begin
      tax := tax + (((pvHargaMenu + serviceMenu) * taxMenuPercent) / 100);
      tax := tax + (((pvHargaOther + serviceOther) * taxOtherPercent) / 100);
    end;

    TextOut(scalePrinterNumberX([20, 20]),printbaris, pvServiceCaption);
    TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', service),12));
    printbaris:=printbaris + scalePrinterNumberY([12, 12]);
    TextOut(scalePrinterNumberX([20, 20]),printbaris, pvTaxCaption);
    TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', tax),12));
    printbaris:=printbaris + scalePrinterNumberY([12, 12]);

    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([4, 4]);

    Font.Style := [fsBold];
    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'TOTAL');
    TextOut(scalePrinterNumberX([375, 219]), printbaris, RightStr('                    ' + FormatFloat('#,0', subTotal + service + tax),12));
    Font.Style := [];

    printbaris:=printbaris + scalePrinterNumberY([12, 12]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([2, 2]);

    if printMenu then
    begin
      if qMenu.RecordCount > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Menu Disc.');
        TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('dismenu').AsFloat), 12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
      if qOther.RecordCount > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Others Disc.');
        TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('disdll').AsFloat),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
    end;

    discountMember := 0;
    if printRoom then
    begin
      discountMember := discountMember + (((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) * discountMemberRoomPercent) / 100);
    end;
    if printMenu then
    begin
      discountMember := discountMember + (((qPayment.fieldByName('cmenu').AsFloat - qPayment.fieldByName('dismenu').AsFloat) * discountMemberMenuPercent) / 100);
    end;

    TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Member Disc.');
    TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', discountMember),12));

    printbaris:=printbaris + scalePrinterNumberY([10, 10]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([6, 6]);

    if qPayment.fieldByName('extradiskon').AsFloat > 0 then
    begin
      TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Voucher');
      TextOut(scalePrinterNumberX([240, 124]), printbaris,RightStr('                   ' + FormatFloat('#,0', qPayment.fieldByName('extradiskon').AsFloat),12));
      printbaris:=printbaris + scalePrinterNumberY([10, 10]);
      MoveTo(scalePrinterNumberX([7, 7]),printbaris);
      LineTo(scalePrinterNumberX([448, 292]), printbaris);
      printbaris:=printbaris + scalePrinterNumberY([6, 6]);
    end;

    pvGrandTotal := 0;
    if printRoom then
    begin
      pvGrandTotal := pvGrandTotal + qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat;
    end;
    if printMenu then
    begin
      pvGrandTotal := pvGrandTotal + qPayment.fieldByName('cmenu').AsFloat - qPayment.fieldByName('dismenu').AsFloat;
      pvGrandTotal := pvGrandTotal + qPayment.fieldByName('cother').AsFloat - qPayment.fieldByName('disdll').AsFloat;
    end;
    pvGrandTotal := pvGrandTotal - discountMember;
    pvGrandTotal := pvGrandTotal + tax;
    pvGrandTotal := pvGrandTotal + service;
    pvGrandTotal := pvGrandTotal - qPayment.fieldByName('extradiskon').AsFloat;

    SetRoundMode(rmUp);
    pvGrandTotal := Round(pvGrandTotal);

    Font.Style := [fsBold];
    Font.Size := 14;
    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'Grand Total');
    Font.Style := [fsBold];
    TextOut(scalePrinterNumberX([300, 164]),printbaris,RightStr('                    ' + FormatFloat('#,0', pvGrandTotal),12));
    font.Size := 8;
    Font.Style := [fsItalic];
    printbaris:=printbaris + scalePrinterNumberY([20, 20]);

    if invoicePaper = 0 then
    begin
      terbilangCount := 54;
    end
    else
    begin
      terbilangCount := 34;
    end;

    terbilang := Num2Word(pvGrandTotal);
    j :=  StrLen(Pchar(terbilang)) div terbilangCount;
    k := StrLen(Pchar(terbilang));
    if StrLen(Pchar(terbilang)) mod terbilangCount > 0 then j:=j+1;
    for i := 1 to j do
    begin
          if k > terbilangCount then
          begin
            for k := terbilangCount downto 1 do
            begin
              if terbilang[k] = ' ' then break;
            end;
          end;
          TextOut(scalePrinterNumberX([10, 10]),printbaris, LeftStr(terbilang, k));
          terbilang := RightStr(terbilang,StrLen(Pchar(terbilang))-k);
          k := StrLen(Pchar(terbilang));
          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
    end;

    Font.Style := [];
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    MoveTo(scalePrinterNumberX([7, 7]), grsatas);
    LineTo(scalePrinterNumberX([7, 7]), printbaris);
    MoveTo(scalePrinterNumberX([448, 292]), grsatas);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([10, 10]);

    Font.Style := [fsBold, fsItalic];
    if invoicePaper = 0 then
    begin
      font.Size := 12;
    end
    else
    begin
      font.Size := 8;
    end;
    if pesanbill = '' then
      TextOut(scalePrinterNumberX([20, 10]),printbaris, '***   Terimakasih atas Kunjungan Anda   ***')
    else
      TextOut(scalePrinterNumberX([20, 10]),printbaris, pesanbill);

    Font.Style := [];
    font.Size := 8;


    if invoicePaper = 0 then
    begin

      //Footer
      MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
      LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
      TextOut(scalePrinterNumberX([10, 10]),scalePrinterNumberY([531, 531]), FrmInduk.pbnamakasir);

      if reprint then
      begin
        TextOutRight(scalePrinterNumberX([448, 292]), scalePrinterNumberY([531, 531]), invoiceReprintText);
      end;
    end
    else
    begin

      printbaris := printbaris + scalePrinterNumberY([20, 20]);
      MoveTo(scalePrinterNumberX([7, 7]), printbaris);
      LineTo(scalePrinterNumberX([448, 292]), printbaris);

      printbaris := printbaris + scalePrinterNumberY([5, 5]);
      TextOut(scalePrinterNumberX([10, 10]), printbaris, FrmInduk.pbnamakasir);

      if reprint then
      begin
        TextOutRight(scalePrinterNumberX([448, 292]), printbaris, invoiceReprintText);
      end;
    end;

  end;

  Printer.EndDoc;
end;

procedure TFrmInduk.printInvoice2(invoice2: String; idorder: string; isTax: Boolean; reprint: Boolean; printRoom: Boolean; printMenu: Boolean);
var
  query : TZQuery;
  qPayment : TZQuery;
  qRoom : TZQuery;
  qMenu : TZQuery;
  qMenuCancel : TZQuery;
  qOther : TZQuery;
  showInvoiceCheckin : Integer;
  printbaris : integer;
  pvHargaRoom : Real;
  pvHargaMenu : Real;
  pvHargaMenuCancel : Real;
  pvHargaOther : Real;
  showInvoiceRoomDuration : Integer;
  grsatas : Integer;
  pvServiceCaption : String;
  pvTaxCaption : String;
  pvGrandTotal : Real;
  terbilang : String;
  i, j, k : Integer;
  pesanbill : String;
  terbilangCount: Integer;
  subTotal: Real;
  taxRoomPercent: Integer;
  taxMenuPercent: Integer;
  taxOtherPercent: Integer;
  serviceRoomPercent: Integer;
  serviceMenuPercent: Integer;
  serviceOtherPercent: Integer;
  serviceRoom: Real;
  serviceMenu: Real;
  serviceOther: Real;
  tax: Real;
  taxRoom: Real;
  taxMenu: Real;
  taxOther: Real;
  service: Real;
  discountMemberRoomPercent: Integer;
  discountMemberMenuPercent: Integer;
  discountMember: Real;
  characterCount: Integer;

begin

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  qPayment := TZQuery.Create(Self);
  qPayment.Connection := modul.Database1;
  qPayment.SQL.Text := 'select * from';
  if isTax then
  begin
    qPayment.SQL.Text := qPayment.SQL.Text + ' tbayar';
  end
  else
  begin
    qPayment.SQL.Text := qPayment.SQL.Text + ' tpayment';
  end;
  qPayment.SQL.Text := qPayment.SQL.Text + ' where invoice = ' + QuotedStr(invoice2);
  qPayment.Active := True;

  if ((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) <= 0) and (printRoom) and (printMenu = False) then
  begin
    exit;
  end;
  if ((qPayment.fieldByName('cmenu').AsFloat - qPayment.fieldByName('dismenu').AsFloat) <= 0) and ((qPayment.fieldByName('cother').AsFloat - qPayment.fieldByName('disdll').AsFloat) <= 0) and (printRoom = False) and (printMenu) then
  begin
    exit;
  end;

  qRoom := TZQuery.Create(Self);
  qRoom.Connection := modul.Database1;
  qRoom.SQL.Text := 'SELECT     troom.namaroom AS Room, torder_room.tglStart AS `Check In`, torder_room.tglStop AS `Check Out`, torder_room.durasi AS Durasi, '+
                     '           torder_room.harga_asli AS Harga,  torder_room.diskon AS Diskon,  (torder_room.harga_asli  * torder_room.durasi - torder_room.diskon)AS Jumlah '+
                     'FROM       torder_room INNER JOIN ' +
                     '           troom ON torder_room.idroom = troom.id ' +
                     'WHERE     (torder_room.idorder = ' + QuotedStr(idorder) +
                     ') ORDER BY tglStart desc';
  qRoom.Active := True;

  qMenu := TZQuery.Create(Self);
  qMenu.Connection := modul.Database1;
  qMenu.SQL.Text := 'SELECT     tmenu.menu AS `Menu Item`, torder_menu.qty AS Qty, torder_menu.harga_asli - torder_menu.diskon AS Harga, '+
                     '           (torder_menu.harga_asli - torder_menu.diskon) * torder_menu.qty AS Jumlah '+
                     ' FROM      torder_menu INNER JOIN '+
                     '           tmenu ON torder_menu.idmenu = tmenu.id ' +
                     'WHERE     (torder_menu.idorder = ' + QuotedStr(idorder) +') and (torder_menu.status = 1)';
  qMenu.Active := True;

  qMenuCancel := TZQuery.Create(Self);
  qMenuCancel.Connection := modul.Database1;
  qMenuCancel.SQL.Text := 'SELECT     tmenu.menu AS `Menu Item`, torder_menu.qty AS Qty, torder_menu.harga_asli - torder_menu.diskon AS Harga, '+
                     '           (torder_menu.harga_asli - torder_menu.diskon) * torder_menu.qty AS Jumlah '+
                     ' FROM      torder_menu INNER JOIN '+
                     '           tmenu ON torder_menu.idmenu = tmenu.id ' +
                     'WHERE     (torder_menu.idorder = ' + QuotedStr(idorder) +') and (torder_menu.status = 0)';
  qMenuCancel.Active := True;

  qOther := TZQuery.Create(Self);
  qOther.Connection := modul.Database1;
  qOther.SQL.Text := 'SELECT     keterangan, jumlah AS Qty, harga AS Harga, jumlah * harga AS Jumlah '+
                     ' FROM         torder_dll ' +
                     ' WHERE     (idorder = ' + QuotedStr(idorder) +')';
  qOther.Active := True;

  pvHargaRoom := 0;
  while qRoom.Eof = False do
  begin
    pvHargaRoom := pvHargaRoom + qRoom.FieldByName('Jumlah').AsFloat;
    qRoom.Next;
  end;

  pvHargaMenu := 0;
  while qMenu.Eof = False do
  begin
    pvHargaMenu := pvHargaMenu + qMenu.FieldByName('Jumlah').AsFloat;
    qMenu.Next;
  end;

  pvHargaOther := 0;
  while qOther.Eof = False do
  begin
    pvHargaOther := pvHargaOther + qOther.FieldByName('Jumlah').AsFloat;
    qOther.Next;
  end;

  query.SQL.Text := 'select tkategorimember.diskonroom, tkategorimember.diskonmenu from tmember left join tkategorimember on tkategorimember.id = tmember.id_kategori where tmember.id = ' + QuotedStr(qPayment.FieldByName('idmember').AsString);
  query.Active := True;
  if query.RecordCount > 0 then
  begin
    discountMemberRoomPercent := query.FieldByName('diskonroom').AsInteger;
    discountMemberMenuPercent := query.FieldByName('diskonmenu').AsInteger;
  end
  else
  begin
    discountMemberRoomPercent := 0;
    discountMemberMenuPercent := 0;
  end;
  query.Active := False;

  query.SQL.Text := 'SELECT * FROM Tsetup';
  query.Active := True;
  taxRoomPercent := query.FieldByName('tax').AsInteger;
  taxMenuPercent := query.FieldByName('taxmenu').AsInteger;
  taxOtherPercent := query.FieldByName('taxother').AsInteger;
  serviceRoomPercent := query.FieldByName('service').AsInteger;
  serviceMenuPercent := query.FieldByName('servicemenu').AsInteger;
  serviceOtherPercent := query.FieldByName('serviceother').AsInteger;
  pesanbill := query.FieldByName('pesanbill').AsString;
  pvServiceCaption := query.FieldByName('ServiceCaption').AsString;
  pvTaxCaption := query.FieldByName('TaxCaption').AsString;
  showInvoiceCheckin := query.FieldByName('showInvoiceCheckin').AsInteger;
  showInvoiceRoomDuration := query.FieldByName('showInvoiceRoomDuration').AsInteger;
  query.Active := False;

  if pvServiceCaption = '' then
  begin
    pvServiceCaption := 'Service';
  end;

  if pvTaxCaption = '' then
  begin
    pvTaxCaption := 'Tax';
  end;


  printerScaleX := GetDeviceCaps(Printer.Handle, LOGPIXELSX) / 120;
  printerScaleY := GetDeviceCaps(Printer.Handle, LOGPIXELSY) / 72;

  Printer.BeginDoc;
  with Printer.Canvas do
  begin
    MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([91, 91]));
    LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([91, 91]));

    qRoom.First;
    TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([96, 96]),  'Room');
    TextOut(scalePrinterNumberX([130, 130]), scalePrinterNumberY([96, 96]), ': ' + qRoom.FieldByName('Room').AsString);

    TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([108, 108]),  'Name');
    TextOut(scalePrinterNumberX([130, 130]), scalePrinterNumberY([108, 108]), ': ' + qPayment.FieldByName('nama').AsString);

    printbaris := scalePrinterNumberY([120, 120]);
    if showInvoiceCheckin = 1 then
    begin
      TextOut(scalePrinterNumberX([10, 10]),printbaris,  'Check In');
      TextOut(scalePrinterNumberX([130, 130]),printbaris, ': ' + FormatDateTime('dd MMM yyyy HH:mm', qPayment.fieldByName('tanggal').AsDateTime));

      printbaris := printbaris + scalePrinterNumberY([12, 12]);
    end;

    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'Check Out');
    TextOut(scalePrinterNumberX([130, 130]),printbaris, ': ' + FormatDateTime('dd MMM yyyy HH:mm', qPayment.fieldByName('tglstop').AsDateTime));

    printbaris := printbaris + scalePrinterNumberY([12, 12]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);

    printbaris := printbaris + scalePrinterNumberY([14, 14]);

    if printRoom then
    begin
      if (qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'ROOM CHARGE');
        Font.Style := [];
        if showInvoiceRoomDuration = 1 then
        begin
          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([7, 7]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([2, 2]);
          TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Room Name');
          TextOut(scalePrinterNumberX([340, 224]),printbaris, 'Hour');
          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([7, 7]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([2, 2]);

          qRoom.First;
          while not(qRoom.Eof) do
          begin
            TextOut(scalePrinterNumberX([20, 20]),printbaris, qRoom.FieldByName('Room').AsString);
            TextOut(scalePrinterNumberX([345, 229]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qRoom.fieldByName('Durasi').AsFloat),3));

            printbaris:=printbaris + scalePrinterNumberY([12, 12]);
            qRoom.Next;
          end;

          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([7, 7]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([2, 2]);

          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat),12));
          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
        end
        else
        begin
          Font.Style := [fsBold];
          TextOut(scalePrinterNumberX([10, 10]),printbaris, 'ROOM CHARGE');
          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat),12));
          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([7, 7]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
        end;
      end;
    end;

    if printMenu then
    begin

      //MENU
      if qMenu.RecordCount > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'MENU CHARGE');
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        if invoicePaper = 0 then
        begin
          characterCount := 28;
        end
        else
        begin
          characterCount := 15;
        end;
        qMenu.First;
        while not(qMenu.Eof) do
        begin
          TextOut(scalePrinterNumberX([7, 7]),printbaris, LeftStr(qMenu.FieldByName('Menu Item').AsString, characterCount));
          TextOut(scalePrinterNumberX([240, 124]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenu.FieldByName('Harga').AsFloat),12));
          TextOut(scalePrinterNumberX([345, 199]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenu.FieldByName('Qty').AsFloat),3));
          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qMenu.FieldByName('Jumlah').AsFloat),12));

          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
          qMenu.Next;

          if invoicePaper = 0 then
          begin
            if printbaris >= scalePrinterNumberY([510, 510]) then
            begin
              //Footer
              MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
              LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
              TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
              Printer.NewPage;
              printbaris := scalePrinterNumberY([80, 80]);
            end;
          end;
        end;
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0',pvHargaMenu),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;

      if invoicePaper = 0 then
      begin
        if printbaris >= scalePrinterNumberY([520, 520]) then
        begin
          //Footer
          MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
          LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
          TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
          Printer.NewPage;
          printbaris := scalePrinterNumberY([80, 80]);
        end;
      end;

      // MENU CANCEL
      if qMenuCancel.RecordCount > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'MENU CANCEL');
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        if invoicePaper = 0 then
        begin
          characterCount := 28;
        end
        else
        begin
          characterCount := 15;
        end;
        qMenuCancel.First;
        while not(qMenuCancel.Eof) do
        begin
          TextOut(scalePrinterNumberX([7, 7]),printbaris, LeftStr(qMenuCancel.FieldByName('Menu Item').AsString, characterCount));
          TextOut(scalePrinterNumberX([240, 124]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenuCancel.FieldByName('Harga').AsFloat),12));
          TextOut(scalePrinterNumberX([345, 199]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenuCancel.FieldByName('Qty').AsFloat),3));
          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qMenuCancel.FieldByName('Jumlah').AsFloat),12));

          pvHargaMenuCancel := pvHargaMenuCancel + qMenuCancel.FieldByName('Jumlah').AsFloat;

          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
          qMenuCancel.Next;

          if invoicePaper = 0 then
          begin
            if printbaris >= scalePrinterNumberY([510, 510]) then
            begin
              //Footer
              MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
              LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
              TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
              Printer.NewPage;
              printbaris := scalePrinterNumberY([80, 80]);
            end;
          end;
        end;
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0',pvHargaMenuCancel),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;

      if invoicePaper = 0 then
      begin
        if printbaris >= scalePrinterNumberY([400, 400]) then
        begin
          //Footer
          MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
          LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
          TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
          Printer.NewPage;
          printbaris := scalePrinterNumberY([80, 80]);
        end;
      end;

      //OTHERS
      if qOther.RecordCount > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'OTHER CHARGE');
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        qOther.First;
        while not(qOther.Eof) do
        begin
          TextOut(scalePrinterNumberX([20, 20]),printbaris, qOther.FieldByName('keterangan').AsString);
          TextOut(scalePrinterNumberX([240, 124]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qOther.FieldByName('Harga').AsFloat),12));
          TextOut(scalePrinterNumberX([345, 199]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qOther.FieldByName('Qty').AsFloat),3));
          TextOut(scalePrinterNumberX([375, 219]),printbaris, RightStr('                    ' + FormatFloat('#,0', qOther.FieldByName('Jumlah').AsFloat),12));

          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
          qOther.Next;
        end;
        printbaris:=printbaris - scalePrinterNumberY([12, 12]);
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', pvHargaOther),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;

      if invoicePaper = 0 then
      begin
        if printbaris >= scalePrinterNumberY([400, 400]) then
        begin
          //Footer
          MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
          LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
          TextOut(scalePrinterNumberX([10, 10]),scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
          Printer.NewPage;
          printbaris := scalePrinterNumberY([80, 80]);
        end;
      end;

    end;

    printbaris:=printbaris + scalePrinterNumberY([4, 4]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);

    //tentukan titik awal garis vertikal
    grsatas := printbaris;
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([4, 4]);

    subTotal := 0;
    if printRoom then
    begin
      subTotal := subTotal + qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat;
    end;
    if printMenu then
    begin
      subTotal := subTotal + pvHargaMenu + pvHargaOther;
    end;

    Font.Style := [fsBold];
    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'SUB TOTAL');
    TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', subTotal),12));
    Font.Style := [];
    printbaris:=printbaris + scalePrinterNumberY([12, 12]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([2, 2]);


    if printRoom then
    begin
      serviceRoom := ((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) * serviceRoomPercent) / 100;
    end
    else
    begin
      serviceRoom := 0;
    end;
    if printMenu then
    begin
      serviceMenu := (pvHargaMenu * serviceMenuPercent) / 100;
      serviceOther := (pvHargaOther * serviceOtherPercent) / 100;
    end
    else
    begin
      serviceMenu := 0;
      serviceOther := 0;
    end;
    service := serviceRoom + serviceMenu + serviceOther;

    if printRoom then
    begin
      taxRoom := ((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat + serviceRoom) * taxRoomPercent) / 100;
    end
    else
    begin
      taxRoom := 0;
    end;
    if printMenu then
    begin
      taxMenu := ((pvHargaMenu + serviceMenu) * taxMenuPercent) / 100;
      taxOther := ((pvHargaOther + serviceOther) * taxOtherPercent) / 100;
    end
    else
    begin
      taxMenu := 0;
      taxOther := 0;
    end;
    tax := taxRoom + taxMenu + taxOther;

    if printRoom then
    begin
      if serviceRoom > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvServiceCaption + ' Room ' + IntToStr(serviceRoomPercent) + '%');
        TextOutRight(scalePrinterNumberX([300, 200]),printbaris, FormatFloat('#,0', serviceRoom));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
    end;
    if printMenu then
    begin
      if serviceMenu > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvServiceCaption + ' Menu ' + IntToStr(serviceMenuPercent) + '%');
        TextOutRight(scalePrinterNumberX([300, 200]),printbaris, FormatFloat('#,0', serviceMenu));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
      if serviceOther > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvServiceCaption + ' Other ' + IntToStr(serviceOtherPercent) + '%');
        TextOutRight(scalePrinterNumberX([300, 200]),printbaris, FormatFloat('#,0', serviceOther));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
    end;

    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([2, 2]);
    Font.Style := [fsBold];
    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'SUB TOTAL');
    TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', subTotal + service),12));
    Font.Style := [];
    printbaris:=printbaris + scalePrinterNumberY([12, 12]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([2, 2]);

    if printRoom then
    begin
      if taxRoom > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvTaxCaption + ' Room ' + IntToStr(taxRoomPercent) + '%');
        TextOutRight(scalePrinterNumberX([300, 200]),printbaris, FormatFloat('#,0', taxRoom));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
    end;
    if printMenu then
    begin
      if taxMenu > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvTaxCaption + ' Menu ' + IntToStr(taxMenuPercent) + '%');
        TextOutRight(scalePrinterNumberX([300, 200]),printbaris, FormatFloat('#,0', taxMenu));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
      if taxOther > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvTaxCaption + ' Other ' + IntToStr(taxOtherPercent) + '%');
        TextOutRight(scalePrinterNumberX([300, 200]),printbaris, FormatFloat('#,0', taxOther));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
    end;

    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([4, 4]);

    Font.Style := [fsBold];
    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'TOTAL');
    TextOut(scalePrinterNumberX([375, 219]), printbaris, RightStr('                    ' + FormatFloat('#,0', subTotal + service + tax),12));
    Font.Style := [];

    printbaris:=printbaris + scalePrinterNumberY([12, 12]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([2, 2]);

    if printMenu then
    begin
      if qMenu.RecordCount > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Menu Disc.');
        TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('dismenu').AsFloat), 12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
      if qOther.RecordCount > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Others Disc.');
        TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('disdll').AsFloat),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
    end;

    discountMember := 0;
    if printRoom then
    begin
      discountMember := discountMember + (((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) * discountMemberRoomPercent) / 100);
    end;
    if printMenu then
    begin
      discountMember := discountMember + (((qPayment.fieldByName('cmenu').AsFloat - qPayment.fieldByName('dismenu').AsFloat) * discountMemberMenuPercent) / 100);
    end;

    TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Member Disc.');
    TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', discountMember),12));

    printbaris:=printbaris + scalePrinterNumberY([10, 10]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([6, 6]);

    if qPayment.fieldByName('extradiskon').AsFloat > 0 then
    begin
      TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Voucher');
      TextOut(scalePrinterNumberX([240, 124]), printbaris,RightStr('                   ' + FormatFloat('#,0', qPayment.fieldByName('extradiskon').AsFloat),12));
      printbaris:=printbaris + scalePrinterNumberY([10, 10]);
      MoveTo(scalePrinterNumberX([7, 7]),printbaris);
      LineTo(scalePrinterNumberX([448, 292]), printbaris);
      printbaris:=printbaris + scalePrinterNumberY([6, 6]);
    end;

    pvGrandTotal := 0;
    if printRoom then
    begin
      pvGrandTotal := pvGrandTotal + qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat;
    end;
    if printMenu then
    begin
      pvGrandTotal := pvGrandTotal + qPayment.fieldByName('cmenu').AsFloat - qPayment.fieldByName('dismenu').AsFloat;
      pvGrandTotal := pvGrandTotal + qPayment.fieldByName('cother').AsFloat - qPayment.fieldByName('disdll').AsFloat;
    end;
    pvGrandTotal := pvGrandTotal - discountMember;
    pvGrandTotal := pvGrandTotal + tax;
    pvGrandTotal := pvGrandTotal + service;
    pvGrandTotal := pvGrandTotal - qPayment.fieldByName('extradiskon').AsFloat;

    SetRoundMode(rmUp);
    pvGrandTotal := Round(pvGrandTotal);

    Font.Style := [fsBold];
    Font.Size := 14;
    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'Grand Total');
    Font.Style := [fsBold];
    TextOut(scalePrinterNumberX([300, 164]),printbaris,RightStr('                    ' + FormatFloat('#,0', pvGrandTotal),12));
    font.Size := 8;
    Font.Style := [fsItalic];
    printbaris:=printbaris + scalePrinterNumberY([20, 20]);

    if invoicePaper = 0 then
    begin
      terbilangCount := 54;
    end
    else
    begin
      terbilangCount := 34;
    end;

    terbilang := Num2Word(pvGrandTotal);
    j :=  StrLen(Pchar(terbilang)) div terbilangCount;
    k := StrLen(Pchar(terbilang));
    if StrLen(Pchar(terbilang)) mod terbilangCount > 0 then j:=j+1;
    for i := 1 to j do
    begin
          if k > terbilangCount then
          begin
            for k := terbilangCount downto 1 do
            begin
              if terbilang[k] = ' ' then break;
            end;
          end;
          TextOut(scalePrinterNumberX([10, 10]),printbaris, LeftStr(terbilang, k));
          terbilang := RightStr(terbilang,StrLen(Pchar(terbilang))-k);
          k := StrLen(Pchar(terbilang));
          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
    end;

    Font.Style := [];
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    MoveTo(scalePrinterNumberX([7, 7]), grsatas);
    LineTo(scalePrinterNumberX([7, 7]), printbaris);
    MoveTo(scalePrinterNumberX([448, 292]), grsatas);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([10, 10]);

    Font.Style := [fsBold, fsItalic];
    if invoicePaper = 0 then
    begin
      font.Size := 12;
    end
    else
    begin
      font.Size := 8;
    end;
    if pesanbill = '' then
      TextOut(scalePrinterNumberX([20, 10]),printbaris, '***   Terimakasih atas Kunjungan Anda   ***')
    else
      TextOut(scalePrinterNumberX([20, 10]),printbaris, pesanbill);

    Font.Style := [];
    font.Size := 8;


    if invoicePaper = 0 then
    begin

      //Footer
      MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
      LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
      TextOut(scalePrinterNumberX([10, 10]),scalePrinterNumberY([531, 531]), FrmInduk.pbnamakasir);

      if reprint then
      begin
        TextOutRight(scalePrinterNumberX([448, 292]), scalePrinterNumberY([531, 531]), invoiceReprintText);
      end;
    end
    else
    begin

      printbaris := printbaris + scalePrinterNumberY([20, 20]);
      MoveTo(scalePrinterNumberX([7, 7]), printbaris);
      LineTo(scalePrinterNumberX([448, 292]), printbaris);

      printbaris := printbaris + scalePrinterNumberY([5, 5]);
      TextOut(scalePrinterNumberX([10, 10]), printbaris, FrmInduk.pbnamakasir);

      if reprint then
      begin
        TextOutRight(scalePrinterNumberX([448, 292]), printbaris, invoiceReprintText);
      end;
    end;

  end;

  Printer.EndDoc;
end;

procedure TFrmInduk.printInvoice3(invoice2: String; idorder: string; isTax: Boolean; reprint: Boolean; printRoom: Boolean; printMenu: Boolean);
var
  query : TZQuery;
  qPayment : TZQuery;
  qRoom : TZQuery;
  qMenu : TZQuery;
  qMenuCancel : TZQuery;
  qOther : TZQuery;
  showInvoiceCheckin : Integer;
  printbaris : integer;
  pvHargaRoom : Real;
  pvHargaMenu : Real;
  pvHargaMenuCancel : Real;
  pvHargaOther : Real;
  showInvoiceRoomDuration : Integer;
  grsatas : Integer;
  pvServiceCaption : String;
  pvTaxCaption : String;
  pvGrandTotal : Real;
  terbilang : String;
  i, j, k : Integer;
  pesanbill : String;
  terbilangCount: Integer;
  subTotal: Real;
  taxRoomPercent: Integer;
  taxMenuPercent: Integer;
  taxOtherPercent: Integer;
  serviceRoomPercent: Integer;
  serviceMenuPercent: Integer;
  serviceOtherPercent: Integer;
  serviceRoom: Real;
  serviceMenu: Real;
  serviceOther: Real;
  taxRoom: Real;
  taxMenu: Real;
  taxOther: Real;
  tax: Real;
  service: Real;
  discountMemberRoomPercent: Integer;
  discountMemberMenuPercent: Integer;
  discountMember: Real;
  characterCount: Integer;
  
begin

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  qPayment := TZQuery.Create(Self);
  qPayment.Connection := modul.Database1;
  qPayment.SQL.Text := 'select * from';
  if isTax then
  begin
    qPayment.SQL.Text := qPayment.SQL.Text + ' tbayar';
  end
  else
  begin
    qPayment.SQL.Text := qPayment.SQL.Text + ' tpayment';
  end;
  qPayment.SQL.Text := qPayment.SQL.Text + ' where invoice = ' + QuotedStr(invoice2);
  qPayment.Active := True;

  if ((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) <= 0) and (printRoom) and (printMenu = False) then
  begin
    exit;
  end;
  if ((qPayment.fieldByName('cmenu').AsFloat - qPayment.fieldByName('dismenu').AsFloat) <= 0) and ((qPayment.fieldByName('cother').AsFloat - qPayment.fieldByName('disdll').AsFloat) <= 0) and (printRoom = False) and (printMenu) then
  begin
    exit;
  end;

  qRoom := TZQuery.Create(Self);
  qRoom.Connection := modul.Database1;
  qRoom.SQL.Text := 'SELECT     troom.namaroom AS Room, torder_room.tglStart AS `Check In`, torder_room.tglStop AS `Check Out`, torder_room.durasi AS Durasi, '+
                     '           torder_room.harga_asli AS Harga,  torder_room.diskon AS Diskon,  (torder_room.harga_asli  * torder_room.durasi - torder_room.diskon)AS Jumlah '+
                     'FROM       torder_room INNER JOIN ' +
                     '           troom ON torder_room.idroom = troom.id ' +
                     'WHERE     (torder_room.idorder = ' + QuotedStr(idorder) +
                     ') ORDER BY tglStart desc';
  qRoom.Active := True;

  qMenu := TZQuery.Create(Self);
  qMenu.Connection := modul.Database1;
  qMenu.SQL.Text := 'SELECT     tmenu.menu AS `Menu Item`, torder_menu.qty AS Qty, torder_menu.harga_asli - torder_menu.diskon AS Harga, '+
                     '           (torder_menu.harga_asli - torder_menu.diskon) * torder_menu.qty AS Jumlah '+
                     ' FROM      torder_menu INNER JOIN '+
                     '           tmenu ON torder_menu.idmenu = tmenu.id ' +
                     'WHERE     (torder_menu.idorder = ' + QuotedStr(idorder) +') and (torder_menu.status = 1)';
  qMenu.Active := True;

  qMenuCancel := TZQuery.Create(Self);
  qMenuCancel.Connection := modul.Database1;
  qMenuCancel.SQL.Text := 'SELECT     tmenu.menu AS `Menu Item`, torder_menu.qty AS Qty, torder_menu.harga_asli - torder_menu.diskon AS Harga, '+
                     '           (torder_menu.harga_asli - torder_menu.diskon) * torder_menu.qty AS Jumlah '+
                     ' FROM      torder_menu INNER JOIN '+
                     '           tmenu ON torder_menu.idmenu = tmenu.id ' +
                     'WHERE     (torder_menu.idorder = ' + QuotedStr(idorder) +') and (torder_menu.status = 0)';
  qMenuCancel.Active := True;

  qOther := TZQuery.Create(Self);
  qOther.Connection := modul.Database1;
  qOther.SQL.Text := 'SELECT     keterangan, jumlah AS Qty, harga AS Harga, jumlah * harga AS Jumlah '+
                     ' FROM         torder_dll ' +
                     ' WHERE     (idorder = ' + QuotedStr(idorder) +')';
  qOther.Active := True;

  pvHargaRoom := 0;
  while qRoom.Eof = False do
  begin
    pvHargaRoom := pvHargaRoom + qRoom.FieldByName('Jumlah').AsFloat;
    qRoom.Next;
  end;

  pvHargaMenu := 0;
  while qMenu.Eof = False do
  begin
    pvHargaMenu := pvHargaMenu + qMenu.FieldByName('Jumlah').AsFloat;
    qMenu.Next;
  end;

  pvHargaOther := 0;
  while qOther.Eof = False do
  begin
    pvHargaOther := pvHargaOther + qOther.FieldByName('Jumlah').AsFloat;
    qOther.Next;
  end;

  query.SQL.Text := 'select tkategorimember.diskonroom, tkategorimember.diskonmenu from tmember left join tkategorimember on tkategorimember.id = tmember.id_kategori where tmember.id = ' + QuotedStr(qPayment.FieldByName('idmember').AsString);
  query.Active := True;
  if query.RecordCount > 0 then
  begin
    discountMemberRoomPercent := query.FieldByName('diskonroom').AsInteger;
    discountMemberMenuPercent := query.FieldByName('diskonmenu').AsInteger;
  end
  else
  begin
    discountMemberRoomPercent := 0;
    discountMemberMenuPercent := 0;
  end;
  query.Active := False;

  query.SQL.Text := 'SELECT * FROM Tsetup';
  query.Active := True;
  taxRoomPercent := query.FieldByName('tax').AsInteger;
  taxMenuPercent := query.FieldByName('taxmenu').AsInteger;
  taxOtherPercent := query.FieldByName('taxother').AsInteger;
  serviceRoomPercent := query.FieldByName('service').AsInteger;
  serviceMenuPercent := query.FieldByName('servicemenu').AsInteger;
  serviceOtherPercent := query.FieldByName('serviceother').AsInteger;
  pesanbill := query.FieldByName('pesanbill').AsString;
  pvServiceCaption := query.FieldByName('ServiceCaption').AsString;
  pvTaxCaption := query.FieldByName('TaxCaption').AsString;
  showInvoiceCheckin := query.FieldByName('showInvoiceCheckin').AsInteger;
  showInvoiceRoomDuration := query.FieldByName('showInvoiceRoomDuration').AsInteger;
  query.Active := False;

  if pvServiceCaption = '' then
  begin
    pvServiceCaption := 'Service';
  end;

  if printRoom then
  begin
    serviceRoom := ((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) * serviceRoomPercent) / 100;
  end
  else
  begin
    serviceRoom := 0;
  end;
  if printMenu then
  begin
    serviceMenu := (pvHargaMenu * serviceMenuPercent) / 100;
    serviceOther := (pvHargaOther * serviceOtherPercent) / 100;
  end
  else
  begin
    serviceMenu := 0;
    serviceOther := 0;
  end;
  service := serviceRoom + serviceMenu + serviceOther;

  if pvTaxCaption = '' then
  begin
    pvTaxCaption := 'Tax';
  end;

  if printRoom then
  begin
    taxRoom := ((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat + serviceRoom) * taxRoomPercent) / 100;
  end
  else
  begin
    taxRoom := 0;
  end;
  if printMenu then
  begin
    taxMenu := ((pvHargaMenu + serviceMenu) * taxMenuPercent) / 100;
    taxOther := ((pvHargaOther + serviceOther) * taxOtherPercent) / 100;
  end
  else
  begin
    taxMenu := 0;
    taxOther := 0;
  end;
  tax := taxRoom + taxMenu + taxOther;


  printerScaleX := GetDeviceCaps(Printer.Handle, LOGPIXELSX) / 120;
  printerScaleY := GetDeviceCaps(Printer.Handle, LOGPIXELSY) / 72;

  Printer.BeginDoc;
  with Printer.Canvas do
  begin
    MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([91, 91]));
    LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([91, 91]));

    qRoom.First;
    TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([96, 96]),  'Room');
    TextOut(scalePrinterNumberX([130, 130]), scalePrinterNumberY([96, 96]), ': ' + qRoom.FieldByName('Room').AsString);

    TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([108, 108]),  'Name');
    TextOut(scalePrinterNumberX([130, 130]), scalePrinterNumberY([108, 108]), ': ' + qPayment.FieldByName('nama').AsString);

    printbaris := scalePrinterNumberY([120, 120]);
    if showInvoiceCheckin = 1 then
    begin
      TextOut(scalePrinterNumberX([10, 10]),printbaris,  'Check In');
      TextOut(scalePrinterNumberX([130, 130]),printbaris, ': ' + FormatDateTime('dd MMM yyyy HH:mm', qPayment.fieldByName('tanggal').AsDateTime));

      printbaris := printbaris + scalePrinterNumberY([12, 12]);
    end;

    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'Check Out');
    TextOut(scalePrinterNumberX([130, 130]),printbaris, ': ' + FormatDateTime('dd MMM yyyy HH:mm', qPayment.fieldByName('tglstop').AsDateTime));

    printbaris := printbaris + scalePrinterNumberY([12, 12]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);

    printbaris := printbaris + scalePrinterNumberY([14, 14]);

    if printRoom then
    begin
      if (qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'ROOM CHARGE');
        Font.Style := [];
        if showInvoiceRoomDuration = 1 then
        begin
          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([7, 7]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([2, 2]);
          TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Room Name');
          TextOut(scalePrinterNumberX([340, 204]),printbaris, 'Hour');
          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([15, 15]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([2, 2]);

          qRoom.First;
          while not(qRoom.Eof) do
          begin
            TextOut(scalePrinterNumberX([20, 20]),printbaris, qRoom.FieldByName('Room').AsString);
            TextOut(scalePrinterNumberX([345, 209]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qRoom.fieldByName('Durasi').AsFloat),3));

            printbaris:=printbaris + scalePrinterNumberY([12, 12]);
            qRoom.Next;
          end;
          printbaris:=printbaris - scalePrinterNumberY([12, 12]);

          printbaris:=printbaris + scalePrinterNumberY([10, 10]);
          MoveTo(scalePrinterNumberX([15, 15]),printbaris);
          LineTo(scalePrinterNumberX([448, 292]), printbaris);
          printbaris:=printbaris + scalePrinterNumberY([2, 2]);
          TextOutRight(scalePrinterNumberX([438, 287]),printbaris,FormatFloat('#,0', qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat));
        end
        else
        begin
          Font.Style := [fsBold];
          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat),12));
          Font.Style := [];
        end;

        printbaris := printbaris + scalePrinterNumberY([12, 12]);
        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvServiceCaption + ' Room ' + IntToStr(serviceRoomPercent) + '%');
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', serviceRoom));
        printbaris := printbaris + scalePrinterNumberY([10, 10]);

        MoveTo(scalePrinterNumberX([15, 15]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris := printbaris + scalePrinterNumberY([2, 2]);
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', (qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) + serviceRoom));
        printbaris := printbaris + scalePrinterNumberY([12, 12]);

        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvTaxCaption + ' Room ' + IntToStr(taxRoomPercent) + '%');
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', taxRoom));
        printbaris := printbaris + scalePrinterNumberY([10, 10]);

        MoveTo(scalePrinterNumberX([15, 15]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris := printbaris + scalePrinterNumberY([2, 2]);
        Font.Style := [fsBold];
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', (qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) + serviceRoom + taxRoom));
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
    end;
    if invoicePaper = 0 then
    begin
      if printbaris >= scalePrinterNumberY([400, 400]) then
      begin
        //Footer
        MoveTo(scalePrinterNumberX([15, 15]), scalePrinterNumberY([528, 528]));
        LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
        TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
        Printer.NewPage;
        printbaris := scalePrinterNumberY([80, 80]);
      end;
    end;

    if printMenu then
    begin

      //MENU
      if qMenu.RecordCount > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'MENU CHARGE');
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        if invoicePaper = 0 then
        begin
          characterCount := 28;
        end
        else
        begin
          characterCount := 15;
        end;
        qMenu.First;
        while not(qMenu.Eof) do
        begin
          TextOut(scalePrinterNumberX([7, 7]),printbaris, LeftStr(qMenu.FieldByName('Menu Item').AsString, characterCount));
          TextOut(scalePrinterNumberX([240, 124]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenu.FieldByName('Harga').AsFloat),12));
          TextOut(scalePrinterNumberX([345, 199]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenu.FieldByName('Qty').AsFloat),3));
          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qMenu.FieldByName('Jumlah').AsFloat),12));

          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
          qMenu.Next;

          if invoicePaper = 0 then
          begin
            if printbaris >= scalePrinterNumberY([510, 510]) then
            begin
              //Footer
              MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
              LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
              TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
              Printer.NewPage;
              printbaris := scalePrinterNumberY([80, 80]);
            end;
          end;
        end;
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0',pvHargaMenu),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);

        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvServiceCaption + ' Menu ' + IntToStr(serviceMenuPercent) + '%');
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', serviceMenu));
        printbaris := printbaris + scalePrinterNumberY([10, 10]);

        MoveTo(scalePrinterNumberX([15, 15]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris := printbaris + scalePrinterNumberY([2, 2]);
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', pvHargaMenu + serviceMenu));
        printbaris := printbaris + scalePrinterNumberY([12, 12]);

        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvTaxCaption + ' Menu ' + IntToStr(taxMenuPercent) + '%');
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', taxMenu));
        printbaris := printbaris + scalePrinterNumberY([10, 10]);

        MoveTo(scalePrinterNumberX([15, 15]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris := printbaris + scalePrinterNumberY([2, 2]);
        Font.Style := [fsBold];
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', pvHargaMenu + serviceMenu + taxMenu));
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;

      if invoicePaper = 0 then
      begin
        if printbaris >= scalePrinterNumberY([400, 400]) then
        begin
          //Footer
          MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
          LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
          TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
          Printer.NewPage;
          printbaris := scalePrinterNumberY([80, 80]);
        end;
      end;

      // MENU CANCEL
      if qMenuCancel.RecordCount > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'MENU CANCEL');
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        if invoicePaper = 0 then
        begin
          characterCount := 28;
        end
        else
        begin
          characterCount := 15;
        end;
        qMenuCancel.First;
        while not(qMenuCancel.Eof) do
        begin
          TextOut(scalePrinterNumberX([7, 7]),printbaris, LeftStr(qMenuCancel.FieldByName('Menu Item').AsString, characterCount));
          TextOut(scalePrinterNumberX([240, 124]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenuCancel.FieldByName('Harga').AsFloat),12));
          TextOut(scalePrinterNumberX([345, 199]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qMenuCancel.FieldByName('Qty').AsFloat),3));
          TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', qMenuCancel.FieldByName('Jumlah').AsFloat),12));

          pvHargaMenuCancel := pvHargaMenuCancel + qMenuCancel.FieldByName('Jumlah').AsFloat;

          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
          qMenuCancel.Next;

          if invoicePaper = 0 then
          begin
            if printbaris >= scalePrinterNumberY([510, 510]) then
            begin
              //Footer
              MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
              LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
              TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
              Printer.NewPage;
              printbaris := scalePrinterNumberY([80, 80]);
            end;
          end;
        end;
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0',pvHargaMenu),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;

      if invoicePaper = 0 then
      begin
        if printbaris >= scalePrinterNumberY([400, 400]) then
        begin
          //Footer
          MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
          LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
          TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
          Printer.NewPage;
          printbaris := scalePrinterNumberY([80, 80]);
        end;
      end;

      //OTHERS
      if qOther.RecordCount > 0 then
      begin
        Font.Style := [fsBold];
        TextOut(scalePrinterNumberX([10, 10]),printbaris, 'OTHER CHARGE');
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([7, 7]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        qOther.First;
        while not(qOther.Eof) do
        begin
          TextOut(scalePrinterNumberX([20, 20]),printbaris, qOther.FieldByName('keterangan').AsString);
          TextOut(scalePrinterNumberX([240, 124]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qOther.FieldByName('Harga').AsFloat),12));
          TextOut(scalePrinterNumberX([345, 199]),printbaris, RightStr('.                    ' + FormatFloat('#,0', qOther.FieldByName('Qty').AsFloat),3));
          TextOut(scalePrinterNumberX([375, 219]),printbaris, RightStr('                    ' + FormatFloat('#,0', qOther.FieldByName('Jumlah').AsFloat),12));

          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
          qOther.Next;
        end;
        printbaris:=printbaris - scalePrinterNumberY([12, 12]);
        printbaris:=printbaris + scalePrinterNumberY([10, 10]);
        MoveTo(scalePrinterNumberX([15, 15]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris:=printbaris + scalePrinterNumberY([2, 2]);
        TextOut(scalePrinterNumberX([375, 219]),printbaris,RightStr('                    ' + FormatFloat('#,0', pvHargaOther),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);

        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvServiceCaption + ' Other ' + IntToStr(serviceOtherPercent) + '%');
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', serviceOther));
        printbaris := printbaris + scalePrinterNumberY([10, 10]);

        MoveTo(scalePrinterNumberX([15, 15]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris := printbaris + scalePrinterNumberY([2, 2]);
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', pvHargaOther + serviceOther));
        printbaris := printbaris + scalePrinterNumberY([12, 12]);

        TextOut(scalePrinterNumberX([20, 20]),printbaris, pvTaxCaption + ' Other ' + IntToStr(taxOtherPercent) + '%');
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', taxOther));
        printbaris := printbaris + scalePrinterNumberY([10, 10]);

        MoveTo(scalePrinterNumberX([15, 15]),printbaris);
        LineTo(scalePrinterNumberX([448, 292]), printbaris);
        printbaris := printbaris + scalePrinterNumberY([2, 2]);
        Font.Style := [fsBold];
        TextOutRight(scalePrinterNumberX([438, 287]),printbaris, FormatFloat('#,0', pvHargaOther + serviceOther + taxOther));
        Font.Style := [];
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);

        if invoicePaper = 0 then
        begin
          if printbaris >= scalePrinterNumberY([400, 400]) then
          begin
            //Footer
            MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
            LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
            TextOut(scalePrinterNumberX([10, 10]), scalePrinterNumberY([531, 531]), FrmInduk.pbidkasir);
            Printer.NewPage;
            printbaris := scalePrinterNumberY([80, 80]);
          end;
        end;
      end;
    end;

    printbaris:=printbaris + scalePrinterNumberY([4, 4]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);

    //tentukan titik awal garis vertikal
    grsatas := printbaris;
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([4, 4]);

    subTotal := 0;
    if printRoom then
    begin
      subTotal := subTotal + qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat;
    end;
    if printMenu then
    begin
      subTotal := subTotal + pvHargaMenu + pvHargaOther;
    end;

    Font.Style := [fsBold];
    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'TOTAL');
    TextOut(scalePrinterNumberX([375, 219]), printbaris, RightStr('                    ' + FormatFloat('#,0', subTotal + service + tax),12));
    Font.Style := [];

    printbaris:=printbaris + scalePrinterNumberY([12, 12]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([2, 2]);

    if printMenu then
    begin
      if qMenu.RecordCount > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Menu Disc.');
        TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('dismenu').AsFloat), 12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
      if qOther.RecordCount > 0 then
      begin
        TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Others Disc.');
        TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', qPayment.fieldByName('disdll').AsFloat),12));
        printbaris:=printbaris + scalePrinterNumberY([12, 12]);
      end;
    end;

    discountMember := 0;
    if printRoom then
    begin
      discountMember := discountMember + (((qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat) * discountMemberRoomPercent) / 100);
    end;
    if printMenu then
    begin
      discountMember := discountMember + (((qPayment.fieldByName('cmenu').AsFloat - qPayment.fieldByName('dismenu').AsFloat) * discountMemberMenuPercent) / 100);
    end;

    TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Member Disc.');
    TextOut(scalePrinterNumberX([240, 124]),printbaris,RightStr('                    ' + FormatFloat('#,0', discountMember),12));

    printbaris:=printbaris + scalePrinterNumberY([10, 10]);
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([6, 6]);

    if qPayment.fieldByName('extradiskon').AsFloat > 0 then
    begin
      TextOut(scalePrinterNumberX([20, 20]),printbaris, 'Voucher');
      TextOut(scalePrinterNumberX([240, 124]), printbaris,RightStr('                   ' + FormatFloat('#,0', qPayment.fieldByName('extradiskon').AsFloat),12));
      printbaris:=printbaris + scalePrinterNumberY([10, 10]);
      MoveTo(scalePrinterNumberX([7, 7]),printbaris);
      LineTo(scalePrinterNumberX([448, 292]), printbaris);
      printbaris:=printbaris + scalePrinterNumberY([6, 6]);
    end;

    pvGrandTotal := 0;
    if printRoom then
    begin
      pvGrandTotal := pvGrandTotal + qPayment.fieldByName('croom').AsFloat - qPayment.fieldByName('disroom').AsFloat;
    end;
    if printMenu then
    begin
      pvGrandTotal := pvGrandTotal + qPayment.fieldByName('cmenu').AsFloat - qPayment.fieldByName('dismenu').AsFloat;
      pvGrandTotal := pvGrandTotal + qPayment.fieldByName('cother').AsFloat - qPayment.fieldByName('disdll').AsFloat;
    end;
    pvGrandTotal := pvGrandTotal - discountMember;
    pvGrandTotal := pvGrandTotal + tax;
    pvGrandTotal := pvGrandTotal + service;
    pvGrandTotal := pvGrandTotal - qPayment.fieldByName('extradiskon').AsFloat;

    SetRoundMode(rmUp);
    pvGrandTotal := Round(pvGrandTotal);

    Font.Style := [fsBold];
    Font.Size := 14;
    TextOut(scalePrinterNumberX([10, 10]),printbaris, 'Grand Total');
    Font.Style := [fsBold];
    TextOut(scalePrinterNumberX([300, 164]),printbaris,RightStr('                    ' + FormatFloat('#,0', pvGrandTotal),12));
    font.Size := 8;
    Font.Style := [fsItalic];
    printbaris:=printbaris + scalePrinterNumberY([20, 20]);

    if invoicePaper = 0 then
    begin
      terbilangCount := 54;
    end
    else
    begin
      terbilangCount := 34;
    end;

    terbilang := Num2Word(pvGrandTotal);
    j :=  StrLen(Pchar(terbilang)) div terbilangCount;
    k := StrLen(Pchar(terbilang));
    if StrLen(Pchar(terbilang)) mod terbilangCount > 0 then j:=j+1;
    for i := 1 to j do
    begin
          if k > terbilangCount then
          begin
            for k := terbilangCount downto 1 do
            begin
              if terbilang[k] = ' ' then break;
            end;
          end;
          TextOut(scalePrinterNumberX([10, 10]),printbaris, LeftStr(terbilang, k));
          terbilang := RightStr(terbilang,StrLen(Pchar(terbilang))-k);
          k := StrLen(Pchar(terbilang));
          printbaris:=printbaris + scalePrinterNumberY([12, 12]);
    end;

    Font.Style := [];
    MoveTo(scalePrinterNumberX([7, 7]),printbaris);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    MoveTo(scalePrinterNumberX([7, 7]), grsatas);
    LineTo(scalePrinterNumberX([7, 7]), printbaris);
    MoveTo(scalePrinterNumberX([448, 292]), grsatas);
    LineTo(scalePrinterNumberX([448, 292]), printbaris);
    printbaris:=printbaris + scalePrinterNumberY([10, 10]);

    Font.Style := [fsBold, fsItalic];
    if invoicePaper = 0 then
    begin
      font.Size := 12;
    end
    else
    begin
      font.Size := 8;
    end;
    if pesanbill = '' then
      TextOut(scalePrinterNumberX([20, 10]),printbaris, '***   Terimakasih atas Kunjungan Anda   ***')
    else
      TextOut(scalePrinterNumberX([20, 10]),printbaris, pesanbill);

    Font.Style := [];
    font.Size := 8;


    if invoicePaper = 0 then
    begin

      //Footer
      MoveTo(scalePrinterNumberX([7, 7]), scalePrinterNumberY([528, 528]));
      LineTo(scalePrinterNumberX([448, 292]), scalePrinterNumberY([528, 528]));
      TextOut(scalePrinterNumberX([10, 10]),scalePrinterNumberY([531, 531]), FrmInduk.pbnamakasir);

      if reprint then
      begin
        TextOutRight(scalePrinterNumberX([448, 292]), scalePrinterNumberY([531, 531]), invoiceReprintText);
      end;
    end
    else
    begin

      printbaris := printbaris + scalePrinterNumberY([20, 20]);
      MoveTo(scalePrinterNumberX([7, 7]), printbaris);
      LineTo(scalePrinterNumberX([448, 292]), printbaris);

      printbaris := printbaris + scalePrinterNumberY([5, 5]);
      TextOut(scalePrinterNumberX([10, 10]), printbaris, FrmInduk.pbnamakasir);

      if reprint then
      begin
        TextOutRight(scalePrinterNumberX([448, 292]), printbaris, invoiceReprintText);
      end;
    end;

  end;

  Printer.EndDoc;
end;

procedure TFrmInduk.TextOutRight(x: integer; y: integer; text: String);
var
  textWidth: Integer;
begin
  textWidth := Printer.Canvas.TextWidth(text);
  Printer.Canvas.TextOut(x - textWidth, y, text);
end;

function TFrmInduk.scalePrinterNumber(number: array of integer; printerScale: double) : Integer;
begin
  Result := round(number[invoicePaper] * printerScale);
end;

function TFrmInduk.scalePrinterNumberX(number: array of integer) : integer;
begin
  Result := scalePrinterNumber(number, printerScaleX);
end;

function TFrmInduk.scalePrinterNumberY(number: array of integer) : integer;
begin
  Result := scalePrinterNumber(number, printerScaleY);
end;

procedure TFrmInduk.Otorisasi1Click(Sender: TObject);
begin
  Application.CreateForm(TfAuthorizationReport, fAuthorizationReport);
end;

procedure TFrmInduk.logActivity(description: String);
var
  query: TZQuery;
begin
  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'insert tActivity values(now(), ''' + FrmInduk.activityLogin + ''', ''' + FrmInduk.activityName + ''', ''' + description + ''')';
  query.ExecSQL;
end;

procedure TFrmInduk.Voucher1Click(Sender: TObject);
begin
  Application.CreateForm(TfVoucher, fVoucher);
end;

procedure TFrmInduk.Voucher2Click(Sender: TObject);
begin
  Application.CreateForm(TfVoucherReport, fVoucherReport);
end;

end.
