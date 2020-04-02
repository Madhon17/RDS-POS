unit untGudangMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, bsMessages, BusinessSkinForm, DBTables, StdCtrls, Mask,
  DBCtrls, Grids, DBGrids, bsSkinCtrls;

type
  TFgudang = class(TForm)
    Label1: TLabel;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    DBGrid1: TDBGrid;
    dbnama: TDBEdit;
    Tmaster: TTable;
    Qid: TQuery;
    DSbank: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Tmasterid: TIntegerField;
    Tmastergudang: TStringField;
    Qdel: TQuery;
    Qdeljumlah: TIntegerField;
    procedure buka;
    procedure tutup;
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbnamaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    pvTambah : boolean;
  public
    { Public declarations }
  end;

var
  Fgudang: TFgudang;

implementation

uses Unit3;

{$R *.dfm}

procedure TFgudang.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btndelete.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;

  DBGrid1.Enabled := False;
end;

procedure TFgudang.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btndelete.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;

  DBGrid1.Enabled := True;
end;

procedure TFgudang.btntambahClick(Sender: TObject);
begin
  buka;
  pvTambah := True;
  Tmaster.Append;
  dbnama.SetFocus;
end;

procedure TFgudang.btneditClick(Sender: TObject);
begin
  if Tmaster.RecordCount = 0 then
  begin
    beep;
    exit;
  end;
  Tmaster.Edit;
  buka;
  dbnama.SetFocus;
end;

procedure TFgudang.btndeleteClick(Sender: TObject);
begin
  if Tmaster.RecordCount = 0 then
  begin
    Beep;
    Exit;
  end;
  Qdel.Active := False;
  Qdel.Prepare;
  Qdel.Params[0].AsInteger := Tmasterid.AsInteger;
  Qdel.Active := True;
  if Qdeljumlah.Value > 0 then
  begin
    Beep;
    bsSkinMessage1.MessageDlg('     Ada Barang      ',mtError, [mbOK],0);
    Exit;
  end;

  if  bsSkinMessage1.MessageDlg('    Hapus Data    ',mtConfirmation,mbOKCancel,0) = mrOk then
       Tmaster.Delete;
end;

procedure TFgudang.btnsimpanClick(Sender: TObject);
var id    : Smallint;

begin
   if dbnama.Text = '' then
  begin
    Beep;
    bsSkinMessage1.MessageDlg('    Data tidak lengkap    ', mtError, mbOKCancel,0);
    dbnama.SetFocus;
    exit;
  end;

    Qid.Active := False;
    Qid.Active := False;
    Qid.SQL.Text := ' SELECT     COUNT(*) AS id ' +
                          ' FROM         tGudang ' +
                          ' WHERE     (gudang = ' + QuotedStr(dbnama.Text) + ')';
    Qid.Active := True;
    if qid.FieldByName('id').AsInteger > 0 then
    begin
      Beep;
      bsSkinMessage1.MessageDlg('    Gudang sudah ada    ',mtError,[mbOK], 0);
      dbnama.SetFocus;
      dbnama.SelectAll;
      exit;
    end;

  if pvTambah then
  begin
    Qid.Active := False;
    Qid.SQL.Text := 'SELECT MAX(id) AS id ' +
                    'FROM Tgudang';
    qid.Active := True;
    id:= qid.FieldByName('id').AsInteger + 1;
    Tmasterid.Value := id;
  end;

  Tmaster.Post;

  pvTambah := False;

  tutup;
end;

procedure TFgudang.btnbatalClick(Sender: TObject);
begin
  tutup;
  Tmaster.Cancel;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  pvTambah := False;
end;

procedure TFgudang.FormCreate(Sender: TObject);
begin
  frminduk.pbGudang := True;

  Tmaster.Active := True;
  tutup;

  Tmaster.Filter := 'id > 5';
  Tmaster.Filtered := True;
end;

procedure TFgudang.dbnamaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
        Key := #0;
        Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFgudang.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
   if (gdSelected in State) then
   begin
     Brush.Color := clAqua;
     FillRect(Rect);
     Font.Color:= clBlack;
   end;
   end;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFgudang.btnkeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFgudang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frminduk.pbGudang := False;

  Tmaster.Active := False;

  Action := caFree;
end;

end.
