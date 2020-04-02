unit untMenuCari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, DB, DBTables, Grids, DBGrids, bsSkinCtrls,
  StdCtrls;

type
  TFmenuCari = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Fkeluar: TbsSkinButton;
    DBGrid1: TDBGrid;
    Qcari: TQuery;
    Qcariid: TStringField;
    DScari: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Qcarimenu: TStringField;
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vasal : Smallint;
  end;

var
  FmenuCari: TFmenuCari;

implementation

Uses Unit3, Unit9;

{$R *.dfm}

procedure TFmenuCari.Edit1Change(Sender: TObject);
begin
  Qcari.Active:=False;
  if ComboBox1.ItemIndex=0 then
  begin
     Qcari.SQL.Text :=  'SELECT      id, menu '+
                        'FROM        tmenu '+
                        'WHERE      (id LIKE '+ QuotedStr('%'+edit1.Text+'%') +' )' +
                        'ORDER BY id';
  end;
  if ComboBox1.ItemIndex=1 then
  begin
     Qcari.SQL.Text :=  'SELECT     id, menu '+
                        'FROM         tmenu '+
                        'WHERE     (menu LIKE '+ QuotedStr('%'+edit1.Text+'%') +' )' +
                        'ORDER BY menu';
  end;

  Qcari.Active:=True;
end;

procedure TFmenuCari.ComboBox1Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit1Change(Sender);
end;

procedure TFmenuCari.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFmenuCari.FkeluarClick(Sender: TObject);
begin
{  frmInduk.Enabled := True;

  if vasal = 0 then
  begin
    fmenu.tmenu.Locate('id', Qcariid.AsString, [loCaseInsensitive, loPartialKey]);
  end;
  Close;  }
end;

procedure TFmenuCari.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmInduk.Enabled := True;
  Qcari.Active := False;
  Action := caFree;
end;

procedure TFmenuCari.FormCreate(Sender: TObject);
begin
  Qcari.Active := True;
end;

end.
