unit untStokPenyesuaian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, bsSkinCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,
  MemDS, VirtualTable, BusinessSkinForm, bsMessages, AEDIT,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFstokPenyesuaian = class(TForm)
    Panel1: TPanel;
    cmbGudang: TComboBox;
    Panel3: TPanel;
    rdo_namabarang: TRadioButton;
    rdo_idbarang: TRadioButton;
    Label2: TLabel;
    bsSkinPanel2: TbsSkinPanel;
    DBGrid1: TDBGrid;
    btnKeluar: TbsSkinButton;
    Qgudang: TZQuery;
    Qgudangid: TIntegerField;
    Qgudanggudang: TStringField;
    Qstok: TZQuery;
    btncari: TbsSkinXFormButton;
    DSstok: TDataSource;
    Qstokidbarang: TStringField;
    Qstoknamabarang: TStringField;
    Qstokkode: TStringField;
    Qstokmasuk: TFloatField;
    QstokHmasuk: TFloatField;
    Qstokkeluar: TFloatField;
    QstokHkeluar: TFloatField;
    VTbarang: TVirtualTable;
    btnSimpan: TbsSkinButton;
    VTbarangidbarang: TStringField;
    VTbarangnamabarang: TStringField;
    VTbarangkode: TStringField;
    VTbarangmutasi: TFloatField;
    VTbarangHmutasi: TFloatField;
    VTbarangstok: TFloatField;
    VTbarangHstok: TFloatField;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Qid: TZQuery;
    Qmaster: TZQuery;
    Qdetail: TZQuery;
    Qstokharga: TFloatField;
    VTbarangharga: TFloatField;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinButton1: TbsSkinButton;
    Label6: TLabel;
    edtTanggungjawabID: TEdit;
    btnCariKasir: TbsSkinButton;
    edtTanggungJawabNama: TEdit;
    edtNamaBarang: TEdit;
    Label1: TLabel;
    bsSkinButton2: TbsSkinButton;
    Qkasir: TZQuery;
    Qkasirlogin: TStringField;
    Qkasirnama: TStringField;
    edtIdBarang: TAEdit;
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure edtTanggungjawabIDChange(Sender: TObject);
    procedure edtTanggungjawabIDExit(Sender: TObject);
    procedure Tkn13(Sender: TObject; var Key: Char);
    procedure rdo_idbarangClick(Sender: TObject);
    procedure edtIdBarangChange(Sender: TObject);
    procedure edtIdBarangEnter(Sender: TObject);
    procedure edtNamaBarangEnter(Sender: TObject);
    procedure edtNamaBarangChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FstokPenyesuaian: TFstokPenyesuaian;

implementation

uses Unit3, untGudang, untGudangMutasiDetail, Unit1;

{$R *.dfm}

procedure TFstokPenyesuaian.FormCreate(Sender: TObject);
begin

  Qgudang.Connection := modul.Database1;
  Qstok.Connection := modul.Database1;
  Qid.Connection := modul.Database1;
  Qmaster.Connection := modul.Database1;
  Qdetail.Connection := modul.Database1;
  Qkasir.Connection := modul.Database1;

  FrmInduk.pbpenyesuaian := True;

  Qkasir.Active := True;
  Qgudang.Active := True;
  cmbGudang.Clear;
  while not(Qgudang.Eof) do
  begin
    cmbGudang.Items.Add(Qgudanggudang.Value);
    Qgudang.Next;
  end;
  cmbGudang.ItemIndex := 0;
end;

