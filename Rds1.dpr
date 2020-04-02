program Project2;

{$R 'Resource.res' 'Resource.rc'}

uses
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  Unit2 in 'Unit2.pas' {fkategoriroom},
  Unit1 in 'Unit1.pas' {modul: TDataModule},
  Unit3 in 'Unit3.pas' {FrmInduk},
  Unit4 in 'Unit4.pas' {fkategorimenu},
  Unit5 in 'Unit5.pas' {fbar},
  Unit6 in 'Unit6.pas' {fkasir},
  Unit7 in 'Unit7.pas' {fkategorimember},
  Unit8 in 'Unit8.pas' {froom},
  Unit9 in 'Unit9.pas' {fmenu},
  Unit10 in 'Unit10.pas' {fmember},
  Unit11 in 'Unit11.pas' {fpaketroom},
  Unit12 in 'Unit12.pas' {fcarimenu},
  Unit13 in 'Unit13.pas' {forderroom},
  Unit14 in 'Unit14.pas' {fordermenu},
  Unit15 in 'Unit15.pas' {forderdll},
  UntBill in 'UntBill.pas' {Fbill},
  untBillStart in 'untBillStart.pas' {FBillStart},
  Unit16 in 'Unit16.pas' {fpayment},
  untkoreksi in 'untkoreksi.pas' {Fbillkoreksi},
  konversi in 'konversi.pas',
  untLogin in 'untLogin.pas' {Flogin},
  untBillCashOrder in 'untBillCashOrder.pas' {FbillCashOrder},
  Untdailyreport in 'Untdailyreport.pas' {freport},
  Untkatuser in 'Untkatuser.pas' {fkatuser},
  untSetup in 'untSetup.pas' {FSetup},
  untGudang in 'untGudang.pas' {FgudangMutasi},
  untPing in 'untPing.pas',
  untwaiter in 'untwaiter.pas' {fwaiterreport},
  untpindahroom in 'untpindahroom.pas' {fpindahroom},
  untroomreport in 'untroomreport.pas' {Froomreport},
  untmemberreport in 'untmemberreport.pas' {fmemberreport},
  untdetailreport in 'untdetailreport.pas' {fdetailreport},
  untdetailpenjualan in 'untdetailpenjualan.pas' {fdetailpenjualan},
  untsummary in 'untsummary.pas' {fsummary},
  untsatuan in 'untsatuan.pas' {fsatuan},
  untbarang in 'untbarang.pas' {fbarang},
  untbarangmasuk in 'untbarangmasuk.pas' {fbarangmasuk},
  untcaribarang in 'untcaribarang.pas' {fcaribarang},
  untdistributor in 'untdistributor.pas' {fdistributor},
  untkatbarang in 'untkatbarang.pas' {fkatbarang},
  untkomposisi in 'untkomposisi.pas' {fkomposisi},
  untstokbarang in 'untstokbarang.pas' {fstokbarang},
  untbarangkeluar in 'untbarangkeluar.pas' {fbarangkeluar},
  untreportmasuk in 'untreportmasuk.pas' {freportmasuk},
  untpenyesuaian in 'untpenyesuaian.pas' {fpenyesuaian},
  untMemberUpdate in 'untMemberUpdate.pas' {fMemberUpdate},
  untstok in 'untstok.pas' {fstok},
  untreportmemberdetail in 'untreportmemberdetail.pas' {fdetailmemberreport},
  untmenureport in 'untmenureport.pas' {fmenureport},
  untdetailpayment in 'untdetailpayment.pas' {fpaymentdetailreport},
  untSRequest in 'untSRequest.pas' {FSsong},
  untsongreport in 'untsongreport.pas' {FSsongReport},
  untdatamember in 'untdatamember.pas' {fdatamember},
  Untbaranglap in 'Untbaranglap.pas' {Fsplash},
  untdatasong in 'untdatasong.pas' {fdatasong},
  untSrequestCari in 'untSrequestCari.pas' {FSsongCari},
  untMemberCari in 'untMemberCari.pas' {FmemberCari},
  untCheckServer in 'untCheckServer.pas' {FcheckServer},
  untMenuCari in 'untMenuCari.pas' {FmenuCari},
  untBarangCar in 'untBarangCar.pas' {FbarangCar},
  untstokharian in 'untstokharian.pas' {Fdailybarangkeluar},
  untSatuanKonvInp in 'untSatuanKonvInp.pas' {FsatuanKonvSetup},
  QsatuanKonvInp in 'QsatuanKonvInp.pas' {FsatuanKonversi},
  untreservasi in 'untreservasi.pas' {Freservasi},
  untreportreservasi in 'untreportreservasi.pas' {Freportreservasi},
  untReservasiBill in 'untReservasiBill.pas' {FreservasiBill},
  untdetailrekapitulasi in 'untdetailrekapitulasi.pas' {Fdetailrekapitulasi},
  untrequestpurchase in 'untrequestpurchase.pas' {FpurchaseRequest},
  untorderpurchase in 'untorderpurchase.pas' {FpurchaseOrder},
  UntpurchaseRequestReport in 'UntpurchaseRequestReport.pas' {FpurchaseRequestReport},
  untPurchaseRequestStatus in 'untPurchaseRequestStatus.pas' {FPurchaseRequestStatus},
  untcarikar in 'untcarikar.pas' {Fcarikar},
  unttvchannel in 'unttvchannel.pas' {Ftvchannel},
  untrunningtext in 'untrunningtext.pas' {Frunningtext},
  untKonvpayment in 'untKonvpayment.pas' {fkonversipayment},
  untcontrolroom in 'untcontrolroom.pas' {Fcontrolroom},
  untPesanBill in 'untPesanBill.pas' {FpesanBill},
  untSaran in 'untSaran.pas' {Fsaran},
  untRoomPass in 'untRoomPass.pas' {FroomPass},
  untPurchaseRequestTambah in 'untPurchaseRequestTambah.pas' {FpurchaseRequestTambah},
  untDistributorBarang in 'untDistributorBarang.pas' {FdistributorBarang},
  untBarangMaster in 'untBarangMaster.pas' {FbarangMaster},
  untPurchaseOrderMaster in 'untPurchaseOrderMaster.pas' {FpurchaseOrderMaster},
  untGudangMutasiDetail in 'untGudangMutasiDetail.pas' {FgudangMutasiDetail},
  untGudangMaster in 'untGudangMaster.pas' {Fgudang},
  untbank in 'untbank.pas' {fbank},
  untDistributorMaster in 'untDistributorMaster.pas' {FdistributorMaster},
  untBarangMasukMaster in 'untBarangMasukMaster.pas' {FbarangMasukMaster},
  unttambahlagu in 'unttambahlagu.pas' {Ftambahlagu},
  untinsertlagu in 'untinsertlagu.pas' {finsertlagu},
  untBarangDistributor in 'untBarangDistributor.pas' {FbarangDistributor},
  untKomposisiInput in 'untKomposisiInput.pas' {FkomposisiInput},
  untStokPenyesuaian in 'untStokPenyesuaian.pas' {FstokPenyesuaian},
  untMessage in 'untMessage.pas' {Fmessage},
  untKirimLagu in 'untKirimLagu.pas' {FkirimLagu},
  dwlCore in 'SongUpdate\dwlCore.pas',
  untSongUpdate in 'SongUpdate\untSongUpdate.pas' {frmSongUpdate},
  UntCSql in 'UntCSql.pas' {FsqlControl},
  UpayControl in 'UpayControl.pas' {FpayControl},
  untUpdateMovie in 'MovieUpdate\untUpdateMovie.pas' {FMovieList},
  Pajak in 'Pajak\Pajak.pas' {FormPajak},
  UsetPromo in 'UsetPromo.pas' {FroomPrice},
  help in 'help.pas' {Fhelp},
  UNewStop in 'UNewStop.pas' {FNewStop},
  Usetdis in 'Usetdis.pas' {FSetupDisc},
  URivewOrder in 'URivewOrder.pas' {FreviewOrder},
  UreportOrder in 'UreportOrder.pas' {FreportOrder},
  untAutorisasi in 'untAutorisasi.pas' {fAutorisasi},
  Udiskonroom in 'Udiskonroom.pas' {Fdiskonroom},
  Uinputdiskon in 'Uinputdiskon.pas' {Finputdiskon},
  untServerShutdown in 'untServerShutdown.pas' {fShutdownServer},
  UOSInfo in 'UOSInfo.pas',
  untOrderDelete in 'untOrderDelete.pas' {fOrderDelete},
  untTaxService in 'untTaxService.pas' {FTaxService},
  untSupplierCari in 'untSupplierCari.pas' {fSupplierCari},
  UntActivation in 'UntActivation.pas' {FActivation},
  untVoucher in 'untVoucher.pas' {fVoucher},
  untVoucherReport in 'untVoucherReport.pas' {fVoucherReport},
  untAuthorizationReport in 'untAuthorizationReport.pas' {fAuthorizationReport},
  untControlRoomReport in 'untControlRoomReport.pas' {fControlRoomReport},
  untMenuSoldout in 'untMenuSoldout.pas' {fMenuSoldout};

