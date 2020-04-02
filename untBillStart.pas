unit untBillStart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Spin, bsSkinCtrls, BusinessSkinForm,
  ExtCtrls, DB, DBTables, bsMessages, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids;

type
  TFBillStart = class(TForm)
    grpRoom: TPanel;
    tglTanggal: TDateTimePicker;
    tglJam: TDateTimePicker;
    spnInterfal: TSpinEdit;
    lblRoom: TLabel;
    Label14: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    edtNama: TEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btnCancel: TbsSkinButton;
    btnOK: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    Qreservasi: TZQuery;
    spnOrang: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    cmbMember: TComboBox;
    EdtMember: TEdit;
    DBmember: TDBGrid;
    DSmember: TDataSource;
    chkAuto: TCheckBox;
    BsPromo: TbsSkinButton;
    QMember: TZQuery;
    QMemberid: TStringField;
    QMemberid_kategori: TSmallintField;
    QMembernama: TStringField;
    QMembertgl_registrasi: TDateTimeField;
    QMemberberlaku: TDateTimeField;
    QMemberdiskonroom: TFloatField;
    QMemberdiskonmenu: TFloatField;
    QmyRoom2: TZQuery;
    QmyROOM: TZQuery;
    QmsOther: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure Press13(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbMemberClick(Sender: TObject);
    procedure EdtMemberChange(Sender: TObject);
    procedure edtNamaChange(Sender: TObject);
    procedure DBmemberDblClick(Sender: TObject);
    procedure DBmemberDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBmemberKeyPress(Sender: TObject; var Key: Char);
    procedure DBmemberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdtMemberKeyPress(Sender: TObject; var Key: Char);
    procedure edtNamaKeyPress(Sender: TObject; var Key: Char);
    procedure BsPromoClick(Sender: TObject);
  private
    { Private declarations }
  public
    pbidanak : integer;
    pbIdRoom : integer;
    pbNamaRoom : String;
    pbReservLanjut : Boolean;
    t :integer;
  end;

var
  FBillStart: TFBillStart;

implementation

uses unit1, untBill, DateUtils,ShellAPI,StrUtils, Unit3, cekTamu, untPing, untReservasiBill,
  untAutorisasi;

{$R *.dfm}

procedure TFBillStart.FormCreate(Sender: TObject);
begin

  Qreservasi.Connection := modul.Database1;
  QMember.Connection := modul.Database1;
  QmsOther.Connection := modul.Database1;

  FrmInduk.pbBillStart := True;

  if FrmInduk.pbbill then Fbill.Enabled := False;
  EdtMember.Text := '';
  edtNama.Text := '';
  tglTanggal.DateTime := Now;
  tglJam.DateTime := Now;
  spnInterfal.Value := 1;
  DBmember.Visible := False;
  edtNama.Left := 120;
  edtNama.Width := 169;
  EdtMember.Visible := false;
  t:=0;

  FrmInduk.activityLogin := FrmInduk.pbidkasir;
  FrmInduk.activityName := FrmInduk.pbnamakasir;

end;

procedure TFBillStart.btnOKClick(Sender: TObject);
var id : integer;
    ids,k, idmember : string;
    harga : Real;
    qUpdate1, qUpdate2, qUpdate3, qUpdate4, qUpdate5 : TZQuery;
begin
  //Validasi
  if cmbMember.ItemIndex = 1 then
  begin
    If EdtMember.Text ='' then
    begin
      bsSkinMessage1.MessageDlg('    Incomplete data   !!!    ', mtError,[mbOK], 0);
      exit;
    end;
  end;
  if (edtNama.Text = '') then
  begin
    Beep;
    edtNama.SetFocus;
    exit;
  end;
  if DaysBetween(tglTanggal.Date, Date) > 1 then
  begin
    Beep;
    tglTanggal.SetFocus;
    exit;
  end;
  if (spnOrang.Text = '') or (spnOrang.Value <=0) then
  begin
    bsSkinMessage1.MessageDlg('    Incomplete data   !!!    ', mtError,[mbOK], 0);
    Exit;
  end;
  if (spnInterfal.Value = 0) or (spnInterfal.Text='') then spnInterfal.Value := 1;

  if  cekBillStart(lblRoom.Caption,QmsOther) then
  begin
    bsSkinMessage1.MessageDlg('       Room '+ lblRoom.Caption + ' cannot be used,        ' + #13 +
                              '        Please select another room      ' , mtError, [mbOK],0);
    exit;
  end;
  pbReservLanjut := False;

{  //reservasi
  Qreservasi.SQL.Text := ' Select id, tanggal, durasi, nama, telpon, hp, dp from Treservasi where (status = 0) and (idroom = ' + QuotedStr(IntToStr(pbIdRoom)) + ')';
  Qreservasi.Active := True;
  Qreservasi.First;
  while not(Qreservasi.Eof) do
  begin
    pvReservAwal  := Qreservasi.FieldByName('tanggal').AsDateTime;
    pvReservAkhir := IncHour(Qreservasi.FieldByName('tanggal').AsDateTime,
                             Qreservasi.FieldByName('durasi').AsInteger);

    pvBillAwal    := StrToDateTime(FormatDateTime('dd-MM-yyyy ' , tglTanggal.DateTime )+ FormatDateTime('HH:mm:ss', tglJam.DateTime));
    pvBillAkhir   := IncHour(StrToDateTime(FormatDateTime('dd-MM-yyyy ' , tglTanggal.DateTime )+ FormatDateTime('HH:mm:ss', tglJam.DateTime)), spnInterfal.Value);

    if (((pvBillAwal >= pvReservAwal) and (pvBillAwal <= pvReservAkhir)) or
        ((pvBillAkhir >= pvReservAwal) and (pvBillAkhir <= pvReservAkhir)) or
        ((pvBillAwal <= pvReservAwal) and (pvBillAkhir >= pvReservAkhir)))
    then
    begin
      Application.CreateForm(TFreservasiBill, FreservasiBill);
      with FreservasiBill do
      begin
        AEdit1.Text := Qreservasi.FieldByName('nama').AsString;
        AEdit2.Text := Qreservasi.FieldByName('telpon').AsString;
        AEdit3.Text := Qreservasi.FieldByName('hp').AsString;
        AEdit4.Text := FormatDateTime('dddd, dd MM yyyy HH:mm', Qreservasi.FieldByName('tanggal').AsDateTime);
        AEdit5.Text := Qreservasi.FieldByName('durasi').AsString + ' Jam';
        AEdit6.Text := FormatFloat('Rp #,#', Qreservasi.FieldByName('dp').AsFloat);
      end;
      FreservasiBill.ShowModal;
      if not(pbReservLanjut) then
        exit
      else
      begin
        QmsOther.SQL.Text := 'UPDATE    Treservasi  ' +
                                  'SET       status = 1 ' +
                                  'WHERE     (id =  '+ Qreservasi.FieldByName('id').AsString  + ')';
        QmsOther.ExecSQL;
        Break;
      end;
    end;
    Qreservasi.Next;
  end;
  Qreservasi.Active := False;
}
  qUpdate1 := TZQuery.Create(Self);
  qUpdate1.Connection := modul.Database1;
  qUpdate2 := TZQuery.Create(Self);
  qUpdate2.Connection := modul.Database1;
  qUpdate3 := TZQuery.Create(Self);
  qUpdate3.Connection := modul.Database1;
  qUpdate4 := TZQuery.Create(Self);
  qUpdate4.Connection := modul.Database1;
  qUpdate5 := TZQuery.Create(Self);
  qUpdate5.Connection := modul.Database1;

  qUpdate1.Active := False;
  qUpdate1.SQL.Text := ' SELECT     MAX(RIGHT(idorder, 4)) AS id  ' +
                         ' FROM         tpayment ' +
                         ' WHERE     (idorder LIKE ' + QuotedStr(FormatDateTime('yyMMdd',Now)+'%')+')';
  qUpdate1.Active := True;
  try
    id := StrToInt(qUpdate1.FieldByName('id').Value);
  except
    id :=0;
  end;
  id := id+1;
  ids := FormatDateTime('yyMMdd',Now) + FormatFloat('0000',id);

  if cmbMember.ItemIndex > 0 then
    idmember := EdtMember.Text
  else
    idmember := '00000';

  qUpdate2.Active := False;
  qUpdate2.SQL.Text := 'UPDATE    troom '+
                       ' SET       status = 1 ' +
                                 ' ,chekin = 1 ' +
                                 ' , waktu = ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tglTanggal.DateTime )+ FormatDateTime('HH:mm:ss', tglJam.DateTime))+
                                 ' , idorder = ' + QuotedStr(ids) +
                                 ' , jambooking = ' + spnInterfal.Text +
                                 ' , orang = ' + spnOrang.Text +
                                 ' , nama = ' + QuotedStr(edtNama.Text) +
                                 ' , roomcharge = 0 ' +
                                 ' , menucharge = 0 ' +
                                 ' , othercharge = 0 ' +
                                 ' , durasi = 0 ' +
                                 ' , billstop = 0' +
                                 ' , corection = 0' +
                                 ' , idmember =' + QuotedStr(idmember) +
                                 ' , autoClose =' + modul.BoolToStr(chkAuto.Checked) +
                      ' WHERE     (id = ' + IntToStr(pbIdRoom) +
                      ' ) ';
  qUpdate2.ExecSQL;
  modul.syncDataToBackupProcedure(Handle, qUpdate2.SQL.Text);

  qUpdate3.Active := False;
  qUpdate3.SQL.Text := ' SELECT     tkategoriroom.harga AS harga ' +
                         ' FROM       troom INNER JOIN ' +
                         '            tkategoriroom ON troom.idkategori = tkategoriroom.id '+
                         ' WHERE      (troom.id = '+ IntToStr(pbIdRoom)+ ') ';
  qUpdate3.Active := True;
  harga := qUpdate3.FieldByName('harga').AsFloat;

  qUpdate4.Active := False;
  qUpdate4.SQL.Text := ' INSERT INTO    torder_room '+
                         '                 (idorder, idroom, durasi, harga_asli, diskon, tglStart, tglStop) '+
                         ' VALUES   ( '+
                                         QuotedStr(ids) + ', '+
                                         IntToStr(pbIdRoom) + ', '+
                                         IntToStr(0) + ', '+
                                         FloatToStr(harga) + ', '+
                                         '0, '+
                                         QuotedStr(FormatDateTime('yyyy-MM-dd',tglTanggal.Date)+ FormatDateTime(' HH:mm:ss', tglJam.DateTime)) + ', '+
                                         QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss', IncHour( EncodeDateTime( YearOf(tglTanggal.Date), MonthOf(tglTanggal.Date), DayOf(tglTanggal.Date),
                                                                            HourOf(tglJam.Time),     MinuteOf(tglJam.Time),    SecondOf(tglJam.Time), 0), spnInterfal.Value))) +
                                         ')';
  qUpdate4.ExecSQL;
  modul.syncDataToBackupProcedure(Handle, qUpdate4.SQL.Text);

  qUpdate5.Active := False;
  qUpdate5.SQL.Text := ' INSERT INTO tpayment '+
                    '              (idorder, tanggal ) '+
                    ' VALUES     (' + QuotedStr(ids) + ', '+ QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss', now)) + ' )';
  qUpdate5.ExecSQL;
  modul.syncDataToBackupProcedure(Handle, qUpdate5.SQL.Text);

  QmyROOM.Active := False;
  QmyROOM.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('welcome') +
                                   ' , STATUS = ' + QuotedStr('chekin') +
                                   ' , USERROOM = ' + QuotedStr(edtNama.Text) +
                                   ' , WKTSTART = '+ QuotedStr(FormatDateTime('yyyy-MM-dd', tglTanggal.DateTime) +
                                                               FormatDateTime(' HH:mm:ss', tglJam.DateTime) ) +
                                   ' , DURASI = ' + spnInterfal.Text +
                            ' WHERE IDROOM = ' + IntToStr(pbIdRoom);
  QmyROOM.ExecSQL;

  if modul.My2.Connected = True then
  begin
    try
        QmyRoom2.Active := False;
        QmyRoom2.SQL.Text := 'select count(*) from room';
        QmyRoom2.Active := True;
    except
      modul.My2.Connected := False;
    end;
  end;

  if modul.My2.Connected = true then
  begin
    QmyRoom2.Active := False;
    QmyRoom2.SQL.Text := 'UPDATE room SET APA = ' + QuotedStr('welcome') +
                                     ' , STATUS = ' + QuotedStr('chekin') +
                                     ' , USERROOM = ' + QuotedStr(edtNama.Text) +
                                     ' , WKTSTART = '+ QuotedStr(FormatDateTime('yyyy-MM-dd', tglTanggal.DateTime) +
                                                                 FormatDateTime(' HH:mm:ss', tglJam.DateTime) ) +
                                     ' , DURASI = ' + spnInterfal.Text +
                              ' WHERE IDROOM = ' + IntToStr(pbIdRoom);
    QmyRoom2.ExecSQL;
  end;

  fbill.pbCekInvoiceError[pbidanak] := False;

  QmyROOM.Active := False;
  QmyROOM.SQL.Text := 'select wakeon from room WHERE ROOMNAME = ' + QuotedStr(lblRoom.Caption);
  QmyROOM.Active :=True;
  k:= QmyROOM.FieldByName('wakeon').AsString ;
  WinExec(PChar('c:\wolcmd '+ k +' 255.255.255.255 255.255.255.255'), SW_HIDE );

  qUpdate1.Destroy;
  qUpdate2.Destroy;
  qUpdate3.Destroy;
  qUpdate4.Destroy;
  qUpdate5.Destroy;
  Close;
