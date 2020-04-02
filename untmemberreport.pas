unit untmemberreport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, bsSkinCtrls, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids, RpDefine, RpCon, RpConDS, bsMessages, BusinessSkinForm,
  bsSkinHint, MemDS, VirtualTable, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  Tfmemberreport = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    cmbkategori: TComboBox;
    chk_kategori: TCheckBox;
    chk_tanggal: TCheckBox;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    btncari: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    btnprint: TbsSkinXFormButton;
    Panel3: TPanel;
    rdo_nama: TRadioButton;
    rdo_idmember: TRadioButton;
    rdo_total: TRadioButton;
    Qkategori: TZQuery;
    Qkategorikategori: TStringField;
    Qcari: TZQuery;
    Qcariidmember: TStringField;
    Qcarinama: TStringField;
    Qcarikategori: TStringField;
    Qcaritotal: TFloatField;
    DScari: TDataSource;
    RVmemberreport: TRvDataSetConnection;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    chkidmember: TCheckBox;
    edtidmember: TEdit;
    DBGrid1: TDBGrid;
    btnCariMenu: TbsSkinButton;
    VTMemberReport: TVirtualTable;
    Qdatang: TZQuery;
    VTMemberReportIDMember: TStringField;
    VTMemberReportNama: TStringField;
    VTMemberReportTotal: TFloatField;
    VTMemberReportDatang: TIntegerField;
    rdo_datang: TRadioButton;

    procedure chk_kategoriClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chk_tanggalClick(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdo_idmemberClick(Sender: TObject);
    procedure rdo_namaClick(Sender: TObject);
    procedure rdo_totalClick(Sender: TObject);
    procedure chkidmemberClick(Sender: TObject);
    procedure btnCariMenuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure rdo_datangClick(Sender: TObject);
  private
    pvdatang    : integer;
    pvkategori, pvid : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmemberreport: Tfmemberreport;

implementation
      uses DateUtils, unit1, unit3, untMemberCari, untreportmemberdetail;
{$R *.dfm}



procedure Tfmemberreport.chk_kategoriClick(Sender: TObject);
begin
  if chk_kategori.Checked then
  begin
    cmbkategori.Enabled := True;
    Qkategori.Active := False;
    Qkategori.SQL.Text := ' SELECT     kategori ' +
                          ' FROM         tkategorimember ';
    Qkategori.Active := True;
    cmbkategori.Clear;
    while not (Qkategori.Eof) do
    begin
      cmbkategori.Items.Add(Qkategorikategori.AsString);
      Qkategori.Next;
    end;
      cmbkategori.ItemIndex := 0
  end
  else
  begin
    Qkategori.Active := False;
    cmbkategori.Enabled := False;
  end;
end;

procedure Tfmemberreport.FormCreate(Sender: TObject);
begin

  Qkategori.Connection := modul.Database1;
  Qcari.Connection := modul.Database1;
  Qdatang.Connection := modul.Database1;

  FrmInduk.pbmemberreport := True;
  tgl_mulai.DateTime := now;
  Tgl_akhir.DateTime := now + 1;
  chk_tanggal.Checked := True;
  chk_tanggalClick(sender);
  chk_kategoriClick(sender);
  chkidmemberClick(sender);
  btncariClick(sender);
  

end;

procedure Tfmemberreport.chk_tanggalClick(Sender: TObject);
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

procedure Tfmemberreport.btncariClick(Sender: TObject);
var vsql, sqlfilter, datang, datang1 : string;
begin

   vsql   := ' SELECT     tpayment.idmember, tmember.nama, tkategorimember.kategori, ' +
             ' SUM(tpayment.croom + tpayment.cmenu + tpayment.cother - tpayment.disroom - tpayment.dismenu - tpayment.disdll - tpayment.discmember + tpayment.tax + tpayment.service - tpayment.extradiskon) AS total ' +
             ' FROM         tpayment INNER JOIN ' +
             ' tmember ON tpayment.idmember = tmember.id INNER JOIN ' +
             ' tkategorimember ON tmember.id_kategori = tkategorimember.id ';


  sqlfilter := ' WHERE     (tpayment.discmember > 0)AND ' +
               '(tpayment.payment <> 0) AND (tpayment.payment <> 3) AND (tpayment.payment <> 4) AND (tpayment.payment <>5) ';

  if chk_tanggal.Checked then
  begin
    sqlfilter := sqlfilter +  ' and ((tpayment.tanggal >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' + ' and (tpayment.tanggal<= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
  end;

 if chk_kategori.Checked then
  begin
   sqlfilter := sqlfilter + ' and (tkategorimember.kategori = ' + QuotedStr(cmbkategori.Text) + ')';
  end;

 if chkidmember.Checked then
  begin
    sqlfilter := sqlfilter + ' and (tpayment.idmember = ' + QuotedStr(edtidmember.Text) + ')';
  end;
  
  sqlfilter := sqlfilter + ' GROUP BY tpayment.idmember, tmember.nama, tkategorimember.kategori ';

  if (rdo_idmember.Checked) then
      sqlfilter := sqlfilter +   ' ORDER BY tpayment.idmember ';
  if (rdo_nama.Checked) then
      sqlfilter := sqlfilter +  ' ORDER BY tmember.nama';
  if (rdo_total.Checked) then
      sqlfilter := sqlfilter +  ' ORDER BY SUM(tpayment.croom + tpayment.cmenu + tpayment.cother - tpayment.disroom - tpayment.dismenu - tpayment.disdll - tpayment.discmember + tpayment.tax + tpayment.service - tpayment.extradiskon)';

  Qcari.SQL.Text := vsql + sqlfilter ;
  Qcari.Active := True;
 
  
  pvdatang := 0;

  VTMemberReport.Active := True;
  VTMemberReport.Clear;
  
  Qcari.First;
  while not (Qcari.Eof) do
  begin
     
    VTMemberReport.Append;
      VTMemberReportIDMember.Value := Qcariidmember.Value;
      VTMemberReportNama.Value := Qcarinama.Value;
      VTMemberReportTotal.Value := Qcaritotal.Value;
      //VTMemberReportDatang.Value := pvdatang;
    VTMemberReport.Post;

    Qcari.Next;
  END;

  VTMemberReport.First;
  while not (VTMemberReport.Eof) do
  begin
     pvid := VTMemberReportIDMember.Value;
     Qdatang.Active := False;
     datang := ' SELECT     tmember.id, tmember.nama, tpayment.discmember, troom.namaroom, ' +
              ' SUM(tpayment.croom + tpayment.cmenu + tpayment.cother -  tpayment.disroom - tpayment.dismenu - tpayment.disdll - tpayment.discmember + tpayment.tax + tpayment.service - tpayment.extradiskon) AS Total_Charge, ' +
              ' tpayment.tanggal '   +
              ' FROM         tkategorimember INNER JOIN ' +
              ' tmember ON tkategorimember.id = tmember.id_kategori INNER JOIN ' +
              ' tpayment ON tmember.id = tpayment.idmember LEFT OUTER JOIN ' +
              ' troom ON tpayment.idroom = troom.id ' ;

      datang1 := ' WHERE (tpayment.payment <> 0) AND (tpayment.payment <> 3) AND (tpayment.payment <> 4) AND (tpayment.payment <>5) ';

   if chk_tanggal.Checked then
   begin
    datang1 := datang1 +  ' and ((tpayment.tanggal >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +
                              ' and (tpayment.tanggal<= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
    end;
   if chk_kategori.Checked then
   begin
    datang1 := datang1 + ' and (tkategorimember.kategori = ' + QuotedStr(cmbkategori.Text) + ')';
    pvkategori := ' KATEGORI ' + cmbkategori.Text;
   end;


    datang1 := datang1 + ' and (tmember.id = ' + QuotedStr(pvid) + ')';
    datang1 := datang1 + 'GROUP BY tmember.id, tmember.nama, tpayment.discmember, troom.namaroom, tpayment.tanggal';

   Qdatang.SQL.Text := datang + datang1;
   Qdatang.Active := True;
   
    Qdatang.First;
    while not (Qdatang.Eof) do
    begin
      pvdatang := pvdatang + 1;
      Qdatang.Next;
    end;


    VTMemberReport.Edit;
    VTMemberReportDatang.Value := pvdatang;
    VTMemberReport.Post;
    VTMemberReport.Next;
    pvdatang := 0;
  end;
end;

procedure Tfmemberreport.btnexitClick(Sender: TObject);
begin
  FMEMBERREPORT.Close;
end;

procedure Tfmemberreport.btnprintClick(Sender: TObject);
begin
  FrmInduk.RvProject1.ExecuteReport('Fmemberreport');
end;

procedure Tfmemberreport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbmemberreport := False;
end;



procedure Tfmemberreport.rdo_idmemberClick(Sender: TObject);
begin
  VTMemberReport.IndexFieldNames := 'IDMember';
end;

procedure Tfmemberreport.rdo_namaClick(Sender: TObject);
begin
  VTMemberReport.IndexFieldNames := 'Nama';
  
end;

procedure Tfmemberreport.rdo_totalClick(Sender: TObject);
begin
   VTMemberReport.IndexFieldNames := 'Total';
end;

procedure Tfmemberreport.chkidmemberClick(Sender: TObject);
begin
  if chkidmember.Checked then
  begin
    edtidmember.Enabled := True;
    edtidmember.Clear;
  end
  else
  begin
    edtidmember.Enabled := False;
    edtidmember.Clear;
  end;
end;

procedure Tfmemberreport.btnCariMenuClick(Sender: TObject);
begin
  Application.CreateForm(TFmemberCari,FmemberCari);
  FmemberCari.vasal := 1;
  FmemberCari.ComboBox1.ItemIndex := 0;
  FmemberCari.ComboBox1Click(Sender);
  FrmInduk.Enabled := False;
end;

procedure Tfmemberreport.DBGrid1DblClick(Sender: TObject);
begin
  if Qcariidmember.Value = '' then exit;

  if FrmInduk.pbdetailmemberreport = true then
    fdetailmemberreport.Show
  else
    Application.CreateForm(Tfdetailmemberreport, fdetailmemberreport);

  fdetailmemberreport.chk_tanggal.Checked := chk_tanggal.Checked;
  fdetailmemberreport.tgl_mulai.DateTime := tgl_mulai.DateTime;
  fdetailmemberreport.Tgl_akhir.DateTime := Tgl_akhir.DateTime;
  fdetailmemberreport.waktuawal.DateTime := waktuawal.DateTime;
  fdetailmemberreport.waktuakhir.DateTime := waktuakhir.DateTime;
  fdetailmemberreport.chk_kategori.Checked := chk_kategori.Checked;
  fdetailmemberreport.cmbkategori.ItemIndex := cmbkategori.ItemIndex;
  fdetailmemberreport.chkidmember.Checked := True;
  fdetailmemberreport.edtidmember.Text := VTMemberReportIDMember.AsString;
  fdetailmemberreport.btncariClick(Sender);
end;

procedure Tfmemberreport.rdo_datangClick(Sender: TObject);
begin
  VTMemberReport.IndexFieldNames := 'Datang';
end;

end.
