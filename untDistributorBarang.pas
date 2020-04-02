unit untDistributorBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, StdCtrls, AEDIT, Grids, DBGrids, DB, DBTables,
  bsMessages, BusinessSkinForm;

type
  TFdistributorBarang = class(TForm)
    DBGrid1: TDBGrid;
    Label7: TLabel;
    edtidbarang: TAEdit;
    edtnamabarang: TAEdit;
    Qdistributor: TQuery;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    Qdistributorid: TSmallintField;
    Qdistributornama: TStringField;
    DSdistributor: TDataSource;
    Label1: TLabel;
    edtHarga: TAEdit;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    procedure btnsimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtHargaEnter(Sender: TObject);
    procedure edtHargaExit(Sender: TObject);
    procedure edtHargaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtidbarangKeyPress(Sender: TObject; var Key: Char);
    procedure edtnamabarangKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnbatalClick(Sender: TObject);
    procedure edtidbarangChange(Sender: TObject);
    procedure edtnamabarangChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    pvtutup : Boolean;
  public
   pvharga : Real;
  end;

var
  FdistributorBarang: TFdistributorBarang;

implementation

uses untBarangMaster, Unit3;

{$R *.dfm}

procedure TFdistributorBarang.btnsimpanClick(Sender: TObject);
begin
  if Qdistributorid.AsString = '' then
  begin
     bsSkinMessage1.MessageDlg('            Pilih Supplyer            ', mtError, [mbok],0);
     edtidbarang.SetFocus;
     exit;
  end;
  
  FbarangMaster.TdistributorIDdistributor.Value := Qdistributorid.Value;
  FbarangMaster.TdistributorIDbarang.Value := FbarangMaster.tbarangidbarang.Value;
  FbarangMaster.Tdistributorharga.Value := pvharga;
  FbarangMaster.Tdistributor.Post;

  pvtutup := True;
  Close;
end;

procedure TFdistributorBarang.FormCreate(Sender: TObject);
begin
  Qdistributor.Active := True;  
end;

procedure TFdistributorBarang.edtHargaEnter(Sender: TObject);
begin
  edtHarga.Text := FormatFloat('0', pvharga);
  edtHarga.SelectAll;
end;

procedure TFdistributorBarang.edtHargaExit(Sender: TObject);
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

procedure TFdistributorBarang.edtHargaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;

  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

procedure TFdistributorBarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FbarangMaster.Enabled := True;
  FrmInduk.Enabled := True;

  if not(pvtutup) then FbarangMaster.Tdistributor.Cancel;

  FbarangMaster.DBGrid3.SetFocus;

  Qdistributor.Active := False;
  Action := caFree;
end;

procedure TFdistributorBarang.edtidbarangKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;

  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

procedure TFdistributorBarang.edtnamabarangKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFdistributorBarang.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
   if (gdSelected in State) then
   begin
     Brush.Color := clAqua;
     FillRect(Rect);
     Font.Color:= clBlack;
   end;
   end;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFdistributorBarang.btnbatalClick(Sender: TObject);
begin
  FbarangMaster.Tdistributor.Cancel;
  pvtutup := True;
  Close;
end;

procedure TFdistributorBarang.edtidbarangChange(Sender: TObject);
var i : integer;
    s : string;
begin
  i := 0;
  if not(edtidbarang.Text = '') then
  begin
    try
      i := StrToInt(edtidbarang.Text)
    except
      i := 0;
    end;
  end;
  s := FormatFloat('#',i);

  Qdistributor.SQL.Text := ' SELECT     id, nama '+
                           ' FROM         tdistributor '+
                           ' WHERE id LIKE ' + QuotedStr('%'+ s +'%')+
                           ' ORDER BY id';
  Qdistributor.Active := True;

end;

procedure TFdistributorBarang.edtnamabarangChange(Sender: TObject);
begin
  Qdistributor.SQL.Text := ' SELECT     id, nama '+
                           ' FROM         tdistributor '+
                           ' WHERE nama LIKE ' + QuotedStr('%'+ edtnamabarang.Text +'%')+
                           ' ORDER BY nama';
  Qdistributor.Active := True;
end;

procedure TFdistributorBarang.DBGrid1DblClick(Sender: TObject);
begin
  edtHarga.SetFocus;
  edtHarga.SelectAll;
end;

end.
