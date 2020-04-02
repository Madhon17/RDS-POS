unit Untdailyreport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, ComCtrls, Grids, DBGrids, ExtCtrls,
  BusinessSkinForm, bsSkinCtrls, bsMessages, Mask, bsSkinBoxCtrls,
  RpDefine, RpCon, RpConDS, AEDIT;

type
  Tfreport = class(TForm)
    Panel1: TPanel;
    tgl_mulai: TDateTimePicker;
    qreport: TQuery;
    DSreport: TDataSource;
    qreportidorder: TStringField;
    qreporttglstop: TDateTimeField;
    qreportpayment: TSmallintField;
    qreportnama: TStringField;
    cmbpayment: TComboBox;
    qkasir: TQuery;
    chk_payment: TCheckBox;
    chk_kasir: TCheckBox;
    chk_faktur: TCheckBox;
    Qidorder: TQuery;
    edtfakturawal: TEdit;
    chk_tanggal: TCheckBox;
    Label2: TLabel;
    btncari: TbsSkinXFormButton;
    edtidkasir: TEdit;
    edtnamakasir: TEdit;
    Panel2: TPanel;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    RVpayment: TRvDataSetConnection;
    btnkeluar: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    qreportCalPayment: TStringField;
    qreportCalTotal: TFloatField;
    qreportcroom: TFloatField;
    qreportcmenu: TFloatField;
    qreportcother: TFloatField;
    qreportdisroom: TFloatField;
    qreportdismenu: TFloatField;
    qreportdisdll: TFloatField;
    qreporttax: TFloatField;
    qreportservice: TFloatField;
    qreportkasir: TStringField;
    edtTotCash: TAEdit;
    edtTotCard: TAEdit;
    edtTotservice: TAEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Qother: TQuery;
    Label6: TLabel;
    edtJumPayment: TAEdit;
    edtTotPayment: TAEdit;
    qreportdiscmember: TFloatField;
    Panel3: TPanel;
    rdo_tanggal: TRadioButton;
    rdo_orderid: TRadioButton;
    rdo_nama: TRadioButton;
    rdo_Kasir: TRadioButton;
    rdo_payment: TRadioButton;
    qreportinvoice: TStringField;
    qreportketerangan: TStringField;
    DBGrid1: TDBGrid;
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
    edtmenucharge: TEdit;
    edtothercharge: TEdit;
    edtroomdisc: TEdit;
    edtmenudisc: TEdit;
    edtotherdisc: TEdit;
    edtmemberdisc: TEdit;
    edtservice: TEdit;
    edttax: TEdit;
    edtroomcharge: TEdit;
    qreportextradiskon: TFloatField;
    Label15: TLabel;
    edtvoucherdisc: TEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    edtOrang: TAEdit;
    chkPajak: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure chk_fakturClick(Sender: TObject);
    procedure chk_kasirClick(Sender: TObject);
    procedure chk_paymentClick(Sender: TObject);
    procedure edtfakturawalExit(Sender: TObject);
    procedure cmbkasirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure chk_tanggalClick(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtidkasirExit(Sender: TObject);
    procedure edtfakturawalKeyPress(Sender: TObject; var Key: Char);
    procedure edtfaktruakhirKeyPress(Sender: TObject; var Key: Char);
    procedure qreportCalcFields(DataSet: TDataSet);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnkeluarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    namakasir : String;
    total     : Real;
    room, menu, others, roomdisc, menudisc, otherdisc, memberdisc, tax, service, extradsikon : Real;
    totPayment : Real;
    jumPayment, orang : Integer;
{ Private declarations }
    public
    { Public declarations }
  end;

var
  freport: Tfreport;

implementation
   uses DateUtils, unit1, unit3 , RpRave, untdetailreport;
{$R *.dfm}

procedure Tfreport.FormCreate(Sender: TObject);
begin
  FrmInduk.pbreport := True;
  tgl_mulai.DateTime := now;
  Tgl_akhir.DateTime := now + 1;
  chk_tanggal.Checked := True;
  chk_tanggalClick(sender);
  chk_paymentClick(sender);
  chk_kasirClick(sender);
  chk_fakturClick(sender);
  qreport.Active := True;
  btncariClick(Sender);
end;

procedure Tfreport.chk_fakturClick(Sender: TObject);
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

procedure Tfreport.chk_kasirClick(Sender: TObject);
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

procedure Tfreport.chk_paymentClick(Sender: TObject);
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
  end;

end;

procedure Tfreport.edtfakturawalExit(Sender: TObject);
begin
  if edtfakturawal.Text = '' then exit;
   if Length(Trim(edtfakturawal.Text))<> 10 then
   Begin
    beep;
    bsSkinMessage1.MessageDlg(' DATA TIDAK VALID, KURANG DARI 10 DIGIT',mtError,[mbOK],0);
    edtfakturawal.Text := '';
    edtfakturawal.SetFocus;
    END;

end;

procedure Tfreport.cmbkasirClick(Sender: TObject);
begin
  namakasir := qkasir.fieldbyName('login').AsString;
end;

procedure Tfreport.Button1Click(Sender: TObject);
begin
  if cmbpayment.ItemIndex = 0 then chk_payment.Checked := False;
 qreport.Active := False;
 qreport.SQL.Text :=  ' SELECT     idorder, tglstop, payment, total, nama ' +
                        ' FROM         tpayment ' +
                        ' where (idorder is not null)';


 if chk_payment.Checked then
 begin
  qreport.SQL.Text := qreport.SQL.Text + ' and (payment = ' + IntToStr(cmbpayment.ItemIndex - 1) + ')';
 end;
 if chk_tanggal.Checked then
 begin
  qreport.SQL.Text := qreport.SQL.Text + ' and ((tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', tgl_mulai.DateTime)) + ')' +
                       ' and (tglstop <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss', Tgl_akhir.DateTime)) + '))';
 end;
 qreport.Active := True;

