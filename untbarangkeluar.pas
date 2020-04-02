unit untbarangkeluar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, bsSkinCtrls, Grids, DBGrids, StdCtrls, ComCtrls,
  ExtCtrls, bsMessages, BusinessSkinForm, RpDefine, RpCon, RpConDS, MemDS,
  VirtualTable, AEDIT, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfbarangkeluar = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    Panel3: TPanel;
    rdo_namabarang: TRadioButton;
    DBGrid1: TDBGrid;
    btncari: TbsSkinXFormButton;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    Qcari: TZQuery;
    DScari: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    RVbarangkeluar: TRvDataSetConnection;
    rdo_idbarang: TRadioButton;
    Qkategori: TZQuery;
    RVbarangkeluarKategori: TRvDataSetConnection;
    Qkategoriid: TSmallintField;
    Qkategorikategori: TStringField;
    VTBarang_Keluar: TVirtualTable;
    Qothers: TZQuery;
    cmbkategori: TComboBox;
    Qcariidbarang: TStringField;
    Qcaripenjualan: TFloatField;
    Qcariservice: TFloatField;
    Qcarireject: TFloatField;
    Qcariretur: TFloatField;
    Qcariharga: TFloatField;
    Qcarikode: TStringField;
    Qcarinamabarang: TStringField;
    QcariHservice: TFloatField;
    QcariHreject: TFloatField;
    QcariHretur: TFloatField;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    VTBarang_Keluaridbarang: TStringField;
    VTBarang_Keluarnamabarang: TStringField;
    VTBarang_Keluarkode: TStringField;
    VTBarang_Keluarpenjualan: TFloatField;
    VTBarang_KeluarHpenjualan: TFloatField;
    VTBarang_Keluarservice: TFloatField;
    VTBarang_Keluarhservice: TFloatField;
    VTBarang_Keluarreject: TFloatField;
    VTBarang_Keluarhreject: TFloatField;
    VTBarang_Keluarretur: TFloatField;
    VTBarang_Keluarhretur: TFloatField;
    BatchMove1: TBatchMove;
    txtBilling: TAEdit;
    txtService: TAEdit;
    txtReject: TAEdit;
    txtRetur: TAEdit;
    VTBarang_Keluarpenyesuaian: TFloatField;
    VTBarang_Keluarhpenyesuaian: TFloatField;
    Qcaripenyesuaian: TFloatField;
    QcariHpenyesuaian: TFloatField;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    txtPenyesuaian: TAEdit;
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnprintClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VTBarang_KeluarFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure rdo_idbarangClick(Sender: TObject);
  private
     pvorderby    : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbarangkeluar: Tfbarangkeluar;

type
  TAccessDBGrid = class(TDBGrid);

implementation
   uses unit1, unit3;
{$R *.dfm}

procedure Tfbarangkeluar.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;
  Qothers.Connection := modul.Database1;

  FrmInduk.pbreportkeluar := True;
  tgl_mulai.DateTime := now;
  Tgl_akhir.DateTime := now + 1;


    Qothers.Active := False;
    Qothers.SQL.Text := 'SELECT     kategori ' +
                      ' FROM         tkategoribarang ' +
                      ' ORDER BY kategori ';
    Qothers.Active := True;

    cmbkategori.Clear;
    cmbkategori.Items.Add('');
    while not (Qothers.Eof) do
    begin
      cmbkategori.Items.Add(Qothers.fieldByName('kategori').AsString);
      Qothers.Next;
    end;
      cmbkategori.ItemIndex := 0;

  Qkategori.Active := True;

  btncariClick(Sender);
end;

procedure Tfbarangkeluar.btncariClick(Sender: TObject);
var vsql : string;
    vtbilling, vtservice, vtreject, vtretur, vtpenyesuaian : Real;
