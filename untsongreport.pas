unit untsongreport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, DB, DBTables, StdCtrls, Grids,
  DBGrids, bsSkinCtrls, ComCtrls, ExtCtrls, RpDefine, RpCon, RpConDS,
  MemDS, VirtualTable, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFSsongReport = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    cmbkategori: TComboBox;
    chkkategori: TCheckBox;
    chk_tanggal: TCheckBox;
    Tgl_akhir: TDateTimePicker;
    btncari: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    btnprint: TbsSkinXFormButton;
    Panel3: TPanel;
    rdoArtist: TRadioButton;
    rdoRequested: TRadioButton;
    rdoTitle: TRadioButton;
    Qrequest: TZQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    chkPriority: TCheckBox;
    cmbPriority: TComboBox;
    chkStatus: TCheckBox;
    cmbStatus: TComboBox;
    rdoCategory: TRadioButton;
    rdoPriority: TRadioButton;
    rdoProcessor: TRadioButton;
    DBGrid1: TDBGrid;
    Qkategori: TZQuery;
    Qkategoriid: TSmallintField;
    Qkategoricategory: TStringField;
    Qprocessor: TZQuery;
    Qprocessorid: TSmallintField;
    Qprocessornama: TStringField;
    Qcari: TZQuery;
    Qrequestid: TIntegerField;
    Qrequestrequested: TDateTimeField;
    Qrequestartist: TStringField;
    Qrequesttitle: TStringField;
    Qrequestpriority: TSmallintField;
    Qrequesttanggal: TDateTimeField;
    Qrequestlogin: TStringField;
    Qrequestubah: TDateTimeField;
    Qrequestcategory: TStringField;
    Qrequeststatus: TStringField;
    DSrequest: TDataSource;
    chkArranger: TCheckBox;
    cmbArranger: TComboBox;
    tglArrangerMulai: TDateTimePicker;
    tglArrangerSelesai: TDateTimePicker;
    Label1: TLabel;
    Qarranger: TZQuery;
    Qarrangerid: TSmallintField;
    Qarrangerarranger: TStringField;
    Label3: TLabel;
    Qrequestarranger: TStringField;
    RVsongReport: TRvDataSetConnection;
    QrequestCalpriority: TStringField;
    cmbStatusKon: TComboBox;
    Vcari: TVirtualTable;
    Vcariid: TIntegerField;
    Vcarirequested: TDateTimeField;
    Vcariartist: TStringField;
    Vcarititle: TStringField;
    Vcaripriority: TStringField;
    Vcaritanggal: TDateTimeField;
    Vcarilogin: TStringField;
    Vcariubah: TDateTimeField;
    Vcaricategory: TStringField;
    Vcaristatus: TStringField;
    Vcariarranger: TStringField;
    Vcarino: TSmallintField;
    procedure btncariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chk_tanggalClick(Sender: TObject);
    procedure chkkategoriClick(Sender: TObject);
    procedure chkStatusClick(Sender: TObject);
    procedure chkPriorityClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure chkArrangerClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure QrequestCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSsongReport: TFSsongReport;

implementation

uses  Unit3, UntSRequest, Unit1;

{$R *.dfm}

procedure TFSsongReport.btncariClick(Sender: TObject);
var vsql, sqlfilter : string;
    i : integer;
