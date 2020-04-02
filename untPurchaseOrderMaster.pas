unit untPurchaseOrderMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TFpurchaseOrderMaster = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FpurchaseOrderMaster: TFpurchaseOrderMaster;

implementation

{$R *.dfm}

end.
