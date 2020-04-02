unit untKirimLaguInput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TntLXAdoDataSet, MemDS, VirtualTable, bsMessages,
  BusinessSkinForm, bsSkinCtrls, Grids, DBGrids, TntDBGrids, StdCtrls,
  TntStdCtrls, ExtCtrls, IniFiles;

type
  TFkirimLaguInput = class(TForm)
    AdoDB1: TADOConnection;
    Panel1: TPanel;
    Label2: TLabel;
    cmbkategori: TComboBox;
    rdoID: TRadioButton;
    rdoVCD: TRadioButton;
    rdoTitle: TRadioButton;
    rdoSinger: TRadioButton;
    btntambah: TbsSkinButton;
    btncari: TbsSkinXFormButton;
    Button1: TButton;
    Panel2: TPanel;
    CARI: TLabel;
    cmbcari: TComboBox;
    edtcari: TTntEdit;
    TntDBGrid1: TTntDBGrid;
    bsSkinGauge1: TbsSkinGauge;
    dsQcari: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    VTcari: TVirtualTable;
    VTcariIDMUSIC: TIntegerField;
    VTcariVCD: TStringField;
    VTcariTITLE: TStringField;
    VTcariSINGER: TStringField;
    VTcariTITLE2: TWideStringField;
    VTcariSINGER2: TWideStringField;
    adoQlookUP: TADOQuery;
    Qcari: TTntADOQueryLX;
    Qkategori: TADOQuery;
    Qkategoritype: TAutoIncField;
    Qkategoritypename: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure edtcariChange(Sender: TObject);
    procedure cmbcariClick(Sender: TObject);
    procedure rdoIDClick(Sender: TObject);
    procedure TntDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btntambahClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FkirimLaguInput: TFkirimLaguInput;

implementation

uses Unit3, untKirimLagu, Unit1;

{$R *.dfm}

procedure TFkirimLaguInput.FormCreate(Sender: TObject);
var NamaFile : TFileName;
    FileIni  : TIniFile;
    vmysql, vdatabase : string;
    adoQueryTemp : TADOQuery;
begin
  FkirimLagu.Enabled := False;

  NamaFile := ExtractFilePath(Application.ExeName) + '..\..\setting-pos.ini';
  FileIni := TIniFile.Create(NamaFile);
  vmysql := FileIni.ReadString('Database', 'MySql', '127.0.0.1');
  vdatabase := 'karaoke';
  with AdoDB1 do
  begin
    Connected := False;
    ConnectionString := '"Provider=MSDASQL.1;Password=' + modul.keyMySQL + ';User ID=karaoke;Extended Properties="DRIVER={MySQL ODBC 5.1 Driver};UID=karaoke;PWD=' + modul.keyMySQL + ';'+
                        'SERVER='+ vmysql + '; '+
                        'DATABASE=' + vdatabase +
                        ';OPTION=18475;"';
    Connected := True;
  end;
  FileIni.Free;

  adoQueryTemp := TADOQuery.Create(Self);
  with adoQueryTemp do
  begin
    Connection := AdoDB1;
    SQL.Text   := 'SELECT type, typename FROM KATEGORI';
    Active := True;
    cmbkategori.Clear;
    cmbkategori.Items.Add('ALL');
    while not(Eof) do
    begin
      cmbkategori.Items.Add(Fields[1].AsString);
      Next;
    end;
    cmbkategori.ItemIndex := 0;
  end;
  adoQueryTemp.Active := False;
  adoQueryTemp.Free;
  adoQlookUP.Active := True;
  Qkategori.Active := True;
end;

procedure TFkirimLaguInput.btncariClick(Sender: TObject);
var vsql, sqlfilter  : String;
    pvkategori  : Integer;
    jumlagu, i : Integer;
