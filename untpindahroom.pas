unit untpindahroom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, Mask, DBCtrls, Spin,
  ExtCtrls, bsSkinCtrls, bsMessages, BusinessSkinForm, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, AEDIT;

type
  Tfpindahroom = class(TForm)
    qkatroom: TZQuery;
    qroomchekout: TZQuery;
    DCchekout: TDataSource;
    qroomchekoutnamaroom: TStringField;
    qroomchekoutkategori: TStringField;
    qroomchekoutharga: TFloatField;
    Panel1: TPanel;
    Label1: TLabel;
    Panel4: TPanel;
    btnok: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qothers: TZQuery;
    edtdurasi: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    edttotal: TEdit;
    Label4: TLabel;
    edtdiskon: TEdit;
    Qupdate: TZQuery;
    Qnonaktif: TZQuery;
    Label6: TLabel;
    Label7: TLabel;
    spndurasi: TSpinEdit;
    Label8: TLabel;
    spndurasilama: TSpinEdit;
    qroomchekoutid: TSmallintField;
    qcari: TZQuery;
    qordermenu: TZQuery;
    cmbkatroom: TComboBox;
    DBGrid1: TDBGrid;
    cmbroomasal: TComboBox;
    Label2: TLabel;
    QmyROOM: TZQuery;
    edtHargaTotal: TAEdit;
    edtHargaPakai: TAEdit;
    edtroomcharge: TAEdit;
    chkAuto: TCheckBox;
    qroomasal: TZQuery;

    procedure FormCreate(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure cmbkatroomClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnbatalClick(Sender: TObject);
    procedure cmbroomasalClick(Sender: TObject);
    procedure edtroomchargeEnter(Sender: TObject);
    procedure edtdiskonEnter(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure edttotalEnter(Sender: TObject);
    procedure edttotalExit(Sender: TObject);
    procedure spndurasilamaChange(Sender: TObject);
    procedure edtdiskonExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkAutoClick(Sender: TObject);
  private
    jam, menit, pvdurasiasli  : Integer;
    hargaasli, pvdiskon, pvtotal, hargatotal : real;
    durasi, pvwaktu  : Double;
    pvnamaroom : string;
    qroomasal2: TZQuery;


    { Private declarations }
  public
     pbidanak, pbidroom : integer;
     pbadmin : boolean;
    { Public declarations }
  end;

var
  fpindahroom: Tfpindahroom;

implementation
   uses  Dateutils, unit1, unit3, untbill, cekTamu, untPing, untAutorisasi;
{$R *.dfm}


procedure Tfpindahroom.FormCreate(Sender: TObject);
var i,x : Smallint;
    s   : string;
begin

  qkatroom.Connection := modul.Database1;
  qroomchekout.Connection := modul.Database1;
  Qothers.Connection := modul.Database1;
  Qupdate.Connection := modul.Database1;
  Qnonaktif.Connection := modul.Database1;
  qcari.Connection := modul.Database1;
  qordermenu.Connection := modul.Database1;
  qroomasal.Connection := modul.Database1;

  if FrmInduk.pbbill then Fbill.Enabled := False;
  
  FrmInduk.pbpindahroom := True;
  qroomchekout.Active := True;
  qkatroom.Active := true;

  cmbkatroom.Clear;
  while not(qkatroom.Eof) do
   begin
     s := qkatroom.fieldByName('kategori').AsString;
     x := trunc((80-length(s)) /2);
     s :='';
     for i := 1 to x do
     begin
       s := s + ' ';
     end;
     s:= s + qkatroom.fieldByName('kategori').AsString;
     cmbkatroom.Items.Add(s);
     qkatroom.Next
   end;
   cmbkatroom.ItemIndex := 0;


  qroomasal.Active := True;

  cmbroomasal.Clear;
  while not(qroomasal.Eof) do
   begin
     s := qroomasal.fieldByName('namaroom').AsString;
     x := trunc((70-length(s)) /2);
     s :='';
     for i := 1 to x do
     begin
       s := s + ' ';
     end;
     s:= s + qroomasal.fieldByName('namaroom').AsString;
     cmbroomasal.Items.Add(s);
     qroomasal.Next
   end;

  qroomasal2 := TZQuery.Create(self);
  qroomasal2.Connection := modul.Database1;

  cmbroomasal.ItemIndex := 0;
  cmbroomasalClick(sender);

  FrmInduk.activityLogin := FrmInduk.pbidkasir;
  FrmInduk.activityName := FrmInduk.pbnamakasir;

  if FrmInduk.editPindahRoom = 0 then
  begin
    edtdiskon.ReadOnly := True;
    edttotal.ReadOnly := True;
    spndurasilama.ReadOnly := True;
  end;
end;

procedure Tfpindahroom.btncancelClick(Sender: TObject);
begin
  close;
end;

procedure Tfpindahroom.DBLookupComboBox1Click(Sender: TObject);
begin
  qkatroom.Active := True;
 // Edit2.Text := qkatroomharga.AsString;
end;

procedure Tfpindahroom.cmbkatroomClick(Sender: TObject);
begin
  qkatroom.Locate('kategori',trim(cmbkatroom.Text),[loCaseInsensitive]);
  qroomchekout.Active := False;

  {if cmbkatroom.Text = '' then
    begin
      qroomchekout.sql.Text := ' SELECT     troom.namaroom, tkategoriroom.kategori, tkategoriroom.harga ' +
                               ' FROM         troom INNER JOIN ' +
                               ' tkategoriroom ON troom.idkategori = tkategoriroom.id ' +
                               ' WHERE     (troom.chekin = 0) ';

    end
    else      }
  qroomchekout.sql.Text := ' SELECT     troom.namaroom, troom.id, tkategoriroom.kategori, tkategoriroom.harga ' +
                           ' FROM         troom INNER JOIN ' +
                           ' tkategoriroom ON troom.idkategori = tkategoriroom.id ' +
                           ' WHERE     (troom.chekin = 0) ' +
                           ' and tkategoriroom.kategori = ' + QuotedStr(Trim(cmbkatroom.Text)) +
                           ' ORDER BY namaroom ';

  qroomchekout.Active := True;
  pvnamaroom := qroomchekoutnamaroom.Value;
  pbidroom := qroomchekoutid.Value;
 end;

procedure Tfpindahroom.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfpindahroom.btnbatalClick(Sender: TObject);
begin
  fpindahroom.Close;
end;

procedure Tfpindahroom.cmbroomasalClick(Sender: TObject);
const
  Hari: array[1..7] of string = ('mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun');
var
  sqlQuery: TZQuery;
  promoQuery: TZQuery;
  orderRoomQuery: TZQuery;
  tglStart: TDateTime;
  a: Integer;
  harga: Real;
  hargaDiskonTotal: Real;
  hargaMenit: Real;
begin

  if cmbroomasal.Text = '' then
  begin
    exit;
  end;

  sqlQuery := TZQuery.Create(self);
  sqlQuery.Connection := modul.Database1;

  promoQuery := TZQuery.Create(self);
  promoQuery.Connection := modul.Database1;

  orderRoomQuery := TZQuery.Create(self);
  orderRoomQuery.Connection := modul.Database1;

  Qothers.Active := False;
  Qothers.SQL.Text := ' SELECT    id, waktu, durasi, idkategori ' +
                      ' FROM         troom ' +
                      ' WHERE     (namaroom = ' + QuotedStr(Trim(cmbroomasal.Text)) + ')';
  Qothers.Active := True;

  orderRoomQuery.Active := False;
  orderRoomQuery.SQL.Text := 'select torder_room.tglStart from tpayment inner join torder_room on torder_room.idorder = tpayment.idorder where tpayment.payment is null and torder_room.idroom = ' + Qothers.FieldByName('id').AsString;
  orderRoomQuery.Active := True;

  qroomasal2.Active := False;
  qroomasal2.SQL.Text := ' SELECT     troom.namaroom, tkategoriroom.kategori, tkategoriroom.harga, troom.idmember ' +
                           ' FROM         troom INNER JOIN ' +
                          '  tkategoriroom ON troom.idkategori = tkategoriroom.id ' +
                        ' WHERE     (troom.namaroom = ' + QuotedStr(trim(cmbroomasal.Text)) + ')';
  qroomasal2.Active := True;

  tglStart := orderRoomQuery.FieldByName('tglStart').AsDateTime;

  
  pvwaktu := Qothers.fieldByName('waktu').AsDateTime;

  pvdurasiasli := Qothers.fieldByName('durasi').AsInteger;
  spndurasilama.Value := pvdurasiasli;

  durasi := MinutesBetween(Now, Qothers.FieldByName('waktu').AsDateTime);
  edtDurasi.Text := FormatFloat('    00', (Trunc(durasi) div 60)) + ':'+ FormatFloat('00', Trunc(durasi) mod 60);
  jam := (Trunc(durasi) div 60);
  menit := (Trunc(durasi) mod 60);

  hargaasli := qroomasal2.fieldByname('harga').AsFloat;
  hargaDiskonTotal := 0;
  for a := 0 to jam do
  begin
    promoQuery.Active := False;
    promoQuery.SQL.Text := 'SELECT Tdiskonroom.diskon FROM tdisc inner join Tdiskonroom on Tdiskonroom.iddisc = tdisc.id where tdisc.active = 1 and tdisc.otomatis = 1 and Tdiskonroom.idroom = ' + Qothers.fieldByName('idkategori').AsString + ' and tdisc.tglAwal <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', tglStart)) + ' and tdisc.tglAkhir >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd', tglStart)) + ' and tdisc.timeAwal <= ' + QuotedStr(FormatDateTime('hh:nn:ss', tglStart)) + ' and tdisc.timeAkhir >= ' + QuotedStr(FormatDateTime('hh:nn:ss', tglStart)) + ' and tdisc.' + Hari[DayOfTheWeek(tglStart)] + ' = 1 order by diskon desc limit 0, 1';
    promoQuery.Active := True;
    if promoQuery.RecordCount > 0 then
    begin
      harga := hargaasli - promoQuery.FieldByName('diskon').AsFloat;
    end
    else
    begin
      harga := hargaasli;
    end;
    if a < jam then
    begin
      hargaDiskonTotal := hargaDiskonTotal + harga;
    end;
    tglStart := IncHour(tglStart, 1);
  end;

  if (jam = 0) and (menit < Unit1.roomTolerance) then
  begin
    hargaMenit := 0;
  end
  else
  begin
    hargaMenit := int((harga * menit) / 60);
  end;

  pvtotal := hargaDiskonTotal + hargaMenit;

  pvdiskon := (hargaasli * spndurasilama.Value) - pvtotal;

  edtHargaPakai.Text := FormatFloat('#,0', pvtotal);

  edtroomcharge.Text := FormatFloat('#,0', hargaasli);

  edtdiskon.Text := FormatFloat('#,0', pvdiskon);

  spndurasilamaChange(Sender);

