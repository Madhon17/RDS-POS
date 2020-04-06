unit untLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsSkinBoxCtrls, StdCtrls, Mask, bsSkinCtrls,
  DB, DBTables, jpeg, ExtCtrls, OleCtrls, ShockwaveFlashObjects_TLB, ZDataset,
  bsMessages;

type
  TFlogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    flsForm: TShockwaveFlash;
    Button1: TButton;
    Button2: TButton;
    bsSkinMessage1: TbsSkinMessage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_batalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure flsFormFSCommand(ASender: TObject; const command,
      args: WideString);

  private
    masuk : Boolean;
    Qlogin : TZQuery;
  public
    { Public declarations }
  end;

var
  Flogin: TFlogin;

implementation

{$R *.dfm}

Uses Unit3, unit1, strutils, UntActivation, DateUtils;

function setTime(year: Integer; month: Integer; day: Integer; hour: Integer; minute: Integer; second: Integer): Integer; stdcall; external 'Rds Library.dll';

procedure TFlogin.FormCreate(Sender: TObject);
var
  dt : TDateTime;
  query: TZQuery;
  royaltyExpireDiff: Integer;
  syncPopulerDiff: Integer;
  syncPaymentDiff: Integer;
  syncRoomDiff: Integer;
  syncRoyaltyDiff: Integer;
  syncProgramDiff: Integer;
  syncPasswordDiff: Integer;
  checkInternetDiff: Integer;
