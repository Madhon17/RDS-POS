unit untKomposisiInput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, bsMessages, BusinessSkinForm, DB, DBTables,
  bsSkinCtrls, StdCtrls, AEDIT, Grids, DBGrids;

type
  TFkomposisiInput = class(TForm)
    Label7: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    edtidbarang: TAEdit;
    edtnamabarang: TAEdit;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    Qbarang: TQuery;
    Qbarangid: TStringField;
    Qbarangnama: TStringField;
    DSdistributor: TDataSource;
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qbarangkode: TStringField;
    DBEdit1: TDBEdit;
    bsSkinButton1: TbsSkinButton;
    edtQty: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtidbarangChange(Sender: TObject);
    procedure edtnamabarangChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtidbarangKeyPress(Sender: TObject; var Key: Char);
  private
     pvtutup : Boolean;
  public
    { Public declarations }
  end;

var
  FkomposisiInput: TFkomposisiInput;

implementation

uses untKomposisi, Unit3;

{$R *.dfm}

procedure TFkomposisiInput.FormCreate(Sender: TObject);
begin
  Qbarang.Active := True;
end;

procedure TFkomposisiInput.btnsimpanClick(Sender: TObject);
begin
  if Qbarangid.AsString = '' then
  begin
     bsSkinMessage1.MessageDlg('            Pilih Item            ', mtInformation, [mbok],0);
     edtidbarang.SetFocus;
     exit;
  end;
  if fkomposisi.Tkomposisiqtysatuan.Value <= 0 then
  begin
     bsSkinMessage1.MessageDlg('            Quantity            ', mtInformation, [mbok],0);
     edtQty.SetFocus;
     exit;
  end;

  fkomposisi.Tkomposisiidbarang.Value := Qbarangid.Value;
  fkomposisi.Tkomposisiidmenu.Value := fkomposisi.tmenuid.Value;
  fkomposisi.Tkomposisi.Post;
  pvtutup := True;
  Close;
end;

procedure TFkomposisiInput.btnbatalClick(Sender: TObject);
begin
  Fkomposisi.Tkomposisi.Cancel;
  pvtutup := True;
  Close;
end;

procedure TFkomposisiInput.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.Enabled := True;
  fkomposisi.Enabled := True;

  fkomposisi.DBGmenu.SetFocus;

  if not(pvtutup) then Fkomposisi.Tkomposisi.Cancel;

  Action := caFree;
end;

procedure TFkomposisiInput.edtidbarangChange(Sender: TObject);
begin
  Qbarang.SQL.Text := ' SELECT     Tbarang.idbarang AS id, Tbarang.namabarang AS nama, tsatuan.kode '+
                      ' FROM       Tbarang INNER JOIN '+
                      '            tsatuan ON Tbarang.idsatuan = tsatuan.id '+
                      ' WHERE      idbarang LIKE ' + QuotedStr('%'+ edtidbarang.Text +'%')+
                      '            ORDER BY Tbarang.idbarang ';
  Qbarang.Active := True;
end;

procedure TFkomposisiInput.edtnamabarangChange(Sender: TObject);
begin
  Qbarang.Active := False;
  Qbarang.SQL.Text := ' SELECT     Tbarang.idbarang AS id, Tbarang.namabarang AS nama, tsatuan.kode '+
                      ' FROM       Tbarang INNER JOIN '+
                      '            tsatuan ON Tbarang.idsatuan = tsatuan.id '+
                      ' WHERE      namabarang LIKE ' + QuotedStr('%'+ edtnamabarang.Text +'%')+
                      '            ORDER BY Tbarang.namabarang ';
  Qbarang.Active := True;
end;

procedure TFkomposisiInput.DBGrid1DrawColumnCell(Sender: TObject;
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
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFkomposisiInput.edtidbarangKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  begin
    key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

end.
