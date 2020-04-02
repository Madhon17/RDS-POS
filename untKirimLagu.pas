unit untKirimLagu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, bsSkinCtrls, BusinessSkinForm, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFkirimLagu = class(TForm)
    cmbRoom: TComboBox;
    Qroom: TZQuery;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btntambah: TbsSkinButton;
    edtTitle: TEdit;
    Label1: TLabel;
    btnsimpan: TbsSkinButton;
    edtID: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FkirimLagu: TFkirimLagu;

implementation

uses Unit3, Unit1, untKirimLaguInput;

{$R *.dfm}

procedure TFkirimLagu.FormCreate(Sender: TObject);
begin
  FrmInduk.Enabled := False;

  Qroom.Active := True;
  cmbRoom.Items.Add('All Room');
  while not(Qroom.Eof) do
  begin
    cmbRoom.Items.Add(Qroom.Fields[0].AsString);
    Qroom.Next;
  end;
  cmbRoom.ItemIndex := 0;
end;

procedure TFkirimLagu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.Enabled := True;
end;

procedure TFkirimLagu.btntambahClick(Sender: TObject);
begin
  edtID.Text := '';
  edtTitle.Text := '';
  Application.CreateForm(TFkirimLaguInput, FkirimLaguInput);
end;

procedure TFkirimLagu.btnsimpanClick(Sender: TObject);
var qUpdate : TZQuery;
begin
  if edtID.Text = '' then
  begin
    btntambahClick(Sender);
    exit;
  end;

  qUpdate := TZQuery.Create(Self);
  qUpdate.Connection := modul.DBmysql;
  qUpdate.SQL.Text := 'UPDATE room SET kirimlagu= 1, kirimidlagu= ' + edtID.Text;
  if cmbRoom.ItemIndex <> 0 then
  begin
    Qupdate.SQL.Text := Qupdate.SQL.Text + ' WHERE ROOMNAME = ' + QuotedStr(cmbRoom.Text);
  end;
  Qupdate.ExecSQL;

  if modul.My2.Connected then
  begin
    qUpdate.Connection := modul.My2;
    Qupdate.ExecSQL;
  end;
end;

end.
