unit untTaxService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, bsSkinCtrls, StdCtrls, AEDIT, DB,
  DBTables, ZDataset;

type
  TFTaxService = class(TForm)
    edtRoomTax: TAEdit;
    Label4: TLabel;
    edtRoomService: TAEdit;
    Label1: TLabel;
    edtMenuTax: TAEdit;
    Label2: TLabel;
    edtMenuService: TAEdit;
    Label3: TLabel;
    edtOtherTax: TAEdit;
    Label5: TLabel;
    edtOtherService: TAEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtTax: TEdit;
    edtService: TEdit;
    btnEdit: TbsSkinButton;
    btnSave: TbsSkinButton;
    btnCancel: TbsSkinButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    chkShowInvoiceCheckin: TCheckBox;
    chkSeparateTaxService: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtRoomTaxEnter(Sender: TObject);
    procedure edtRoomTaxExit(Sender: TObject);
    procedure edtRoomServiceExit(Sender: TObject);
    procedure edtMenuTaxExit(Sender: TObject);
    procedure edtMenuServiceExit(Sender: TObject);
    procedure edtOtherTaxExit(Sender: TObject);
    procedure edtOtherServiceExit(Sender: TObject);
    procedure edtRoomServiceEnter(Sender: TObject);
    procedure edtMenuTaxEnter(Sender: TObject);
    procedure edtMenuServiceEnter(Sender: TObject);
    procedure edtOtherTaxEnter(Sender: TObject);
    procedure edtOtherServiceEnter(Sender: TObject);
    procedure prcIsiData;
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
  private
    pvRoomTax, pvRoomService, pvMenuTax, pvMenuService, pvOtherTax, pvOtherService : Real;
    savedSeparateTaxService : Integer;
  public
    { Public declarations }
  end;

var
  FTaxService: TFTaxService;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TFTaxService.prcIsiData;
var QIsiData : TZQuery;
begin
  QIsiData := TZQuery.Create(Self);
  QIsiData.Connection := modul.Database1;
  QIsiData.SQL.Text := 'SELECT     tax, service, taxmenu, servicemenu, taxother, serviceother, TaxCaption, ServiceCaption, showInvoiceCheckin, separateTaxService '+
                       'FROM         Tsetup ';
  QIsiData.Active := True;
  pvRoomTax :=  QIsiData.FieldByName('tax').AsFloat;
  pvRoomService :=  QIsiData.FieldByName('service').AsFloat;
  pvMenuTax :=  QIsiData.FieldByName('taxmenu').AsFloat;
  pvMenuService :=  QIsiData.FieldByName('servicemenu').AsFloat;
  pvOtherTax :=  QIsiData.FieldByName('taxother').AsFloat;
  pvOtherService :=  QIsiData.FieldByName('serviceother').AsFloat;

  edtTax.Text :=  QIsiData.FieldByName('TaxCaption').AsString;
  edtService.Text :=  QIsiData.FieldByName('ServiceCaption').AsString;
  edtRoomTax.Text := FormatFloat('0,#', pvRoomTax);
  edtRoomService.Text := FormatFloat('0,#', pvRoomService);
  edtMenuTax.Text := FormatFloat('0,#', pvMenuTax);
  edtMenuService.Text := FormatFloat('0,#', pvMenuService);
  edtOtherTax.Text := FormatFloat('0,#', pvOtherTax);
  edtOtherService.Text := FormatFloat('0,#', pvOtherService);

  if QIsiData.FieldByName('showInvoiceCheckin').AsInteger = 1 then
  begin
    chkShowInvoiceCheckin.State := cbChecked;
  end
  else
  begin
    chkShowInvoiceCheckin.State := cbUnchecked;
  end;

  savedSeparateTaxService := QIsiData.FieldByName('separateTaxService').AsInteger;
  if savedSeparateTaxService = 1 then
  begin
    chkSeparateTaxService.State := cbChecked;
  end
  else
  begin
    chkSeparateTaxService.State := cbUnchecked;
  end;

  QIsiData.Active := False;
  QIsiData.Free;
