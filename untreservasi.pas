unit untreservasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, DBTables,
  bsMessages, BusinessSkinForm, bsSkinCtrls, ComCtrls, Grids, DBGrids,
  Buttons, ZAbstractTable, ZDataset, ZAbstractRODataset, ZAbstractDataset;

type
  TFreservasi = class(TForm)
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qroom: TZQuery;
    DSreservasi: TDataSource;
    DSroom: TDataSource;
    Qid: TZQuery;
    Treservasi: TZTable;
    Treservasiid: TSmallintField;
    Treservasiidroom: TSmallintField;
    Treservasinama: TStringField;
    Treservasialamat: TStringField;
    Treservasitelpon: TStringField;
    Treservasitanggal: TDateTimeField;
    Treservasidurasi: TSmallintField;
    TreservasiHP: TStringField;
    Treservasistatus: TStringField;
    TreservasiDP: TFloatField;
    TreservasiRoom: TStringField;
    Qothers: TZQuery;
    bsSkinPanel2: TbsSkinPanel;
    Label3: TLabel;
    DBLRoom: TDBLookupComboBox;
    Label4: TLabel;
    SpinEdit1: TSpinEdit;
    Label11: TLabel;
    Label5: TLabel;
    tanggal: TDateTimePicker;
    waktu: TDateTimePicker;
    DBDP: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    Status: TDBCheckBox;
    bsSkinPanel1: TbsSkinPanel;
    Label1: TLabel;
    DBnama: TDBEdit;
    Label6: TLabel;
    DBtelpon: TDBEdit;
    Label7: TLabel;
    DBHp: TDBEdit;
    Label2: TLabel;
    DBalamat: TDBEdit;
    Treservasiketerangan: TMemoField;
    bsSkinPanel3: TbsSkinPanel;
    DBGrid1: TDBGrid;
    DBCheckBox1: TDBCheckBox;
    Kategori: TLabel;
    cmbKategori: TComboBox;
    cmbStatus: TComboBox;
    btnGo: TbsSkinButton;
    Label12: TLabel;
    Qroomnamaroom: TStringField;
    Qroomid: TSmallintField;
    Label13: TLabel;
    procedure boleh;
    procedure larang;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit1Exit(Sender: TObject);
    procedure TreservasiAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnGoClick(Sender: TObject);
    procedure Tkn13(Sender: TObject; var Key: Char);
  private
    pvtambah, pvedit  : Boolean;
    pvtanggalawal, pvtanggalakhir, pvbaruawal, pvbaruakhir : TDateTime;
    pvidroom : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Freservasi: TFreservasi;

implementation

uses unit1, unit3, DateUtils;

{$R *.dfm}
procedure TFreservasi.larang;
begin
  SpinEdit1.Enabled := False;
  tanggal.Enabled := False;
  waktu.Enabled := False;
end;

procedure TFreservasi.boleh;
begin
  SpinEdit1.Enabled := True;
  tanggal.Enabled := TRUE;
  waktu.Enabled := true;
end;

 procedure TFreservasi.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btndelete.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure TFreservasi.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btndelete.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
end;

procedure TFreservasi.FormCreate(Sender: TObject);
begin

  Qroom.Connection := modul.Database1;
  Qid.Connection := modul.Database1;
  Qothers.Connection := modul.Database1;
  Treservasi.Connection := modul.Database1;

  FrmInduk.pbreservasi := True;

  Qroom.Active := True;
  Qroom.First;
  cmbKategori.Items.Add('');
  while not(Qroom.Eof) do
  begin
    cmbKategori.Items.Add(Qroomnamaroom.AsString);
    Qroom.Next;
  end;
  cmbKategori.ItemIndex := 0;

  Treservasi.Active := True;
  DBGrid1.Enabled:=True;
  pvtambah := False;
  pvedit := False;
  larang;
  btnGoClick(Sender);
end;

procedure TFreservasi.btnkeluarClick(Sender: TObject);
begin
  Freservasi.Close;
end;

procedure TFreservasi.btntambahClick(Sender: TObject);
begin
  DBGrid1.Enabled := False;
  pvTambah := True;
  pvedit := False;

  Treservasi.Append;
  tanggal.Date := Date;
  waktu.Time := Time;
  SpinEdit1.Value := 1;
  Status.Checked := False;

  DBnama.SetFocus;
  buka;
  boleh;
end;

procedure TFreservasi.btnbatalClick(Sender: TObject);
begin
  tutup;
  Treservasi.Cancel;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  pvedit := False;
  larang;
end;

