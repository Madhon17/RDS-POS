unit untbarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, bsSkinCtrls, Spin, DB, DBTables,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  Tfbarang = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbidbarang: TDBEdit;
    dbnamabarang: TDBEdit;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    DBLkategori: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    dbketerangan: TDBEdit;
    Qkatbarang: TQuery;
    DSkatbarang: TDataSource;
    Qid: TQuery;
    Qsatuan: TQuery;
    DSsatuan: TDataSource;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    qnamabarang: TQuery;
    Label7: TLabel;
    dbharga: TDBEdit;
    dbminimalstok: TDBEdit;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    DBCheckBox1: TDBCheckBox;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure DBLkategoriClick(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure dbidbarangEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    pvtutup : boolean;
  public
    pvtambah    : Boolean;
    cekidbarang : String;
  end;

var
  fbarang: Tfbarang;

implementation
     uses unit1, unit3, strutils , untBarangCar, untBarangMaster;
{$R *.dfm}


procedure Tfbarang.FormCreate(Sender: TObject);
begin
  Qkatbarang.Active := True;
  Qsatuan.Active := True;

  pvtutup := False;
end;

procedure Tfbarang.btnbatalClick(Sender: TObject);
begin
  FbarangMaster.tbarang.Cancel;

  pvtutup := True;
  Close;
end;

procedure Tfbarang.btnsimpanClick(Sender: TObject);
begin
   if DBLkategori.Text = '' then
    begin
      beep;
      bsSkinMessage1.MessageDlg('Kategori belom dipilih..',mtInformation,[mbok],0);
      DBLkategori.SetFocus;
      exit;
    end;
  if dbidbarang.Text = '' then
    begin
      beep;
       bsSkinMessage1.MessageDlg('ID Kategori belom diisi',mtInformation,[mbok],0);
      DBLkategori.SetFocus;
      exit;
    end;
  if dbnamabarang.Text = '' then
    begin
      beep;
       bsSkinMessage1.MessageDlg('Nama Barang Belum Diisi',mtInformation,[mbok],0);
      dbnamabarang.SetFocus;
      exit;
    end;

  if DBLookupComboBox1.Text = '' then
    begin
      beep;
      bsSkinMessage1.MessageDlg(' Satuan belum diisi ', mtInformation, [mbOK],0);
      DBLookupComboBox1.SetFocus;
      exit;
    end;
    

  qnamabarang.Active := False;
  qnamabarang.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                          ' FROM         tbarang ' +
                          ' WHERE     (namabarang = ' + QuotedStr(dbnamabarang.Text) + ')';
  qnamabarang.Active := True;

  if qnamabarang.FieldByName('jumlah').AsInteger > 0 then
  begin
    if (pvtambah = True) then
    begin
      bsSkinMessage1.MessageDlg(' Nama Barang Sudah Ada ', mtError,[mbOK],0);
      dbnamabarang.SetFocus;
      exit;
    end;
  end;

  FbarangMaster.tbarang.Post;

  pvtutup := True;

  Close;
end;

procedure Tfbarang.DBLkategoriClick(Sender: TObject);
var id, idkat : integer;
    kdkat     : String;
begin
if DBLkategori.Text = '' then   dbidbarang.Text := '';
  Qid.SQL.Text := 'SELECT     id, kategori, kode '+
                  'FROM         tkategoribarang '+
                  'WHERE     (kategori = '+ QuotedStr(DBLkategori.Text) + ')';
  Qid.Active := True;
  idkat := Qid.FieldByName('id').AsInteger;
  kdkat := Qid.FieldByName('kode').AsString;

  Qid.Active := False;

  Qid.SQL.Text := ' SELECT     idbarang  ' +
                  ' FROM         tbarang '+
                  ' WHERE idkategori = ' + IntToStr(idkat) +
                  ' ORDER BY idbarang ' ;
  qid.Active := True;
  qid.Last;

  try
    id := StrToInt(RightStr(qid.FieldByName('idbarang').AsString,5));
    id := id + 1
  except
    id := 1;
 end;
    FbarangMaster.tbarangidbarang.Value := FormatFloat(kdkat + '00000',id);
    dbnamabarang.SetFocus;
end;

procedure Tfbarang.TKN13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;  
end;

procedure Tfbarang.dbidbarangEnter(Sender: TObject);
begin
    dbnamabarang.SetFocus;
end;

procedure Tfbarang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.Enabled := True;
  FbarangMaster.Enabled := True;

  FbarangMaster.DBGrid1.SetFocus;

  if not(pvtutup) then FbarangMaster.tbarang.Cancel;

  Action := caFree;
end;

procedure Tfbarang.DBLookupComboBox1Click(Sender: TObject);
begin
  if not (pvtambah) then exit;
end;

end.
