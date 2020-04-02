unit untdatamember;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RpDefine, RpCon, RpConDS, DBTables, StdCtrls, Grids,
  DBGrids, bsSkinCtrls, ExtCtrls, bsMessages, BusinessSkinForm, ComCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfdatamember = class(TForm)
    Panel1: TPanel;
    cmbkategori: TComboBox;
    chk_kategori: TCheckBox;
    btncari: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    btnprint: TbsSkinXFormButton;
    Panel3: TPanel;
    rdo_nama: TRadioButton;
    rdo_idmember: TRadioButton;
    Qcari: TZQuery;
    DScari: TDataSource;
    RVdatamember: TRvDataSetConnection;
    Qkategori: TZQuery;
    Qkategoriid: TSmallintField;
    Qkategorikategori: TStringField;
    Qcariid: TStringField;
    Qcarikategori: TStringField;
    Qcarinama: TStringField;
    QcariTgl_lahir: TDateTimeField;
    QcariHP: TStringField;
    QcariTelp: TStringField;
    bsSkinMessage1: TbsSkinMessage;
    QcariCalAlamat: TStringField;
    Qcarialamat1: TStringField;
    Qcarialamat2: TStringField;
    DBGrid1: TDBGrid;
    rdo_ultah: TRadioButton;
    chk_ultah: TCheckBox;
    tgl_mulai: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Qcabang: TZQuery;
    Qcabangid_cabang: TSmallintField;
    Qcabangkategori: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure QcariCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnexitClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure chk_kategoriClick(Sender: TObject);
    procedure chk_ultahClick(Sender: TObject);
  private
    pvorderby, pvkategori       : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdatamember: Tfdatamember;

implementation
     uses unit1, unit3, dateutils;
{$R *.dfm}

procedure Tfdatamember.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;
  Qcabang.Connection := modul.Database1;

  FrmInduk.pbdatamember := True;

  Qkategori.Active := True;
  cmbkategori.Clear;
  Qkategori.First;
  while not (Qkategori.Eof) do
  begin
    cmbkategori.Items.Add(Qkategorikategori.AsString);
    Qkategori.Next;
  end ;
  cmbkategori.ItemIndex := 0;

  tgl_mulai.Date := StrToDate(IntToStr(DayOf(Date))+'-'+ IntToStr(MonthOf(Date))+'-'+'2000');
  Tgl_akhir.Date := StrToDate(IntToStr(DayOf(Date))+'-'+ IntToStr(MonthOf(Date))+'-'+'2000');

  Qcabang.Active := True;
  if Qcabangid_cabang.Value > 0 then
  begin
//    cmbkategori.ItemIndex := cmbkategori.Items.IndexOfName(Qcabangkategori.Value);
    cmbkategori.Clear;
    cmbkategori.Items.Add(Qcabangkategori.AsString);
    cmbkategori.ItemIndex := 0;
    chk_kategori.Checked := True;
    chk_kategori.Enabled := False;
  end;
end;

procedure Tfdatamember.btncariClick(Sender: TObject);
var vsql, sqlfilter  : String;
begin
    Qcari.Active := False;

    vsql := ' SELECT     tmember.id, tkategorimember.kategori, tmember.nama, tmember.Tgl_lahir, tmember.HP, tmember.Telp, tmember.alamat1, tmember.alamat2 ' +
            ' FROM       tmember INNER JOIN ' +
            '            tkategorimember ON tmember.id_kategori = tkategorimember.id ' +
            ' WHERE      (tmember.id IS NOT NULL) ' ;

  if chk_ultah.Checked then
  begin
    vsql :=  vsql + ' AND ((((month(tmember.Tgl_lahir) * 100) + dayofmonth(tmember.Tgl_lahir)) >= :tgl_awal) and (((month(tmember.Tgl_lahir) * 100) + dayofmonth(tmember.Tgl_lahir)) <= :tgl_akhir))';
  end;

  if (chk_kategori.Checked)then
  begin
    vsql := vsql + ' and (tkategorimember.kategori=  ' + QuotedStr(cmbkategori.Text) + ')';
  end;

  if (rdo_idmember.Checked) then
  begin
    sqlfilter := ' ORDER BY tmember.id ';
    pvorderby := ' ORDER BY ID-MEMBER ';
  end;
  if (rdo_nama.Checked) then
  begin
    sqlfilter := ' ORDER BY tmember.nama';
    pvorderby := ' ORDER BY NAMA  ';
  end;
  if (rdo_ultah.Checked) then
  begin
    sqlfilter := ' ORDER BY ((month(tmember.Tgl_lahir) * 100) + dayofmonth(tmember.Tgl_lahir)) ';
    pvorderby := ' ORDER BY Ulang Tahun ';
  end;
  Qcari.SQL.Text := vsql + sqlfilter;

  if chk_ultah.Checked then
  begin
    Qcari.Params[0].Value := formatdatetime('mmdd', tgl_mulai.DateTime);
    Qcari.Params[1].Value := formatdatetime('mmdd', Tgl_akhir.DateTime);
  end;

  Qcari.Active := True;

  pvkategori := cmbkategori.Text;
end;

procedure Tfdatamember.QcariCalcFields(DataSet: TDataSet);
begin
  QcariCalAlamat.Value := Qcarialamat1.Value + Qcarialamat2.Value;
end;

procedure Tfdatamember.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbdatamember := False;
end;

procedure Tfdatamember.btnexitClick(Sender: TObject);
begin
  fdatamember.Close;
end;

procedure Tfdatamember.btnprintClick(Sender: TObject);
begin
  if not(Qcari.Active) then exit;
   FrmInduk.RvProject1.SetParam('kategori',pvkategori);
   FrmInduk.RvProject1.SetParam('orderby',pvorderby);
   FrmInduk.RvProject1.ExecuteReport('Fdatamember');
end;

procedure Tfdatamember.chk_kategoriClick(Sender: TObject);
begin
  if chk_kategori.Checked then
  begin
    cmbkategori.Enabled := True;
  end
  else
  begin
    cmbkategori.Enabled := False;
  end;

  Qcari.Active := False;
end;

procedure Tfdatamember.chk_ultahClick(Sender: TObject);
begin
  if chk_ultah.Checked then
  begin
    tgl_mulai.Enabled := True;
    Tgl_akhir.Enabled := True;
  end
  else
  begin
    tgl_mulai.Enabled := False;
    Tgl_akhir.Enabled := False;
  end;

  Qcari.Active := False;
end;

end.