procedure TFreservasi.btnsimpanClick(Sender: TObject);
var   id, i, pvdurasi : Smallint;
begin
  pvdurasi := 0;

  Qroom.Active := True;
  if  Qroom.Locate('namaroom',Trim(DBLRoom.Text),[loCaseInsensitive]) then
  begin
    pvidroom := Qroom.fieldByName('id').AsInteger;
  end;

  if DBnama.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg('     Nama Belum Diisi     ',mtInformation,[mbOK],0);
    DBnama.SetFocus;
    exit;
  end;
  if DBLRoom.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg('     Room Belum Dipilih     ',mtInformation,[mbOK],0);
    DBLRoom.SetFocus;
    exit;
  end;

  if (SpinEdit1.Text = '') or (SpinEdit1.Value <= 0) then
  begin
    beep;
    bsSkinMessage1.MessageDlg('     Durasi Belum Diisi     ',mtInformation,[mbOK],0);
    SpinEdit1.SetFocus;
    exit;
  end;

  Qothers.Active := False;
  Qothers.SQL.Text := ' Select id, tanggal, durasi, nama from Treservasi where (idroom= ' + QuotedStr(IntToStr(pvidroom)) + ')';
  Qothers.Active := True;
  Qothers.First;
  while not (Qothers.Eof) do
  begin
    pvdurasi := Qothers.fieldByName('durasi').AsInteger;
    pvtanggalawal := Qothers.fieldByName('tanggal').AsDateTime;
    pvtanggalakhir :=IncHour(Qothers.fieldByName('tanggal').AsDateTime,pvdurasi);

    pvbaruawal := StrToDateTime(FormatDateTime('dd-MM-yyyy ',tanggal.Date) + FormatDateTime('HH:mm:00',waktu.Time));
    pvbaruakhir := IncHour(StrToDateTime(FormatDateTime('dd-MM-yyyy ',tanggal.Date) + FormatDateTime('HH:mm:00',waktu.Time)), SpinEdit1.Value) ;

    if (((pvbaruawal >= pvtanggalawal) and (pvbaruawal <= pvtanggalakhir)) or
       ((pvbaruakhir >= pvtanggalawal) and (pvbaruakhir <= pvtanggalakhir)) or
       ((pvbaruawal  <= pvtanggalawal) and (pvbaruakhir >= pvtanggalakhir))) then
    begin
      if not(Qothers.FieldByName('id').Value = Treservasiid.Value) then
      begin
        bsSkinMessage1.MessageDlg('Sudah ada yang Reservasi atas nama '+ QuotedStr(Qothers.fieldByName('nama').AsString) ,mtInformation,[mbOK],0);
        Exit;
      end;
    end;
    Qothers.Next;
  end;

  if pvTambah then
  begin
    Qid.SQL.Text := 'SELECT MAX(id) AS id ' +
                    'FROM treservasi';
    qid.Active := True;
    id :=0;
    if  qid.FieldByName('id').AsInteger = null then
      id := 1
    else
      id:= qid.FieldByName('id').AsInteger + 1;
    Treservasiid.value := id;
  end;

  if Status.Checked then
    Treservasistatus.Value := '1'
  else
    Treservasistatus.Value := '0';
  Treservasidurasi.Value :=  SpinEdit1.Value;
  Treservasitanggal.Value := StrToDateTime(formatdatetime('dd-MM-yyyy',tanggal.Date ) + formatdatetime('HH:mm:00', waktu.Time));
  Treservasi.Post;
  tutup;
  DBLRoom.Enabled := True;
  DBGrid1.Enabled := True;
  pvedit := False;
  pvtambah := False;
  larang;
  Treservasi.Refresh;
end;

procedure TFreservasi.btneditClick(Sender: TObject);
begin
  pvedit := True;
  pvtambah := False;

  if Treservasi.RecordCount = 0 then
    begin
      beep;
      DBnama.SetFocus;
      Exit;
  end;

  DBGrid1.Enabled := False;
  Treservasi.Edit;
  DBnama.SetFocus;
  buka;
  boleh;
end;

procedure TFreservasi.btndeleteClick(Sender: TObject);
begin
   if Treservasi.RecordCount = 0 then
  begin
    Exit;
  end;
   if  bsSkinMessage1.MessageDlg('     Data akan dihapus  !!!     ',mtConfirmation,mbOKCancel,0) = mrOk then
       Treservasi.Delete;
end;

procedure TFreservasi.SpinEdit1Change(Sender: TObject);
begin
if not (pvtambah or pvedit) then exit;

end;

procedure TFreservasi.SpinEdit1Exit(Sender: TObject);
begin
  if SpinEdit1.Text = '' then exit;
end;

procedure TFreservasi.TreservasiAfterScroll(DataSet: TDataSet);
begin
  tanggal.DateTime := DateOf(Treservasitanggal.Value);
  waktu.DateTime := TimeOf(Treservasitanggal.Value);
  SpinEdit1.Value := Treservasidurasi.Value;
end;

procedure TFreservasi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbreservasi := False;
end;

procedure TFreservasi.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const IsChecked : array[Boolean] of Integer =
      (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  with (Sender as TDBGrid).Canvas do
  begin
    if (gdSelected in State) then
    begin
      Brush.Color := clAqua;
      FillRect(Rect);
      Font.Color:= clBlack;
      font.Style := [fsBold]
    end;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  
  if (Column.Field.FieldName = DBCheckBox1.DataField) then
  begin
    DrawRect:=Rect;
    InflateRect(DrawRect,-1,-1);

    DrawState := ISChecked[Column.Field.AsBoolean];

    DBGrid1.Canvas.FillRect(Rect);
    DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect,
                     DFC_BUTTON, DrawState);
  end;

end;

procedure TFreservasi.btnGoClick(Sender: TObject);
var vfilter, vfilter1, vfilter2 : string;
begin
  vfilter1 := ''; vfilter2 := '';
  if cmbKategori.ItemIndex > 0 then
  begin
    Qroom.Locate('namaroom', cmbKategori.Text, [loCaseInsensitive, loPartialKey]);
    vfilter1 := 'idroom = '+ IntToStr(Qroomid.Value);
  end;

  if cmbStatus.ItemIndex = 1 then
  begin
    vfilter2 := 'status = 0'
  end;
  if cmbStatus.ItemIndex = 2 then
  begin
    vfilter2 := 'status = 1'
  end;

  if (cmbKategori.ItemIndex > 0) and (cmbStatus.ItemIndex > 0) then
    vfilter := vfilter1 + ' and ' + vfilter2
  else
    vfilter := vfilter1 + vfilter2;

  Treservasi.Filter := vfilter;
  Treservasi.Filtered := True;
end;

procedure TFreservasi.Tkn13(Sender: TObject; var Key: Char);
begin
  if Key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

end.
