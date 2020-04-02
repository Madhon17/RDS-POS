unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Spin,
  ComCtrls, BusinessSkinForm, bsSkinCtrls, AEDIT, bsMessages,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractTable;

type
  Tfmember = class(TForm)
    DSmember: TDataSource;
    DSkatmember: TDataSource;
    btntambah: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    btnedit: TbsSkinButton;
    btnhapus: TbsSkinButton;
    bsSkinPanel2: TbsSkinPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbid: TDBEdit;
    DBLkategori: TDBLookupComboBox;
    DTMberlaku: TDateTimePicker;
    btnCari: TbsSkinButton;
    DBEdit3: TDBEdit;
    bsSkinPanel1: TbsSkinPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    dbnama: TDBEdit;
    dbhp: TDBEdit;
    dbtelp: TDBEdit;
    cmbagama: TComboBox;
    cmbkelamin: TComboBox;
    DTMlahir: TDateTimePicker;
    dbemail: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    DBmember: TDBGrid;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    Qcabang: TZQuery;
    Qcabangid_cabang: TSmallintField;
    Tmembersql: TZTable;
    Tmembersqlid_kategori: TSmallintField;
    Tmembersqltgl_registrasi: TDateTimeField;
    Tmembersqlberlaku: TDateTimeField;
    Tmembersqlnama: TStringField;
    TmembersqlTgl_lahir: TDateTimeField;
    TmembersqlAgama: TSmallintField;
    TmembersqlHP: TStringField;
    TmembersqlTelp: TStringField;
    Tmembersqlpoin: TIntegerField;
    Tmembersqlalamat1: TStringField;
    Tmembersqlalamat2: TStringField;
    TmembersqlCalkelamin: TStringField;
    TmembersqlCalAgama: TStringField;
    TmembersqltglUpdate: TDateTimeField;
    Tmembersqlemail: TStringField;
    Tmembersqlid: TStringField;
    TmembersqlJenis_kelamin_boolean: TBooleanField;
    TmembersqlJenis_kelamin: TStringField;
    procedure boleh;
   procedure larang;
    procedure buka;
    procedure tutup;
    procedure cekcabang;
    procedure tmembersqlAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure cmbkelaminClick(Sender: TObject);
    procedure DBLkategoriClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TmembersqlCalcFields(DataSet: TDataSet);
    procedure btnCariClick(Sender: TObject);
    procedure TmembersqlFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure DBmemberDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    pvtambah, pvedit, pvtemp :Boolean;
    { Private declarations }
    qid, qkatmember, qmember: TZQuery;
  public
    pbedit    : Boolean;
    { Public declarations }
  end;

var
  fmember: Tfmember;

implementation
  uses unit1, unit3, DateUtils, StrUtils, untMemberCari;
{$R *.dfm}

procedure Tfmember.larang;
begin
{   DBLkategori.Enabled := False;
   dbid.Enabled := False;
   dbpassword.Enabled := False;
   dbnama.Enabled := False;
   dbhp.Enabled := False;
   dbtelp.Enabled  := False;
   SPNlama.Enabled := False;
   cmbkelamin.Enabled := False;
}

end;
procedure Tfmember.boleh;
begin
{//   DBLkategori.Enabled := True;
   dbid.Enabled := True;
//   dbpassword.Enabled := True;
   dbnama.Enabled := True;
   dbhp.Enabled := True;
   dbtelp.Enabled  := True;
   SPNlama.Enabled := True;
   cmbkelamin.Enabled := True;
}
end;
procedure Tfmember.cekcabang;
begin
  qid.Active := False;
  qid.SQL.Text := 'SELECT     id, kategori, kode '+
                  'FROM         tkategorimember '+
                  'WHERE     (kategori = '+ QuotedStr(DBLkategori.Text) + ')';
  qid.Active := True;

  if Qcabangid_cabang.Value <> qid.fieldByName('id').AsInteger then
  begin
    if pvedit then pvtemp := True;
    DBLkategori.SetFocus;
    Exit;
  end;

end;

procedure Tfmember.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
  DBmember.Enabled := False;
end;

procedure Tfmember.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
  DBmember.Enabled := True;
end;