end;

procedure Tfpindahroom.edtroomchargeEnter(Sender: TObject);
begin
    edtroomcharge.Text := FormatFloat('0',hargaasli);
    edtroomcharge.SelectAll;
  end;

procedure Tfpindahroom.edtdiskonEnter(Sender: TObject);
begin
    edtdiskon.Text := FormatFloat('0',pvdiskon);
    edtdiskon.SelectAll;
end;

procedure Tfpindahroom.btnokClick(Sender: TObject);
var
  qCekHargaRoom, qUpdateTroom : TZQuery;
begin
modul.log(#10);
  if cmbroomasal.Text = '' then exit;
  if  cekRoom(qroomchekoutnamaroom.AsString, Qothers) then
  begin
    bsSkinMessage1.MessageDlg('       Room '+ qroomchekoutnamaroom.AsString + 'sudah digunakan        ' + #13 +
                              '        Silahkan Pilih Room Lain      ' , mtError, [mbOK],0);
    exit;
  end;

  if not(FrmInduk.pbadmin) then
  begin
    Application.CreateForm(TfAutorisasi, fAutorisasi);
    Fautorisasi.kiriman :=6;
    Fautorisasi.ShowModal;
  end;

  if not(pbadmin or FrmInduk.pbadmin) then
    exit;

  if qroomchekout.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('       Tentukan room       ' , mtError, [mbOK],0);
    exit;
  end;

  try
    modul.Database1.StartTransaction;
    qroomasal2.Active := False;
    qroomasal2.SQL.Text := 'SELECT     namaroom, status, chekin, waktu, idorder, durasi, nama, roomcharge, menucharge, othercharge, id, idkategori, keterangan, jual, orang, idmember ' +
                     ' FROM         troom ' +
                     ' where (namaroom = ' + QuotedStr(Trim(cmbroomasal.Text)) + ')';
modul.log('Pindah room 1: ' + qroomasal2.SQL.Text);
    qroomasal2.Active := True;

    Qnonaktif.Active := False;
    Qnonaktif.SQL.Text := ' SELECT     tkategoriroom.harga AS harga ' +
                         ' FROM       troom INNER JOIN ' +
                         '            tkategoriroom ON troom.idkategori = tkategoriroom.id '+
                         ' WHERE      (troom.nama = '+ QuotedStr(qroomchekout.fieldByName('namaroom').AsString) + ') ';
modul.log('Pindah room 2: ' + Qnonaktif.SQL.Text);
    Qnonaktif.Active := True;

    qcari.Active := False;
    qcari.SQL.Text := 'SELECT     MAX(tglStart) as tglstart' +
                      ' FROM         torder_room  '+
                      ' WHERE     (idorder = ' + QuotedStr(qroomasal2.fieldByName('idorder').AsString) +')' +
                     '  AND (idroom = ' + qroomasal2.fieldByName('id').AsString +' )';
modul.log('Pindah room 3: ' + qcari.SQL.Text);
    qcari.Active := True;

    //update ke torder_room
    Qnonaktif.Active := False;
    Qnonaktif.SQL.Text :=       'UPDATE    torder_room ' +
                                ' SET    durasi = ' + spndurasilama.Text +
                                         ' , harga_asli =  ' + FormatFloat('0', hargaasli) +
                                         ' , diskon =  ' + FormatFloat('0',pvdiskon) +
                                         ' , tglstop = ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', Now)) +
                                         ' WHERE    (idorder= ' + QuotedStr(qroomasal2.fieldByName('idorder').AsString) + ') and   (idroom  = ' + qroomasal2.fieldByName('id').AsString + ')'  +
                                         ' and  (tglstart >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', IncSecond(qcari.fieldByName('tglstart').AsDateTime, -1)))   + ')';
