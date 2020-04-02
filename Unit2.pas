unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DB, DBTables,
  bsSkinCtrls, BusinessSkinForm, bsMessages, AEDIT, ZDataset,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable;

type
  Tfkategoriroom = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btnkeluar: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    grpRoom: TbsSkinPanel;
    cmbHari: TComboBox;
    DBGrid2: TDBGrid;
    bsSkinPanel1: TbsSkinPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbkategori: TDBEdit;
    dbharga: TDBEdit;
    DBGrid1: TDBGrid;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    DSroomKategori: TDataSource;
    btnDetilEdit: TbsSkinButton;
    btnDetilSave: TbsSkinButton;
    btnDetilCancel: TbsSkinButton;
    btnDefault: TbsSkinButton;
    edtHarga: TAEdit;
    Label3: TLabel;
    Label4: TLabel;
    DSkategoriDetil: TDataSource;
    edtType: TEdit;
    bsSkinButton1: TbsSkinButton;
    QkategoriRoomDetil: TZQuery;
    QkategoriRoomDetilid: TSmallintField;
    QkategoriRoomDetilhari: TSmallintField;
    QkategoriRoomDetilkategori: TStringField;
    QkategoriRoomDetilharga: TFloatField;
    Qother: TZQuery;
    Troomkategori: TZTable;
    Troomkategoriid: TSmallintField;
    Troomkategorikategori: TStringField;
    Troomkategoriharga: TFloatField;
    Qotherjumlah: TLargeintField;
    procedure buka;
    procedure tutup;
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbHariClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtHargaEnter(Sender: TObject);
    procedure edtHargaExit(Sender: TObject);
    procedure btnDetilEditClick(Sender: TObject);
    procedure btnDetilSaveClick(Sender: TObject);
    procedure btnDetilCancelClick(Sender: TObject);
    procedure TroomkategoriAfterScroll(DataSet: TDataSet);
    procedure btnDefaultClick(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure edtHargaKeyPress(Sender: TObject; var Key: Char);

  private
    pvTambah, pvedit, pvProsesDefault : Boolean;
    cekkategori : string;
    pvhargadetil : Real;
  public
    { Public declarations }
  end;

var
  fkategoriroom: Tfkategoriroom;

implementation
   uses Unit1, unit3 ;
{$R *.dfm}

procedure Tfkategoriroom.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btndelete.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure Tfkategoriroom.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btndelete.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
end;

procedure Tfkategoriroom.btntambahClick(Sender: TObject);
begin
  DBGrid1.Enabled := False;
  pvTambah := True;
  Troomkategori.Append;
  Troomkategoriharga.AsFloat := 0;
  dbkategori.SetFocus;
  buka;
end;

procedure Tfkategoriroom.btneditClick(Sender: TObject);
begin
  pvedit := True;
  pvTambah := False;
  DBGrid1.Enabled:=False;
  Troomkategori.Edit;
  cekkategori := Troomkategorikategori.Value;
  buka;
  dbkategori.SetFocus;
end;

procedure Tfkategoriroom.FormCreate(Sender: TObject);
begin

  QkategoriRoomDetil.Connection := modul.Database1;
  DSkategoriDetil.DataSet := QkategoriRoomDetil;

  Qother.Connection := modul.Database1;
  Qother.SQL.Text := 'SELECT COUNT(idkategori) AS jumlah FROM troom WHERE (idkategori = :idkategori)';

  Troomkategori.Connection := modul.Database1;
  Troomkategori.TableName := 'tkategoriroom';
  Troomkategori.IndexFieldNames := 'harga';
  DSroomKategori.DataSet := Troomkategori;

  FrmInduk.pbkatroom := True;

  cmbHari.ItemIndex := 0;
  cmbHariClick(Sender);
  Troomkategori.Active := True;

  tutup;
end;


procedure Tfkategoriroom.btnsimpanClick(Sender: TObject);
var id : Smallint;
  qid, qkategori: TZQuery;
begin
  if dbkategori.Text = '' then
  begin
    Beep;
    dbkategori.SetFocus;
    exit;
  end;

  if pvTambah then
  begin
    Qid := TZQuery.Create(self);
    Qid.Connection := modul.Database1;
    Qid.SQL.Text := 'SELECT MAX(id) AS id ' +
                    'FROM tkategoriroom';
    qid.Active := True;
    if  qid.FieldByName('id').AsInteger = 0 then
      id := 1
    else
      id:= qid.FieldByName('id').AsInteger + 1;
    Troomkategoriid.Value := id;
  end;

  qkategori := TZQuery.Create(self);
  qkategori.Connection := modul.Database1;
  qkategori.Active := False;
 qkategori.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tkategoriroom ' +
                       ' WHERE     (kategori= ' + QuotedStr(dbkategori.Text) + ')';
 qkategori.Active := True;
 if qkategori.FieldByName('jumlah').AsInteger > 0 then
 begin
  if (pvedit = true) and  (dbkategori.Text <> cekkategori) then
  begin
    bsSkinMessage1.MessageDlg(' Nama Kategori Sudah Ada ',mtInformation,[mbOK],0);
    dbkategori.SetFocus;
    exit;
  end;
  if pvtambah then
  begin
     bsSkinMessage1.MessageDlg(' Nama Kategori Sudah Ada ',mtInformation,[mbOK],0);
     dbkategori.SetFocus;
     exit;
     end;
  end;

  Troomkategori.Post;
  DBGrid1.Enabled := True;
  pvTambah := False;
  dbkategori.Enabled:=True;
  dbharga.Enabled:=True;
  tutup;
  DBGrid1.SetFocus;


end;

procedure Tfkategoriroom.btndeleteClick(Sender: TObject);
begin
  if Troomkategori.RecordCount = 0 then
  begin
    Exit;
  end;

  Qother.Active := False;
  Qother.Params[0].AsInteger := Troomkategoriid.Value;
  Qother.Active := True;
  if Qotherjumlah.Value > 0 then
  begin
    bsSkinMessage1.MessageDlg('       Data masih terpakai  !!!        ', mtError, [mbOK] , 0);
    exit;
  end;

  if  bsSkinMessage1.MessageDlg('       Data akan dihapus  !!!        ', mtConfirmation, mbOKCancel, 0) = mrOk then
       Troomkategori.Delete;
end;

procedure Tfkategoriroom.btnkeluarclick(Sender: TObject);
begin
 FrmInduk.pbkatroom := False;
 fkategoriroom.close;
 end;
procedure Tfkategoriroom.btnbatalClick(Sender: TObject);
begin
  tutup;
  troomkategori.Cancel;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  pvTambah := False;
  pvedit := False;
end;

procedure Tfkategoriroom.FormActivate(Sender: TObject);
begin
   DBGrid1.setfocus;
end;



procedure Tfkategoriroom.TKN13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfkategoriroom.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfkategoriroom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbkatroom := False;
end;

procedure Tfkategoriroom.cmbHariClick(Sender: TObject);
begin
  QkategoriRoomDetil.Active := False;
  QkategoriRoomDetil.SQL.Text := 'SELECT     tkategoriroom.id, tKategoriRoomDetil.hari, tkategoriroom.kategori, tKategoriRoomDetil.harga '+
                                 'FROM         tKategoriRoomDetil INNER JOIN '+
                                 'tkategoriroom ON tKategoriRoomDetil.idkategori = tkategoriroom.id '+
                                 'WHERE     (tKategoriRoomDetil.hari = '+ IntToStr(cmbHari.ItemIndex + 1)+ ') ';
  QkategoriRoomDetil.Active := True;
end;

procedure Tfkategoriroom.DBGrid2DrawColumnCell(Sender: TObject;
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
    DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfkategoriroom.edtHargaEnter(Sender: TObject);
begin
  edtHarga.Text := FormatFloat('0', pvhargadetil);
  edtHarga.SelectAll;
end;

procedure Tfkategoriroom.edtHargaExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtHarga.Text);
  except
    x:=0;
  end;
  pvhargadetil := x;
  edtHarga.Text := FormatFloat('0,#', pvhargadetil);
end;

procedure Tfkategoriroom.btnDetilEditClick(Sender: TObject);
begin
  pvhargadetil := QkategoriRoomDetilharga.AsFloat;
  edtHarga.Text := QkategoriRoomDetilharga.AsString;
  edtHargaExit(Sender);
  edtType.Text := QkategoriRoomDetilkategori.AsString;
  cmbHari.Enabled := False;
  DBGrid2.Enabled := False;
  btnDetilEdit.Visible := False;
  btnDetilCancel.Visible := True;
  btnDetilSave.Visible := True;
  btnDefault.Visible := False;
end;

procedure Tfkategoriroom.btnDetilSaveClick(Sender: TObject);
var qUpdate : TZQuery;
begin
  qUpdate := TZQuery.Create(Self);
  qUpdate.Connection := modul.Database1;

  qUpdate.SQL.Text := ' UPDATE    tKategoriRoomDetil '+
                      ' SET harga = '+ FloatToStr(pvhargadetil) +
                      ' WHERE (hari = ' + IntToStr(cmbHari.ItemIndex + 1) + ') '+
                      ' AND (idkategori = '+ QkategoriRoomDetilid.AsString +')';
  qUpdate.ExecSQL;

  QkategoriRoomDetil.Active := False;
  QkategoriRoomDetil.Active := True;

  cmbHari.Enabled := True;
  DBGrid2.Enabled := True;
  btnDetilEdit.Visible := True;
  btnDetilCancel.Visible := False;
  btnDetilSave.Visible := False;
  btnDefault.Visible := True;
  TroomkategoriAfterScroll(Troomkategori);
end;

procedure Tfkategoriroom.btnDetilCancelClick(Sender: TObject);
begin
  edtType.Text := '';
  edtHarga.Text := '';
  cmbHari.Enabled := True;
  DBGrid2.Enabled := True;
  btnDetilEdit.Visible := True;
  btnDetilCancel.Visible := False;
  btnDetilSave.Visible := False;
  btnDefault.Visible := True;
end;

procedure Tfkategoriroom.TroomkategoriAfterScroll(DataSet: TDataSet);
begin
  if not(pvProsesDefault) then
    QkategoriRoomDetil.Locate('id',Troomkategoriid.AsInteger,[]);
end;

procedure Tfkategoriroom.btnDefaultClick(Sender: TObject);
var
  query: TZQuery;
begin
  pvProsesDefault := True;
  Troomkategori.Active := False;

  query := TZQuery.Create(self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'truncate table tkategoriroom';
  query.ExecSQL();

  Troomkategori.Active := True;
  QkategoriRoomDetil.First;
  while not(QkategoriRoomDetil.Eof) do
  begin
    Troomkategori.Append;
    Troomkategoriid.Value := QkategoriRoomDetilid.AsInteger;
    Troomkategorikategori.Value := QkategoriRoomDetilkategori.AsString;
    Troomkategoriharga.Value := QkategoriRoomDetilharga.AsFloat;
    Troomkategori.Post;
    QkategoriRoomDetil.Next;
  end;
  Troomkategori.First;
  pvProsesDefault := False;
end;

procedure Tfkategoriroom.bsSkinButton1Click(Sender: TObject);
var QtambahField, QisiField : TZQuery;
    i : Integer;
begin
  QtambahField := TZQuery.Create(Self);
  QtambahField.Connection := modul.Database1;
  QisiField := TZQuery.Create(Self);
  QisiField.Connection := modul.Database1;

  QtambahField.SQL.Text := 'DELETE FROM tKategoriRoomDetil';
  QtambahField.ExecSQL;
  QisiField.SQL.Text := 'SELECT id, harga FROM tkategoriroom '+
                        'ORDER BY harga ';
  QisiField.Active := True;
  QisiField.First;
  while not(QisiField.Eof) do
  begin
    for i := 1 to 7 do
    begin
      QtambahField.SQL.Text := 'INSERT INTO tKategoriRoomDetil  '+
                               ' (hari, idkategori, harga) '+
                               ' VALUES     ('+IntToStr(i)+', '+
                                QisiField.FieldByName('id').AsString +', '+
                                QisiField.FieldByName('harga').AsString + ') ';
      QtambahField.ExecSQL;
    end;
    QisiField.Next;
  end;

  QisiField.Active := False;
  QisiField.Destroy;
  QtambahField.Destroy;

  QkategoriRoomDetil.Active := False;
  QkategoriRoomDetil.Active := True;
end;

procedure Tfkategoriroom.edtHargaKeyPress(Sender: TObject; var Key: Char);
begin
  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

end.