end;

procedure TFBillStart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FrmInduk.pbbill then Fbill.Enabled := True;

  FrmInduk.pbBillStart := False;
  Action := caFree;
end;

procedure TFBillStart.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFBillStart.Press13(Sender: TObject; var Key: Char);
begin
if cmbMember.ItemIndex = 0 then
begin
  if key=#13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end
else
begin
 if key=#13	then
  begin
  DBmember.SetFocus;
  end;
end;
end;

procedure TFBillStart.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
  begin
    btnCancelClick(sender);
    exit;
  end;
end;

procedure TFBillStart.cmbMemberClick(Sender: TObject);
begin
  if  cmbMember.ItemIndex = 0 then
  begin
      DBmember.Visible := False;
      edtNama.Left := 120;
      edtNama.Width := 169;
      EdtMember.Visible := False;
  end
  else
  begin
    QMember.Active := True;
    DBmember.Visible := true;
    edtNama.Left := 216;
    edtNama.Width := 145;
    EdtMember.Visible := true;
    EdtMember.Left := 120;
  end;
end;

procedure TFBillStart.EdtMemberChange(Sender: TObject);
begin
  if edtNama.Focused then exit;
  if cmbMember.ItemIndex = 1 then
  begin
    qmember.Active := false;
    qmember.SQL.Text := 'SELECT   tmember.id, tmember.id_kategori, tmember.nama, tmember.tgl_registrasi, tmember.berlaku, tkategorimember.diskonroom, '+
                     ' tkategorimember.diskonmenu '+
                      ' FROM         tmember INNER JOIN   '+
                      ' tkategorimember ON tmember.id_kategori = tkategorimember.id  '+
                      ' where  tmember.id like '+ QuotedStr ( EdtMember.Text+'%' ) +'  '+
                      ' ORDER BY tmember.id  limit 0, 14';
    qmember.Active := true;
  end;
