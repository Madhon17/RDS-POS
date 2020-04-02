unit untstokbarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, bsSkinCtrls, ComCtrls,
  ExtCtrls, MemDS, VirtualTable, bsMessages, BusinessSkinForm, RpDefine,
  RpCon, RpConDS, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfstokbarang = class(TForm)
    btncari: TbsSkinXFormButton;
    Panel3: TPanel;
    rdo_namabarang: TRadioButton;
    Qcari: TZQuery;
    DSstok: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    RVstok: TRvDataSetConnection;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    rdo_idbarang: TRadioButton;
    RVkategoristok: TRvDataSetConnection;
    Panel2: TPanel;
    cmbKategori: TComboBox;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    Qcariidbarang: TStringField;
    Qcarinamabarang: TStringField;
    Qcarimasuk: TFloatField;
    Qcarikeluar: TFloatField;
    QcariCalStok: TFloatField;
    cmbGudang: TComboBox;
    Qkategori: TZQuery;
    Qkategorikode: TStringField;
    Qkategorikategori: TStringField;
    Qkategoriid: TSmallintField;
    Qgudang: TZQuery;
    Qgudangid: TIntegerField;
    Qgudanggudang: TStringField;
    DBGrid1: TDBGrid;
    Qcarikode: TStringField;
    Qcariidkategori: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnexitClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure QcariCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QgudangFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fstokbarang: Tfstokbarang;

implementation
    uses unit1, unit3;
{$R *.dfm}

procedure Tfstokbarang.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbstokbarang := False;
  Action := caFree;
end;

procedure Tfstokbarang.btnexitClick(Sender: TObject);
begin
  fstokbarang.Close;
end;

procedure Tfstokbarang.btnprintClick(Sender: TObject);
begin
  Qgudang.Filtered := True;
//   FrmInduk.RvProject1.SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy', Tgl_akhir.DateTime) +
//                                               FormatDateTime(' HH:mm:ss', waktuakhir.DateTime) );
   FrmInduk.RvProject1.ExecuteReport('Fstokbarang');
   Qgudang.Filtered := False;
end;

procedure Tfstokbarang.btncariClick(Sender: TObject);
begin
  Qkategori.Active := False;
  Qkategori.SQL.Text := ' SELECT     kode, kategori, id '+
                        ' FROM         tkategoribarang '+
                        ' ORDER BY kategori ';
  Qkategori.Active := True;

  Qcari.Active := False;
  Qcari.SQL.Text := ' SELECT    Tbarang.idbarang, Tbarang.namabarang, TM.qty AS masuk, TK.qty AS keluar, tsatuan.kode, Tbarang.idkategori '+
                    ' FROM      Tbarang LEFT OUTER JOIN '+
                    '   tsatuan ON Tbarang.idsatuan = tsatuan.id LEFT OUTER JOIN '+
                    '           (SELECT     TKd.idbarang, SUM(TKd.qty) AS qty '+
                    '            FROM       TgudangMutasiDetail TKd INNER JOIN '+
                    '                       TgudangMutasi TK ON TKd.idmutasi = TK.id '+
                    '            WHERE      (TK.asal > 5) AND (TK.tanggal <= '  +
                                            QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) +  ')';
                if cmbGudang.ItemIndex > 0 then
                begin
                  Qgudang.Locate('gudang', cmbGudang.Text,[]);
                  Qcari.SQL.Text := Qcari.SQL.Text + 'AND (TK.asal = '+ Qgudangid.AsString+')'
                end;
                   Qcari.SQL.Text := Qcari.SQL.Text +
                    '            GROUP BY   TKd.idbarang) TK ON Tbarang.idbarang = TK.idbarang LEFT OUTER JOIN '+
                    '            (SELECT    TMd.idbarang, SUM(TMd.qty) AS qty '+
                    '            FROM       TgudangMutasiDetail TMd INNER JOIN '+
                    '                       TgudangMutasi TM ON TMd.idmutasi = TM.id  '+
                    '            WHERE      (TM.tujuan > 5) AND (TM.tanggal <= '+
                                            QuotedStr(FormatDateTime('yyyy-MM-dd ', Tgl_akhir.Date) + FormatDateTime('HH:mm:ss', waktuakhir.Time )) +  ')';
              if cmbGudang.ItemIndex > 0 then
              begin
                Qgudang.Locate('gudang', cmbGudang.Text,[]);
                Qcari.SQL.Text := Qcari.SQL.Text + 'AND (TM.tujuan = '+ Qgudangid.AsString+')'
              end;
                   Qcari.SQL.Text := Qcari.SQL.Text +
                    ' GROUP BY TMd.idbarang) TM ON Tbarang.idbarang = TM.idbarang ';

              Qcari.SQL.Text := Qcari.SQL.Text + ' WHERE     (Tbarang.status = 1) ';
              if cmbKategori.ItemIndex > 0 then
              begin
                Qkategori.Locate('kategori', cmbKategori.Text,[]);
                Qcari.SQL.Text := Qcari.SQL.Text + ' AND     (Tbarang.idkategori = '+ Qkategoriid.AsString +')';
              end;

      Qkategori.Active := False;
      Qkategori.SQL.Text := ' SELECT     tkategoribarang.id, tkategoribarang.kategori, tkategoribarang.kode '+
                            ' FROM         tkategoribarang INNER JOIN ('+
                            Qcari.SQL.Text + ') TB ON tkategoribarang.id = TB.idkategori '+
                            ' GROUP BY tkategoribarang.kategori, tkategoribarang.kode, tkategoribarang.id';
      Qkategori.Active := True;

      if rdo_idbarang.Checked then
                   Qcari.SQL.Text := Qcari.SQL.Text +
                    ' ORDER BY Tbarang.idbarang '
      else
                   Qcari.SQL.Text := Qcari.SQL.Text +
                    ' ORDER BY Tbarang.namabarang ';

  qcari.Active := True;
end;

procedure Tfstokbarang.QcariCalcFields(DataSet: TDataSet);
begin
  QcariCalStok.Value := Qcarimasuk.Value - Qcarikeluar.Value;
end;

procedure Tfstokbarang.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;
  Qgudang.Connection := modul.Database1;

  Tgl_akhir.Date := Now;
  waktuakhir.Time := Now;
  Qgudang.Active := True;
  Qgudang.First;
  cmbGudang.Clear;
  cmbGudang.Items.Add('');
  while not(Qgudang.Eof) do
  begin
    cmbGudang.Items.Add(Qgudanggudang.Value);
    Qgudang.Next;
  end;
  cmbGudang.ItemIndex := 0;
  Qkategori.Active := True;
  Qkategori.First;
  cmbKategori.Clear;
  cmbKategori.Items.Add('');
  while not(Qkategori.Eof) do
  begin
    cmbKategori.Items.Add(Qkategorikategori.Value);
    Qkategori.Next;
  end;
  cmbGudang.ItemIndex := 0;
end;

procedure Tfstokbarang.QgudangFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  accept := Qgudanggudang.Value = cmbGudang.Text;
end;

end.
