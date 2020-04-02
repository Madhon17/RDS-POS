unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, Mask, DBCtrls,
  MemDS, VirtualTable, BusinessSkinForm, bsSkinCtrls, bsMessages, ExtCtrls, ZDataset;

type
  Tfmenu = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLkategori: TDBLookupComboBox;
    dbmenu: TDBEdit;
    dbharga: TDBEdit;
    Label5: TLabel;
    Cmbjenis: TComboBox;
    Keterangan: TLabel;
    Label6: TLabel;
    dbid: TDBEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    YA: TLabel;
    dbketerangan: TDBEdit;
    DSkatmenu: TDataSource;
    DSlokasi: TDataSource;
    chkstatus: TDBCheckBox;
    DBbarcode: TDBEdit;
    Label8: TLabel;
    procedure btnkeluarClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBLkategoriClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure btnbatalClick(Sender: TObject);
  private
    pvtutup : boolean;
    qkatmenu, Qlokasi, qid, Qnamamenu: TZQuery;
  public
    pbtambah : Boolean;
    cekmenu : String;
    pbIdMenu  : String;
  end;

var
  fmenu: Tfmenu;

implementation
   uses unit1 , unit3, StrUtils, untKomposisi;
{$R *.dfm}

procedure Tfmenu.btnkeluarClick(Sender: TObject);
begin
  qkatmenu.Active := False;
  qid.Active := False;
  fmenu.close;
end;

procedure Tfmenu.btnsimpanClick(Sender: TObject);
begin
   if DBLkategori.Text = '' then begin
    beep;
    bsSkinMessage1.MessageDlg('           Pilih Kategori          ', mtInformation,[mbOK],0);
    DBLkategori.SetFocus;
    exit;
  end;
  if dbid.Text = '' then begin
    beep;
    bsSkinMessage1.MessageDlg('           Pilih Kategori          ',mtInformation,[mbOK],0 );
    DBLkategori.SetFocus ;
    exit;
  end;
  if Length(dbid.Text) <> 8 then begin
    beep;
    bsSkinMessage1.MessageDlg('           Invalid ID          ',mtInformation,[mbOK],0 );
    DBLkategori.SetFocus ;
    exit;
  end;
  if dbmenu.Text = '' then begin
    beep;
    bsSkinMessage1.MessageDlg('         Nama Menu tidak lengkap         ',mtInformation,[mbOK],0);
    dbmenu.SetFocus;
    exit;
  end;
  if dbharga.Text = '' then begin
    beep;
    bsSkinMessage1.MessageDlg('           Harga tidak lengkap          ',mtInformation,[mbOK],0);
    dbharga.SetFocus;
    exit;
  end;
   if DBLookupComboBox1.Text = '' then begin
    beep;
    bsSkinMessage1.MessageDlg('           Pilih Lokasi           ', mtInformation,[mbOK],0);
    DBLookupComboBox1.SetFocus;
    exit;
  end;

  qnamamenu.Active := False;
  qnamamenu.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                     ' FROM         tmenu ' +
                     ' WHERE     (menu = ' + QuotedStr(dbmenu.Text) + ')';
  qnamamenu.Active := True;

  if qnamamenu.FieldByName('jumlah').AsInteger > 0 then
  begin
    if  pbtambah then
    begin
       bsSkinMessage1.MessageDlg('      Nama Menu Sudah Ada       ',mtInformation,[mbOK],0);
       dbmenu.SetFocus;
    end
    else
    begin
      if (dbmenu.Text <> cekmenu) then
      begin
        bsSkinMessage1.MessageDlg('       Nama Menu Sudah Ada       ',mtError,[mbOK],0);
        dbmenu.SetFocus;
        exit;
      end;
    end;
  end;

  try
    fkomposisi.tmenu.Post;
  except
    bsSkinMessage1.MessageDlg('           Dupicate ID          ', mtError,[mbOK],0);
    exit;
  end;

  if (pbtambah = False) then
  begin
    if dbid.Text <> pbIdMenu then
    begin
      Qnamamenu.Active := False;
      Qnamamenu.SQL.Text := 'UPDATE    torder_menu '+
                            'SET              idmenu = ' + QuotedStr(Trim(dbid.Text)) +
                            ' WHERE     (idmenu = '+ QuotedStr(pbIdMenu) +')';
      Qnamamenu.ExecSQL;
      Qnamamenu.Active := False;
      Qnamamenu.SQL.Text := 'UPDATE    tkomposisi '+
                            'SET              idmenu = ' + QuotedStr(Trim(dbid.Text)) +
                            ' WHERE     (idmenu = '+ QuotedStr(pbIdMenu) +')';
      Qnamamenu.ExecSQL;
      Qnamamenu.Active := False;
      Qnamamenu.SQL.Text := 'UPDATE    tsodetail '+
                            'SET              idmenu = ' + QuotedStr(Trim(dbid.Text)) +
                            ' WHERE     (idmenu = '+ QuotedStr(pbIdMenu) +')';
      Qnamamenu.ExecSQL;
      Qnamamenu.Active := False;
      Qnamamenu.SQL.Text := 'UPDATE    torder_menu_pda '+
                            'SET              idmenu = ' + QuotedStr(Trim(dbid.Text)) +
                            ' WHERE     (idmenu = '+ QuotedStr(pbIdMenu) +')';
      Qnamamenu.ExecSQL;
    end;
  end;

  pvtutup := True;
  Close;
