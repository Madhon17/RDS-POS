unit untControlRoomReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, ComCtrls, StdCtrls, bsSkinCtrls, DBTables,
  RpDefine, RpCon, RpConDS, DB, ZDataset;

type
  TfControlRoomReport = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    dtpFrom: TDateTimePicker;
    Label1: TLabel;
    dtpTo: TDateTimePicker;
    Label2: TLabel;
    lvMenu: TListView;
    btncari: TbsSkinXFormButton;
    qreport: TQuery;
    qreportlogin: TStringField;
    qreportdateTime: TDateTimeField;
    roomName: TStringField;
    qreportapa: TStringField;
    rvControlRoom: TRvDataSetConnection;
    btnPrint: TbsSkinXFormButton;
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fControlRoomReport: TfControlRoomReport;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TfControlRoomReport.FormCreate(Sender: TObject);
begin
  dtpFrom.DateTime := Now;
  dtpTo.DateTime := Now;
end;

procedure TfControlRoomReport.btncariClick(Sender: TObject);
var
  query: TZQuery;
  li: TListItem;
begin

  lvMenu.Items.Clear;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  query.SQL.Text := 'select dateTime, login, roomName, apa from tControlRoom where dateTime >= ''' + FormatDateTime('yyyy-MM-dd ', dtpFrom.Date) + ''' and dateTime <= date_add(''' + FormatDateTime('yyyy-MM-dd ', dtpFrom.Date) + ''', interval 1 day) order by dateTime desc';
  query.Active := True;
  query.First;
  while query.Eof = False do
  begin
    li := lvMenu.Items.Add;
    li.Caption := query.FieldByName('dateTime').AsString;
    li.SubItems.Add(query.FieldByName('login').AsString);
    li.SubItems.Add(query.FieldByName('roomName').AsString);
    li.SubItems.Add(query.FieldByName('apa').AsString);
    query.Next;
  end;
  query.Active := False;
end;

procedure TfControlRoomReport.btnPrintClick(Sender: TObject);
begin
  qreport.Active := False;
  qreport.SQL.Text := 'select dateTime, login, roomName, apa from tControlRoom where dateTime >= ''' + FormatDateTime('yyyy-MM-dd ', dtpFrom.Date) + ''' and dateTime <= date_add(''' + FormatDateTime('yyyy-MM-dd ', dtpFrom.Date) + ''', interval 1 day) order by dateTime desc';
  qreport.Active := True;
    with FrmInduk.RvProject1 do
    begin
      SetParam('from', FormatDateTime('dd MMMM yyyy ', dtpFrom.DateTime));
      SetParam('to', FormatDateTime('dd MMMM yyyy ', dtpTo.DateTime));
      ExecuteReport('fControlRoom');
    end;
end;

end.
