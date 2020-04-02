unit untcarikar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, bsSkinCtrls, DBTables, Grids, DBGrids, StdCtrls,
  BusinessSkinForm;

type
  TFcarikar = class(TForm)
    ComboBox1: TComboBox;
    edtcari: TEdit;
    DBGrid1: TDBGrid;
    Qcari: TQuery;
    DScari: TDataSource;
    btnok: TbsSkinButton;
    Qcarilogin: TStringField;
    Qcarinama: TStringField;
    btncancel: TbsSkinButton;
    procedure edtcariChange(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtcariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcariEnter(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    pbrequest, pbrequestidkonfirmasi, pborderidkarrequest, pborderidkonfirmasi   : Boolean;
    { Public declarations }
  end;

var
  Fcarikar: TFcarikar;

implementation
      uses unit1, untrequestpurchase , Unit3, untorderpurchase;
{$R *.dfm}

procedure TFcarikar.edtcariChange(Sender: TObject);
begin
   Qcari.Active:=False;
  if ComboBox1.ItemIndex=0 then
  begin
     Qcari.SQL.Text :=  'SELECT      login, nama '+
                        'FROM        tkasir '+
                        'WHERE      (login LIKE '+ QuotedStr('%'+edtcari.Text+'%') +' )' +
                        'ORDER BY login';
  end;
  if ComboBox1.ItemIndex=1 then
  begin
     Qcari.SQL.Text :=  'SELECT     login, nama '+
                        'FROM         tkasir '+
                        'WHERE     (nama LIKE '+ QuotedStr('%'+edtcari.Text+'%') +' )' +
                        'ORDER BY nama';
  end;

  Qcari.Active:=True;
end;

procedure TFcarikar.ComboBox1Click(Sender: TObject);
begin
  edtcari.Text:='';
  edtcariChange(Sender);
end;

procedure TFcarikar.btnokClick(Sender: TObject);
begin
  if pborderidkarrequest then
  begin
    FpurchaseOrder.edtRequest.Text := Qcarilogin.Value;
    FpurchaseOrder.edtNamaRequest.Text := Qcarinama.Value;
  end;


  
  if pbrequest then
  begin
    FpurchaseRequest.edtCs.Text := Qcarilogin.AsString;
    FpurchaseRequest.edtNamaCs.Text := Qcarinama.AsString;
    FpurchaseRequest.edtCs.SetFocus;
  end;



  close;
  pbrequest := False;
  pborderidkarrequest := False;
  pborderidkonfirmasi := False;
  pbrequestidkonfirmasi := False;
end;

procedure TFcarikar.DBGrid1DblClick(Sender: TObject);
begin
   frmInduk.Enabled := True;
   btnokClick(sender);
   close;
end;

procedure TFcarikar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFcarikar.edtcariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    Qcari.Next;
    if ComboBox1.ItemIndex= 0 then
    edtcari.Text := Qcarilogin.AsString
    else
    edtcari.Text := Qcarinama.AsString;
  end;

  if key = vk_up then
  begin
    Qcari.Prior;
    if ComboBox1.ItemIndex= 0 then
    edtcari.Text := Qcarilogin.AsString
    else
    edtcari.Text := Qcarinama.AsString;
  end;
end;

procedure TFcarikar.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_down then
  begin
    Qcari.Next;
  end;

  if key = vk_up then
  begin
    Qcari.Prior;
  end;
end;

procedure TFcarikar.edtcariEnter(Sender: TObject);
begin
  edtcari.SelectAll;
end;

procedure TFcarikar.btncancelClick(Sender: TObject);
begin
  Close;
end;

end.
