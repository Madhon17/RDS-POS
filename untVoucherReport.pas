unit untVoucherReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, Grids, DBGrids, DB, DBTables,
  ComCtrls, bsSkinCtrls, StdCtrls, AEDIT, ZDataset, RpDefine, RpCon,
  RpConDS, ZAbstractRODataset, ZAbstractDataset;

type
  TfVoucherReport = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    lvVoucher: TListView;
    btncari: TbsSkinXFormButton;
    printbsSkinXFormButton: TbsSkinXFormButton;
    tutupbsSkinXFormButton: TbsSkinXFormButton;
    queryZQuery: TZQuery;
    reportRvDataSetConnection: TRvDataSetConnection;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    tanggalCheckBox: TCheckBox;
    tanggalDateTimePicker: TDateTimePicker;
    tanggal2DateTimePicker: TDateTimePicker;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    paymentAEdit: TAEdit;
    nominalAEdit: TAEdit;
    hargaAEdit: TAEdit;
    queryZQuerytglstop: TDateTimeField;
    queryZQueryvoucher2_name: TStringField;
    queryZQueryvoucher2_code: TStringField;
    queryZQueryvoucher2_name2: TStringField;
    queryZQueryvoucher2_value: TFloatField;
    queryZQueryvoucher2_value2: TFloatField;
    voucherCheckBox: TCheckBox;
    voucherComboBox: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure lvVoucherEditing(Sender: TObject; Item: TListItem;
      var AllowEdit: Boolean);
    procedure btncariClick(Sender: TObject);
    procedure tutupbsSkinXFormButtonClick(Sender: TObject);
    procedure printbsSkinXFormButtonClick(Sender: TObject);
  private
    procedure search();
  public
    { Public declarations }
  end;

var
  fVoucherReport: TfVoucherReport;

implementation

uses Unit1, Unit3;

{$R *.dfm}


procedure TfVoucherReport.FormCreate(Sender: TObject);
var
  query : TZQuery;
begin

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'select * from tvoucher';
  query.Active := True;
  query.First;
  while query.Eof = False do
  begin
    voucherComboBox.Items.Add(query.FieldByName('name').AsString);
    query.Next;
  end;

  queryZQuery.Connection := modul.Database1;

  tanggalCheckBox.Checked := True;
  tanggalDateTimePicker.DateTime := Now;
  tanggal2DateTimePicker.DateTime := tanggalDateTimePicker.DateTime;

  search();
end;

procedure TfVoucherReport.search();
var
  query : TZQuery;
  whereCondition: String;
  paymentCount: Integer;
  valueTotal: Double;
  value2Total: Double;
  value: Double;
  value2: Double;
  li: TListItem;
begin

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  paymentCount := 0;
  valueTotal := 0;
  value2Total := 0;
  queryZQuery.Active := False;
  queryZQuery.SQL.Text := 'select * from tpayment';
  whereCondition := ' payment in (7,8,9)';
  if tanggalCheckBox.Checked then
  begin
    if whereCondition <> '' then
    begin
      whereCondition := whereCondition + ' and ';
    end;
    whereCondition := whereCondition + ' tglstop>=''' + FormatDateTime('yyyy-MM-dd', tanggalDateTimePicker.Date) + ' 06:00:00''';
    whereCondition := whereCondition + ' and tglstop<''' + FormatDateTime('yyyy-MM-dd', tanggal2DateTimePicker.Date) + ' 06:00:00''';
  end;
  if voucherCheckBox.Checked then
  begin
    if voucherComboBox.ItemIndex > -1 then
    begin
      query.SQL.Text := 'select * from tvoucher';
      query.Active := True;
      if whereCondition <> '' then
      begin
        whereCondition := whereCondition + ' and ';
      end;
      whereCondition := whereCondition + ' voucher2_id=' + IntToStr(query.FieldByName('id').AsInteger);
      query.Active := False;
    end;
  end;
  queryZQuery.SQL.Text := queryZQuery.SQL.Text + ' where ' + whereCondition;
  queryZQuery.Active := True;
  lvVoucher.Items.Clear;
  queryZQuery.First;
  while queryZQuery.Eof = False do
  begin
    value := queryZQuery.FieldByName('voucher2_value').AsFloat;
    value2 := queryZQuery.FieldByName('voucher2_value2').AsFloat;
    li := lvVoucher.Items.Add;
    li.Caption := FormatDateTime('yyyy-MM-dd HH:mm', queryZQuery.FieldByName('tglstop').AsDateTime);
    li.SubItems.Add(queryZQuery.FieldByName('voucher2_name').AsString);
    li.SubItems.Add(queryZQuery.FieldByName('voucher2_code').AsString);
    li.SubItems.Add(queryZQuery.FieldByName('voucher2_name2').AsString);
    li.SubItems.Add(FormatFloat('#,0', value));
    li.SubItems.Add(FormatFloat('#,0', value2));
    paymentCount := paymentCount + 1;
    valueTotal := valueTotal + value;
    value2Total := value2Total + value2;
    queryZQuery.Next;
  end;
  paymentAEdit.Text := Format('%u', [paymentCount]);
  nominalAEdit.Text := FormatFloat('#,0', valueTotal);
  hargaAEdit.Text := FormatFloat('#,0', value2Total)
end;

procedure TfVoucherReport.lvVoucherEditing(Sender: TObject; Item: TListItem;
  var AllowEdit: Boolean);
begin
  AllowEdit := False;
end;

procedure TfVoucherReport.btncariClick(Sender: TObject);
begin
  search();
end;

procedure TfVoucherReport.tutupbsSkinXFormButtonClick(Sender: TObject);
begin
  Close();
end;

procedure TfVoucherReport.printbsSkinXFormButtonClick(Sender: TObject);
begin
  FrmInduk.RvProject1.SetParam('dateRange', 'Tanggal ' + FormatDateTime('d MMM yyyy', tanggalDateTimePicker.Date) + ' - ' + FormatDateTime('d MMM yyyy', tanggal2DateTimePicker.Date));
  FrmInduk.RvProject1.SetParam('paymentCount', paymentAEdit.Text);
  FrmInduk.RvProject1.SetParam('valueTotal', nominalAEdit.Text);
  FrmInduk.RvProject1.SetParam('value2Total', hargaAEdit.Text);
  FrmInduk.RvProject1.ExecuteReport('voucherReport');
end;

end.
