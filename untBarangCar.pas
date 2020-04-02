unit untBarangCar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, DB, DBTables, Grids, DBGrids, bsSkinCtrls,
  StdCtrls, ZDataset, ZAbstractRODataset, ZAbstractDataset;

type
  TFbarangCar = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Fkeluar: TbsSkinButton;
    DBGrid1: TDBGrid;
    Qcari: TZQuery;
    Qcariid: TStringField;
    DScari: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Qcarinamabarang: TStringField;
    procedure ComboBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vasal : Smallint;  //1:fbarangmasuk 2:FgudangMutasiDetail
  end;

var
  FbarangCar: TFbarangCar;

implementation

Uses Unit3, untbarangmasuk, untGudangMutasiDetail, Unit1;

{$R *.dfm}

procedure TFbarangCar.ComboBox1Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit1Change(Sender);
end;

procedure TFbarangCar.Edit1Change(Sender: TObject);
begin
  Qcari.Active:=False;
  if ComboBox1.ItemIndex=0 then
  begin
     Qcari.SQL.Text :=  'SELECT       idbarang as id, namabarang '+
                        'FROM        tbarang '+
                        'WHERE      (idbarang LIKE '+ QuotedStr('%'+edit1.Text+'%') +' )' +
                        'ORDER BY id';
  end;
  if ComboBox1.ItemIndex=1 then
  begin
     Qcari.SQL.Text :=  'SELECT     idbarang as id, namabarang '+
                        'FROM         tbarang '+
                        'WHERE     (namabarang LIKE '+ QuotedStr('%'+edit1.Text+'%') +' )' +
                        'ORDER BY namabarang';
  end;

  Qcari.Active:=True;
end;

procedure TFbarangCar.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFbarangCar.FkeluarClick(Sender: TObject);
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
    if Qcari.RecordCount > 0 then
    begin
      fbarangmasuk.edtidbarang.Text := Qcariid.Value;
      fbarangmasuk.edtidbarangExit(fbarangmasuk.edtidbarang);
      fbarangmasuk.edtharga.SetFocus;
    end
    else
      fbarangmasuk.edtidbarang.SetFocus;
  end;
  if vasal=2 then
  begin
    if Qcari.RecordCount > 0 then
    begin
      FgudangMutasiDetail.edtIDbarang.Text := Qcariid.Value;
      FgudangMutasiDetail.edtIDbarangExit(FgudangMutasiDetail.edtIDbarang);
      FgudangMutasiDetail.edtQty.SetFocus;
    end
    else
      FgudangMutasiDetail.edtIDbarang.SetFocus
  end;

  Close;

end;

procedure TFbarangCar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFbarangCar.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;

  ComboBox1Click(Sender);
  
end;

end.
