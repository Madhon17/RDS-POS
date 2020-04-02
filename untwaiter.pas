unit untwaiter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, bsSkinCtrls, StdCtrls, ComCtrls,
  ExtCtrls, bsMessages, BusinessSkinForm, RpDefine, RpCon, RpConDS,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfwaiterreport = class(TForm)
    Panel1: TPanel;
    btncari: TbsSkinXFormButton;
    DSwaiter: TDataSource;
    qwaiter: TZQuery;
    qwaitercs: TStringField;
    qwaiterjumlah: TFloatField;
    qcs: TZQuery;
    bsSkinButton1: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    chk_tanggal: TCheckBox;
    edtnamawaiter: TEdit;
    chkwaiter: TCheckBox;
    edtidwaiter: TEdit;
    tgl_tahun: TDateTimePicker;
    tgl_bulan: TDateTimePicker;
    tgl_awal: TDateTimePicker;
    tgl_akhir: TDateTimePicker;
    cbo_tanggal: TComboBox;
    qcslogin: TStringField;
    qcsnama: TStringField;
    RVwaiterreport: TRvDataSetConnection;
    qwaiternama: TStringField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Panel3: TPanel;
    rdo_nama: TRadioButton;
    rdo_id: TRadioButton;
    rdo_jumlah: TRadioButton;
    dbwaiter: TDBGrid;
    procedure btncariClick(Sender: TObject);
    procedure edtidwaiterExit(Sender: TObject);
    procedure cbo_tanggalClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtidwaiterKeyPress(Sender: TObject; var Key: Char);
    procedure edtidwaiterChange(Sender: TObject);
    procedure edtidwaiterEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chk_tanggalKeyPress(Sender: TObject; var Key: Char);
    procedure cbo_tanggalKeyPress(Sender: TObject; var Key: Char);
    procedure tgl_awalKeyPress(Sender: TObject; var Key: Char);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure rdo_idClick(Sender: TObject);
    procedure rdo_namaClick(Sender: TObject);
    procedure rdo_jumlahClick(Sender: TObject);
    procedure chk_tanggalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fwaiterreport: Tfwaiterreport;

implementation
  uses  DateUtils, unit1, unit3 , Math;
{$R *.dfm}

procedure Tfwaiterreport.btncariClick(Sender: TObject);
var vsql : string;
begin

  qwaiter.Active := False;
  qwaiter.SQL.Clear;
  vsql := '  SELECT     torder_menu.cs, tkasir.nama, SUM(torder_menu.qty * (torder_menu.harga_asli - torder_menu.diskon)) AS jumlah ' +
          ' FROM         torder_menu INNER JOIN ' +
          ' tpayment ON torder_menu.idorder = tpayment.idorder LEFT OUTER JOIN ' +
          ' tkasir ON torder_menu.cs = tkasir.login '+
          ' WHERE     (tpayment.tglstop IS NOT NULL) AND (tpayment.payment <> 0) ' +
          '  AND (tpayment.payment <> 4) AND (tpayment.payment <> 5)' ;




  if (chk_tanggal.Checked) then
    case cbo_tanggal.ItemIndex of
      1 : vsql:=vsql+' AND (tglstop >= :awal) AND (tglstop <= :akhir) ';
      2 : vsql:=vsql+' AND (tglstop >= :awal) ';
      3 : vsql:=vsql+' AND (tglstop <= :akhir) ';
      4 : vsql:=vsql+' AND (tglstop >= :awal) AND (tglstop <= :akhir) ';
      5 : vsql:=vsql+' AND (tglstop >= :awal) AND (tglstop <= :akhir) ';
    end;

  if (chkwaiter.Checked) then vsql := vsql + ' and (torder_menu.cs =  ' +  QuotedStr(qcslogin.Value)  + ') ';

  vsql:=vsql+' GROUP BY torder_menu.cs, tkasir.nama ' ;

  if (rdo_id.Checked) then
      vsql := vsql +   ' ORDER BY torder_menu.cs ';
  if (rdo_nama.Checked) then
      vsql := vsql +  ' ORDER BY tkasir.nama';
  if (rdo_jumlah.Checked) then
      vsql := vsql +  ' ORDER BY SUM(torder_menu.qty * (torder_menu.harga_asli - torder_menu.diskon))';

  qwaiter.SQL.Add(vsql);

  case cbo_tanggal.ItemIndex of
    1 : begin
          qwaiter.ParamByName('awal').AsDateTime:=  StrToDateTime(FormatDateTime('dd-MM-yyyy ', tgl_awal.Date) + '00:00:00' ) ;
          qwaiter.ParamByName('akhir').AsDateTime:= StrToDateTime(FormatDateTime('dd-MM-yyyy ',tgl_akhir.Date)+ '23:59:59'  );
        end;
    2 : begin
          qwaiter.ParamByName('awal').AsDateTime:=StrToDateTime(FormatDateTime('dd-MM-yyyy ', tgl_awal.Date) + ' 00:00:00'  );
        end;
    3 : begin
          qwaiter.ParamByName('akhir').Value:=StrToDateTime(FormatDateTime('dd-MM-yyyy ', tgl_awal.Date) + ' 23:59:59'  );
        end;
    4 : begin
          qwaiter.ParamByName('awal').Value:=StrToDateTime('1-'+ IntToStr(MonthOf(tgl_bulan.Date)) +'-'+ IntToStr(YearOf(tgl_bulan.Date)) + ' 00:00:00'  );
          qwaiter.ParamByName('akhir').Value:=StrToDateTime(IntToStr(DaysInMonth(tgl_bulan.Date)) +'-'+ IntToStr(MonthOf(tgl_bulan.Date)) +'-'+ IntToStr(YearOf(tgl_bulan.Date)) + ' 23:59:59'  );
        end;
    5 : begin
          qwaiter.ParamByName('awal').Value:=StrToDateTime('1-1-'+ IntToStr(YearOf(tgl_tahun.Date)) + ' 00:00:00'  );
          qwaiter.ParamByName('akhir').Value:=StrToDateTime('31-12-'+ IntToStr(YearOf(tgl_tahun.Date)) + ' 23:59:59'  );
        end;
  end;

  qwaiter.Active:=True;