end;


procedure Tfmenu.FormCreate(Sender: TObject);
begin

  qid := TZQuery.Create(self);
  qid.Connection := modul.Database1;
  qid.SQL.Text := 'SELECT MAX(id) as id FROM tmenu';
  qid.Active := True;

  Qlokasi := TZQuery.Create(self);
  Qlokasi.Connection := modul.Database1;
  Qlokasi.SQL.Text := 'SELECT id, lokasi FROM tlokasi ORDER BY lokasi';
  Qlokasi.Active := True;
  DSlokasi.DataSet := Qlokasi;

  Qnamamenu := TZQuery.Create(self);
  Qnamamenu.Connection := modul.Database1;
  Qnamamenu.SQL.Text := 'SELECT MAX(id) as id FROM tmenu';
  Qnamamenu.Active := True;

  qkatmenu := TZQuery.Create(self);
  qkatmenu.Connection := modul.Database1;
  qkatmenu.SQL.Text := 'SELECT id, kategori, kode FROM tkategorimenu order by kategori';
  qkatmenu.Active := True;
  DSkatmenu.DataSet := qkatmenu;
end;

procedure Tfmenu.DBLkategoriClick(Sender: TObject);
var id, idkat : integer;
    kdkat     : String;
begin
  qid.SQL.Text := 'SELECT     id, kategori, kode '+
                  'FROM         tkategorimenu '+
                  'WHERE     (kategori = '+ QuotedStr(DBLkategori.Text) + ')';

  qid.Active := True;
  idkat := qid.FieldByName('id').AsInteger;
  kdkat := qid.FieldByName('kode').AsString;
  qid.Active := False;

  Qlokasi.Active := False;
  Qlokasi.SQL.Text := ' SELECT     tlokasi.id, tlokasi.lokasi '+
                      ' FROM         tkategorimenu INNER JOIN '+
                      ' tlokasi ON tkategorimenu.lokasi = tlokasi.id '+
                      ' WHERE     (tkategorimenu.id = '+ IntToStr(idkat) +')';
  Qlokasi.Active := True;

  if not (pbtambah) then exit;
  if DBLkategori.Text = '' then
  begin
    dbid.Text := '';
    dbmenu.Text := '';
    dbharga.Text := '';
    dbketerangan.Text := '';
  end;

  dbid.Enabled := True;
  qid.Active := False;
  qid.SQL.Text := ' SELECT     id  ' +
                  ' FROM         tmenu '+
                  ' WHERE kategori = ' + IntToStr(idkat) +
                  ' ORDER BY id ' ;
  qid.Active := True;
  qid.Last;
  try
    id := strtoint(RightStr(qid.FieldByName('id').AsString,5));
    id := id + 1
  except
    id := 1;
  end;
    fkomposisi.tmenuid.Value := FormatFloat(kdkat + '00000',id);
end;

procedure Tfmenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.Enabled := True;
  fkomposisi.Enabled := True;

  fkomposisi.DBGmenu.SetFocus;
  Action := caFree;
end;

procedure Tfmenu.TKN13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    key :=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfmenu.btnbatalClick(Sender: TObject);
begin
  fkomposisi.tmenu.Cancel;
  pvtutup := True;
  Close;
end;

end.
