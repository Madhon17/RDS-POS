unit untDistributorMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, bsSkinCtrls, DB, DBTables, bsMessages,
  BusinessSkinForm, DBCtrls;

type
  TFdistributorMaster = class(TForm)
    bsSkinPanel1: TbsSkinPanel;
    Label2: TLabel;
    btnCari: TbsSkinButton;
    DBGrid1: TDBGrid;
    btntambah: TbsSkinButton;
    btnedit: TbsSkinButton;
    btnhapus: TbsSkinButton;
    edtId: TEdit;
    edtSupplyer: TEdit;
    bsSkinPanel2: TbsSkinPanel;
    DBGrid3: TDBGrid;
    btnStambah: TbsSkinButton;
    btnSedit: TbsSkinButton;
    btnShapus: TbsSkinButton;
    btnOk: TbsSkinButton;
    Label1: TLabel;
    DSdistributor: TDataSource;
    Tdistributor: TTable;
    Tdistributorid: TSmallintField;
    Tdistributornama: TStringField;
    Tdistributortelpon: TStringField;
    TdistributorHP: TStringField;
    Tdistributorcperson: TStringField;
    Tdistributorfax: TStringField;
    Qothers: TQuery;
    bsSkinMessage1: TbsSkinMessage;
    Tdistributoralamat: TMemoField;
    Tdistributorstatus: TBooleanField;
    Tbarang: TTable;
    DSbarang: TDataSource;
    Qsatuan: TQuery;
    TbarangIDdistributor: TSmallintField;
    TbarangIDbarang: TStringField;
    Tbarangharga: TFloatField;
    TbarangLUsatuan: TStringField;
    TbarangLUbarang: TStringField;
    Qsatuanid: TStringField;
    Qsatuansatuan: TStringField;
    Qsatuankode: TStringField;
    Qsatuannamabarang: TStringField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    DBCheckBox1: TDBCheckBox;
    Tdistributorketerangan: TMemoField;
    procedure btnhapusClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btntambahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btnStambahClick(Sender: TObject);
    procedure btnSeditClick(Sender: TObject);
    procedure btnShapusClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtIdChange(Sender: TObject);
    procedure edtSupplyerChange(Sender: TObject);
    procedure edtIdEnter(Sender: TObject);
    procedure edtSupplyerEnter(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Tkn13(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FdistributorMaster: TFdistributorMaster;

implementation

uses untdistributor, DateUtils, untBarangDistributor, Unit3;

{$R *.dfm}

procedure TFdistributorMaster.btnhapusClick(Sender: TObject);
begin
  if Tdistributor.RecordCount = 0 then
  begin
    Exit;
  end;

  Qothers.Active := False;
  Qothers.SQL.Text := ' SELECT     COUNT(iddistributor) AS jumlah ' +
                      ' FROM         TbeliReal ' +
                      ' WHERE     (iddistributor = ' + tdistributorid.AsString + ')';
  Qothers.Active := True;

  if Qothers.fieldByName('jumlah').AsInteger > 0 then
    bsSkinMessage1.MessageDlg('         Data Masih Dipakai          ', mtError, [mbOK] ,0 )
  else
    if  bsSkinMessage1.MessageDlg('         Hapus Data Supplyer...?         ', mtConfirmation, mbOKCancel, 0) = mrOk then
      tdistributor.Delete;
end;

procedure TFdistributorMaster.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const IsChecked : array[Boolean] of Integer =
      (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  with (Sender as TDBGrid).Canvas do
  begin
    if (gdSelected in State) then
    begin
      Brush.Color := clAqua;
      FillRect(Rect);
      Font.Color:= clBlack;
      font.Style := [fsBold]
    end;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if (Column.Field.FieldName = DBCheckBox1.DataField) then
  begin
    DrawRect := Rect;
    InflateRect(DrawRect,-1,-1);

    DrawState := ISChecked[Column.Field.AsBoolean];

    DBGrid1.Canvas.FillRect(Rect);
    DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect,
                     DFC_BUTTON, DrawState);
  end;
end;

procedure TFdistributorMaster.btntambahClick(Sender: TObject);
begin
  Tdistributor.Append;
  Tdistributorstatus.Value := True;

  Application.CreateForm(Tfdistributor, fdistributor);
  fdistributor.btnsimpan.Visible := True;
  fdistributor.btnbatal.Visible := True;
  fdistributor.btnOK.Visible := False;

  fdistributor.pvtambah := True;

  FrmInduk.Enabled := False;
  FdistributorMaster.Enabled := False;
end;

procedure TFdistributorMaster.FormCreate(Sender: TObject);
begin
  FrmInduk.pbdsitributor := True;
  Qsatuan.Active := True;
  Tbarang.Active := True;
  Tdistributor.Active := True;
end;

procedure TFdistributorMaster.btneditClick(Sender: TObject);
begin
  Tdistributor.Edit;

  Application.CreateForm(Tfdistributor, fdistributor);
  fdistributor.btnsimpan.Visible := True;
  fdistributor.btnbatal.Visible := True;
  fdistributor.btnOK.Visible := False;

  FrmInduk.Enabled := False;
  FdistributorMaster.Enabled := False;
end;

procedure TFdistributorMaster.DBGrid1DblClick(Sender: TObject);
begin
  Application.CreateForm(Tfdistributor, fdistributor);

  fdistributor.btnsimpan.Visible := False;
  fdistributor.btnbatal.Visible := False;
  fdistributor.btnOK.Visible := True;

  FrmInduk.Enabled := False;
  FdistributorMaster.Enabled := False;
end;

procedure TFdistributorMaster.btnStambahClick(Sender: TObject);
begin
  Tbarang.Append;

  Application.CreateForm(TFbarangDistributor, FbarangDistributor);
  
  FdistributorMaster.Enabled := False;
  FrmInduk.Enabled := False;
end;

procedure TFdistributorMaster.btnSeditClick(Sender: TObject);
begin
  if Tbarang.RecordCount = 0 then
  begin
    Beep;
    Exit;
  end;

  Tbarang.Edit;

  Application.CreateForm(TFbarangDistributor, FbarangDistributor);
  FbarangDistributor.pvharga := Tbarangharga.Value;
  FbarangDistributor.edtidbarang.Text := TbarangIDbarang.AsString;
  FbarangDistributor.edtnamabarang.Text := TbarangLUbarang.Value;
  FbarangDistributor.Qdistributor.Locate('id', TbarangIDbarang.Value,[]);
  FbarangDistributor.edtHarga.Text := FormatFloat('0', FbarangDistributor.pvharga);
  FbarangDistributor.edtHargaExit(Sender);

  FrmInduk.Enabled := False;
  FdistributorMaster.Enabled := False;
end;

procedure TFdistributorMaster.btnShapusClick(Sender: TObject);
begin
  if Tbarang.RecordCount = 0 then
  begin
    Beep;
    Exit;
  end;

 if MessageDlg('      Hapus Data  Item   ',mtConfirmation, mbOKCancel, 0) = mrOk then
    Tbarang.Delete;
end;

procedure TFdistributorMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbdsitributor := False;
  Tbarang.Active := False;
  Qsatuan.Active := False;
  Tdistributor.Active := False;

  Action := caFree;
end;

procedure TFdistributorMaster.edtIdChange(Sender: TObject);
begin
 Tdistributor.Locate('id', edtId.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFdistributorMaster.edtSupplyerChange(Sender: TObject);
begin
 Tdistributor.Locate('nama', edtSupplyer.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFdistributorMaster.edtIdEnter(Sender: TObject);
begin
  Tdistributor.IndexFieldNames := 'id';
end;

procedure TFdistributorMaster.edtSupplyerEnter(Sender: TObject);
begin
  Tdistributor.IndexFieldNames := 'nama';
end;

procedure TFdistributorMaster.btnOkClick(Sender: TObject);
begin
  Close;
end;

procedure TFdistributorMaster.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clAqua;
     FillRect(Rect);
     Font.Color:= clBlack;
     font.Style := [fsBold]
     end;
     end;
    DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFdistributorMaster.Tkn13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end; 
end;

end.