end;

procedure TFTaxService.FormCreate(Sender: TObject);
begin
  FrmInduk.pbtaxservice := True;
  prcIsiData;
end;

procedure TFTaxService.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbtaxservice := False;
  Action := caFree;
end;

procedure TFTaxService.edtRoomTaxEnter(Sender: TObject);
begin
  edtRoomTax.Text := FormatFloat('0', pvRoomTax);
  edtRoomTax.SelectAll;
end;

procedure TFTaxService.edtRoomTaxExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtRoomTax.Text);
  except
    x:=0;
  end;
  pvRoomTax := x;
  edtRoomTax.Text := FormatFloat('0,#', pvRoomTax);
end;

procedure TFTaxService.edtRoomServiceExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtRoomService.Text);
  except
    x:=0;
  end;
  pvRoomService := x;
  edtRoomService.Text := FormatFloat('0,#', pvRoomService);
end;

procedure TFTaxService.edtMenuTaxExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtMenuTax.Text);
  except
    x:=0;
  end;
  pvMenuTax := x;
  edtMenuTax.Text := FormatFloat('0,#', pvMenuTax);
end;

procedure TFTaxService.edtMenuServiceExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtMenuService.Text);
  except
    x:=0;
  end;
  pvMenuService := x;
  edtMenuService.Text := FormatFloat('0,#', pvMenuService);
end;

procedure TFTaxService.edtOtherTaxExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtOtherTax.Text);
  except
    x:=0;
  end;
  pvOtherTax := x;
  edtOtherTax.Text := FormatFloat('0,#', pvOtherTax);
end;

procedure TFTaxService.edtOtherServiceExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtOtherService.Text);
  except
    x:=0;
  end;
  pvOtherService := x;
  edtOtherService.Text := FormatFloat('0,#', pvOtherService);
end;

procedure TFTaxService.edtRoomServiceEnter(Sender: TObject);
begin
  edtRoomService.Text := FormatFloat('0', pvRoomService);
  edtRoomService.SelectAll;
end;

procedure TFTaxService.edtMenuTaxEnter(Sender: TObject);
begin
  edtMenuTax.Text := FormatFloat('0', pvMenuTax);
  edtMenuTax.SelectAll;
end;

procedure TFTaxService.edtMenuServiceEnter(Sender: TObject);
begin
  edtMenuService.Text := FormatFloat('0', pvMenuService);
  edtMenuService.SelectAll;
end;

procedure TFTaxService.edtOtherTaxEnter(Sender: TObject);
begin
  edtOtherTax.Text := FormatFloat('0', pvOtherTax);
  edtOtherTax.SelectAll;
end;

procedure TFTaxService.edtOtherServiceEnter(Sender: TObject);
begin
  edtOtherService.Text := FormatFloat('0', pvOtherService);
  edtOtherService.SelectAll;
end;

procedure TFTaxService.btnEditClick(Sender: TObject);
begin
  btnEdit.Visible := False;
  btnSave.Visible := True;
  btnCancel.Visible := True;

  prcIsiData;
  edtTax.SetFocus;
  edtTax.SelectAll;
end;

procedure TFTaxService.btnCancelClick(Sender: TObject);
begin
  btnEdit.Visible := True;
  btnSave.Visible := False;
  btnCancel.Visible := False;

  prcIsiData;
end;

procedure TFTaxService.btnSaveClick(Sender: TObject);
var
  QUpdate : TZQuery;
  showInvoiceCheckin : String;
  separateTaxService : String;