begin
   vsql   := ' SELECT     TS.id, TS.requested, TS.artist, TS.title, TS.priority, TS.tanggal, TS.login, TS.ubah, TC.category, TP.nama AS status, TA.arranger '+
             ' FROM       TSrequest TS INNER JOIN '+
             '            TSprocess TP ON TS.processor = TP.id INNER JOIN '+
             '            TScategory TC ON TS.category = TC.id INNER JOIN '+
             '            TSarranger TA ON TS.arranger = TA.id ';

  sqlfilter := ' WHERE     (TS.ubah <> 0) ';

  if chk_tanggal.Checked then
  begin
    sqlfilter := sqlfilter +  ' and ((TS.requested >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + ' 00:00:00 ') +  ' )' +         ' and (TS.requested <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + ' 23:59:59 ') + '))';
  end;

  if chkkategori.Checked then
  begin
    Qcari.SQL.Clear;
    Qcari.SQL.Add(' SELECT     id '+
                  ' FROM       TScategory '+
                  ' WHERE      (category = '+ QuotedStr(cmbkategori.Text)  +') ');
    Qcari.Active := True;
   sqlfilter := sqlfilter + ' and (TS.category = ' + Qcari.Fields[0].AsString + ') ';
  end;
  if chkStatus.Checked then
  begin
    Qcari.SQL.Clear;
    Qcari.SQL.Add(' SELECT     id, nama  '+
                  ' FROM       TSprocess '+
                  ' WHERE      (nama = '+ QuotedStr(cmbStatus.Text)  +') ');
    Qcari.Active := True;
   sqlfilter := sqlfilter + ' and (TS.processor  ' + cmbStatusKon.Text + ' ' + Qcari.Fields[0].AsString + ') ';
  end;
  if chkPriority.Checked then
  begin
    sqlfilter := sqlfilter + ' and (TS.priority = ' + IntToStr(cmbPriority.ItemIndex) + ') ';
  end;
  if chkArranger.Checked then
  begin
    Qcari.SQL.Clear;
    Qcari.SQL.Add(' SELECT     id '+
                  ' FROM       TSarranger '+
                  ' WHERE      (arranger = '+ QuotedStr(cmbArranger.Text)  +') ');
    Qcari.Active := True;
    sqlfilter := sqlfilter + ' and (TS.arranger = ' + Qcari.Fields[0].AsString + ') ';
    sqlfilter := sqlfilter + ' and ((TS.tanggal >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tglArrangerMulai.Date) + ' 00:00:00 ') +  ' )' +  ' and (TS.tanggal <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tglArrangerSelesai.Date) + ' 23:59:59 ') + '))' +
                             ' and (TS.selesai = 1) ';

  end;

  if (rdoArtist.Checked) then
      sqlfilter := sqlfilter +   ' ORDER BY TS.artist, TS.title ';
  if (rdoRequested.Checked) then
      sqlfilter := sqlfilter +   ' ORDER BY TS.requested, TS.title ';
  if (rdoTitle.Checked) then
      sqlfilter := sqlfilter +   ' ORDER BY  TS.title, TS.artist ';
  if (rdoCategory.Checked) then
      sqlfilter := sqlfilter +   ' ORDER BY TC.category, TS.artist ';
  if (rdoPriority.Checked) then
      sqlfilter := sqlfilter +   ' ORDER BY TS.priority, TS.title ';
  if (rdoProcessor.Checked) then
      sqlfilter := sqlfilter +   ' ORDER BY TP.nama, TS.title ';


  Qrequest.SQL.Text := vsql + sqlfilter ;
  Qrequest.Active := True;

  Vcari.Active := True;
  Vcari.Clear;
  i := 1;
  Qrequest.First;
  while not Qrequest.Eof do
  begin
    Vcari.Append;
    Vcarino.Value := i;
    Vcariid.Value := Qrequestid.Value;
    Vcarirequested.Value := Qrequestrequested.Value;
    Vcariartist.Value := Qrequestartist.Value;
    Vcarititle.Value := Qrequesttitle.Value;
    Vcaripriority.Value := QrequestCalpriority.Value;
    Vcaritanggal.Value := Qrequesttanggal.Value;
    Vcarilogin.Value := Qrequestlogin.Value;
    Vcariubah.Value := Qrequestubah.Value;
    Vcaricategory.Value := Qrequestcategory.Value;
    Vcaristatus.Value := Qrequeststatus.Value;
    Vcariarranger.Value := Qrequestarranger.Value;
    Vcari.Append;
    Qrequest.Next;
    i := i + 1;
  end;

end;

