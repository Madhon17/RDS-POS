unit untPesanBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, BusinessSkinForm, bsMessages, StdCtrls,
  bsSkinCtrls, Mask, DBCtrls, ZDataset;

type
  TFpesanBill = class(TForm)
    btnOK: TbsSkinButton;
    Label1: TLabel;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Edit1: TEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FpesanBill: TFpesanBill;

implementation

uses unit3, Unit1;

{$R *.dfm}

procedure TFpesanBill.btnOKClick(Sender: TObject);
var
  query : TZQuery;
begin

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'update Tsetup set pesanbill = ' + QuotedStr(Edit1.Text);
  query.ExecSQL;

  Close;
end;

procedure TFpesanBill.FormCreate(Sender: TObject);
var
  query : TZQuery;
begin

  FrmInduk.pbpesanbill := True;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'select pesanbill from Tsetup';
  query.Active := True;

  Edit1.Text := query.FieldByName('pesanbill').AsString;

end;

procedure TFpesanBill.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.pbpesanbill := False;
  
  Action := caFree;
end;

end.
