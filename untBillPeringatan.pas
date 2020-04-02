unit untBillPeringatan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFbillPeringatan = class(TForm)
  private
    { Private declarations }
  public
    pbOrderId : String;
    pbIdAnak,pbIdRoom : Smallint;
  end;

var
  FbillPeringatan: TFbillPeringatan;

implementation

uses untBill;

{$R *.dfm}

end.
