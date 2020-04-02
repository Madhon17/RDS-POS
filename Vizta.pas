unit Vizta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, DB, DBTables;

type
  Tfroomkategori = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    btnedit: TButton;
    btntambah: TButton;
    btndelete: TButton;
    btnsimpan: TButton;
    Table1: TTable;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  froomkategori: Tfroomkategori;

implementation
   uses Unit1;
{$R *.dfm}

end.
