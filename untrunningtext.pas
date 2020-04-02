unit untrunningtext;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, bsSkinCtrls, DB, Grids, DBGrids,
  ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset,
  BusinessSkinForm, bsMessages;

type
  TFrunningtext = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    Label1: TLabel;
    qid: TZQuery;
    Qtulisan: TZQuery;
    Qupdate: TZQuery;
    Edit1: TEdit;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    cmbRoom: TComboBox;
    Qroom: TZQuery;
    QtulisanTULISAN: TStringField;
    QtulisanROOM: TStringField;
    QtulisanIDTULISAN: TIntegerField;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbRoomClick(Sender: TObject);
  private
    pvtambah, pvedit    : Boolean;
    cekid   : Smallint;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frunningtext: TFrunningtext;

implementation

uses unit1, unit3, strUtils;

{$R *.dfm}
procedure TFrunningtext.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;

  cmbRoom.Enabled := False;
end;

procedure TFrunningtext.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;

  cmbRoom.Enabled := True;
end;

procedure TFrunningtext.FormCreate(Sender: TObject);
begin
  FrmInduk.pbrunningtext := True;
  Qroom.Active := True;
  cmbRoom.Items.Add('All Room');
  while not(Qroom.Eof) do
  begin
    cmbRoom.Items.Add(Qroom.Fields[0].AsString);
    Qroom.Next;
  end;
  cmbRoom.ItemIndex := 0;

  Qtulisan.Active := True;
  DBGrid1.Enabled:=True;
end;

procedure TFrunningtext.btntambahClick(Sender: TObject);
begin
  DBGrid1.Enabled := False;
  pvTambah := True;
  Edit1.Text := '';
  Edit1.SetFocus;
  buka;
end;

procedure TFrunningtext.btneditClick(Sender: TObject);
begin
  pvedit := True;
  pvtambah := False;
  if Qtulisan.RecordCount = 0 then
    begin
      beep;
      Edit1.SetFocus;
      Exit;
  end;
  DBGrid1.Enabled:=False;
  Edit1.Text := QtulisanTULISAN.Value;
  buka;
  Edit1.SetFocus;

  cekid := QtulisanIDTULISAN.Value;
end;

procedure TFrunningtext.btnhapusClick(Sender: TObject);
begin
   if Qtulisan.RecordCount = 0 then
  begin
    Exit;
  end;
   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       BEGIN
        Qupdate.Active := False;
        Qupdate.SQL.Text := ' delete FROM OSDTEXT WHERE ' +
                            ' (IDTULISAN= ' + QuotedStr(QtulisanIDTULISAN.AsString) + ')';
        Qupdate.ExecSQL;
       END;

  Qtulisan.Active := False;
  Qtulisan.Active := True;
end;

procedure TFrunningtext.btnbatalClick(Sender: TObject);
begin
  tutup;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  Edit1.Text := '';
end;

procedure TFrunningtext.btnsimpanClick(Sender: TObject);
var id    : Smallint;
begin
  if Edit1.Text = '' then
  begin
    Beep;
    Edit1.SetFocus;
    exit;
  end;

  if pvTambah then
  begin
    Qid.SQL.Text := 'SELECT MAX(IDTULISAN) AS id ' +
                    'FROM osdtext';
    qid.Active := True;
    id :=0;
    if  qid.FieldByName('id').AsInteger = null then
      id := 1
    else
      id:= qid.FieldByName('id').AsInteger + 1;

     Qupdate.Active := False;

     Qupdate.SQL.Text := ' INSERT INTO osdtext  ' +
                      ' ( IDTULISAN, TULISAN, ROOM)'  +
                      ' VALUES (:IDTULISAN, :TULISAN, :ROOM) ' ;
    Qupdate.ParamByName('IDTULISAN').AsInteger := id;
    Qupdate.ParamByName('TULISAN').AsString := Edit1.Text;
    if cmbRoom.ItemIndex = 0 then
      Qupdate.ParamByName('ROOM').AsString := '0'
    else
      Qupdate.ParamByName('ROOM').AsString := cmbRoom.Text;
    Qupdate.ExecSQL;

    Qupdate.SQL.Text := 'UPDATE room SET katajalan= 1 ';
    if cmbRoom.ItemIndex <> 0 then
      Qupdate.SQL.Text := Qupdate.SQL.Text + ' WHERE ROOMNAME = ' + QuotedStr(cmbRoom.Text);
    Qupdate.ExecSQL;
 end;


 if pvedit then
 begin
     Qupdate.Active := False;

      Qupdate.SQL.Text := ' UPDATE osdtext SET ' +
                          '  TULISAN='  + QuotedStr(Edit1.Text) +
                          ' WHERE IDTULISAN= ' + QuotedStr(IntToStr(cekid));

    Qupdate.ExecSQL;

    Qupdate.SQL.Text := 'UPDATE room SET katajalan= 1 ';
    if cmbRoom.ItemIndex <> 0 then
      Qupdate.SQL.Text := Qupdate.SQL.Text + ' WHERE ROOMNAME = ' + QuotedStr(cmbRoom.Text);
    Qupdate.ExecSQL;
 end;

  DBGrid1.Enabled := True;
  Qtulisan.Active := False;
  Qtulisan.Active := True;
  pvTambah := False;
  pvedit := False;
  Edit1.Enabled:=True;
  tutup;
  DBGrid1.SetFocus;   
end;

procedure TFrunningtext.btnkeluarClick(Sender: TObject);
begin
  FrunningText.Close;
  //FrmInduk.pbkatmember := False;
end;

procedure TFrunningtext.Button1Click(Sender: TObject);
begin
      Qupdate.SQL.Text := ' INSERT INTO osdtext  ' +
                      ' ( idtulisan, TULISAN)'  +
                      ' VALUES (:IDTULISAN, :TULISAN) ' ;
    Qupdate.ParamByName('IDTULISAN').AsInteger := 9;
    Qupdate.ParamByName('TULISAN').AsString := Edit1.Text;
    Qupdate.ExecSQL;
end;

procedure TFrunningtext.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFrunningtext.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbrunningtext := False;
  Action := caFree;
end;

procedure TFrunningtext.cmbRoomClick(Sender: TObject);
begin
  Qtulisan.Active := False;
  Qtulisan.SQL.Text := 'Select * from osdtext  where ROOM = ';
  if cmbRoom.ItemIndex = 0 then
     Qtulisan.SQL.Text := Qtulisan.SQL.Text + QuotedStr('0')
  else
     Qtulisan.SQL.Text := Qtulisan.SQL.Text + QuotedStr(cmbRoom.Text);

  Qtulisan.SQL.Text := Qtulisan.SQL.Text + ' order by IDTULISAN';
  Qtulisan.Active := True;
end;

end.
