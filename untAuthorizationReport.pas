unit untAuthorizationReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, ComCtrls, StdCtrls, bsSkinCtrls, DBTables,
  RpDefine, RpCon, RpConDS, DB, ZDataset, ZAbstractRODataset,
  ZAbstractDataset;

type
  TfAuthorizationReport = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    dtpFrom: TDateTimePicker;
    Label1: TLabel;
    dtpTo: TDateTimePicker;
    Label2: TLabel;
    lvMenu: TListView;
    btncari: TbsSkinXFormButton;
    qreport: TZQuery;
    qreportlogin: TStringField;
    qreportdateTime: TDateTimeField;
    rvActivity: TRvDataSetConnection;
    btnPrint: TbsSkinXFormButton;
    qreportname: TStringField;
    qreportdescription: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAuthorizationReport: TfAuthorizationReport;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TfAuthorizationReport.FormCreate(Sender: TObject);
begin

  qreport.Connection := modul.Database1;

  dtpFrom.DateTime := Now;
  dtpTo.DateTime := Now;
end;

procedure TfAuthorizationReport.btncariClick(Sender: TObject);
var
  query: TZQuery;
  li: TListItem;
begin

  lvMenu.Items.Clear;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  query.SQL.Text := 'select dateTime, login, name, description from tActivity where dateTime >= ''' + FormatDateTime('yyyy-MM-dd ', dtpFrom.Date) + ''' and dateTime <= date_add(''' + FormatDateTime('yyyy-MM-dd ', dtpTo.Date) + ''', interval 1 day) order by dateTime';
  query.Active := True;
  query.First;
  while query.Eof = False do
  begin
    li := lvMenu.Items.Add;
    li.Caption := query.FieldByName('dateTime').AsString;
    li.SubItems.Add(query.FieldByName('login').AsString);
    li.SubItems.Add(query.FieldByName('name').AsString);
    li.SubItems.Add(query.FieldByName('description').AsString);
    query.Next;
  end;
  qreport.Active := False;
  qreport.SQL.Text := query.SQL.Text;
end;

procedure TfAuthorizationReport.btnPrintClick(Sender: TObject);
begin
  qreport.Active := True;
    with FrmInduk.RvProject1 do
    begin
      SetParam('from', FormatDateTime('dd MMMM yyyy ', dtpFrom.DateTime));
      SetParam('to', FormatDateTime('dd MMMM yyyy ', dtpTo.DateTime));
      ExecuteReport('rActivity');
    end;
end;

end.