begin
  vsql := ' SELECT     Tbarang.idbarang, tkp.harga, tkp.qty AS penjualan, tgks.qty AS service, tgks.harga AS Hservice,tgkr.qty AS reject, tgkr.harga AS Hreject, tgkt.qty AS retur, tgkt.harga AS Hretur, '+
          '                              tgkp.qty AS penyesuaian, tgkp.harga AS Hpenyesuaian, tsatuan.kode, Tbarang.namabarang '+
          ' FROM         Tbarang INNER JOIN '+
          '            tsatuan ON Tbarang.idsatuan = tsatuan.id LEFT OUTER JOIN '+
          '                (SELECT     TgudangMutasiDetail.idbarang, SUM(TgudangMutasiDetail.qty) AS qty, SUM(TgudangMutasiDetail.qty * TgudangMutasiDetail.harga) AS harga '+
          '                 FROM          TgudangMutasi INNER JOIN '+
          '                               TgudangMutasiDetail ON TgudangMutasi.id = TgudangMutasiDetail.idmutasi '+
          '                 WHERE        (TgudangMutasi.tujuan = 4)AND (TgudangMutasi.tanggal >= :tglAwal) AND (TgudangMutasi.tanggal <= :tglAkhir) '+
          '                               GROUP BY TgudangMutasiDetail.idbarang ' + ' ) tgkt ON Tbarang.idbarang = tgkt.idbarang LEFT OUTER JOIN '+
          '                (SELECT     TgudangMutasiDetail.idbarang, SUM(TgudangMutasiDetail.qty) AS qty, SUM(TgudangMutasiDetail.qty * TgudangMutasiDetail.harga) AS harga  '+
          '                 FROM          TgudangMutasi INNER JOIN '+
          '                               TgudangMutasiDetail ON TgudangMutasi.id = TgudangMutasiDetail.idmutasi '+
          '                 WHERE        (TgudangMutasi.tujuan = 3)AND (TgudangMutasi.tanggal >= :tglAwal) AND (TgudangMutasi.tanggal <= :tglAkhir)'+
          '                               GROUP BY TgudangMutasiDetail.idbarang ' + ' ) tgkr ON Tbarang.idbarang = tgkr.idbarang LEFT OUTER JOIN '+
          '                (SELECT     TgudangMutasiDetail.idbarang, SUM(TgudangMutasiDetail.qty) AS qty, SUM(TgudangMutasiDetail.qty * TgudangMutasiDetail.harga) AS harga '+
          '                 FROM          TgudangMutasi INNER JOIN '+
          '                               TgudangMutasiDetail ON TgudangMutasi.id = TgudangMutasiDetail.idmutasi '+
          '                 WHERE        (TgudangMutasi.tujuan = 2)AND (TgudangMutasi.tanggal >= :tglAwal) AND (TgudangMutasi.tanggal <= :tglAkhir)'+
          '                               GROUP BY TgudangMutasiDetail.idbarang ' + ') tgks ON Tbarang.idbarang = tgks.idbarang LEFT OUTER JOIN '+
          '                (SELECT     TgudangMutasiDetail.idbarang, SUM(TgudangMutasiDetail.qty) AS qty, SUM(TgudangMutasiDetail.qty * TgudangMutasiDetail.harga) AS harga '+
          '                 FROM          TgudangMutasi INNER JOIN '+
          '                               TgudangMutasiDetail ON TgudangMutasi.id = TgudangMutasiDetail.idmutasi '+
          '                 WHERE        (TgudangMutasi.tujuan = 5)AND (TgudangMutasi.tanggal >= :tglAwal) AND (TgudangMutasi.tanggal <= :tglAkhir)'+
          '                               GROUP BY TgudangMutasiDetail.idbarang ' + ') tgkp ON Tbarang.idbarang = tgkp.idbarang LEFT OUTER JOIN '+
          '                (SELECT        tbarang_keluar.idbarang, SUM(tbarang_keluar.qty) AS qty, SUM(tbarang_keluar.qty * tbarang_keluar.harga) AS harga '+
          '                 FROM          tbarang_keluar INNER JOIN '+
          '                                         tpayment ON tbarang_keluar.idorder = tpayment.idorder '+
          '                  WHERE      (tpayment.payment <> 4) AND (tpayment.payment <> 5) AND (tpayment.payment <> 0) '+
          '                              AND (tpayment.tglstop >= :tglAwal) AND (tpayment.tglstop <= :tglAkhir) '+
          '                  GROUP BY tbarang_keluar.idbarang) tkp ON Tbarang.idbarang = tkp.idbarang ';
  if cmbkategori.ItemIndex > 0 then
  begin
    Qkategori.Locate('kategori', cmbkategori.Text, []);
    vsql := vsql + ' WHERE     (Tbarang.idkategori = ' + Qkategoriid.AsString +' ) ';
  end;

  Qcari.Active := False;
  Qcari.SQL.Text := vsql;
  Qcari.ParamByName('tglAwal').AsString := FormatDateTime('yyyy-MM-dd',tgl_mulai.Date)+ FormatDateTime(' hh:mm:ss', waktuawal.DateTime);
  Qcari.ParamByName('tglAkhir').AsString := FormatDateTime('yyyy-MM-dd',Tgl_akhir.Date)+ FormatDateTime(' hh:mm:ss', waktuakhir.DateTime);
  Qcari.Active := True;

  Qcari.First;
  VTBarang_Keluar.Active := True;
  VTBarang_Keluar.Clear;
  vtbilling:=0; vtservice:=0; vtreject:=0; vtretur:=0; vtpenyesuaian:=0;
  while not(Qcari.Eof) do
  begin
    VTBarang_Keluar.InsertRecord([Qcari.Fields[0].Value,
                                  Qcari.Fields[1].Value,
                                  Qcari.Fields[2].Value,
                                  Qcari.Fields[3].AsFloat,
                                  Qcari.Fields[4].AsFloat,
                                  Qcari.Fields[5].AsFloat,
                                  Qcari.Fields[6].AsFloat,
                                  Qcari.Fields[7].AsFloat,
                                  Qcari.Fields[8].AsFloat,
                                  Qcari.Fields[9].AsFloat,
                                  Qcari.Fields[10].AsFloat,
                                  Qcari.Fields[11].AsFloat,
                                  Qcari.Fields[12].AsFloat
                                  ]);
    vtbilling := vtbilling + Qcariharga.Value;
    vtservice := vtservice + QcariHservice.Value;
    vtreject := vtreject + QcariHreject.Value;
    vtretur := vtretur + QcariHretur.Value;
    vtpenyesuaian := vtpenyesuaian + QcariHpenyesuaian.Value;
    Qcari.Next;
  end;
  VTBarang_Keluar.Filtered := True;

  if rdo_idbarang.Checked then   VTBarang_Keluar.IndexFieldNames := 'idbarang'; // vsql := vsql + ' ORDER BY Tbarang.idbarang ';
  if rdo_namabarang.Checked then   VTBarang_Keluar.IndexFieldNames := 'namabarang';// vsql := vsql + ' ORDER BY Tbarang.namabarang ';

  txtBilling.Text := FormatFloat('#,0.#', vtbilling);
  txtService.Text := FormatFloat('#,0.#', vtservice);
  txtReject.Text := FormatFloat('#,0.#', vtreject);
  txtRetur.Text := FormatFloat('#,0.#', vtretur);
  txtPenyesuaian.Text := FormatFloat('#,0.#', vtpenyesuaian);
