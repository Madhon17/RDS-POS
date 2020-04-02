unit untkomposisi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ExtCtrls, Spin, StdCtrls,
  bsSkinCtrls, BusinessSkinForm, bsMessages, AEDIT, DBCtrls, RpDefine,
  RpCon, RpConDS, ZDataset, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable;

type
  Tfkomposisi = class(TForm)
    DSmenu: TDataSource;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    DSkomposisi: TDataSource;
    bsSkinPanel3: TbsSkinPanel;
    Kategori: TLabel;
    cmbKategori: TComboBox;
    Label4: TLabel;
    edtidmenucari: TAEdit;
    edtnamamenucari: TAEdit;
    bsSkinPanel1: TbsSkinPanel;
    Label5: TLabel;
    DBGrid2: TDBGrid;
    btntambah: TbsSkinButton;
    btnedit: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnStambah: TbsSkinButton;
    btnSedit: TbsSkinButton;
    btnShapus: TbsSkinButton;
    DBCheckBox1: TDBCheckBox;
    DBGmenu: TDBGrid;
    btnCari: TbsSkinButton;
    btnOk: TbsSkinButton;
    btnPrint: TbsSkinButton;
    RVKomposisiMenu: TRvDataSetConnection;
    RVkomposisiKomposisi: TRvDataSetConnection;
    btnRemoveOrphan: TbsSkinButton;
    tmenu: TZTable;
    tmenuid: TStringField;
    tmenumenu: TStringField;
    tmenuLUkategori: TStringField;
    tmenuLUlokasi: TStringField;
    tmenuHarga: TFloatField;
    tmenustatus: TStringField;
    tmenuLstatus: TBooleanField;
    tmenukategori: TSmallintField;
    Qkategori: TZQuery;
    Qkategoriid: TSmallintField;
    Qkategorikategori: TStringField;
    Tkomposisi: TZTable;
    Tkomposisiidmenu: TStringField;
    Tkomposisiqtysatuan: TFloatField;
    Tkomposisiidbarang: TStringField;
    TkomposisiLUbarang: TStringField;
    TkomposisiLUkode: TStringField;
    TkomposisiLUharga: TFloatField;
    TkomposisiCalJumlah: TFloatField;
    tmenuid_lokasi: TSmallintField;
    tmenuketerangan: TStringField;
    tmenubarcode: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AEdit1Enter(Sender: TObject);
    procedure DBGmenuDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnStambahClick(Sender: TObject);
    procedure btnSeditClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnShapusClick(Sender: TObject);
    procedure cmbKategoriClick(Sender: TObject);
    procedure edtnamamenucariEnter(Sender: TObject);
    procedure edtidmenucariChange(Sender: TObject);
    procedure edtnamamenucariChange(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure TkomposisiCalcFields(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure btnRemoveOrphanClick(Sender: TObject);
    procedure tmenuCalcFields(DataSet: TDataSet);
  private
//    pvidmenu, pvmenu    : String;
//    pvtambah, pvedit  : Boolean;
//    tmpidmenu, tmpmenu, tmpidbarang, tmpnamabarang, tmpsatuan  : String;
//    tmpidsatuan  : Smallint;
//    tmpjumlah : Integer;

    Qlokasi, Qkomposisi, Qsatuan: TZQuery;

  public
    pbidsatuan  : Smallint;
    pbsatuan  : string;
    pbidbarang, pbnamabarang  : string;
  end;

var
  fkomposisi: Tfkomposisi;

implementation
   uses unit1, unit3, Unit9, untKomposisiInput ;

{$R *.dfm}
procedure Tfkomposisi.FormCreate(Sender: TObject);
begin

  FrmInduk.pbkomposisi := True;

  Qkomposisi := TZQuery.Create(self);
  Qkomposisi.Connection := modul.Database1;
  Qkomposisi.SQL.Text := 'SELECT tkomposisi.idmenu, tkomposisi.idbarang, Tbarang.namabarang, tsatuan.kode, Tbarang.harga, tkomposisi.qtysatuan, tkomposisi.qtysatuan * Tbarang.harga AS total ' +
                         'FROM tkomposisi INNER JOIN Tbarang ON tkomposisi.idbarang = Tbarang.idbarang INNER JOIN tsatuan ON Tbarang.idsatuan = tsatuan.id';
  Qkomposisi.Active := True;

  RVkomposisiKomposisi.DataSet := Qkomposisi;

  Qlokasi := TZQuery.Create(self);
  Qlokasi.Connection := modul.Database1;
  Qlokasi.SQL.Text := 'SELECT id, lokasi FROM tlokasi ORDER BY lokasi';
  Qlokasi.Active := True;

  Qkategori.Connection := modul.Database1;
  Qkategori.SQL.Text := 'SELECT id, kategori FROM tkategorimenu ORDER BY kategori';
  Qkategori.Active := True;

  cmbKategori.Clear;
  cmbKategori.Items.Add('');
  while not(Qkategori.Eof) do
  begin
    cmbKategori.Items.Add(Qkategori.fieldByName('kategori').AsString);
    Qkategori.Next
  end;
  cmbkategori.ItemIndex := 0;

  Qsatuan := TZQuery.Create(self);
  Qsatuan.Connection := modul.Database1;
  Qsatuan.SQL.Text := 'SELECT Tbarang.idbarang AS id, tsatuan.satuan, tsatuan.kode, Tbarang.namabarang, Tbarang.harga FROM Tbarang INNER JOIN tsatuan ON Tbarang.idsatuan = tsatuan.id ORDER BY Tbarang.idbarang';
  Qsatuan.Active := True;

  tmenu.Connection := modul.Database1;
  tmenu.TableName := 'tmenu';
  tmenu.Active := True;
  DSmenu.DataSet := tmenu;

  Tkomposisi.Connection := modul.Database1;
  Tkomposisi.TableName := 'tkomposisi';
  Tkomposisi.Active := True;
  DSkomposisi.DataSet := TKomposisi;

end;

procedure Tfkomposisi.TKN13(Sender: TObject; var Key: Char);
begin

  if key=#13	then
  begin
     key := #0;
     Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfkomposisi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbkomposisi := False;
end;

procedure Tfkomposisi.AEdit1Enter(Sender: TObject);
begin
  tmenu.IndexFieldNames := 'id';
end;


procedure Tfkomposisi.DBGmenuDrawColumnCell(Sender: TObject;
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
  DBGmenu.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  
  if (Column.Field.FieldName = DBCheckBox1.DataField) then
  begin
    DrawRect:=Rect;
    InflateRect(DrawRect,-1,-1);

    DrawState := ISChecked[Column.Field.AsBoolean];

    DBGmenu.Canvas.FillRect(Rect);
    DrawFrameControl(DBGmenu.Canvas.Handle, DrawRect,
                     DFC_BUTTON, DrawState);
  end;

end;

procedure Tfkomposisi.btntambahClick(Sender: TObject);
begin
  tmenu.Append;
  tmenustatus.Value := '1';

  Application.CreateForm(Tfmenu, fmenu);
  fmenu.pbtambah := True;
  tmenukategori.ReadOnly := False;

  FrmInduk.Enabled := False;
  fkomposisi.Enabled := False;
end;

procedure Tfkomposisi.btneditClick(Sender: TObject);
begin
  tmenu.Edit;

  Application.CreateForm(Tfmenu, fmenu);
  fmenu.cekmenu := tmenumenu.Value;
  fmenu.pbIdMenu := tmenuid.AsString;
  tmenukategori.ReadOnly := True;
  fmenu.DBLkategoriClick(sender);

  FrmInduk.Enabled := False;
  fkomposisi.Enabled := False;
end;

procedure Tfkomposisi.btnhapusClick(Sender: TObject);
var
  query: TZQuery;
begin

  if tmenu.RecordCount = 0 then
  begin
    beep;
    exit;
  end;

  query := TZQuery.Create(self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'SELECT COUNT(idmenu) AS jumlah FROM torder_menu WHERE (idmenu = :idmenu)';
  query.ParamByName('idmenu').Value := tmenuid.Value;
  query.Active := True;

  if query.FieldByName('jumlah').Value > 0 then
  begin
    beep;
    bsSkinMessage1.MessageDlg('           Data sudah terpakai          ', mtError,[mbOK],0);
    exit;
  end;

  if not( bsSkinMessage1.MessageDlg('           Hapus Data          ', mtConfirmation,[mbYes, mbNo],0) = mrYes )then
  begin
    exit;
  end;

  tmenu.Delete;
  //hapus data di komposisi
  query.Active := False;
  query.SQL.Text := 'DELETE FROM tkomposisi WHERE (idmenu = :idmenu)';
  query.ParamByName('idmenu').Value := tmenuid.Value;
  query.ExecSQL;

end;

procedure Tfkomposisi.btnStambahClick(Sender: TObject);
begin
  Tkomposisi.Append;

  Application.CreateForm(TFkomposisiInput, FkomposisiInput);
  FrmInduk.Enabled := False;
  fkomposisi.Enabled := False;
end;

procedure Tfkomposisi.btnSeditClick(Sender: TObject);
begin
  if Tkomposisi.RecordCount = 0 then
  begin
    beep;
    exit;
  end;
  
  Tkomposisi.Edit;

  Application.CreateForm(TFkomposisiInput, FkomposisiInput);
  FkomposisiInput.edtidbarang.Text := Tkomposisiidbarang.AsString;
  FkomposisiInput.edtnamabarang.Text := TkomposisiLUbarang.Value;

  FrmInduk.Enabled := False;
  fkomposisi.Enabled := False;
end;

procedure Tfkomposisi.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
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
  DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfkomposisi.btnShapusClick(Sender: TObject);
begin
  if Tkomposisi.RecordCount = 0 then
  begin
    beep;
    exit;
  end;

  if not( bsSkinMessage1.MessageDlg('           Hapus Data          ', mtConfirmation,[mbYes, mbNo],0) = mrYes )then
  begin
    exit;
  end;

  Tkomposisi.Delete;
end;

procedure Tfkomposisi.cmbKategoriClick(Sender: TObject);
begin
  if cmbKategori.ItemIndex = 0 then
  begin
    tmenu.Filtered := False;
    exit;
  end;

  Qkategori.Locate('kategori', cmbKategori.Text, []);
  tmenu.Filter := 'kategori = ' + Qkategoriid.AsString;
  tmenu.Filtered := True;
end;

procedure Tfkomposisi.edtnamamenucariEnter(Sender: TObject);
begin
   tmenu.IndexFieldNames := 'menu';
end;

procedure Tfkomposisi.edtidmenucariChange(Sender: TObject);
begin
  tmenu.Locate('id', edtidmenucari.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure Tfkomposisi.edtnamamenucariChange(Sender: TObject);
begin
  tmenu.Locate('menu', edtnamamenucari.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure Tfkomposisi.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure Tfkomposisi.TkomposisiCalcFields(DataSet: TDataSet);
begin
  TkomposisiLUbarang.Value := Qsatuan.Lookup('id', Tkomposisiidbarang.Value, 'namabarang');
  TkomposisiLUkode.Value := Qsatuan.Lookup('id', Tkomposisiidbarang.Value, 'kode');
  TkomposisiLUharga.Value := Qsatuan.Lookup('id', Tkomposisiidbarang.Value, 'harga');
  TkomposisiCalJumlah.Value := TkomposisiLUharga.Value * Tkomposisiqtysatuan.Value;
end;

procedure Tfkomposisi.btnPrintClick(Sender: TObject);
begin
  with FrmInduk.RvProject1 do
  begin
    ExecuteReport('Fkomposisi');
  end;
end;

procedure Tfkomposisi.btnRemoveOrphanClick(Sender: TObject);
var
  query : TZQuery;
begin
  if MessageDlg('Apakah Anda yakin?', mtConfirmation, mbOKCancel, 0) = mrOk then
  begin
    query := TZQuery.Create(Self);
    query.Connection := modul.Database1;
    query.SQL.Text := 'delete tmenu from tmenu left join tkategorimenu on tkategorimenu.id = tmenu.kategori where tkategorimenu.id is null';
    query.ExecSQL;
  end;
end;

procedure Tfkomposisi.tmenuCalcFields(DataSet: TDataSet);
begin
  if VarIsNull(Qkategori.Lookup('id', tmenukategori.Value, 'kategori')) = False then
    tmenuLUkategori.Value := Qkategori.Lookup('id', tmenukategori.Value, 'kategori');
  if VarIsNull(Qlokasi.Lookup('id', tmenuid_lokasi.Value, 'lokasi')) = False then
    tmenuLUlokasi.Value := Qlokasi.Lookup('id', tmenuid_lokasi.Value, 'lokasi');
  if tmenustatus.Value = '0' then
    tmenuLstatus.Value := False
  else
    tmenuLstatus.Value := True;
end;

end.
