unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ZDataset,
  bsSkinCtrls, BusinessSkinForm, bsMessages, ExtCtrls, ComCtrls, bsSkinTabs, jpeg,
  ExtDlgs, Menus, SkinCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable;

type
  Tfkasir = class(TForm)
    DSkasir: TDataSource;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    DSkatuser: TDataSource;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinPanel2: TbsSkinPanel;
    Kategori: TLabel;
    DBkatuser: TDBLookupComboBox;
    Login: TLabel;
    dblogin: TDBEdit;
    Hak: TLabel;
    DBCheckBox1: TDBCheckBox;
    Password: TLabel;
    dbpassword: TDBEdit;
    bsSkinPanel3: TbsSkinPanel;
    Nama: TLabel;
    dbnama: TDBEdit;
    Label1: TLabel;
    cmbjnskelamin: TComboBox;
    Label2: TLabel;
    dbtempatlahir: TDBEdit;
    Agama: TLabel;
    cmbagama: TComboBox;
    Label6: TLabel;
    dtmtgl_lahir: TDateTimePicker;
    Label3: TLabel;
    dbhp: TDBEdit;
    Label5: TLabel;
    dtmmulaikerja: TDateTimePicker;
    Label4: TLabel;
    dbtelp: TDBEdit;
    bsSkinPanel6: TbsSkinPanel;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    Label7: TLabel;
    DBCheckBox2: TDBCheckBox;
    DBGrid1: TDBGrid;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    bsSkinPageControl1: TbsSkinPageControl;
    bsSkinTabSheet1: TbsSkinTabSheet;
    bsSkinTabSheet2: TbsSkinTabSheet;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    bsSkinTabSheet3: TbsSkinTabSheet;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    bsSkinTabSheet4: TbsSkinTabSheet;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    bsSkinTabSheet5: TbsSkinTabSheet;
    bsSkinTabSheet6: TbsSkinTabSheet;
    bsSkinTabSheet7: TbsSkinTabSheet;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    Label8: TLabel;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    btnFix: TbsSkinButton;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    bsSkinTabSheet8: TbsSkinTabSheet;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox57: TDBCheckBox;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    tkasir: TZTable;
    tkasirid: TSmallintField;
    tkasirlogin: TStringField;
    tkasirpassword: TStringField;
    tkasirhak: TStringField;
    tkasirnama: TStringField;
    tkasirtgl_lahir: TDateTimeField;
    tkasirtempat_lahir: TStringField;
    tkasiragama: TSmallintField;
    tkasirjenis_kelamin: TSmallintField;
    tkasirHP: TStringField;
    tkasirtelp: TStringField;
    tkasirmulai_kerja: TDateTimeField;
    tkasirfoto: TBlobField;
    tkasiradmin: TStringField;
    tkasirpbkatroom: TStringField;
    tkasirpbkatmenu: TStringField;
    tkasirpbbar: TStringField;
    tkasirsecure: TStringField;
    tkasirpbkasir: TStringField;
    tkasirpbkatmember: TStringField;
    tkasirpbroom: TStringField;
    tkasirpbmember: TStringField;
    tkasirpbordermenu: TStringField;
    tkasirpborderroom: TStringField;
    tkasirpborderdll: TStringField;
    tkasirpbpayment: TStringField;
    tkasirpbbill: TStringField;
    tkasirpbbillcor: TStringField;
    tkasirpbkatuser: TStringField;
    tkasirpbpaymentdetailreport: TStringField;
    tkasirpbwaiterreport: TStringField;
    tkasirpbpindahroom: TStringField;
    tkasirpbroomreport: TStringField;
    tkasirpbmemberreport: TStringField;
    tkasirpbdetailpenjualan: TStringField;
    tkasirpbSongList: TStringField;
    tkasirpbsummary: TStringField;
    tkasirpbsatuan: TStringField;
    tkasirpbbarang: TStringField;
    tkasirpbkatbarang: TStringField;
    tkasirpbkomposisi: TStringField;
    tkasirpbdsitributor: TStringField;
    tkasirpbbarangmasuk: TStringField;
    tkasirpbreportmasuk: TStringField;
    tkasirpbreportkeluar: TStringField;
    tkasirpbstokbarang: TStringField;
    tkasirpbpenyesuaian: TStringField;
    tkasirpbMemberUpdate: TStringField;
    tkasirpbdetailmemberreport: TStringField;
    tkasirpbmenureport: TStringField;
    tkasirpbdatamember: TStringField;
    tkasirpbSrequest: TStringField;
    tkasirpbSongReport: TStringField;
    tkasirpbdatalagu: TStringField;
    tkasirpbCheckServer: TStringField;
    tkasirpbdailybarangkeluar: TStringField;
    tkasirpbSatuanKonversi: TStringField;
    tkasirpbreportreservasi: TStringField;
    tkasirpbreservasi: TStringField;
    tkasirpbtambahlagu: TStringField;
    tkasirpbbank: TStringField;
    tkasirpbtvchannel: TStringField;
    tkasirpbrunningtext: TStringField;
    tkasirpbkonversipayment: TStringField;
    tkasirpbcontrolroom: TStringField;
    tkasirpbpesanbill: TStringField;
    tkasirpbsaran: TStringField;
    tkasirpbroompassword: TStringField;
    tkasirpbGudangMutasi: TStringField;
    tkasirpbGudang: TStringField;
    tkasirpbkirimlagu: TStringField;
    tkasircs: TStringField;
    tkasirpdUpdateLagu: TStringField;
    tkasirpbpajak: TStringField;
    tkasirpbpromo: TStringField;
    tkasirpbpaymentc: TStringField;
    tkasirpbshutdownserver: TStringField;
    tkasirpbbackupserver: TStringField;
    tkasirpbreportorder: TStringField;
    tkasirpbtaxservice: TStringField;
    tkasirpbControlRoomReport: TStringField;
    tkasirpbAuthorizationReport: TStringField;
    tkasirpbMenuSoldOut: TStringField;
    DBCheckBox63: TDBCheckBox;
    tkasirpbVoucher: TStringField;
    DBCheckBox64: TDBCheckBox;
    tkasirpbVoucherReport: TStringField;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBkatuserClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tkasirAfterScroll(DataSet: TDataSet);
    procedure Image1Click(Sender: TObject);
    procedure btnFixClick(Sender: TObject);
    procedure tkasirCalcFields(DataSet: TDataSet);
  private
  pvtambah, pvedit  : Boolean ;
  ceklogin : string;
    { Private declarations }
    QFixkasir, qid, Qinsert, qkategori, Qkatuser: TZQuery;
    TFixkasir: TZTable;
  public
    { Public declarations }
  end;