procedure TFstokPenyesuaian.btncariClick(Sender: TObject);
begin
  Qgudang.Locate('gudang', cmbGudang.Text,[loPartialKey, loCaseInsensitive]);

  Qstok.Active := False;
  Qstok.ParamByName('idgudangKeluar').Value := Qgudangid.AsInteger;
  Qstok.ParamByName('idgudangMasuk').Value := Qgudangid.AsInteger;
  Qstok.Active := True;

  Qstok.First;

  VTbarang.Active := True;
  VTbarang.Clear;
  while not(Qstok.Eof) do
  begin
    VTbarang.InsertRecord([Qstok.Fields[0].Value,
                                  Qstok.Fields[1].Value,
                                  Qstok.Fields[2].Value,
                                  Qstok.Fields[5].AsFloat - Qstok.Fields[3].AsFloat,
                                  Qstok.Fields[6].AsFloat - Qstok.Fields[4].AsFloat,
                                  Qstok.Fields[5].AsFloat - Qstok.Fields[3].AsFloat,
                                  0,
                                  Qstok.Fields[7].AsFloat
                                  ]);
    Qstok.Next;
  end;

  if rdo_idbarang.Checked then
    VTbarang.IndexFieldNames := 'idbarang'
  else
    VTbarang.IndexFieldNames := 'namabarang';

end;

procedure TFstokPenyesuaian.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clNavy;
     FillRect(Rect);
     Font.Color:= clWhite;
     font.Style := [fsBold]
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect,  DataCol, Column, State);
end;

procedure TFstokPenyesuaian.btnSimpanClick(Sender: TObject);
var id  : Integer;
    ids : String;
    vPerubahan : Boolean;
begin
  if not(VTbarang.Active) then Exit;

  if edtTanggungjawabID.Text = '' then
  begin
     beep;
     bsSkinMessage1.MessageDlg('   Penanggung Jawab    ', mtInformation,[mbok],0);
     edtTanggungjawabID.SetFocus;
     exit;
  end;

//Keluarkan
    //ID
    Qid.Active := False;
    Qid.SQL.Text := ' SELECT     MAX(RIGHT(id, 4)) AS id  ' +
                           ' FROM         TgudangMutasi ' +
                           ' WHERE     (id LIKE ' + QuotedStr('MG' + FormatDateTime('yyMMdd',Now)+'%')+')';
    Qid.Active := True;
    try
      id := StrToInt(Qid.FieldByName('id').Value);
    except
      id :=0;
    end;
    id := id+1;
    ids := 'MG' + FormatDateTime('yyMMdd',Now) + FormatFloat('0000',id);

    Qgudang.Locate('gudang', cmbGudang.Text, [loCaseInsensitive, loPartialKey]);


  vPerubahan := False;
  VTbarang.First;
  while not(VTbarang.Eof) do
  begin
    if VTbarangmutasi.Value > VTbarangstok.Value then
    with Qdetail do
    begin
      ParamByName('idbarang').AsString := VTbarangidbarang.AsString;
      ParamByName('idmutasi').AsString := ids;
      ParamByName('qty').AsFloat  := VTbarangmutasi.Value - VTbarangstok.Value;
      ParamByName('harga').AsFloat := VTbarangharga.Value;
      ExecSQL;
      vPerubahan := True;
    end;
    VTbarang.Next;
  end;

  if vPerubahan then
  begin
    with Qmaster do
    begin
      ParamByName('id').AsString := ids;
      ParamByName('tanggal').AsDateTime := Now;
      ParamByName('idtanggungjawab').AsString := edtTanggungjawabID.Text;
      ParamByName('asal').AsInteger := Qgudangid.AsInteger;
      ParamByName('tujuan').AsInteger := 5; //Penyesuaian
      ParamByName('opperator').AsString := FrmInduk.pbidkasir;
      ParamByName('keterangan').AsString := 'Penyesuaian';
      ExecSQL;
    end;
  end;


