unit untRoomPass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractTable, bsMessages, BusinessSkinForm;

type
  TFroomPass = class(TForm)
    Label1: TLabel;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    edtPass: TEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Tpass: TZQuery;
    Tpasspassword: TStringField;
    Qupdate: TZQuery;
    StringField1: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FroomPass: TFroomPass;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TFroomPass.FormCreate(Sender: TObject);
begin
  FrmInduk.pbroompassword := True;

  Tpass.Active := True;
  Tpass.First;
  edtPass.Text := Tpasspassword.Value;
end;

procedure TFroomPass.btnbatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFroomPass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.pbroompassword := False;
  
  Tpass.Active := False;
  Action := caFree;
end;

procedure TFroomPass.btnsimpanClick(Sender: TObject);
begin
    Qupdate.SQL.Text :=  'DELETE FROM tpass';
    Qupdate.ExecSQL;

    Qupdate.SQL.Text :=  'INSERT INTO tpass (password) VALUES (' + QuotedStr(edtPass.Text)+ ')';
    Qupdate.ExecSQL;

    Close;
end;

end.