end;

procedure Tfwaiterreport.edtidwaiterExit(Sender: TObject);
begin
  if (edtidwaiter.Text='') then
  begin
    chkwaiter.Checked:=False;
    edtnamawaiter.Text:='';
  end
  else
  begin
    Qcs.Locate('login', edtidwaiter.Text, [loCaseInsensitive]);
    edtidwaiter.Text:=qcslogin.AsString;
    edtnamawaiter.Text:=qcsnama.AsString;
    chkwaiter.Checked := True;
  end;

end;

procedure Tfwaiterreport.cbo_tanggalClick(Sender: TObject);
begin
   case cbo_tanggal.ItemIndex of
    0 : begin
          chk_tanggal.Checked:=False;
          tgl_awal.Date:=Date;
          tgl_akhir.Date:=Date;
          tgl_awal.Visible:=True;
          tgl_akhir.Visible:=True;
          tgl_awal.Enabled:=False;
          tgl_akhir.Enabled:=False;
          tgl_bulan.Visible:=False;
          tgl_tahun.Visible:=False;
        end;
    1 : begin
          chk_tanggal.Checked:=True;
          tgl_awal.Date:=Date;
          tgl_akhir.Date:=Date;
          tgl_awal.Visible:=True;
          tgl_akhir.Visible:=True;
          tgl_awal.Enabled:=True;
          tgl_akhir.Enabled:=True;
          tgl_bulan.Visible:=False;
          tgl_tahun.Visible:=False;
        end;
    2 : begin
          chk_tanggal.Checked:=True;
          tgl_awal.Date:=Date;
          tgl_akhir.Visible:=False;
          tgl_awal.Visible:=True;
          tgl_awal.Enabled:=True;
          tgl_bulan.Visible:=False;
          tgl_tahun.Visible:=False;
        end;
    3 : begin
          chk_tanggal.Checked:=True;
          tgl_awal.Date:=Date;
          tgl_akhir.Visible:=False;
          tgl_awal.Visible:=True;
          tgl_awal.Enabled:=True;
          tgl_bulan.Visible:=False;
          tgl_tahun.Visible:=False;
        end;
    4 : begin
          chk_tanggal.Checked:=True;
          tgl_bulan.Date:=Date;
          tgl_awal.Visible:=False;
          tgl_akhir.Visible:=False;
          tgl_bulan.Visible:=True;
          tgl_tahun.Visible:=False;
        end;
    5 : begin
          chk_tanggal.Checked:=True;
          tgl_tahun.Date:=Date;
          tgl_awal.Visible:=False;
          tgl_akhir.Visible:=False;
          tgl_bulan.Visible:=False;
          tgl_tahun.Visible:=True;
        end;
    end;
end;

procedure Tfwaiterreport.btnkeluarClick(Sender: TObject);
begin
  FrmInduk.pbkatuser := False;
  fwaiterreport.Close;

end;

procedure Tfwaiterreport.FormCreate(Sender: TObject);
begin

  qwaiter.Connection := modul.Database1;
  qcs.Connection := modul.Database1;

  FrmInduk.pbwaiterreport := True;
  tgl_awal.Date:=Date;
  tgl_akhir.Date:=Date;
  qcs.Active := True;
end;

procedure Tfwaiterreport.edtidwaiterKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = #13 then
      begin
        Key := #0;
        Perform (CM_DialogKey, VK_TAB, 0);
      end;

   
end;

procedure Tfwaiterreport.edtidwaiterChange(Sender: TObject);
begin
  Qcs.Locate('login', edtidwaiter.Text, [loPartialKey]);
  edtnamawaiter.Text := qcsnama.AsString;
end;

procedure Tfwaiterreport.edtidwaiterEnter(Sender: TObject);
begin
  edtidwaiter.SelectAll;
end;

procedure Tfwaiterreport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbwaiterreport := False;
end;

procedure Tfwaiterreport.chk_tanggalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
      begin
        Key := #0;
        Perform (CM_DialogKey, VK_TAB, 0);
      end;
end;

procedure Tfwaiterreport.cbo_tanggalKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
      begin
        Key := #0;
        Perform (CM_DialogKey, VK_TAB, 0);
      end;
end;

procedure Tfwaiterreport.tgl_awalKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
      begin
        Key := #0;
        Perform (CM_DialogKey, VK_TAB, 0);
      end;
end;

procedure Tfwaiterreport.bsSkinButton1Click(Sender: TObject);
begin
  FrmInduk.RvProject1.ExecuteReport('Fwaiterreport');
end;

procedure Tfwaiterreport.rdo_idClick(Sender: TObject);
begin
  btncariClick(sender);
end;

procedure Tfwaiterreport.rdo_namaClick(Sender: TObject);
begin
  btncariClick(sender);
end;

procedure Tfwaiterreport.rdo_jumlahClick(Sender: TObject);
begin
  btncariClick(Sender);
end;

procedure Tfwaiterreport.chk_tanggalClick(Sender: TObject);
begin
  if not(chk_tanggal.Checked) then cbo_tanggal.ItemIndex := 0;
end;

end.
