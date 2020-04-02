unit untdetailpayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpDefine, RpCon, RpConDS, bsMessages, BusinessSkinForm, DB,
  DBTables, StdCtrls, Grids, DBGrids, AEDIT, bsSkinCtrls, ComCtrls,
  ExtCtrls, ClipBrd, ZDataset, ZAbstractRODataset, ZAbstractDataset;

type
  Tfpaymentdetailreport = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    cmbpayment: TComboBox;
    chk_payment: TCheckBox;
    chk_kasir: TCheckBox;
    chk_faktur: TCheckBox;
    edtfakturawal: TEdit;
    chk_tanggal: TCheckBox;
    edtidkasir: TEdit;
    edtnamakasir: TEdit;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    btncari: TbsSkinXFormButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtTotCash: TAEdit;
    edtTotCard: TAEdit;
    edtTotservice: TAEdit;
    edtJumPayment: TAEdit;
    edtTotPayment: TAEdit;
    DBGrid1: TDBGrid;
    btnkeluar: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    Panel3: TPanel;
    rdo_tanggal: TRadioButton;
    rdo_orderid: TRadioButton;
    rdo_nama: TRadioButton;
    rdo_Kasir: TRadioButton;
    rdo_payment: TRadioButton;
    Panel4: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edtmenucharge: TEdit;
    edtothercharge: TEdit;
    edtroomdisc: TEdit;
    edtmenudisc: TEdit;
    edtotherdisc: TEdit;
    edtmemberdisc: TEdit;
    edtservice: TEdit;
    edttax: TEdit;
    edtroomcharge: TEdit;
    edtvoucherdisc: TEdit;
    qreport: TZQuery;
    qreportidorder: TStringField;
    qreporttglstop: TDateTimeField;
    qreportpayment: TSmallintField;
    qreportnama: TStringField;
    qreportcroom: TFloatField;
    qreportcmenu: TFloatField;
    qreportcother: TFloatField;
    qreportdisroom: TFloatField;
    qreportdismenu: TFloatField;
    qreportdisdll: TFloatField;
    qreporttax: TFloatField;
    qreportservice: TFloatField;
    qreportCalTotal: TFloatField;
    qreportCalPayment: TStringField;
    qreportkasir: TStringField;
    qreportdiscmember: TFloatField;
    qreportinvoice: TStringField;
    qreportketerangan: TStringField;
    qreportextradiskon: TFloatField;
    DSreport: TDataSource;
    qkasir: TZQuery;
    Qidorder: TZQuery;
    Qother: TZQuery;
    RVdetailpayment: TRvDataSetConnection;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qcs: TZQuery;
    edtOrang: TAEdit;
    qreportorang: TSmallintField;
    chkPajak: TCheckBox;
    Label16: TLabel;
    edtRoomDuration: TEdit;
    bsSkinButton2: TbsSkinButton;
    chkPromo: TCheckBox;
    cmbPromo: TComboBox;
    qreportpromo: TStringField;
    qreportdurasi: TLargeintField;
    qreportvoucher_id: TStringField;
    Label17: TLabel;
    edtTotVoucher: TAEdit;
    qreportvoucher2_value2: TFloatField;
    qreportvoucher2_code: TStringField;
    qreportvoucher2_value: TFloatField;
    qreportvoucher2_discount: TIntegerField;
    procedure btncariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure chk_tanggalClick(Sender: TObject);
    procedure chk_paymentClick(Sender: TObject);
    procedure chk_kasirClick(Sender: TObject);
    procedure chk_fakturClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qreportCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
  private
    kode, depan: String;
    total     : Real;
    room, menu, others, roomdisc, menudisc, otherdisc, memberdisc, tax, service, extradsikon : Real;
    duration: Integer;
    totPayment : Real;
    jumPayment, jumOrang : Integer;
    wktskrng : TTime;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpaymentdetailreport: Tfpaymentdetailreport;

implementation
    uses DateUtils, unit1, unit3, untdetailreport, StrUtils;
{$R *.dfm}

procedure Tfpaymentdetailreport.btncariClick(Sender: TObject);
var
  sqlfilter, sql, sqlTable : string;
  query : TZQuery;
  totalCash, totalCard, totalFOC, totalVoucher: Real;
  payment: Integer;