var
  fkasir: Tfkasir;

implementation
  uses unit1, unit3, StrUtils, Math;
{$R *.dfm}

procedure Tfkasir.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
end;

procedure Tfkasir.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;

  DBGrid1.Enabled := True;
end;

procedure Tfkasir.FormCreate(Sender: TObject);
begin

  TFixkasir := TZTable.Create(self);
  TFixkasir.Connection := modul.Database1;
  TFixkasir.TableName := 'tkasir';

  QFixkasir := TZQuery.Create(self);
  QFixkasir.Connection := modul.Database1;

  qid := TZQuery.Create(self);
  qid.Connection := modul.Database1;
  qid.SQL.Text := 'SELECT MAX(login) As login FROM tkasir';
  qid.Active := True;
  qid.DataSource := DSkasir;

  Qinsert := TZQuery.Create(self);
  Qinsert.Connection := modul.Database1;

  qkategori := TZQuery.Create(self);
  qkategori.Connection := modul.Database1;

  Qkatuser := TZQuery.Create(self);
  Qkatuser.Connection := modul.Database1;
  Qkatuser.SQL.Text := 'SELECT id, kategori FROM tkategoriuser';
  Qkatuser.Active := True;
  DSkatuser.DataSet := Qkatuser;

  FrmInduk.pbkasir := True;

  btnFixClick(Sender);

  tkasir.Connection := modul.Database1;
  tkasir.TableName := 'tkasir';
  tkasir.Active := True;
  DSkasir.DataSet := tkasir;

end;

procedure Tfkasir.btneditClick(Sender: TObject);
begin
  ceklogin := tkasirlogin.Value;
  pvedit := true;
  pvtambah := False;
  DBGrid1.Enabled := False;

  
  dtmtgl_lahir.DateTime := tkasirtgl_lahir.Value;
  dtmmulaikerja.DateTime := tkasirmulai_kerja.Value;
  bsSkinPageControl1.Enabled := True;
  tkasir.Edit;
  buka;
