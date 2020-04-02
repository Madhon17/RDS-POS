unit QsatuanKonvInp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DB, bsSkinCtrls, Grids, DBGrids, DBTables,
  bsMessages, BusinessSkinForm, AEDIT;

type
  TFsatuanKonversi = class(TForm)
    bsBusinessSkinForm2: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qsatuan: TQuery;
    DSsatuan: TDataSource;
    Fkeluar: TbsSkinButton;
    Qsatuanid: TSmallintField;
    QsatuanidKonversi: TSmallintField;
    Qsatuankode: TStringField;
    edtJumlah: TEdit;
    Label5: TLabel;
    Qsatuanjumlah: TIntegerField;
    Qsatuansatuan: TStringField;
    Label1: TLabel;
    cboKonversi: TComboBox;
    Label2: TLabel;
    edttotal: TAEdit;
    procedure Buka;
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cboKonversiChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pencet(Sender: TObject; var Key: Char);
    procedure FkeluarClick(Sender: TObject);
    procedure edtJumlahKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    pbsatuan : Smallint;
  end;

var
  FsatuanKonversi: TFsatuanKonversi;

implementation

uses Unit3, untBarangMasuk;

{$R *.dfm}

procedure TFsatuanKonversi.Buka;
begin
//  pbsatuan := StrToInt(Edit2.Text);
  Qsatuan.Active := False;
  Qsatuan.Prepare;
  Qsatuan.Params[0].Value := pbsatuan;
  Qsatuan.Active := True;

  cboKonversi.Items.Clear;
  Qsatuan.First;
  while not(Qsatuan.Eof) do
  begin
    cboKonversi.Items.Add(Qsatuankode.Value);
    Qsatuan.Next;
  end;
  cboKonversi.ItemIndex := 0;
  cboKonversiChange(Self);
end;

procedure TFsatuanKonversi.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (((key>='0')and(Key<='9'))or(Key=#8)) then
     Key:=#0;
end;

procedure TFsatuanKonversi.FormCreate(Sender: TObject);
begin
{  Qsatuan.Active := False;
  Qsatuan.Prepare;
  Qsatuan.Params[0].Value := 1;
  qsatuan.Active := True;}
end;



procedure TFsatuanKonversi.cboKonversiChange(Sender: TObject);
begin
  if edtJumlah.Text = '' then
  begin
    edtTotal.Text := '';
    Exit;
  end;
  
  Qsatuan.Locate('kode', cboKonversi.Text, [loPartialKey,loCaseInsensitive]);
  edtTotal.Text := FloatToStr(StrToInt(edtJumlah.Text) * Qsatuanjumlah.Value);
end;

procedure TFsatuanKonversi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.Enabled := True;

  Qsatuan.Active := False;
  
  Action := caFree;
end;

procedure TFsatuanKonversi.pencet(Sender: TObject; var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;


end;

procedure TFsatuanKonversi.FkeluarClick(Sender: TObject);
begin
{  if edtTotal.Text ='' then edttotal.Text := '0';
  if fbarangmasuk.spnquantity.Enabled then
  begin
    fbarangmasuk.spnquantity.Text := edtTotal.Text;
  end;
  FrmInduk.Enabled := True;
  fbarangmasuk.edthargabarang.SetFocus;
  Close;   }
end;

procedure TFsatuanKonversi.edtJumlahKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
  if not(((Key>='0')and(Key<='9'))or(Key=#8)or(Key=DecimalSeparator)or(Key='-')) then Key:=#0;
end;

end.
