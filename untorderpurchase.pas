unit untorderpurchase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ComCtrls, Spin, StdCtrls, AEDIT, Grids, DBGrids,
  bsSkinCtrls, ExtCtrls, MemDS, VirtualTable, BusinessSkinForm, bsMessages;

type
  TFpurchaseOrder = class(TForm)
    Panel2: TPanel;
    btnadd: TbsSkinButton;
    btnedit: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnexit: TbsSkinButton;
    DBGrid1: TDBGrid;
    grpMenu: TPanel;
    Barang: TLabel;
    Label4: TLabel;
    edtidbarang: TAEdit;
    edtnamabarang: TAEdit;
    spnquantity: TSpinEdit;
    btnhapus: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnubah: TbsSkinButton;
    btnbatal: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    DBGrid2: TDBGrid;
    DBbarang: TDBGrid;
    btnsave: TbsSkinButton;
    btncancel: TbsSkinButton;
    edtidorder: TAEdit;
    Qidorder: TQuery;
    Qbarang: TQuery;
    Qbarangidbarang: TStringField;
    Qbarangnamabarang: TStringField;
    Qbarangharga: TFloatField;
    DSbarang: TDataSource;
    Qorder: TQuery;
    DSorder: TDataSource;
    VTorderbarang: TVirtualTable;
    Qorderidkarrequest: TStringField;
    Qorderidkonfirmasi: TStringField;
    Qordertgl_order: TDateTimeField;
    Qordertgl_perlu: TDateTimeField;
    Qordertgl_janji: TDateTimeField;
    Qordernominal: TFloatField;
    Qdistributor: TQuery;
    VTorderbarangIDbarang: TStringField;
    VTorderbarangQTY: TIntegerField;
    VTorderbarangHarga: TFloatField;
    VTorderbarangTotal: TFloatField;
    DSVirtual: TDataSource;
    Qcs: TQuery;
    Qcslogin: TStringField;
    Qcsnama: TStringField;
    Qupdate: TQuery;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Qothers: TQuery;
    Qdistributornama: TStringField;
    Qdistributorid: TSmallintField;
    Qorderidorder: TStringField;
    Qorderiddistributor: TSmallintField;
    Qkonfirmasi: TQuery;
    Qkonfirmasiid: TSmallintField;
    Qkonfirmasilogin: TStringField;
    Qkonfirmasinama: TStringField;
    Label9: TLabel;
    edtTax: TAEdit;
    Label10: TLabel;
    edtdiskon: TAEdit;
    Label11: TLabel;
    edtGrandTotal: TAEdit;
    Qordertax: TFloatField;
    Qorderdiskon: TFloatField;
    edttotal: TAEdit;
    VTorderbarangDiskon: TFloatField;
    Panel1: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    tglorder: TDateTimePicker;
    tgljanji: TDateTimePicker;
    edtidkonfirmasi: TAEdit;
    btncarikonfrm: TbsSkinButton;
    edtnamakonfirmasi: TEdit;
    cmbdistributor: TComboBox;
    edtRequest: TAEdit;
    btnrequest: TbsSkinButton;
    edtNamaRequest: TEdit;
    tglperlu: TDateTimePicker;
    Label7: TLabel;
    Memo1: TMemo;
    procedure hitung;
    procedure open;
    procedure kunci;
    procedure buka;
    procedure tutup;
    procedure boleh;
    procedure larang;
    procedure edtidbarangChange(Sender: TObject);
    procedure edtidbarangEnter(Sender: TObject);
    procedure edtidbarangExit(Sender: TObject);
    procedure edtidbarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure edtnamabarangChange(Sender: TObject);
    procedure edtnamabarangEnter(Sender: TObject);
    procedure edtnamabarangExit(Sender: TObject);
    procedure edtnamabarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtnamabarangKeyPress(Sender: TObject; var Key: Char);
    procedure btnaddClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnubahClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBbarangDblClick(Sender: TObject);
    procedure DBbarangDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBbarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBbarangKeyPress(Sender: TObject; var Key: Char);
    procedure spnquantityChange(Sender: TObject);
    procedure spnquantityEnter(Sender: TObject);
    procedure spnquantityExit(Sender: TObject);
    procedure spnquantityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cmbdistributorChange(Sender: TObject);
    procedure edtRequestChange(Sender: TObject);
    procedure edtRequestEnter(Sender: TObject);
    procedure edtRequestExit(Sender: TObject);
    procedure edtNamaRequestChange(Sender: TObject);
    procedure edtNamaRequestEnter(Sender: TObject);
    procedure edtNamaRequestExit(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnrequestClick(Sender: TObject);
    procedure btncarikonfrmClick(Sender: TObject);
    procedure edtidkonfirmasiChange(Sender: TObject);
    procedure edtidkonfirmasiEnter(Sender: TObject);
    procedure edtidkonfirmasiExit(Sender: TObject);
    procedure edtnamakonfirmasiChange(Sender: TObject);
    procedure edtnamakonfirmasiExit(Sender: TObject);
    procedure edtnamakonfirmasiEnter(Sender: TObject);
    procedure edtTaxExit(Sender: TObject);
    procedure edtdiskonExit(Sender: TObject);
    procedure edtTaxEnter(Sender: TObject);
    procedure edtdiskonEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    pvtambah, pvubah, pvadd, pvedit   : Boolean;
    tmpidbarang, pvidorder, pvidrequest, pvidkonfirmasi   : String;
    pvtotal, pvtax, pvdiskon , pvgrandtotal, pvpotongan  : Double;
    id, tmpiddistributor      : Integer;
    pvtglorder, pvtglperlu, pvtgljanji    : TDateTime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FpurchaseOrder: TFpurchaseOrder;

implementation
   uses unit1, unit3, untcarikar ;
{$R *.dfm}

procedure TFpurchaseOrder.hitung;
begin

  pvtotal := 0;
  
  VTorderbarang.First;
  while not (VTorderbarang.Eof) do
  begin
    pvtotal := pvtotal + VTorderbarangTotal.Value;
    VTorderbarang.Next;
  end;


  pvgrandtotal := pvtotal + pvtax - pvdiskon;
  edttotal.Text := FormatFloat('#,0',pvtotal);
  edtGrandTotal.Text := FormatFloat('#,0',pvgrandtotal);
  edtTax.Text := FormatFloat('#,0',pvtax);
  edtdiskon.Text := FormatFloat('#,0',pvdiskon);


end;
procedure TFpurchaseOrder.open;
begin

  btnedit.Visible:=False;
  btnsave.Visible:=True;
  btnadd.Visible:=False;
  btndelete.Visible:=False;
  btncancel.Visible:=True;
  btnexit.Visible:=False;
 // btnkeluar.Visible := true;
end;

procedure TFpurchaseOrder.kunci;
begin
  btnedit.Visible:=True;
  btnsave.Visible:=False;
  btnadd.Visible:=True;
  btndelete.Visible:=True;
  btncancel.Visible:=False;
  btnexit.Visible:=True;
 // btnkeluar.Visible := False;
end;


procedure TFpurchaseOrder.boleh;
begin
  edtidbarang.Enabled := True;
  edtnamabarang.Enabled := True;
  spnquantity.Enabled := True;
end;

procedure TFpurchaseOrder.larang;
begin
  edtidbarang.Enabled := False;
  edtnamabarang.Enabled := False;
  spnquantity.Enabled := False;

end;
procedure TFpurchaseOrder.buka;
begin
  btnubah.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;

end;

procedure TFpurchaseOrder.tutup;
begin
  btnubah.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;

end;


procedure TFpurchaseOrder.edtidbarangChange(Sender: TObject);
begin
   if edtidbarang.Text = '' then exit;
  if edtnamabarang.Focused then exit;
  if not(Qbarang.Active) then Qbarang.Active := True;

  Qbarang.Locate('idbarang', edtidbarang.text,[loPartialKey, loCaseInsensitive]);
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure TFpurchaseOrder.edtidbarangEnter(Sender: TObject);
begin
   DBbarang.Visible := True;
  edtidbarang.SelectAll;
end;

procedure TFpurchaseOrder.edtidbarangExit(Sender: TObject);
begin
     if edtidbarang.Text = '' then exit;

   edtidbarang.Text := Qbarangidbarang.AsString;
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure TFpurchaseOrder.edtidbarangKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = vk_down then
  begin
    Qbarang.Next;
    edtidbarang.Text := Qbarangidbarang.AsString;
    edtnamabarang.Text := Qbarangnamabarang.AsString;
    edtidbarang.SelectAll;
  end;

  if key = vk_up then
  begin
    Qbarang.Prior;
    edtidbarang.Text := Qbarangidbarang.AsString;
    edtnamabarang.Text := Qbarangnamabarang.AsString;
    edtidbarang.SelectAll;
  end;

  if key = VK_RETURN	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFpurchaseOrder.TKN13(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
  begin
     Key := #0;
     if edtidbarang.Text = '' then edtnamabarang.SetFocus
     else
     begin
     DBbarang.Visible := False;
     if spnquantity.Value = 0 then spnquantity.Value :=1;
      spnquantity.SetFocus;
     end;
  end;
end;

procedure TFpurchaseOrder.edtnamabarangChange(Sender: TObject);
begin
   if edtnamabarang.Text = '' then exit;
  if edtidbarang.Focused then exit;
  if not(Qbarang.Active) then Qbarang.Active := True;

  Qbarang.Locate('namabarang',edtnamabarang.Text,[loPartialKey, loCaseInsensitive]);
  edtidbarang.Text := Qbarangidbarang.AsString;
end;

procedure TFpurchaseOrder.edtnamabarangEnter(Sender: TObject);
begin
  edtnamabarang.SelectAll;
end;

procedure TFpurchaseOrder.edtnamabarangExit(Sender: TObject);
begin
   if edtnamabarang.Text = '' then exit;
  edtidbarang.Text := Qbarangidbarang.AsString;
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure TFpurchaseOrder.edtnamabarangKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = vk_down then
     begin
       Qbarang.Next;
       edtidbarang.Text := Qbarangidbarang.AsString;
       edtnamabarang.Text := Qbarangnamabarang.AsString;
     end;

     if key = vk_up then
     begin
       Qbarang.Prior;
       edtidbarang.Text := Qbarangidbarang.AsString;
       edtnamabarang.Text := Qbarangnamabarang.AsString;
     end;


  if key = VK_RETURN	then
  begin

    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFpurchaseOrder.edtnamabarangKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
  begin
    Key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
    if spnquantity.Value = 0 then spnquantity.Value :=1;
    spnquantity.SetFocus;
  end;
end;

procedure TFpurchaseOrder.btnaddClick(Sender: TObject);
begin
  Panel2.Visible := False;
  pvgrandtotal := 0;
  pvdiskon := 0;
  pvtotal := 0;
  pvtax := 0;

  open;
  grpMenu.Visible := True;
  pvadd := True;
  edtidorder.Visible := False;
  VTorderbarang.Active := True;
  VTorderbarang.Clear;
  btntambah.SetFocus;
  Qcs.Active := True;
  tglorder.DateTime := Now;
  tgljanji.DateTime := Now;
  tglperlu.DateTime := Now;
   hitung;
end;

procedure TFpurchaseOrder.btnexitClick(Sender: TObject);
begin
  FpurchaseOrder.Close;
end;

procedure TFpurchaseOrder.btntambahClick(Sender: TObject);
begin
  pvtambah := True;
  buka;
  boleh;
  edtidbarang.SetFocus;
  spnquantity.Value := 0;
  edtidbarang.Text := '';
  edtnamabarang.Text := '';
end;

procedure TFpurchaseOrder.btnubahClick(Sender: TObject);
begin
   if VTorderbarang.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Ada', mtError,[mbOK],0 );
    Exit;
  end;
  
  buka;
  boleh;
  pvubah := True;
  spnquantity.SetFocus;
  VTorderbarang.Edit;
  edtidbarang.Text := VTorderbarangIDbarang.Value;
 // edtidbarangChange(sender);}
  spnquantity.Value := VTorderbarangQTY.Value;
  tmpidbarang := VTorderbarangIDbarang.Value;

end;

procedure TFpurchaseOrder.btnhapusClick(Sender: TObject);
begin
   if VTorderbarang.RecordCount = 0 then
  begin
    Exit;
  end;
   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
    VTorderbarang.Delete;
   hitung;
end;

procedure TFpurchaseOrder.btnbatalClick(Sender: TObject);
begin
   tutup;
  larang;
  pvtambah := False;
  pvubah := False;
end;

procedure TFpurchaseOrder.btnsimpanClick(Sender: TObject);
begin

  if edtidbarang.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Lengkap',mtError,[mbOK],0);
    edtidbarang.SetFocus;
    Exit;
  end;

  if spnquantity.Value <= 0 then
  begin
    bsSkinMessage1.MessageDlg('Data salah ', mtError,[mbOK],0);
    spnquantity.SetFocus;
    exit;
  end;

  VTorderbarang.Active := True;
  if VTorderbarang.Locate('idbarang',edtidbarang.Text,[loPartialKey, loCaseInsensitive]) then
  begin
    if pvtambah then
    begin
      VTorderbarang.Edit;
      VTorderbarangQTY.Value := VTorderbarangQTY.Value + spnquantity.Value;
      VTorderbarangTotal.Value := VTorderbarangHarga.Value * spnquantity.Value;
      VTorderbarang.Post;
    end
    else
    if pvubah then
    begin
      VTorderbarang.Edit;
      VTorderbarangQTY.Value := spnquantity.Value;
      VTorderbarangTotal.Value := spnquantity.Value * VTorderbarangHarga.Value;
      VTorderbarang.Post;
    end;
  end
  else
  begin
    VTorderbarang.Active := True;
    VTorderbarang.Append;
    VTorderbarangIDbarang.Value := edtidbarang.Text;
    VTorderbarangQTY.Value := spnquantity.Value;
    VTorderbarangHarga.Value := Qbarangharga.Value;
    VTorderbarangTotal.Value := Qbarangharga.Value * spnquantity.Value;
    VTorderbarang.Post;
  end;

   hitung;
   pvtambah := False;
   pvubah := False;
   tutup;
   larang;
   btntambah.SetFocus;
   DBbarang.Visible := False;

end;

procedure TFpurchaseOrder.btncancelClick(Sender: TObject);
begin
  kunci;
  grpMenu.Visible := False;
  pvadd := False;
  pvedit := False;
  Panel2.Visible := True;
end;

procedure TFpurchaseOrder.btnsaveClick(Sender: TObject);

begin
  cmbdistributorChange(sender);
  

  if VTorderbarang.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('Barang Yang DiRequest Tidak Ada',mtError,[mbOK],0);
    btntambah.SetFocus;
    exit;
  end;

  if edtRequest.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Lengkap',mtInformation,[mbOK],0);
    edtRequest.SetFocus;
    Exit;
  end;

  if pvedit then
  begin
    Qothers.Active := False;
    Qothers.SQL.Text := ' DELETE from torderpurchase ' +
                        ' WHERE (idorder= ' + QuotedStr(pvidorder) + ')';
    Qothers.ExecSQL;
  end;
  // sampe
 {
  VTorderbarang.First;
  while not (VTorderbarang.Eof) do
  begin
    pvtotal := pvtotal + VTorderbarangTotal.Value;
    VTorderbarang.Next;
  end;        }


  if pvedit then
  begin
    Qothers.Active := False;
    Qothers.SQL.Text := ' UPDATE torder' +
                        ' SET tgl_order = ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', tglorder.DateTime)) +
                        ' ,   tgl_perlu =  ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', tglperlu.DateTime)) +
                        ' ,   tgl_janji = ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', tgljanji.DateTime)) +
                        ' ,   idkarrequest = ' + QuotedStr(edtRequest.Text ) +
                        ' ,   idkonfirmasi = ' + QuotedStr(edtidkonfirmasi.Text) +
                        ' ,   nominal= ' + FloatToStr(pvgrandtotal) +
                        ' ,   diskon= ' + FloatToStr(pvdiskon) +
                        ' ,   tax= ' + FloatToStr(pvtax) +
                        ' ,   keterangan= ' + QuotedStr(Memo1.Text) +
                        ' WHERE (idorder= ' + QuotedStr(pvidorder) + ')';
    Qothers.ExecSQL;
  end;

  if pvadd then
  begin
    Qidorder.Active := False;
    Qidorder.SQL.Text := ' SELECT     MAX(RIGHT(idorder, 4)) AS id  ' +
                         ' FROM         torder ' +
                         ' WHERE     (idorder LIKE ' + QuotedStr(FormatDateTime('OPyyMMdd',Now)+'%')+')';
    Qidorder.Active := True;
    try
      id := StrToInt(Qidorder.FieldByName('id').Value);
    except
      id :=0;
    end;
    id := id+1;
    pvidorder := FormatDateTime('OPyyMMdd',Now) + FormatFloat('0000',id);
    edtidorder.Text := pvidorder;
   end;


