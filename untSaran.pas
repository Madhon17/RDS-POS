unit untSaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  DBGrids, bsSkinCtrls, StdCtrls, ComCtrls, ExtCtrls, DBTables,
  BusinessSkinForm, bsMessages, RpDefine, RpCon, RpConDS;

type
  TFsaran = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    cmbroom: TComboBox;
    chk_room: TCheckBox;
    chk_tanggal: TCheckBox;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    Panel3: TPanel;
    rdo_room: TRadioButton;
    rdo_tanggal: TRadioButton;
    rdo_nama: TRadioButton;
    btncari: TbsSkinXFormButton;
    DBGrid1: TDBGrid;
    Qcari: TZQuery;
    Qcariroom: TStringField;
    Qcaripesan: TStringField;
    Qcarinama: TStringField;
    Qcaritanggal: TDateTimeField;
    DScari: TDataSource;
    Qroom: TZQuery;
    Qroomnamaroom: TStringField;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btnclear: TbsSkinButton;
    btnPrint: TbsSkinButton;
    btnExit: TbsSkinXFormButton;
    Panel2: TPanel;
    RVsaran: TRvDataSetConnection;
    Qdel: TZQuery;
    LargeintField1: TLargeintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    Qcariid: TIntegerField;
    procedure btncariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chk_roomClick(Sender: TObject);
    procedure cmbroomClick(Sender: TObject);
    procedure tgl_mulaiChange(Sender: TObject);
    procedure chk_tanggalClick(Sender: TObject);
    procedure btnclearClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExitClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fsaran: TFsaran;

implementation

uses unit3, Unit1;

{$R *.dfm}

procedure TFsaran.btncariClick(Sender: TObject);
var vsql, sqlfilter : string;
begin
  Qcari.Active := False;
  vsql   := 'SELECT * FROM complain ';
  sqlfilter := ' WHERE     (id is not null) ';

  if chk_tanggal.Checked then
  begin
    sqlfilter := sqlfilter +  ' AND ((tanggal >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' + ' and (tanggal<= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
  end;

  if chk_room.Checked then
  begin
   sqlfilter := sqlfilter + ' and (room = ' + QuotedStr(cmbroom.Text) + ')';
  end;

  if (rdo_tanggal.Checked) then
      sqlfilter := sqlfilter +   ' ORDER BY tanggal ';
  if (rdo_room.Checked) then
      sqlfilter := sqlfilter +  ' ORDER BY room';
  if (rdo_nama.Checked) then
      sqlfilter := sqlfilter +  ' ORDER BY nama';

  Qcari.SQL.Text := vsql + sqlfilter ;
  Qcari.Active := True;
end;

procedure TFsaran.FormCreate(Sender: TObject);
begin

  Qroom.Connection := modul.Database1;

  FrmInduk.pbsaran := True;

  tgl_mulai.Date := Date;
  Tgl_akhir.Date := Date;

  Qroom.Active := True;

  Qroom.First;
  while not (Qroom.Eof) do
  begin
    cmbroom.Items.Add(Qroom.fieldByName('namaroom').AsString) ;
    Qroom.Next;
  end;
  cmbroom.ItemIndex :=0;

  
end;

procedure TFsaran.chk_roomClick(Sender: TObject);
begin
  Qcari.Active := False;

  if chk_room.Checked then
    cmbroom.Enabled := True
  else
    cmbroom.Enabled := False;
end;

procedure TFsaran.cmbroomClick(Sender: TObject);
begin
  Qcari.Active := False;
end;

procedure TFsaran.tgl_mulaiChange(Sender: TObject);
begin
    Qcari.Active := False;
end;

procedure TFsaran.chk_tanggalClick(Sender: TObject);
begin
  Qcari.Active := False;
  if not(chk_tanggal.Checked) then
  begin
    tgl_mulai.Enabled := False;
    Tgl_akhir.Enabled := False;
    waktuawal.Enabled := False;
    waktuakhir.Enabled := False;
  end
  else
  begin
    tgl_mulai.Enabled := True;
    Tgl_akhir.Enabled := True;
    waktuawal.Enabled:= True;
    waktuakhir.Enabled := true;
  end;
end;

procedure TFsaran.btnclearClick(Sender: TObject);
var vsql, sqlfilter : string;
begin
  vsql   := 'Delete FROM complain ';

  sqlfilter := ' WHERE     (id is not null) ';

  if chk_tanggal.Checked then
  begin
    sqlfilter := sqlfilter +  ' AND ((tanggal >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' + ' and (tanggal<= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';
  end;

  if chk_room.Checked then
  begin
   sqlfilter := sqlfilter + ' and (room = ' + QuotedStr(cmbroom.Text) + ')';
  end;

  Qdel.SQL.Text := vsql + sqlfilter ;
  Qdel.ExecSQL;
end;

procedure TFsaran.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.pbsaran := False;
  Qcari.Active := False;
  Qroom.Active := False;

  Action := caFree;
end;

procedure TFsaran.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFsaran.btnPrintClick(Sender: TObject);
var parameter : string;
begin
  parameter := '';
  if chk_tanggal.Checked then
  begin
    parameter :=  FormatDateTime('| dd MMMM yyyy ', tgl_mulai.DateTime) + FormatDateTime('HH:mm - ', waktuawal.Time) +
                              FormatDateTime('dd MMMM yyyy ',Tgl_akhir.DateTime) + FormatDateTime('HH:mm |', waktuakhir.Time);
  end;
  if chk_room.Checked then
  begin
    parameter := parameter + '| ' + cmbroom.Text + ' |';
  end;

    with FrmInduk.RvProject1 do
    begin
      SetParam('tanggalawal', parameter);
      ExecuteReport('Fsaran');
    end;
end;

end.
