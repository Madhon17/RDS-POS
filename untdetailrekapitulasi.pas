unit untdetailrekapitulasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, bsSkinCtrls, ExtCtrls,
  MemDS, VirtualTable, bsMessages, BusinessSkinForm, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFdetailrekapitulasi = class(TForm)
    Qinvoice: TZQuery;
    grpRoom: TPanel;
    DBgrid1: TDBGrid;
    btnInvoice: TbsSkinButton;
    VTinvoice: TVirtualTable;
    VTinvoiceInvoice: TStringField;
    DataSource1: TDataSource;
    Qcari: TZQuery;
    Qcarinama: TStringField;
    QcariCheckIn: TDateTimeField;
    QcariCheckOut: TDateTimeField;
    QcariRoom: TStringField;
    Qcarikasir: TStringField;
    VTinvoiceNama: TStringField;
    VTinvoiceCheckIn: TDateTimeField;
    VTinvoiceCheckOut: TDateTimeField;
    VTinvoiceRoom: TStringField;
    VTinvoiceKasir: TStringField;
    btnexit: TbsSkinXFormButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qother: TZQuery;
    procedure btnInvoiceClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBgrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    pbvsql, pbidmenu : String;
    { Public declarations }
  end;

var
  Fdetailrekapitulasi: TFdetailrekapitulasi;

implementation
    uses unit1, unit3, untdetailpenjualan, untdetailreport ;
{$R *.dfm}

procedure TFdetailrekapitulasi.btnInvoiceClick(Sender: TObject);
begin
  Qinvoice.Active := False;
  Qinvoice.SQL.Text := ' SELECT Invoice from (' + pbvsql + ')tk WHERE idmenu= '+ QuotedStr(pbidmenu) + 'GROUP BY invoice';
  Qinvoice.Active := True;
  VTinvoice.Active := True;
  VTinvoice.Clear;

  Qinvoice.First;
  while not (Qinvoice.Eof) do
  begin
    Qcari.Active := False;
    Qcari.SQL.Text := ' SELECT     tpayment.nama, torder_room.tglStart AS `Check-In`, torder_room.tglStop AS `Check-Out`, troom.namaroom AS Room, tpayment.kasir ' +
                      ' FROM         tpayment INNER JOIN ' +
                      ' torder_room ON tpayment.idorder = torder_room.idorder INNER JOIN ' +
                      ' troom ON tpayment.idroom = troom.id ' +
                      ' WHERE     (tpayment.invoice = ' + QuotedStr(Qinvoice.fieldByname('Invoice').AsString) + ')';
    Qcari.Active := True;

    VTinvoice.Append;
    VTinvoiceInvoice.Value := Qinvoice.fieldByName('Invoice').AsString;
    VTinvoiceNama.Value := Qcarinama.Value;
    VTinvoiceCheckIn.Value := QcariCheckIn.Value;
    VTinvoiceCheckOut.Value := QcariCheckOut.Value;
    VTinvoiceRoom.Value := QcariRoom.Value;
    VTinvoiceKasir.Value := Qcarikasir.Value;
    VTinvoice.Post;
    Qinvoice.Next;
  end;

    

end;

procedure TFdetailrekapitulasi.btnexitClick(Sender: TObject);
begin
  Fdetailrekapitulasi.Close;
end;

procedure TFdetailrekapitulasi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbdetailrekapitulasijual := False;
  Action := caFree;
end;

procedure TFdetailrekapitulasi.DBgrid1DblClick(Sender: TObject);
var pvinvoice   : String;
begin
  pvinvoice := VTinvoiceInvoice.Value;
  Qother.Active := False;
  Qother.SQL.Text := 'Select idorder from tpayment WHERE (invoice = ' + QuotedStr(pvinvoice)+')';
  Qother.Active := True;

  if FrmInduk.pbdetailreport = true then fdetailreport.Show
    else
  Application.CreateForm(Tfdetailreport,fdetailreport);

  fdetailreport.pbinvoice := pvinvoice;
  fdetailreport.pbidorder := qother.fieldByName('idorder').AsString;
  fdetailreport.edtinvoice.Text := fdetailreport.pbinvoice;
  fdetailreport.btnRoomClick(sender);

  
end;

procedure TFdetailrekapitulasi.FormCreate(Sender: TObject);
begin
  Qinvoice.Connection := modul.Database1;
  Qcari.Connection := modul.Database1;
  Qother.Connection := modul.Database1;
end;

end.
