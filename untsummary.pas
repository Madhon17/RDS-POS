unit untsummary;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, DB, Grids, DBGrids, ComCtrls, StdCtrls, DBTables, bsSkinCtrls,
    ExtCtrls, bsMessages, BusinessSkinForm, RpDefine, RpCon, RpConDS,
  MemDS, VirtualTable, AEDIT, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
    Tfsummary = class(TForm)
    Qcari: TZQuery;
    DScari: TDataSource;
    Panel1: TPanel;
    tgl_mulai: TDateTimePicker;
    tgl_akhir: TDateTimePicker;
    Label1: TLabel;
    btncari: TbsSkinXFormButton;
    Label2: TLabel;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    RVsummary: TRvDataSetConnection;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    VTsummary: TVirtualTable;
    VTsummarytanggal: TDateTimeField;
    VTsummaryomset: TFloatField;
    VTsummaryCard: TFloatField;
    VTsummaryCash: TFloatField;
    Qomset: TZQuery;
    Qother: TZQuery;
    VTsummaryJumlahRoom: TIntegerField;
    Label6: TLabel;
    edtJumPayment: TAEdit;
    Label3: TLabel;
    Label4: TLabel;
    edttotcash: TEdit;
    edttotcard: TEdit;
    edttotal: TAEdit;
    waktuakhir: TDateTimePicker;
    chkPajak: TCheckBox;
    btnEmail: TbsSkinXFormButton;
    bsSkinXFormButton1: TbsSkinXFormButton;
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnprintClick(Sender: TObject);
    procedure tgl_mulaiChange(Sender: TObject);
    procedure tgl_mulaiExit(Sender: TObject);
    procedure tgl_akhirChange(Sender: TObject);
    procedure tgl_akhirExit(Sender: TObject);
    procedure btnEmailClick(Sender: TObject);
    procedure bsSkinXFormButton1Click(Sender: TObject);
  private
    pvtotal   : Double;
    pvtglawal, pvtglakhir : TDateTime;
    total, pvcard, pvcash     : Real;
    room, menu, others, roomdisc, menudisc, otherdisc, memberdisc, tax, service, extradsikon : Real;
    totPayment, jumcard, jumcash : Real;
    jumPayment, jumlah : Integer;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsummary: Tfsummary;

implementation
   uses unit1, unit3;
{$R *.dfm}

procedure Tfsummary.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;
  Qomset.Connection := modul.Database1;
  Qother.Connection := modul.Database1;

  FrmInduk.pbsummary := True;
  
  VTsummary.Active := True;

  tgl_mulai.DateTime := now;
  Tgl_akhir.DateTime := now + 1;

  chkPajak.Checked := Not FrmInduk.Pajak1.Visible;
  chkPajak.Visible := FrmInduk.Pajak1.Visible;

  DBGrid1.Enabled := True;
end;