modul.log('Pindah room 4: ' + Qnonaktif.SQL.Text);
    Qnonaktif.ExecSQL;
    modul.syncDataToBackupProcedure(Handle, Qnonaktif.SQL.Text);

    //non aktifkan room asal
    Qnonaktif.Active := False;
    Qnonaktif.SQL.Text := 'UPDATE    troom '+
                             ' SET       status = 0 ' +
                                       ' ,chekin = 0 ' +
                                       ' , idorder = ' + QuotedStr('') +
                                       ' , durasi = 0 ' +
                                       ' , nama = ' + QuotedStr('') +
                                       ' , roomcharge = 0 ' +
                                       ' , idmember =00000'+
                                       ' , menucharge = 0 ' +
                                       ' , othercharge = 0 ' +
                                       ' , corection = 0 ' +
                            ' WHERE     (namaroom = ' + QuotedStr(qroomasal2.fieldByName('namaroom').AsString )+ ')';
modul.log('Pindah room 5: ' + Qnonaktif.SQL.Text);
    Qnonaktif.ExecSQL;
    modul.syncDataToBackupProcedure(Handle, Qnonaktif.SQL.Text);

    QmyROOM.Active := False;
    QmyROOM.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('tutup') +
                                 ' , STATUS = ' + QuotedStr('chekout') +
                        ' WHERE ROOMNAME = ' + QuotedStr(trim(qroomasal2.fieldByName('namaroom').AsString));
