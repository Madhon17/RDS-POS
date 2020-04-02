unit Pajak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsMessages, DB, DBTables, Grids, DBGrids,
  StdCtrls, DBCtrls, bsSkinCtrls, ComCtrls, ExtCtrls, AEDIT, ZDataset,
  ZAbstractRODataset, ZAbstractDataset, SkinCtrls;

type
  TFormPajak = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    DataSource2: TDataSource;
    btnOk: TbsSkinButton;
    bsSkinPanel3: TbsSkinPanel;
    bsSkinPanel1: TbsSkinPanel;
    btnNumber: TbsSkinXFormButton;
    DBGrid1: TDBGrid;
    btncari: TbsSkinXFormButton;
    grpRoom: TPanel;
    Label2: TLabel;
    chktanggal: TCheckBox;
    tgl_mulai: TDateTimePicker;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    DBCheckBox1: TDBCheckBox;
    bsSkinXFormButton1: TbsSkinXFormButton;
    edtNominalAutoPajak: TAEdit;
    Label4: TLabel;
    QPajak: TZQuery;
    QPajaktanggal: TDateTimeField;
    QPajaktglstop: TDateTimeField;
    QPajakdisroom: TFloatField;
    QPajakdismenu: TFloatField;
    QPajakdisdll: TFloatField;
    QPajaktax: TFloatField;
    QPajakservice: TFloatField;
    QPajakcroom: TFloatField;
    QPajakcmenu: TFloatField;
    QPajakcother: TFloatField;
    QPajakinvoice: TStringField;
    QPajakextradiskon: TFloatField;
    QPajakpajak: TStringField;
    QPajakcalroom: TFloatField;
    QPajakcalmenu: TFloatField;
    QPajakcaldll: TFloatField;
    QPajakTotal: TFloatField;
    QPajakdiscmember: TFloatField;
    QPajakinvoice2: TStringField;
    QPajakpayment: TSmallintField;
    QPajakjenisdiskon: TSmallintField;
    QPajakorang: TSmallintField;
    QPajakCalPayment: TStringField;
    QPajaknama: TStringField;
    QPajakkasir: TStringField;
    QPajakidmember: TStringField;
    QPajakidroom: TSmallintField;
    procedure QPajakCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure btnNumberClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNominalAutoPajakEnter(Sender: TObject);
    procedure edtNominalAutoPajakExit(Sender: TObject);
    procedure bsSkinXFormButton1Click(Sender: TObject);
    procedure edtNominalAutoPajakKeyPress(Sender: TObject; var Key: Char);
  private
    sqlfilter1 : string;
    pvNominalAutoPajak : Real;
  public
    { Public declarations }
  end;

var
  FormPajak: TFormPajak;

implementation

uses Unit1;

{$R *.dfm}

procedure TFormPajak.QPajakCalcFields(DataSet: TDataSet);
begin
   QPajakcalroom.Value := QPajakcroom.Value - QPajakdisroom.Value  ;
   QPajakcalmenu.Value := QPajakcmenu.Value - QPajakdismenu.Value  ;
   QPajakcaldll.Value := QPajakcother.Value - QPajakdisdll.Value  ;
end;

procedure TFormPajak.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const IsChecked : array[Boolean] of Integer =
      (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  if DBGrid1.DataSource.DataSet.RecordCount > 0 then
  begin
    if (gdFocused in State) then
    begin
      if (Column.Field.FieldName = DBCheckBox1.DataField) then
      begin
        DBCheckBox1.Left := Rect.Left + DBGrid1.Left + 2;
        DBCheckBox1.Top := Rect.Top + DBGrid1.top + 2;
        DBCheckBox1.Width := Rect.Right - Rect.Left;
        DBCheckBox1.Height := Rect.Bottom - Rect.Top;

        DBCheckBox1.Visible := True;
      end;
    end
    else
    begin
      if Assigned(Column.Field) and (Column.Field.FieldName = DBCheckBox1.DataField) then
      begin
        DrawRect:=Rect;
        InflateRect(DrawRect,-1,-1);
        if Column.Field.AsString = '0' then
        begin
          DrawState := DFCS_BUTTONCHECK;
        end
        else
        begin
          DrawState := DFCS_BUTTONCHECK or DFCS_CHECKED;
        end;
        {
        DrawState := ISChecked[Column.Field.AsBoolean];
        }
        DBGrid1.Canvas.FillRect(Rect);
        DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect,
                         DFC_BUTTON, DrawState);
      end;
    end;
  end;
