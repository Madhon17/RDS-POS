unit untVoucher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, Grids, DBGrids, DB, DBTables,
  ComCtrls, bsSkinCtrls, StdCtrls, AEDIT, ZDataset, ExtCtrls;

type
  TfVoucher = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    lvVoucher: TListView;
    btnHapus: TbsSkinButton;
    Kategori: TLabel;
    Label1: TLabel;
    btnSave: TbsSkinButton;
    edtNama: TEdit;
    edtFee: TEdit;
    Label2: TLabel;
    edtDiscount: TEdit;
    btnTambah: TbsSkinButton;
    Panel1: TPanel;
    Label3: TLabel;
    edtContohNominal: TEdit;
    Label4: TLabel;
    edtContohFee: TEdit;
    Label5: TLabel;
    edtContohDiscount: TEdit;
    Label6: TLabel;
    edtContohBayar: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure lvVoucherClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure lvVoucherEditing(Sender: TObject; Item: TListItem;
      var AllowEdit: Boolean);
    procedure edtFeeKeyPress(Sender: TObject; var Key: Char);
    procedure edtDiscountKeyPress(Sender: TObject; var Key: Char);
    procedure edtFeeChange(Sender: TObject);
    procedure edtDiscountChange(Sender: TObject);
  private
    { Private declarations }
    function validateInput():boolean;
    procedure hitung();
  public
    { Public declarations }
  end;

var
  fVoucher: TfVoucher;

implementation

uses Unit1;

{$R *.dfm}


procedure TfVoucher.FormCreate(Sender: TObject);
var
  query: TZQuery;
  li: TListItem;
begin

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'select * from tvoucher';
  query.Active := True;
  query.First;
  while query.Eof = False do
  begin
    li := lvVoucher.Items.Add;
    li.Caption := query.FieldByName('id').AsString;
    li.SubItems.Add(query.FieldByName('name').AsString);
    li.SubItems.Add(query.FieldByName('fee').AsString);
    li.SubItems.Add(query.FieldByName('discount').AsString);
    query.Next;
  end;
  query.Active := False;
end;

procedure TfVoucher.btnTambahClick(Sender: TObject);
var
  query: TZQuery;
  id: integer;
  li: TListItem;
  fee: integer;
  discount: integer;
begin

  if validateInput() = false then
  begin
    exit;
  end;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  query.SQL.Text := 'SELECT COALESCE(MAX(id), 0) AS id FROM tvoucher';
  query.Active := True;
  id := query.FieldByName('id').AsInteger + 1;
  query.Active := False;

  query.SQL.Text := 'SELECT count(*) AS count FROM tvoucher where name=' + QuotedStr(edtNama.Text);
  query.Active := True;
  if query.FieldByName('count').AsInteger > 0 then
  begin
    bsSkinMessage1.MessageDlg('Nama sudah ada', mtError, [mbOK],0);
    edtNama.SetFocus;
    exit;
  end;
  query.Active := False;

  query.SQL.Text := 'insert tvoucher (id,name,fee,discount) values (' + inttostr(id) + ',' + QuotedStr(edtNama.Text) + ',' + edtFee.Text + ',' + edtDiscount.Text + ')';
  query.ExecSQL;

  li := lvVoucher.Items.Add;
  li.Caption := inttostr(id);
  li.SubItems.Add(edtNama.Text);
  li.SubItems.Add(edtFee.Text);
  li.SubItems.Add(edtDiscount.Text);

  edtNama.Text := '';
  edtFee.Text := '';
  edtDiscount.Text := '';
  
end;

procedure TfVoucher.lvVoucherClick(Sender: TObject);
begin

  if lvVoucher.Selected = nil then
  begin
    exit;
  end;

  edtNama.Text := lvVoucher.Selected.SubItems[0];
  edtFee.Text := lvVoucher.Selected.SubItems[1];
  edtDiscount.Text := lvVoucher.Selected.SubItems[2];
end;

procedure TfVoucher.btnSaveClick(Sender: TObject);
var
  query: TZQuery;
begin

  if lvVoucher.Selected = nil then
  begin
    bsSkinMessage1.MessageDlg('Pilih voucher yang akan diubah', mtError, [mbOK],0);
    exit;
  end;

  if validateInput() = false then
  begin
    exit;
  end;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  query.SQL.Text := 'SELECT count(*) AS count FROM tvoucher where name=' + QuotedStr(edtNama.Text + ' and id<>' + lvVoucher.Selected.Caption);
  query.Active := True;
  if query.FieldByName('count').AsInteger > 0 then
  begin
    bsSkinMessage1.MessageDlg('Nama sudah ada', mtError, [mbOK],0);
    edtNama.SetFocus;
    exit;
  end;
  query.Active := False;

  query.SQL.Text := 'update tvoucher set name=' + QuotedStr(edtNama.Text) + ',fee=' + edtFee.Text + ',discount=' + edtDiscount.Text + ' where id=' + lvVoucher.Selected.Caption;
  query.ExecSQL;

  lvVoucher.Selected.SubItems[0] := edtNama.Text;
  lvVoucher.Selected.SubItems[1] := edtFee.Text;
  lvVoucher.Selected.SubItems[2] := edtDiscount.Text;

