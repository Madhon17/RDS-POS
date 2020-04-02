unit unttambahlagu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, bsSkinCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, ExtCtrls, bsMessages, BusinessSkinForm, AEDIT,
  Mask, MemDS, VirtualTable, DBTables;

type
  TFtambahlagu = class(TForm)
    Panel1: TPanel;
    cmbkategori: TComboBox;
    DBGrid1: TDBGrid;
    btntambah: TbsSkinButton;
    btnedit: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    Qcari: TZQuery;
    DataSource1: TDataSource;
    btncari: TbsSkinXFormButton;
    Qkategori: TZQuery;
    Qkategoritype: TLargeintField;
    Qkategoritypename: TStringField;
    Qlookup: TZQuery;
    Button1: TButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Panel2: TPanel;
    CARI: TLabel;
    cmbcari: TComboBox;
    edtcari: TEdit;
    Label2: TLabel;
    VTcari: TVirtualTable;
    VTcariIDMUSIC: TIntegerField;
    VTcariVCD: TStringField;
    VTcariTITLE: TStringField;
    VTcariSINGER: TStringField;
    rdoID: TRadioButton;
    rdoVCD: TRadioButton;
    rdoTitle: TRadioButton;
    rdoSinger: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure edtcariChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtcariEnter(Sender: TObject);
    procedure edtcariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbcariClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btndeleteClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtcariKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure rdoIDClick(Sender: TObject);
  private
    { Private declarations }
  public
    
    { Public declarations }
  end;

var
  Ftambahlagu: TFtambahlagu;

implementation
     uses unit1, unit3, untinsertlagu, StrUtils;
{$R *.dfm}

procedure TFtambahlagu.FormCreate(Sender: TObject);
begin
  FrmInduk.pbtambahlagu := True;
  Qlookup.Active := true;

  Qkategori.Active := True;
  cmbkategori.Clear;
  Qkategori.First;
  cmbkategori.Items.Add('ALL');
  while not (Qkategori.Eof) do
  begin
    cmbkategori.Items.Add(Qkategoritypename.AsString);
    Qkategori.Next;
  end;
  cmbkategori.ItemIndex := 0;

  btncariClick(sender);
end;

procedure TFtambahlagu.btncariClick(Sender: TObject);
var vsql, sqlfilter  : String;
    pvkategori  : Integer;
begin
  DataSource1.DataSet := nil;
  if cmbkategori.ItemIndex = 0 then
  begin
    vsql := 'SELECT IDMUSIC, VCD, TITLE, SINGER FROM masters ';
  end
  else
  begin
    Qcari.Active := False;
    vsql := 'SELECT * FROM masters ';
    sqlfilter := 'where idmusic is not null';
    Qlookup.Locate('typename',cmbkategori.Text,[loCaseInsensitive]);
    pvkategori := Qlookup.fieldByName('type').AsInteger;
    sqlfilter := sqlfilter + ' and (type = ' + IntToStr(pvkategori) + ')';
  end;

     sqlfilter := sqlfilter + ' ORDER BY TITLE';

  Qcari.SQL.Text := vsql + sqlfilter;
  Qcari.Active := True;

  Label2.Caption := FormatFloat('#,0',qcari.RecordCount);

  Qcari.First;
  VTcari.Active := True;
  VTcari.Clear;
  while not(Qcari.Eof) do
  begin
    VTcari.Append;
    VTcariIDMUSIC.Value := Qcari.FieldByName('IDMUSIC').Value;
    VTcariVCD.Value := VarToStr(Qcari.FieldByName('VCD').Value);
    VTcariTITLE.Value := VarToStr(Qcari.FieldByName('TITLE').Value);
    VTcariSINGER.Value := VarToStr(Qcari.FieldByName('SINGER').Value);
    VTcari.Post;
    Qcari.Next;
  end;
  VTcari.IndexFieldNames := 'TITLE';
  DataSource1.DataSet := VTcari;
  VTcari.First;
end;

procedure TFtambahlagu.btnkeluarClick(Sender: TObject);
begin
  Ftambahlagu.Close;
end;


procedure TFtambahlagu.edtcariChange(Sender: TObject);
begin

    VTcari.Locate(cmbcari.Text, edtcari.Text, [loCaseInsensitive,loPartialKey])
{  if edtcari.Focused then
  if  pvscroll = False then
  Button1Click(sender);
 }
end;

procedure TFtambahlagu.Button1Click(Sender: TObject);
begin
  if cmbcari.ItemIndex=0 then
  begin
    qcari.Active := False;
    qcari.SQL.Text := ' SELECT * from masters where (vcd like ' + QuotedStr(edtcari.Text+'%') + ')' ;
    qcari.Active := True;
  end;

  if cmbcari.ItemIndex=1 then
  begin
    Qcari.Active := False;
    Qcari.SQL.Text := ' SELECT * from masters where (title like ' + QuotedStr(edtcari.Text+'%') + ')' ;
    Qcari.Active := True;
  end;

  if cmbcari.ItemIndex=2 then
  begin
    Qcari.Active := False;
    Qcari.SQL.Text := ' SELECT * from masters where (singer like ' + QuotedStr(edtcari.Text+'%') + ')' ;
    Qcari.Active := True;
  end;

  if edtcari.Text = '' then btncariClick(sender);

end;

