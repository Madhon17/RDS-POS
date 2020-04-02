unit Ulogin2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, bsSkinBoxCtrls, bsSkinCtrls, ExtCtrls,
  BusinessSkinForm;

type
  TFlogin2 = class(TForm)
    grpRoom: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnlog: TbsSkinButton;
    btncancel: TbsSkinButton;
    pass: TbsSkinPasswordEdit;
    Name: TbsSkinEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btnlogClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flogin2: TFlogin2;

implementation
     uses unewstop;
{$R *.dfm}

procedure TFlogin2.FormCreate(Sender: TObject);
begin
Name.Text :='';
pass.Text := '';
end;

procedure TFlogin2.btncancelClick(Sender: TObject);
begin
FNewStop.Enabled := true;
end;

procedure TFlogin2.btnlogClick(Sender: TObject);
begin
FNewStop.Enabled := true;
end;

end.