modul.log('Pindah room 6: ' + QmyROOM.SQL.Text);
    QmyROOM.ExecSQL;

    //update TROOM yg baru
    Qupdate.Active := False;
    Qupdate.SQL.Text :=         'UPDATE    troom ' +
                                ' SET       status = 1 ' +
                                         ' , chekin = 1 ' +
                                         ' , waktu = ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', now )+ FormatDateTime('HH:mm:ss', now))+
                                         ' , idorder = ' + QuotedStr(qroomasal2.fieldByName('idorder').AsString) +
                                         ' , durasi = ' + spndurasi.Text +
                                         ' , jambooking = ' + spndurasi.Text +
                                         ' , nama = ' + QuotedStr(qroomasal2.fieldByName('nama').AsString )+
                                         ' , roomcharge = 0  ' +
                                         ' , orang = ' + qroomasal2.fieldByname('orang').AsString +
                                         ' , idmember ='+ QuotedStr(qroomasal2.fieldByName('idmember').AsString ) +
                                         ' , menucharge =  ' + FormatFloat('0',qroomasal2.fieldByName('menucharge').AsFloat) +
                                         ' , othercharge =  ' +  FormatFloat('0',qroomasal2.fieldByName('othercharge').AsFloat) +
                                         ' , corection = 0' +
                                         ' , autoClose = ' + modul.BoolToStr2(chkAuto.Checked) +
                                         ' WHERE     (namaroom  = ' + QuotedStr(qroomchekout.fieldByName('namaroom').AsString) +
                                         ')' ;