procedure Tfsummary.btncariClick(Sender: TObject);
var sql, sqlfilter : String;
begin
  VTsummary.Clear;
  pvtotal := 0; jumlah := 0;
  jumcard := 0; jumcash:=0;

  pvtglawal := tgl_mulai.DateTime;
  pvtglakhir := tgl_akhir.DateTime;

  while (pvtglawal <= pvtglakhir) do
  begin

    Qcari.Active := False;
    if chkPajak.Checked then
    begin
      Qcari.SQL.Text := '  SELECT     SUM(cmenu + croom + cother + service + tax - dismenu - disroom - disdll - discmember - extradiskon) AS jumlah ' +
                      ' FROM   tbayar ' +
                      ' WHERE (tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', pvtglawal) + FormatDateTime('HH:mm:ss ', waktuakhir.Time)) + ')' +
                      ' and   (tglstop < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', pvtglawal + 1) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + ')' +
                      ' AND ((payment not in (3,4,5)))';
    end
    else
    begin
      Qcari.SQL.Text := '  SELECT     SUM(cmenu + croom + cother + service + tax - dismenu - disroom - disdll - discmember - extradiskon) AS jumlah ' +
                      ' FROM   tpayment ' +
                      ' WHERE (tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', pvtglawal) + FormatDateTime('HH:mm:ss ', waktuakhir.Time)) + ')' +
                      ' and   (tglstop < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', pvtglawal + 1) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + ')' +
                      ' AND ((payment not in (3,4,5)))';
    end;
    Qcari.Active := True;


    if chkPajak.Checked then
    begin
      sql   :=  ' SELECT     idorder, tglstop, payment, nama, kasir, croom, cmenu, cother, disroom, dismenu, disdll, tax, service, discmember, invoice, keterangan, extradiskon, voucher2_value, voucher2_value2 ' ;

      sqlfilter := ' FROM         tbayar ' +
               ' WHERE(payment not in (3,4,5)) and ((tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', pvtglawal) + FormatDateTime('HH:mm:ss ', waktuakhir.Time)) +  ' )' +
               ' and (tglstop < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', pvtglawal +1) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
    end
    else
    begin
      sql   :=  ' SELECT     idorder, tglstop, payment, nama, kasir, croom, cmenu, cother, disroom, dismenu, disdll, tax, service, discmember, invoice, keterangan, extradiskon, voucher2_value, voucher2_value2 ' ;

      sqlfilter := ' FROM         tpayment ' +
               ' WHERE(payment not in (3,4,5)) and ((tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', pvtglawal) + FormatDateTime('HH:mm:ss ', waktuakhir.Time)) +  ' )' +
               ' and (tglstop < ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', pvtglawal +1) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
    end;
    Qomset.SQL.Text := sql + sqlfilter;
    Qomset.Active := True;


    if chkPajak.Checked then
    begin
      Qother.SQL.Text :=  ' SELECT   payment, SUM(croom) AS croom, SUM(cmenu) AS cmenu, SUM(cother) AS cother, SUM(disroom) AS disroom, SUM(dismenu) AS dismenu, SUM(disdll) '+
                        ' AS disdll, SUM(tax) AS tax, SUM(service) AS service , SUM(extradiskon) AS extradiskon, COUNT(*) AS jumlah, SUM(discmember) as discmember, sum(voucher2_value) as voucher2_value, sum(voucher2_value2) as voucher2_value2 ';
      Qother.SQL.Text := Qother.SQL.Text + sqlfilter;
      Qother.SQL.Text := Qother.SQL.Text + ' GROUP BY payment';
    end
    else
    begin
      Qother.SQL.Text :=  ' SELECT   payment, SUM(croom) AS croom, SUM(cmenu) AS cmenu, SUM(cother) AS cother, SUM(disroom) AS disroom, SUM(dismenu) AS dismenu, SUM(disdll) '+
                        ' AS disdll, SUM(tax) AS tax, SUM(service) AS service , SUM(extradiskon) AS extradiskon, COUNT(*) AS jumlah, SUM(discmember) as discmember, sum(voucher2_value) as voucher2_value, sum(voucher2_value2) as voucher2_value2 ';
      Qother.SQL.Text := Qother.SQL.Text + sqlfilter;
      Qother.SQL.Text := Qother.SQL.Text + ' GROUP BY payment';
    end;
    Qother.Active := True;


    Qother.First;
    pvcard :=0; pvcash :=0; jumPayment := 0;
    totPayment :=0;  room := 0; menu := 0; others := 0;
    roomdisc := 0; menudisc := 0; otherdisc := 0; memberdisc := 0; extradsikon := 0;
    tax := 0; service := 0;
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

      Case Qother.Fields[0].AsInteger of
        1 :  begin
             totPayment := totPayment + total;
             pvcash := pvcash + total;
             jumcash := jumcash + total;
             jumPayment := jumPayment + Qother.Fields[10].AsInteger;
             end;
        2 :  begin
             totPayment := totPayment + total;
             pvcard := pvcard + total;
             jumcard := jumcard + total;
             jumPayment := jumPayment + Qother.Fields[10].AsInteger;
             end;
        6 :  begin
             totPayment := totPayment + total;
             jumPayment := jumPayment + Qother.Fields[10].AsInteger;
             end;
        7 :  begin
             totPayment := totPayment + Qother.Fields[13].AsInteger;
             jumPayment := jumPayment + Qother.Fields[10].AsInteger;
             end;
        8 :  begin
             pvcash := pvcash + (total - Qother.Fields[12].AsInteger);
             jumcash := jumcash + (total - Qother.Fields[12].AsInteger);
             totPayment := totPayment + Qother.Fields[13].AsInteger + (total - Qother.Fields[12].AsInteger);
             jumPayment := jumPayment + Qother.Fields[10].AsInteger;
             end;
        9 :  begin
             pvcard := pvcard + (total - Qother.Fields[12].AsInteger);
             jumcard := jumcard + (total - Qother.Fields[12].AsInteger);
             totPayment := totPayment + Qother.Fields[13].AsInteger + (total - Qother.Fields[12].AsInteger);
             jumPayment := jumPayment + Qother.Fields[10].AsInteger;
             end;
      end;
      Qother.Next;
    end;

    VTsummary.Append;
    VTsummarytanggal.Value := pvtglawal;
    VTsummaryCard.Value := pvcard;
    VTsummaryCash.Value := pvcash;
    VTsummaryJumlahRoom.Value := jumPayment;
    VTsummaryomset.Value := totPayment;
    VTsummary.Post;
    pvtglawal := pvtglawal + 1;
    jumlah := jumlah + jumPayment;
    pvtotal := pvtotal + totPayment;
  end;

  DScari.DataSet := VTsummary;

  edttotal.Text := FormatFloat('#,0',pvtotal);
  //edttotcash.Text := FormatFloat('0',jumcash);

  edtJumPayment.Text :=  FormatFloat('#,0', jumlah);
  edttotcard.Text := FormatFloat('#,0',jumcard);
  edttotcash.Text := FormatFloat('#,0',jumcash);

