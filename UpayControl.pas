unit UpayControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, AEDIT, Grids, DBGrids, bsSkinCtrls,
  ComCtrls, ExtCtrls, bsMessages, BusinessSkinForm, ZDataset,
  ZAbstractRODataset, ZAbstractDataset;

type
  TFpayControl = class(TForm)
    DBGrid1: TDBGrid;
    btnkeluar: TbsSkinButton;
    Qcari: TZQuery;
    Dscari: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qcarinamaroom: TStringField;
    Qcariidorder: TStringField;
    Qcarichekin: TStringField;
    Qcaribillstop: TStringField;
    bsSkinPanel7: TbsSkinPanel;
    btnsimpan: TbsSkinButton;
    lblRoom: TLabel;
    Qcariid: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FpayControl: TFpayControl;

implementation
  uses unit3, Unit1;
{$R *.dfm}

procedure TFpayControl.FormCreate(Sender: TObject);
begin
  Qcari.Connection := modul.Database1;

  FrmInduk.Enabled := False;
  Qcari.Active := True;
  lblRoom.Caption :='';
end;

procedure TFpayControl.btnkeluarClick(Sender: TObject);
begin
Close;
end;

procedure TFpayControl.btnsimpanClick(Sender: TObject);
var qsave : TZQuery;
begin
  if (lblRoom.Caption ='') then
  begin
    bsSkinMessage1.MessageDlg(' Please select a room ' ,mtInformation , [mbOK],0);
    Exit;
  end;

  qsave := TZQuery.Create(Self);
  qsave.Connection := modul.Database1;

  QSave.SQL.Text := 'UPDATE    troom ' +
                     'SET       billstop = 0 '+
                     'WHERE     (id = ' + Qcariid.AsString +
                     ') ';
  QSave.ExecSQL;
  qsave.ExecSQL;

  bsSkinMessage1.MessageDlg(Qcarinamaroom.AsString + ' has been fixed ' ,mtInformation , [mbOK],0);
  lblRoom.Caption := '';
  Qcari.Active := False;
  Qcari.Active := True;
end;

procedure TFpayControl.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clNavy;
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFpayControl.DBGrid1DblClick(Sender: TObject);
begin
  lblRoom.Caption := Qcarinamaroom.AsString;
end;

procedure TFpayControl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.Enabled := True;
  Action := caFree;
end;

end.
