unit untMenuSoldout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, Grids, DBGrids, DB, DBTables,
  ComCtrls, bsSkinCtrls, StdCtrls, AEDIT, ZDataset;

type
  TfMenuSoldout = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    lvMenu: TListView;
    lvMenuSoldout: TListView;
    btnTambah: TbsSkinButton;
    btnHapus: TbsSkinButton;
    Kategori: TLabel;
    Label1: TLabel;
    btnCari: TbsSkinButton;
    edtId: TEdit;
    edtMenu: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure edtIdKeyPress(Sender: TObject; var Key: Char);
    procedure edtMenuKeyPress(Sender: TObject; var Key: Char);
  private
    procedure cari;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenuSoldout: TfMenuSoldout;

implementation

uses Unit1;

{$R *.dfm}


procedure TfMenuSoldout.FormCreate(Sender: TObject);
var
  query: TZQuery;
  li: TListItem;
begin
  cari;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'select tSoldout.menu_id, tmenu.menu from tSoldout inner join tmenu on tmenu.id = tSoldout.menu_id';
  query.Active := True;
  query.First;
  while query.Eof = False do
  begin
    li := lvMenuSoldout.Items.Add;
    li.Caption := query.FieldByName('menu_id').AsString;
    li.SubItems.Add(query.FieldByName('menu').AsString);
    query.Next;
  end;
  query.Active := False;
end;

procedure TfMenuSoldout.btnTambahClick(Sender: TObject);
var
  query: TZQuery;
  li: TListItem;
begin
  if lvMenu.Selected <> nil then
  begin

    query := TZQuery.Create(Self);
    query.Connection := modul.Database1;
    query.SQL.Text := 'insert tSoldout values (''' + lvMenu.ItemFocused.Caption + ''')';
    query.ExecSQL;

    li := lvMenuSoldout.Items.Add;
    li.Caption := lvMenu.ItemFocused.Caption;
    li.SubItems.Add(lvMenu.ItemFocused.SubItems[0]);

    lvMenu.ItemFocused.Free;
  end;
end;

procedure TfMenuSoldout.btnHapusClick(Sender: TObject);
var
  query: TZQuery;
  li: TListItem;
begin
  if lvMenuSoldout.Selected <> nil then
  begin

    query := TZQuery.Create(Self);
    query.Connection := modul.Database1;
    query.SQL.Text := 'delete from tSoldout where menu_id = ''' + lvMenuSoldout.ItemFocused.Caption + '''';
    query.ExecSQL;

    li := lvMenu.Items.Add;
    li.Caption := lvMenuSoldout.ItemFocused.Caption;
    li.SubItems.Add(lvMenuSoldout.ItemFocused.SubItems[0]);

    lvMenuSoldout.ItemFocused.Free;
  end;
end;

procedure TfMenuSoldout.cari;
var
  query: TZQuery;
  li: TListItem;
begin

  lvMenu.Items.Clear;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  query.SQL.Text := 'select id, menu from tmenu where tmenu.id not in (select menu_id from tSoldout)';
  if edtId.Text <> '' then
  begin
    query.SQL.Text := query.SQL.Text + ' and tmenu.id like ''%' + edtId.Text + '%''';
  end;
  if edtMenu.Text <> '' then
  begin
    query.SQL.Text := query.SQL.Text + ' and tmenu.menu like ''%' + edtMenu.Text + '%''';
  end;

  query.Active := True;
  query.First;
  while query.Eof = False do
  begin
    li := lvMenu.Items.Add;
    li.Caption := query.FieldByName('id').AsString;
    li.SubItems.Add(query.FieldByName('menu').AsString);
    query.Next;
  end;
  query.Active := False;
end;

procedure TfMenuSoldout.btnCariClick(Sender: TObject);
begin
  cari;
end;

procedure TfMenuSoldout.edtIdKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    cari;
  end;
end;

procedure TfMenuSoldout.edtMenuKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    cari;
  end;
end;

end.
