unit UntBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ComCtrls, Spin, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZConnection, ExtCtrls, DBTables, Grids,
  DBGrids, BusinessSkinForm, bsSkinCtrls, AEDIT, OleCtrls,
  ShockwaveFlashObjects_TLB, bsMessages, DBCtrls, LMDCustomButton,
  LMDButton, bsSkinBoxCtrls, LMDSimplePanel, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSBar, bsSkinData;

type
  TFbill = class(TForm)
    grpHalaman: TGroupBox;
    QmyROOM: TZQuery;
    QmsTimer: TZQuery;
    QmsLoadRoom: TZQuery;
    DataSource1: TDataSource;
    QmsOther: TZQuery;
    grpFilter: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    cboKategori: TComboBox;
    Label3: TLabel;
    cboStatus: TComboBox;
    btnGo: TButton;
    grpRoom1: TPanel;
    bsSkinMessage1: TbsSkinMessage;
    Qcs: TZQuery;
    Qcsnama: TStringField;
    Qcsfoto: TBlobField;
    Panel2: TPanel;
    labelnama: TStaticText;
    Qbayar: TZQuery;
    QmyRoom2: TZQuery;
    DateTimePicker1: TDateTimePicker;
    edtStatusMysql: TEdit;
    edtStatusMysql2: TEdit;
    bsSkinData3: TbsSkinData;
    bsCompressedStoredSkin3: TbsCompressedStoredSkin;
    grpRoom: TbsSkinScrollBox;
    Panel3: TPanel;
    bsSkinScrollBar1: TbsSkinScrollBar;
    BtnReservasi: TbsSkinButton;
    BtnRoom1: TbsSkinButton;
    BtnMenu: TbsSkinButton;
    BtnOther: TbsSkinButton;
    BtnCorrection: TbsSkinButton;
    BtnPayment: TbsSkinButton;
    BtnExit: TbsSkinButton;
    Label4: TLabel;
    Timer1: TTimer;
    procedure btnGoClick(Sender: TObject);
    procedure btnHalaman(Sender: TObject);
    procedure PrcbtnRoom(Sender: TObject);
    procedure prcStart(Sender: TObject);
    procedure prcStopTambahjam (Sender: TObject);
    procedure prcBtnStart(Sender: TObject);
    procedure prcNewStop(Sender: TObject);
    procedure prcDurasi(Sender: TObject);
    procedure prcRoomDurasi(Sender: TObject);
    procedure prcMenuCharge(Sender: TObject);
    procedure prcRoomCharge(Sender: TObject);
    procedure prcOtherCharge(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure prcTambahJam(Sender: TObject);
    procedure prcbooking(Sender: TObject);
    procedure prcTambahOrang(Sender: TObject);
    procedure flsExitEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure flsPaymentEnter(Sender: TObject);
    procedure flsMenuEnter(Sender: TObject);
    procedure flsOthersEnter(Sender: TObject);
    procedure flsCorrectionEnter(Sender: TObject);
    procedure flsRoomEnter(Sender: TObject);
    procedure flsReportEnter(Sender: TObject);
    procedure prcStatus(Sender: TObject);
    procedure flsReservasiEnter(Sender: TObject);
    procedure gakbolehpencet(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bolehpencet(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnReservasiClick(Sender: TObject);
    procedure BtnRoom1Click(Sender: TObject);
    procedure BtnMenuClick(Sender: TObject);
    procedure BtnOtherClick(Sender: TObject);
    procedure BtnCorrectionClick(Sender: TObject);
    procedure BtnPaymentClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    tmrDurasi          : array of TTimer;
    lblOrderid,lblKategori,lblNama,lblCheckin,lblDurasi,lblRoomCharge,
        lblMenuCharge,lblOtherCharge,lblTotalCharge,lblMemoAdmin,
        lblMemoKasir, lblOrang, lbljam, lblmember : array of TLabel;
    n, m, nkelompok       : integer;
    pvlogin : String;
    disableSpnEvent: Boolean;
  public
    durasiBeforeStop: integer;
    kelompok, anak : array of TPanel;
    tombol, btnRoomCharge, btnMenuCharge, btnOtherCharge, btnRoomDurasi   : array of TbsSkinButton;
    btnStart, btnStop, btnEnd  : array of TbsSkinButton;
    btnRoom : array of TLMDButton;
    edtOrderID, edtKategori   : array of TEdit;
    edtRoomCharge, edtMenuCharge, edtOtherCharge, edtTotalCharge : array of TAEdit;
    memAdmin : array of TMemo;
    edtTanggal, edtNama, edtDurasi : array of TEdit;
    lblRoom                 : array of TLabel;
    spnOrang, spnbooking   : array of TSpinEdit;
    spnInterfal : array of TSpinEdit;
    cmbStatus, toldurasi               : array of TComboBox;
    pbCekInvoiceError : array of Boolean;
  end;

var
  Fbill: TFbill;

implementation

uses unit1, StrUtils, DateUtils, untBillStart, Unit3, unit13, unit14, unit15, untAutorisasi,
     untBillPeringatan,ShellAPI, cekTamu, UNewStop, Math, untPing, untpindahroom, jpeg, untMessage;

{$R *.dfm}

procedure TFbill.gakbolehpencet(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    key := 0;
end;

procedure TFbill.prcStatus(Sender: TObject);
var x : integer;
begin
  x := TComboBox(Sender).Parent.Tag;

  Case cmbStatus[x].ItemIndex of
  0 : begin
        QmyROOM.Active := False;
        QmyROOM.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('tutup') +
                            ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
        QmyROOM.ExecSQL;

        If modul.My2.Connected = true then
        begin
          QmyRoom2.Active := False;
          QmyRoom2.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('tutup') +
                              ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
          QmyRoom2.ExecSQL;
        end;

        cmbStatus[x].Color := $00FF6833;
        QmsOther.Active := False;
        QmsOther.SQL.Text := 'UPDATE    troom '+
                             ' SET       status = 0 ' +
                            'WHERE     (id = ' + IntToStr(btnRoom[x].Tag) +
                            ' ) ';
        QmsOther.ExecSQL;
      end;
  1 : begin
        QmyROOM.Active := False;
        QmyROOM.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('buka') +
                            ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
        QmyROOM.ExecSQL;

        If modul.My2.Connected = true then
        begin
        QmyRoom2.Active := False;
        QmyRoom2.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('buka') +
                            ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
        QmyRoom2.ExecSQL;

        end;

        cmbStatus[x].Color := $000080FF;

        QmsOther.Active := False;
        QmsOther.SQL.Text := 'UPDATE    troom '+
                             ' SET       status = 1 ' +
                            'WHERE     (id = ' + IntToStr(btnRoom[x].Tag) +
                            ' ) ';
        QmsOther.ExecSQL;
      end;
{  2 : begin
        QmyROOM.Active := False;
        QmyROOM.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('R') +
                            ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
        QmyROOM.ExecSQL;
        cmbStatus[x].Color := $000080FF;

        If modul.My2.Connected = true then
        begin
          QmyRoom2.Active := False;
          QmyRoom2.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('R') +
                              ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
          QmyRoom2.ExecSQL;
        end;

        QmsOther.Active := False;
        QmsOther.SQL.Text := 'UPDATE    troom '+
                             ' SET       status = 2 ' +
                            'WHERE     (id = ' + IntToStr(btnRoom[x].Tag) +
                            ' ) ';
        QmsOther.ExecSQL;
      end;
  3 : begin
        QmyROOM.Active := False;
        QmyROOM.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('S') +
                            ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
        QmyROOM.ExecSQL;
        If modul.My2.Connected = true then
        begin
          QmyRoom2.Active := False;
          QmyRoom2.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('S') +
                              ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
          QmyRoom2.ExecSQL;
        end;
        cmbStatus[x].Color := $000080FF;

        QmsOther.Active := False;
        QmsOther.SQL.Text := 'UPDATE    troom '+
                             ' SET       status = 3 ' +
                            'WHERE     (id = ' + IntToStr(btnRoom[x].Tag) +
                            ' ) ';
        QmsOther.ExecSQL;
      end;
}
  end;
end;

procedure TFbill.btnHalaman(Sender: TObject);
var i : integer;
begin
  for i := 1 to nkelompok do
  begin
//    if i = strtoint( RightStr(TbsSkinButton(Sender).Name,3)) then
    if TbsSkinButton(Sender) = tombol[i] then
      kelompok[i].Visible := True
    else
      kelompok[i].Visible := False;
  end;
end;

procedure TFbill.PrcbtnRoom(Sender: TObject);
var i : integer;
begin
  for i := 1 to nkelompok do
  begin
    kelompok[i].Visible := False;
  end;

  for i := 1 to n do
  begin
    if TLMDButton(Sender) = btnRoom[i] then
    begin
       anak[i].Parent.Visible := True;
    end;
  end;
end;

procedure TFbill.prcStart(Sender: TObject);
//var x : integer;
begin
 {
  x := TbsSkinButton(Sender).Parent.Tag;
  if edtNama[x].Text = '' then
  begin
    edtNama[x].SetFocus;
    exit;
  end;

  if (spnInterfal[x].Value = 0) or (spnInterfal[x].Text = '') then
  begin
    spnInterfal[x].Value := 1;
  end;

  edtOrderID[x].Text := FormatDateTime('yyMMdd',Now) + '0001';
  edtTanggal[x].Text := FormatDateTime('dd-MM-yyyy  HH:mm:ss', Now);

  btnStart[x].Visible := False;
  btnStop[x].Visible := True;
  btnEnd [x].Visible := false;
  QmyROOM.Active := False;
  QmyROOM.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('buka') +
                                   ' , USERROOM = ' + QuotedStr(edtNama[x].Text) +
                                   ' , ORDDATE = '+ QuotedStr(FormatDateTime('yyyy-MM-dd', Now)) +
                                   ' , ORDTIME = '+ QuotedStr(FormatDateTime('hh:mm:ss', Now))+
                      ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
  QmyROOM.ExecSQL;  }
end;

procedure TFbill.prcBtnStart(Sender: TObject);
  var x : integer;
begin
  if FrmInduk.pbBillStart then exit;

  x := TbsSkinButton(Sender).Parent.Tag;

  Application.CreateForm(TFBillStart, FBillStart);
  FBillStart.pbidanak := x;
  FBillStart.pbIdRoom := btnRoom[x].Tag;
  FBillStart.lblRoom.Caption := btnRoom[x].Caption;
end;

procedure TFbill.prcNewStop(Sender: TObject);
var x         : integer;
    qNewStop  : TZQuery;
    vIDmember   : string;
    roomcharge: double;
begin
  if FrmInduk.pbBillStop then exit;

  x := TbsSkinButton(Sender).Parent.Tag;

  qNewStop := TZQuery.Create(Self);
  qNewStop.Connection := modul.Database1;

  qNewStop.Active := False;
  qNewStop.SQL.Text := 'SELECT billstop from troom where id = ' +
                       IntToStr(btnRoom[x].Tag);
  qNewStop.Active := True;

  if (qNewStop.FieldByName('billstop').AsString = '1') then
  begin
    beep;
    bsSkinMessage1.MessageDlg( '        ROOM sedang di Stop         ', mtInformation, [mbOK], 0);
    qNewStop.Destroy;
    Exit;
  end;


  if spnbooking[x].Value > spnInterfal[x].Value then
  begin

    durasiBeforeStop := spnInterfal[x].Value;

    qNewStop.Active := false;
    qNewStop.SQL.Text := 'update torder_room set durasi = ' + IntToStr(spnbooking[x].Value) + ' where idorder = ' + QuotedStr(edtOrderid[x].Text) + ' order by tglStart desc limit 1';
    qNewStop.ExecSQL;

    qNewStop.Active := False;
    qNewStop.SQL.Text := 'SELECT     SUM((harga_asli  * durasi - diskon)) AS jumlah '+
                     'FROM         torder_room '+
                     'WHERE     (idorder = ' + QuotedStr(edtOrderID[x].Text) +
                     ')  ';
    qNewStop.Active := True;
    roomcharge := qNewStop.fieldbyname('jumlah').AsFloat;

    qNewStop.Active := False;
    qNewStop.SQL.Text := 'update troom set roomcharge = ' + FloatToStr(roomcharge) + ', durasi = ' + IntToStr(spnbooking[x].Value) + ' where idorder = ' + QuotedStr(edtOrderid[x].Text);
    qNewStop.ExecSQL;
  end
  else
  begin
    durasiBeforeStop := 0;
  end;

  qNewStop.Active := False;
  qNewStop.SQL.Text := 'select idmember from troom where   (idorder = ' + QuotedStr(edtOrderid[x].Text) +')';
  qNewStop.Active := True;
  vIDmember := Trim(qNewStop.FieldByName('idmember').AsString);
  qNewStop.Active := False;
  qNewStop.Destroy;

  Application.CreateForm(TFNewStop, FNewStop);
  FNewStop.Show;

  FNewStop.pbidanak := x;
  FNewStop.pbIdOrder := edtOrderid[x].Text;
  FNewStop.pbIdRoom := btnRoom[x].Tag;
  FNewStop.lblRoom.Caption := btnRoom[x].Caption;
  FNewStop.mulai;
  FNewStop.edtOrderID.Text := edtOrderid[x].Text;
  FNewStop.edtNama.Text := edtNama[x].Text;
  FNewStop.pbnama := edtnama[x].Text;

  FNewStop.edtJumOrang.Text := FormatFloat('0', spnOrang[x].Value);
  FNewStop.btnRoomClick(Sender);
  if (vIDmember <> '00000') and (vIDmember <> '') then
  begin
    FNewStop.cmbMember.ItemIndex := 1;
    FNewStop.edtIdMember.Visible := True;
    FNewStop.edtNama.Left := FNewStop.edtOrderID.Left + FNewStop.edtIdMember.Width + 8;
    FNewStop.edtNama.ReadOnly := True;
    FNewStop.edtIdMember.Text := vIDmember;
    FNewStop.prcUbahMember;
  end;
  FNewStop.activityMemberId := vIDmember;
end;

procedure TFbill.prcRoomDurasi(Sender: TObject);
begin

  FrmInduk.activityLogin := FrmInduk.pbidkasir;
  FrmInduk.activityName := FrmInduk.pbnamakasir;

  Application.CreateForm(TfAutorisasi, fAutorisasi);
  fAutorisasi.Show;
  fAutorisasi.kiriman := 4;
  fAutorisasi.idorder := edtOrderid[TbsSkinButton(Sender).Parent.Tag].Text;
  fAutorisasi.pbIdRoom := btnRoom[TbsSkinButton(Sender).Parent.Tag].Tag;
  if FrmInduk.pbadmin then
  begin
    fAutorisasi.RoomDurasiClick(Sender);
    fAutorisasi.Close;
    Show;
  end;
end;

procedure TFbill.prcRoomCharge(Sender: TObject);
var s : string;
    i,j,x : integer;
begin
  if (FrmInduk.pborderroom) then
     forderroom.Show
  else
    Application.CreateForm(Tforderroom,forderroom);

  x := TbsSkinButton(Sender).Parent.Tag;
  s:= (btnRoom[x].Caption);
  j := TRUNC((90-length(s)) / 2);
  s := '';
      for i := 1 to j do
      begin
        s:= s + ' ' ;
      end;
    s := s + btnRoom[x].Caption;
  forderroom.cmbroom.ItemIndex := forderroom.cmbroom.Items.IndexOf(s);
  forderroom.cmbroomClick(Self);
end;

procedure TFbill.prcMenuCharge(Sender: TObject);
var i,j,x : integer;
    s : String;
begin
  if (FrmInduk.pbordermenu) then
     fordermenu.Show
  else
    Application.CreateForm(Tfordermenu,fordermenu);

  x := TbsSkinButton(Sender).Parent.Tag;
  fordermenu.pbIdAnak := x;

   s:= (btnRoom[x].Caption);
   j := trunc((120-length(s)) /2);
   s :='';
   for i := 1 to j do
   begin
    s := s + ' ';
   end;
   s:= s+(btnRoom[x].Caption);

  if edtOrderID[x].Text = '' then
  begin
    fordermenu.cmbroom.ItemIndex :=0;
  end
  else
  begin
    fordermenu.cmbroom.ItemIndex := fordermenu.cmbroom.Items.IndexOf(s);
    fordermenu.cmbroomClick(Sender);
  end;
end;

procedure TFbill.prcOtherCharge(Sender: TObject);
var i,j,x : Integer;
    s : String;
begin
  if (FrmInduk.pborderdll) then
    forderdll.Show
  else
    Application.CreateForm(Tforderdll, forderdll);

  x := TbsSkinButton(Sender).Parent.Tag;
  forderdll.pbIdAnak := x;

  s:= (btnRoom[x].Caption);
  j := TRUNC((80-length(s)) / 2);
  s := '';
  for i := 1 to j do
  begin
    s:= s + ' ' ;
  end;
  s:= s+(btnRoom[x].Caption);

  forderdll.cmbroom.ItemIndex := forderdll.cmbroom.Items.IndexOf(s);
  forderdll.cmbroomClick(Sender);
end;

procedure TFbill.prcDurasi(Sender: TObject);
var x, i, v, jamdur : integer;
    durasi,durasim: Double;
    tdiskon :real;
    jamdb, jamawal,jamnya,jamjalan : TDateTime;
    vStatusRoomMysql : string;
begin
  if FrmInduk.pbBillStop then exit;

  QmsTimer.Active := False;
  QmsTimer.SQL.Text := ' SELECT  idorder, nama, startextra, jambooking, '+
                       '         tambahjam, status, chekin, waktu, durasi, roomcharge, '+
                       '         menucharge, othercharge, admin_memo, orang, idmember, corection, autoClose '+
                       ' FROM         troom '+
                       ' WHERE     (id = '+ IntToStr(TTimer(Sender).Tag)+ ' )'  ;
  QmsTimer.Active := True;

  vStatusRoomMysql := '';
  try
    QmyROOM.Active := False;
    QmyROOM.SQL.Text :=  'SELECT apa FROM room WHERE idroom = ' + IntToStr(TTimer(Sender).Tag);
    QmyROOM.Active := True;
    vStatusRoomMysql := QmyROOM.FieldByName('apa').AsString;
    QmyROOM.Active := False;
  except
    modul.DBmysql.Connected := False;
  end;
  if not(modul.DBmysql.Connected) then
  begin
    try
      QmyRoom2.Active := False;
      QmyRoom2.SQL.Text :=  'SELECT apa FROM room WHERE idroom = ' + IntToStr(TTimer(Sender).Tag);
      QmyRoom2.Active := True;
      vStatusRoomMysql := QmyRoom2.FieldByName('apa').AsString;
      QmyRoom2.Active := False;
    except
      modul.My2.Connected := False;
    end;
  end;

  //masukkan di form
  for i := 1 to n do
  begin
    if btnRoom[i].Tag = TTimer(Sender).Tag then
    begin
      x := i;
      if (not(vStatusRoomMysql = '')) then
      begin
         if vStatusRoomMysql = 'tutup' then cmbStatus[x].ItemIndex := 0 else
         if vStatusRoomMysql = 'hajar' then cmbStatus[x].ItemIndex := 0 else
         if vStatusRoomMysql = 'buka' then cmbStatus[x].ItemIndex := 1 else
         if vStatusRoomMysql = 'R' then cmbStatus[x].ItemIndex := 2 else
         if vStatusRoomMysql = 'S' then cmbStatus[x].ItemIndex := 3 else
         if vStatusRoomMysql = 'T' then cmbStatus[x].ItemIndex := 4 else
         if vStatusRoomMysql = 'welcome' then cmbStatus[x].ItemIndex := 5 else
         cmbStatus[x].ItemIndex := 6;
      end
      else
         cmbStatus[x].ItemIndex := 6;


      Case cmbStatus[x].ItemIndex of
      0 : begin
            cmbStatus[x].Color := $00FF6833;
          end;
      1 : begin
            cmbStatus[x].Color := $000080FF;
          end;
      2 : begin
            cmbStatus[x].Color := clLime;
          end;
      3 : begin
            cmbStatus[x].Color := clRed;
          end;
      4 : begin
            cmbStatus[x].Color := clGreen;
          end;
      5 : begin
            cmbStatus[x].Color := clYellow;
          end;
      6 : begin
            cmbStatus[x].Color := clRed;
          end;
      else
            cmbStatus[x].Color := $00FF6833;
      end;
      lblmember[x].Visible := false;
      memAdmin[x].Text := QmsTimer.FieldByName('admin_memo').Value;
      lblDurasi[x].Caption := 'Durasi';
      if (QmsTimer.FieldByName('tambahjam').AsInteger > 0)  then
      begin
        edtNama[x].Text := QmsTimer.FieldByName('nama').AsString;
        edtTanggal[x].Text := FormatDateTime('dd-MM-yyyy  HH:mm',QmsTimer.FieldByName('startextra').AsDateTime );

        disableSpnEvent := True;
        spnInterfal[x].Text  := QmsTimer.FieldByName('tambahjam').AsString;
        disableSpnEvent := False;
        anak[x].Color := clSkyBlue;
        durasim := MinutesBetween(Now, QmsTimer.FieldByName('startextra').AsDateTime);
        edtDurasi[x].Text := FormatFloat('    00', (Trunc(durasim) div 60)) + ':'+ FormatFloat('00', Trunc(durasim) mod 60);

        jamdb := QmsTimer.FieldByName('startextra').AsDateTime;
        jamjalan :=IncHour(EncodeDateTime( YearOf(now), MonthOf(now), DayOf(now), HourOf(now),MinuteOf(now),SecondOf(now),0),0);
        v :=   QmsTimer.FieldByName('tambahjam').AsInteger;
        jamnya := IncMinute(EncodeDateTime( YearOf(jamdb), MonthOf(jamdb), DayOf(jamdb), HourOf(jamdb),MinuteOf(jamdb),SecondOf(jamdb),0),v);
        if (jamjalan >= jamnya)  then
        begin
          QmsOther.Active := False;
          QmsOther.SQL.Text := 'UPDATE    troom '+
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
                               'WHERE     (id = '+ IntToStr(TTimer(Sender).Tag)+ ' )'  ;
          QmsOther.ExecSQL;
          try
            QmyROOM.Active := False;
            QmyROOM.SQL.Text := 'UPDATE room SET STATUS = ' + QuotedStr('chekout') + ', APA= ' + QuotedStr('tutup') +
                                ' WHERE (IDROOM = '+ IntToStr(TTimer(Sender).Tag)+ ' )'  ;
            QmyROOM.ExecSQL;
          except
            modul.DBmysql.Connected := False;
          end;

          if modul.My2.Connected = True then
          begin
            try
              QmyRoom2.Active := False;
              QmyRoom2.SQL.Text := 'UPDATE room SET STATUS = ' + QuotedStr('chekout') + ', APA= ' + QuotedStr('tutup') +
                                  ' WHERE (IDROOM = '+ IntToStr(TTimer(Sender).Tag)+ ' )'  ;
              QmyRoom2.ExecSQL;
            except
              modul.My2.Connected := False;
            end;
          end;
        end;
        btnRoomCharge[x].Enabled := False;
        btnMenuCharge[x].Enabled := False;
        btnOtherCharge[x].Enabled := False;
        btnRoomDurasi[x].Enabled := False;
        // spnInterfal[x].Value := 0;
        spnbooking[x].MinValue := 0;
        disableSpnEvent := True;
        spnbooking[x].Value := 0;
        disableSpnEvent := False;
        spnOrang [x].Value := 0;
        btnStart[x].Visible := false;
        btnStop[x].Visible := False;
        btnEnd[x].Visible := true;
        lblDurasi[x].Caption := 'Extra Time';
        Exit;
      end;

      if (QmsTimer.FieldByName('chekin').AsString = '1') then
      begin
        if pbCekInvoiceError[x] then
        begin
          if cekInvoiceError(QmsTimer.FieldByName('idorder').AsString, QmsOther) then
          begin
            QmsOther.Active := False;
            QmsOther.SQL.Text := 'UPDATE    troom '+
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
                                 'WHERE     (id = '+ IntToStr(TTimer(Sender).Tag)+ ' )'  ;
            QmsOther.ExecSQL;
          end;
          pbCekInvoiceError[x] := False;
        end;

        // toldurasi[x].Enabled := true;
        if QmsTimer.FieldByName('idmember').AsString <> '00000'then
        begin
          //lblmember[x].Caption := QmsTimer.FieldByName('idmember').AsString;
          lblmember[x].Visible := True;
        end
        else
        begin
          lblmember[x].Visible := false;
        end;

        edtOrderID[x].Text := QmsTimer.FieldByName('idorder').AsString;
        edtNama[x].Text := QmsTimer.FieldByName('nama').AsString;
        disableSpnEvent := True;
        spnbooking[x].Value := QmsTimer.FieldByName('jambooking').AsInteger;
        disableSpnEvent := False;
        edtTanggal[x].Text := FormatDateTime('dd-MM-yyyy  HH:mm',QmsTimer.FieldByName('waktu').AsDateTime );

        disableSpnEvent := True;
        spnInterfal[x].Text := QmsTimer.FieldByName('durasi').AsString;
        disableSpnEvent := False;
        spnOrang[x].Value := QmsTimer.FieldByName('orang').AsInteger;
        durasi := MinutesBetween(Now, QmsTimer.FieldByName('waktu').AsDateTime);
        edtDurasi[x].Text := FormatFloat('    00', (Trunc(durasi) div 60)) + ':'+ FormatFloat('00', Trunc(durasi) mod 60);

        if (Trunc(durasi) >= ((spnbooking[x].Value * 60) + Unit1.roomTolerance)) and (QmsTimer.FieldByName('autoClose').AsInteger = 1) then
        begin
          QmyROOM.Active := False;
          QmyROOM.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('tutup') +
                              ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
          QmyROOM.ExecSQL;
          If modul.My2.Connected = true then
          begin
            QmyRoom2.Active := False;
            QmyRoom2.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('tutup') +
                                ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
            QmyRoom2.ExecSQL;
          end;
          QmsOther.Active := False;
          QmsOther.SQL.Text := 'UPDATE    troom '+
                               ' SET       status = 0 ' +
                              'WHERE     (id = ' + IntToStr(btnRoom[x].Tag) +
                              ' ) ';
          QmsOther.ExecSQL;
          spnInterfal[x].Color := clRed;
        end
        else if (Trunc(durasi) div 60 >= StrToInt(spnbooking[x].Text)) then
        begin
            spnInterfal[x].Color := clRed;
            if btnRoom[x].Font.Color = clBlack then
            begin
                btnRoom[x].Font.Color := clred
            end
            else
            begin
                btnRoom[x].Font.Color := clBlack;
            end;
        end
        else
        begin
          spnInterfal[x].Color := clWhite;
          btnRoom[x].Font.Color := clBlack;
        end;

        if (cekRoom(lblRoom[x].Caption,QmsOther)) then
        begin
          jamdb := QmsTimer.FieldByName('waktu').AsDateTime;
          jamjalan :=IncHour(EncodeDateTime( YearOf(now), MonthOf(now), DayOf(now), HourOf(now),MinuteOf(now),SecondOf(now),0),0);
          jamawal := IncHour(EncodeDateTime( YearOf(jamdb), MonthOf(jamdb), DayOf(jamdb), HourOf(jamdb),MinuteOf(jamdb),SecondOf(jamdb),0),(StrToInt(spnInterfal[x].Text)));
          jamnya := IncMinute(EncodeDateTime( YearOf(jamawal), MonthOf(jamawal), DayOf(jamawal), HourOf(jamawal),MinuteOf(jamawal),SecondOf(jamawal),0), Unit1.roomTolerance);

          if (jamjalan >= jamnya) and (QmsTimer.FieldByName('corection').AsString = '0') then
          begin
            tdiskon := 0;
            {
            Qbayar.Active := False;
            Qbayar.SQL.Text := 'SELECT     SUM(diskon) AS diskon        '+
                                ' FROM         torder_room      '+
                                ' WHERE     (idorder = '+ QuotedStr(edtOrderID[x].Text) +')';
            Qbayar.Active := True;
            tdiskon := Qbayar.FieldByName('diskon').AsFloat;
            }

            jamdur := HoursBetween(Now, jamdb);
            if (MinutesBetween(IncHour(jamdb,jamdur), Now) > Unit1.roomTolerance) then
            begin
              if (jamdur < QmsTimer.FieldByName('jambooking').AsInteger) or (QmsTimer.FieldByName('autoClose').AsInteger = 0) then
              begin
                jamdur := jamdur + 1;
              end;
            end;

            Qbayar.Active := False;
            Qbayar.SQL.Text := ' UPDATE torder_room '+
                                 ' SET durasi = ' + IntToStr(jamdur) +
                                 ', diskon = '+  FloatToStr(tdiskon) +
                                 ' WHERE (idroom = '+ QuotedStr(IntToStr(TTimer(Sender).Tag))  +')' +
                                 ' AND (idorder = '+ QuotedStr(edtOrderID[x].Text) + ')' +
                                 ' AND (tglStart >= ' + QuotedStr(MidStr(edtTanggal[x].text, 7,4) + '-' +
                                                                 MidStr(edtTanggal[x].text, 4,2) + '-' +
                                                                 MidStr(edtTanggal[x].text, 1,2) + ' '+
                                                                 MidStr(edtTanggal[x].text, 12,6) + ':00' ) +
                                 ')';
            Qbayar.ExecSQL;

            Qbayar.Active := False;
            Qbayar.SQL.Text := 'SELECT     SUM((harga_asli  * durasi - diskon)) AS jumlah, SUM(durasi) AS jumdur '+
                             'FROM         torder_room '+
                             'WHERE     (idorder = ' + QuotedStr(edtOrderID[x].Text) +
                             ')  ';
            Qbayar.Active := True;
            //jamdur := Qbayar.fieldbyname('jumdur').AsInteger;
            //durasi
            Qbayar.SQL.Text := ' UPDATE troom  '+
                               ' SET  roomcharge = '+ FloatToStr ( Qbayar.fieldbyname('jumlah').AsFloat)  +
                                ', durasi = ' + IntToStr(jamdur) +
                               ' WHERE  (id = '+ IntToStr(TTimer(Sender).Tag)+ ' )'  ;
            Qbayar.ExecSQL;
          end
        end; // keadaan aktif

        edtRoomCharge[x].Text := FormatFloat('#,#',  QmsTimer.FieldByName('roomcharge').Value);
        edtMenuCharge[x].Text := FormatFloat('#,#',  QmsTimer.FieldByName('menucharge').Value);

        edtOtherCharge[x].Text := FormatFloat('#,#', QmsTimer.FieldByName('othercharge').Value);
        edtTotalCharge[x].Text := FormatFloat('#,#', QmsTimer.FieldByName('roomcharge').Value +
                                                     QmsTimer.FieldByName('menucharge').Value +
                                                     QmsTimer.FieldByName('othercharge').Value
                                              );
        anak[i].Color := $00808080;
        btnStart[x].Visible := False;
        btnStop[x].Visible := True;
        btnEnd[x].Visible := false;
        btnRoomCharge[x].Enabled := True;
        btnMenuCharge[x].Enabled := True;
        btnOtherCharge[x].Enabled := True;
        btnRoomDurasi[x].Enabled := True;
        //Status room bisa dimainkan
        cmbStatus[x].Style := csDropDownList;
        cmbStatus[x].AutoComplete := True;
        cmbStatus[x].OnKeyDown := bolehpencet;
      end
      else
      begin
        btnRoomCharge[x].Enabled := False;
        btnMenuCharge[x].Enabled := False;
        btnOtherCharge[x].Enabled := False;
        btnRoomDurasi[x].Enabled := False;
        edtOrderID[x].Text := '';
        edtNama[x].Text := '';
        edtTanggal[x].Text := '';
        disableSpnEvent := True;
        spnInterfal[x].Text := '0';
        disableSpnEvent := False;
        spnInterfal[x].Color := clWhite;
        spnbooking[x].MinValue := 0;
        disableSpnEvent := True;
        spnbooking[x].Value := 0;
        disableSpnEvent := False;
        edtDurasi[x].Text := '';
        edtRoomCharge[x].Text := '';
        edtMenuCharge[x].Text := '';
        edtOtherCharge[x].Text := '';
        edtTotalCharge[x].Text := '';
        //memKasir[x].Text := '';
        btnStart[x].Visible := True;
        btnStop[x].Visible := False;
        btnEnd[x].Visible := false;
        anak[i].Color := $00C0C0C0;
        cmbStatus[x].Style := csSimple;
        cmbStatus[x].AutoComplete := False;
        cmbStatus[x].OnKeyDown := gakbolehpencet;
      end;
      exit;
    end;
  end;

end;

procedure TFbill.prcTambahJam(Sender: TObject);
var x : integer;
    totalroom : Real;
begin
  if disableSpnEvent then exit;

  x := TbsSkinButton(Sender).Parent.Tag;
  if  not(cekRoom(lblRoom[x].Caption,QmsOther)) then exit;
  if spnInterfal[x].Text = '' then exit;
  if edtOrderID[x].Text = '' then exit;

  QmsOther.Active := False;
  QmsOther.SQL.Text := 'select durasi from troom where id = ' + IntToStr(btnRoom[x].Tag);
  QmsOther.Active := True;
  if QmsOther.FieldByName('durasi').AsInteger > spnInterfal[x].Value then
  begin

    if FrmInduk.decreaseRoomDuration = 0 then exit;
    
    FrmInduk.activityLogin := FrmInduk.pbidkasir;
    FrmInduk.activityName := FrmInduk.pbnamakasir;
    FrmInduk.logActivity('Decrease room duration, ' + lblRoom[x].Caption);
  end;

  //update torder_room
  QmsOther.Active := False;
  QmsOther.SQL.Text := ' UPDATE torder_room '+
                       ' SET durasi = ' + spnInterfal[x].Text +
                       ' WHERE (idroom = '+ QuotedStr(IntToStr( btnRoom[x].Tag)) +')' +
                       ' AND (idorder = '+ QuotedStr(edtOrderID[x].Text) + ')' +
                       ' AND (tglStart >= ' + QuotedStr(MidStr(edtTanggal[x].text, 7,4) + '-' +
                                                       MidStr(edtTanggal[x].text, 4,2) + '-' +
                                                       MidStr(edtTanggal[x].text, 1,2) + ' '+
                                                       MidStr(edtTanggal[x].text, 12,6) + ':00' ) +
                       ')';
  QmsOther.ExecSQL;

  //update  troom
  QmsOther.Active := False;
  QmsOther.SQL.Text := ' SELECT idorder, SUM(harga_asli * durasi - diskon) AS total '+
                       ' FROM  torder_room ' +
                       ' WHERE (idorder = ' + QuotedStr(edtOrderID[x].Text) +')'+
                       ' GROUP BY idorder  ';
  QmsOther.Active:=True;

  totalroom := QmsOther.FieldByName('total').AsFloat;

  QmsOther.Active := False;
  QmsOther.SQL.Text := ' UPDATE troom '+
                       ' SET durasi = ' + spnInterfal[x].Text +
                       ' , roomcharge = ' + FormatFloat('0',totalroom) +
                       ' , corection = 1' +
                       ' , jambooking = greatest(jambooking, ' + spnInterfal[x].Text + ')' +
                       ' WHERE (id = '+ QuotedStr(IntToStr( btnRoom[x].Tag)) +')';
  QmsOther.ExecSQL;

  try
    QmyROOM.Active := False;
    QmyROOM.SQL.Text := 'UPDATE room SET DURASI = ' + spnInterfal[x].Text +
                        ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
    QmyROOM.ExecSQL;
  except
    modul.DBmysql.Connected := False;
  end;
  if modul.My2.Connected = True then
  begin
    try
      QmyRoom2.Active := False;
      QmyRoom2.SQL.Text := 'UPDATE room SET DURASI = ' + spnInterfal[x].Text +
                          ' WHERE ROOMNAME = ' + QuotedStr(anak[x].Caption);
      QmyRoom2.ExecSQL;
    except
      modul.My2.Connected := False;
    end;
  end;
end;

procedure TFbill.prcTambahOrang(Sender: TObject);
var x : integer;
begin
  x := TbsSkinButton(Sender).Parent.Tag;

  if  not(cekRoom(lblRoom[x].Caption,QmsOther)) then exit;

  if spnOrang[x].Text = '' then exit;

  //UPDATE TABEL ROOM
  QmsOther.SQL.Text := ' UPDATE troom '+
                       ' SET orang = ' + spnOrang[x].Text +
                       ' WHERE (id = '+ QuotedStr(IntToStr( btnRoom[x].Tag)) +')';
  QmsOther.ExecSQL;
end;

procedure TFbill.btnGoClick(Sender: TObject);
var i,j,k,x : integer;
  //x = jumlah room
  //k = tombol room
  //i = pengulangan halaman
  //j = pengulangan didalam halaman
begin
  cboStatus.Enabled := False;
  cboKategori.Enabled := False;
  Application.ProcessMessages;
  //hancurkan dulu yg sudah sudah ada
  for i := 1 to n do
  begin
    tmrDurasi[i].Destroy;
    btnRoom[i].Destroy;
  end;
  for i := 1 to nkelompok do
  begin
    tombol[i].Destroy;
    kelompok[i].Destroy;
  end;

  x:= 0; k:=1;

  QmsLoadRoom.Active := False;
  QmsLoadRoom.SQL.Text := 'SELECT * FROM Troom Order by namaroom';
  QmsLoadRoom.Active := True;
  QmsLoadRoom.First;

  //total semua room tanpa filter
  m:=0;
  while not(QmsLoadRoom.Eof) do
  begin
    m:=m+1;
    QmsLoadRoom.Next;
  end;

  SetLength(tmrDurasi, m+1);

  QmsLoadRoom.First;
  for i := 1 to m do
  begin
    tmrDurasi[i] := TTimer.Create(Self);
    tmrDurasi[i].Tag := QmsLoadRoom.fieldByName('id').AsInteger;
    tmrDurasi[i].Interval := 2000;
    tmrDurasi[i].OnTimer  := prcDurasi;
    tmrDurasi[i].Enabled  := True;
    QmsLoadRoom.Next;
  end;

  //jumlah setelah di filter
  QmsLoadRoom.Active := False;
  QmsLoadRoom.SQL.Text := ' SELECT *, tkategoriroom.kategori AS kategori FROM Troom '+
                          ' INNER JOIN tkategoriroom ON troom.idkategori = tkategoriroom.id ' +
                          ' WHERE (troom.id IS NOT NULL) ';
  if not(cboKategori.ItemIndex=0) then
  begin
    QmsOther.Active := False;
    QmsOther.SQL.Text := 'SELECT     id ' +
                         'FROM         tkategoriroom ' +
                         'WHERE     (kategori = ' + QuotedStr(cboKategori.Text)+
                         ' )';

    QmsOther.Active := True;

    QmsLoadRoom.SQL.Text := QmsLoadRoom.SQL.Text +
                            '  AND (troom.idkategori = ' + QmsOther.FieldByName('id').AsString + ' ) ';
  end;

  if (cboStatus.ItemIndex = 1) then
  begin
    QmsLoadRoom.SQL.Text := QmsLoadRoom.SQL.Text +
                            '  AND (troom.chekin = 1)' ;
  end;
  if (cboStatus.ItemIndex = 2) then
  begin
    QmsLoadRoom.SQL.Text := QmsLoadRoom.SQL.Text +
                            '  AND (troom.chekin = 0)' ;
  end;

  //Status Jual
  QmsLoadRoom.SQL.Text := QmsLoadRoom.SQL.Text +
                            '  AND (troom.jual = 1)' ;

  QmsLoadRoom.SQL.Text := QmsLoadRoom.SQL.Text +
                          ' ORDER BY troom.namaroom ';

  QmsLoadRoom.Active := True;

  n:=0;
  QmsLoadRoom.First;
  while not(QmsLoadRoom.Eof) do
  begin
    n:=n+1;
    QmsLoadRoom.Next;
  end;

  QmsLoadRoom.First;
  nkelompok := n div 3;
  if n mod 3 > 0 then nkelompok := nkelompok + 1;

  SetLength(kelompok, nkelompok+2);
  SetLength(anak, n+1);
  SetLength(btnRoom,n+1);
  SetLength(tombol, n+1);
  SetLength(lblRoom, n+1);
  SetLength(edtOrderID,n+1);
  SetLength(edtKategori,n+1);
  SetLength(edtNama,n+1);
  SetLength(edtRoomCharge,n+1);
  SetLength(edtMenuCharge,n+1);
  SetLength(edtOtherCharge,n+1);
  SetLength(edtTotalCharge,n+1);
  SetLength(memAdmin,n+1);
  SetLength(cmbStatus,n+1);
  SetLength(btnRoomDurasi,n+1);
  SetLength(btnRoomCharge,n+1);
  SetLength(btnMenuCharge,n+1);
  SetLength(btnOtherCharge,n+1);
  SetLength(edtTanggal,n+1);
  SetLength(spnInterfal, n+1);
  SetLength(spnOrang, n+1);
  SetLength (spnbooking, n+1);
  SetLength (lbljam, n+1);
  SetLength(edtDurasi, n+1);
  SetLength(btnstart, n+1);
  SetLength(btnstop,n+1);
  SetLength(btnEnd ,n+1);
  SetLength(lblOrderid,n+1);
  SetLength(lblKategori,n+1);
  SetLength(lblNama,n+1);
  SetLength(lblCheckin,n+1);
  SetLength(lblOrang,n+1);
  SetLength(lblDurasi,n+1);
  SetLength(lblRoomCharge,n+1);
  SetLength(lblMenuCharge,n+1);
  SetLength(lblOtherCharge,n+1);
  SetLength(lblTotalCharge,n+1);
  SetLength(lblMemoAdmin,n+1);
  SetLength(lblMemoKasir,n+1);
  SetLength(toldurasi,n+1);
  SetLength(lblmember,n+1);
  SetLength(pbCekInvoiceError,n+1);

  for i := 1 to nkelompok do
  begin
    tombol[i] := TbsSkinButton.Create(Self);
    tombol[i].Parent := grpHalaman;
    tombol[i].Width := 60;
    tombol[i].Left := i *(tombol[i].Width + 8) - tombol[i].Width ;
    tombol[i].Name := 'btnhalaman' + FormatFloat('000',i);
    tombol[i].Caption := 'Hal.' + FormatFloat('00',i);
    tombol[i].SkinData := FrmInduk.bsSkinData1;
    tombol[i].OnClick := btnHalaman;
    kelompok[i] := TPanel.Create(Self);
    kelompok[i].Parent := Self;
    kelompok[i].Left := 30;
    kelompok[i].top := 260;
    kelompok[i].Width := 964;
    kelompok[i].Height := 405;
    kelompok[i].Color := $00C0C0C0;
    kelompok[i].BevelInner := grpRoom1.BevelInner;
    kelompok[i].BorderWidth := 1;
    kelompok[i].Visible := False;
    for j := 1 to 3 do
    begin
      x := x+1;
      btnRoom[x] := TLMDButton.Create(Self);
      btnRoom[x].Parent := grpRoom;
      btnRoom[x].Width := 41;
      btnRoom[x].ParentFont := False;
      btnroom[x].Font.Name := 'MS Sans Serif';
      btnroom[x].Font.Size := 8;
      btnRoom[x].Height := 20;   //24
      btnRoom[x].Tag := QmsLoadRoom.FieldByName('id').Value;
      btnRoom[x].Font.Style := [fsBold];
      btnRoom[x].Top := 8 + ((k-1) * ( 5 + btnRoom[x].Height));
      btnRoom[x].Left := 8 + ((x-(k-1)* 20)*(btnRoom[x].Width + 5) - btnRoom[x].Width);
      btnRoom[x].Caption := QmsLoadRoom.FieldByName('namaroom').AsString;
      btnRoom[x].OnClick := PrcbtnRoom;
      if x div 20 >= k then
      begin
        k := k+1;
      end;

      anak[x] := TPanel.Create(Self);
      anak[x].Parent := kelompok[i];
      anak[x].Caption := QmsLoadRoom.FieldByName('namaroom').AsString;
      anak[x].Tag := x;
      anak[x].Top := 6;
      anak[x].Width := 305;
      anak[x].Left := j *(anak[j].Width + 12) - anak[j].Width;
      anak[x].Height := 390;     //415
      anak[x].Color := $00C0C0C0;
      anak[x].BevelInner := grpRoom1.BevelInner;
      anak[x].Font.Style := [fsBold];
      //isi room
        lblRoom[x] := TLabel.Create(Self);
        edtOrderID[x] := TEdit.Create(Self);
        edtKategori[x] := TEdit.Create(Self);
        edtNama[x] := TEdit.Create(Self);
        edtRoomCharge[x] := TAEdit.Create(Self);
        edtMenuCharge[x] := TAEdit.Create(Self);
        edtOtherCharge[x] := TAEdit.Create(Self);
        edtTotalCharge[x] := TAEdit.Create(Self);
        btnRoomDurasi[x] := TbsSkinButton.Create(Self);
        btnRoomCharge[x] := TbsSkinButton.Create(Self);
        btnMenuCharge[x] := TbsSkinButton.Create(Self);
        btnOtherCharge[x] := TbsSkinButton.Create(Self);
        btnstart[x] := TbsSkinButton.Create(Self);
        btnstop[x] := TbsSkinButton.Create(Self);
        btnEnd[x] := TbsSkinButton.Create(Self);
        edtTanggal[x] := TEdit.Create(Self);
        spnInterfal[x] := TSpinEdit.Create(Self);
        spnOrang[x] := TSpinEdit.Create(Self);
        spnbooking[x] := TSpinEdit.Create(self);
        lbljam[x] := TLabel.Create(self);
        lblmember [x] := TLabel.Create(Self);
        edtDurasi[x] := TEdit.Create(Self);
        memAdmin[x] := TMemo.Create(Self);
        cmbStatus[x] := TComboBox.Create(Self);
        //toldurasi[x] := TComboBox.Create(Self);
        //SKIN
        btnRoomDurasi[x].SkinData := FrmInduk.bsSkinData1;
        btnRoomCharge[x].SkinData := FrmInduk.bsSkinData1;
        btnMenuCharge[x].SkinData := FrmInduk.bsSkinData1;
        btnOtherCharge[x].SkinData := FrmInduk.bsSkinData1;
        btnStart[x].SkinData := FrmInduk.bsSkinData1;
        btnStop[x].SkinData := FrmInduk.bsSkinData1;
        btnEnd[x].SkinData := FrmInduk.bsSkinData1;

        btnRoomDurasi[x].DefaultFont.Style := [fsBold];
        btnRoomCharge[x].DefaultFont.Style := [fsBold];
        btnMenuCharge[x].DefaultFont.Style := [fsBold];
        btnOtherCharge[x].DefaultFont.Style := [fsBold];
        btnStart[x].DefaultFont.Style := [fsBold];
        btnStop[x].DefaultFont.Style := [fsBold];
        btnEnd [x].DefaultFont.Style := [fsBold];

        btnRoomDurasi[x].UseSkinFont := False;
        btnRoomCharge[x].UseSkinFont := False;
        btnMenuCharge[x].UseSkinFont := False;
        btnOtherCharge[x].UseSkinFont := False;
        btnStart[x].UseSkinFont := False;
        btnStop[x].UseSkinFont := False;
        btnEnd[x].UseSkinFont := False;
        //label
        lblOrderid[x] := TLabel.Create(Self);
        lblKategori[x] := TLabel.Create(Self);
        lblNama[x] := TLabel.Create(Self);
        lblCheckin[x] := TLabel.Create(Self);
        lblOrang[x] := TLabel.Create(Self);
        lblDurasi[x] := TLabel.Create(Self);
        lblRoomCharge[x] := TLabel.Create(Self);
        lblMenuCharge[x] := TLabel.Create(Self);
        lblOtherCharge[x] := TLabel.Create(Self);
        lblTotalCharge[x] := TLabel.Create(Self);
        lblMemoAdmin[x] := TLabel.Create(Self);
        lblMemoKasir[x] := TLabel.Create(Self);

        lblRoom[x].Parent := anak[x];
        edtOrderID[x].Parent := anak[x];
        edtKategori[x].Parent := anak[x];
        edtNama[x].Parent := anak[x];
        edtRoomCharge[x].Parent := anak[x];
        edtMenuCharge[x].Parent := anak[x];
        edtOtherCharge[x].Parent := anak[x];
        edtTotalCharge[x].Parent := anak[x];
        memAdmin[x].Parent := anak[x];
        cmbStatus[x].Parent := anak[x];
        //toldurasi[x].Parent := anak[x];
        btnRoomDurasi[x].Parent := anak[x];
        btnRoomCharge[x].Parent := anak[x];
        btnMenuCharge[x].Parent := anak[x];
        btnOtherCharge[x].Parent := anak[x];
        edtTanggal[x].Parent := anak[x];
        spnInterfal[x].Parent := anak[x];
        spnOrang[x].Parent := anak[x];
        spnbooking[x].Parent := anak[x];
        lbljam[x].Parent := anak[x];
        edtDurasi[x].Parent := anak[x];
        btnstart[x].Parent := anak[x];
        btnstop[x].Parent := anak[x];
        btnEnd[x].Parent := anak[x];
        //label
        lblOrderid[x].Parent := anak[x];
        lblKategori[x].Parent := anak[x];
        lblNama[x].Parent := anak[x];
        lblCheckin[x].Parent := anak[x];
        lblOrang[x].Parent := anak[x];
        lblDurasi[x].Parent := anak[x];
        lblRoomCharge[x].Parent := anak[x];
        lblMenuCharge[x].Parent := anak[x];
        lblOtherCharge[x].Parent := anak[x];
        lblTotalCharge[x].Parent := anak[x];
        lblMemoAdmin[x].Parent := anak[x];
        lblMemoKasir[x].Parent := anak[x];
         lblmember [x].Parent := anak[x];
        //WARNA
        lblOrderid[x].Font.Color := clNavy;
        lblKategori[x].Font.Color := clNavy;
        lblNama[x].Font.Color := clNavy;
        lblCheckin[x].Font.Color := clNavy;
        lblOrang[x].Font.Color := clNavy;
        lblDurasi[x].Font.Color := clNavy;
        lblRoomCharge[x].Font.Color := clNavy;
        lblMenuCharge[x].Font.Color := clNavy;
        lblOtherCharge[x].Font.Color := clNavy;
        lblTotalCharge[x].Font.Color := clNavy;
        lblMemoAdmin[x].Font.Color := clNavy;
        lblMemoKasir[x].Font.Color := clNavy;
        lbljam[x].Font.Color := clNavy;
         lblmember [x].Font.Color := clRed;
        //LABEL ROOM
        lblRoom[x].Font.Size := 16;
        lblRoom[x].Font.Name := 'Arial';
        lblRoom[x].Font.Color := clBlue;
        lblRoom[x].Alignment := taCenter;
        lblRoom[x].Color := clRed;
        lblRoom[x].Align := alTop;

        lblRoom[x].Left := 114;
        edtOrderID[x].Left := 100;
        edtKategori[x].Left := 100;
        edtNama[x].Left := 100;
        edtRoomCharge[x].Left := 100;
        edtMenuCharge[x].Left := 100;
        edtOtherCharge[x].Left := 100;
        edtTotalCharge[x].Left := 100;
        edtDurasi[x].Left := 156;


        memAdmin[x].Left := 100;
        cmbStatus[x].Left := 100;
        //toldurasi[x].Left := 250;
        spnInterfal[x].Left := 100;
        spnOrang[x].Left := 100;
        spnbooking[x].Left := 156;
        lbljam[x].Left := 200;
        btnRoomDurasi[x].Left := 235;
        btnRoomCharge[x].Left := 235;
        btnMenuCharge[x].Left := 235;
        btnOtherCharge[x].Left := 235;
        edtTanggal[x].Left := 100;
        btnstart[x].Left := 115;
        btnstop[x].Left := 115;
        btnEnd[x].Left := 115;
        lblmember[x].Left := 233;
        //label
        lblOrderid[x].Left := 12;
        lblKategori[x].Left := 12;
        lblNama[x].Left := 12;
        lblCheckin[x].Left := 12;
        lblOrang[x].Left := 12;
        lblDurasi[x].Left := 12;
        lblRoomCharge[x].Left := 12;
        lblMenuCharge[x].Left := 12;
        lblOtherCharge[x].Left := 12;
        lblTotalCharge[x].Left := 12;
        lblMemoAdmin[x].Left := 12;
        lblMemoKasir[x].Left := 12;

        lblRoom[x].Top := 13;
        lblOrderid[x].top := 44;
        edtOrderID[x].Top := 40;
        lblKategori[x].top := 68;
        edtKategori[x].Top := 64;
        lblNama[x].top := 92;
        edtNama[x].Top := 88;
        lblCheckin[x].top := 116;
        edtTanggal[x].Top := 112;
        lblOrang[x].Top := 140;
        spnbooking[x].top := 136;
        lbljam[x].Top := 140;
        spnOrang[x].Top := 136;
        lblDurasi[x].top := 164;
        spnInterfal[x].Top := 160;
        edtDurasi[x].Top := 160;
        btnRoomDurasi[x].Top := 160;
        lblRoomCharge[x].top := 188;
        edtRoomCharge[x].Top := 184;
        btnRoomCharge[x].Top := 184;
        lblMenuCharge[x].top := 212;
        edtMenuCharge[x].Top := 208;
        btnMenuCharge[x].Top := 208;
        lblOtherCharge[x].top := 236;
        edtOtherCharge[x].Top := 232;
        btnOtherCharge[x].Top := 232;
        lblTotalCharge[x].top := 260;
        edtTotalCharge[x].Top := 256;
        lblMemoAdmin[x].top := 284;
        memAdmin[x].Top := 280;
        cmbStatus[x].Top := 322;

        btnstart[x].top := 360;
        btnstop[x].top := 360;
        btnEnd[x].top := 360;
        //label
        lblMemoKasir[x].top := 326;
        lblmember[x].Top := 370;

        btnRoomDurasi[x].Caption := '... ';
        btnRoomCharge[x].Caption := '... ';
        btnMenuCharge[x].Caption := '... ';
        btnOtherCharge[x].Caption := '... ';
        btnstart[x].Caption := 'Start';
        btnstop[x].Caption := 'Stop';
        btnEnd [x].Caption := 'End';
        //label
        lblRoom[x].Caption := QmsLoadRoom.FieldByName('namaroom').AsString;
        edtKategori[x].Text := QmsLoadRoom.FieldByName('kategori').AsString;
        edtKategori[x].Tag := QmsLoadRoom.FieldByName('idkategori').AsInteger;
        lblOrderid[x].Caption := 'Order ID';
        lblKategori[x].Caption := 'Type Room';
        lblNama[x].Caption := 'Nama';
        lblCheckin[x].Caption := 'Tanggal';
        lblOrang[x].Caption := 'Jumlah Tamu';
        lblDurasi[x].Caption := 'Durasi';
        lblRoomCharge[x].Caption := 'Room Charge';
        lblMenuCharge[x].Caption := 'Menu Charge';
        lblOtherCharge[x].Caption := 'Other Charge';
        lblTotalCharge[x].Caption := 'Sub Total';
        lblMemoAdmin[x].Caption := 'Admin Memo';
        lblMemoKasir[x].Caption := 'Room Status';
        lbljam[x].Caption := 'Jam';
        lblmember[x].Caption := '*) Member';
        cmbStatus[x].Items.Add('STAND BY');
        cmbStatus[x].Items.Add('ACTIVE');
        cmbStatus[x].Items.Add('RESTART');
        cmbStatus[x].Items.Add('SHUTDOWN');
        cmbStatus[x].Items.Add('DESKTOP');
        cmbStatus[x].Items.Add('WELCOME');
        cmbStatus[x].Items.Add('LOST');

        spnInterfal[x].Font.Color := clBlack;
//        cmbStatus[x].Style := csDropDownList;
        cmbStatus[x].Style := csSimple;
        cmbStatus[x].AutoComplete := False;
        cmbStatus[x].OnKeyDown := gakbolehpencet;

        cmbStatus[x].ItemIndex := 0;
        cmbStatus[x].Color := $00FF6833;

        memAdmin[x].Height := 37;
        btnRoomDurasi[x].Height := 20;
        btnRoomCharge[x].Height := 20;
        btnMenuCharge[x].Height := 20;
        btnOtherCharge[x].Height := 20;

        edtOrderID[x].Width := 129;
        edtKategori[x].Width := 129;
        edtNama[x].Width := 129;
        edtTanggal[x].Width := 129;
        edtRoomCharge[x].Width := 129;
        edtMenuCharge[x].Width := 129;
        edtOtherCharge[x].Width := 129;
        edtTotalCharge[x].Width := 129;
        spnInterfal[x].Width := 49;
        spnOrang[x].Width := 49;
        spnbooking[x].Width := 40;
        edtDurasi[x].Width := 73;
        memAdmin[x].Width := 190;
        cmbStatus[x].Width := 190;
       // toldurasi[x].Width := 40;
        btnRoomDurasi[x].Width := 24;
        btnRoomCharge[x].Width := 24;
        btnMenuCharge[x].Width := 24;
        btnOtherCharge[x].Width := 24;


        edtTanggal[x].ReadOnly := True;
        edtOrderID[x].ReadOnly := True;
        edtRoomCharge[x].ReadOnly := True;
        edtMenuCharge[x].ReadOnly := True;
        edtOtherCharge[x].ReadOnly := True;
        edtTotalCharge[x].ReadOnly := True;
        edtKategori[x].ReadOnly := True;
        memAdmin[x].ReadOnly := True;

        lblmember[x].Visible := False;
        //OTHERS
        btnEnd [x].Visible := False;
        btnstop[x].Visible := False;
        spnInterfal[x].MinValue := 0;
       // spnInterfal[x].MaxValue := 24;
        spnOrang[x].MinValue := 0;
        spnOrang[x].MaxValue := 50;
        spnbooking[x].MinValue := 0;
        spnbooking[x].MaxValue := 24;
        //PROSEDUR
        btnstart[x].OnClick :=  prcBtnStart;
        btnstop[x].OnClick :=  prcNewStop;
        btnRoomDurasi[x].OnClick := prcRoomDurasi;
        btnRoomCharge[x].OnClick := prcRoomCharge;
        btnMenuCharge[x].OnClick := prcMenuCharge;
        btnOtherCharge[x].OnClick := prcOtherCharge;
        spnInterfal[x].OnChange := prcTambahJam;
        spnOrang[x].OnChange := prcTambahOrang;
        cmbStatus[x].OnClick := prcStatus;
        spnbooking[x].OnChange := prcbooking;
        btnEnd [x].OnClick := prcStopTambahjam;

        btnRoomDurasi[x].Visible := False;
        cmbStatus[x].Enabled := False;
        
        //habis
        if x >= n then break;
        QmsLoadRoom.Next;
    end;
  end;

  if nkelompok > 0 then kelompok[1].Visible := True;
  cboStatus.Enabled := True;
  cboKategori.Enabled := True;
end;

procedure TFbill.FormCreate(Sender: TObject);
begin

  disableSpnEvent := False;

  QmsTimer.Connection := modul.Database1;
  QmsLoadRoom.Connection := modul.Database1;
  QmsOther.Connection := modul.Database1;
  Qcs.Connection := modul.Database1;
  Qbayar.Connection := modul.Database1;

  DateSeparator := '-';
  ShortDateFormat := 'dd-MM-yyyy';
  LongDateFormat := 'dddd, dd MMMM yyyy';
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  CurrencyString := 'Rp';

  FrmInduk.pbbill := True;
  Self.Height := 768;
  self.Width := 1024;

  pvlogin := FrmInduk.pbidkasir;
  qcs.Active := False;
  Qcs.SQL.Text := 'SELECT     nama, foto' +
                  ' FROM         tkasir ' +
                  ' WHERE (login = ' + QuotedStr(pvlogin) + ')';

  Qcs.Active := True;
{
  BG:=TJPEGImage.Create;
  MS:=TBlobStream.Create(Qcsfoto,bmRead);
  if MS.Size>0 then begin
    BG.LoadFromStream(MS);
    Image1.Picture.Graphic:=BG;
  end
  else
  begin
    Image1.Picture:=nil;
  end;
  MS.Free;
  BG.Free;
}
  labelnama.Caption := Qcsnama.Value;


  DateSeparator := '-';
  LongDateFormat := 'dddd, dd-MMMM-yyyy';
  ShortDateFormat := 'dd-MM-yy';
  Screen.Cursors[crSQLWait] := Screen.Cursors[crDefault];

  QmsOther.Active := False;
  QmsOther.SQL.Text := 'SELECT     kategori '+
                       'FROM         tkategoriroom '+
                       'ORDER BY  harga';
  QmsOther.Active := True;
  QmsOther.First;
  cboKategori.Clear;
  cboKategori.Items.Add('');
  while not(QmsOther.Eof) do
  begin
    cboKategori.Items.Add(QmsOther.FieldByName('kategori').AsString);
    QmsOther.Next;
  end;
  cboKategori.ItemIndex := 0;

  cboStatus.Clear;
  cboStatus.Items.Add('');
  cboStatus.Items.Add('Checkin');
  cboStatus.Items.Add('Checkout');
  cboStatus.ItemIndex := 0;

  n := 0;
  btnGoClick(Sender);

  if modul.DBmysql.Connected = True then
  begin
    try
      QmyROOM.Active := False;
      QmyROOM.SQL.Text := 'select count(*) from room';
      QmyROOM.Active := True;
      edtStatusMysql.Text := 'ACTIVE';
      edtStatusMysql.Color := clBlue;
    except
      modul.DBmysql.Connected := False;
      edtStatusMysql.Text := 'DOWN';
      edtStatusMysql.Color := clRed;
    end;
  end
  else
  begin
      edtStatusMysql.Text := 'DOWN';
      edtStatusMysql.Color := clRed;
  end;

  if modul.My2.Connected = True then
  begin
    try
      QmyRoom2.Active := False;
      QmyRoom2.SQL.Text := 'select count(*) from room';
      QmyRoom2.Active := True;
      edtStatusMysql2.Text := 'ACTIVE';
      edtStatusMysql2.Color := clBlue;
    except
      modul.My2.Connected := False;
      edtStatusMysql2.Text := 'DOWN';
      edtStatusMysql2.Color := clRed;
    end;
  end
  else
  begin
      edtStatusMysql2.Text := 'DOWN';
      edtStatusMysql2.Color := clRed;
  end;

  Self.Left := 0;
  Self.Top := 0;

  Application.CreateForm(TFmessage, Fmessage);
  Fmessage.Show;
  Fmessage.FormStyle :=  fsStayOnTop;
end;

procedure TFbill.flsExitEnter(Sender: TObject);
begin

 if  bsSkinMessage1.MessageDlg('Exit RDS Billing ? ? ?', mtConfirmation,[mbYes, mbNo] ,0) = mrYes then
   Close;
end;

procedure TFbill.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbbill := False;
  Fmessage.Close;
end;

procedure TFbill.flsPaymentEnter(Sender: TObject);
begin
 FrmInduk.Payment1Click(Sender);
end;

procedure TFbill.flsMenuEnter(Sender: TObject);
begin
  FrmInduk.ORDERMENU1Click(Sender);
end;

procedure TFbill.flsOthersEnter(Sender: TObject);
begin
  FrmInduk.OrderLainlain1Click(Sender);
end;

procedure TFbill.flsCorrectionEnter(Sender: TObject);
begin

  if FrmInduk.BillCorrection1.Visible then
    FrmInduk.BillCorrection1Click(Sender)
  else
    bsSkinMessage1.MessageDlg('Anda tidak dapat melakukan koreksi ', mtError,[mbOK] ,0)
end;

procedure TFbill.flsRoomEnter(Sender: TObject);
begin
  FrmInduk.PindahRoom1Click(Sender);
end;

procedure TFbill.flsReportEnter(Sender: TObject);
begin
  FrmInduk.PaymentReport1Click(Sender);
end;

procedure TFbill.flsReservasiEnter(Sender: TObject);
begin
  FrmInduk.RoomReservation3Click(Sender);
end;

procedure TFbill.bolehpencet(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//
end;
procedure TFbill.prcbooking(Sender: TObject);
var
  x : integer;
begin
  x := TbsSkinButton(Sender).Parent.Tag;

  if  not(cekRoom(lblRoom[x].Caption,QmsOther)) then exit;

  if (spnbooking[x].Value = 0) then exit;
//  spnbooking[x].MinValue := spnbooking[x].Value;

  QmsOther.Active := False;
  QmsOther.SQL.Text := 'select jambooking from troom where id = ' + IntToStr(btnRoom[x].Tag);
  QmsOther.Active := True;
  if QmsOther.FieldByName('jambooking').AsInteger > spnbooking[x].Value then
  begin

    if FrmInduk.decreaseRoomDuration = 0 then exit;

    FrmInduk.activityLogin := FrmInduk.pbidkasir;
    FrmInduk.activityName := FrmInduk.pbnamakasir;
    FrmInduk.logActivity('Decrease booking duration, ' + lblRoom[x].Caption);
  end;

  //UPDATE TABEL ROOM
  QmsOther.Active := False;
  QmsOther.SQL.Text := ' UPDATE troom '+
                       ' SET jambooking = ' + IntToStr(spnbooking[x].Value) +
                       ' WHERE (id = '+ QuotedStr(IntToStr( btnRoom[x].Tag)) +')';
  QmsOther.ExecSQL;

  if spnbooking[x].Value < spnInterfal[x].Value then
  begin
    spnInterfal[x].Value := spnbooking[x].Value;
  end;
end;

procedure TFbill.prcStopTambahjam(sender:TObject);
var x : integer;
    Qtutup : TZQuery;
begin
  x := TbsSkinButton(Sender).Parent.Tag;
  Qtutup := TZQuery.Create(Self);
  Qtutup.Connection := modul.Database1;

  Qtutup.Active := False;
  Qtutup.SQL.Text := 'UPDATE    troom '+
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
                 'WHERE     (id = '+ FormatFloat('0', btnRoom[x].Tag) + ' )'  ;
  Qtutup.ExecSQL;

  QmyROOM.Active := False;
  QmyROOM.SQL.Text := 'UPDATE room SET STATUS = ' + QuotedStr('chekout') + ', APA= ' + QuotedStr('tutup') +
                      ' WHERE (IDROOM = '+ FormatFloat('0', btnRoom[x].Tag) + ' )'  ;
  QmyROOM.ExecSQL;

  if modul.My2.Connected = true then
  begin
    try
      QmyRoom2.Active := False;
      QmyRoom2.SQL.Text := 'UPDATE room SET STATUS = ' + QuotedStr('chekout') + ', APA= ' + QuotedStr('tutup') +
                          ' WHERE (IDROOM = '+ FormatFloat('0', btnRoom[x].Tag) + ' )'  ;
      QmyRoom2.ExecSQL;
    except
      modul.My2.Connected := False;
    end;
  end;
  Qtutup.Destroy;
end;

procedure TFbill.BtnReservasiClick(Sender: TObject);
begin
   FrmInduk.RoomReservation3Click(Sender)
end;

procedure TFbill.BtnRoom1Click(Sender: TObject);
begin
    FrmInduk.PindahRoom1Click(Sender);
end;

procedure TFbill.BtnMenuClick(Sender: TObject);
begin
    FrmInduk.ORDERMENU1Click(Sender);
end;

procedure TFbill.BtnOtherClick(Sender: TObject);
begin
   FrmInduk.OrderLainlain1Click(Sender);
end;

procedure TFbill.BtnCorrectionClick(Sender: TObject);
begin
if FrmInduk.BillCorrection1.Visible then
    FrmInduk.BillCorrection1Click(Sender)
  else
    bsSkinMessage1.MessageDlg('Anda tidak dapat melakukan koreksi ', mtError,[mbOK] ,0)
end;

procedure TFbill.BtnPaymentClick(Sender: TObject);
begin
     FrmInduk.Payment1Click(Sender);
end;

procedure TFbill.BtnExitClick(Sender: TObject);
begin
   if  bsSkinMessage1.MessageDlg('Exit RDS Point Of Sale ? ? ?', mtConfirmation,[mbYes, mbNo] ,0) = mrYes then
   Close;
end;

procedure TFbill.Timer1Timer(Sender: TObject);
begin
    label4.Caption := timetostr (time) ;
end;

end.