end;

procedure TFBillStart.edtNamaChange(Sender: TObject);
begin
  if EdtMember.Focused then exit;
  if cmbMember.ItemIndex = 1 then
  begin
    QMember.Active := false;
    QMember.SQL.Text := 'SELECT   tmember.id, tmember.id_kategori, tmember.nama, tmember.tgl_registrasi, tmember.berlaku, tkategorimember.diskonroom, '+
                     ' tkategorimember.diskonmenu '+
                      ' FROM         tmember INNER JOIN   '+
                      ' tkategorimember ON tmember.id_kategori = tkategorimember.id  '+
                      ' where  tmember.nama like '+ QuotedStr ( edtNama.Text+'%' ) +'  '+
                      ' ORDER BY tmember.nama  limit 0, 14';
    QMember.Active := true;
  end;
end;

procedure TFBillStart.DBmemberDblClick(Sender: TObject);
begin
  edtNama.Text := QMembernama.AsString;
  EdtMember.Text := QMemberid.AsString;
  DBmember.Visible := False;
end;

procedure TFBillStart.DBmemberDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with (Sender as TDBGrid).Canvas do
  begin
    if (gdSelected in State) then
    begin
      Brush.Color := clLime;
      FillRect(Rect);
      Font.Color:= clBlack;
    end;
  end;
  DBmember.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFBillStart.DBmemberKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBmemberDblClick(sender);