procedure Tfmember.tmembersqlAfterScroll(DataSet: TDataSet);
begin
  cmbagama.ItemIndex:=tmembersqlAgama.Value;
  if TmembersqlJenis_kelamin_boolean.Value then
    cmbkelamin.ItemIndex := 0
  else
    cmbkelamin.ItemIndex := 1;

  DTMberlaku.DateTime := tmembersqlBerlaku.AsDateTime ;
  DTMlahir.DateTime := tmembersqlTgl_lahir.AsDateTime;
end;

procedure Tfmember.FormCreate(Sender: TObject);
begin

  FrmInduk.pbmember := True;

  qid := TZQuery.Create(self);
  qid.Connection := modul.Database1;

  qkatmember := TZQuery.Create(self);
  qkatmember.Connection := modul.Database1;
  qkatmember.SQL.Text := 'SELECT id, kategori FROM tkategorimember';
  qkatmember.Active := True;
  DSkatmember.DataSet := qkatmember;

  qmember := TZQuery.Create(self);
  qmember.Connection := modul.Database1;
  qmember.SQL.Text := 'SELECT MAX(id) FROM tmember';
  qmember.Active := True;

  larang;

  Tmembersql.Connection := modul.Database1;
  Tmembersql.TableName :='tmember';
  Tmembersqltgl_registrasi.DisplayFormat := 'dd MMMM yyyy';
  Tmembersqlberlaku.Alignment := taCenter;
  Tmembersqlberlaku.DisplayFormat := 'dd MMMM yyyy';
  Tmembersqlid.Alignment := taCenter;
  tmembersql.Active := True;
  DSmember.DataSet := Tmembersql;

  Qcabang.Connection := modul.Database1;
  Qcabang.SQL.Text := 'SELECT id_cabang FROM Tsetup';
  Qcabang.Active := True;
  
  btnCari.Enabled := True;

  Tmembersql.Filtered := True;
end;


procedure Tfmember.btnkeluarClick(Sender: TObject);
begin
  qmember.Active := False;
  qkatmember.Active := False;
  fmember.Close;
end;

procedure Tfmember.btntambahClick(Sender: TObject);
begin
    buka;
    boleh;
    DBLkategori.Enabled := True;

    pvTambah := True;
    pvedit := False;
    pvtemp := False;
    tmembersql.Append;
    DTMberlaku.DateTime :=  IncYear(Now, 1);
    DTMlahir.DateTime := StrToDate('01-01-1980');

    Tmembersqlid_kategori.Value := Qcabangid_cabang.Value;
    Tmembersqltgl_registrasi.Value := Now;
    DBLkategoriClick(Sender);
    DBLkategori.Enabled := False;
    dbnama.SetFocus;

    btnCari.Enabled := False;

end;


procedure Tfmember.btneditClick(Sender: TObject);
begin
 


  pvedit := True;
  cekcabang;
  if pvtemp then Exit;
  boleh;

  tmembersql.Edit;
  DBLkategori.Enabled := False;
  dbid.SetFocus;
  buka;
  btnCari.Enabled := False; 
end;

procedure Tfmember.btnhapusClick(Sender: TObject);
begin
  if tmembersql.RecordCount = 0 then
  begin
    Exit;
  end;
  if  bsSkinMessage1.MessageDlg('       Delete selected member       ', mtConfirmation, mbOKCancel, 0) = mrOk then
       tmembersql.Delete;
end;

procedure Tfmember.btnbatalClick(Sender: TObject);
begin
  tutup;
  tmembersql.Cancel;
  larang;
  DBLkategori.Enabled := True;

  pvtemp := False;
  pvedit := False;
  btnCari.Enabled := True;
end;

