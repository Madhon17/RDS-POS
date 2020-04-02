unit untReservasiBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AEDIT, bsMessages, BusinessSkinForm, bsSkinCtrls,
  ExtCtrls;

type
  TFreservasiBill = class(TForm)
    btnOk: TbsSkinButton;
    btnCancel: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    grpRoom: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    AEdit5: TAEdit;
    AEdit1: TAEdit;
    AEdit2: TAEdit;
    AEdit3: TAEdit;
    AEdit4: TAEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    AEdit6: TAEdit;
    Panel1: TPanel;
    Label5: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FreservasiBill: TFreservasiBill;

implementation

uses untBillStart;

{$R *.dfm}

procedure TFreservasiBill.btnOkClick(Sender: TObject);
begin
  FBillStart.pbReservLanjut := True;
  Close;
end;

procedure TFreservasiBill.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFreservasiBill.btnCancelClick(Sender: TObject);
begin
  Close;
end;

end.
