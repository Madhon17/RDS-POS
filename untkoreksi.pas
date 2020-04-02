unit untkoreksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, Grids, DBGrids, StdCtrls, AEDIT, DB, DBTables,
  bsMessages, BusinessSkinForm, ComCtrls, ExtCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFbillkoreksi = class(TForm)
    DataSource1: TDataSource;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    grpRoom: TPanel;
    Label2: TLabel;
    chktanggal: TCheckBox;
    tgl_mulai: TDateTimePicker;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    btncari: TbsSkinXFormButton;
    DBGrid1: TDBGrid;
    btnkeluar: TbsSkinButton;
    Panel1: TPanel;
    btnsimpan: TbsSkinButton;
    cboKategori: TComboBox;
    Label4: TLabel;
    edtKeterangan: TEdit;
    Label5: TLabel;
    edtInvoice: TAEdit;
    edtNama: TEdit;
    Label3: TLabel;
    Qcari: TZQuery;
    Qcariidorder: TStringField;
    Qcarinama: TStringField;
    Qcariroom: TFloatField;
    Qcarimenu: TFloatField;
    Qcaridll: TFloatField;
    Qcarinamaroom: TStringField;
    Qcaritanggal: TDateTimeField;
    Qcaridisroom: TFloatField;
    Qcaridismenu: TFloatField;
    Qcaridisdll: TFloatField;
    QcariCalRoom: TFloatField;
    QcariCalMenu: TFloatField;
    QcariCalDll: TFloatField;
    Qcaritotal: TFloatField;
    Qcariidroom: TSmallintField;
    Qcaritax: TFloatField;
    Qcariservice: TFloatField;
    Qcaridiscmember: TFloatField;
    Qcariinvoice: TStringField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtInvoiceExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkeluarClick(Sender: TObject);
    procedure edtInvoiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnsimpanClick(Sender: TObject);
    procedure QcariCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure chktanggalClick(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure QcariAfterScroll(DataSet: TDataSet);
    procedure edtInvoiceChange(Sender: TObject);
    procedure edtInvoiceEnter(Sender: TObject);
    procedure edtNamaChange(Sender: TObject);
    procedure edtNamaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtKeteranganKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    pvterus  : boolean;
  public
    { Public declarations }
  end;

var
  Fbillkoreksi: TFbillkoreksi;

implementation

Uses Unit3, UntBill, Unit1;

{$R *.dfm}

procedure TFbillkoreksi.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure TFbillkoreksi.edtInvoiceExit(Sender: TObject);
begin
  edtInvoice.Text := Qcari.FieldByName('invoice').AsString;
  edtNama.Text := Qcari.FieldByName('nama').AsString;
end;

procedure TFbillkoreksi.FormClose(Sender: TObject;
var
  Action: TCloseAction);
begin

  Action := caFree;
  FrmInduk.pbbillcor := False;

  if FrmInduk.pbbill then Fbill.Enabled := True;
end;

procedure TFbillkoreksi.btnkeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFbillkoreksi.edtInvoiceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    pvterus := True;
    Qcari.Next;
    edtInvoice.Text := Qcari.FieldByName('invoice').AsString;
    edtNama.Text := Qcari.FieldByName('nama').AsString;
    pvterus := False;
    edtInvoice.SelectAll;
  end;

  if key = vk_up then
  begin
    pvterus := True;
    Qcari.Prior;
    edtInvoice.Text := Qcari.FieldByName('invoice').AsString;
    edtNama.Text := Qcari.FieldByName('nama').AsString;
    pvterus := False;
    edtInvoice.SelectAll;
  end;

  if key = VK_RETURN	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFbillkoreksi.btnsimpanClick(Sender: TObject);
var id, idroom, durasi   : integer;
    ids, vidorder2 : string;
    totroom, totmenu, totdll : Real;
    tglstart : TDateTime;
    Qasal: TZQuery;
    Qothers: TZQuery;
    Query1: TZQuery;
    Qupdate: TZQuery;
begin

  Qasal := TZQuery.Create(self);
  Qasal.Connection := modul.Database1;

  Qothers := TZQuery.Create(self);
  Qothers.Connection := modul.Database1;

  Query1 := TZQuery.Create(self);
  Query1.Connection := modul.Database1;

  Qupdate := TZQuery.Create(self);
  Qupdate.Connection := modul.Database1;

  if Qcari.FieldByName('idorder').AsString = '' then exit;
  if edtKeterangan.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('    Data Tidak Lengkap   !!!    ', mtError,[mbOK], 0);
    edtKeterangan.SetFocus;
    exit;
  End;

  if  not(bsSkinMessage1.MessageDlg('     Koreksi Invoice No '+ Qcari.FieldByName('invoice').AsString +'       '  , mtConfirmation, [mbYes, mbNo], 0) = mrYes) then exit;

  Qothers.Active := False;
  Qothers.SQL.Text := ' SELECT     chekin '+
                      ' FROM         troom ' +
                      ' WHERE     (id = '+ FormatFloat('0',Qcari.FieldByName('idroom').AsInteger) +' )';
  Qothers.Active := True;
  if (Qothers.FieldByName('chekin').AsBoolean) then
  begin
    bsSkinMessage1.MessageDlg(' Room sedang terpakai ' ,mtError, [mbOK],0);
    Exit;
  end;

  FrmInduk.logActivity('Koreksi - ' + Qcari.FieldByName('idorder').AsString);
modul.log('TFbillkoreksi.btnsimpanClick 1:');

  if Qcari.FieldByName('idroom').AsInteger = 0 then
  begin
    //CASH ORDER DI CANCEL
    Qupdate.Active := False;
    Qupdate.SQL.Text :='UPDATE    tpayment ' +
                       'SET                payment = 4 '+
                       ' , kasir = ' + QuotedStr( FrmInduk.pbidkasir) +
                       ' WHERE     (idorder = '+ QuotedStr(Qcari.FieldByName('idorder').AsString) +
                       ')';
modul.log('TFbillkoreksi.btnsimpanClick 2: ' + Qupdate.SQL.Text);
    Qupdate.ExecSQL;
    Close;
    Exit;
  end
  else
  begin
    Qupdate.Active := False;
    Qupdate.SQL.Text :='UPDATE    tpayment ' +
                       'SET                payment = 5 '+
                       ' , kasir = ' + QuotedStr( FrmInduk.pbidkasir) +
                       ' , keterangan = ' + QuotedStr( edtKeterangan.Text) +
                       ' WHERE     (idorder = '+ QuotedStr(Qcari.FieldByName('idorder').AsString) +
                       ')';
modul.log('TFbillkoreksi.btnsimpanClick 3: ' + Qupdate.SQL.Text);
    Qupdate.ExecSQL;

    //edit payment tbayar
    Query1.Active := False;
    Query1.SQL.Text :=  'SELECT     idorder2 '+
                       'FROM         tpayment '+
                       'WHERE     (idorder = '+ QuotedStr(Qcari.FieldByName('idorder').AsString) +')';
modul.log('TFbillkoreksi.btnsimpanClick 4: ' + Query1.SQL.Text);
    Query1.Active := True;
    vidorder2 := Query1.FieldbyName('idorder2').AsString;
modul.log('TFbillkoreksi.btnsimpanClick 5:');

    Query1.Active := False;
    Query1.SQL.Text := ' UPDATE    tbayar ' +
                      '  SET payment = 5  ' +
                      ' where idorder = ' + QuotedStr(vidorder2) ;
modul.log('TFbillkoreksi.btnsimpanClick 6: ' + Query1.SQL.Text);
    Query1.ExecSQL;
  end;
modul.log('TFbillkoreksi.btnsimpanClick 7:');

  Qothers.Active := False;
  Qothers.SQL.Text := ' SELECT     MAX(RIGHT(idorder, 4)) AS id  ' +
                         ' FROM         tpayment ' +
                         ' WHERE     (idorder LIKE ' + QuotedStr(FormatDateTime('yyMMdd',Now)+'%')+')';
modul.log('TFbillkoreksi.btnsimpanClick 8: ' + Qothers.SQL.Text);
  Qothers.Active := True;
  try
    id := StrToInt(Qothers.FieldByName('id').Value);
  except
    id :=0;
  end;
  id := id+1;
  ids := FormatDateTime('yyMMdd',Now) + FormatFloat('0000',id);
modul.log('TFbillkoreksi.btnsimpanClick 9:');

  Qupdate.Active := False;

    Qupdate.SQL.Text := ' INSERT INTO tpayment ' +
                        '  (idorder, tanggal) '+
                        ' VALUES      (:idorder, :tanggal)';
//    Qupdate.Prepare;
      Qupdate.Params[0].AsString := ids;
      Qupdate.Params[1].AsDateTime := Qcari.FieldByName('tanggal').AsDateTime;
modul.log('TFbillkoreksi.btnsimpanClick 10: ' + Qupdate.SQL.Text);
    Qupdate.ExecSQL;

  //Menu
  Qasal.Active := False;
  Qasal.SQL.Text := ' SELECT     idorder, idmenu, harga_asli, diskon, qty, cs, idso  ' +
                     ' FROM         torder_menu '+
                     ' WHERE     (idorder = '+QuotedStr(Qcari.FieldByName('idorder').AsString)+')and (status=1) ';
modul.log('TFbillkoreksi.btnsimpanClick 11: ' + Qasal.SQL.Text);
  Qasal.Active := True;
modul.log('TFbillkoreksi.btnsimpanClick 12:');

  Qasal.First;
  while not(Qasal.Eof) do
  begin
        Qupdate.Active := False;
        Qupdate.SQL.Text := ' INSERT INTO torder_menu ' +
                            ' (idorder, idmenu, harga_asli, diskon, qty, cs, status,idso) ' +
                            ' VALUES     (:idorder, :idmenu, :harga_asli, :diskon, :qty, :cs, :status, :idso) ';
//        Qupdate.Prepare;
        Qupdate.Params[0].AsString := ids;
        Qupdate.Params[1].AsString := Qasal.Fields[1].AsString;
        Qupdate.Params[2].AsFloat := Qasal.Fields[2].AsFloat;
        Qupdate.Params[3].AsFloat := Qasal.Fields[3].AsFloat ;
        Qupdate.Params[4].AsInteger := Qasal.Fields[4].AsInteger ;
        Qupdate.Params[5].AsString := Qasal.Fields[5].AsString;
        Qupdate.Params[6].AsInteger  := 1;
        Qupdate.Params[7].AsString := Qasal.Fields[6].AsString;
modul.log('TFbillkoreksi.btnsimpanClick 13: ' + Qupdate.SQL.Text);
        Qupdate.ExecSQL;

    Qasal.Next;
  end;
modul.log('TFbillkoreksi.btnsimpanClick 14:');

  //OTHERS
  Qasal.Active := False;
  Qasal.SQL.Text :=  ' SELECT        idorder, jumlah, harga, keterangan, cs  ' +
                     ' FROM          torder_dll '+
                     ' WHERE         (idorder = ' + QuotedStr(Qcari.FieldByName('idorder').AsString)+') ';
modul.log('TFbillkoreksi.btnsimpanClick 15: ' + Qasal.SQL.Text);
  Qasal.Active := True;
modul.log('TFbillkoreksi.btnsimpanClick 16:');
  Qasal.First;
  while not(Qasal.Eof) do
  begin
    Qupdate.SQL.Text := ' INSERT INTO torder_dll '+
                        ' (idorder, jumlah, harga, keterangan, cs) '+
                        ' VALUES     (:idorder, :jumlah, :harga, :keterangan, :cs)';
//    Qupdate.Prepare;
      Qupdate.Params[0].AsString := ids;
      Qupdate.Params[1].AsInteger := Qasal.Fields[1].AsInteger;
      Qupdate.Params[2].AsFloat := Qasal.Fields[2].AsFloat;
      Qupdate.Params[3].AsString := Qasal.Fields[3].AsString;
      Qupdate.Params[4].AsString := Qasal.Fields[4].AsString;
modul.log('TFbillkoreksi.btnsimpanClick 17: ' + Qupdate.SQL.Text);
    Qupdate.ExecSQL;
    Qasal.Next;
  end;
modul.log('TFbillkoreksi.btnsimpanClick 18:');

  //Room order
  Qasal.Active := False;
  Qasal.SQL.Text := ' SELECT       idorder, idroom, harga_asli, diskon, durasi, tglStart, tglStop  ' +
                     ' FROM        torder_room '+
                     ' WHERE       (idorder = '+QuotedStr(Qcari.FieldByName('idorder').AsString)+') '+
                     ' ORDER BY tglstart';
modul.log('TFbillkoreksi.btnsimpanClick 19: ' + Qasal.SQL.Text);
  Qasal.Active := True;
  Qasal.First;
  while not(Qasal.Eof) do
  begin
    Qupdate.SQL.Text := ' INSERT INTO torder_room '+
                        ' (idorder, idroom, harga_asli, diskon, durasi, tglStart, tglStop) '+
                        ' VALUES     (:idorder, :idroom, :harga_asli, :diskon, :durasi, :tglStart, :tglStop)';
//    Qupdate.Prepare;
      Qupdate.Params[0].AsString := ids;
      Qupdate.Params[1].AsInteger := Qasal.Fields[1].AsInteger;
      Qupdate.Params[2].AsFloat := Qasal.Fields[2].AsFloat;
      Qupdate.Params[3].AsFloat := Qasal.Fields[3].AsFloat;
      Qupdate.Params[4].AsInteger := Qasal.Fields[4].AsInteger;
      Qupdate.Params[5].AsDateTime := Qasal.Fields[5].AsDateTime;
      Qupdate.Params[6].AsDateTime := Qasal.Fields[6].AsDateTime;
modul.log('TFbillkoreksi.btnsimpanClick 20: ' + Qupdate.SQL.Text);
    Qupdate.ExecSQL;
    Qasal.Next;
  end;
modul.log('TFbillkoreksi.btnsimpanClick 21:');
  idroom := Qasal.FieldByName('idroom').AsInteger;
  tglstart := Qasal.FieldByName('tglStart').AsDateTime;
  durasi := Qasal.FieldByName('durasi').AsInteger;
modul.log('TFbillkoreksi.btnsimpanClick 22:');


     //hitung total menu
    Qasal.Active := False;
    Qasal.SQL.Text :=  ' SELECT     SUM((harga_asli - diskon) * qty) AS total  ' +
                       ' FROM         torder_menu '+
                       ' WHERE     (idorder = '+QuotedStr(Qcari.FieldByName('idorder').AsString)+') and (status=1) ' +
                       ' GROUP BY idorder ';
modul.log('TFbillkoreksi.btnsimpanClick 23: ' + Qasal.SQL.Text);
    Qasal.Active := True;
    totmenu := Qasal.FieldByName('total').AsCurrency ;
modul.log('TFbillkoreksi.btnsimpanClick 24:');

    //hitung total others
    Qasal.Active := False;
    Qasal.SQL.Text :=  ' SELECT     SUM(harga * jumlah) AS total  ' +
                       ' FROM         torder_dll '+
                       ' WHERE     (idorder = '+QuotedStr(Qcari.FieldByName('idorder').AsString)+') ' +
                       ' GROUP BY idorder ';
modul.log('TFbillkoreksi.btnsimpanClick 25: ' + Qasal.SQL.Text);
    Qasal.Active := True;
    totdll := Qasal.FieldByName('total').AsFloat;
modul.log('TFbillkoreksi.btnsimpanClick 26:');

    //hitung total room
    Qasal.Active := False;
    Qasal.SQL.Text :=  ' SELECT     SUM(harga_asli * durasi - diskon ) AS total  ' +
                       ' FROM         torder_room '+
                       ' WHERE     (idorder = '+QuotedStr(Qcari.FieldByName('idorder').AsString)+') ' +
                       ' GROUP BY idorder ';
modul.log('TFbillkoreksi.btnsimpanClick 27: ' + Qasal.SQL.Text);
    Qasal.Active := True;
    totroom := Qasal.FieldByName('total').AsFloat;
modul.log('TFbillkoreksi.btnsimpanClick 28:');

   //TROOM
  Qupdate.SQL.Text := 'UPDATE    troom '+
                             ' SET       status = 1 ' +
                                       ' ,chekin = 1 ' +
                                       ' , waktu = ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ',  tglstart ))+
                                       ' , idorder = ' + QuotedStr(ids) +
                                       ' , durasi = ' + IntToStr(durasi) +
                                       ' , nama = ' + QuotedStr(Qcari.FieldByName('nama').AsString) +
                                       ' , roomcharge = ' + FormatFloat('0', totroom) +
                                       ' , menucharge = ' + FormatFloat('0', totmenu) +
                                       ' , othercharge = ' + FormatFloat('0', totdll) +
                                       ' , corection = '+ BoolToStr(False)+
                                       ' , tambahjam = 0' +
                            ' WHERE     (id = ' + IntToStr(idroom) +
                            ' ) ';
