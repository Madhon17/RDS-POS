unit URivewOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, bsSkinCtrls, StdCtrls, AEDIT, ExtCtrls, DB,
  BusinessSkinForm;

type
  TFreviewOrder = class(TForm)
    Panel1: TPanel;
    edtTotal: TAEdit;
    btnhapus: TbsSkinButton;
    DBOrder: TDBGrid;
    btnok: TbsSkinButton;
    Btncancel: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label1: TLabel;
    grpMenu: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    edtNamaCs: TEdit;
    edtCs: TAEdit;
    DSorder: TDataSource;
    procedure btnokClick(Sender: TObject);
    procedure BtncancelClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FreviewOrder: TFreviewOrder;

implementation
       uses unit14, unit3, dateutils, Math;
{$R *.dfm}

procedure TFreviewOrder.btnokClick(Sender: TObject);
begin
  fordermenu.Enabled := true;
  fordermenu.SaveOrderClick(sender);
  close;
end;

procedure TFreviewOrder.BtncancelClick(Sender: TObject);
begin
  fordermenu.Enabled := true;
  fordermenu.VtOrder.Clear;
  close;
end;

procedure TFreviewOrder.btnhapusClick(Sender: TObject);
begin
If fordermenu.VtOrder.RecordCount <= 0 then exit; 
fordermenu.VtOrder.Delete;
end;

procedure TFreviewOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fordermenu.Enabled := true;
  fordermenu.VtOrder.Clear;
end;

end.