procedure TFtambahlagu.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clBlue;
     FillRect(Rect);
     Font.Color:= clWhite;
     Font.Style := [fsBold];
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFtambahlagu.edtcariEnter(Sender: TObject);
begin
 edtcari.SetFocus;
  edtcari.SelectAll;
end;

procedure TFtambahlagu.edtcariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    VTcari.Next;
    edtcari.SelectAll;
  end;

  if key = vk_up then
  begin
    VTcari.Prior;
    edtcari.SelectAll;
  end;
end;

procedure TFtambahlagu.cmbcariClick(Sender: TObject);
begin
  if cmbcari.ItemIndex = 0 then rdoID.Checked := True;
  if cmbcari.ItemIndex = 1 then rdoVCD.Checked := True;
  if cmbcari.ItemIndex = 2 then rdoTitle.Checked := True;
  if cmbcari.ItemIndex = 3 then rdoSinger.Checked := True;

  rdoIDClick(Sender);

  VTcari.First;
  edtcari.SetFocus;
  edtcariChange(Sender);
end;

procedure TFtambahlagu.btntambahClick(Sender: TObject);
begin
  if FrmInduk.pbinsertlagu = true then
    finsertlagu.Show
  else
    Application.CreateForm(Tfinsertlagu,finsertlagu);

  finsertlagu.Visible := True;

  with finsertlagu do
  begin
     pbtambah := True;
     btnFullClick(Self);

     cmbtype.ItemIndex := 0;
     edtvcd.Text := '';
     edttitle.Text :=  '';
     edtartist.Text := '';
     edtdepan.Text := 'X:\';
     edtpath.Text := '';
     cmbanalog.ItemIndex := 0;
     cmbtype.ItemIndex := 0;
     TrackBar1.Value := 35;
     chkHits.Checked := False;
     chkNew.Checked := False;
  end;
end;

procedure TFtambahlagu.btneditClick(Sender: TObject);
begin
  if VTcari.RecordCount = 0 then
  begin
    Beep;
    Exit;
  end;
  
  if FrmInduk.pbinsertlagu = True then
  begin
    if finsertlagu.pbtambah then
    begin
      Beep;
      Exit;
    end;
    Finsertlagu.Show;
  end
  else
    Application.CreateForm(Tfinsertlagu,finsertlagu);

  finsertlagu.Visible := True;

  Qcari.Active := False;
  Qcari.SQL.Text := 'SELECT IDMUSIC, VCD, TITLE, SINGER, PATH, ANALOG, TYPE, VOL, HITS, NEW ' +
                    '   FROM masters where IDMUSIC = ' + VTcariIDMUSIC.AsString;
  Qcari.Active := True;

  with  finsertlagu do
  begin
     pbtambah := False;
     pbidmusic := Qcari.fieldByName('IDMUSIC').AsInteger;
     edtvcd.Text := Qcari.fieldByName('VCD').AsString;
     edttitle.Text :=  Qcari.fieldByName('TITLE').AsString;
     edtartist.Text := Qcari.fieldByName('SINGER').AsString;
     edtdepan.Text := 'X:\';
     edtpath.Text := Qcari.fieldByName('PATH').AsString;
     chkHits.Checked := Qcari.fieldByName('HITS').Value;
     chkNew.Checked := Qcari.fieldByName('NEW').Value;
     if Qcari.fieldByName('ANALOG').AsString = 'ST' then cmbanalog.ItemIndex := 0;
     if Qcari.fieldByName('ANALOG').AsString = 'ML' then cmbanalog.ItemIndex := 1;
     if Qcari.fieldByName('ANALOG').AsString = 'MR' then cmbanalog.ItemIndex := 2;
     Ftambahlagu.Qkategori.Locate('TYPE', Qcari.fieldByName('TYPE').AsInteger,[]);
     cmbtype.ItemIndex := cmbtype.Items.IndexOf(Ftambahlagu.Qkategoritypename.Value);
     TrackBar1.Value := Qcari.fieldByName('VOL').AsInteger;
     btnplayClick(Sender);
     TrackBar12Change(Sender);

     btnFullClick(Sender)
  end;
end;

procedure TFtambahlagu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbtambahlagu := False;
  Action := caFree;
end;

procedure TFtambahlagu.btndeleteClick(Sender: TObject);
begin
  if VTcari.RecordCount = 0 then
  begin
    Beep;
    Exit;
  end;
  Qcari.Active := False;
  Qcari.SQL.Text := ' DELETE FROM masters where (idmusic = ' +  VTcariIDMUSIC.AsString +')';
  Qcari.ExecSQL;
  VTcari.Delete;
end;

procedure TFtambahlagu.DBGrid1DblClick(Sender: TObject);
begin
  btneditClick(sender);  
end;

procedure TFtambahlagu.edtcariKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    btneditClick(Sender);
  end;
end;

procedure TFtambahlagu.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    edtcari.SetFocus;
  end;
end;

procedure TFtambahlagu.FormShow(Sender: TObject);
begin
  edtcari.SetFocus;
end;

procedure TFtambahlagu.rdoIDClick(Sender: TObject);
begin
  if rdoID.Checked then VTcari.IndexFieldNames := 'IDMUSIC';
  if rdoVCD.Checked then VTcari.IndexFieldNames := 'VCD';
  if rdoTitle.Checked then VTcari.IndexFieldNames := 'TITLE';
  if rdoSinger.Checked then VTcari.IndexFieldNames := 'SINGER';
end;

end.