begin
  btnEdit.Visible := True;
  btnSave.Visible := False;
  btnCancel.Visible := False;

  if chkShowInvoiceCheckin.State = cbChecked then
  begin
    showInvoiceCheckin := '1';
  end
  else
  begin
    showInvoiceCheckin := '0';
  end;

  if chkSeparateTaxService.State = cbChecked then
  begin
    separateTaxService := '1';
  end
  else
  begin
    separateTaxService := '0';
  end;

  QUpdate := TZQuery.Create(Self);
  QUpdate.Connection := modul.Database1;

  if StrToInt(separateTaxService) <> savedSeparateTaxService then
  begin

    if separateTaxService = '1' then
    begin

      QUpdate.SQL.Text := 'alter table tbayar add taxRoom float, taxMenu float, taxOther float, serviceRoom float, serviceMenu float, serviceOther float';
      QUpdate.ExecSQL;

      QUpdate.SQL.Text := 'update tbayar set' +
        ' taxRoom = (croom + (croom * ' + FloatToStr(pvRoomTax) + ' / 100)) * ' + FloatToStr(pvRoomTax) + ' / 100' +
        ', taxMenu = (cmenu + (cmenu * ' + FloatToStr(pvMenuTax) + ' / 100)) * ' + FloatToStr(pvMenuTax) + ' / 100' +
        ', taxOther = (cother + (cother * ' + FloatToStr(pvOtherTax) + ' / 100)) * ' + FloatToStr(pvOtherTax) + ' / 100' +
        ', serviceRoom = croom * ' + FloatToStr(pvRoomService) + ' / 100' +
        ', serviceMenu = cmenu * ' + FloatToStr(pvMenuService) + ' / 100' +
        ', serviceOther = cother * ' + FloatToStr(pvOtherService) + ' / 100';
      QUpdate.ExecSQL;

      QUpdate.SQL.Text := 'alter table tbayar drop column tax, service';
      QUpdate.ExecSQL;
    end
    else
    begin

      QUpdate.SQL.Text := 'alter table tbayar add tax float, service float';
      QUpdate.ExecSQL;

      QUpdate.SQL.Text := 'update tbayar set' +
        ' tax = ((croom + (croom * ' + FloatToStr(pvRoomTax) + ' / 100)) * ' + FloatToStr(pvRoomTax) + ' / 100) + ((cmenu + (cmenu * ' + FloatToStr(pvMenuTax) + ' / 100)) * ' + FloatToStr(pvMenuTax) + ' / 100) + ((cother + (cother * ' + FloatToStr(pvOtherTax) + ' / 100)) * ' + FloatToStr(pvOtherTax) + ' / 100)' +
        ', service = (croom * ' + FloatToStr(pvRoomService) + ' / 100) + (cmenu * ' + FloatToStr(pvMenuService) + ' / 100) + (cother * ' + FloatToStr(pvOtherService) + ' / 100)';
      QUpdate.ExecSQL;

      QUpdate.SQL.Text := 'alter table tbayar drop column taxRoom, taxMenu, taxOther, serviceRoom, serviceMenu, serviceOther';
      QUpdate.ExecSQL;
   end;
  end;

  QUpdate.SQL.Text := 'UPDATE    Tsetup '+
                      ' SET      TaxCaption = '+ QuotedStr(edtTax.Text) + ', '+
                               ' ServiceCaption = '+ QuotedStr(edtService.Text) + ', '+
                               ' tax = '+ FloatToStr(pvRoomTax) +  ', '+
                               ' service = '+ FloatToStr(pvRoomService) +  ', '+
                               ' taxmenu = '+ FloatToStr(pvMenuTax) +  ', '+
                               ' servicemenu = '+ FloatToStr(pvMenuService) +  ', '+
                               ' taxother = '+ FloatToStr(pvOtherTax) +  ', '+
                               ' serviceother = '+ FloatToStr(pvOtherService) +  ', ' +
                               ' showInvoiceCheckin = ' + showInvoiceCheckin +  ', ' +
                               ' separateTaxService = ' + separateTaxService;
  QUpdate.ExecSQL;
  
  QUpdate.Free;
end;

procedure TFTaxService.TKN13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    key :=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

end.