end;

function TfVoucher.validateInput():boolean;
var
  fee: integer;
  discount: integer;
begin

  result := false;

  if edtNama.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Silahkan isi nama', mtError, [mbOK],0);
    edtNama.SetFocus;
    exit;
  end;

  if edtFee.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Silahkan isi fee', mtError, [mbOK],0);
    edtFee.SetFocus;
    exit;
  end;

  if edtDiscount.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Silahkan isi discount', mtError, [mbOK],0);
    edtDiscount.SetFocus;
    exit;
  end;

  try
  begin
    fee := strtoint(edtFee.Text);
    if (fee < 0) or (fee > 100) then
    begin
      bsSkinMessage1.MessageDlg('Fee out of range', mtError, [mbOK],0);
      edtFee.SetFocus;
      exit;
    end;
  end
  except
    bsSkinMessage1.MessageDlg('Fee tidak valid', mtError, [mbOK],0);
    edtFee.SetFocus;
    exit;
  end;

  try
  begin
    discount := strtoint(edtDiscount.Text);
    if (discount < 0) or (discount > 100) then
    begin
      bsSkinMessage1.MessageDlg('Discount out of range', mtError, [mbOK],0);
      edtDiscount.SetFocus;
      exit;
    end;
  end
  except
    bsSkinMessage1.MessageDlg('Discount tidak valid', mtError, [mbOK],0);
    edtDiscount.SetFocus;
    exit;
  end;

  result := true;
end;

procedure TfVoucher.btnHapusClick(Sender: TObject);
var
  query: TZQuery;
begin

  if lvVoucher.Selected = nil then
  begin
    bsSkinMessage1.MessageDlg('Pilih voucher yang akan dihapus', mtError, [mbOK],0);
    exit;
  end;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  if not( bsSkinMessage1.MessageDlg('           Hapus Data          ', mtConfirmation,[mbYes, mbNo],0) = mrYes )then
  begin
    exit;
  end;

  query.SQL.Text := 'SELECT count(*) AS count FROM tpayment where voucher2_id=' + lvVoucher.Selected.Caption;
  query.Active := True;
  if query.FieldByName('count').AsInteger > 0 then
  begin
    bsSkinMessage1.MessageDlg('Voucher sudah digunakan', mtError, [mbOK],0);
    edtNama.SetFocus;
    exit;
  end;
  query.Active := False;

  query.SQL.Text := 'delete from tvoucher where id=' + lvVoucher.Selected.Caption;
  query.ExecSQL;

  lvVoucher.Items.Delete(lvVoucher.Selected.Index);

  edtNama.Text := '';
  edtFee.Text := '';
  edtDiscount.Text := '';

end;

procedure TfVoucher.lvVoucherEditing(Sender: TObject; Item: TListItem;
  var AllowEdit: Boolean);
begin
  AllowEdit := False;
end;

procedure TfVoucher.edtFeeKeyPress(Sender: TObject; var Key: Char);
begin
  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

procedure TfVoucher.edtDiscountKeyPress(Sender: TObject; var Key: Char);
begin
  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

procedure TfVoucher.edtFeeChange(Sender: TObject);
begin
  hitung();
end;

procedure TfVoucher.hitung();
var
  nominal: double;
  feePercent: integer;
  fee: double;
  discountPercent: integer;
  discount: double;
  pay: double;
begin

  edtContohFee.Text := '';
  edtContohDiscount.Text := '';
  edtContohBayar.Text := '';

  try
  begin
    feePercent := strtoint(edtFee.Text);
  end
  except
    exit;
  end;
  if (feePercent < 0) or (feePercent > 100) then
  begin
    exit;
  end;

  try
  begin
    discountPercent := strtoint(edtDiscount.Text);
  end
  except
    exit;
  end;
  if (discountPercent < 0) or (discountPercent > 100) then
  begin
    exit;
  end;

  nominal := 100000;
  fee := (nominal * feePercent) / 100;
  discount := (nominal * discountPercent) / 100;
  pay := nominal - fee - discount;

  edtContohFee.Text := FormatFloat('#,0', fee);
  edtContohDiscount.Text := FormatFloat('#,0', discount);
  edtContohBayar.Text := FormatFloat('#,0', pay);
end;

procedure TfVoucher.edtDiscountChange(Sender: TObject);
begin
  hitung();
end;

end.