end;

procedure Tfreport.chk_tanggalClick(Sender: TObject);
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

procedure Tfreport.btncariClick(Sender: TObject);
var sqlfilter, sql : string;
begin
  if cmbpayment.ItemIndex = 0 then chk_payment.Checked := False;
  qreport.Active := False;
  sql   :=  ' SELECT     idorder, tglstop, payment, nama, kasir, croom, cmenu, cother, disroom, dismenu, disdll, tax, service, discmember, invoice, keterangan, extradiskon ' ;

  if chkPajak.Checked then
  begin
    sqlfilter := ' FROM         tpayment ' +
                 ' WHERE     (payment <> 0) and (pajak = 1) ';
  end
  else
  begin
    sqlfilter := ' FROM         tpayment ' +
                 ' WHERE     (payment <> 0) ';
  end;


  if chk_payment.Checked then
  begin
    sqlfilter := sqlfilter + ' and (payment = ' + IntToStr(cmbpayment.ItemIndex ) + ')';
  end;

  if chk_tanggal.Checked then
  begin
    sqlfilter := sqlfilter + ' and ((tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +         ' and (tglstop <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
  end;

  if chk_kasir.Checked then
  begin
    sqlfilter := sqlfilter + ' and (kasir = ' + QuotedStr(edtidkasir.Text) + ')';
  end;

  if chk_faktur.Checked then
  begin
    sqlfilter := sqlfilter + ' and (invoice = ' + QuotedStr(edtfakturawal.Text) + ')';
  end;

  sql := sql + sqlfilter;
  if (rdo_tanggal.Checked) then
      sql := sql +  ' ORDER BY tglstop, invoice';
  if (rdo_orderid.Checked) then
      sql := sql +  ' ORDER BY invoice';
  if (rdo_nama.Checked) then
      sql := sql +  ' ORDER BY nama, invoice';
  if (rdo_Kasir.Checked) then
      sql := sql +  ' ORDER BY kasir, invoice';
  if (rdo_payment.Checked) then
      sql := sql +  ' ORDER BY payment, invoice';

  qreport.SQL.Text := sql;
  qreport.Active := True;

  Qother.SQL.Text :=  ' SELECT   payment, SUM(croom) AS croom, SUM(cmenu) AS cmenu, SUM(cother) AS cother, SUM(disroom) AS disroom, SUM(dismenu) AS dismenu, SUM(disdll) '+
                      ' AS disdll, SUM(tax) AS tax, SUM(service) AS service , SUM(extradiskon) AS extradiskon, COUNT(*) AS jumlah, SUM(discmember) as discmember, SUM(orang) as orang';
  Qother.SQL.Text := Qother.SQL.Text + sqlfilter +  ' and payment <>4 and payment <>5 '+  ' GROUP BY payment';
  Qother.Active := True;


  Qother.First;
  edtTotCash.Text := FormatFloat('#,0',0);
  edtTotCard.Text := FormatFloat('#,0',0);
  edtTotservice.Text := FormatFloat('#,0',0);
  totPayment :=0; jumPayment := 0; room := 0; menu := 0; others := 0;
  roomdisc := 0; menudisc := 0; otherdisc := 0; memberdisc := 0; extradsikon := 0;
  tax := 0; service := 0; orang := 0;;
  while not(Qother.Eof) do
  begin
    total := Qother.Fields[1].AsFloat +
             Qother.Fields[2].AsFloat +
             Qother.Fields[3].AsFloat -
             Qother.Fields[4].AsFloat -
             Qother.Fields[5].AsFloat -
             Qother.Fields[6].AsFloat +
             Qother.Fields[7].AsFloat +
             Qother.Fields[8].AsFloat -
             Qother.Fields[9].AsFloat -
             Qother.Fields[11].AsFloat;

   room := room + Qother.Fields[1].AsFloat;
   menu := menu + Qother.Fields[2].AsFloat;
   others := others + Qother.Fields[3].AsFloat;
   roomdisc := roomdisc + Qother.Fields[4].AsFloat;
   menudisc := menudisc + Qother.Fields[5].AsFloat;
   otherdisc := otherdisc + Qother.Fields[6].AsFloat;
   tax := tax + Qother.Fields[7].AsFloat;
   service := service + Qother.Fields[8].AsFloat;
   extradsikon := extradsikon + Qother.Fields[9].AsFloat;
   memberdisc := memberdisc + Qother.Fields[11].AsFloat;

    Case Qother.Fields[0].AsInteger of
      1 :  begin
             edtTotCash.Text := FormatFloat('0,#',total);
             totPayment := totPayment + total;
             jumPayment := jumPayment + Qother.Fields[10].AsInteger;
             orang := orang + Qother.Fields[12].AsInteger;
           end;
      2 :  begin
             edtTotCard.Text := FormatFloat('0,#',total);
             totPayment := totPayment + total;
             jumPayment := jumPayment + Qother.Fields[10].AsInteger;
             orang := orang + Qother.Fields[12].AsInteger;
           end;
      3 :   edtTotservice.Text := FormatFloat('0,#',total);
    end;
    Qother.Next;
  end;
  edtJumPayment.Text :=  FormatFloat('0', jumPayment);
  edtJumPayment.Text :=  FormatFloat('0', orang);
  edtTotPayment.Text := FormatFloat('#,0',totPayment);
  edtroomcharge.Text := FormatFloat('#,0',room);
  edtmenucharge.Text := FormatFloat('#,0',menu);
  edtothercharge.Text := FormatFloat('#,0',others);
  edtroomdisc.Text := FormatFloat('#,0',roomdisc);
  edtmenudisc.Text := FormatFloat('#,0',menudisc);
  edtotherdisc.Text := FormatFloat('#,0',otherdisc);
  edtmemberdisc.Text := FormatFloat('#,0',memberdisc);
  edtvoucherdisc.Text := FormatFloat('#,0',extradsikon);
  edttax.Text := FormatFloat('#,0',tax);
  edtservice.Text := FormatFloat('#,0',service);
end;

procedure Tfreport.DBGrid1DrawColumnCell(Sender: TObject;
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

procedure Tfreport.edtidkasirExit(Sender: TObject);
begin
  qkasir.Active := False;
  qkasir.SQL.Text := ' select    nama  ' +
                      ' FROM         tkasir ' +
                      ' WHERE     (login = ' + QuotedStr(edtidkasir.Text) + ')';
  qkasir.Active := True;

  if qkasir.FieldByName('nama').AsString = '' then
  begin
    if edtidkasir.Text = '' then exit;
    bsSkinMessage1.MessageDlg(' DATA TIDAK VALID ', mtInformation, [mbOK],0);
    edtidkasir.Text := '';
    edtidkasir.SetFocus;
    edtnamakasir.Text := '';
  end
  else
  edtnamakasir.Text := qkasir.fieldByName('nama').AsString;

end;

procedure Tfreport.edtfakturawalKeyPress(Sender: TObject; var Key: Char);
begin
  if not (((Key>='0')and(Key<='9')) or (key=#8)) then
  key:=#0;
end;

procedure Tfreport.edtfaktruakhirKeyPress(Sender: TObject; var Key: Char);
begin
  if not (((Key>='0')and(Key<='9')) or (key=#8)) then
  key:=#0;
end;

procedure Tfreport.qreportCalcFields(DataSet: TDataSet);
begin
  if (qreportpayment.Value = 4) or (qreportpayment.Value = 5) then
  begin
    qreportCalTotal.Value := 0;
  end
  else
  begin
    qreportCalTotal.AsFloat := (qreportcroom.Value  - Qreportdisroom.Value) +
                               (qreportcmenu.Value  - Qreportdismenu.Value)+
                               (qreportcother.Value - qreportdisdll.Value)+
                               Qreporttax.Value + Qreportservice.Value - qreportextradiskon.Value -
                               qreportdiscmember.Value;
  end;

  case qreportpayment.Value of
    1 : qreportCalPayment.Value := 'Cash';
    2 : qreportCalPayment.Value := 'Card';
    3 : qreportCalPayment.Value := 'FOC';
    4 : qreportCalPayment.Value := 'Cancel';
    5 : qreportCalPayment.Value := 'Correction';
  end;

end;

procedure Tfreport.bsSkinButton1Click(Sender: TObject);
begin
  //cetak
    with FrmInduk.RvProject1 do
    begin
      SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy ', tgl_mulai.DateTime) + FormatDateTime('HH:mm ', waktuawal.Time));
      SetParam('tanggalakhir',FormatDateTime('dd MMMM yyyy ',Tgl_akhir.DateTime) + FormatDateTime('HH:mm ', waktuakhir.Time));
      if chk_payment.Checked then (SetParam('payment', cmbpayment.Text));
      SetParam('totCash', edtTotCash.Text);
      SetParam('totCard', edtTotCard.Text);
      SetParam('totService', edtTotservice.Text);
      SetParam('jmlPayment', edtJumPayment.Text);
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
      //if cmbpayment.ItemIndex <> 3 then   SetParam('average',FormatFloat('#,0',totPayment / jumPayment));
      ExecuteReport('Fpaymentdetail');
    end;
end;

procedure Tfreport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbreport := False;
end;

procedure Tfreport.btnkeluarClick(Sender: TObject);
begin
    freport.Close;
end;

procedure Tfreport.DBGrid1DblClick(Sender: TObject);
begin
  if FrmInduk.pbdetailreport = true then fdetailreport.Show
    else
  Application.CreateForm(Tfdetailreport,fdetailreport);

  fdetailreport.pbinvoice := qreportinvoice.Value;
  fdetailreport.pbidorder := qreportidorder.Value;
  fdetailreport.edtinvoice.Text := fdetailreport.pbinvoice;
  fdetailreport.btnRoomClick(sender);
end;

end.