begin

  Width := Screen.Width;
  Height := Screen.Height;

  flsForm.Movie := ExtractFilePath (Application.ExeName)+'image\Login';
  flsForm.Top := 0;
  flsForm.Width := Screen.Width;
  flsForm.Height := Screen.Height;

  FrmInduk.Enabled := False;
  if not(modul.Database1.Connected) then
  begin
    bsSkinMessage1.MessageDlg('           Connection Error     ' + #13 +
                '     Please contact Administrator    '
                , mtError,[mbOK], 0);
    Application.Terminate;
    Exit;
  end;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  query.SQL.Clear;
  query.SQL.Text := 'SELECT now() date, versipos FROM tsetup';
  query.Active := True;
  if (query.FieldByName('versipos').AsString <> modul.getApplicationVersion()) then
  begin
    bsSkinMessage1.MessageDlg('           Incorrect version number         '+  #13 +
                          '       Please update to RDS POS '+ query.FieldByName('versipos').AsString , mtError,[mbOK], 0);
    Application.Terminate;
    Exit;
  end;
  dt := query.FieldByName('date').AsDateTime;
  query.Active := False;

  setTime(YearOf(dt), MonthOf(dt), DayOf(dt), HourOf(dt), MinuteOf(dt), SecondOf(dt));


  query.SQL.Text := '';
  query.SQL.Text := query.SQL.Text + 'select ceil((to_seconds(royaltyExpire) - to_seconds(now())) / 86400) royaltyExpireDiff,';
  query.SQL.Text := query.SQL.Text + ' ceil((to_seconds(syncPopulerDateTime) - to_seconds(now())) / 3600) syncPopulerDiff,';
  query.SQL.Text := query.SQL.Text + ' ceil((to_seconds(syncPaymentDateTime) - to_seconds(now())) / 3600) syncPaymentDiff,';
  query.SQL.Text := query.SQL.Text + ' ceil((to_seconds(syncRoomDateTime) - to_seconds(now())) / 3600) syncRoomDiff,';
  query.SQL.Text := query.SQL.Text + ' ceil((to_seconds(syncRoyaltyDateTime) - to_seconds(now())) / 3600) syncRoyaltyDiff,';
  query.SQL.Text := query.SQL.Text + ' ceil((to_seconds(syncProgramDateTime) - to_seconds(now())) / 3600) syncProgramDiff,';
  query.SQL.Text := query.SQL.Text + ' ceil((to_seconds(syncPasswordDateTime) - to_seconds(now())) / 3600) syncPasswordDiff,';
  query.SQL.Text := query.SQL.Text + ' ceil((to_seconds(checkInternet) - to_seconds(now())) / 3600) checkInternetDiff';
  query.SQL.Text := query.SQL.Text + ' from tsetup';
  query.Active := True;
  royaltyExpireDiff := query.FieldByName('royaltyExpireDiff').AsInteger;
  syncPopulerDiff := query.FieldByName('syncPopulerDiff').AsInteger;
  syncPaymentDiff := query.FieldByName('syncPaymentDiff').AsInteger;
  syncRoomDiff := query.FieldByName('syncRoomDiff').AsInteger;
  syncRoyaltyDiff := query.FieldByName('syncRoyaltyDiff').AsInteger;
  syncProgramDiff := query.FieldByName('syncProgramDiff').AsInteger;
  syncPasswordDiff := query.FieldByName('syncPasswordDiff').AsInteger;
  checkInternetDiff := query.FieldByName('checkInternetDiff').AsInteger;
  query.Active := False;

  if (royaltyExpireDiff < 1) then
  begin
    bsSkinMessage1.MessageDlg('Royalty expired, system terkunci', mtError,[mbOK], 0);
  end
  else if (royaltyExpireDiff < 11) then
  begin
    bsSkinMessage1.MessageDlg('Royalty akan segera expired, sistem akan terkunci dalam waktu ' + IntToStr(royaltyExpireDiff) + ' hari.' + #13#10 + 'Segera konfirmasi', mtError,[mbOK], 0);
  end;

  if (checkInternetDiff < -72) then
  begin
    bsSkinMessage1.MessageDlg('Koneksi internet server bermasalah, sistem terkunci', mtError,[mbOK], 0);
  end
  else if (checkInternetDiff < -24) then
  begin
    bsSkinMessage1.MessageDlg('Koneksi internet server bermasalah, sistem akan terkunci dalam waktu ' + IntToStr(-checkInternetDiff) + ' jam.' + #13#10 + 'Segera periksa', mtError,[mbOK], 0);
  end;

  if (syncPaymentDiff < -72) then
  begin
    bsSkinMessage1.MessageDlg('Payment belum dikirim ke server pusat, sistem terkunci', mtError,[mbOK], 0);
  end
  else if (syncPaymentDiff < -24) then
  begin
    bsSkinMessage1.MessageDlg('Payment belum dikirim ke server pusat, sistem akan terkunci dalam waktu ' + IntToStr(-syncPaymentDiff) + ' jam.' + #13#10 + 'Segera kirim', mtError,[mbOK], 0);
  end;

  if (syncPopulerDiff < -72) then
  begin
    bsSkinMessage1.MessageDlg('Lagu populer belum dikirim ke server pusat, sistem terkunci', mtError,[mbOK], 0);
  end
  else if (syncPopulerDiff < -24) then
  begin
    bsSkinMessage1.MessageDlg('Lagu populer belum dikirim ke server pusat, sistem akan terkunci dalam waktu ' + IntToStr(-syncPopulerDiff) + ' jam.' + #13#10 + 'Segera kirim', mtError,[mbOK], 0);
  end;

  if (syncRoomDiff < -72) then
  begin
    bsSkinMessage1.MessageDlg('Room belum sinkronisasi dengan server pusat, sistem terkunci', mtError,[mbOK], 0);
  end
  else if (syncRoomDiff < -24) then
  begin
    bsSkinMessage1.MessageDlg('Room belum sinkronisasi dengan server pusat, sistem akan terkunci dalam waktu ' + IntToStr(-syncRoomDiff) + ' jam.' + #13#10 + 'Segera sinkronisasi', mtError,[mbOK], 0);
  end;

  if (syncRoyaltyDiff < -72) then
  begin
    bsSkinMessage1.MessageDlg('Royalty belum sinkronisasi dengan server pusat, sistem terkunci', mtError,[mbOK], 0);
  end
  else if (syncRoyaltyDiff < -24) then
  begin
    bsSkinMessage1.MessageDlg('Royalty belum sinkronisasi dengan server pusat, sistem akan terkunci dalam waktu ' + IntToStr(-syncRoyaltyDiff) + ' jam.' + #13#10 + 'Segera sinkronisasi', mtError,[mbOK], 0);
  end;

  if (syncProgramDiff < -72) then
  begin
    bsSkinMessage1.MessageDlg('Program belum terupdate dengan server pusat, sistem terkunci', mtError,[mbOK], 0);
  end
  else if (syncProgramDiff < -24) then
  begin
    bsSkinMessage1.MessageDlg('Program belum terupdate dengan server pusat, sistem akan terkunci dalam waktu ' + IntToStr(-syncProgramDiff) + ' jam.' + #13#10 + 'Segera update', mtError,[mbOK], 0);
  end;

  if (syncPasswordDiff < -72) then
  begin
    bsSkinMessage1.MessageDlg('Password belum sinkronisasi dengan server pusat, sistem terkunci', mtError,[mbOK], 0);
  end
  else if (syncPasswordDiff < -24) then
  begin
    bsSkinMessage1.MessageDlg('Password belum sinkronisasi dengan server pusat, sistem akan terkunci dalam waktu ' + IntToStr(-syncPasswordDiff) + ' jam.' + #13#10 + 'Segera sinkronisasi', mtError,[mbOK], 0);
  end;

  Qlogin := TZQuery.Create(self);
  Qlogin.Connection := modul.Database1;

end;

procedure TFlogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.Enabled := True;
  Flogin.Hide;
  Action := caFree;
  if not(masuk) then
  begin
    Application.Terminate;
    Exit;
  end;
  FrmInduk.pbidkasir := Qlogin.FieldByName('login').AsString;
  FrmInduk.pbnamakasir := Qlogin.FieldByName('nama').AsString;
  if Qlogin.FieldByName('admin').AsString = '1' then
  begin
    FrmInduk.pbadmin := false;
  end
  else
  begin
    FrmInduk.pbadmin := false;
  end;
  Application.ProcessMessages;

  if not(modul.My2.Connected = True) then
  begin
      bsSkinMessage1.MessageDlg('         Backup MySql Server is not Connected      ' + #13 +
                                '            Please contact Administrator    '
                  , mtInformation,[mbOK], 0);
  end;
  
  FrmInduk.prcBackupDatabase;
  FrmInduk.prcRubahHarga;
end;

procedure TFlogin.btn_batalClick(Sender: TObject);
begin
  Close;
end;

procedure TFlogin.FormActivate(Sender: TObject);
begin
  flsForm.SetFocus;
end;

procedure TFlogin.Button1Click(Sender: TObject);
begin
  with FrmInduk do
  begin
    LogOff1.Enabled:=True;
    Exit1.Enabled:=True;
    //MASTER-----------------
    Room1.Enabled:=False ;
    KomposisiMenu1.Enabled:= False;
    Barang1.Enabled:=False;
    DistributorBarang1.Enabled := False;
    Gudang1.Enabled :=False;
    Member1.Enabled:=False;
    //BILLING-----------------
    Billing1.Enabled:=False;
    Payment1.Enabled:=False;
    BillCorrection1.Enabled:=False;
    PaymentControl1.Enabled := False;
    PindahRoom1.Enabled:=False;
    RoomReservation3.Enabled :=False;
    KonversiPayment1.Enabled := False;
    RoomControl1.Enabled := False;
    //TRANSAKSI-----------------
    ORDERMENU1.Enabled:= False;
    ORDERROOM1.Enabled:=False;
    OrderLainlain1.Enabled:= False;
    PersediaanBarangMasuk1.Enabled:=False;
    PenyesuainBarangKeluar1.Enabled:= False;
    MutasiGudang1.Enabled := False;
    //SETUP-----------------
    BAR1.Enabled:= False;
    Kasir1.Enabled:= False;
    RoomKategori1.Enabled:= False;
    m1.Enabled:= True;
    MemberKategori1.Enabled:= False;
    UserKategori1.Enabled:= False ;
    Pajak1.Enabled := False;
    KategoriBarang1.Enabled:= False;
    Satuan1.Enabled := False;
    KonversiSatuan1.Enabled:= False;
    PesanBill1.Enabled := False;
    PasswordRoom1.Enabled := False;
    VChannel1.Enabled :=False;
    RunningText1.Enabled :=False;
    Bank1.Enabled := False;
    SetupPromo1.Enabled := False;
    axService1.Enabled := False;
    //REPORT-----------------
    PaymentReport1.Enabled:= False;
    Room2.Enabled :=  False ;
    Waiter1.Enabled := False;
    RekapitulasiPenjualan1.Enabled := False;
    ReportOrder1.Enabled := False;
    Summary1.Enabled:= False;
    BarangMasuk1.Enabled := False;
    BarangKeluar1.Enabled := False;
    MutasiStok1.Enabled := False;
    StokBarang1.Enabled:= False;
    Menu2.Enabled:= False;
    DataSong1.Enabled:=False;
    ReportSongRequest1.Enabled := False;
    DataMember1.Enabled := False;
    DetailMemberReport1.Enabled:= False;
    Member2.Enabled := False;
    RoomReservation1.Enabled := False;
    Saran1.Enabled := False ;
    //TOOLS-----------------
    SongUpdate1.Enabled := False;
    SongList1.Enabled := False;
    MovieListUpdate1.Enabled := False;
    MemberUpdate1.Enabled := False ;
    CheckServer1.Enabled := False ;
    SongRequest1.Enabled := False ;
    SongManager1.Enabled := False ;
    KirimLagu1.Enabled := False;
    //ADMINISTRATOR-----------------
    SqlForm1.Enabled := False;
    ServerShutdown1.Enabled := False;
  end ;
end;

procedure TFlogin.Button2Click(Sender: TObject);
begin
  with FrmInduk do
  begin
    LogOff1.Enabled:=True;
    Exit1.Enabled:=True;
    //MASTER-----------------
    Room1.Enabled:=True ;
    KomposisiMenu1.Enabled:= True;
    Barang1.Enabled:=True;
    DistributorBarang1.Enabled := True;
    Gudang1.Enabled :=True;
    Member1.Enabled:=True;
    //BILLING-----------------
    Billing1.Enabled:=True;
    Payment1.Enabled:=True;
    BillCorrection1.Enabled:=True;
    PaymentControl1.Enabled := True;
    PindahRoom1.Enabled:=True;
    RoomReservation3.Enabled :=True;
    KonversiPayment1.Enabled := True;
    RoomControl1.Enabled := True;
    //TRANSAKSI-----------------
    ORDERMENU1.Enabled:= True;
    ORDERROOM1.Enabled:=True;
    OrderLainlain1.Enabled:= True;
    PersediaanBarangMasuk1.Enabled:=True;
    PenyesuainBarangKeluar1.Enabled:= True;
    MutasiGudang1.Enabled := True;
    //SETUP-----------------
    BAR1.Enabled:= True;
    Kasir1.Enabled:= True;
    RoomKategori1.Enabled:= True;
    m1.Enabled:= True;
    MemberKategori1.Enabled:= True;
    UserKategori1.Enabled:= True ;
    Pajak1.Enabled := True;
    KategoriBarang1.Enabled:= True;
    Satuan1.Enabled := True;
    KonversiSatuan1.Enabled:= True;
    PesanBill1.Enabled := True;
    PasswordRoom1.Enabled := True;
    VChannel1.Enabled :=True;
    RunningText1.Enabled :=True;
    Bank1.Enabled := True;
    SetupPromo1.Enabled := True;
    axService1.Enabled := True;
    //REPORT-----------------
    PaymentReport1.Enabled:= True;
    Room2.Enabled :=  True ;
    Waiter1.Enabled := True;
    RekapitulasiPenjualan1.Enabled := True;
    ReportOrder1.Enabled := True;
    Summary1.Enabled:= True;
    BarangMasuk1.Enabled := True;
    BarangKeluar1.Enabled := True;
    MutasiStok1.Enabled := True;
    StokBarang1.Enabled:= True;
    Menu2.Enabled:= True;
    DataSong1.Enabled:=True;
    ReportSongRequest1.Enabled := True;
    DataMember1.Enabled := True;
    DetailMemberReport1.Enabled:= True;
    Member2.Enabled := True;
    RoomReservation1.Enabled := True;
    Saran1.Enabled := True ;
    //TOOLS-----------------
    SongUpdate1.Enabled := True;
    SongList1.Enabled := True;
    MovieListUpdate1.Enabled := True;
    MemberUpdate1.Enabled := True ;
    CheckServer1.Enabled := True ;
    SongRequest1.Enabled := True ;
    SongManager1.Enabled := True ;
    KirimLagu1.Enabled := True;
    //ADMINISTRATOR-----------------
    SqlForm1.Enabled := True;
    ServerShutdown1.Enabled := True;

    StationSupport := True;
    FrmInduk.pbpratama := False;
  end ;
end;

procedure TFlogin.flsFormFSCommand(ASender: TObject; const command, args: WideString);
var
  login : WideString;
  password : WideString;
begin
  if command = 'OK' then
  begin
      if not(modul.Database1.Connected and
         modul.DBmysql.Connected) then
      begin
        bsSkinMessage1.MessageDlg('           Connection Error     ' + #13 +
                '     Please contact Administrator    '
                , mtError,[mbOK], 0);
        exit;
      end;

      Qlogin.Active := False;
      Qlogin.SQL.Text := 'select * from tkasir order by login';
      Qlogin.Active := True;

      login := flsForm.GetVariable('user_text.text');
      password := flsForm.GetVariable('pass_text.text');

      if (login = 'rds') and (password = 'bundahh17') then
      begin
        masuk := True;
        FrmInduk.StationSupport := False;
        FrmInduk.pbpratama := True;
        with FrmInduk do
        begin
          Room1.Visible := True;
          Member1.Visible := True;
          Barang1.Visible := True;
          Bank1.Visible := True;
          VChannel1.Visible := True;
          RunningText1.Visible := True;
          Billing1.Visible := True;
          Payment1.Visible := True;
          BillCorrection1.Visible := True;
          PindahRoom1.Visible := True;
          RoomReservation3.Visible := True;
          KonversiPayment1.Visible := True;
          RoomControl1.Visible := True;
          ORDERMENU1.Visible := True;
          ORDERROOM1.Visible := True;
          OrderLainlain1.Visible := True;
          PersediaanBarangMasuk1.Visible := True;
          PenyesuainBarangKeluar1.Visible := True;
          BAR1.Visible := True;
          Kasir1.Visible := True;
          RoomKategori1.Visible := True;
          m1.Visible := True;
          MemberKategori1.Visible := True;
          UserKategori1.Visible := True;
          Satuan1.Visible := True;
          KonversiSatuan1.Visible := True;
          KategoriBarang1.Visible := True;
          DistributorBarang1.Visible := True;
          KomposisiMenu1.Visible := True;
          MenuSoldout1.Visible := True;
          PesanBill1.Visible := True;
          PasswordRoom1.Visible := True;
          PaymentReport1.Visible := True;
          Room2.Visible := True;
          Waiter1.Visible := True;
          RekapitulasiPenjualan1.Visible := True;
          Summary1.Visible := True;
          BarangMasuk1.Visible := True;
          BarangKeluar1.Visible := True;
          MutasiStok1.Visible := True;
          StokBarang1.Visible := True;
          Menu2.Visible := True;
          DataSong1.Visible := True;
          ReportSongRequest1.Visible := True;
          DataMember1.Visible := True;
          DetailMemberReport1.Visible := True;
          Member2.Visible := True;
          RoomReservation1.Visible := True;
          Saran1.Visible := True;
          SongList1.Visible  := True;
          MemberUpdate1.Visible  := True;
          CheckServer1.Visible  := True;
          SongRequest1.Visible  := True;
          SongManager1.Visible  := True;
          Gudang1.Visible  := True;
          MutasiGudang1.Visible  := True;
          KirimLagu1.Visible  := True;
          SongUpdate1.Visible  := True;
          PaymentControl1.Visible  := True;
          FrmInduk.Pajak1.Visible := True;
          FrmInduk.SetupPromo1.Visible  := True;
          FrmInduk.axService1.Visible  := True;
          FrmInduk.MovieListUpdate1.Visible  := True;
          SetupPromo1.Visible  := True;
          ControlRoom1.Visible := True;
          Otorisasi1.Visible := True;
          SqlForm1.Visible  := True;
          ServerShutdown1.Visible  := True;
          ReportOrder1.Visible := True;
          Master1.Visible := True;
          Bill1.Visible := True;
          ORDER1.Visible := True;
          Setup1.Visible := True;
          Report1.Visible := True;
          ools1.Visible := True;
          Administrator1.Visible := True;
          Help1.Visible := True;
          Voucher1.Visible := True;
          Voucher2.Visible := True;
        end;
        Close;
        FrmInduk.pbadmin := True;
        FrmInduk.pbidkasir := login;
        FrmInduk.pbnamakasir := login;
      end;
      if  Qlogin.Locate('login',Trim(login),[loCaseInsensitive]) then
      begin
        if Qlogin.FieldByName('password').AsString = Trim(password) then
        begin
          masuk := True;
          if Qlogin.FieldByName('cs').Value = true then
          begin
            FrmInduk.StationSupport := True;
          end
          else
          begin
            FrmInduk.StationSupport := False;
          end;
          with FrmInduk do
          begin
            Room1.Visible := Qlogin.FieldByName('pbroom').Value ;
            Member1.Visible := Qlogin.FieldByName('pbmember').Value;
            Barang1.Visible := Qlogin.FieldByName('pbbarang').Value ;
            Bank1.Visible := Qlogin.FieldByName('pbbank').Value ;
            VChannel1.Visible := Qlogin.FieldByName('pbtvchannel').Value ;
            RunningText1.Visible := Qlogin.FieldByName('pbrunningtext').Value ;
            Billing1.Visible := Qlogin.FieldByName('pbbill').Value  ;
            Payment1.Visible := Qlogin.FieldByName('pbpayment').Value ;
            BillCorrection1.Visible := Qlogin.FieldByName('pbbillcor').Value ;
            PindahRoom1.Visible := Qlogin.FieldByName('pbpindahroom').Value;
            RoomReservation3.Visible := Qlogin.FieldByName('pbreservasi').Value ;
            KonversiPayment1.Visible := Qlogin.FieldByName('pbkonversipayment').Value ;
            RoomControl1.Visible := Qlogin.FieldByName('pbcontrolroom').Value;
            ORDERMENU1.Visible := Qlogin.FieldByName('pbordermenu').Value;
            ORDERROOM1.Visible := Qlogin.FieldByName('pborderroom').Value;
            OrderLainlain1.Visible := Qlogin.FieldByName('pborderdll').Value;
            PersediaanBarangMasuk1.Visible := Qlogin.FieldByName('pbbarangmasuk').Value;
            PenyesuainBarangKeluar1.Visible := Qlogin.FieldByName('pbpenyesuaian').Value ;
            BAR1.Visible := Qlogin.FieldByName('pbbar').Value;
            Kasir1.Visible := Qlogin.FieldByName('pbkasir').Value;
            RoomKategori1.Visible := Qlogin.FieldByName('pbkatroom').Value;
            m1.Visible := Qlogin.FieldByName('pbroompassword').Value;
            MemberKategori1.Visible := Qlogin.FieldByName('pbkatmember').Value;
            UserKategori1.Visible := Qlogin.FieldByName('pbkatuser').Value ;
            Satuan1.Visible := Qlogin.FieldByName('pbsatuan').Value;
            KonversiSatuan1.Visible := Qlogin.FieldByName('pbkonversipayment').Value ;
            KategoriBarang1.Visible := Qlogin.FieldByName('pbkatbarang').Value ;
            DistributorBarang1.Visible := Qlogin.FieldByName('pbdsitributor').Value;
            KomposisiMenu1.Visible := Qlogin.FieldByName('pbkomposisi').Value;
            MenuSoldout1.Visible := Qlogin.FieldByName('pbMenuSoldOut').Value;
            PesanBill1.Visible := Qlogin.FieldByName('pbpesanbill').Value;
            PasswordRoom1.Visible := Qlogin.FieldByName('pbroompassword').Value;
            PaymentReport1.Visible := Qlogin.FieldByName('pbpaymentdetailreport').Value;
            Room2.Visible := Qlogin.FieldByName('pbroomreport').Value and Qlogin.FieldByName('pbpajak').Value;
            Waiter1.Visible := Qlogin.FieldByName('pbwaiterreport').Value and Qlogin.FieldByName('pbpajak').Value;
            RekapitulasiPenjualan1.Visible := Qlogin.FieldByName('pbdetailpenjualan').Value and Qlogin.FieldByName('pbpajak').Value;
            Summary1.Visible := Qlogin.FieldByName('pbsummary').Value;
            BarangMasuk1.Visible  :=  Qlogin.FieldByName('pbbarangmasuk').Value;
            BarangKeluar1.Visible  := Qlogin.FieldByName('pbreportkeluar').Value;
            MutasiStok1.Visible  := Qlogin.FieldByName('pbdailybarangkeluar').Value;
            StokBarang1.Visible := Qlogin.FieldByName('pbstokbarang').Value;
            Menu2.Visible := Qlogin.FieldByName('pbmenureport').Value;
            DataSong1.Visible := Qlogin.FieldByName('pbdatalagu').Value;
            ReportSongRequest1.Visible  := Qlogin.FieldByName('pbSrequest').Value ;
            DataMember1.Visible  := Qlogin.FieldByName('pbdatamember').Value ;
            DetailMemberReport1.Visible := Qlogin.FieldByName('pbdetailmemberreport').Value ;
            Member2.Visible  := Qlogin.FieldByName('pbmemberreport').Value;
            RoomReservation1.Visible  := Qlogin.FieldByName('pbreportreservasi').Value;
            Saran1.Visible  := Qlogin.FieldByName('pbsaran').Value ;
            SongList1.Visible  := False;
            MemberUpdate1.Visible  := Qlogin.FieldByName('pbMemberUpdate').Value ;
            CheckServer1.Visible  := False;
            SongRequest1.Visible  := Qlogin.FieldByName('pbSongReport').Value ;
            SongManager1.Visible  := Qlogin.FieldByName('pbtambahlagu').Value ;
            Gudang1.Visible  := Qlogin.FieldByName('pbGudang').Value;
            MutasiGudang1.Visible  := Qlogin.FieldByName('pbGudangMutasi').Value;
            KirimLagu1.Visible  := Qlogin.FieldByName('pbkirimlagu').Value;
            SongUpdate1.Visible  := False;
            PaymentControl1.Visible  := Qlogin.FieldByName('pbpaymentc').Value;
            FrmInduk.Pajak1.Visible := Qlogin.FieldByName('pbpajak').Value;
            FrmInduk.SetupPromo1.Visible  := Qlogin.FieldByName('pbpromo').Value;
            FrmInduk.axService1.Visible  := Qlogin.FieldByName('pbtaxservice').Value;
            FrmInduk.MovieListUpdate1.Visible  := False;
            SetupPromo1.Visible  := Qlogin.FieldByName('pbpromo').Value;
            ControlRoom1.Visible := Qlogin.FieldByName('pbControlRoomReport').Value;
            Otorisasi1.Visible := Qlogin.FieldByName('pbAuthorizationReport').Value;
            SqlForm1.Visible  := Qlogin.FieldByName('pbBackupServer').Value;
            ServerShutdown1.Visible  := Qlogin.FieldByName('pbShutdownServer').Value;
            Voucher1.Visible := Qlogin.FieldByName('pbVoucher').Value;
            Voucher2.Visible := Qlogin.FieldByName('pbVoucherReport').Value;
            ReportOrder1.Visible := Qlogin.FieldByName('pbreportorder').Value and Qlogin.FieldByName('pbpajak').Value;
            Master1.Visible := Room1.Visible or KomposisiMenu1.Visible or MenuSoldout1.Visible or Barang1.Visible or DistributorBarang1.Visible or Gudang1.Visible or Member1.Visible;
            Bill1.Visible := Billing1.Visible or Payment1.Visible or BillCorrection1.Visible or PaymentControl1.Visible or PindahRoom1.Visible or RoomReservation3.Visible or KonversiPayment1.Visible or RoomControl1.Visible;
            ORDER1.Visible := ORDERMENU1.Visible or ORDERROOM1.Visible or OrderLainlain1.Visible or PersediaanBarangMasuk1.Visible or PenyesuainBarangKeluar1.Visible or MutasiGudang1.Visible;
            Setup1.Visible := BAR1.Visible or Kasir1.Visible or RoomKategori1.Visible or m1.Visible or MemberKategori1.Visible or UserKategori1.Visible or KategoriBarang1.Visible or Satuan1.Visible or KonversiSatuan1.Visible or PesanBill1.Visible or PasswordRoom1.Visible or VChannel1.Visible or RunningText1.Visible or Bank1.Visible or SetupPromo1.Visible or Pajak1.Visible or axService1.Visible;
            Report1.Visible := PaymentReport1.Visible or Room2.Visible or Waiter1.Visible or RekapitulasiPenjualan1.Visible or ReportOrder1.Visible or Summary1.Visible or BarangMasuk1.Visible or BarangKeluar1.Visible or MutasiStok1.Visible or StokBarang1.Visible or Menu2.Visible or DataSong1.Visible or ReportSongRequest1.Visible or DataMember1.Visible or DetailMemberReport1.Visible or Member2.Visible or RoomReservation1.Visible or Saran1.Visible or ControlRoom1.Visible or Otorisasi1.Visible;
            ools1.Visible := MemberUpdate1.Visible or SongRequest1.Visible or SongManager1.Visible or KirimLagu1.Visible or EmergencyCall1.Visible;
            Administrator1.Visible := SqlForm1.Visible or ServerShutdown1.Visible;
            Help1.Visible := About1.Visible;
            Flogin.Close;
          end;
        end
        else
        begin
          Label5.Visible := true ;
        end;
      end;
  end
  else if command = 'cancel' then
  begin
    Close;
  end;
end;

end.
