unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, DBCtrls,
  BusinessSkinForm;

type
    Tfcarimenu = class(TForm)
    Label1: TLabel;
    dbcarimenu: TDBGrid;
    btnok: TButton;
    btnbatal: TButton;
    qmenu: TQuery;
    DSmenu: TDataSource;
    cmbKategori: TComboBox;
    qKatMenu: TQuery;
    DSkatmenu: TDataSource;
    edtcarimenu: TEdit;
    Edit1: TEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure FormCreate(Sender: TObject);
    procedure cmbKategoriClick(Sender: TObject);
    procedure edtcarimenuChange(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure dbcarimenuDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcarimenu: Tfcarimenu;

implementation
  uses unit1, unit11, unit9;
{$R *.dfm}

procedure Tfcarimenu.FormCreate(Sender: TObject);
begin
  fpaketroom.pbcarimenu := True;
  qKatMenu.SQL.Text :='SELECT id, kategori    '+
                      ' FROM tkategorimenu '+
                      'ORDER BY kategori';
  qKatMenu.Active := True;
  cmbKategori.Clear;
  cmbKategori.Items.Add('');
  while not(qKatMenu.Eof) do
  begin
    cmbKategori.Items.Add(qKatMenu.Fields[1].Value);
    qKatMenu.Next
  end;
    cmbKategori.ItemIndex := 0;
    cmbKategoriClick(Sender);
    dbcarimenu.Enabled := True;

end;

procedure Tfcarimenu.cmbKategoriClick(Sender: TObject);
begin
  qmenu.Active := False;
  qmenu.SQL.Text :=   ' SELECT     id, kategori, menu, harga ' +
                      ' FROM         tmenu' ;
  if cmbKategori.ItemIndex <> 0 then
  begin
   qKatMenu.Locate('kategori',cmbKategori.Text,[loCaseInsensitive]);
   qmenu.SQL.Text := qmenu.SQL.Text + ' WHERE     kategori = '+ IntToStr(qKatMenu.fieldByName('id').Value);
  end;
  qmenu.SQL.Text := qmenu.SQL.Text + ' ORDER BY id';
  qmenu.Active := True;

end;

procedure Tfcarimenu.edtcarimenuChange(Sender: TObject);
begin
   qmenu.Active := False;
   qmenu.SQL.Text :=  ' SELECT     kategori, menu, harga ' +
                      ' FROM         tmenu ' ;
  if cmbKategori.ItemIndex = 0 then
  begin
    qmenu.Active := True;
    qmenu.SQL.Text :=   qmenu.SQL.Text +
                      ' where menu like ' + QuotedStr('%' +  edtcarimenu.text + '%');
  end;

  qmenu.Active := True;
end;

procedure Tfcarimenu.btnokClick(Sender: TObject);
  var c : string;
begin
   c := qmenu.FieldByName('id').AsString;
   Edit1.Text := c ;
  fpaketroom.edtmenu.Text := Edit1.Text;
  fcarimenu.Close;

end;

procedure Tfcarimenu.btnbatalClick(Sender: TObject);
begin
  fpaketroom.edtmenu.Text := '';
  fpaketroom.edtNamaMenu.Text := '';
  fpaketroom.edtharga.Text := '';
  fpaketroom.edtmenu.SetFocus;
  fcarimenu.Close;
end;

procedure Tfcarimenu.dbcarimenuDblClick(Sender: TObject);
  var c : string;
begin
   c := qmenu.FieldByName('id').AsString;
   Edit1.Text := c ;
   fpaketroom.edtmenu.Text := Edit1.Text;
   fpaketroom.edtharga.SetFocus;
   fcarimenu.Close;
end;

procedure Tfcarimenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fpaketroom.pbcarimenu := False;
end;

end.
