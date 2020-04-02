unit untSupplierCari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, BusinessSkinForm, DBTables, Grids, DBGrids, bsSkinCtrls,
  StdCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfSupplierCari = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Fkeluar: TbsSkinButton;
    DBGrid1: TDBGrid;
    Qcari: TZQuery;
    DScari: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Qcariid: TSmallintField;
    Qcarinama: TStringField;
    procedure ComboBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pencet13(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vasal : Smallint;
  end;

var
  fSupplierCari: TfSupplierCari;

implementation

Uses Unit3, untbarangmasuk, Unit1;

{$R *.dfm}

procedure TfSupplierCari.ComboBox1Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit1Change(Sender);
end;

procedure TfSupplierCari.Edit1Change(Sender: TObject);
var id : integer;
begin
  if (edit1.Text='') then
    id := 0
  else
  begin
    try
      id := StrToInt(Edit1.Text)
    except
      id :=1;
    end;
  end;

  Qcari.Active:=False;
  if ComboBox1.ItemIndex=0 then
  begin
     Qcari.SQL.Text :=  'SELECT       id, nama '+
                        'FROM        tdistributor '+
                        'WHERE      (id LIKE '+ QuotedStr('%'+ FormatFloat('#', id) +'%') +' )' +
                        'ORDER BY id';
  end;
  if ComboBox1.ItemIndex=1 then
  begin
     Qcari.SQL.Text :=  'SELECT     id as id, nama '+
                        'FROM         tdistributor '+
                        'WHERE     (nama LIKE '+ QuotedStr('%'+edit1.Text+'%') +' )' +
                        'ORDER BY nama';
  end;
  Qcari.Active:=True;
end;

procedure TfSupplierCari.FkeluarClick(Sender: TObject);
begin
  if not(Qcari.Active) then
  begin
    Close;
    exit
  end;
  if (Qcari.RecordCount = 0)  then
  begin
    Close;
    Exit;
  end;

  if vasal=1 then
  begin
    fbarangmasuk.edtSupplyerID.Text := Qcariid.AsString;
    fbarangmasuk.edtSupplyerIDExit(fbarangmasuk.edtSupplyerID);
    fbarangmasuk.bbtntambah.SetFocus;
  end;
  Close;
end;

procedure TfSupplierCari.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfSupplierCari.pencet13(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TfSupplierCari.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;

  ComboBox1Click(Sender);
end;

end.