end;

procedure Tfkasir.btnhapusClick(Sender: TObject);
begin
  if tkasir.RecordCount = 0 then
    begin
      Exit;
    end;
    if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       tkasir.Delete;
end;

procedure Tfkasir.btnbatalClick(Sender: TObject);
begin
  tutup;
  tkasir.Cancel;
  tkasirAfterScroll(tkasir);
  pvtambah := False;
  pvedit := False;
end;

procedure Tfkasir.btnkeluarClick(Sender: TObject);
begin
  FrmInduk.pbkasir := False;
  fkasir.close;
end;

procedure Tfkasir.btntambahClick(Sender: TObject);
begin
    DBGrid1.Enabled := false;
    dblogin.SetFocus;
    pvTambah := True;
    tkasir.Append;
    tkasiradmin.Value := '0';
    buka;
    dtmtgl_lahir.DateTime := StrToDate('01-01-1980');
    dtmmulaikerja.DateTime := Now;
    DBkatuser.SetFocus;
    tkasirhak.Value := '0';
    bsSkinPageControl1.Enabled := True;
    tkasirpbkatroom.Value := '0';
    tkasirpbkatmenu.Value := '0';
    tkasirpbbar.Value := '0';
    tkasirpbkasir.Value := '0';
    tkasirpbkatmember.Value := '0';
    tkasirpbroom.Value := '0';
    tkasirpbmember.Value := '0';
    tkasirpbordermenu.Value := '0';
    tkasirpborderroom.Value := '0';
    tkasirpborderroom.Value := '0';
    tkasirpborderdll.Value := '0';
    tkasirpbpayment.Value := '0';
    tkasirpbbill.Value := '0';
    tkasirpbbillcor.Value := '0';
    tkasirpbkatuser.Value := '0';
    tkasirpbpaymentdetailreport.Value := '0';
    tkasirpbwaiterreport.Value := '0';
    tkasirpbpindahroom.Value := '0';
    tkasirpbroomreport.Value := '0';
    tkasirpbmemberreport.Value := '0';
    tkasirpbdetailpenjualan.Value := '0';
    tkasirpbSongList.Value := '0';
    tkasirpbsummary.Value := '0';
    tkasirpbsatuan.Value := '0';
    tkasirpbbarang.Value := '0';
    tkasirpbkatbarang.Value := '0';
    tkasirpbkomposisi.Value := '0';
    tkasirpbdsitributor.Value := '0';
    tkasirpbbarangmasuk.Value := '0';
    tkasirpbreportmasuk.Value := '0';
    tkasirpbreportkeluar.Value := '0';
    tkasirpbstokbarang.Value := '0';
    tkasirpbpenyesuaian.Value := '0';
    tkasirpbMemberUpdate.Value := '0';
    tkasirpbdetailmemberreport.Value := '0';
    tkasirpbmenureport.Value := '0';
    tkasirpbdatamember.Value := '0';
    tkasirpbSrequest.Value := '0';
    tkasirpbSongReport.Value := '0';
    tkasirpbdatalagu.Value := '0';
    tkasirpbCheckServer.Value := '0';
    tkasirpbdailybarangkeluar.Value := '0';
    tkasirpbSatuanKonversi.Value := '0';
    tkasirpbreportreservasi.Value := '0';
    tkasirpbreservasi.Value := '0';
    tkasirpbtambahlagu.Value := '0';
    tkasirpbbank.Value := '0';
    tkasirpbtvchannel.Value := '0';
    tkasirpbrunningtext.Value := '0';
    tkasirpbkonversipayment.Value := '0';
    tkasirpbcontrolroom.Value := '0';
    tkasirpbpesanbill.Value := '0';
    tkasirpbsaran.Value := '0';
    tkasirpbroompassword.Value := '0';
    tkasirpbGudangMutasi.Value := '0';
    tkasirpbGudang.Value := '0';
    tkasirpbkirimlagu.Value := '0';
    tkasircs.Value := '0';
    tkasirpdUpdateLagu.Value := '0';
    tkasirpbSongList.Value := '0';
    tkasirpbpajak.Value := '0';
    tkasirpbpaymentc.Value := '0';
    tkasirpbpromo.Value := '0';
    tkasirpbControlRoomReport.Value := '0';
    tkasirpbAuthorizationReport.Value := '0';
    tkasirpbMenuSoldOut.Value := '0';