//Masukkan
    //ID
    Qid.Active := False;
    Qid.SQL.Text := ' SELECT     MAX(RIGHT(id, 4)) AS id  ' +
                           ' FROM         TgudangMutasi ' +
                           ' WHERE     (id LIKE ' + QuotedStr('MG' + FormatDateTime('yyMMdd',Now)+'%')+')';
    Qid.Active := True;
    try
      id := StrToInt(Qid.FieldByName('id').Value);
    except
      id :=0;
    end;
    id := id+1;
    ids := 'MG' + FormatDateTime('yyMMdd',Now) + FormatFloat('0000',id);

    Qgudang.Locate('gudang', cmbGudang.Text, [loCaseInsensitive, loPartialKey]);


  vPerubahan := False;
  VTbarang.First;
  while not(VTbarang.Eof) do
  begin
    if VTbarangmutasi.Value < VTbarangstok.Value then
    with Qdetail do
    begin
      ParamByName('idbarang').AsString := VTbarangidbarang.AsString;
      ParamByName('idmutasi').AsString := ids;
      ParamByName('qty').AsFloat  :=  VTbarangstok.Value - VTbarangmutasi.Value;
      ParamByName('harga').AsFloat := VTbarangharga.Value;
      ExecSQL;
      vPerubahan := True;
    end;
    VTbarang.Next;
  end;

  if vPerubahan then
  begin
    with Qmaster do
    begin
      ParamByName('id').AsString := ids;
      ParamByName('tanggal').AsDateTime := Now;
      ParamByName('idtanggungjawab').AsString := edtTanggungjawabID.Text;
      ParamByName('asal').AsInteger := 5;
      ParamByName('tujuan').AsInteger := Qgudangid.AsInteger; //Penyesuaian
      ParamByName('opperator').AsString := FrmInduk.pbidkasir;
      ParamByName('keterangan').AsString := 'Penyesuaian';
      ExecSQL;
    end;
  end;

  bsSkinMessage1.MessageDlg('       Penyesuaian Selesai       ', mtInformation,[mbok],0);

end;

procedure TFstokPenyesuaian.btnKeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFstokPenyesuaian.edtTanggungjawabIDChange(Sender: TObject);
begin
  if edtTanggungjawabID.Text = '' then
    edtTanggungJawabNama.Text := ''
  else
  begin
    Qkasir.Locate('login', edtTanggungjawabID.Text, [loCaseInsensitive, loPartialKey]);
    edtTanggungJawabNama.Text := Qkasirnama.Value;
  end;
end;

procedure TFstokPenyesuaian.edtTanggungjawabIDExit(Sender: TObject);
begin
  if edtTanggungjawabID.Text = '' then
    edtTanggungJawabNama.Text := ''
  else
  begin
    Qkasir.Locate('login', edtTanggungjawabID.Text, [loCaseInsensitive, loPartialKey]);
    edtTanggungjawabID.Text := Qkasirlogin.Value;
    edtTanggungJawabNama.Text := Qkasirnama.Value;
  end;
end;

procedure TFstokPenyesuaian.Tkn13(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
        Key := #0;
        Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFstokPenyesuaian.rdo_idbarangClick(Sender: TObject);
begin
  if rdo_idbarang.Checked then
    VTbarang.IndexFieldNames := 'idbarang'
  else
    VTbarang.IndexFieldNames := 'namabarang';
end;

procedure TFstokPenyesuaian.edtIdBarangChange(Sender: TObject);
begin
  if not(VTbarang.Active) then Exit;
  VTbarang.Locate('idbarang', edtIdBarang.Text, [loPartialKey, loCaseInsensitive])
end;

procedure TFstokPenyesuaian.edtIdBarangEnter(Sender: TObject);
begin
  rdo_idbarang.Checked;
  rdo_idbarangClick(Sender);
end;

procedure TFstokPenyesuaian.edtNamaBarangEnter(Sender: TObject);
begin
  rdo_namabarang.Checked;
  rdo_idbarangClick(Sender);
end;

procedure TFstokPenyesuaian.edtNamaBarangChange(Sender: TObject);
begin
  if not(VTbarang.Active) then Exit;
  VTbarang.Locate('namabarang', edtNamaBarang.Text, [loPartialKey, loCaseInsensitive])
end;

procedure TFstokPenyesuaian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FrmInduk.pbpenyesuaian := False;

    Action := caFree;
end;

end.
