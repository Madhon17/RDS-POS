unit untreportmasuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, bsSkinCtrls, StdCtrls, ComCtrls,
  ExtCtrls, bsMessages, BusinessSkinForm, RpDefine, RpCon, RpConDS, AEDIT,
  MemDS, VirtualTable, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfreportmasuk = class(TForm)
    btncari: TbsSkinXFormButton;
    DBGrid1: TDBGrid;
    Qcari: TZQuery;
    DScari: TDataSource;
    btnprint: TbsSkinXFormButton;
    btnexit: TbsSkinXFormButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    RVbarangmasuk: TRvDataSetConnection;
    Qcariidbarang: TStringField;
    Qcarinamabarang: TStringField;
    Qcariqty: TFloatField;
    Qcariharga: TFloatField;
    Qcarieksternal: TFloatField;
    QcariHeksternal: TFloatField;
    Panel1: TPanel;
    Label2: TLabel;
    tgl_mulai: TDateTimePicker;
    waktuawal: TDateTimePicker;
    Tgl_akhir: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    cmbkategori: TComboBox;
    Panel3: TPanel;
    rdo_namabarang: TRadioButton;
    rdo_idbarang: TRadioButton;
    Qkategori: TZQuery;
    Qkategoriid: TSmallintField;
    Qkategorikategori: TStringField;
    VTBarang_Keluar: TVirtualTable;
    Qcarikode: TStringField;
    txtBilling: TAEdit;
    txtService: TAEdit;
    VTBarang_Keluaridbarang: TStringField;
    VTBarang_Keluarnamabarang: TStringField;
    VTBarang_Keluarkode: TStringField;
    VTBarang_Keluarqty: TFloatField;
    VTBarang_Keluarharga: TFloatField;
    VTBarang_Keluareksternal: TFloatField;
    VTBarang_Keluarheksternal: TFloatField;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btncariClick(Sender: TObject);
    procedure VTBarang_KeluarFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure rdo_idbarangClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  freportmasuk: Tfreportmasuk;

type
  TAccessDBGrid = class(TDBGrid);

implementation
      uses unit1, unit3 ;
{$R *.dfm}

procedure Tfreportmasuk.FormCreate(Sender: TObject);
begin

  Qcari.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;

  FrmInduk.pbreportmasuk := True;

  tgl_mulai.DateTime := now;
  Tgl_akhir.DateTime := now + 1;

    Qkategori.Active := True;
    cmbkategori.Clear;
    cmbkategori.Items.Add('');
    while not (Qkategori.Eof) do
    begin
      cmbkategori.Items.Add(Qkategorikategori.Value);
      Qkategori.Next;
    end;
      cmbkategori.ItemIndex := 0;

  btncariClick(Sender);
  
end;

procedure Tfreportmasuk.btnexitClick(Sender: TObject);
begin
  freportmasuk.Close;
end;

procedure Tfreportmasuk.btnprintClick(Sender: TObject);
begin
{  if chk_tanggal.Checked then
  begin
    FrmInduk.RvProject1.SetParam('tanggalawal', FormatDateTime('dd MMMM yyyy', tgl_mulai.DateTime));
    FrmInduk.RvProject1.SetParam('tanggalakhir', FormatDateTime('dd MMMM yyyy ', Tgl_akhir.DateTime));
  end;
    FrmInduk.RvProject1.SetParam('orderby',pvorderby);
    FrmInduk.RvProject1.ExecuteReport('Fbarangmasuk');}
end;

procedure Tfreportmasuk.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbreportmasuk := False;
  Action := caFree;
end;

procedure Tfreportmasuk.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
//var   S1, S2: String;
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
    DBGrid1.DefaultDrawColumnCell(Rect,  DataCol, Column, State);
    
  with TAccessDBGrid(DBGrid1) do
  begin
    // Increase title height
    // Titelhöhe vergrössern
    RowHeights[0] := 32;

    Canvas.Brush.Style := bsClear;

    // Column Titles
    // Spalten Titel setzen
    case Column.Index of
    3..6: begin
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

procedure Tfreportmasuk.btncariClick(Sender: TObject);
var vsql : string;
    vtbilling, vteksternal : Real;