procedure TFSsongReport.FormCreate(Sender: TObject);
begin

  Qrequest.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;
  Qprocessor.Connection := modul.Database1;
  Qcari.Connection := modul.Database1;
  Qarranger.Connection := modul.Database1;

    Qkategori.Active := False;
    Qkategori.Active := True;
    cmbkategori.Clear;
    while not (Qkategori.Eof) do
    begin
      cmbkategori.Items.Add(Qkategoricategory.AsString);
      Qkategori.Next;
    end;
    cmbkategori.ItemIndex := 0;

    Qprocessor.Active := False;
    Qprocessor.Active := True;
    cmbStatus.Clear;
    while not (Qprocessor.Eof) do
    begin
      cmbStatus.Items.Add(Qprocessornama.AsString);
      Qprocessor.Next;
    end;
    cmbStatus.ItemIndex := 0;

    Qarranger.Active := False;
    Qarranger.Active := True;
    cmbArranger.Clear;
    while not (Qarranger.Eof) do
    begin
      cmbArranger.Items.Add(Qarrangerarranger.AsString);
      Qarranger.Next;
    end;
    cmbArranger.ItemIndex := 0;

    tgl_mulai.DateTime := Now - 1;
    Tgl_akhir.DateTime := Now;
    tglArrangerMulai.DateTime := Now - 1;
    tglArrangerSelesai.DateTime := Now;
end;

procedure TFSsongReport.chk_tanggalClick(Sender: TObject);
begin
  if not(chk_tanggal.Checked) then
  begin
    tgl_mulai.Enabled := False;
    Tgl_akhir.Enabled := False;
  end
  else
  begin
    tgl_mulai.Enabled := True;
    Tgl_akhir.Enabled := True;
  end;
end;

procedure TFSsongReport.chkkategoriClick(Sender: TObject);
begin
  if not(chkkategori.Checked) then
  begin
    cmbkategori.Enabled := False;
  end
  else
  begin
    cmbkategori.Enabled := True;
  end;
end;

procedure TFSsongReport.chkStatusClick(Sender: TObject);
begin
  if not(chkStatus.Checked) then
  begin
    cmbStatus.Enabled := False;
  end
  else
  begin
    cmbStatus.Enabled := True;
  end;
end;

procedure TFSsongReport.chkPriorityClick(Sender: TObject);
begin
  if not(chkPriority.Checked) then
  begin
    cmbPriority.Enabled := False;
  end
  else
  begin
    cmbPriority.Enabled := True;
  end;
end;

procedure TFSsongReport.btnexitClick(Sender: TObject);
begin
  Close;
end;

procedure TFSsongReport.chkArrangerClick(Sender: TObject);
begin
  if not(chkArranger.Checked) then
  begin
    cmbArranger.Enabled := False;
    tglArrangerMulai.Enabled := False;
    tglArrangerSelesai.Enabled := False;
  end
  else
  begin
    cmbArranger.Enabled := True;
    tglArrangerMulai.Enabled := True;
    tglArrangerSelesai.Enabled := True;
  end;
end;

procedure TFSsongReport.btnprintClick(Sender: TObject);
var pvkategori : string;
begin
  pvkategori := '';
  if chkkategori.Checked then pvkategori := pvkategori + '| Category = ' + cmbkategori.Text + ' |';
  if chkStatus.Checked then pvkategori := pvkategori + '| Status = ' + cmbStatus.Text + ' |';
  if chkPriority.Checked then pvkategori := pvkategori + '| Priority = ' + cmbPriority.Text + ' |';
  if chkArranger.Checked then pvkategori := pvkategori + '| Arranger = ' + cmbArranger.Text +
                                                          FormatDateTime('dd.MM.yy', tglArrangerMulai.DateTime) + ' - '  +
                                                          FormatDateTime('dd.MM.yy', tglArrangerSelesai.DateTime) +  ' |';

  FrmInduk.RvProject1.SetParam('kategori',pvkategori);
  FrmInduk.RvProject1.ExecuteReport('FSsongReport');
end;

procedure TFSsongReport.QrequestCalcFields(DataSet: TDataSet);
begin
  if Qrequestpriority.Value = 0 then   QrequestCalpriority.Value := 'HIGH';
  if Qrequestpriority.Value = 1 then   QrequestCalpriority.Value := 'NORMAL';
  if Qrequestpriority.Value = 2 then   QrequestCalpriority.Value := 'LOW';
end;

procedure TFSsongReport.DBGrid1DblClick(Sender: TObject);
begin
   if FrmInduk.pbSrequest = true then
    FSsong.Show
  else
    Application.CreateForm(TFSsong, FSsong);

  FSsong.TSrequest.Locate('id', Qrequestid.Value, [])
end;

end.
