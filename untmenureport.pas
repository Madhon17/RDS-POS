unit untmenureport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, RpDefine, RpCon, RpConDS, DB,
  DBTables, StdCtrls, Grids, DBGrids, bsSkinCtrls, ExtCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfmenureport = class(TForm)
    Panel1: TPanel;
    cmbkategori: TComboBox;
    chk_kategori: TCheckBox;
    btncari: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    btnprint: TbsSkinXFormButton;
    Panel3: TPanel;
    rdo_namamenu: TRadioButton;
    rdo_idmenu: TRadioButton;
    rdo_harga: TRadioButton;
    Qcari: TZQuery;
    DScari: TDataSource;
    RVmenureport: TRvDataSetConnection;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qcarikategori: TStringField;
    Qcarimenu: TStringField;
    QcariHarga: TFloatField;
    Qcarilokasi: TStringField;
    Qcaristatus: TStringField;
    Qkategori: TZQuery;
    Qkategoriid: TSmallintField;
    Qkategorikategori: TStringField;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    pvkategori, pvorderby : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmenureport: Tfmenureport;

implementation
     uses unit1, unit3, DateUtils;
{$R *.dfm}

procedure Tfmenureport.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;

  FrmInduk.pbmenureport := True;

  chk_kategori.Checked := True;

  Qkategori.Active := True;
  cmbkategori.Clear;
  cmbkategori.Items.Add('ALL');
  Qkategori.First;
  while not (Qkategori.Eof) do
  begin
    cmbkategori.Items.Add(Qkategorikategori.AsString);
    Qkategori.Next;
  end ;
  cmbkategori.ItemIndex := 0;


  btncariClick(sender);

end;

procedure Tfmenureport.btncariClick(Sender: TObject);
 var vsql, sqlfilter  : String;
begin
  if cmbkategori.ItemIndex = 0 then
  begin
    Qcari.Active := False;
    Qcari.SQL.Text := ' SELECT     tkategorimenu.kategori, tmenu.menu, tmenu.Harga, tlokasi.lokasi, tmenu.status ' +
                      ' FROM         tmenu LEFT OUTER JOIN ' +
                      ' tlokasi ON tmenu.id_lokasi = tlokasi.id LEFT OUTER JOIN ' +
                      ' tkategorimenu ON tmenu.kategori = tkategorimenu.id ' +
                      ' WHERE     (tmenu.status = 1) ' ;
    Qcari.Active := True;
   end;

  if (cmbkategori.ItemIndex <> 0)then
  begin
    Qcari.Active := False;
    vsql := ' SELECT tmenu.id, tkategorimenu.kategori, tmenu.menu, tmenu.Harga, tlokasi.lokasi, tmenu.status ' +
            ' FROM tmenu LEFT OUTER JOIN ' +
            ' tlokasi ON tmenu.id_lokasi = tlokasi.id LEFT OUTER JOIN ' +
            ' tkategorimenu ON tmenu.kategori = tkategorimenu.id ' +
            ' WHERE  (tmenu.status = 1)';

    if chk_kategori.Checked then
    begin
      vsql := vsql + ' and (tkategorimenu.kategori=  ' + QuotedStr(cmbkategori.Text) + ')';
    end;

   if (rdo_idmenu.Checked) then
   begin
      sqlfilter := ' ORDER BY tmenu.id ';
      pvorderby := ' ORDER BY ID-MENU ';
   end;
   if (rdo_namamenu.Checked) then
      begin
        sqlfilter := ' ORDER BY tmenu.menu';
        pvorderby := ' ORDER BY NAMA MENU ';
      end;
   if (rdo_harga.Checked) then
      begin
        sqlfilter := ' ORDER BY tmenu.Harga';
        pvorderby := ' ORDER BY HARGA ';
      end;
  Qcari.SQL.Text := vsql + sqlfilter;
 
  Qcari.Active := True;
end;

  pvkategori := cmbkategori.Text;

end;



procedure Tfmenureport.btnprintClick(Sender: TObject);
begin
    FrmInduk.RvProject1.SetParam('kategori',pvkategori);
    FrmInduk.RvProject1.SetParam('orderby',pvorderby);
    FrmInduk.RvProject1.ExecuteReport('Fdatamenu');
end;

procedure Tfmenureport.btnexitClick(Sender: TObject);
begin
  fmenureport.Close;
end;

procedure Tfmenureport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbmenureport := False;

end;

end.