// simpan ke trequestbarang
   VTorderbarang.First;
  while not (VTorderbarang.Eof) do
  begin
    Qupdate.Active := False;
    Qupdate.SQL.Text := ' INSERT INTO    torderpurchase '+
                          ' (idorder, idbarang, qty, harga) '+
                          ' VALUES   (:idorder, :idbarang, :qty, :harga ) ';

    Qupdate.Prepare;
    Qupdate.ParamByName('idorder').AsString := pvidorder;
    Qupdate.ParamByName('idbarang').AsString := VTorderbarangIDbarang.Value ;
    Qupdate.ParamByName('qty').AsInteger := VTorderbarangQTY.Value;
    Qupdate.ParamByName('harga').AsFloat := VTorderbarangHarga.Value;
    Qupdate.ExecSQL;
     VTorderbarang.Next;

  end;



//simpan ke Trequest
  if pvadd then
  begin
  Qupdate.Active := False;
  Qupdate.SQL.Text := ' INSERT INTO    torder '+
                          ' (idorder, tgl_order, tgl_perlu, tgl_janji, idkarrequest, kasir, nominal, iddistributor, idkonfirmasi, diskon, tax, keterangan) '+
                          ' VALUES   (:idorder, :tgl_order, :tgl_perlu, :tgl_janji, :idkarrequest, :kasir, :nominal, :iddistributor, :idkonfirmasi, :diskon, :tax, :keterangan ) ';
   Qupdate.Prepare;
   Qupdate.ParamByName('idorder').AsString := pvidorder;
   Qupdate.ParamByName('tgl_order').AsDateTime := tglorder.DateTime;
   Qupdate.ParamByName('tgl_perlu').AsDateTime := tglperlu.DateTime;
   Qupdate.ParamByName('tgl_janji').AsDateTime := tgljanji.DateTime;
   Qupdate.ParamByName('idkarrequest').AsString := edtRequest.Text;
   Qupdate.ParamByName('kasir').AsString := FrmInduk.pbidkasir;
   Qupdate.ParamByName('nominal').AsFloat := pvgrandtotal;
   Qupdate.ParamByName('iddistributor').AsInteger := tmpiddistributor;
   Qupdate.ParamByName('idkonfirmasi').AsString := edtidkonfirmasi.Text;
   Qupdate.ParamByName('diskon').AsFloat := pvdiskon;
   Qupdate.ParamByName('tax').AsFloat := pvtax;
   Qupdate.ParamByName('keterangan').AsString := Memo1.Text;
   Qupdate.ExecSQL;

  end;

   Qorder.Active := False;
   Qorder.Active := True;
   Qorder.Locate('idorder',pvidorder, [loPartialKey,loCaseInsensitive]);


   kunci;
   pvadd := False;
   pvedit := False;
   grpMenu.Visible := False;
   Panel2.Visible := True;