end;

procedure Tfkasir.btnsimpanClick(Sender: TObject);
  var
      BG  : TJPEGImage;
      MS : TMemoryStream;

begin
  if dblogin.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg(' PILIH KATEGORI USER ', mtInformation,[mbOK],0);
    DBkatuser.SetFocus;
    exit;
  end;

  if dbpassword.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg(' PASSWORD HARUS DIISI ! ', mtWarning, [mbOK],0);
    dbpassword.SetFocus;
    exit;
  end;

  if dbnama.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg(' NAMA BELUM DIISI ',mtInformation,[mbOK], 0);
    dbnama.SetFocus;
    Exit;
  end;

  if dbtempatlahir.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg(' TEMPAT LAHIR BELUM DIISI', mtWarning,[mbOK],0);
    dbtempatlahir.SetFocus;
    exit;
  end;


  qkategori.Active := False;
  qkategori.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         tkasir ' +
                       ' WHERE     (login= ' + QuotedStr(dblogin.Text) + ')';
  qkategori.Active := True;

  if qkategori.FieldByName('jumlah').AsInteger > 0 then
  begin
      if (pvedit = true) and  (dblogin.Text <> ceklogin) then
        begin
          ShowMessage(' edit');
          bsSkinMessage1.MessageDlg(' Nama Kategori Sudah Ada ',mtInformation,[mbOK],0);
          dblogin.SetFocus;
          exit;
        end;
      if pvtambah then
        begin
          bsSkinMessage1.MessageDlg(' Nama Kategori Sudah Ada ',mtInformation,[mbOK],0);
          dblogin.SetFocus;
          Exit;
      end;
  end;

  BG:=TJPEGImage.Create;
  MS:=TMemoryStream.Create;
  try
    BG.Assign(Image1.Picture.Graphic);
    BG.SaveToStream(MS);
    if MS.Size>0 then
       tkasirfoto.LoadFromStream(MS)
    else
      tkasirfoto.Clear;
  except
    tkasirfoto.Clear;
  end;

    MS.Free;
    BG.Free;
 
  tkasirtgl_lahir.Value := dtmtgl_lahir.DateTime;
  tkasirmulai_kerja.Value := dtmmulaikerja.DateTime;
  tkasiragama.Value := cmbagama.ItemIndex;
  tkasirjenis_kelamin.Value :=  cmbjnskelamin.ItemIndex;

  tkasir.Post;
  tkasir.Refresh;
  DBGrid1.Refresh;

  DBGrid1.Enabled := True;
  pvTambah := False;
  tutup;
end;

procedure Tfkasir.TKN13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfkasir.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tfkasir.DBkatuserClick(Sender: TObject);
var bantu, idkat : integer;
    kdkat     : String;
begin

if not (pvtambah) then exit;
  if DBkatuser.Text = '' then
  begin
    dblogin.Text := '';

  end;
  qid.SQL.Text := 'SELECT     id, kategori, kode '+
                  'FROM         tkategoriuser '+
                  'WHERE     (kategori = '+ QuotedStr(DBkatuser.Text) + ')';

  qid.Active := True;
  idkat := qid.FieldByName('id').AsInteger;
  kdkat := qid.FieldByName('kode').AsString;
  qid.Active := False;

  tkasir.Edit;
  dblogin.Enabled := True;
  qid.Active := False;
  qid.SQL.Text := ' SELECT     login  ' +
                  ' FROM         tkasir '+
                  ' WHERE id = ' + IntToStr(idkat) +
                  ' ORDER BY login ' ;
  qid.Active := True;

  qid.Last;
  tkasir.Active := True;
  try
    bantu := strtoint(RightStr(qid.FieldByName('login').AsString,3));
    bantu := bantu + 1
  except
    bantu := 1;
  end;
    tkasirlogin.Value := FormatFloat(kdkat + '000',bantu);

 
 end;

procedure Tfkasir.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbkasir := False;
end;

procedure Tfkasir.tkasirAfterScroll(DataSet: TDataSet);
var
    BG : TJPEGImage;
    MS : TBlobStream;
