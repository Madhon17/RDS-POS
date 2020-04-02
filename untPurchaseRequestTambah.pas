unit untPurchaseRequestTambah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Spin, StdCtrls, bsSkinCtrls, ComCtrls, AEDIT, Grids, DBGrids,
  ExtCtrls;

type
  TFpurchaseRequestTambah = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    jum_kredit: TAEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    AEdit2: TAEdit;
    bsSkinButton1: TbsSkinButton;
    Edit2: TEdit;
    Memo2: TMemo;
    DBGrid3: TDBGrid;
    AEdit3: TAEdit;
    Label7: TLabel;
    edtidbarang: TAEdit;
    edtnamabarang: TAEdit;
    Label3: TLabel;
    spn_jumlah: TSpinEdit;
    AEdit1: TAEdit;
    AEdit4: TAEdit;
    bsSkinButton2: TbsSkinButton;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FpurchaseRequestTambah: TFpurchaseRequestTambah;

implementation

{$R *.dfm}

end.