begin

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  if cmbpayment.ItemIndex = 0 then chk_payment.Checked := False;
  
  qreport.Active := False;

  if chkPajak.Checked then
  begin
    sqlTable := ' tbayar ';
  end
  else
  begin
    sqlTable := ' tpayment ';
  end;

  sql := ' select ';
  sql := sql + sqlTable + '.idorder';
  sql := sql + ',' + sqlTable + '.tglstop';
  sql := sql + ',' + sqlTable + '.payment';
  sql := sql + ',' + sqlTable + '.nama';
  sql := sql + ',' + sqlTable + '.kasir';
  sql := sql + ',' + sqlTable + '.croom';
  sql := sql + ',' + sqlTable + '.cmenu';
  sql := sql + ',' + sqlTable + '.cother';
  sql := sql + ',' + sqlTable + '.disroom';
  sql := sql + ',' + sqlTable + '.dismenu';
  sql := sql + ',' + sqlTable + '.disdll';
  sql := sql + ',' + sqlTable + '.tax';
  sql := sql + ',' + sqlTable + '.service';
  sql := sql + ',' + sqlTable + '.discmember';
  sql := sql + ',' + sqlTable + '.invoice';
  sql := sql + ',' + sqlTable + '.keterangan';
  sql := sql + ',' + sqlTable + '.orang';
  sql := sql + ',' + sqlTable + '.promo';
  sql := sql + ',' + sqlTable + '.voucher_id';
  sql := sql + ',' + sqlTable + '.voucher2_discount';
  sql := sql + ',' + sqlTable + '.voucher2_code';
  sql := sql + ',' + sqlTable + '.voucher2_value';
  sql := sql + ',' + sqlTable + '.voucher2_value2';
  sql := sql + ',sum(torder_room.durasi) durasi';
  sql := sql + ' from ' + sqlTable + ' left join torder_room on torder_room.idorder = ' + sqlTable + '.idorder';
  sql := sql + ' where (' + sqlTable + '.payment <> 0) ';

  if chk_payment.Checked then
  begin
    payment := cmbpayment.ItemIndex;
    if payment > 5 then
    begin
      payment := payment + 1;
    end;
    sql := sql + ' and (' + sqlTable + '.payment = ' + IntToStr(payment) + ')';
  end;

  if chk_tanggal.Checked then
  begin
    sql := sql + ' and ((' + sqlTable + '.tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +         ' and (' + sqlTable + '.tglstop <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
  end;

  if chk_kasir.Checked then
  begin
    sql := sql + ' and (' + sqlTable + '.kasir = ' + QuotedStr(edtidkasir.Text) + ')';
  end;

  if chk_faktur.Checked then
  begin
    sql := sql + ' and (' + sqlTable + '.invoice = ' + QuotedStr(edtfakturawal.Text) + ')';
  end;

  if chkPromo.Checked then
  begin
    sql := sql + ' and (' + sqlTable + '.promo = ' + QuotedStr(cmbPromo.Text) + ')';
  end;

  sql := sql + ' group by ';
  sql := sql + sqlTable + '.idorder';
  sql := sql + ',' + sqlTable + '.tglstop';
  sql := sql + ',' + sqlTable + '.payment';
  sql := sql + ',' + sqlTable + '.nama';
  sql := sql + ',' + sqlTable + '.kasir';
  sql := sql + ',' + sqlTable + '.croom';
  sql := sql + ',' + sqlTable + '.cmenu';
  sql := sql + ',' + sqlTable + '.cother';
  sql := sql + ',' + sqlTable + '.disroom';
  sql := sql + ',' + sqlTable + '.dismenu';
  sql := sql + ',' + sqlTable + '.disdll';
  sql := sql + ',' + sqlTable + '.tax';
  sql := sql + ',' + sqlTable + '.service';
  sql := sql + ',' + sqlTable + '.discmember';
  sql := sql + ',' + sqlTable + '.invoice';
  sql := sql + ',' + sqlTable + '.keterangan';
  sql := sql + ',' + sqlTable + '.orang';
  sql := sql + ',' + sqlTable + '.promo';
  sql := sql + ',' + sqlTable + '.voucher_id';
  sql := sql + ',' + sqlTable + '.voucher2_discount';
  sql := sql + ',' + sqlTable + '.voucher2_code';
  sql := sql + ',' + sqlTable + '.voucher2_value';
  sql := sql + ',' + sqlTable + '.voucher2_value2';

  if (rdo_tanggal.Checked) then
  begin
    sql := sql +  ' ORDER BY ' + sqlTable + '.tglstop, ' + sqlTable + '.invoice';
  end
  else if (rdo_orderid.Checked) then
  begin
    sql := sql +  ' ORDER BY ' + sqlTable + '.invoice';
  end
  else if (rdo_nama.Checked) then
  begin
    sql := sql +  ' ORDER BY ' + sqlTable + '.nama, ' + sqlTable + '.invoice';
  end
  else if (rdo_Kasir.Checked) then
  begin
    sql := sql +  ' ORDER BY ' + sqlTable + '.kasir, ' + sqlTable + '.invoice';
  end
  else if (rdo_payment.Checked) then
  begin
    sql := sql +  ' ORDER BY ' + sqlTable + '.payment, ' + sqlTable + '.invoice';
  end;

  qreport.SQL.Text := sql;
  qreport.Active := True;

  Qother.SQL.Text := sql;
  Qother.Active := True;
  Qother.First;
  edtTotCash.Text := FormatFloat('#,0',0);
  edtTotCard.Text := FormatFloat('#,0',0);
  edtTotservice.Text := FormatFloat('#,0',0);
  totPayment :=0; jumPayment := 0; room := 0; menu := 0; others := 0; jumOrang := 0;
  roomdisc := 0; menudisc := 0; otherdisc := 0; memberdisc := 0; extradsikon := 0;
  tax := 0; service := 0;
  duration := 0;
  totalCash := 0;
  totalCard := 0;
  totalFOC := 0;
  totalVoucher := 0;
  while not(Qother.Eof) do
  begin
    if (Qother.FieldByName('payment').AsInteger <> 4) and (Qother.FieldByName('payment').AsInteger <> 5) then
    begin
      total := Qother.FieldByName('croom').AsFloat +
               Qother.FieldByName('cmenu').AsFloat +
               Qother.FieldByName('cother').AsFloat -
               Qother.FieldByName('disroom').AsFloat -
               Qother.FieldByName('dismenu').AsFloat -
               Qother.FieldByName('disdll').AsFloat +
               Qother.FieldByName('tax').AsFloat +
               Qother.FieldByName('service').AsFloat -
               Qother.FieldByName('discmember').AsFloat;

       room := room + Qother.FieldByName('croom').AsFloat;
       menu := menu + Qother.FieldByName('cmenu').AsFloat;
       others := others + Qother.FieldByName('cother').AsFloat;
       roomdisc := roomdisc + Qother.FieldByName('disroom').AsFloat;
       menudisc := menudisc + Qother.FieldByName('dismenu').AsFloat;
       otherdisc := otherdisc + Qother.FieldByName('disdll').AsFloat;
       tax := tax + Qother.FieldByName('tax').AsFloat;
       service := service + Qother.FieldByName('service').AsFloat;
       extradsikon := extradsikon + ((Qother.FieldByName('voucher2_value').AsFloat * Qother.FieldByName('voucher2_discount').AsInteger)) / 100;
       memberdisc := memberdisc + Qother.FieldByName('discmember').AsFloat;
       duration := duration + Qother.FieldByName('durasi').AsInteger;

      Case Qother.FieldByName('payment').AsInteger of
        1 : begin
              totalCash := totalCash + total;
              totPayment := totPayment + total;
              jumPayment := jumPayment + 1;
              jumOrang   := jumOrang + Qother.FieldByName('orang').AsInteger;
            end;
        2 : begin
              totalCard := totalCard + total;
              totPayment := totPayment + total;
              jumPayment := jumPayment + 1;
              jumOrang   := jumOrang + Qother.FieldByName('orang').AsInteger;
            end;
        3 : begin
              totalFOC := totalFOC + total;
            end;
        6 : begin
              jumPayment := jumPayment + 1;
              jumOrang   := jumOrang + Qother.FieldByName('orang').AsInteger;
              totPayment := totPayment + total;
            end;
        7 : begin
              totalVoucher := totalVoucher + Qother.FieldByName('voucher2_value2').AsFloat;
              jumPayment := jumPayment + 1;
              jumOrang   := jumOrang + Qother.FieldByName('orang').AsInteger;
              totPayment := totPayment + Qother.FieldByName('voucher2_value2').AsFloat;
            end;
        8 : begin
              totalCash := totalCash + (total - Qother.FieldByName('voucher2_value').AsFloat);
              totalVoucher := totalVoucher + Qother.FieldByName('voucher2_value2').AsFloat;
              jumPayment := jumPayment + 1;
              jumOrang   := jumOrang + Qother.FieldByName('orang').AsInteger;
              totPayment := totPayment + Qother.FieldByName('voucher2_value2').AsFloat + (total - Qother.FieldByName('voucher2_value').AsFloat);
            end;
        9 : begin
              totalCard := totalCard + (total - Qother.FieldByName('voucher2_value').AsFloat);
              totalVoucher := totalVoucher + Qother.FieldByName('voucher2_value2').AsFloat;
              jumPayment := jumPayment + 1;
              jumOrang   := jumOrang + Qother.FieldByName('orang').AsInteger;
              totPayment := totPayment + Qother.FieldByName('voucher2_value2').AsFloat + (total - Qother.FieldByName('voucher2_value').AsFloat);
            end;
      end;
    end;
    Qother.Next;
  end;
  edtTotCash.Text := FormatFloat('#,0',totalCash);
  edtTotCard.Text := FormatFloat('#,0',totalCard);
  edtTotVoucher.Text := FormatFloat('#,0', totalVoucher);
  edtTotservice.Text := FormatFloat('#,0',totalFOC);
  edtJumPayment.Text :=  FormatFloat('0', jumPayment);
  edtOrang.Text :=  FormatFloat('0', jumOrang);
  edtTotPayment.Text := FormatFloat('#,0',totPayment);
  edtroomcharge.Text := FormatFloat('#,0',room);
  edtmenucharge.Text := FormatFloat('#,0',menu);
  edtothercharge.Text := FormatFloat('#,0',others);
  edtroomdisc.Text := FormatFloat('#,0',roomdisc);
  edtmenudisc.Text := FormatFloat('#,0',menudisc);
  edtotherdisc.Text := FormatFloat('#,0',otherdisc);
  edtRoomDuration.Text := FormatFloat('#,0', duration);
  edtmemberdisc.Text := FormatFloat('#,0',memberdisc);
  edtvoucherdisc.Text := FormatFloat('#,0',extradsikon);
  edttax.Text := FormatFloat('#,0',tax);
  edtservice.Text := FormatFloat('#,0',service);
end;

procedure Tfpaymentdetailreport.FormCreate(Sender: TObject);
var query: TZQuery;
begin

  qreport.Connection := modul.Database1;
  qkasir.Connection := modul.Database1;
  Qidorder.Connection := modul.Database1;
  Qother.Connection := modul.Database1;
  Qcs.Connection := modul.Database1;

  query := TZQuery.Create(self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'select promo from tpayment where promo <> '''' and promo is not null group by promo';
  query.Active := True;
  while query.Eof = False do
  begin
    cmbPromo.Items.Add(query.FieldByName('promo').AsString);
    query.Next;
  end;

  chkPajak.Visible := FrmInduk.Pajak1.Visible;
  if chkPajak.Visible = False then
  begin
    chkPajak.Checked := True;
  end;

  kode := FrmInduk.pbidkasir;
  depan := LeftStr(kode,2);
  depan := UpperCase(depan);
  if not (depan = 'CS') then
  begin
    FrmInduk.pbpaymentdetailreport := True;
    tgl_mulai.DateTime := now;
    Tgl_akhir.DateTime := now + 1;
    chk_tanggal.Checked := True;
    chk_tanggalClick(sender);
    chk_paymentClick(sender);
    chk_kasirClick(sender);
    chk_fakturClick(sender);
    btncariClick(Sender);
  end
  else
  begin
    FrmInduk.pbpaymentdetailreport := True;
    tgl_mulai.DateTime := now;
    Tgl_akhir.DateTime := now + 1;
    chk_tanggal.Checked := True;
    wktskrng := TimeOf(now);
    if ((wktskrng >= StrToDateTime('00:00:00')) and (wktskrng <= StrToDateTime('05:59:59'))) then
    begin
      tgl_mulai.DateTime := Now-1;
      Tgl_akhir.DateTime := Now ;
    end;
    tgl_mulai.Enabled := False;
    Tgl_akhir.Enabled := False;
    waktuawal.Enabled := False;
    waktuakhir.Enabled := False;
    chk_tanggal.Enabled := False;
    btncariClick(sender);
  end;
end;

procedure Tfpaymentdetailreport.bsSkinButton1Click(Sender: TObject);
begin
  //cetak
    with FrmInduk.RvProject1 do
    begin
      SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy ', tgl_mulai.DateTime) + FormatDateTime('HH:mm ', waktuawal.Time));
      SetParam('tanggalakhir',FormatDateTime('dd MMMM yyyy ',Tgl_akhir.DateTime) + FormatDateTime('HH:mm ', waktuakhir.Time));
      SetParam('payment', cmbpayment.Text);
      SetParam('totCash', edtTotCash.Text);
      SetParam('totCard', edtTotCard.Text);
      SetParam('totService', edtTotservice.Text);
      SetParam('jmlPayment', edtJumPayment.Text);
      SetParam('jumOrang', edtOrang.Text);
      SetParam('totPayment', edtTotPayment.Text);
      SetParam('room', edtroomcharge.Text);
      SetParam('menu',edtmenucharge.Text);
      SetParam('others',edtothercharge.Text);
      SetParam('roomdisc',edtroomdisc.Text);
      SetParam('menudisc',edtmenudisc.Text);
      SetParam('otherdisc',edtotherdisc.Text);
      SetParam('memberdisc',edtmemberdisc.Text);
      SetParam('tax',edttax.Text);
      SetParam('service',edtservice.Text);
      SetParam('voucher',edtvoucherdisc.Text);
      SetParam('durasi',edtRoomDuration.Text);
      //if cmbpayment.ItemIndex <> 3 then   SetParam('average',FormatFloat('#,0',totPayment / jumPayment));
      ExecuteReport('Fpaymentdetail');
    end;
end;

procedure Tfpaymentdetailreport.btnkeluarClick(Sender: TObject);
begin
  fpaymentdetailreport.Close;
end;

procedure Tfpaymentdetailreport.chk_tanggalClick(Sender: TObject);
begin
  if not(chk_tanggal.Checked) then
  begin
    tgl_mulai.Enabled := False;
    Tgl_akhir.Enabled := False;
    waktuawal.Enabled := False;
    waktuakhir.Enabled := False;
     exit;
  end
  else
  begin
    tgl_mulai.Enabled := True;
    Tgl_akhir.Enabled := True;
    waktuawal.Enabled:= True;
    waktuakhir.Enabled := true;
  end;
end;

procedure Tfpaymentdetailreport.chk_paymentClick(Sender: TObject);
begin
  if not(chk_payment.Checked) then
  begin
    cmbpayment.Enabled := False;
     exit;
  end
  else
  begin
    cmbpayment.Enabled := True;
    cmbpayment.SetFocus;
    cmbpayment.ItemIndex := 0;
  end;
end;

procedure Tfpaymentdetailreport.chk_kasirClick(Sender: TObject);
begin
  if not(chk_kasir.Checked) then
  begin
    edtidkasir.Text := '';
    edtnamakasir.Text := '';
    edtidkasir.Enabled := False;
    edtnamakasir.Enabled := False;
    exit;
  end
  else
  edtidkasir.Enabled := True;
  edtnamakasir.Enabled := True;
end;

procedure Tfpaymentdetailreport.chk_fakturClick(Sender: TObject);
begin
  if not(chk_faktur.Checked) then
  begin
    edtfakturawal.Enabled:= False;
    edtfakturawal.Text := '';
    exit;
  end
  else
    edtfakturawal.Enabled:= True;
    edtfakturawal.SetFocus;
end;

procedure Tfpaymentdetailreport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbpaymentdetailreport := False;
end;

procedure Tfpaymentdetailreport.qreportCalcFields(DataSet: TDataSet);
begin

  qreportextradiskon.Value := (qreportvoucher2_value.Value * qreportvoucher2_discount.Value) / 100;

  if (qreportpayment.Value = 4) or (qreportpayment.Value = 5) then
  begin
    qreportCalTotal.Value := 0;
  end
  else
  begin
    qreportCalTotal.AsFloat := (qreportcroom.Value - Qreportdisroom.Value) +
                             (qreportcmenu.Value - Qreportdismenu.Value)+
                             (qreportcother.Value - qreportdisdll.Value)+
                             Qreporttax.Value + Qreportservice.Value - 
                             qreportdiscmember.Value - (qreportvoucher2_value.Value - qreportvoucher2_value2.Value);
  end;

  case qreportpayment.Value of
    1 : qreportCalPayment.Value := 'Cash';
    2 : qreportCalPayment.Value := 'Card';
    3 : qreportCalPayment.Value := 'FOC';
    4 : qreportCalPayment.Value := 'Cancel';
    5 : qreportCalPayment.Value := 'Correction';
    6 : qreportCalPayment.Value := 'BookMyShow';
    7 : qreportCalPayment.Value := 'Voucher';
    8 : qreportCalPayment.Value := 'Voucher+Cash';
    9 : qreportCalPayment.Value := 'Voucher+Card';
  end;

end;

procedure Tfpaymentdetailreport.DBGrid1DblClick(Sender: TObject);
var
  query : TZQuery;
  invoice : string;
  idorder : string;
begin

    if chkPajak.Checked then
    begin
      query := TZQuery.Create(Self);
      query.Connection := modul.Database1;
      query.SQL.Text := 'select idorder, invoice from tpayment where idorder2=''' + qreportidorder.Value + '''';
      query.Active := True;
      if query.RecordCount = 0 then
      begin
        query.Active := False;
        exit;
      end;
      idorder := query.FieldByName('idorder').AsString;
      invoice := query.FieldByName('invoice').AsString;
      query.Active := False;
    end
    else
    begin
      idorder := qreportidorder.Value;
      invoice := qreportinvoice.Value;
    end;

    if FrmInduk.pbdetailreport = true then
      fdetailreport.Show
    else
      Application.CreateForm(Tfdetailreport,fdetailreport);

    fdetailreport.pbinvoice := invoice;
    fdetailreport.pbInvoice2 := qreportinvoice.Value;
    fdetailreport.pbidorder := idorder;

    if chkPajak.Checked then
    begin
      fdetailreport.pbPajak := True;
    end
    else
    begin
      fdetailreport.pbPajak := False;
    end;

    fdetailreport.edtinvoice.Text := fdetailreport.pbInvoice2;
    fdetailreport.btnRoomClick(sender);
end;

procedure Tfpaymentdetailreport.bsSkinButton2Click(Sender: TObject);
var
  outFile: TextFile;
  line: String;
begin

  AssignFile(outFile, 'C:\vizta-payment.txt');
  ReWrite(outFile);

  line := 'Date';
  line := line + #9 + 'Invoice';
  line := line + #9 + 'Name';
  line := line + #9 + 'Payment';
  line := line + #9 + 'Room';
  line := line + #9 + 'Menu';
  line := line + #9 + 'Other';
  line := line + #9 + 'Disc. Room';
  line := line + #9 + 'Disc. Menu';
  line := line + #9 + 'Disc. Other';
  line := line + #9 + 'Disc. Member';
  line := line + #9 + 'Voucher';
  line := line + #9 + 'Tax';
  line := line + #9 + 'Service';
  line := line + #9 + 'Total';
  line := line + #9 + 'Cashier';
  line := line + #9 + 'Description';
  WriteLn(outFile, line);

  qreport.First;
  while qreport.Eof = false do
  begin
    line := qreport.FieldByName('tglstop').AsString;
    line := line + #9 + qreport.FieldByName('invoice').AsString;
    line := line + #9 + qreport.FieldByName('nama').AsString;
    line := line + #9 + qreport.FieldByName('CalPayment').AsString;
    line := line + #9 + qreport.FieldByName('croom').AsString;
    line := line + #9 + qreport.FieldByName('cmenu').AsString;
    line := line + #9 + qreport.FieldByName('cother').AsString;
    line := line + #9 + qreport.FieldByName('disroom').AsString;
    line := line + #9 + qreport.FieldByName('dismenu').AsString;
    line := line + #9 + qreport.FieldByName('disdll').AsString;
    line := line + #9 + qreport.FieldByName('discmember').AsString;
    line := line + #9 + qreport.FieldByName('extradiskon').AsString;
    line := line + #9 + qreport.FieldByName('tax').AsString;
    line := line + #9 + qreport.FieldByName('service').AsString;
    line := line + #9 + qreport.FieldByName('CalTotal').AsString;
    line := line + #9 + qreport.FieldByName('kasir').AsString;
    line := line + #9 + qreport.FieldByName('keterangan').AsString;
    WriteLn(outFile, line);
    qreport.Next;
  end;

  CloseFile(outFile);

  ShowMessage('Ok');
end;

end.
