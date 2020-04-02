unit untpenyesuaian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Spin, AEDIT, bsSkinCtrls, Grids,
  DBGrids, ExtCtrls, bsMessages, BusinessSkinForm, ComCtrls;

type
  Tfpenyesuaian = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBGbarang: TDBGrid;
    cmbkatbarang: TComboBox;
    edtidbarang: TAEdit;
    edtnamabarang: TAEdit;
    spnqty: TSpinEdit;
    Label1: TLabel;
    edtsatuan: TEdit;
    Qbarang: TQuery;
    Qbarangidbarang: TStringField;
    Qbarangnamabarang: TStringField;
    Qbarangidkategori: TSmallintField;
    Qbarangsatuan: TStringField;
    Qbarangkategori: TStringField;
    Qbarangidsatuan: TSmallintField;
    DSbarang: TDataSource;
    Qkatbarang: TQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qothers: TQuery;
    btnexit: TbsSkinXFormButton;
    btnsimpan: TbsSkinButton;
    btntransaksi: TbsSkinButton;
    btnbatal: TbsSkinButton;
    Label5: TLabel;
    edtKeterangan: TEdit;
    procedure buka;
    procedure tutup;
    procedure boleh;
    procedure larang;
    procedure FormCreate(Sender: TObject);
    procedure cmbkatbarangChange(Sender: TObject);
    procedure DBGbarangDblClick(Sender: TObject);
    procedure edtidbarangChange(Sender: TObject);
    procedure edtidbarangEnter(Sender: TObject);
    procedure edtidbarangExit(Sender: TObject);
    procedure edtidbarangKeyPress(Sender: TObject; var Key: Char);
    procedure edtnamabarangChange(Sender: TObject);
    procedure edtnamabarangEnter(Sender: TObject);
    procedure edtnamabarangExit(Sender: TObject);
    procedure edtnamabarangKeyPress(Sender: TObject; var Key: Char);
    procedure DBGbarangDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnsimpanClick(Sender: TObject);
    procedure spnqtyExit(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btntransaksiClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
      pvidbarang, pvnamabarang, pvsatuan  : String;
      pvidmenu, pvidorder   : String;
      pvtambah  : Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpenyesuaian: Tfpenyesuaian;

implementation

uses unit1, unit3;

{$R *.dfm}

procedure Tfpenyesuaian.boleh;
begin
  edtidbarang.Enabled := True;
  edtnamabarang.Enabled := True;
  spnqty.Enabled := True;
 
end;

procedure Tfpenyesuaian.larang;
begin
  edtidbarang.Enabled := False;
  edtnamabarang.Enabled := False;
  spnqty.Enabled:= False;

end;



procedure Tfpenyesuaian.buka;
begin
  btntransaksi.Visible := True;
  btnexit.Visible := True;
  btnsimpan.Visible := False;
  btnbatal.Visible := False;
end;

procedure Tfpenyesuaian.tutup;
begin
  btnsimpan.Visible := True;
  btntransaksi.Visible := False;
  btnbatal.Visible := True;
  btnexit.Visible := False;
  
end;
procedure Tfpenyesuaian.FormCreate(Sender: TObject);
begin
  FrmInduk.pbpenyesuaian := True;

  buka;
  larang;
  pvtambah := False;
  pvidmenu := 'MMMMMMMM';
  pvidorder := 'IIIIIIII';




  Qbarang.Active := True;

  Qkatbarang.Active := False;
  Qkatbarang.SQL.Text := 'SELECT     id, kategori ' +
                         ' FROM         tkategoribarang ' +
                         ' ORDER BY kategori ';
  Qkatbarang.Active := True;

  cmbkatbarang.Clear;
  cmbkatbarang.Items.Add('ALL');
  Qkatbarang.First;
  while not (Qkatbarang.Eof) do
  begin
    cmbkatbarang.Items.Add(Qkatbarang.fieldByName('kategori').AsString);
    Qkatbarang.Next;
  end;
  cmbkatbarang.ItemIndex := 0;

  
end;

procedure Tfpenyesuaian.cmbkatbarangChange(Sender: TObject);
begin
// if not (pvtambah) then exit;
  Qbarang.Active := False;
  Qbarang.SQL.Text := ' SELECT     tbarang.idbarang, tbarang.namabarang, tbarang.idkategori, tsatuan.satuan, tkategoribarang.kategori, tbarang.idsatuan ' +
                      ' FROM         tsatuan INNER JOIN ' +
                      ' tbarang ON tsatuan.id = tbarang.idsatuan LEFT OUTER JOIN ' +
                      ' tkategoribarang ON tbarang.idkategori = tkategoribarang.id ';
                      
 if cmbkatbarang.ItemIndex <> 0 then
  begin
    Qbarang.SQL.Text := Qbarang.SQL.Text +  ' WHERE     (tkategoribarang.kategori = ' + QuotedStr(cmbkatbarang.Text) +  ' )' ;
  end;
  Qbarang.Active := True;
end;

procedure Tfpenyesuaian.DBGbarangDblClick(Sender: TObject);
begin
  if not (pvtambah) then exit;
 
  pvidbarang := Qbarangidbarang.Value;
  pvnamabarang := Qbarangnamabarang.Value;
  pvsatuan := Qbarangsatuan.Value;
  edtidbarang.Text := pvidbarang;
  edtnamabarang.Text := pvnamabarang;
  edtsatuan.Text := pvsatuan;

  spnqty.SetFocus;
  spnqty.Value := 0;
end;

procedure Tfpenyesuaian.edtidbarangChange(Sender: TObject);
begin
    if edtidbarang.Text = '' then exit;
  if edtnamabarang.Focused then exit;
  if not(Qbarang.Active) then Qbarang.Active := True;

  Qbarang.Locate('idbarang', edtidbarang.text,[loPartialKey, loCaseInsensitive]);
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure Tfpenyesuaian.edtidbarangEnter(Sender: TObject);
begin
  edtidbarang.SelectAll;  
end;

procedure Tfpenyesuaian.edtidbarangExit(Sender: TObject);
begin
   if edtidbarang.Text = '' then exit;
   
   edtidbarang.Text := Qbarangidbarang.AsString;
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure Tfpenyesuaian.edtidbarangKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13	then
  begin
     key := #0;
     Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfpenyesuaian.edtnamabarangChange(Sender: TObject);
begin
   if edtnamabarang.Text = '' then exit;
  if edtidbarang.Focused then exit;
  if not(Qbarang.Active) then Qbarang.Active := True;

  Qbarang.Locate('namabarang',edtnamabarang.Text,[loPartialKey, loCaseInsensitive]);
  edtidbarang.Text := Qbarangidbarang.AsString;
end;

procedure Tfpenyesuaian.edtnamabarangEnter(Sender: TObject);
begin
   edtnamabarang.SelectAll;
end;

procedure Tfpenyesuaian.edtnamabarangExit(Sender: TObject);
begin
  if edtnamabarang.Text = '' then exit;
   
  edtidbarang.Text := Qbarangidbarang.AsString;
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure Tfpenyesuaian.edtnamabarangKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13	then
  begin
     key := #0;
     Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfpenyesuaian.DBGbarangDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     Font.Style := [fsBold]; 
     end;
     end;
    DBGbarang.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfpenyesuaian.btnsimpanClick(Sender: TObject);
begin
// update ke tbarang_keluar
   if edtidbarang.Text = '' then
   begin
    bsSkinMessage1.MessageDlg('Barang Belum Dipilih',mtInformation,[mbOK],0);
    edtidbarang.SetFocus;
    exit;
   end;

   if edtnamabarang.Text = '' then
   begin
     bsSkinMessage1.MessageDlg('Barang Belum Dipilih', mtInformation,[mbOK],0);
     edtnamabarang.SetFocus;
     exit;
   end;

   if spnqty.Value <= 0 then
   begin
    bsSkinMessage1.MessageDlg('Data Tidak Valid',mtError,[mbOK],0);
    spnqty.SetFocus;
    Exit;
   end;

   if edtKeterangan.Text = '' then
   begin
    bsSkinMessage1.MessageDlg('Isi Keterangan Penyesuaian Barang',mtInformation,[mbOK],0);
    edtKeterangan.SetFocus;
    Exit;
   end;

    Qothers.Active := False;
    Qothers.SQL.Text := ' INSERT INTO    tbarang_keluar '+
                         '                 (idbarang, idmenu, tgl_keluar, qty, idorder, kasir, keterangan) '+
                         ' VALUES   (:idbarang, :idmenu, :tgl_keluar, :qty, :idorder, :kasir, :keterangan) ';
    Qothers.Prepare;
    Qothers.ParamByName('idbarang').AsString := pvidbarang;
    Qothers.ParamByName('idmenu').AsString := pvidmenu;
    Qothers.ParamByName('tgl_keluar').AsDateTime := Now;
    ShowMessage(DateToStr(Now));
    Qothers.ParamByName('qty').AsInteger := spnqty.Value;
    Qothers.ParamByName('idorder').AsString := pvidorder;
    Qothers.ParamByName('kasir').AsString := FrmInduk.pbidkasir;
    Qothers.ParamByName('keterangan').AsString := edtKeterangan.Text;
    Qothers.ExecSQL;

buka;
edtKeterangan.Clear;
pvtambah := False;
larang;

end;



procedure Tfpenyesuaian.spnqtyExit(Sender: TObject);
begin
  if spnqty.Text = '' then exit;
end;

procedure Tfpenyesuaian.btnbatalClick(Sender: TObject);
begin
  pvtambah := False;
  buka;
  larang;
  Exit;


end;

procedure Tfpenyesuaian.btntransaksiClick(Sender: TObject);
begin
    pvtambah := True;
    tutup;
    boleh;
    edtidbarang.Text := '';
    edtnamabarang.Text := '';
    cmbkatbarang.SetFocus;
    spnqty.Value := 0;
    edtsatuan.Text := '';
end;

procedure Tfpenyesuaian.btnexitClick(Sender: TObject);
begin
  fpenyesuaian.Close;
  FrmInduk.pbpenyesuaian := False;
  
end;

procedure Tfpenyesuaian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbpenyesuaian := False;
  Action := caFree;
end;

end.
