unit UsetPromo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, bsSkinCtrls, StdCtrls, Spin, ExtCtrls, Grids,
  DBGrids, bsMessages, BusinessSkinForm, ZDataset, ZAbstractRODataset,
  ZAbstractDataset;

type
  TFroomPrice = class(TForm)
    DBpromo: TDBGrid;
    btClose: TbsSkinButton;
    DsKategoriRoom: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCloseClick(Sender: TObject);
  private
    { Private declarations }
    qKategoriRoom: TZQuery;
  public
    { Public declarations }
    Simpan : Boolean;
    pvidpromo :string;
  end;

var
  FroomPrice: TFroomPrice;

implementation
        uses unit3, Unit1;
{$R *.dfm}

procedure TFroomPrice.FormCreate(Sender: TObject);
begin
  qKategoriRoom := TZQuery.Create(self);
  qKategoriRoom.Connection := modul.Database1;
  qKategoriRoom.SQL.Text := 'SELECT kategori, harga FROM tkategoriroom ORDER BY harga';
  qKategoriRoom.Active := True;
  DsKategoriRoom.DataSet := qKategoriRoom;
end;

procedure TFroomPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFroomPrice.btCloseClick(Sender: TObject);
begin
  Close;
end;

end.