end;

procedure TFormPajak.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = Chr(9)) then Exit;

  if (DBGrid1.SelectedField.FieldName = DBCheckBox1.DataField) then
  begin
    DBCheckBox1.SetFocus;
    SendMessage(DBCheckBox1.Handle, WM_Char, word(Key), 0);    end;

end;

procedure TFormPajak.DBCheckBox1Click(Sender: TObject);
begin
  if DBCheckBox1.Checked then
     DBCheckBox1.Caption := DBCheckBox1.ValueChecked
  else
     DBCheckBox1.Caption := DBCheckBox1.ValueUnChecked;

end;

procedure TFormPajak.FormCreate(Sender: TObject);
var QnominalAutoPajak : TZQuery;
begin

  QPajak := TZQuery.Create(self);
  QPajak.Connection := modul.Database1;
  DataSource2.DataSet := QPajak;

  QnominalAutoPajak :=  TZQuery.Create(Self);
  QnominalAutoPajak.Connection := modul.Database1;
  QnominalAutoPajak.SQL.Text := ' SELECT     NominalAutoPajak '+
                                ' FROM         Tsetup ';
  QnominalAutoPajak.Active := True;
  pvNominalAutoPajak := QnominalAutoPajak.FieldByName('NominalAutoPajak').AsFloat;
  edtNominalAutoPajak.Text := FormatFloat('0,#', pvNominalAutoPajak);
  QnominalAutoPajak.Active := False;

  QnominalAutoPajak.SQL.Text := 'select invoiceRenumbering from Tsetup';
  QnominalAutoPajak.Active := True;
  if QnominalAutoPajak.FieldByName('invoiceRenumbering').AsInteger <> 1 then
  begin
    bsSkinPanel1.Visible := False;
  end;
  QnominalAutoPajak.Active := False;
  QnominalAutoPajak.Destroy;

  DBGrid1.DataSource := DataSource2;

//  QPajak.Active := True;
  DBCheckBox1.DataSource := DataSource2;
  DBCheckBox1.DataField  := 'pajak';
  DBCheckBox1.Visible    := False;
  DBCheckBox1.Color      := DBGrid1.Color;
  DBCheckBox1.Caption    := '';
  tgl_mulai.DateTime := now;
  Tgl_akhir.DateTime := now + 1;
end;

procedure TFormPajak.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPajak.DBGrid1ColExit(Sender: TObject);
begin
     if DBGrid1.SelectedField.FieldName = DBCheckBox1.DataField then
    DBCheckBox1.Visible := False

end;

procedure TFormPajak.DBGrid1DblClick(Sender: TObject);
var
  ints: string;
  QChange: TZQuery;