modul.log('TFbillkoreksi.btnsimpanClick 29: ' + Qupdate.SQL.Text);
  Qupdate.ExecSQL;
modul.log('TFbillkoreksi.btnsimpanClick 30:');

  Close;
end;

procedure TFbillkoreksi.QcariCalcFields(DataSet: TDataSet);
begin
  QcaricalRoom.Value := Qcariroom.Value - Qcaridisroom.Value;
  QcaricalMenu.Value := Qcarimenu.Value - Qcaridismenu.Value;
  QcaricalDll.Value := Qcaridll.Value - Qcaridisdll.Value;
  Qcaritotal.AsFloat := (Qcariroom.Value - Qcaridisroom.Value) +
                             (Qcarimenu.Value - Qcaridismenu.Value)+
                             (Qcaridll.Value - Qcaridisdll.Value)+
                             Qcaritax.Value + Qcariservice.Value - Qcaridiscmember.Value   ;
end;

procedure TFbillkoreksi.FormCreate(Sender: TObject);
begin

  Qcari := TZQuery.Create(self);
  Qcari.Connection := modul.Database1;
  DataSource1.DataSet := Qcari;

  if modul.getCorrectionBalance() < 1 then
  begin
    bsSkinMessage1.MessageDlg('Batas correction sudah habis', mtError,[mbOK], 0);
    Close();
  end
  else
  begin
    if FrmInduk.pbbill then Fbill.Enabled := False;

    FrmInduk.pbbillcor := True;
    tgl_mulai.DateTime := now;
    Tgl_akhir.DateTime := now + 1;
    chktanggal.Checked := True;
    chktanggalClick(sender);
    btncariClick(sender);
    Qcari.Active := True;

    FrmInduk.activityLogin := FrmInduk.pbidkasir;
    FrmInduk.activityName := FrmInduk.pbnamakasir;
  end;