begin
  if cmbkategori.ItemIndex = 0 then
  begin
    vsql := 'SELECT IDMUSIC, VCD, CODE, TITLE, TITLE2, SINGER, SINGER2 FROM masters ';
  end
  else
  begin
    Qcari.Active := False;
    vsql := 'SELECT IDMUSIC, VCD, CODE, TITLE, TITLE2, SINGER, SINGER2 FROM masters ';
    sqlfilter := 'where idmusic is not null';
    adoQlookUP.Locate('typename',cmbkategori.Text,[loCaseInsensitive]);
    pvkategori := adoQlookUP.fieldByName('type').AsInteger;
    sqlfilter := sqlfilter + ' and (type = ' + IntToStr(pvkategori) + ')';
  end;
  sqlfilter := sqlfilter + ' ORDER BY TITLE';
  Qcari.SQL.Text := vsql + sqlfilter;
  Qcari.Active := True;

  
  bsSkinGauge1.Visible := True;
  bsSkinGauge1.Value := 0;
  i := 0;
  jumlagu := Qcari.RecordCount;
  Qcari.First;
  VTcari.Active := True;
  VTcari.Clear;
  while not(Qcari.Eof) do
  begin
    VTcari.Append;
    VTcariIDMUSIC.AsInteger := Qcari.fieldByName('IDMUSIC').AsInteger;
    VTcariVCD.AsString := Qcari.fieldByName('VCD').AsString;
    VTcariTITLE.AsString := Qcari.fieldByName('TITLE').AsString;
    VTcariSINGER.AsString := Qcari.fieldByName('SINGER').AsString;
    VTcariTITLE2.Value := Qcari.fieldByName('TITLE2').Value;
    VTcariSINGER2.Value := Qcari.fieldByName('SINGER2').Value;
    VTcari.Post;
    bsSkinGauge1.Value := trunc(i/jumlagu * 100);
    Inc(i);
    Qcari.Next;
  end;
  bsSkinGauge1.Visible := False;
  Label2.Caption := FormatFloat('#,0',Qcari.RecordCount);
end;

procedure TFkirimLaguInput.edtcariChange(Sender: TObject);
begin
    VTcari.Locate(cmbcari.Text, edtcari.Text, [loCaseInsensitive,loPartialKey])
end;

procedure TFkirimLaguInput.cmbcariClick(Sender: TObject);
begin
  if cmbcari.ItemIndex = 0 then rdoID.Checked := True;
  if cmbcari.ItemIndex = 1 then rdoVCD.Checked := True;
  if cmbcari.ItemIndex = 2 then rdoTitle.Checked := True;
  if cmbcari.ItemIndex = 3 then rdoSinger.Checked := True;

  rdoIDClick(Sender);

//  VTcari.First;
  edtcari.SetFocus;
  edtcariChange(Sender);
end;

procedure TFkirimLaguInput.rdoIDClick(Sender: TObject);
begin
  if rdoID.Checked then VTcari.IndexFieldNames := 'IDMUSIC';
  if rdoVCD.Checked then VTcari.IndexFieldNames := 'VCD';
  if rdoTitle.Checked then VTcari.IndexFieldNames := 'TITLE';
  if rdoSinger.Checked then VTcari.IndexFieldNames := 'SINGER';  
end;

procedure TFkirimLaguInput.TntDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TTntDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clBlue;
     FillRect(Rect);
     Font.Color:= clWhite;
     Font.Style := [fsBold];
     end;
     end;
    TntDBGrid1.DefaultDrawColumnCell(Rect, DataCol,   TTntColumn(Column), State);
end;

procedure TFkirimLaguInput.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FkirimLagu.Enabled := True;

  Action := caFree;
end;

procedure TFkirimLaguInput.btntambahClick(Sender: TObject);
begin
  if VTcari.RecordCount = 0 then Exit;
  FkirimLagu.edtID.Text := VTcariIDMUSIC.AsString;
  FkirimLagu.edtTitle.Text := VTcariTITLE.AsString;
  Close;
end;

end.
