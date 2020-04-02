unit untdatasong;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, BusinessSkinForm, bsMessages, ZDataset,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, DBTables, Grids,
  DBGrids, bsSkinCtrls, ExtCtrls, RpDefine, RpCon, RpConDS, AEDIT;

type
  Tfdatasong = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    cmbkategori: TComboBox;
    qkategori: TZQuery;
    qkategoriid: TSmallintField;
    qkategorikategori: TStringField;
    Label2: TLabel;
    Panel3: TPanel;
    rdo_title: TRadioButton;
    rdo_idmusic: TRadioButton;
    rdo_singer: TRadioButton;
    DataSource1: TDataSource;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    chkkategori: TCheckBox;
    chktitle: TCheckBox;
    ZReadOnlyQuery1IDMUSIC: TIntegerField;
    ZReadOnlyQuery1VCD: TStringField;
    ZReadOnlyQuery1TITLE: TStringField;
    ZReadOnlyQuery1SINGER: TStringField;
    ZReadOnlyQuery1DISC: TStringField;
    ZReadOnlyQuery1PATH: TStringField;
    ZReadOnlyQuery1ANALOG: TStringField;
    ZReadOnlyQuery1WORD: TIntegerField;
    ZReadOnlyQuery1TIME: TTimeField;
    ZReadOnlyQuery1FLAG: TStringField;
    ZReadOnlyQuery1VOL: TIntegerField;
    ZReadOnlyQuery1ISHOUSE: TStringField;
    ZReadOnlyQuery1HOLD: TSmallintField;
    ZReadOnlyQuery1CHUSR: TIntegerField;
    ZReadOnlyQuery1CHTIME: TIntegerField;
    edttitle: TAEdit;
    btncari: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    btnprint: TbsSkinXFormButton;
    RVDataSong: TRvDataSetConnection;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Label1: TLabel;
    edttotal: TAEdit;
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncariClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chktitleClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
  private
    pvid    : Longint;
    pvkategori  : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdatasong: Tfdatasong;

implementation
      uses unit1, unit3 ;
{$R *.dfm}

procedure Tfdatasong.btnExitClick(Sender: TObject);
begin
  fdatasong.Close;
end;

procedure Tfdatasong.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbdatalagu := False;

end;

procedure Tfdatasong.btncariClick(Sender: TObject);
var sql, sqlfilter  : String;
    jumlah    : Integer;
begin
   jumlah := 0;
   pvkategori := cmbkategori.Text;
   
   pvid := cmbkategori.ItemIndex;
  if cmbkategori.ItemIndex = 0 then
  begin
    sql := 'SELECT * FROM masters ';

  end
  else
  begin
    ZReadOnlyQuery1.Active := False;
    sql := 'SELECT * FROM masters ';
    sqlfilter := 'where idmusic is not null';
    if chkkategori.Checked then
      sqlfilter := sqlfilter + ' and (type = ' + IntToStr(pvid) + ')';
    if chktitle.Checked then
      sqlfilter := sqlfilter + ' and (title like ' + QuotedStr(edttitle.Text) + ')';
  end;

   if rdo_title.Checked then
      sqlfilter := sqlfilter + ' ORDER BY TITLE';
    if rdo_idmusic.Checked then
      sqlfilter := sqlfilter + ' ORDER BY IDMUSIC';
    if rdo_singer.Checked then
      sqlfilter := sqlfilter + ' ORDER BY SINGER ';

    ZReadOnlyQuery1.SQL.Text := sql + sqlfilter;
    ZReadOnlyQuery1.Active := True;

    jumlah := ZReadOnlyQuery1.RecordCount;
    

    edttotal.Text := FormatFloat('0',jumlah);
end;

procedure Tfdatasong.FormCreate(Sender: TObject);
begin

  qkategori.Connection := modul.Database1;

   FrmInduk.pbdatalagu := True;
   chkkategori.Checked := True;
   cmbkategori.ItemIndex := 0;
   chktitleClick(Sender);
   btncariClick(Sender);

end;

procedure Tfdatasong.chktitleClick(Sender: TObject);
begin
  if chktitle.Checked then
  begin
    edttitle.Enabled := True;
    edttitle.SetFocus
  end
  else
  begin
    edttitle.Enabled := False;
    edttitle.Clear;
  end;
end;

procedure Tfdatasong.btnprintClick(Sender: TObject);
begin
  FrmInduk.RvProject1.SetParam('kategori',pvkategori);
  FrmInduk.RvProject1.SetParam('totaljual',edttotal.Text);
  FrmInduk.RvProject1.ExecuteReport('FDataSong');

end;

end.
