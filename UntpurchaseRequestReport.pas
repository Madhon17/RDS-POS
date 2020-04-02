unit UntpurchaseRequestReport;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AEDIT, Grids, DBGrids, bsSkinCtrls, ComCtrls, ExtCtrls;

type
  TFpurchaseRequestReport = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    cmbkategori: TComboBox;
    chk_kategori: TCheckBox;
    chk_tanggal: TCheckBox;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    chk_lokasi: TCheckBox;
    cmblokasi: TComboBox;
    btncari: TbsSkinXFormButton;
    Panel3: TPanel;
    rdo_namamenu: TRadioButton;
    rdo_idmenu: TRadioButton;
    rdo_quantity: TRadioButton;
    rdo_total: TRadioButton;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    DBGrid1: TDBGrid;
    edtTotal: TAEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FpurchaseRequestReport: TFpurchaseRequestReport;

implementation

{$R *.dfm}

end.
