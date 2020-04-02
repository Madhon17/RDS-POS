unit untcaribarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls, bsMessages,
  BusinessSkinForm, bsSkinCtrls, AEDIT;

type
  Tfcaribarang = class(TForm)
    Panel1: TPanel;
    DBGbarang: TDBGrid;
    cmbkatbarang: TComboBox;
    Qkatbarang: TQuery;
    Qbarang: TQuery;
    DSbarang: TDataSource;
    Qbarangidbarang: TStringField;
    Qbarangnamabarang: TStringField;
    Qbarangidkategori: TSmallintField;
    Qbarangsatuan: TStringField;
    Qbarangkategori: TStringField;
    Qbarangidsatuan: TSmallintField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    bsSkinButton1: TbsSkinButton;
    Label1: TLabel;
    Label2: TLabel;
    edtidbarang: TAEdit;
    edtnamabarang: TAEdit;
    btnsimpan: TbsSkinButton;
    procedure cmbkatbarangChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure DBGbarangDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtidbarangChange(Sender: TObject);
    procedure edtidbarangEnter(Sender: TObject);
    procedure edtidbarangExit(Sender: TObject);
    procedure edtidbarangKeyPress(Sender: TObject; var Key: Char);
    procedure edtnamabarangChange(Sender: TObject);
    procedure edtnamabarangEnter(Sender: TObject);
    procedure edtnamabarangExit(Sender: TObject);
    procedure edtnamabarangKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcaribarang: Tfcaribarang;

implementation
   uses unit1, unit3, untkomposisi;
{$R *.dfm}

procedure Tfcaribarang.cmbkatbarangChange(Sender: TObject);
begin
  Qbarang.Active := False;
  Qbarang.SQL.Text := ' SELECT     tbarang.idbarang, tbarang.namabarang, tbarang.idkategori, tsatuan.satuan, tkategoribarang.kategori, tbarang.idsatuan ' +
                      ' FROM         tsatuan INNER JOIN ' +
                      ' tbarang ON tsatuan.id = tbarang.idsatuan LEFT OUTER JOIN ' +
                      ' tkategoribarang ON tbarang.idkategori = tkategoribarang.id ';
                      
 if cmbkatbarang.ItemIndex <> 0 then
  begin
    Qbarang.SQL.Text := Qbarang.SQL.Text +  ' WHERE     (tkategoribarang.kategori = ' + QuotedStr(cmbkatbarang.Text) +  ' )' ;
  end;
  Qbarang.Active := True;
end;

procedure Tfcaribarang.FormCreate(Sender: TObject);
begin
  FrmInduk.pbcaribarang := True;
  Qbarang.Active := True;

  Qkatbarang.Active := False;
  Qkatbarang.SQL.Text := 'SELECT     id, kategori ' +
                         ' FROM         tkategoribarang ' +
                         ' ORDER BY kategori ';
  Qkatbarang.Active := True;

  cmbkatbarang.Clear;
  cmbkatbarang.Items.Add('');
  Qkatbarang.First;
  while not (Qkatbarang.Eof) do
  begin
    cmbkatbarang.Items.Add(Qkatbarang.fieldByName('kategori').AsString);
    Qkatbarang.Next;
  end;
  cmbkatbarang.ItemIndex := 0;

end;

procedure Tfcaribarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbcaribarang := False;
end;

procedure Tfcaribarang.bsSkinButton1Click(Sender: TObject);
begin
  fcaribarang.Close;
end;

procedure Tfcaribarang.DBGbarangDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     Font.Style := [fsBold]; 
     end;
     end;
    DBGbarang.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfcaribarang.edtidbarangChange(Sender: TObject);
begin
  if edtidbarang.Text = '' then exit;
  if edtnamabarang.Focused then exit;
  if not(Qbarang.Active) then Qbarang.Active := True;

  Qbarang.Locate('idbarang', edtidbarang.text,[loPartialKey, loCaseInsensitive]);
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure Tfcaribarang.edtidbarangEnter(Sender: TObject);
begin
   edtidbarang.SelectAll;
end;

procedure Tfcaribarang.edtidbarangExit(Sender: TObject);
begin
   if edtidbarang.Text = '' then exit;
   
   edtidbarang.Text := Qbarangidbarang.AsString;
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure Tfcaribarang.edtidbarangKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13	then
  begin
     key := #0;
     Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfcaribarang.edtnamabarangChange(Sender: TObject);
begin
  if edtnamabarang.Text = '' then exit;
  if edtidbarang.Focused then exit;
  if not(Qbarang.Active) then Qbarang.Active := True;

  Qbarang.Locate('namabarang',edtnamabarang.Text,[loPartialKey, loCaseInsensitive]);
  edtidbarang.Text := Qbarangidbarang.AsString;
end;

procedure Tfcaribarang.edtnamabarangEnter(Sender: TObject);
begin
  edtnamabarang.SelectAll;
end;

procedure Tfcaribarang.edtnamabarangExit(Sender: TObject);
begin
   if edtnamabarang.Text = '' then exit;
   
  edtidbarang.Text := Qbarangidbarang.AsString;
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure Tfcaribarang.edtnamabarangKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13	then
  begin
     key := #0;
     Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

end.