modul.log('Pindah room 7: ' + Qupdate.SQL.Text);
    Qupdate.ExecSQL;
    modul.syncDataToBackupProcedure(Handle, Qupdate.SQL.Text);

    QmyROOM.Active := False;
    QmyROOM.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('buka') +
                                     ' , STATUS = ' + QuotedStr('chekin') +
                                     ' , USERROOM = ' + QuotedStr(qroomasal2.fieldByName('nama').AsString)  +
                                     ' , WKTSTART = '+ QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss', Now)) +
                                     ' , DURASI = ' + spndurasi.Text +
                              ' WHERE ROOMNAME = ' + QuotedStr(qroomchekout.fieldByName('namaroom').AsString);
modul.log('Pindah room 8: ' + QmyROOM.SQL.Text);
    QmyROOM.ExecSQL;

    //insert ke torder_room
    Qnonaktif.Active := False;
    Qnonaktif.SQL.Text := ' INSERT INTO    torder_room '+
                           '                 (idorder, idroom, durasi, harga_asli, diskon, tglStart, tglStop) '+
                           ' VALUES   ( '+
                                           QuotedStr(qroomasal2.fieldByName('idorder').AsString) + ', '+
                                           IntToStr(qroomchekoutid.AsInteger) + ', '+
                                           IntToStr(spndurasi.Value) + ', '+
                                           FloatToStr(qroomchekoutharga.AsFloat) + ', '+
                                           '0, '+
                                           QuotedStr(FormatDateTime('yyyy-MM-dd',Now)+ FormatDateTime(' hh:mm:ss', Now)) + ', '+
                                           QuotedStr(FormatDateTime('yyyy-MM-dd hh:mm:ss', IncHour( EncodeDateTime( YearOf(now), MonthOf(now), DayOf(now),
                                                                              HourOf(now),     MinuteOf(now),    SecondOf(now), 0), spndurasi.Value))) +
                                           ')';