end;

procedure TFbillkoreksi.DBGrid1DblClick(Sender: TObject);
begin
  edtKeterangan.SetFocus;
end;

procedure TFbillkoreksi.chktanggalClick(Sender: TObject);
begin
  if not(chktanggal.Checked) then
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

procedure TFbillkoreksi.btncariClick(Sender: TObject);
var sqlfilter, sqlfilter1 : string;
begin

   Qcari.Active := False;
   Qcari.SQL.Text := 'SELECT     tpayment.idorder, tpayment.idroom, tpayment.tglstop AS tanggal, tpayment.nama, tpayment.disroom, tpayment.dismenu, tpayment.disdll, '+
                     ' troom.namaroom AS namaroom, tpayment.tax, tpayment.service, tpayment.croom AS room, tpayment.cmenu AS menu, tpayment.cother AS dll, tpayment.discmember, tpayment.invoice '+
                     ' FROM         tpayment LEFT OUTER JOIN ' +
                     ' troom ON tpayment.idroom = troom.id ';
   sqlfilter1 :=  ' WHERE     (tpayment.payment   IS NOT NULL) AND (tpayment.payment <> 5) AND (tpayment.payment <> 4) ';
   sqlfilter := ' GROUP BY tpayment.idorder, tpayment.nama, troom.namaroom, tpayment.disroom, tpayment.dismenu, tpayment.disdll, tpayment.tglstop, tpayment.idroom, '+
                ' tpayment.tax, tpayment.service, tpayment.croom, tpayment.cmenu, tpayment.cother, tpayment.discmember, tpayment.invoice ' +
                ' ORDER BY tpayment.invoice DESC ';
  if chktanggal.Checked then
  begin
    sqlfilter1 := sqlfilter1 + ' and ((tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +
                               ' and (tglstop <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
  end;


 Qcari.SQL.Text := Qcari.SQL.Text + sqlfilter1 + sqlfilter;
 Qcari.Active := True;


end;

procedure TFbillkoreksi.QcariAfterScroll(DataSet: TDataSet);
begin
  if (edtInvoice.Focused) or (edtNama.Focused) then exit;
  edtInvoice.Text := Qcari.FieldByName('invoice').AsString;
  edtNama.Text := Qcari.FieldByName('nama').AsString;
  
end;

procedure TFbillkoreksi.edtInvoiceChange(Sender: TObject);
begin
  if pvterus then Exit;

  Qcari.Locate('invoice', edtInvoice.Text, [loPartialKey, loCaseInsensitive]);
  edtNama.Text := Qcari.FieldByName('nama').AsString;
end;

procedure TFbillkoreksi.edtInvoiceEnter(Sender: TObject);
begin
  edtInvoice.SelectAll;
end;

procedure TFbillkoreksi.edtNamaChange(Sender: TObject);
begin
  if pvterus then Exit;
end;

procedure TFbillkoreksi.edtNamaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFbillkoreksi.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFbillkoreksi.edtKeteranganKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

end.
