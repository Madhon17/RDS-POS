unit untroomreport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, bsSkinCtrls, StdCtrls, ComCtrls,
  ExtCtrls, BusinessSkinForm, RpDefine, RpCon, RpConDS, bsMessages, AEDIT,
  MemDS, VirtualTable, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFroomreport = class(TForm)
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
    Qcari: TZQuery;
    Qkategori: TZQuery;
    DScari: TDataSource;
    Qcarinamaroom: TStringField;
    Qkategorikategori: TStringField;
    Qothers: TZQuery;
    Qothersid: TSmallintField;
    btnexit: TbsSkinXFormButton;
    RVroomreport: TRvDataSetConnection;
    btnprint: TbsSkinXFormButton;
    Qcaritotal: TFloatField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Qcarikategori: TStringField;
    edttotal: TAEdit;
    Qdurasi: TZQuery;
    VTroomreport: TVirtualTable;
    VTroomreportNamaRoom: TStringField;
    VTroomreportKategori: TStringField;
    VTroomreportDurasi: TSmallintField;
    VTroomreportTotalCharge: TFloatField;
    DataSource1: TDataSource;
    edtRoom: TAEdit;
    Qcaripayment: TLargeintField;
    QcariFOC: TZQuery;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    IntegerField1: TLargeintField;
    QcariLUpaymentFOC: TIntegerField;
    VTroomreportJumlahRoom: TIntegerField;
    VTroomreportRoomCharge: TFloatField;
    Qcariroomcharge: TFloatField;
    edtRoomCharge: TAEdit;
    procedure chk_tanggalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure chk_kategoriClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Froomreport: TFroomreport;

implementation
    uses unit1, unit3,DateUtils , Math;
{$R *.dfm}

procedure TFroomreport.chk_tanggalClick(Sender: TObject);
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

procedure TFroomreport.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;
  Qothers.Connection := modul.Database1;
  Qdurasi.Connection := modul.Database1;
  QcariFOC.Connection := modul.Database1;

  FrmInduk.pbroomreport := true;
  tgl_mulai.DateTime := now;
  Tgl_akhir.DateTime := now + 1;
  chk_tanggal.Checked := True;
  chk_tanggalClick(sender);
  chk_kategoriClick(sender);
end;

procedure TFroomreport.btncariClick(Sender: TObject);
var vsql, sqlfilter, vsqlFOC, sqlfilterFOC : string;
    total, vroomcharge : Real;
    jumRoom : integer;
