unit untPurchaseRequestStatus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, AEDIT, ComCtrls, ExtCtrls, bsSkinCtrls;

type
  TFPurchaseRequestStatus = class(TForm)
    fls_keluar: TbsSkinButton;
    fls_simpan: TbsSkinButton;
    fls_batal: TbsSkinButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    tglrequest: TDateTimePicker;
    tglperlu: TDateTimePicker;
    AEdit1: TAEdit;
    bsSkinButton3: TbsSkinButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Label2: TLabel;
    edtCs: TAEdit;
    btnCariMenu: TbsSkinButton;
    edtNamaCs: TEdit;
    DBGrid1: TDBGrid;
    jum_kredit: TAEdit;
    DBGrid2: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPurchaseRequestStatus: TFPurchaseRequestStatus;

implementation

{$R *.dfm}

end.