end;

procedure Tfbarangkeluar.btnexitClick(Sender: TObject);
begin
  fbarangkeluar.Close;
end;

procedure Tfbarangkeluar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbreportkeluar := False;
  Action := caFree;
end;

procedure Tfbarangkeluar.btnprintClick(Sender: TObject);
begin
  FrmInduk.RvProject1.SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy', tgl_mulai.DateTime));
  FrmInduk.RvProject1.SetParam('tanggalakhir', FormatDateTime('dd MMMM yyyy ', Tgl_akhir.DateTime));
  FrmInduk.RvProject1.SetParam('orderby',pvorderby);
  FrmInduk.RvProject1.ExecuteReport('FbarangkeluarNEW');
end;

procedure Tfbarangkeluar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
//var   S1, S2: String;
begin
  with TAccessDBGrid(DBGrid1) do
  begin
    // Increase title height
    // Titelhöhe vergrössern
    RowHeights[0] := 32;

    Canvas.Brush.Style := bsClear;

    // Column Titles
    // Spalten Titel setzen
    case Column.Index of
    3..12: begin
         Column.Title.Caption := '';
       //  S1 := 'Billing';
       //  S2 := 'Qty';
        // Column.Title.Alignment := taCenter;
       end;
    end;
    // write title:
    // Titel ausgeben:
 //   Canvas.Font.Color := clWhite;
{    Canvas.Font.Style := [fsBold];
    Canvas.TextOut(Rect.Left+35, 2, S1);
    Canvas.TextOut(Rect.Left+2, 16, S2);    }
  end;
end;

procedure Tfbarangkeluar.VTBarang_KeluarFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := ((VTBarang_Keluarpenjualan.Value <> 0) or
            (VTBarang_KeluarHpenjualan.Value <> 0) or
            (VTBarang_Keluarservice.Value <> 0) or
            (VTBarang_Keluarhservice.Value <> 0) or
            (VTBarang_Keluarreject.Value <> 0) or
            (VTBarang_Keluarhreject.Value <> 0) or
            (VTBarang_Keluarretur.Value <> 0) or
            (VTBarang_Keluarhretur.Value <> 0)or
            (VTBarang_Keluarpenyesuaian.Value <> 0) or
            (VTBarang_Keluarhpenyesuaian.Value <> 0)
            ) ;
end;

procedure Tfbarangkeluar.rdo_idbarangClick(Sender: TObject);
begin
  if rdo_idbarang.Checked then   VTBarang_Keluar.IndexFieldNames := 'idbarang';
  if rdo_namabarang.Checked then   VTBarang_Keluar.IndexFieldNames := 'namabarang';
end;

end.
