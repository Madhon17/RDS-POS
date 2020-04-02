unit untreportmemberdetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, bsSkinCtrls, StdCtrls, ComCtrls,
  ExtCtrls, RpDefine, RpCon, RpConDS, bsMessages, BusinessSkinForm, AEDIT,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfdetailmemberreport = class(TForm)
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
    DBGrid1: TDBGrid;
    Qcari: TZQuery;
    Qcariid: TStringField;
    Qcarinama: TStringField;
    Qcaridiscmember: TFloatField;
    Qcarinamaroom: TStringField;
    QcariTotal_Charge: TFloatField;
    Qcaritanggal: TDateTimeField;
    DataSource1: TDataSource;
    Panel3: TPanel;
    rdo_nama: TRadioButton;
    rdo_idmember: TRadioButton;
    rdo_tanggal: TRadioButton;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    Qkategori: TZQuery;
    Qkategoriid: TSmallintField;
    Qkategorikategori: TStringField;
    RVdetailmemberreport: TRvDataSetConnection;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    rdo_namaroom: TRadioButton;
    chkidmember: TCheckBox;
    edtidmember: TEdit;
    btnCariMenu: TbsSkinButton;
    edttotal: TAEdit;
    procedure btncariClick(Sender: TObject);
    procedure chk_kategoriClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdo_namaClick(Sender: TObject);
    procedure rdo_namaroomClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure chkidmemberClick(Sender: TObject);
    procedure btnCariMenuClick(Sender: TObject);
  private
    pvtotal : Real;
    pvorderby, pvkategori   : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdetailmemberreport: Tfdetailmemberreport;

implementation
   uses unit1, unit3, untMemberCari;
{$R *.dfm}

procedure Tfdetailmemberreport.btncariClick(Sender: TObject);

var vsql, sqlfilter : string;
begin
  pvtotal := 0;
  Qcari.Active := False;
  vsql := ' SELECT     tmember.id, tmember.nama, tpayment.discmember, troom.namaroom, ' +
          ' SUM(tpayment.croom + tpayment.cmenu + tpayment.cother -  tpayment.disroom - tpayment.dismenu - tpayment.disdll - tpayment.discmember + tpayment.tax + tpayment.service - tpayment.extradiskon) AS Total_Charge, ' +
          ' tpayment.tanggal '   +
          ' FROM         tkategorimember INNER JOIN ' +
          ' tmember ON tkategorimember.id = tmember.id_kategori INNER JOIN ' +
          ' tpayment ON tmember.id = tpayment.idmember LEFT OUTER JOIN ' +
          ' troom ON tpayment.idroom = troom.id ' ;

   sqlfilter := ' WHERE  (tpayment.discmember > 0) AND (tpayment.payment <> 0) AND (tpayment.payment <> 3) AND (tpayment.payment <> 4) AND (tpayment.payment <>5) ';

   if chk_tanggal.Checked then
   begin
    sqlfilter := sqlfilter +  ' and ((tpayment.tanggal >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +
                              ' and (tpayment.tanggal<= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
    end;
   if chk_kategori.Checked then
   begin
    sqlfilter := sqlfilter + ' and (tkategorimember.kategori = ' + QuotedStr(cmbkategori.Text) + ')';
    pvkategori := ' KATEGORI ' + cmbkategori.Text;
   end;

   if chkidmember.Checked then
  begin
    sqlfilter := sqlfilter + ' and (tmember.id = ' + QuotedStr(edtidmember.Text) + ')';
  end;

   sqlfilter := sqlfilter + 'GROUP BY tmember.id, tmember.nama, tpayment.discmember,  tpayment.tanggal, troom.namaroom';


   if (rdo_idmember.Checked) then
      begin
        sqlfilter := sqlfilter +  ' ORDER BY tmember.id ';
        pvorderby := ' ORDER BY ID-MEMBER ';
      end;
    if (rdo_nama.Checked) then
      begin
        sqlfilter := sqlfilter +  ' ORDER BY tmember.nama';
        pvorderby := ' ORDER BY NAMA ';
      end;
    if (rdo_tanggal.Checked) then
      begin
        sqlfilter := sqlfilter +  ' ORDER BY tpayment.tanggal';
        pvorderby := 'ORDER BY TANGGAL';
      end;
    if (rdo_namaroom.Checked) then
      begin
        sqlfilter := sqlfilter +  ' ORDER BY troom.namaroom ';
        pvorderby := ' ORDER BY NAMA ROOM ';
      end;

  Qcari.SQL.Text := vsql + sqlfilter;
  Qcari.Active := True;
 
  Qcari.First;
  while not (Qcari.eof) do
  begin
     pvtotal := pvtotal + QcariTotal_Charge.Value;
     Qcari.Next ;
  end;

  edttotal.Text := FormatFloat('#,0',pvtotal);

end;

procedure Tfdetailmemberreport.chk_kategoriClick(Sender: TObject);
begin
 IF chk_kategori.Checked then
  begin
    cmbkategori.Enabled := True;
    Qkategori.Active := True;
    cmbkategori.Clear;
    Qkategori.First;
    while not (Qkategori.Eof) do
      begin
        cmbkategori.Items.Add(Qkategorikategori.AsString);
        Qkategori.Next;
     end;
     cmbkategori.ItemIndex := 0
     end
    else
    begin
      cmbkategori.Enabled := False;
      Qkategori.Active := False;
    end;


end;

procedure Tfdetailmemberreport.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;

  FrmInduk.pbdetailmemberreport := True;
  tgl_mulai.DateTime := Now;
  Tgl_akhir.DateTime := Now +1;
  chk_tanggal.Checked := True;
  chk_kategoriClick(Sender);
  chkidmemberClick(sender);
  btncariClick(Sender);

end;

procedure Tfdetailmemberreport.btnprintClick(Sender: TObject);
begin
  FrmInduk.RvProject1.SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy', tgl_mulai.DateTime));
  FrmInduk.RvProject1.SetParam('tanggalakhir', FormatDateTime('dd MMMM yyyy ', Tgl_akhir.DateTime));
  FrmInduk.RvProject1.SetParam('orderby',pvorderby);
  FrmInduk.RvProject1.SetParam('kategori',pvkategori);
  FrmInduk.RvProject1.SetParam('total',FormatFloat('#,0',pvtotal));
  FrmInduk.RvProject1.ExecuteReport('Fdetailmemberreport');

end;

procedure Tfdetailmemberreport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbdetailmemberreport := False;
end;

procedure Tfdetailmemberreport.rdo_namaClick(Sender: TObject);
begin
  btncariClick(Sender);
end;

procedure Tfdetailmemberreport.rdo_namaroomClick(Sender: TObject);
begin
  btncariClick(sender);
end;

procedure Tfdetailmemberreport.btnexitClick(Sender: TObject);
begin
  fdetailmemberreport.Close;
end;

procedure Tfdetailmemberreport.chkidmemberClick(Sender: TObject);
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

procedure Tfdetailmemberreport.btnCariMenuClick(Sender: TObject);
begin
  Application.CreateForm(TFmemberCari,FmemberCari);
  FmemberCari.vasal := 2;
  FmemberCari.ComboBox1.ItemIndex := 0;
  FmemberCari.ComboBox1Click(Sender);
  FrmInduk.Enabled := False;
end;

end.