begin

  dtmtgl_lahir.DateTime  := tkasirtgl_lahir.AsDateTime  ;
  dtmmulaikerja.DateTime :=  tkasirmulai_kerja.AsDateTime ;
  cmbagama.ItemIndex :=  tkasiragama.AsInteger;
  cmbjnskelamin.ItemIndex := tkasirjenis_kelamin.AsInteger   ;

  if tkasir.FieldByName('foto').IsNull = False then
  begin
    BG:=TJPEGImage.Create;
    MS:=TBlobStream.Create(tkasirfoto,bmRead);
    if MS.Size>0 then begin
      BG.LoadFromStream(MS);
      Image1.Picture.Graphic:=BG;
    end
    else
      Image1.Picture:=nil;
    MS.Free;
//    BG.Assign(tkasirfoto);
//    Image1.Picture.Assign(BG);
    BG.Free;
  end;

end;

procedure Tfkasir.Image1Click(Sender: TObject);
begin
   if not (pvtambah or pvedit) then Exit;

   if OpenPictureDialog1.Execute then
  begin
    try
      Image1.Picture.LoadFromFile(openpicturedialog1.FileName);

      if (Image1.Picture.Width>250)or(Image1.Picture.Height>150) then
      begin
        Image1.Picture.LoadFromFile('');
        bsSkinMessage1.MessageDlg('  Ukuran Foto Maximal 2 x 3 cm  ',mtError,[mbOk], 0);
      end

    except
      bsSkinMessage1.MessageDlg('  Format gambar tidak diterima  ',mtError,[mbOk], 0);
    end;
  end;
end;

procedure Tfkasir.btnFixClick(Sender: TObject);
var
    jmlField : Integer;
    i        : Integer;
begin
  TFixkasir.Active := True;
  jmlField := TFixkasir.FieldCount - 1;
  TFixkasir.First;
  modul.Database1.StartTransaction;
  while not(TFixkasir.Eof) do
  begin
    try
      for i := 1 to jmlField do
      begin
        if  ((TFixkasir.Fields[i].AsString = '') or
             (TFixkasir.Fields[i].AsString = '0') or
             (TFixkasir.Fields[i].AsString = 'False')) and
             (not(TFixkasir.Fields[i].FieldName = 'foto')) then
        begin
          QFixKasir.SQL.Text := 'UPDATE Tkasir SET '+ TFixkasir.Fields[i].FieldName +' = 0 WHERE (login = '+ QuotedStr(Trim(TFixkasir.Fieldbyname('login').AsString)) +
                                                                                     ' AND password = '+ QuotedStr( Trim(TFixkasir.Fieldbyname('password').AsString))+')';
          QFixKasir.ExecSQL;
        end;
      end;
    finally
      TFixkasir.Next;
    end;
  end;
  modul.Database1.Commit;
//  bsSkinMessage1.MessageDlg('         Thank you           !',mtInformation, [mbOK],0);
end;