end;

procedure TFBillStart.DBmemberKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  k :integer;
begin

if QMember.RecNo = QMember.RecordCount then
 begin
  k := QMember.RecordCount+1;
  if (edtNama.Text  = '') and  (EdtMember.Text ='') then
  begin
    QMember.Active := False;
    QMember.SQL.Text := 'SELECT   tmember.id, tmember.id_kategori, tmember.nama, tmember.tgl_registrasi, tmember.berlaku, tkategorimember.diskonroom, '+
                     ' tkategorimember.diskonmenu '+
                      ' FROM         tmember INNER JOIN   '+
                      ' tkategorimember ON tmember.id_kategori = tkategorimember.id  '+
                      ' ORDER BY tmember.id  limit 0, '+ IntToStr (k);
    QMember.Active := True;
  end;
  if (edtNama.Text <> '') then
  begin
    QMember.Active := false;
    QMember.SQL.Text := 'SELECT     tmember.id, tmember.id_kategori, tmember.nama, tmember.tgl_registrasi, tmember.berlaku, tkategorimember.diskonroom, '+
                     ' tkategorimember.diskonmenu '+
                      ' FROM         tmember INNER JOIN   '+
                      ' tkategorimember ON tmember.id_kategori = tkategorimember.id  '+
                      ' where  tmember.nama like '+ QuotedStr ( edtNama.Text+'%' ) +'  '+
                      ' ORDER BY tmember.id    limit 0, '+ IntToStr (k);
    QMember.Active := true;
  end;
  if (EdtMember.Text <>'')then
  begin
    QMember.Active := False;
    QMember.SQL.Text := 'SELECT   tmember.id, tmember.id_kategori, tmember.nama, tmember.tgl_registrasi, tmember.berlaku, tkategorimember.diskonroom, '+
                     ' tkategorimember.diskonmenu '+
                      ' FROM         tmember INNER JOIN   '+
                      ' tkategorimember ON tmember.id_kategori = tkategorimember.id  '+
                      ' where  tmember.id like '+ QuotedStr ( EdtMember.Text+'%' ) +'  '+
                      ' ORDER BY tmember.id    limit 0, '+ IntToStr (k);
    QMember.Active := True;
  end;
   QMember.Last;
 end;
end;

procedure TFBillStart.EdtMemberKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
begin
DBmember.SetFocus;
end
else
begin
 edtNama.Text :='';
end;
end;

procedure TFBillStart.edtNamaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
begin
if cmbMember.ItemIndex = 1 then
begin
DBmember.SetFocus;
end
else
begin
   tglTanggal.SetFocus;
end;
end
else
begin
EdtMember.Text :='';
end;
end;

procedure TFBillStart.BsPromoClick(Sender: TObject);
begin
  if FrmInduk.pbadmin then
     chkAuto.Enabled := True
  else
  begin
    Application.CreateForm(TFautorisasi, Fautorisasi);
    Fautorisasi.Show;
    fAutorisasi.kiriman := 5;
  end;
end;

end.