begin
  QChange := TZQuery.Create(self);
  QChange.Connection := modul.Database1;
  QChange.SQL.Text := 'select pajak,invoice from tpayment where (invoice  = '''+(DBGrid1.Fields[0].AsString )+ ''')';
  QChange.Active := True;
  ints := IntToStr(QChange.fieldbyname('pajak').Value );
  QChange.Locate('pajak',ints,[]);
  if ints = '1' then
  begin
       QChange.Active := false;
       QChange.SQL.Clear;
       QChange.SQL.Append('Update tpayment set pajak=0 where  (invoice  = '''+(DBGrid1.Fields[0].AsString )+ ''')');
       QChange.ExecSQL;
  end;
  if ints = '0' then
  begin
     QChange.Active := false;
     QChange.SQL.Clear;
     QChange.SQL.Append('Update tpayment set pajak=1 where  (invoice  = '''+(DBGrid1.Fields[0].AsString )+ ''')');
     QChange.ExecSQL;
  end;

  DBCheckBox1.DataSource := DataSource2;
  DBCheckBox1.DataField  := 'pajak';
  DBCheckBox1.Visible    := False;
  DBCheckBox1.Color      := DBGrid1.Color;
  DBCheckBox1.Caption    := '';
  ints := DBGrid1.Fields[0].AsString;
  QPajak.Active := False;
  QPajak.Active := True;
  QPajak.Locate('invoice',ints,[]);
end;

procedure TFormPajak.btncariClick(Sender: TObject);
begin
   QPajak.Active := False;
   QPajak.SQL.Text := 'SELECT *, croom - disroom + cmenu - dismenu + cother - disdll + tax + service - discmember - extradiskon Total, case payment when 1 then ''Cash'' when 2 then ''Card'' when 3 then ''FOC'' when 4 then ''Cancel'' when 5 then ''Correction'' end CalPayment from tpayment';

  if chktanggal.Checked then
  begin
    sqlfilter1 :=  ' WHERE ((tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +
                   ' and (tglstop <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
  end
  else
  begin
    sqlfilter1 := '';
  end;


 QPajak.SQL.Text := QPajak.SQL.Text + sqlfilter1 + ' ORDER BY tglstop ';
 QPajak.Active := True;
end;

procedure TFormPajak.btnNumberClick(Sender: TObject);
var
    ids : String;
    qInput : TZQuery;
//    noAwal : boolean;
    tanggal : String;
    idpajak : Integer;
    idorderpajak : String;
    query : TZQuery;
begin
  if QPajak.Active = False then Exit;
  if QPajak.RecordCount = 0 then Exit;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'select * from Tsetup';
  query.Active := True;

  qInput := TZQuery.Create(Self);
  qInput.Connection := modul.Database1;

  qInput.SQL.Text := 'UPDATE    tpayment SET invoice2 = null, idorder2 = null ';
  if chktanggal.Checked then
  begin
    qInput.SQL.Text :=  qInput.SQL.Text + sqlfilter1;
  end;
  qInput.ExecSQL;

  qInput.SQL.Text := 'delete from tbayar';
  if chktanggal.Checked then
  begin
    qInput.SQL.Text :=  qInput.SQL.Text + sqlfilter1;
  end;
  qInput.ExecSQL;


  //noAwal := True;
  QPajak.First;
  while not(QPajak.Eof) do
  begin
    if modul.StrToBool(QPajak.FieldByName('pajak').AsString) then
    begin

      qInput.Active := False;
      qInput.SQL.Text := ' SELECT     MAX(RIGHT(idorder, 4)) AS id  ' +
                             ' FROM         tbayar ' +
                             ' WHERE     (idorder LIKE ' + QuotedStr(FormatDateTime('yyMMdd',QPajak.FieldByName('tglstop').Value)+'%')+')';
      qInput.Active := True;
      try
        idpajak := StrToInt(qInput.FieldByName('id').Value);
      except
        idpajak := 0;
      end;
      idpajak := idpajak + 1;
      idorderpajak := FormatDateTime('yyMMdd',QPajak.FieldByName('tglstop').Value) + FormatFloat('0000', idpajak);
      qInput.Active := False;

      //NO INVOICE
      ids := FormatDateTime('VyyMMdd',QPajak.FieldByName('tglstop').Value) + FormatFloat('0000', idpajak);
      qInput.SQL.Text := ' UPDATE    tpayment '+
                         ' SET              invoice2 =  '+ QuotedStr(ids) +
                         ' , idorder2 =  '+ QuotedStr(idorderpajak) +
                         ' WHERE     (invoice = '+QuotedStr(QPajak.FieldByName('invoice').AsString)+ ')';
      qInput.ExecSQL;

      qInput.SQL.Text := 'INSERT INTO tbayar ' +
                       ' (idorder, invoice, tanggal, tglstop, payment, nama, idroom, disroom, dismenu, disdll, discmember, extradiskon, tax, service, croom, cmenu, cother, idmember, kasir, orang, jenisdiskon, taxRoom, taxMenu, taxOther, serviceRoom, serviceMenu, serviceOther' +
                       ' , voucher2_value, voucher2_value2) '+
                       'VALUES     ( '+ QuotedStr(idorderpajak) +
                       ', ' + QuotedStr(ids) +
                       ', ' + QuotedStr(FormatDateTime('yyyy-MM-dd hh:mm:ss', QPajak.FieldByName('tanggal').Value)) +
                       ', ' + QuotedStr(FormatDateTime('yyyy-MM-dd hh:mm:ss', QPajak.FieldByName('tglstop').Value)) +
                       ', ' + IntToStr(QPajak.FieldByName('payment').Value) +
                       ', ' + QuotedStr(QPajak.FieldByName('nama').Value) +
                       ', ' + IntToStr(QPajak.FieldByName('idroom').Value) +
                       ', ' + FormatFloat('0', 0) +
                       ', ' + FormatFloat('0', QPajak.FieldByName('dismenu').Value) +
                       ', ' + FormatFloat('0', QPajak.FieldByName('disdll').Value) +
                       ', ' + FormatFloat('0', QPajak.FieldByName('discmember').Value) +
                       ', ' + FormatFloat('0', QPajak.FieldByName('extradiskon').Value) +
                       ', ' + FormatFloat('0', QPajak.FieldByName('tax').Value) +
                       ', ' + FormatFloat('0', QPajak.FieldByName('service').Value) +
                       ', ' + FormatFloat('0', QPajak.FieldByName('croom').Value - QPajak.FieldByName('disroom').Value) +
                       ', ' + FormatFloat('0', QPajak.FieldByName('cmenu').Value) +
                       ', ' + FormatFloat('0', QPajak.FieldByName('cother').Value) +
                       ', ' + QuotedStr(QPajak.FieldByName('idmember').Value) +
                       ', '+ QuotedStr(QPajak.FieldByName('kasir').Value) +
                       ', ' + IntToStr(QPajak.FieldByName('orang').Value) +
                       ', '+ IntToStr(QPajak.FieldByName('jenisdiskon').Value) +
                       ', ' + FormatFloat('0', ((QPajak.FieldByName('croom').Value + (QPajak.FieldByName('croom').Value * query.FieldByName('service').AsInteger) / 100) * query.FieldByName('tax').AsInteger) / 100) +
                       ', ' + FormatFloat('0', ((QPajak.FieldByName('cmenu').Value + (QPajak.FieldByName('cmenu').Value * query.FieldByName('servicemenu').AsInteger) / 100) * query.FieldByName('taxmenu').AsInteger) / 100) +
                       ', ' + FormatFloat('0', ((QPajak.FieldByName('cother').Value + (QPajak.FieldByName('cother').Value * query.FieldByName('serviceother').AsInteger) / 100) * query.FieldByName('taxother').AsInteger) / 100) +
                       ', ' + FormatFloat('0', (QPajak.FieldByName('croom').Value * query.FieldByName('service').AsInteger) / 100) +
                       ', ' + FormatFloat('0', (QPajak.FieldByName('cmenu').Value * query.FieldByName('servicemenu').AsInteger) / 100) +
                       ', ' + FormatFloat('0', (QPajak.FieldByName('cother').Value * query.FieldByName('serviceother').AsInteger) / 100) +
                       ', ' + FormatFloat('0', (QPajak.FieldByName('voucher2_value').Value)) +
                       ', ' + FormatFloat('0', (QPajak.FieldByName('voucher2_value2').Value)) +
                       ')';
      qInput.ExecSQL;
    end;
    QPajak.Next;
  end;
  qInput.Active := False;
  qInput.Destroy;

  QPajak.Active := False;
  qpajak.Active := True;
end;

procedure TFormPajak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormPajak.edtNominalAutoPajakEnter(Sender: TObject);
begin
  edtNominalAutoPajak.Text := FormatFloat('0', pvNominalAutoPajak);
  edtNominalAutoPajak.SelectAll;
end;

procedure TFormPajak.edtNominalAutoPajakExit(Sender: TObject);
begin
  edtNominalAutoPajak.Text := FormatFloat('#,0', pvNominalAutoPajak);
end;

procedure TFormPajak.bsSkinXFormButton1Click(Sender: TObject);
var QnominalAutoPajak : TZQuery;
    x : Real;
begin
  try
    x:=StrToFloat(edtNominalAutoPajak.Text);
  except
    x:=0;
  end;
  pvNominalAutoPajak := x;
  edtNominalAutoPajak.Text := FormatFloat('#,0', pvNominalAutoPajak);

  QnominalAutoPajak :=  TZQuery.Create(Self);
  QnominalAutoPajak.Connection := modul.Database1;
  QnominalAutoPajak.SQL.Text := ' UPDATE  Tsetup '+
                                ' SET     NominalAutoPajak = ' + FloatToStr(pvNominalAutoPajak) ;

  QnominalAutoPajak.ExecSQL;
  QnominalAutoPajak.Destroy;

  bsSkinMessage1.MessageDlg('           Updated          ', mtInformation,[mbOK],0) ;
end;

procedure TFormPajak.edtNominalAutoPajakKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
  end;
  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

end.
