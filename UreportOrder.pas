unit UreportOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, bsMessages, BusinessSkinForm, StdCtrls, AEDIT,
  Grids, DBGrids, bsSkinCtrls, ComCtrls, ExtCtrls, RpDefine, RpCon, RpConDS,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFreportOrder = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    cmblokasi: TComboBox;
    btncari: TbsSkinXFormButton;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    DBview: TDBGrid;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Dsview: TDataSource;
    Label1: TLabel;
    Qview: TZQuery;
    Qviewidorder: TStringField;
    Qviewidso: TStringField;
    Qviewidmenu: TStringField;
    Qviewmenu: TStringField;
    Qviewqty: TSmallintField;
    Qviewcs: TStringField;
    Qviewstatus: TIntegerField;
    Qviewketerangan: TStringField;
    Qviewpayment: TSmallintField;
    Qviewjam: TDateTimeField;
    Qviewstatustb: TStringField;
    RvDataSetConnection1: TRvDataSetConnection;
    Panel3: TPanel;
    rdo_tanggal: TRadioButton;
    rdo_orderid: TRadioButton;
    procedure btnexitClick(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QviewCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnprintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FreportOrder: TFreportOrder;

implementation
       uses unit3, Unit1;
{$R *.dfm}

procedure TFreportOrder.btnexitClick(Sender: TObject);
begin
  Close;
end;

procedure TFreportOrder.btncariClick(Sender: TObject);
var
  sequel1 :string;
begin
  Qview.Active := False;
  sequel1 :=  ' SELECT     torder_menu.idorder AS idorder, torder_menu.idso AS idso, torder_menu.idmenu AS idmenu, tmenu.menu AS menu, torder_menu.qty AS qty,     '+
              '            torder_menu.cs AS cs, torder_menu.status AS status, torder_menu.keterangan AS keterangan, tpayment.payment, Tso.jam        '+
              ' FROM       torder_menu INNER JOIN                                                                '+
              '            tmenu ON torder_menu.idmenu = tmenu.id INNER JOIN                               '+
              '            Tso ON torder_menu.idso = Tso.idso INNER JOIN                                     '+
              '            tpayment ON torder_menu.idorder = tpayment.idorder                             '+
              ' WHERE      (tpayment.payment <> 0) AND (tpayment.payment <> 4) AND (tpayment.payment <> 5)    ';

  sequel1 := sequel1 +  ' and((tso.jam >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', tgl_mulai.Date) + FormatDateTime('HH:mm:ss ', waktuawal.Time)) +  ' )' +
                              ' and (tso.jam <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) + '))';

  case cmblokasi.ItemIndex of
     0 : begin
           sequel1 := sequel1;
         end;
     1 : begin
           sequel1 := sequel1 + ' and (torder_menu.status = 1)' ;
         end;
     2 : begin
           sequel1 := sequel1 + ' and (torder_menu.status = 0)' ;
         end;
  end;

  if rdo_orderid.Checked then
  begin
    sequel1 := sequel1 + ' ORDER BY torder_menu.idorder, torder_menu.idso';
  end
  else
  begin
    sequel1 := sequel1 + ' ORDER BY torder_menu.idso, torder_menu.idorder';
  end;
  Qview.SQL.Text := sequel1;
  Qview.Active := True;
end;

procedure TFreportOrder.FormCreate(Sender: TObject);
begin

  Qview.Connection := modul.Database1;

  FrmInduk.pbreportorder := True;  
  tgl_mulai.DateTime := now;
  Tgl_akhir.DateTime := now+1;
end;

procedure TFreportOrder.QviewCalcFields(DataSet: TDataSet);
begin
  if (Qviewstatus.AsInteger = 1) then
  begin
     Qviewstatustb.Value := 'Ok';
  end
  else
  begin
     Qviewstatustb.Value := 'Cancel';
  end;
end;

procedure TFreportOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbreportorder := False;
  Action := caFree;
end;

procedure TFreportOrder.btnprintClick(Sender: TObject);
begin
  FrmInduk.RvProject1.SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy', tgl_mulai.DateTime));
  FrmInduk.RvProject1.SetParam('tanggalakhir', FormatDateTime('dd MMMM yyyy ', Tgl_akhir.DateTime));
  FrmInduk.RvProject1.ExecuteReport('report2');
end;

end.
