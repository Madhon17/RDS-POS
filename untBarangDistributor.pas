unit untBarangDistributor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, DB, DBTables, bsSkinCtrls,
  StdCtrls, AEDIT, Grids, DBGrids;

type
  TFbarangDistributor = class(TForm)
    Label7: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edtidbarang: TAEdit;
    edtnamabarang: TAEdit;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    edtHarga: TAEdit;
    Qdistributor: TQuery;
    DSdistributor: TDataSource;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qdistributorid: TStringField;
    Qdistributornama: TStringField;
    procedure edtidbarangChange(Sender: TObject);
    procedure edtnamabarangChange(Sender: TObject);
    procedure edtHargaEnter(Sender: TObject);
    procedure edtHargaExit(Sender: TObject);
    procedure edtHargaKeyPress(Sender: TObject; var Key: Char);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
  private
    pvtutup : Boolean;
  public
   pvharga : Real;
  end;

var
  FbarangDistributor: TFbarangDistributor;

implementation

uses untDistributorMaster, Unit3;

{$R *.dfm}

procedure TFbarangDistributor.edtidbarangChange(Sender: TObject);
begin
  Qdistributor.Active := False;
  Qdistributor.SQL.Text := ' SELECT     idbarang AS id, namabarang AS nama '+
                           ' FROM         Tbarang '+
                           ' WHERE idbarang LIKE ' + QuotedStr('%'+ edtidbarang.Text +'%')+
                           ' ORDER BY idbarang';
  Qdistributor.Active := True;
end;

procedure TFbarangDistributor.edtnamabarangChange(Sender: TObject);
begin
  Qdistributor.Active := False;
  Qdistributor.SQL.Text := ' SELECT     idbarang AS id, namabarang AS nama '+
                           ' FROM         Tbarang '+
                           ' WHERE namabarang LIKE ' + QuotedStr('%'+ edtnamabarang.Text +'%')+
                           ' ORDER BY namabarang';
  Qdistributor.Active := True;
end;

procedure TFbarangDistributor.edtHargaEnter(Sender: TObject);
begin
  edtHarga.Text := FormatFloat('0', pvharga);
  edtHarga.SelectAll;
end;

procedure TFbarangDistributor.edtHargaExit(Sender: TObject);
var x: Real;
begin
  try
    x:=StrToFloat(edtHarga.Text);
  except
    x:=0;
  end;

  pvharga := x;
  edtHarga.Text := FormatFloat('#,0', x);
end;

procedure TFbarangDistributor.edtHargaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;

  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

procedure TFbarangDistributor.btnsimpanClick(Sender: TObject);
begin
  if Qdistributorid.AsString = '' then
  begin
     bsSkinMessage1.MessageDlg('            Pilih Item            ', mtError, [mbok],0);
     edtidbarang.SetFocus;
     exit;
  end;

  FdistributorMaster.TbarangIDbarang.Value := Qdistributorid.Value;
  FdistributorMaster.TbarangIDdistributor.Value := FdistributorMaster.Tdistributorid.Value;
  FdistributorMaster.Tbarangharga.Value := pvharga;
  FdistributorMaster.Tbarang.Post;

  pvtutup := True;
  Close;
end;

procedure TFbarangDistributor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FDistributorMaster.Enabled := True;
  FrmInduk.Enabled := True;

  if not(pvtutup) then   FdistributorMaster.Tbarang.Cancel;

  Qdistributor.Active := False;
  Action := caFree;
end;

procedure TFbarangDistributor.FormCreate(Sender: TObject);
begin
  Qdistributor.Active := True;
end;

procedure TFbarangDistributor.btnbatalClick(Sender: TObject);
begin
  FdistributorMaster.Tbarang.Cancel;

  pvtutup := True;
  Close;
end;

end.