end;


procedure Tfsummary.btnexitClick(Sender: TObject);
begin
  fsummary.Close;
end;

procedure Tfsummary.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbsummary := False;
  
end;

procedure Tfsummary.DBGrid1DrawColumnCell(Sender: TObject;
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
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure Tfsummary.btnprintClick(Sender: TObject);
begin
  FrmInduk.RvProject1.SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy ', tgl_mulai.DateTime) );
  FrmInduk.RvProject1.SetParam('tanggalakhir', FormatDateTime('dd MMMM yyyy ', Tgl_akhir.DateTime) );
  FrmInduk.RvProject1.SetParam('totalomset', FormatFloat('#,0',pvtotal));
  FrmInduk.RvProject1.SetParam('totCash', edtTotCash.Text);
  FrmInduk.RvProject1.SetParam('totCard', edtTotCard.Text);
  FrmInduk.RvProject1.SetParam('jmlPayment', edtJumPayment.Text);
  FrmInduk.RvProject1.ExecuteReport('Fsummary');
end;

procedure Tfsummary.tgl_mulaiChange(Sender: TObject);
begin
  pvtglawal := tgl_mulai.Date;

end;

procedure Tfsummary.tgl_mulaiExit(Sender: TObject);
begin
  pvtglawal := tgl_mulai.Date;
end;

procedure Tfsummary.tgl_akhirChange(Sender: TObject);
begin
  pvtglakhir := tgl_akhir.Date;
end;

procedure Tfsummary.tgl_akhirExit(Sender: TObject);
begin
    pvtglakhir := tgl_akhir.Date;
end;

procedure Tfsummary.btnEmailClick(Sender: TObject);
var
  emailTo : string;
  subject : String;
  body : String;
  commandLine : String;
  StartInfo : TStartupInfo;
  ProcInfo : TProcessInformation;
  CreateOK : Boolean;
begin
  emailTo := inputbox('Email', 'Masukkan alamat email tujuan', '');
  if emailTo <> '' then
  begin
    subject := 'Omset ' + FormatDateTime('d MMM yyyy', tgl_mulai.DateTime) + ' - ' + FormatDateTime('d MMM yyyy', Tgl_akhir.DateTime);
    body := '';
    body := body + '<div>';
    body := body + ' <div>';
    body := body + '  <div>Total Omset: ' + FormatFloat('#,0',pvtotal) + '</div>';
    body := body + '  <div>Total Cash: ' + edtTotCash.Text + '</div>';
    body := body + '  <div>Total Card: ' + edtTotCard.Text + '</div>';
    body := body + '  <div>Total Payment: ' + edtJumPayment.Text + '</div>';
    body := body + ' </div>';
    body := body + ' <br />';
    body := body + ' <table border="1" style="border-spacing: 0;">';
    body := body + '  <tr>';
    body := body + '   <th>Tanggal</th>';
    body := body + '   <th>Payment</th>';
    body := body + '   <th>Cash</th>';
    body := body + '   <th>Card</th>';
    body := body + '   <th>Omset</th>';
    body := body + '  </tr>';
    VTsummary.First;
    while VTsummary.Eof = false do
    begin
      body := body + '<tr>';
      body := body + '   <td>' + VTsummarytanggal.AsString + '</td>';
      body := body + '   <td style="text-align: right;">' + VTsummaryJumlahRoom.AsString + '</td>';
      body := body + '   <td style="text-align: right;">' + VTsummaryCash.AsString + '</td>';
      body := body + '   <td style="text-align: right;">' + VTsummaryCard.AsString + '</td>';
      body := body + '   <td style="text-align: right;">' + VTsummaryomset.AsString + '</td>';
      body := body + '</tr>';
      VTsummary.Next;
    end;
    body := body + ' </table>';
    body := body + '<div>';
    body := StringReplace(body, '"', '\"', [rfReplaceAll, rfIgnoreCase]);
    commandLine := '"' + ExtractFilePath(Application.ExeName) + 'Vizta Mail.exe" "' + emailTo + '" "' + subject + '" "' + body + '"';
    FillChar(StartInfo,SizeOf(TStartupInfo),#0);
    FillChar(ProcInfo,SizeOf(TProcessInformation),#0);
    StartInfo.cb := SizeOf(TStartupInfo);
    CreateOK := CreateProcess(nil, PChar(commandLine), nil, nil, False, CREATE_NEW_PROCESS_GROUP + NORMAL_PRIORITY_CLASS, nil, nil, StartInfo, ProcInfo);
    if CreateOK then
    begin
      WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    end;
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

procedure Tfsummary.bsSkinXFormButton1Click(Sender: TObject);
var
  outFile: TextFile;
  line: String;
begin

  AssignFile(outFile, 'C:\vizta-payment-daily.txt');
  ReWrite(outFile);

  line := 'Date';
  line := line + #9 + 'Room';
  line := line + #9 + 'Cash';
  line := line + #9 + 'Card';
  line := line + #9 + 'Omzet';
  WriteLn(outFile, line);

  VTsummary.First;
  while VTsummary.Eof = false do
  begin
    line := VTsummary.FieldByName('tanggal').AsString;
    line := line + #9 + VTsummary.FieldByName('Jumlah Room').AsString;
    line := line + #9 + VTsummary.FieldByName('Cash').AsString;
    line := line + #9 + VTsummary.FieldByName('Card').AsString;
    line := line + #9 + VTsummary.FieldByName('omset').AsString;
    WriteLn(outFile, line);
    VTsummary.Next;
  end;

  CloseFile(outFile);

  ShowMessage('Ok');

end;

end.