{$R 'Rds.res'}

procedure RestoreWindow(aFormName : string);
  var     Wnd,
          App : HWND;
begin
  Wnd := FindWindow(PAnsiChar(aFormName), nil);
  if (Wnd <> 0)         then
  begin
    // Set Window to foreground
    App := GetWindowLong(Wnd, GWL_HWNDPARENT);
    if IsIconic(App) then ShowWindow(App, SW_RESTORE);
    SetForegroundwindow(App);
  end;
end;

var
  Semafor     : THandle;
begin
  Semafor := CreateSemaphore(nil, 0, 1, 'TFrmInduk');
  if ((Semafor <> 0) and // application is already running
  (GetLastError = ERROR_ALREADY_EXISTS))
  then begin
    RestoreWindow('TFrmInduk');
    CloseHandle(Semafor);
    Halt;
  end;

  try     
  begin
  Application.Initialize;
  Application.CreateForm(Tmodul, modul);
  Application.Title := 'Rds Poin of Sale';
  Application.CreateForm(TFrmInduk, FrmInduk);
  Fsplash := TFsplash.Create(Application);
  FSplash.Show;
  FSplash.Repaint;
  Application.Run;
  end;
  finally begin
  if(FSplash <> nil) then
    FreeAndNil(FSplash);
    end//finally
  end;//try
end.

