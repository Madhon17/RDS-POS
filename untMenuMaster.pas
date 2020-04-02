unit untMenuMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, bsSkinCtrls, StdCtrls, Mask, DBCtrls, DB,
  DBTables;

type
  TFbarangMaster = class(TForm)
    Label2: TLabel;
    dbmenu: TDBEdit;
    btnCari: TbsSkinButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    Qbarang: TQuery;
    DSbarang: TDataSource;
    QbarangDistributor: TQuery;
    DSdistributor: TDataSource;
    Qbarangidbarang: TStringField;
    Qbarangnamabarang: TStringField;
    Qbarangkode: TStringField;
    Qbarangharga: TFloatField;
    QbarangDistributorIDdistributor: TSmallintField;
    QbarangDistributornama: TStringField;
    QbarangDistributorharga: TFloatField;
    Qstok: TQuery;
    SmallintField1: TSmallintField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbarangMaster: TFbarangMaster;

implementation

{$R *.dfm}

end.