end;

procedure TFpurchaseOrder.FormCreate(Sender: TObject);
begin
 

  Qkonfirmasi.Active := True;
  larang;
  tutup;
  Qbarang.Active := True;
  Qorder.Active := True;
  VTorderbarang.Active := False;

  qdistributor.Active := False;
  Qdistributor.SQL.Text := 'SELECT     nama, id ' +
                           'FROM         tdistributor '  +
                           ' order by id ' ;
  Qdistributor.Active := True;
  cmbdistributor.Clear;
  Qdistributor.First;
  while not (Qdistributor.eof) do
  begin
    cmbdistributor.Items.Add(Qdistributor.fieldByName('nama').AsString);
    Qdistributor.Next;
  end;
  cmbdistributor.ItemIndex := 0;

end;

procedure TFpurchaseOrder.DBbarangDblClick(Sender: TObject);
begin
   edtidbarang.Text := Qbarangidbarang.AsString;
  edtnamabarang.Text := Qbarangnamabarang.AsString;
  DBbarang.Visible := False;
  spnquantity.SetFocus;
  spnquantity.Value := 1;
  spnquantity.SelectAll;
end;

procedure TFpurchaseOrder.DBbarangDrawColumnCell(Sender: TObject;
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
    DBbarang.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFpurchaseOrder.DBbarangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_down then
  begin
    Qbarang.Next;
    edtidbarang.Text := Qbarangidbarang.AsString;
    edtnamabarang.Text := Qbarangnamabarang.AsString;
  end;

  if key = vk_up then
  begin
    Qbarang.Prior;
    edtidbarang.Text := Qbarangidbarang.AsString;
    edtnamabarang.Text := Qbarangnamabarang.AsString;
  end;
end;

procedure TFpurchaseOrder.DBbarangKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13	then
  begin
    Key := #0;
    DBbarangDblClick(sender);
  end;
end;

procedure TFpurchaseOrder.spnquantityChange(Sender: TObject);
begin
   if  not pvtambah then exit ;
  if spnquantity.Text = '' then exit;
end;

procedure TFpurchaseOrder.spnquantityEnter(Sender: TObject);
begin
   spnquantity.SelectAll;
end;

procedure TFpurchaseOrder.spnquantityExit(Sender: TObject);
begin
   if spnquantity.Text = '' then spnquantity.Value := 1;
end;

procedure TFpurchaseOrder.spnquantityKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = vk_return then btnsimpanClick(Sender);
end;

procedure TFpurchaseOrder.DBGrid2DrawColumnCell(Sender: TObject;
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

procedure TFpurchaseOrder.cmbdistributorChange(Sender: TObject);
begin
  Qothers.Active := False;
  Qothers.SQL.Text := ' SELECT     id  '  +
                  ' FROM         tdistributor ' +
                  ' WHERE     (nama = ' + QuotedStr(cmbdistributor.Text) + ') ' ;
  Qothers.Active := True;
  tmpiddistributor := Qothers.fieldByname('id').AsInteger;
end;

procedure TFpurchaseOrder.edtRequestChange(Sender: TObject);
begin
   if edtRequest.Text = '' then exit;
  if not (Qcs.Active) then Qcs.Active := True;
  Qcs.Locate('login', edtRequest.Text, [loPartialKey,loCaseInsensitive]);
//  edtNamaRequest.Text := Qcsnama.AsString;
end;

procedure TFpurchaseOrder.edtRequestEnter(Sender: TObject);
begin
   edtRequest.SelectAll;
end;

procedure TFpurchaseOrder.edtRequestExit(Sender: TObject);
begin
  if edtRequest.Text = '' then exit;
  Qcs.Locate('login', edtRequest.Text, [loPartialKey, loCaseInsensitive]);
  edtNamaRequest.Text := Qcsnama.AsString;
end;

procedure TFpurchaseOrder.edtNamaRequestChange(Sender: TObject);
begin
  if edtNamaRequest.Text = '' then exit;
  if edtRequest.Focused then exit;
  if not(Qkonfirmasi.Active) then Qkonfirmasi.Active := True;
  Qkonfirmasi.Locate('nama',edtNamaRequest.Text,[loPartialKey, loCaseInsensitive]);
  edtRequest.Text := Qkonfirmasilogin.AsString;
end;

procedure TFpurchaseOrder.edtNamaRequestEnter(Sender: TObject);
begin
  edtNamaRequest.SelectAll;
end;

procedure TFpurchaseOrder.edtNamaRequestExit(Sender: TObject);
begin
  if edtNamaRequest.Text = '' then exit;
    Qkonfirmasi.Locate('nama', edtNamaRequest.Text, [loPartialKey, loCaseInsensitive]);
  edtRequest.Text := Qkonfirmasilogin.AsString;
  edtNamaRequest.Text := Qkonfirmasinama.AsString;
end;

procedure TFpurchaseOrder.btndeleteClick(Sender: TObject);
begin
  if Qorder.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Ada', mtError,[mbOK],0);
    Exit;
  end;

   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
   begin

    Qothers.Active := False;
    Qothers.SQL.Text := ' DELETE From torder' +
                        ' WHERE (idorder= ' + QuotedStr(Qorderidorder.Text) + ')';
    Qothers.ExecSQL;


    Qothers.Active := False;
    Qothers.SQL.Text := ' DELETE From torderpurchase ' +
                       ' WHERE (idorder= ' + QuotedStr(Qorderidorder.Text) + ')';
    Qothers.ExecSQL;

    Qorder.Active := False;
    Qorder.Active := True;
   end;
end;

procedure TFpurchaseOrder.btneditClick(Sender: TObject);
begin
  Panel2.Visible := False;
   if Qorder.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Ada', mtError,[mbOK],0);
    Exit;
  end;

   VTorderbarang.Active := True;
   pvedit := True;
   open;
   grpMenu.Visible := True;

  pvtglorder := Qordertgl_order.Value;
  pvtglperlu := Qordertgl_perlu.Value;
  pvtgljanji := Qordertgl_janji.Value;
  pvtax := Qordertax.Value;
  pvdiskon := Qorderdiskon.Value;
  pvgrandtotal := Qordernominal.Value;

  edtRequest.Text := Qorderidkarrequest.Value;
  edtidkonfirmasi.Text := Qorderidkonfirmasi.Value;
  edtRequestExit(sender);
  edtidkonfirmasiExit(sender);
  tglorder.DateTime := pvtglorder;
  tglperlu.DateTime := pvtglperlu;
  tgljanji.DateTime := pvtgljanji;


  pvidorder := Qorderidorder.Value;
  edtidorder.Text := pvidorder;
  edtidorder.Visible := True;

  Qothers.Active := False;
  Qothers.SQL.Text := ' SELECT idbarang, qty, harga ' +
                      ' FROM torderpurchase ' +
                      ' WHERE (idorder = ' + QuotedStr(pvidorder) + ')';
  Qothers.Active := True;
  VTorderbarang.Clear;
  Qothers.First;
  while not (Qothers.eof) do
  begin
    VTorderbarang.Append;
    VTorderbarangIDbarang.Value := Qothers.fieldByName('idbarang').AsString;
    VTorderbarangHarga.Value := Qothers.fieldByName('harga').AsFloat;
    VTorderbarangQTY.Value := Qothers.fieldByName('qty').AsInteger;
    VTorderbarangTotal.Value :=Qothers.fieldByName('qty').AsInteger * Qothers.fieldByName('harga').AsFloat;
    VTorderbarang.Post;
    Qothers.Next;
  end;

  hitung;
end;

procedure TFpurchaseOrder.btnrequestClick(Sender: TObject);
begin
  Application.CreateForm(TFcarikar,Fcarikar);
  Fcarikar.pborderidkarrequest := True;
  Fcarikar.ComboBox1.ItemIndex := 0;
  Fcarikar.ComboBox1Click(Sender);
  FrmInduk.Enabled := False;
end;

procedure TFpurchaseOrder.btncarikonfrmClick(Sender: TObject);
begin
  Application.CreateForm(TFcarikar,Fcarikar);
  Fcarikar.pborderidkonfirmasi := True;
  Fcarikar.ComboBox1.ItemIndex := 0;
  Fcarikar.ComboBox1Click(Sender);
  FrmInduk.Enabled := False;
end;

procedure TFpurchaseOrder.edtidkonfirmasiChange(Sender: TObject);
begin
  if edtidkonfirmasi.Text = '' then exit;
 { if not (Qkonfirmasi.Active) then Qkonfirmasi.Active := True; }
  Qkonfirmasi.Locate('login', edtidkonfirmasi.Text, [loPartialKey,loCaseInsensitive]);
 // edtnamakonfirmasi.Text := Qkonfirmasinama.AsString;
end;

procedure TFpurchaseOrder.edtidkonfirmasiEnter(Sender: TObject);
begin
   edtidkonfirmasi.SelectAll;
end;

procedure TFpurchaseOrder.edtidkonfirmasiExit(Sender: TObject);
begin
   if edtidkonfirmasi.Text = '' then exit;
  Qkonfirmasi.Locate('login', edtidkonfirmasi.Text, [loPartialKey, loCaseInsensitive]);
  edtnamakonfirmasi.Text := Qkonfirmasinama.AsString;
end;

procedure TFpurchaseOrder.edtnamakonfirmasiChange(Sender: TObject);
begin
   if edtnamakonfirmasi.Text = '' then exit;
  if edtidkonfirmasi.Focused then exit;
  if not(Qcs.Active) then Qcs.Active := True;
  Qcs.Locate('nama',edtnamakonfirmasi.Text,[loPartialKey, loCaseInsensitive]);
  edtidkonfirmasi.Text := Qcslogin.AsString;
end;

procedure TFpurchaseOrder.edtnamakonfirmasiExit(Sender: TObject);
begin
   if edtnamakonfirmasi.Text = '' then exit;
    Qcs.Locate('nama', edtnamakonfirmasi.Text, [loPartialKey, loCaseInsensitive]);
  edtidkonfirmasi.Text := Qcslogin.AsString;
  edtnamakonfirmasi.Text := Qcsnama.AsString;
end;

procedure TFpurchaseOrder.edtnamakonfirmasiEnter(Sender: TObject);
begin
  edtnamakonfirmasi.SelectAll;
end;

procedure TFpurchaseOrder.edtTaxExit(Sender: TObject);
begin
  if edtTax.Text = '' then exit;
  pvtax := StrToFloat(edtTax.Text);
  hitung;
end;

procedure TFpurchaseOrder.edtdiskonExit(Sender: TObject);
   var x : Real;
begin
  if edtdiskon.Text = '' then exit;
  try
    x:=StrToFloat(edtdiskon.Text);
  except
    x:=0;
  end;
  if x > pvtotal then
      x:=pvtotal;

  pvdiskon := x;
  hitung;
end;

procedure TFpurchaseOrder.edtTaxEnter(Sender: TObject);
begin
  edtTax.SelectAll;
end;

procedure TFpurchaseOrder.edtdiskonEnter(Sender: TObject);
begin
  edtdiskon.SelectAll;
end;

procedure TFpurchaseOrder.DBGrid1DrawColumnCell(Sender: TObject;
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

end.