begin
  vsql := ' SELECT     Tbarang.idbarang, Tbarang.namabarang, tpo.qty, tpo.harga, tgdm.qty AS eksternal, tgdm.harga AS Heksternal, tsatuan.kode '+
          ' FROM       Tbarang  LEFT OUTER JOIN '+
          '            (SELECT   tbarang_masuk.idbarang, SUM(tbarang_masuk.qty) AS qty, SUM(tbarang_masuk.qty * tbarang_masuk.harga_beli) '+
          '                      AS harga '+
          '                      FROM     tbarang_masuk INNER JOIN '+
          '                      TbeliReal ON tbarang_masuk.idfaktur = TbeliReal.idfaktur '+
          '                      WHERE      (TbeliReal.status = 3) AND (TbeliReal.tanggal  >= :tglAwal) AND (TbeliReal.tanggal  <= :tglAkhir) '+
          '                      GROUP BY tbarang_masuk.idbarang) tpo ON Tbarang.idbarang = tpo.idbarang  LEFT OUTER JOIN '+
          '            (SELECT   TgudangMutasiDetail.idbarang, SUM(TgudangMutasiDetail.qty) AS qty, '+
          '                      SUM(TgudangMutasiDetail.harga * TgudangMutasiDetail.qty) AS harga '+
          '                      FROM          TgudangMutasi INNER JOIN '+
          '                      TgudangMutasiDetail ON TgudangMutasi.id = TgudangMutasiDetail.idmutasi '+
          '                      WHERE      (TgudangMutasi.asal = 1) AND (TgudangMutasi.tanggal  >= :tglAwal) AND (TgudangMutasi.tanggal  <= :tglAkhir) OR'+
          '                                 (TgudangMutasi.asal = 2) AND (TgudangMutasi.tanggal  >= :tglAwal) AND (TgudangMutasi.tanggal  <= :tglAkhir) OR'+
          '                                 (TgudangMutasi.asal = 3) AND (TgudangMutasi.tanggal  >= :tglAwal) AND (TgudangMutasi.tanggal  <= :tglAkhir) OR'+
          '                                 (TgudangMutasi.asal = 4) AND (TgudangMutasi.tanggal  >= :tglAwal) AND (TgudangMutasi.tanggal  <= :tglAkhir) OR'+
          '                                 (TgudangMutasi.asal = 5) AND (TgudangMutasi.tanggal  >= :tglAwal) AND (TgudangMutasi.tanggal  <= :tglAkhir) '+
          '                      GROUP BY TgudangMutasiDetail.idbarang) tgdm ON Tbarang.idbarang = tgdm.idbarang INNER JOIN '+
          '            tsatuan ON Tbarang.idsatuan = tsatuan.id';
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
  vtbilling:=0; vteksternal:=0;
  while not(Qcari.Eof) do
  begin
    VTBarang_Keluar.InsertRecord([Qcari.Fields[0].Value,
                                  Qcari.Fields[1].Value,
                                  Qcari.Fields[2].Value,
                                  Qcari.Fields[3].AsFloat,
                                  Qcari.Fields[4].AsFloat,
                                  Qcari.Fields[5].AsFloat,
                                  Qcari.Fields[6].AsFloat
                                  ]);
    vtbilling := vtbilling + Qcariharga.Value;
    vteksternal := vteksternal + QcariHeksternal.Value;
    Qcari.Next;
  end;
  VTBarang_Keluar.Filtered := True;


  if rdo_idbarang.Checked then   VTBarang_Keluar.IndexFieldNames := 'idbarang';
  if rdo_namabarang.Checked then   VTBarang_Keluar.IndexFieldNames := 'namabarang';

  txtBilling.Text := FormatFloat('#,0.#', vtbilling);
  txtService.Text := FormatFloat('#,0.#', vteksternal);
end;

procedure Tfreportmasuk.VTBarang_KeluarFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := ((VTBarang_Keluarqty.Value <> 0) or
            (VTBarang_Keluarharga.Value <> 0) or
            (VTBarang_Keluareksternal.Value <> 0) or
            (VTBarang_Keluarheksternal.Value <> 0));
end;

procedure Tfreportmasuk.rdo_idbarangClick(Sender: TObject);
begin
  if rdo_idbarang.Checked then   VTBarang_Keluar.IndexFieldNames := 'idbarang';
  if rdo_namabarang.Checked then   VTBarang_Keluar.IndexFieldNames := 'namabarang';
end;

end.
