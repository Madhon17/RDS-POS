unit untKonvpayment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, bsSkinCtrls, StdCtrls, ComCtrls, ExtCtrls, DB,
  DBTables, AEDIT, bsMessages, BusinessSkinForm, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfkonversipayment = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    btncari: TbsSkinXFormButton;
    Qcari: TZQuery;
    DataSource1: TDataSource;
    Qupdate: TZQuery;
    Qcariidorder: TStringField;
    Qcaritglstop: TDateTimeField;
    Qcaripayment: TSmallintField;
    Qcarinama: TStringField;
    Qcarikasir: TStringField;
    Qcaricroom: TFloatField;
    Qcaricmenu: TFloatField;
    Qcaricother: TFloatField;
    Qcaridisroom: TFloatField;
    Qcaridismenu: TFloatField;
    Qcaridisdll: TFloatField;
    Qcaritax: TFloatField;
    Qcariservice: TFloatField;
    Qcaridiscmember: TFloatField;
    Qcariinvoice: TStringField;
    Qcariketerangan: TStringField;
    Qcariextradiskon: TFloatField;
    QcariCaltotal: TFloatField;
    QcariCalpayment: TStringField;
    Label3: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    cmbpayment: TComboBox;
    bsSkinXFormButton1: TbsSkinXFormButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    bsSkinButton1: TbsSkinButton;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    edtinvoice: TAEdit;
    procedure QcariCalcFields(DataSet: TDataSet);
    procedure btncariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bsSkinXFormButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtinvoiceKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    idorder: String;
  public
    { Public declarations }
  end;

var
  fkonversipayment: Tfkonversipayment;

implementation
   uses unit1, unit3;
{$R *.dfm}

procedure Tfkonversipayment.QcariCalcFields(DataSet: TDataSet);
begin
   case Qcaripayment.Value of
    1 : QcariCalpayment.Value := 'Cash';
    2 : QcariCalpayment.Value := 'Card';
    3 : QcariCalpayment.Value := 'FOC';
    4 : QcariCalpayment.Value := 'Cancel';
    5 : QcariCalpayment.Value := 'Correction';
  end;

   if (Qcaripayment.Value = 4) or (Qcaripayment.Value = 5) then
  begin
    QcariCaltotal.Value := 0;
  end
  else
  begin
    QcariCaltotal.AsFloat := (Qcaricroom.Value - Qcaridisroom.Value) +
                             (Qcaricmenu.Value - Qcaridismenu.Value)+
                             (Qcaricother.Value - Qcaridisdll.Value)+
                             Qcaritax.Value + Qcariservice.Value - Qcariextradiskon.Value -
                             Qcaridiscmember.Value;
  end;

 
end;

procedure Tfkonversipayment.btncariClick(Sender: TObject);
var sql, sqlfilter    : String;
begin
    Qcari.Active := False;
    Qcari.SQL.Text   :=  ' SELECT     idorder, tglstop, payment, nama, kasir, croom, cmenu, cother, disroom, dismenu, disdll, tax, service, discmember, invoice, keterangan, extradiskon ' +
                      ' FROM         tpayment ' +
                      ' WHERE     (payment <> 0)'+
                      ' and ((tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +
                      ' and (tglstop <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
    Qcari.Active := True;
end;

procedure Tfkonversipayment.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;
  Qupdate.Connection := modul.Database1;

  FrmInduk.pbkonversipayment := True;
  tgl_mulai.DateTime := Now;
  Tgl_akhir.DateTime := Now +1;
  btncariClick(sender);

  FrmInduk.activityLogin := FrmInduk.pbidkasir;
  FrmInduk.activityName := FrmInduk.pbnamakasir;
  
end;

procedure Tfkonversipayment.bsSkinButton1Click(Sender: TObject);
var pvkonversi : String;
begin
  pvkonversi := cmbpayment.Text;

  if edtinvoice.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('   Invoice belum dipilih   ',mtError,[mbOK],0);
    DBGrid1.SetFocus;
    exit;
  end;


  if (Qcaripayment.Value = cmbpayment.ItemIndex + 1) then
  begin
    bsSkinMessage1.MessageDlg('       Payment sama        ', mtError, [mbOK], 0);
    cmbpayment.SetFocus;
    Exit;
  end;


  Qupdate.Active := False;
  Qupdate.SQL.Text := ' Update tpayment SET payment= ' + IntToStr(cmbpayment.ItemIndex +1) +
                       ' WHERE (invoice= ' + QuotedStr(edtinvoice.Text) + ')';
  Qupdate.ExecSQL;

 
  Qcari.Active := False;
  Qcari.Active := True;

  edtinvoice.Text := '';

  FrmInduk.logActivity('Konversi Payment - ' + idorder);

  bsSkinMessage1.MessageDlg(edtinvoice.Text + ' Konversi '+ pvkonversi + ' Berhasil', mtInformation, [mbOK], 0 );
end;

procedure Tfkonversipayment.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     font.Style := [fsBold]
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfkonversipayment.bsSkinXFormButton1Click(Sender: TObject);
begin
  fkonversipayment.Close;
end;

procedure Tfkonversipayment.DBGrid1DblClick(Sender: TObject);
begin
  idorder := Qcariidorder.Value;
  edtinvoice.Text := Qcariinvoice.Value;
  cmbpayment.SetFocus;
end;

procedure Tfkonversipayment.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbkonversipayment := False;
  Action := caFree;
end;

procedure Tfkonversipayment.edtinvoiceKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := #0;
end;

end.