begin
  Qcari.Active := False;
  QcariFOC.Active := False;

   VTroomreport.Clear;

   vsql   :=  ' SELECT     troom.namaroom, tkategoriroom.kategori, cast(COUNT(*) as signed integer) AS payment, tkategoriroom.id, SUM(tpayment.croom - tpayment.disroom) '+
              '        AS roomcharge, '+
              '        SUM(tpayment.cmenu + tpayment.croom + tpayment.cother + tpayment.service + tpayment.tax - tpayment.dismenu - tpayment.disroom - tpayment.disdll '+
              '         - tpayment.discmember - tpayment.extradiskon) AS Total '+
              ' FROM         tpayment LEFT OUTER JOIN '+
              '        troom ON tpayment.idroom = troom.id LEFT OUTER JOIN '+
              '        tkategoriroom ON troom.idkategori = tkategoriroom.id ';
   vsqlFOC := vsql;
   sqlfilterFOC := ' WHERE (tpayment.payment <> 0) AND (tpayment.payment <> 3) AND (tpayment.payment <> 4) AND (tpayment.payment <> 5) ';

  sqlfilter := ' WHERE (tpayment.payment <> 0) AND (tpayment.payment <> 3) AND (tpayment.payment <> 4) AND (tpayment.payment <> 5) ';
  if chk_tanggal.Checked then
  begin
    sqlfilter := sqlfilter +  ' and ((tpayment.tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +         ' and (tpayment.tglstop <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
    sqlfilterFOC := sqlfilterFOC +  ' and ((tpayment.tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +         ' and (tpayment.tglstop <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
  end;

  if chk_kategori.Checked then
  begin
   Qothers.Active := False;
   Qothers.SQL.Text :=  ' SELECT     id '+
                        ' FROM         tkategoriroom '+
                        ' WHERE     (kategori = '+ QuotedStr(cmbkategori.Text) + ')';
   Qothers.Active := True;

   sqlfilter := sqlfilter + ' and  (tkategoriroom.id = ' +  Qothersid.AsString + ')';
  end;

  QcariFOC.SQL.Text := vsqlFOC + sqlfilterFOC + 'GROUP BY troom.namaroom, tkategoriroom.id, tkategoriroom.kategori ' +
                    ' ORDER BY troom.namaroom ' ;
  QcariFOC.Active := True;
  Qcari.SQL.Text := vsql + sqlfilter + 'GROUP BY troom.namaroom, tkategoriroom.id, tkategoriroom.kategori ' +
                    ' ORDER BY troom.namaroom ' ;
  Qcari.Active := True;

  VTroomreport.Active := True;
  Qcari.First;
  while not (Qcari.Eof) do
  begin
     Qdurasi.Active := False;
     Qdurasi.SQL.Text := ' SELECT     SUM(torder_room.durasi) AS jumlah '+
                         ' FROM         tpayment INNER JOIN '+
                         ' troom ON tpayment.idroom = troom.id INNER JOIN '+
                         ' torder_room ON tpayment.idorder = torder_room.idorder' +
                         ' WHERE     (tpayment.payment <> 0 AND tpayment.payment <> 4 AND tpayment.payment <> 5) ' +
                         ' AND ((tpayment.tglstop >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +         ' and (tpayment.tglstop <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))' +
                         ' AND (troom.namaroom = ' + QuotedStr(Qcarinamaroom.Value) + ')' +
                         ' GROUP BY troom.namaroom ' ;
     Qdurasi.Active := True;

     VTroomreport.Append;
     VTroomreportNamaRoom.Value := Qcarinamaroom.Value;
     VTroomreportKategori.Value := Qcarikategori.Value;
     VTroomreportDurasi.Value := Qdurasi.Fields[0].AsInteger;
     VTroomreportTotalCharge.Value := Qcaritotal.Value;
     VTroomreportJumlahRoom.Value := QcariLUpaymentFOC.Value;
     VTroomreportRoomCharge.Value := Qcariroomcharge.Value;
     VTroomreport.Post;

     Qcari.Next;
  end;

  VTroomreport.First;
  total := 0;
  jumRoom := 0;
  vroomcharge := 0;
  while not (VTroomreport.Eof) do
  begin
    total := total + VTroomreportTotalCharge.AsFloat;
    jumRoom := jumRoom + VTroomreportJumlahRoom.AsInteger;
    vroomcharge := vroomcharge +  VTroomreportRoomCharge.AsFloat;
    VTroomreport.Next;
  END;
  edttotal.Text := FormatFloat('#,0',total);
  edtRoom.Text := FormatFloat('#,0',jumRoom);
  edtRoomCharge.Text := FormatFloat('#,0',vroomcharge);
end;




procedure TFroomreport.chk_kategoriClick(Sender: TObject);
begin
  If chk_kategori.Checked then
  begin
    cmbkategori.Enabled := True;
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

procedure TFroomreport.btnexitClick(Sender: TObject);
begin
  Froomreport.Close;
end;

procedure TFroomreport.btnprintClick(Sender: TObject);
begin
 FrmInduk.RvProject1.SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy', tgl_mulai.DateTime));
 FrmInduk.RvProject1.SetParam('tanggalakhir', FormatDateTime('dd MMMM yyyy ', Tgl_akhir.DateTime));
 FrmInduk.RvProject1.SetParam('kategori',cmbkategori.Text);
 FrmInduk.RvProject1.SetParam('totalroom',edttotal.Text);
 FrmInduk.RvProject1.ExecuteReport('Froomreport');
end;

procedure TFroomreport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbroomreport := False;
end;

end.
