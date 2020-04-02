unit untreportreservasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, bsSkinCtrls, ComCtrls,
  ExtCtrls, bsMessages, BusinessSkinForm, RpDefine, RpCon, RpConDS,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFreportreservasi = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    chk_tanggal: TCheckBox;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    chk_status: TCheckBox;
    cmbstatus: TComboBox;
    btncari: TbsSkinXFormButton;
    DBGrid1: TDBGrid;
    DSReportReservasi: TDataSource;
    Qroom: TZQuery;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    Panel3: TPanel;
    rdo_room: TRadioButton;
    rdo_tanggal: TRadioButton;
    rdo_nama: TRadioButton;
    Qcari: TZQuery;
    Qcariidroom: TSmallintField;
    Qcarinama: TStringField;
    Qcarialamat: TStringField;
    Qcaritelpon: TStringField;
    Qcaritanggal: TDateTimeField;
    Qcaridurasi: TSmallintField;
    Qcariketerangan: TMemoField;
    QcariHP: TStringField;
    QcariDP: TFloatField;
    QcariRoom: TStringField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qcaristatus: TStringField;
    RVReservasi: TRvDataSetConnection;
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure chk_statusClick(Sender: TObject);
    procedure chk_tanggalClick(Sender: TObject);
    procedure Chk_roomClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Freportreservasi: TFreportreservasi;

implementation
  uses unit1, unit3;
{$R *.dfm}

procedure TFreportreservasi.FormCreate(Sender: TObject);
begin

  Qroom.Connection := modul.Database1;
  Qcari.Connection := modul.Database1;

  FrmInduk.pbreportreservasi := True;
  tgl_mulai.DateTime := Now;
  Tgl_akhir.DateTime := Now +1;
  chk_tanggalClick(sender);
  chk_statusClick(sender);
  Chk_roomClick(sender);
  chk_tanggal.Checked := True;
  chk_status.Checked := True;
  Qroom.Active := True;
end;

procedure TFreportreservasi.btncariClick(Sender: TObject);
var vsql, sqlfilter : string;
     pvid : Smallint;
begin
   vsql   := ' SELECT     id, idroom, nama, alamat, telpon, tanggal, durasi, keterangan, HP, status, DP ' +
             ' FROM         Treservasi ' ;



  sqlfilter := ' WHERE     (tanggal IS NOT NULL) ' ;
              

  if chk_tanggal.Checked then
  begin
    sqlfilter := sqlfilter +  ' and ((tanggal >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' + ' and (tanggal<= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
  end;

 if chk_status.Checked then
  begin
   sqlfilter := sqlfilter + ' and (status = ' + IntToStr(cmbstatus.ItemIndex) + ')';
  end;



  if (rdo_nama.Checked) then
      sqlfilter := sqlfilter +   ' ORDER BY nama ';
  if (rdo_tanggal.Checked) then
      sqlfilter := sqlfilter +  ' ORDER BY tanggal';
  if (rdo_room.Checked) then
      sqlfilter := sqlfilter +  ' ORDER BY Room '; 

  Qcari.SQL.Text := vsql + sqlfilter ;
  Qcari.Active := True;

   

 
end;

procedure TFreportreservasi.chk_statusClick(Sender: TObject);
begin
  if chk_status.Checked then cmbstatus.Enabled := True
  else
  cmbstatus.Enabled := False;
end;

procedure TFreportreservasi.chk_tanggalClick(Sender: TObject);
begin
  if chk_tanggal.Checked then
  begin
    tgl_mulai.Enabled := True;
    waktuawal.Enabled := True;
    Tgl_akhir.Enabled := True;
    waktuakhir.Enabled := True;
    end
    else
    begin
    tgl_mulai.Enabled := False;
    waktuawal.Enabled := False;
    Tgl_akhir.Enabled := False;
    waktuakhir.Enabled := False;
  end;
end;

procedure TFreportreservasi.Chk_roomClick(Sender: TObject);
begin
  {if Chk_room.Checked then
  begin
    cmbroom.Enabled := True;
    cmbroom.Clear;
    Qroom.Active := True;
    Qroom.First;
    while not (Qroom.Eof) do
    begin
      cmbroom.Items.Add(qroom.fieldByName('namaroom').AsString);
      Qroom.Next;
    end;
    cmbroom.ItemIndex := 0;
  end
  else
  begin
    cmbroom.Enabled := False;
  end;       }
end;

procedure TFreportreservasi.btnexitClick(Sender: TObject);
begin
  Freportreservasi.Close;
end;

procedure TFreportreservasi.btnprintClick(Sender: TObject);
begin
  FrmInduk.RvProject1.ExecuteReport('Freservasi');
end;

procedure TFreportreservasi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbreportreservasi := False;
end;

end.