procedure Tfmember.btnsimpanClick(Sender: TObject) ;
begin
  if dbid.Text = '' then
    begin
      beep;
      dbid.SetFocus;
      exit;
    end;
  if DBLkategori.Text = '' then
    begin
      beep;
      DBLkategori.SetFocus;
      exit;
    end;

  if dbnama.Text = '' then
    begin
      beep;
      dbnama.SetFocus;
      exit;
    end;

  qid.Active := False;
  qid.SQL.Text := 'SELECT     id, kategori, kode '+
                  'FROM         tkategorimember '+
                  'WHERE     (kategori = '+ QuotedStr(DBLkategori.Text) + ')';
  qid.Active := True;

  if Qcabangid_cabang.Value <> qid.fieldByName('id').AsInteger then
  begin
   // bsSkinMessage1.MessageDlg('ANDA TIDAK BOLEH INPUT/EDIT DATA MEMBER OUTLET LAIN ', mtError,[mbOK],0);
    DBLkategori.SetFocus;
    dbid.Clear;
    Exit;
  end;

  
  if cmbkelamin.ItemIndex = 0 then TmembersqlJenis_kelamin_boolean.Value := True
  else
  TmembersqlJenis_kelamin_boolean.Value := False;
  
  tmembersqlAgama.Value := cmbagama.ItemIndex;
  tmembersqlTgl_lahir.Value := DTMlahir.DateTime;
  Tmembersqlberlaku.Value := DTMberlaku.DateTime;
  TmembersqltglUpdate.AsDateTime := Now;
  tmembersql.Post;
 // Tmembersql.Refresh;
  tutup;
  larang;
  DBLkategori.Enabled := True;

  pvtemp := False;
  pvedit := False;
  btnCari.Enabled := True;
end;
procedure Tfmember.cmbkelaminClick(Sender: TObject);
begin
  {if pvtambah then
  tmembersqlJenis_kelamin.Index := cmbkelamin.ItemIndex; }
end;

procedure Tfmember.DBLkategoriClick(Sender: TObject);
var id, idkat : integer;
    kdkat     : String;
begin

  if  not (pvtambah) then exit;
   cekcabang;

   if DBLkategori.Text = '' then   dbid.Text := '';



  idkat := qid.FieldByName('id').AsInteger;
  kdkat := qid.FieldByName('kode').AsString;

  qid.Active := False;

  qid.SQL.Text := ' SELECT     id  ' +
                  ' FROM         tmember '+
                  ' WHERE id_kategori = ' + IntToStr(idkat) +
                  ' ORDER BY id ' ;
  qid.Active := True;
  qid.Last;

  try
    id := StrToInt(RightStr(qid.FieldByName('id').AsString,5));
    id := id + 1
  except
    id := 1;
  end;
    tmembersqlid.Value := FormatFloat(kdkat + '00000',id);
end;

procedure Tfmember.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  { with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);}
end;

procedure Tfmember.TKN13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfmember.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    FrmInduk.pbmember := False;
end;

procedure Tfmember.TmembersqlCalcFields(DataSet: TDataSet);
begin

  if TmembersqlJenis_kelamin.Value = '0' then
    TmembersqlJenis_kelamin_boolean.Value := False
  else
    TmembersqlJenis_kelamin_boolean.Value := True;

  if TmembersqlJenis_kelamin_boolean.Value then
    TmembersqlCalkelamin.Value := 'Pria'
  else
    TmembersqlCalkelamin.Value := 'Wanita';

  case TmembersqlAgama.asInteger of
    0 : TmembersqlCalAgama.Value := '';
    1 : TmembersqlCalAgama.Value := 'Islam';
    2 : TmembersqlCalAgama.Value := 'Kristen Protestan';
    3 : TmembersqlCalAgama.Value := 'Kristen Katholik';
    4 : TmembersqlCalAgama.Value := 'Hindu';
    5 : TmembersqlCalAgama.Value := 'Budha';
  end;
end;

procedure Tfmember.btnCariClick(Sender: TObject);
begin
  Application.CreateForm(TFmemberCari,FmemberCari);
  FmemberCari.vasal := 0;
  FmemberCari.ComboBox1.ItemIndex := 0;
  FmemberCari.ComboBox1Click(Sender);
  FrmInduk.Enabled := False;
end;

procedure Tfmember.TmembersqlFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
 Accept :=  Tmembersqlid_kategori.Value =  Qcabangid_cabang.Value ;
end;

procedure Tfmember.DBmemberDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do
   begin
     if (gdSelected in State) then
     begin
       Brush.Color := clAqua;
       FillRect(Rect);
       Font.Color:= clBlack;
     end;
   end;
   DBmember.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