procedure Tfkasir.tkasirCalcFields(DataSet: TDataSet);
begin
{
	if tkasirhak_string.Value = '0' then tkasirhak.Value := False else tkasirhak.Value := True;
	if tkasiradmin_string.Value = '0' then  tkasiradmin.Value := False else tkasiradmin.Value := True;
	if tkasirpbkatroom_string.Value = '0' then  tkasirpbkatroom.Value := False else tkasirpbkatroom.Value := True;
	if tkasirpbkatmenu_string.Value = '0' then  tkasirpbkatmenu.Value := False else tkasirpbkatmenu.Value := True;
	if tkasirpbbar_string.Value = '0' then  tkasirpbbar.Value := False else tkasirpbbar.Value := True;
	if tkasirpbkasir_string.Value = '0' then  tkasirpbkasir.Value := False else tkasirpbkasir.Value := True;
	if tkasirpbkatmember_string.Value = '0' then  tkasirpbkatmember.Value := False else tkasirpbkatmember.Value := True;
	if tkasirpbroom_string.Value = '0' then  tkasirpbroom.Value := False else tkasirpbroom.Value := True;
	if tkasirpbmember_string.Value = '0' then  tkasirpbmember.Value := False else tkasirpbmember.Value := True;
	if tkasirpbordermenu_string.Value = '0' then  tkasirpbordermenu.Value := False else tkasirpbordermenu.Value := True;
	if tkasirpborderroom_string.Value = '0' then  tkasirpborderroom.Value := False else tkasirpborderroom.Value := True;
	if tkasirpborderdll_string.Value = '0' then  tkasirpborderdll.Value := False else tkasirpborderdll.Value := True;
	if tkasirpbpayment_string.Value = '0' then  tkasirpbpayment.Value := False else tkasirpbpayment.Value := True;
	if tkasirpbbill_string.Value = '0' then  tkasirpbbill.Value := False else tkasirpbbill.Value := True;
	if tkasirpbbillcor_string.Value = '0' then  tkasirpbbillcor.Value := False else tkasirpbbillcor.Value := True;
	if tkasirpbkatuser_string.Value = '0' then  tkasirpbkatuser.Value := False else tkasirpbkatuser.Value := True;
	if tkasirpbpaymentdetailreport_string.Value = '0' then  tkasirpbpaymentdetailreport.Value := False else tkasirpbpaymentdetailreport.Value := True;
	if tkasirpbwaiterreport_string.Value = '0' then  tkasirpbwaiterreport.Value := False else tkasirpbwaiterreport.Value := True;
	if tkasirpbpindahroom_string.Value = '0' then  tkasirpbpindahroom.Value := False else tkasirpbpindahroom.Value := True;
	if tkasirpbroomreport_string.Value = '0' then  tkasirpbroomreport.Value := False else tkasirpbroomreport.Value := True;
	if tkasirpbmemberreport_string.Value = '0' then  tkasirpbmemberreport.Value := False else tkasirpbmemberreport.Value := True;
	if tkasirpbdetailpenjualan_string.Value = '0' then  tkasirpbdetailpenjualan.Value := False else tkasirpbdetailpenjualan.Value := True;
	if tkasirpbSongList_string.Value = '0' then  tkasirpbSongList.Value := False else tkasirpbSongList.Value := True;
	if tkasirpbsummary_string.Value = '0' then  tkasirpbsummary.Value := False else tkasirpbsummary.Value := True;
	if tkasirpbsatuan_string.Value = '0' then  tkasirpbsatuan.Value := False else tkasirpbsatuan.Value := True;
	if tkasirpbbarang_string.Value = '0' then  tkasirpbbarang.Value := False else tkasirpbbarang.Value := True;
	if tkasirpbkatbarang_string.Value = '0' then  tkasirpbkatbarang.Value := False else tkasirpbkatbarang.Value := True;
	if tkasirpbkomposisi_string.Value = '0' then  tkasirpbkomposisi.Value := False else tkasirpbkomposisi.Value := True;
	if tkasirpbdsitributor_string.Value = '0' then  tkasirpbdsitributor.Value := False else tkasirpbdsitributor.Value := True;
	if tkasirpbbarangmasuk_string.Value = '0' then  tkasirpbbarangmasuk.Value := False else tkasirpbbarangmasuk.Value := True;
	if tkasirpbreportmasuk_string.Value = '0' then  tkasirpbreportmasuk.Value := False else tkasirpbreportmasuk.Value := True;
	if tkasirpbreportkeluar_string.Value = '0' then  tkasirpbreportkeluar.Value := False else tkasirpbreportkeluar.Value := True;
	if tkasirpbstokbarang_string.Value = '0' then  tkasirpbstokbarang.Value := False else tkasirpbstokbarang.Value := True;
	if tkasirpbpenyesuaian_string.Value = '0' then  tkasirpbpenyesuaian.Value := False else tkasirpbpenyesuaian.Value := True;
	if tkasirpbMemberUpdate_string.Value = '0' then  tkasirpbMemberUpdate.Value := False else tkasirpbMemberUpdate.Value := True;
	if tkasirpbdetailmemberreport_string.Value = '0' then  tkasirpbdetailmemberreport.Value := False else tkasirpbdetailmemberreport.Value := True;
	if tkasirpbmenureport_string.Value = '0' then  tkasirpbmenureport.Value := False else tkasirpbmenureport.Value := True;
	if tkasirpbdatamember_string.Value = '0' then  tkasirpbdatamember.Value := False else tkasirpbdatamember.Value := True;
	if tkasirpbSrequest_string.Value = '0' then  tkasirpbSrequest.Value := False else tkasirpbSrequest.Value := True;
	if tkasirpbSongReport_string.Value = '0' then  tkasirpbSongReport.Value := False else tkasirpbSongReport.Value := True;
	if tkasirpbdatalagu_string.Value = '0' then  tkasirpbdatalagu.Value := False else tkasirpbdatalagu.Value := True;
	if tkasirpbCheckServer_string.Value = '0' then  tkasirpbCheckServer.Value := False else tkasirpbCheckServer.Value := True;
	if tkasirpbdailybarangkeluar_string.Value = '0' then  tkasirpbdailybarangkeluar.Value := False else tkasirpbdailybarangkeluar.Value := True;
	if tkasirpbSatuanKonversi_string.Value = '0' then  tkasirpbSatuanKonversi.Value := False else tkasirpbSatuanKonversi.Value := True;
	if tkasirpbreportreservasi_string.Value = '0' then  tkasirpbreportreservasi.Value := False else tkasirpbreportreservasi.Value := True;
	if tkasirpbreservasi_string.Value = '0' then  tkasirpbreservasi.Value := False else tkasirpbreservasi.Value := True;
	if tkasirpbtambahlagu_string.Value = '0' then  tkasirpbtambahlagu.Value := False else tkasirpbtambahlagu.Value := True;
	if tkasirpbbank_string.Value = '0' then  tkasirpbbank.Value := False else tkasirpbbank.Value := True;
	if tkasirpbtvchannel_string.Value = '0' then  tkasirpbtvchannel.Value := False else tkasirpbtvchannel.Value := True;
	if tkasirpbrunningtext_string.Value = '0' then  tkasirpbrunningtext.Value := False else tkasirpbrunningtext.Value := True;
	if tkasirpbkonversipayment_string.Value = '0' then  tkasirpbkonversipayment.Value := False else tkasirpbkonversipayment.Value := True;
	if tkasirpbcontrolroom_string.Value = '0' then  tkasirpbcontrolroom.Value := False else tkasirpbcontrolroom.Value := True;
	if tkasirpbpesanbill_string.Value = '0' then  tkasirpbpesanbill.Value := False else tkasirpbpesanbill.Value := True;
	if tkasirpbsaran_string.Value = '0' then  tkasirpbsaran.Value := False else tkasirpbsaran.Value := True;
	if tkasirpbroompassword_string.Value = '0' then  tkasirpbroompassword.Value := False else tkasirpbroompassword.Value := True;
	if tkasirpbGudangMutasi_string.Value = '0' then  tkasirpbGudangMutasi.Value := False else tkasirpbGudangMutasi.Value := True;
	if tkasirpbGudang_string.Value = '0' then  tkasirpbGudang.Value := False else tkasirpbGudang.Value := True;
	if tkasirpbkirimlagu_string.Value = '0' then  tkasirpbkirimlagu.Value := False else tkasirpbkirimlagu.Value := True;
	if tkasircs_string.Value = '0' then  tkasircs.Value := False else tkasircs.Value := True;
	if tkasirpdUpdateLagu_string.Value = '0' then  tkasirpdUpdateLagu.Value := False else tkasirpdUpdateLagu.Value := True;
	if tkasirpbpajak_string.Value = '0' then  tkasirpbpajak.Value := False else tkasirpbpajak.Value := True;
	if tkasirpbpromo_string.Value = '0' then  tkasirpbpromo.Value := False else tkasirpbpromo.Value := True;
	if tkasirpbpaymentc_string.Value = '0' then  tkasirpbpaymentc.Value := False else tkasirpbpaymentc.Value := True;
	if tkasirpbshutdownserver_string.Value = '0' then  tkasirpbshutdownserver.Value := False else tkasirpbshutdownserver.Value := True;
	if tkasirpbbackupserver_string.Value = '0' then  tkasirpbbackupserver.Value := False else tkasirpbbackupserver.Value := True;
	if tkasirpbreportorder_string.Value = '0' then  tkasirpbreportorder.Value := False else tkasirpbreportorder.Value := True;
	if tkasirpbtaxservice_string.Value = '0' then  tkasirpbtaxservice.Value := False else tkasirpbtaxservice.Value := True;
	if tkasirpbControlRoomReport_string.Value = '0' then  tkasirpbControlRoomReport.Value := False else tkasirpbControlRoomReport.Value := True;
	if tkasirpbAuthorizationReport_string.Value = '0' then  tkasirpbAuthorizationReport.Value := False else tkasirpbAuthorizationReport.Value := True;
	if tkasirpbMenuSoldOut_string.Value = '0' then  tkasirpbMenuSoldOut.Value := False else tkasirpbMenuSoldOut.Value := True;
}
end;

end.