modul.log('Pindah room 9: ' + Qnonaktif.SQL.Text);
    Qnonaktif.ExecSQL;
    modul.syncDataToBackupProcedure(Handle, Qnonaktif.SQL.Text);

    qCekHargaRoom := TZQuery.Create(Self);
    qCekHargaRoom.Connection := modul.Database1;
    qCekHargaRoom.SQL.Text := ' SELECT     SUM(harga_asli * durasi - diskon) AS jumlah '+
                              ' FROM         torder_room '+
                              ' WHERE     (idorder = '+ QuotedStr(qroomasal2.fieldByName('idorder').AsString) +
                              ')';
modul.log('Pindah room 10: ' + qCekHargaRoom.SQL.Text);
    qCekHargaRoom.Active := True;
    qUpdateTroom := TZQuery.Create(Self);
    qUpdateTroom.Connection := modul.Database1;
    qUpdateTroom.SQL.Text := ' UPDATE troom  '+
                             ' SET  roomcharge = '+ FloatToStr(pvtotal)  +
                             ', durasi = ' + IntToStr(spndurasi.Value) +
                             ' WHERE  (id = '+ IntToStr(qroomchekoutid.AsInteger)+
                              ' )'  ;
modul.log('Pindah room 11: ' + qUpdateTroom.SQL.Text);
    qUpdateTroom.ExecSQL;
    modul.syncDataToBackupProcedure(Handle, qUpdateTroom.SQL.Text);
    qCekHargaRoom.Active := False;
    qCekHargaRoom.Destroy;
    qUpdateTroom.Destroy;

    modul.Database1.Commit;
  Except
    on e: Exception do
    begin
      modul.Database1.Rollback;
      modul.log('except');
      modul.log(e.ClassName + ': ' + e.Message);
      Exit;
    end;
  end;

  FrmInduk.logActivity('Pindah Room - ' + Trim(cmbroomasal.Text) + ' - ' + qroomchekout.fieldByName('namaroom').AsString);

  close;
end;

procedure Tfpindahroom.edttotalEnter(Sender: TObject);
begin
  edttotal.Text := FormatFloat('0',pvtotal)
end;

procedure Tfpindahroom.edttotalExit(Sender: TObject);
begin
   pvtotal := StrToFloat(edttotal.Text);
   pvdiskon := hargatotal - pvtotal;
   edtdiskon.Text := FormatFloat('#,0',pvdiskon);
   edttotal.Text := FormatFloat('#,0',pvtotal);
  

end;

procedure Tfpindahroom.spndurasilamaChange(Sender: TObject);
begin

  pvdurasiasli := spndurasilama.Value;

  hargatotal := hargaasli * pvdurasiasli;

  edtHargaTotal.Text := FormatFloat('#,0', hargatotal);
  edttotal.Text := FormatFloat('#,0', hargatotal - pvdiskon);
end;

procedure Tfpindahroom.edtdiskonExit(Sender: TObject);
begin
  pvdiskon := StrToFloat(edtdiskon.Text);
  if pvdiskon > hargatotal then
  begin
    bsSkinMessage1.MessageDlg('Diskon lebih besar Dari Harga Asli',mtInformation, [mbOK],0);
    edtdiskon.SetFocus;
    edtdiskon.SelectAll;
    exit;
  end;
  
  pvtotal := hargatotal - pvdiskon;
  edttotal.Text := FormatFloat('#,0',pvtotal);
  edtdiskon.Text := FormatFloat('#,0',pvdiskon);
end;

procedure Tfpindahroom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FrmInduk.pbbill then Fbill.Enabled := True;

    Action := caFree;
    FrmInduk.pbpindahroom := False;
end;

procedure Tfpindahroom.chkAutoClick(Sender: TObject);
begin
//
end;

end.
