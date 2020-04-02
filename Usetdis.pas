unit Usetdis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, Spin, ExtCtrls,
  bsSkinCtrls, bsMessages, AEDIT, BusinessSkinForm, ZDataset,
  ZAbstractRODataset, ZAbstractDataset;

type
  TFSetupDisc = class(TForm)
    DSDisc: TDataSource;
    btnSave: TbsSkinButton;
    btnClose: TbsSkinButton;
    btnCancel: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btnAdd: TbsSkinButton;
    btnEdit: TbsSkinButton;
    btnDelete: TbsSkinButton;
    bsSkinPanel7: TbsSkinPanel;
    dbKategoriRoom: TDBGrid;
    btnRoomAdd: TbsSkinButton;
    btnRoomEdit: TbsSkinButton;
    btnRoomDelete: TbsSkinButton;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    tgl_awal: TDateTimePicker;
    tgl_akhir: TDateTimePicker;
    Label5: TLabel;
    Label4: TLabel;
    waktuawal: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    Label1: TLabel;
    chkSun: TbsSkinCheckRadioBox;
    chkMon: TbsSkinCheckRadioBox;
    chkTue: TbsSkinCheckRadioBox;
    chkWed: TbsSkinCheckRadioBox;
    chkThu: TbsSkinCheckRadioBox;
    chkFri: TbsSkinCheckRadioBox;
    chkSat: TbsSkinCheckRadioBox;
    Label7: TLabel;
    Label9: TLabel;
    spnDiscMenu: TSpinEdit;
    Label10: TLabel;
    Label11: TLabel;
    dbPromo: TDBGrid;
    dbJointPromo: TDBGrid;
    Label12: TLabel;
    bsSkinButton1: TbsSkinButton;
    edtID: TEdit;
    edtPromo: TEdit;
    dsRoomDisc: TDataSource;
    chkAktif: TbsSkinCheckRadioBox;
    bsSkinPanel6: TbsSkinPanel;
    dsJointPromo: TDataSource;
    cmbAuto: TComboBox;
    Label8: TLabel;
    spnFreeRoom: TSpinEdit;
    Label13: TLabel;
    edtDiscountRoomNominal: TAEdit;
    Label14: TLabel;
    qJointPromo: TZQuery;
    qJointPromoidpromo1: TStringField;
    qJointPromoidpromo2: TStringField;
    qJointPromostatus: TSmallintField;
    qJointPromocalStatus: TStringField;
    qPromo: TZQuery;
    qPromoid: TStringField;
    qPromopromo: TStringField;
    qPromotglAwal: TDateTimeField;
    qPromotglAkhir: TDateTimeField;
    qPromotimeAwal: TDateTimeField;
    qPromotimeAkhir: TDateTimeField;
    qPromodiscMenu: TIntegerField;
    qPromosun: TStringField;
    qPromomon: TStringField;
    qPromotue: TStringField;
    qPromowed: TStringField;
    qPromothu: TStringField;
    qPromofri: TStringField;
    qPromosat: TStringField;
    qPromoactive: TStringField;
    qPromofreeroom: TSmallintField;
    qPromofreeroomnominal: TFloatField;
    qRoomDisc: TZQuery;
    qRoomDisciddisc: TStringField;
    qRoomDiscdiskon: TFloatField;
    qRoomDisckategori: TStringField;
    qRoomDischarga: TFloatField;
    qRoomDisccalHarga: TFloatField;
    qRoomDiscidroom: TSmallintField;
    procedure buka;
    procedure tutup;
    procedure btnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qPromoAfterScroll(DataSet: TDataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure dbPromoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnRoomAddClick(Sender: TObject);
    procedure qRoomDiscCalcFields(DataSet: TDataSet);
    procedure btnRoomEditClick(Sender: TObject);
    procedure btnRoomDeleteClick(Sender: TObject);
    procedure dbKategoriRoomDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure qJointPromoCalcFields(DataSet: TDataSet);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbAutoClick(Sender: TObject);
    procedure edtDiscountRoomNominalEnter(Sender: TObject);
    procedure edtDiscountRoomNominalExit(Sender: TObject);
    procedure edtPromoKeyPress(Sender: TObject; var Key: Char);
    procedure edtDiscountRoomNominalKeyPress(Sender: TObject;
      var Key: Char);
  private
    vpTambah : Boolean;
    vpFreeRoomNominal : Real;
  public

  end;

var
  FSetupDisc: TFSetupDisc;

implementation
     uses Unit1, strutils, Unit3, DateUtils, Uinputdiskon, Udiskonroom;
{$R *.dfm}


procedure TFSetupDisc.buka;
begin
  cmbAuto.Enabled := False;
  btnAdd.Visible := False;
  btnEdit.Visible := False;
  btnDelete.Visible := False;
  btnSave.Visible := True;
  btnCancel.Visible := True;
  edtPromo.ReadOnly := False;
  dbPromo.Enabled := False;
  if vpTambah then
  begin
    qRoomDisc.Active := False;
    chkAktif.Checked := True;
    edtID.Text := '';
    edtPromo.Text := '';
    chkSun.Checked := True;
    chkMon.Checked := True;
    chkTue.Checked := True;
    chkWed.Checked := True;
    chkThu.Checked := True;
    chkFri.Checked := True;
    chkSat.Checked := True;
    tgl_awal.Date := Date;
    tgl_akhir.Date := Date;
    waktuawal.DateTime := EncodeDateTime(1900,1,1,10,0,0,0);
    waktuakhir.DateTime :=  EncodeDateTime(1900,1,1,18,0,0,0);
    spnDiscMenu.Value := 0;
    spnFreeRoom.Value := 0;
    edtDiscountRoomNominal.Text := FormatFloat('#,0', vpFreeRoomNominal);
    btnRoomAdd.Visible := False;
    btnRoomEdit.Visible := False;
    btnRoomDelete.Visible := False
  end;
end;

procedure TFSetupDisc.tutup;
begin
  cmbAuto.Enabled := True;
  btnAdd.Visible := True;
  btnEdit.Visible := True;
  btnDelete.Visible := True;
  btnSave.Visible := False;
  btnCancel.Visible := False;
  edtPromo.ReadOnly := True;
  dbPromo.Enabled := True;
  btnRoomAdd.Visible := True;
  btnRoomEdit.Visible := True;
  btnRoomDelete.Visible := True;

  vpTambah := False;
end;

procedure TFSetupDisc.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFSetupDisc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.pbSetupDiscount := False;
  Action := caFree;
end;

procedure TFSetupDisc.qPromoAfterScroll(DataSet: TDataSet);
begin
  edtID.Text := qPromo.FieldByName('id').AsString;
  chkAktif.Checked := modul.StrToBool(qPromo.FieldByName('active').AsString);
  edtPromo.Text := qPromo.FieldByName('promo').AsString;
  tgl_awal.Date := qPromo.FieldByName('tglAwal').AsDateTime;
  tgl_akhir.Date := qPromo.FieldByName('tglAkhir').AsDateTime;
  waktuawal.DateTime := qPromo.FieldByName('timeAwal').AsDateTime;
  waktuakhir.DateTime := qPromo.FieldByName('timeAkhir').AsDateTime;
  spnDiscMenu.Value := qPromo.FieldByName('discMenu').AsInteger;
  spnFreeRoom.Value := qPromo.FieldByName('freeroom').AsInteger;
  chkSun.Checked := modul.StrToBool(qPromo.FieldByName('sun').AsString);
  chkMon.Checked := modul.StrToBool(qPromo.FieldByName('mon').AsString);
  chkTue.Checked := modul.StrToBool(qPromo.FieldByName('tue').AsString);
  chkWed.Checked := modul.StrToBool(qPromo.FieldByName('wed').AsString);
  chkThu.Checked := modul.StrToBool(qPromo.FieldByName('thu').AsString);
  chkFri.Checked := modul.StrToBool(qPromo.FieldByName('fri').AsString);
  chkSat.Checked := modul.StrToBool(qPromo.FieldByName('sat').AsString);
  vpFreeRoomNominal := qPromo.FieldByName('freeroomnominal').AsFloat;
  edtDiscountRoomNominal.Text := FormatFloat('#,0', vpFreeRoomNominal);

  qRoomDisc.Active := False;
  qRoomDisc.SQL.Text := ' SELECT     Tdiskonroom.iddisc, Tdiskonroom.diskon, tkategoriroom.kategori, tkategoriroom.harga, Tdiskonroom.idroom '+
                        ' FROM         Tdiskonroom INNER JOIN '+
                        ' tkategoriroom ON Tdiskonroom.idroom = tkategoriroom.id '+
                        ' WHERE     (Tdiskonroom.iddisc = '+QuotedStr(qPromoid.AsString)+')';
  qRoomDisc.Active := True;

  qJointPromo.Active := False;
  qJointPromo.SQL.Text := ' SELECT      idpromo1, idpromo2, status '+
                          ' FROM         Tpromo ' +
                          ' WHERE       (idpromo1 = ' + QuotedStr(qPromoid.AsString) + ') OR '+
                                       '(idpromo2 = ' + QuotedStr(qPromoid.AsString) +
                          ')';
  qJointPromo.Active := True;
end;

procedure TFSetupDisc.btnAddClick(Sender: TObject);
begin
  if cmbAuto.ItemIndex = 0 then
  begin
    bsSkinMessage1.MessageDlg('  Please select  Automatic discount or Promo   ', mtInformation, [mbOK],0);
    cmbAuto.SetFocus;
    exit;
  end;

  vpTambah := True;
  vpFreeRoomNominal := 0;
  buka;
  edtPromo.SetFocus;
end;

procedure TFSetupDisc.btnEditClick(Sender: TObject);
begin
  if qPromo.RecordCount = 0 then Exit;
  vpTambah := False;
  buka;
end;

procedure TFSetupDisc.btnSaveClick(Sender: TObject);
var qUpdate, qJoinPromo : TZQuery;
    id      : Integer;
    ids     : string;
    otomatis : boolean;
begin
  if edtPromo.Text = '' then
  begin
    edtPromo.SetFocus;
    exit;
  end;
  if (tgl_awal.Date > tgl_akhir.Date) then
  begin
    bsSkinMessage1.MessageDlg('     Invalid date      ', mtWarning, [mbOK],0);
    tgl_akhir.SetFocus;
    exit;
  end;
  if  (waktuawal.Time > waktuakhir.Time) and (tgl_awal.Date = tgl_akhir.Date) then
  begin
    bsSkinMessage1.MessageDlg('     Invalid date time      ', mtWarning, [mbOK],0);
    waktuakhir.SetFocus;
    exit;
  end;
  if  (waktuawal.Time > waktuakhir.Time) and (waktuakhir.Time > EncodeDateTime(1900,1,1,8,0,0,0)) then
  begin
    bsSkinMessage1.MessageDlg('     Invalid time      ', mtWarning, [mbOK],0);
    waktuakhir.SetFocus;
    exit;
  end;
  if (waktuawal.Time = waktuakhir.Time) then
  begin
    bsSkinMessage1.MessageDlg('     Invalid time      ', mtWarning, [mbOK],0);
    waktuakhir.SetFocus;
    exit;
  end;

  if (chkSun.Checked=False) and (chkMon.Checked=False) and
     (chkTue.Checked=False) and (chkWed.Checked=False) and
     (chkThu.Checked=False) and (chkFri.Checked=False) and
     (chkSat.Checked=False) then
  begin
    chkSun.SetFocus;
    bsSkinMessage1.MessageDlg('     at least one day in a week      ', mtWarning, [mbOK],0);
    exit;
  end;

  qUpdate := TZQuery.Create(Self);
  qUpdate.Connection := modul.Database1;
  qJoinPromo := TZQuery.Create(Self);
  qJoinPromo.Connection := modul.Database1;

  qUpdate.Active := False;
  qUpdate.SQL.Text := ' SELECT     MAX(RIGHT(id, 4)) AS id  ' +
                         ' FROM         tdisc ';
  qUpdate.Active := True;
  try
    id := StrToInt(qUpdate.FieldByName('id').Value);
  except
    id :=0;
  end;
  id := id+1;
  ids := 'DP' + FormatFloat('0000',id);

  if vpTambah then
  begin
    qJoinPromo.SQL.Text := 'SELECT     id, tglAwal, tglAkhir ' +
                        'FROM         tdisc '+
                        'WHERE  not(((tglAwal < ' + QuotedStr(FormatDateTime('yyyy-MM-dd',tgl_awal.Date)) + ') AND '+
                        '           (tglAkhir < '+ QuotedStr(FormatDateTime('yyyy-MM-dd',tgl_awal.Date)) + ')) OR '+
                        '          ((tglAwal > ' + QuotedStr(FormatDateTime('yyyy-MM-dd',tgl_akhir.Date)) + ') AND '+
                        '           (tglAkhir > '+ QuotedStr(FormatDateTime('yyyy-MM-dd',tgl_akhir.Date)) + ')))';
    qJoinPromo.Active := True;

    qJoinPromo.First;
    qUpdate.Active := False;
    while not(qJoinPromo.Eof) do
    begin
      qUpdate.SQL.Text := ' INSERT INTO Tpromo ' +
                          ' (idpromo2, idpromo1, status) '+
                          ' VALUES     (' + QuotedStr(ids)+', '+
                                            QuotedStr(qJoinPromo.FieldByName('id').AsString) + ', '+
                                        '  3)';
      qUpdate.ExecSQL;
      qJoinPromo.Next;
    end;

    if cmbAuto.ItemIndex = 1 then
      otomatis := True
    else
      otomatis := False;

    qUpdate.SQL.Text := ' INSERT INTO tdisc '+
                        ' (id, promo, tglAwal, tglAkhir, timeAwal, timeAkhir, discMenu, freeroom, sun, mon, tue, wed, thu, fri, sat, active, otomatis, freeroomnominal) '+
                        ' VALUES     ( ' + QuotedStr(ids) +', ' +
                                      QuotedStr(edtPromo.Text) + ', '+
                                      QuotedStr(FormatDateTime('yyyy-MM-dd 00:00:00', tgl_awal.DateTime )) +', '+
                                      QuotedStr(FormatDateTime('yyyy-MM-dd 00:00:00', tgl_akhir.DateTime )) +', '+
                                      QuotedStr(FormatDateTime('1900-01-01 HH:mm:00', waktuawal.DateTime )) +', '+
                                      QuotedStr(FormatDateTime('1900-01-01 HH:mm:00', waktuakhir.DateTime )) +', '+
                                      spnDiscMenu.Text + ', '+
                                      spnFreeRoom.Text + ', '+
                                      modul.BoolToStr2(chkSun.Checked) +', '+
                                      modul.BoolToStr2(chkMon.Checked) +', '+
                                      modul.BoolToStr2(chkTue.Checked) +', '+
                                      modul.BoolToStr2(chkWed.Checked) +', '+
                                      modul.BoolToStr2(chkThu.Checked) +', '+
                                      modul.BoolToStr2(chkFri.Checked) +', '+
                                      modul.BoolToStr2(chkSat.Checked) +', '+
                                      modul.BoolToStr2(chkAktif.Checked) +', '+
                                      modul.BoolToStr2(otomatis) +', '+
                                      FloatToStr(vpFreeRoomNominal) +
                                      ')';
    qUpdate.ExecSQL;
    qPromo.Active := False;
    qPromo.Active := True;
    qPromo.Locate('id', ids,[loCaseInsensitive, loPartialKey])
  end
  else
  begin
    qUpdate.Active := False;
    qUpdate.SQL.Text := 'UPDATE    tdisc '+
                        'SET        promo = '+ QuotedStr(edtPromo.Text) + ' ,' +
                        ' tglAwal = ' + QuotedStr(FormatDateTime('yyyy-MM-dd 00:00:00', tgl_awal.DateTime )) +', '+
                        ' tglAkhir = '+ QuotedStr(FormatDateTime('yyyy-MM-dd 00:00:00', tgl_akhir.DateTime )) +', '+
                        ' timeAwal = '+ QuotedStr(FormatDateTime('1900-01-01 HH:mm:00', waktuawal.DateTime )) +', '+
                        ' timeAkhir = '+ QuotedStr(FormatDateTime('1900-01-01 HH:mm:00', waktuakhir.DateTime )) +', '+
                        ' discMenu = '+ spnDiscMenu.Text + ', '+
                        ' freeroom = '+ spnFreeRoom.Text + ', '+
                        ' sun = ' + modul.BoolToStr2(chkSun.Checked) +', '+
                        ' mon = ' + modul.BoolToStr2(chkMon.Checked) +', '+
                        ' tue = ' + modul.BoolToStr2(chkTue.Checked) +', '+
                        ' wed = ' + modul.BoolToStr2(chkWed.Checked) +', '+
                        ' thu = ' + modul.BoolToStr2(chkThu.Checked) +', '+
                        ' fri = ' + modul.BoolToStr2(chkFri.Checked) +', '+
                        ' sat = ' + modul.BoolToStr2(chkSat.Checked) +', '+
                        ' active = ' + modul.BoolToStr2(chkAktif.Checked) +', '+
                        ' freeroomnominal = ' + FloatToStr(vpFreeRoomNominal) +
                        ' WHERE    id = ' + QuotedStr(qPromoid.AsString);
    qUpdate.ExecSQL;
    ids := qPromoid.AsString;
    qPromo.Active := False;
    qPromo.Active := True;
    qPromo.Locate('id', ids,[loCaseInsensitive, loPartialKey]);
  end;
  qUpdate.Destroy;
  qJoinPromo.Destroy;
  tutup;
end;

procedure TFSetupDisc.btnCancelClick(Sender: TObject);
begin
  tutup;
  qPromoAfterScroll(qPromo);
end;

procedure TFSetupDisc.dbPromoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := $00FF6833;
     FillRect(Rect);
     Font.Color:= clBlack;
     Font.Style := [fsBold];
     end;
     end;
    dbPromo.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFSetupDisc.btnRoomAddClick(Sender: TObject);
begin
  if qPromo.RecordCount = 0 then exit;
  if vpTambah then exit;
  Application.CreateForm(TFinputdiskon, Finputdiskon);
  FrmInduk.Enabled := False;
  FSetupDisc.Enabled := False;
  Finputdiskon.pbtambah := True;
  Finputdiskon.ComboBox1Click(sender);
  Finputdiskon.ComboBox1.SetFocus;
end;

procedure TFSetupDisc.qRoomDiscCalcFields(DataSet: TDataSet);
begin
 qRoomDisccalHarga.Value := qRoomDischarga.AsFloat - qRoomDiscdiskon.AsFloat;
end;

procedure TFSetupDisc.btnRoomEditClick(Sender: TObject);
begin
  if vpTambah then exit;
  if qRoomDisc.RecordCount = 0 then Exit;
  Application.CreateForm(TFinputdiskon, Finputdiskon);
  FrmInduk.Enabled := False;
  FSetupDisc.Enabled := False;
  Finputdiskon.ComboBox1.SetFocus;
  Finputdiskon.ComboBox1.ItemIndex := Finputdiskon.ComboBox1.Items.IndexOf(qRoomDisckategori.AsString);
  Finputdiskon.ComboBox1Click(sender);
  Finputdiskon.pvdiskon := qRoomDiscdiskon.AsFloat;
  Finputdiskon.edtDiscount.Text := FormatFloat('#,0', qRoomDiscdiskon.AsFloat);
end;

procedure TFSetupDisc.btnRoomDeleteClick(Sender: TObject);
var qUpdate : TZQuery;
begin
  if qRoomDisc.RecordCount = 0 then exit;
  qUpdate := TZQuery.Create(Self);
  qUpdate.Connection := modul.Database1;
  qUpdate.SQL.Text := ' DELETE FROM Tdiskonroom  '+
                      ' WHERE     (iddisc = '+ QuotedStr(qRoomDisciddisc.AsString)+') AND '+
                      '           (idroom = '+ qRoomDiscidroom.AsString + ')';
  qUpdate.ExecSQL;
  qUpdate.Destroy;
  qRoomDisc.Active := False;
  qRoomDisc.Active := True;
end;

procedure TFSetupDisc.dbKategoriRoomDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := $00FF6833;
     FillRect(Rect);
     Font.Color:= clBlack;
     Font.Style := [fsBold];
     end;
     end;
    dbKategoriRoom.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFSetupDisc.qJointPromoCalcFields(DataSet: TDataSet);
begin
  case qJointPromostatus.AsInteger of
    1 : qJointPromocalStatus.Value := qJointPromoidpromo1.AsString;
    2 : qJointPromocalStatus.Value := qJointPromoidpromo2.AsString;
    3 : qJointPromocalStatus.Value := 'ALL';
  end;

end;

procedure TFSetupDisc.bsSkinButton1Click(Sender: TObject);
var qUpdate : TZQuery;
begin
  if qJointPromo.RecordCount = 0 then Exit;
  FrmInduk.Enabled := False;
  FSetupDisc.Enabled := False;
  Application.CreateForm(TFdiskonroom, Fdiskonroom);
  Application.ProcessMessages;

  qUpdate := TZQuery.Create(Self);
  qUpdate.Connection := modul.Database1;

  qUpdate.SQL.Text := ' SELECT     *  '+
                     ' FROM         tdisc '+
                     ' WHERE id =' + QuotedStr(qJointPromoidpromo1.AsString) +
                     ' ORDER BY id';
  qUpdate.Active := True;

  Fdiskonroom.edtID.Text := qUpdate.FieldByName('id').AsString;
  Fdiskonroom.chkAktif.Checked := modul.StrToBool(qUpdate.FieldByName('active').AsString);
  Fdiskonroom.edtPromo.Text := qUpdate.FieldByName('promo').AsString;
  Fdiskonroom.tgl_awal.Date := qUpdate.FieldByName('tglAwal').AsDateTime;
  Fdiskonroom.tgl_akhir.Date := qUpdate.FieldByName('tglAkhir').AsDateTime;
  Fdiskonroom.waktuawal.Time := qUpdate.FieldByName('timeAwal').AsDateTime;
  Fdiskonroom.waktuakhir.Time := qUpdate.FieldByName('timeAkhir').AsDateTime;
  Fdiskonroom.chkSun.Checked := modul.StrToBool(qUpdate.FieldByName('sun').AsString);
  Fdiskonroom.chkMon.Checked := modul.StrToBool(qUpdate.FieldByName('mon').AsString);
  Fdiskonroom.chkTue.Checked := modul.StrToBool(qUpdate.FieldByName('tue').AsString);
  Fdiskonroom.chkWed.Checked := modul.StrToBool(qUpdate.FieldByName('wed').AsString);
  Fdiskonroom.chkThu.Checked := modul.StrToBool(qUpdate.FieldByName('thu').AsString);
  Fdiskonroom.chkFri.Checked := modul.StrToBool(qUpdate.FieldByName('fri').AsString);
  Fdiskonroom.chkSat.Checked := modul.StrToBool(qUpdate.FieldByName('sat').AsString);
  Fdiskonroom.qRoomDisc.Active := False;
  Fdiskonroom.qRoomDisc.SQL.Text := ' SELECT     Tdiskonroom.iddisc, Tdiskonroom.diskon, tkategoriroom.kategori, tkategoriroom.harga, Tdiskonroom.idroom '+
                        ' FROM         Tdiskonroom INNER JOIN '+
                        ' tkategoriroom ON Tdiskonroom.idroom = tkategoriroom.id '+
                        ' WHERE     (Tdiskonroom.iddisc = '+QuotedStr(qJointPromoidpromo1.AsString)+')';
  Fdiskonroom.qRoomDisc.Active := True;

  qUpdate.SQL.Text := ' SELECT     *  '+
                     ' FROM         tdisc '+
                     ' WHERE id =' + QuotedStr(qJointPromoidpromo2.AsString) +
                     ' ORDER BY id';
  qUpdate.Active := True;

  Fdiskonroom.edtID2.Text := qUpdate.FieldByName('id').AsString;
  Fdiskonroom.chkAktif2.Checked := modul.StrToBool(qUpdate.FieldByName('active').AsString);
  Fdiskonroom.edtPromo2.Text := qUpdate.FieldByName('promo').AsString;
  Fdiskonroom.tgl_awal2.Date := qUpdate.FieldByName('tglAwal').AsDateTime;
  Fdiskonroom.tgl_akhir2.Date := qUpdate.FieldByName('tglAkhir').AsDateTime;
  Fdiskonroom.waktuawal2.Time := qUpdate.FieldByName('timeAwal').AsDateTime;
  Fdiskonroom.waktuakhir2.Time := qUpdate.FieldByName('timeAkhir').AsDateTime;
  Fdiskonroom.chkSun2.Checked := modul.StrToBool(qUpdate.FieldByName('sun').AsString);
  Fdiskonroom.chkMon2.Checked := modul.StrToBool(qUpdate.FieldByName('mon').AsString);
  Fdiskonroom.chkTue2.Checked := modul.StrToBool(qUpdate.FieldByName('tue').AsString);
  Fdiskonroom.chkWed2.Checked := modul.StrToBool(qUpdate.FieldByName('wed').AsString);
  Fdiskonroom.chkThu2.Checked := modul.StrToBool(qUpdate.FieldByName('thu').AsString);
  Fdiskonroom.chkFri2.Checked := modul.StrToBool(qUpdate.FieldByName('fri').AsString);
  Fdiskonroom.chkSat2.Checked := modul.StrToBool(qUpdate.FieldByName('sat').AsString);
  Fdiskonroom.qRoomDisc2.Active := False;
  Fdiskonroom.qRoomDisc2.SQL.Text := ' SELECT     Tdiskonroom.iddisc, Tdiskonroom.diskon, tkategoriroom.kategori, tkategoriroom.harga, Tdiskonroom.idroom '+
                        ' FROM         Tdiskonroom INNER JOIN '+
                        ' tkategoriroom ON Tdiskonroom.idroom = tkategoriroom.id '+
                        ' WHERE     (Tdiskonroom.iddisc = '+QuotedStr(qJointPromoidpromo2.AsString)+')';
  Fdiskonroom.qRoomDisc2.Active := True;

  Fdiskonroom.chkPromo1.Caption := qJointPromoidpromo1.AsString;
  Fdiskonroom.chkPromo2.Caption := qJointPromoidpromo2.AsString;

  case qJointPromostatus.AsInteger of
  1 : begin
        Fdiskonroom.chkPromo1.Checked := True;
        Fdiskonroom.chkPromo2.Checked := False;
      end;
  2 : begin
        Fdiskonroom.chkPromo1.Checked := False;
        Fdiskonroom.chkPromo2.Checked := True;
      end;
  3 : begin
        Fdiskonroom.chkPromo1.Checked := True;
        Fdiskonroom.chkPromo2.Checked := True;
      end;
  end;

end;

procedure TFSetupDisc.btnDeleteClick(Sender: TObject);
var qDelete : TZQuery;
begin
  if qPromo.RecordCount = 0 then exit;
  qDelete := TZQuery.Create(Self);
  qDelete.Connection := modul.Database1;
  qDelete.SQL.Text := 'DELETE FROM Tpromo '+
                      'WHERE     (idpromo1 = '+QuotedStr(qPromoid.AsString)+ ') OR' +
                                '(idpromo2 = '+QuotedStr(qPromoid.AsString)+')';
  qDelete.ExecSQL;
  qDelete.SQL.Text := 'DELETE FROM Tdiskonroom '+
                      'WHERE     (iddisc = '+QuotedStr(qPromoid.AsString)+ ')';
  qDelete.ExecSQL;
  qDelete.SQL.Text := 'DELETE FROM tdisc '+
                      'WHERE     (id = '+QuotedStr(qPromoid.AsString)+ ')';
  qDelete.ExecSQL;
  qPromo.Active := False;
  qPromo.Active := True;
end;

procedure TFSetupDisc.FormCreate(Sender: TObject);
begin

  FrmInduk.pbSetupDiscount := True;

  qRoomDisc.Connection := modul.Database1;
  dsRoomDisc.DataSet := qRoomDisc;

  qJointPromo.Connection := modul.Database1;
  qJointPromo.SQL.Text := 'SELECT idpromo1, idpromo2, status FROM Tpromo';
  dsJointPromo.DataSet := qJointPromo;

  qPromo.Connection := modul.Database1;
  qpromo.SQL.Text := 'SELECT * FROM tdisc ORDER BY id';
  qPromo.Active := True;
  qPromo.First;
  DSDisc.DataSet := qPromo;
end;

procedure TFSetupDisc.cmbAutoClick(Sender: TObject);
begin
  qPromo.Active := False;
  case cmbAuto.ItemIndex of
    0 : qpromo.SQL.Text := 'SELECT * FROM tdisc ORDER BY id';
    1 : qpromo.SQL.Text := 'SELECT * FROM tdisc WHERE otomatis = 1 ORDER BY id';
    2 : qpromo.SQL.Text := 'SELECT * FROM tdisc WHERE otomatis = 0 ORDER BY id';
  end;
  qPromo.Active := True;
  qPromo.First;

  if qPromo.RecordCount = 0 then
  begin
    btnRoomAdd.Visible := False;
    btnRoomEdit.Visible := False;
    btnRoomDelete.Visible := False
  end
  else
  begin
    btnRoomAdd.Visible := True;
    btnRoomEdit.Visible := True;
    btnRoomDelete.Visible := True
  end;

end;

procedure TFSetupDisc.edtDiscountRoomNominalEnter(Sender: TObject);
begin
  edtDiscountRoomNominal.Text := FormatFloat('0', vpFreeRoomNominal);
  edtDiscountRoomNominal.SelectAll;
end;

procedure TFSetupDisc.edtDiscountRoomNominalExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtDiscountRoomNominal.Text);
  except
    x:=0;
  end;
  vpFreeRoomNominal := x;
  edtDiscountRoomNominal.Text := FormatFloat('#,0', vpFreeRoomNominal);
end;

procedure TFSetupDisc.edtPromoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFSetupDisc.edtDiscountRoomNominalKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

end.
