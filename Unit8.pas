unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, DBCtrls, Mask,
  BusinessSkinForm, bsSkinCtrls, bsMessages, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Spin, AEDIT, MemDS, VirtualTable;

type
  Tfroom = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    cmbvideo: TComboBox;
    edtipaddress: TAEdit;
    spnmaster: TSpinEdit;
    spnwave: TSpinEdit;
    spnmic: TSpinEdit;
    spntv: TSpinEdit;
    spncd: TSpinEdit;
    QMyUpdate: TZQuery;
    QmyRoom: TZQuery;
    QmyRoomIDROOM: TSmallintField;
    QmyRoomROOMNAME: TStringField;
    QmyRoomUSERROOM: TStringField;
    QmyRoomIPADD: TStringField;
    QmyRoomAPA: TStringField;
    QmyRoomSTATUS: TStringField;
    QmyRoomPANGGIL: TStringField;
    QmyRoomWKTSTART: TDateTimeField;
    QmyRoomDURASI: TSmallintField;
    QmyRoomVOLMASTER: TSmallintField;
    QmyRoomVOLWAVE: TSmallintField;
    QmyRoomVOLMIC: TSmallintField;
    QmyRoomVOLTV: TSmallintField;
    QmyRoomSKIN: TSmallintField;
    QmyRoomVOLCD: TSmallintField;
    QmyRoomVIDEO: TSmallintField;
    edtnamaroom: TAEdit;
    cmbkategori: TComboBox;
    chkjual: TCheckBox;
    Label3: TLabel;
    DSROOM: TDataSource;
    btnCocok: TbsSkinButton;
    edtadminmemo: TMemo;
    Label5: TLabel;
    Edit1: TEdit;
    QmyRoomPORT: TIntegerField;
    QmyRoomROOMID: TLargeintField;
    QmyRoomORDDATE: TDateField;
    QmyRoomORDTIME: TTimeField;
    QmyRoomchat: TSmallintField;
    QmyRoomplaylist: TSmallintField;
    QmyRoomkatajalan: TSmallintField;
    QmyRoomkirimlagu: TSmallintField;
    QmyRoomkirimidlagu: TLargeintField;
    QmyRoomwakeon: TStringField;
    Label6: TLabel;
    spnvolume: TSpinEdit;
    Label13: TLabel;
    spnremotemic: TSpinEdit;
    Label15: TLabel;
    spnecho: TSpinEdit;
    QmyRoomtambahwaktu: TSmallintField;
    QmyRoomremotevol: TSmallintField;
    QmyRoomremotemic: TSmallintField;
    QmyRoomremoteecho: TSmallintField;
    Qroom: TZQuery;
    QroomLIPaddress: TStringField;
    Qroomid: TSmallintField;
    Qroomnamaroom: TStringField;
    Qroomkategori: TStringField;
    Qroomadmin_memo: TMemoField;
    QroomroyaltyLock: TBooleanField;
    QroomsystemLock: TBooleanField;
    QroomLjual: TBooleanField;
    QroomLvolmastes: TIntegerField;
    QroomLvolwave: TIntegerField;
    QroomLvolmic: TIntegerField;
    QroomLvoltv: TIntegerField;
    QroomLvolCD: TIntegerField;
    QroomLremotevolume: TIntegerField;
    QroomLremotemic: TIntegerField;
    QroomLecho: TIntegerField;
    QroomCalVideo: TStringField;
    Qroomjual: TStringField;

    procedure boleh;
    procedure larang;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure DBLkategoriClick(Sender: TObject);
    procedure DBLbarClick(Sender: TObject);
    procedure DBLkategoriKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btneditClick(Sender: TObject);
    procedure cmbkategoriChange(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure QroomAfterScroll(DataSet: TDataSet);
    procedure btnhapusClick(Sender: TObject);
    procedure edtnamaroomKeyPress(Sender: TObject; var Key: Char);
    procedure cmbkategoriEnter(Sender: TObject);
    procedure btnCocokClick(Sender: TObject);
    procedure QroomCalcFields(DataSet: TDataSet);


  private
    pvtambah, pvedit : Boolean;
    ceknamaroom : String;
    pvid, pvidkategori, pvvideo, cekIDroom : integer;
    query, Qkategori: TZQuery;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  froom: Tfroom;

implementation
   uses unit1, unit3;
{$R *.dfm}
procedure Tfroom.larang;
begin
   spnmaster.Enabled := False;
   spnwave.Enabled := False;
   spnmic.Enabled := False;
   spntv.Enabled := False;
   spncd.Enabled := False;
   cmbvideo.Enabled := False;
   cmbkategori.Enabled := False;
   edtnamaroom.Enabled := False;
   edtipaddress.Enabled := False;
   Edit1.Enabled := False;
   spnvolume.Enabled := False;
   spnremotemic.Enabled := False;
   spnecho.Enabled := False;

end;
procedure Tfroom.boleh;
begin
   spnmaster.Enabled := True;
   spnwave.Enabled := True;
   spnmic.Enabled := True;
   spntv.Enabled := True;
   spncd.Enabled := True;
   cmbvideo.Enabled := True;
   cmbkategori.Enabled := True;
   edtnamaroom.Enabled := True;
   edtipaddress.Enabled := True;
   Edit1.Enabled := true;
   spnvolume.Enabled := true;
   spnremotemic.Enabled := true;
   spnecho.Enabled := true;
end;

procedure Tfroom.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
  btnCocok.Visible := False;
end;

procedure Tfroom.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
  btnCocok.Visible := True;
end;




procedure Tfroom.FormCreate(Sender: TObject);
begin

  Qkategori := TZQuery.Create(self);
  Qkategori.Connection := modul.Database1;

  query := TZQuery.Create(self);
  query.Connection := modul.Database1;

  FrmInduk.pbroom := True;

  QmyRoom.Active := True;

  Qroom.Connection := modul.Database1;
  Qroom.SQL.Text := 'SELECT troom.id, troom.namaroom, tkategoriroom.kategori, troom.jual,  troom.admin_memo, troom.royaltyLock, troom.systemLock FROM troom INNER JOIN tkategoriroom ON troom.idkategori = tkategoriroom.id';
  Qroom.Active := True;
  DSROOM.DataSet := Qroom;
  DBGrid1.Enabled := True;

  cmbkategoriEnter(sender);

  tutup;
  larang;

  while not(Qroom.Eof) do
  begin
    if not(QmyRoom.Locate('IDROOM', Qroom.FieldByName('id').Value, [])) then
    begin
      bsSkinMessage1.MessageDlg('      Data Room tidak syncron     ', mtError, [mbOK],0);
      exit;
    end
    else
    begin
      if not(QmyRoomROOMNAME.Value = Qroom.FieldByName('namaroom').Value) then
      begin
        bsSkinMessage1.MessageDlg('      Data Room tidak syncron     ', mtError, [mbOK],0);
        exit;
      end;
    end;
    Qroom.Next;
  end;
end;

procedure Tfroom.btntambahClick(Sender: TObject);
begin
if FrmInduk.pbpratama = false then exit;
  buka;
  boleh;
  edtnamaroom.Text := '';
  edtipaddress.Text := '';
  edtadminmemo.Text := '';
  spnmaster.Value := 70;
  spnwave.Value := 100;
  spnmic.Value := 25;
  spntv.Value := 30;
  spncd.Value := 20;
  chkjual.Checked := True;
  pvtambah := True;
  pvedit := False;
  edtnamaroom.SetFocus;
  spnvolume.Value:=0;
  spnremotemic.Value:=0;
   spnecho.Value:=0;

end;

procedure Tfroom.btnbatalClick(Sender: TObject);
begin
  tutup;
  larang;
  pvtambah := False;
  pvedit := False;
end;

procedure Tfroom.btnsimpanClick(Sender: TObject);
var   id : Smallint;
begin
  if edtnamaroom.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Nama Room Belum Diisi', mtError, [mbOK],0);
    edtnamaroom.SetFocus;
    exit;
  end;

  if Length(Trim(edtnamaroom.Text))<> 4 then
  Begin
    beep;
    bsSkinMessage1.MessageDlg ('Nama Room harus 4 Karakter!' , mtInformation , [mbOK],0);
    edtnamaroom.SetFocus;
    edtnamaroom.SelectAll;
    exit;
  end;

   cmbkategoriChange(sender);

  query.Active := False;
  query.SQL.Text := ' SELECT     COUNT(*) AS jumlah ' +
                       ' FROM         troom ' +
                       ' WHERE     (namaroom= ' + QuotedStr(edtnamaroom.Text) + ')';
  query.Active := True;

  if query.FieldByName('jumlah').AsInteger > 0 then
  begin
  if (pvedit = true) and  (edtnamaroom.Text <> ceknamaroom) then
  begin
    bsSkinMessage1.MessageDlg(' Nama Room Sudah Ada ',mtInformation,[mbOK],0);
    edtnamaroom.SetFocus;
    exit;
  end;
  if pvtambah then
  begin
     bsSkinMessage1.MessageDlg(' Nama Room Sudah Ada ',mtInformation,[mbOK],0);
     edtnamaroom.SetFocus;
     exit;
     end;
  end;

  if pvtambah then
  begin
    query.Active := False;
    query.SQL.Text := 'SELECT MAX(id) AS id ' +
                    'FROM troom';
    query.Active := True;
    if  query.FieldByName('id').AsInteger = 0 then
      id := 1
    else
      id:= query.FieldByName('id').AsInteger + 1;
    pvid := id;
  end;


  if cmbvideo.ItemIndex = 0 then pvvideo := 4 else
  pvvideo := 2;

// Insert

  if pvtambah then
  begin
    query.Active := False;
    query.SQL.Text := ' INSERT INTO troom ' +
                      ' (id, namaroom, jual, ipaddress, idkategori, admin_memo, billstop, royaltyLock, systemLock) ' +
                      ' VALUES (:id, :namaroom, :jual, :ipaddress, :idkategori, :admin_memo, :billstop, :royaltyLock, :systemLock) ';
    query.ParamByName('id').AsInteger := pvid;
    query.ParamByName('namaroom').AsString := edtnamaroom.Text;

    if chkjual.Checked then
      query.ParamByName('jual').AsString := '1'
    else
      query.ParamByName('jual').AsString := '0';

    query.ParamByName('ipaddress').AsString := edtipaddress.Text;
    query.ParamByName('idkategori').AsInteger := pvidkategori;
    query.ParamByName('admin_memo').AsString := edtadminmemo.Text;
    query.ParamByName('billstop').AsString := '0';
    query.ParamByName('royaltyLock').AsString := '0';
    query.ParamByName('systemLock').AsString := '0';
    query.ExecSQL;


    QMyUpdate.Active := False;
    QMyUpdate.SQL.Text := ' INSERT INTO room ' +
                        ' (IDROOM, ROOMNAME, IPADD, ORDDATE, ORDTIME, VOLMASTER, VOLWAVE, VOLCD, VOLTV, VOLMIC, VIDEO, USERROOM, wakeon,remotevol, remotemic, remoteecho, remoteCode, promoSongPlay, promoDirectory, royaltyLock, systemLock) '+
                        ' VALUES (:IDROOM, :ROOMNAME, :IPADD, ''2001-01-01'', ''01:01:01'', :VOLMASTER, :VOLWAVE, :VOLCD,  :VOLTV, :VOLMIC, :VIDEO, :USERROOM, :wakeon, :REMOTEVOL, :REMOTEMIC, :REMOTEECHO, FLOOR(100000 + (RAND() * 900000)), ' +
                        ' :promoSongPlay, :promoDirectory, :royaltyLock, :systemLock) ' ;
    QMyUpdate.ParamByName('IDROOM').AsInteger := pvid;
    QMyUpdate.ParamByName('ROOMNAME').AsString := edtnamaroom.Text;
    QMyUpdate.ParamByName('IPADD').AsString := edtipaddress.Text;
    QMyUpdate.ParamByName('VOLMASTER').AsInteger := spnmaster.Value;
    QMyUpdate.ParamByName('VOLWAVE').AsInteger := spnwave.Value;
    QMyUpdate.ParamByName('VOLCD').AsInteger := spncd.Value;
    QMyUpdate.ParamByName('VOLMIC').AsInteger := spnmic.Value;
    QMyUpdate.ParamByName('VOLTV').AsInteger := spntv.Value;
    QMyUpdate.ParamByName('VIDEO').AsInteger := pvvideo;
    QMyUpdate.ParamByName('USERROOM').AsString := 'RDS';
    QMyUpdate.ParamByName('wakeon').AsString := Edit1.Text;
    QMyUpdate.ParamByName('REMOTEVOL').AsInteger := spnvolume.Value;
    QMyUpdate.ParamByName('REMOTEMIC').AsInteger := spnremotemic.Value ;
    QMyUpdate.ParamByName('REMOTEECHO').AsInteger := spnecho.Value;
    QMyUpdate.ParamByName('promoSongPlay').AsInteger := 3;
    QMyUpdate.ParamByName('promoDirectory').AsString := 'Room';
    QMyUpdate.ParamByName('royaltyLock').AsInteger := 0;
    QMyUpdate.ParamByName('systemLock').AsInteger := 0;
    QMyUpdate.ExecSQL;
  end;


//Update

  if pvedit then
  begin
    query.Active := False;
    query.SQL.Text := ' UPDATE  troom ' +
                        ' SET namaroom = :namaroom ' +
                        ', ipaddress = :ipaddress  ' +
                        ', jual =:jual  ' +
                        ', idkategori = :idkategori   ' +
                        ', admin_memo =  :admin_memo   ' +
                        ' WHERE (id = '+ IntToStr(cekIDroom) + ')';
    query.paramByName('namaroom').AsString := edtnamaroom.Text;
    query.paramByName('ipaddress').AsString := edtipaddress.Text;

    if chkjual.Checked then
      query.ParamByName('jual').AsString := '1'
    else
      query.ParamByName('jual').AsString := '0';

    query.paramByName('idkategori').AsInteger := pvidkategori;
    query.paramByName('admin_memo').AsString := edtadminmemo.Text;
    query.ExecSQL;

    QMyUpdate.Active := False;
    QMyUpdate.SQL.Text := ' UPDATE  room ' +
                        ' SET ROOMNAME = :ROOMNAME ' +
                        ', IPADD = :IPADD  ' +
                        ', VOLMASTER =:VOLMASTER  ' +
                        ', VOLWAVE = :VOLWAVE   ' +
                        ', VOLMIC =  :VOLMIC   ' +
                        ', VOLCD = :VOLCD ' +
                        ', VOLTV = :VOLTV ' +
                        ', VIDEO = :VIDEO ' +
                        ', wakeon = :wakeon ' +
                        ', remotevol = :REMOTEVOL ' +
                        ',  remotemic = :REMOTEMIC ' +
                        ', remoteecho = :REMOTEECHO ' +
                        ' WHERE (IDROOM= '+ IntToStr(cekIDroom) + ');';
    QMyUpdate.paramByName('ROOMNAME').AsString := edtnamaroom.Text;
    QMyUpdate.paramByName('IPADD').AsString := edtipaddress.Text;
    QMyUpdate.paramByName('VOLMASTER').AsInteger := spnmaster.Value;
    QMyUpdate.paramByName('VOLWAVE').AsInteger := spnwave.Value;
    QMyUpdate.paramByName('VOLMIC').AsInteger := spnmic.Value ;
    QMyUpdate.paramByName('VOLCD').AsInteger := spncd.Value;
    QMyUpdate.paramByName('VOLTV').AsInteger := spncd.Value;
    QMyUpdate.paramByName('VIDEO').AsInteger := pvvideo;
    QMyUpdate.paramByName('wakeon').AsString  := Edit1.Text;
    QMyUpdate.ParamByName('REMOTEVOL').AsInteger := spnvolume.Value;
    QMyUpdate.ParamByName('REMOTEMIC').AsInteger := spnremotemic.Value ;
    QMyUpdate.ParamByName('REMOTEECHO').AsInteger := spnecho.Value;
    QMyUpdate.ExecSQL;
  end;

  QmyRoom.Active := False;
  QmyRoom.Active := True;

  Qroom.Active := False;
  Qroom.Active := True;

  Qroom.Locate('id', cekIDroom, []);

  tutup;
  larang;
  pvtambah := False;
  pvedit := False;
end;

procedure Tfroom.TKN13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfroom.DBLkategoriClick(Sender: TObject);
begin
  if not(pvtambah) then begin
   exit;
  end;

end;

procedure Tfroom.DBLbarClick(Sender: TObject);
begin
  IF NOT pvtambah THEN EXIT
end;

procedure Tfroom.DBLkategoriKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF NOT pvtambah THEN EXIT;
end;

procedure Tfroom.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure Tfroom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbroom := False;
end;

procedure Tfroom.btneditClick(Sender: TObject);
begin
  if Qroom.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Ada', mtError, [mbOK], 0);
    Exit;
  end;

  buka;
  boleh;
  pvedit := True;
  pvtambah := False;
  cekIDroom := Qroom.FieldByName('id').Value;
  ceknamaroom := Qroom.FieldByName('namaroom').Value;
end;

procedure Tfroom.cmbkategoriChange(Sender: TObject);
begin


  Qkategori.Locate('kategori',cmbkategori.Text, [loCaseInsensitive,loPartialKey]);
  pvidkategori := Qkategori.fieldByName('id').AsInteger;

end;

procedure Tfroom.btnkeluarClick(Sender: TObject);
begin
  froom.Close;
end;

procedure Tfroom.QroomAfterScroll(DataSet: TDataSet);
begin
  if VarIsNull(QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'IDROOM')) = False then
  begin
    edtnamaroom.Text := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'ROOMNAME');
    edtipaddress.Text := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'IPADD');
    spnmaster.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VOLMASTER');
    spnwave.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VOLWAVE');
    spnmic.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VOLMIC');
    spntv.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VOLTV');
    spncd.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VOLCD');
    edtadminmemo.Text := Qroom.FieldByName('admin_memo').Value;
    Edit1.Text := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'wakeon');
    spnvolume.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'remotevol');
    spnremotemic.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'remotemic');
    spnecho.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'remoteecho');

    cmbkategori.ItemIndex := cmbkategori.Items.IndexOf(Qroom.FieldByName('kategori').Value);

    if QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VIDEO')=4 then cmbvideo.ItemIndex := 0 else cmbvideo.ItemIndex := 1;
    if Qroom.FieldByName('jual').Value = '0' then chkjual.Checked := False else chkjual.Checked := True;
  end;
end;

procedure Tfroom.btnhapusClick(Sender: TObject);
begin
   if Qroom.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Ada', mtError, [mbOK], 0);
    Exit;
  end;
   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
    begin

      query.Active := False;
      query.SQL.Text := ' DELETE FROM troom where ' +
                       ' (id= ' + QuotedStr(Qroom.FieldByName('id').AsString) + ')';
      query.ExecSQL;

      QMyUpdate.Active := False ;
      QMyUpdate.SQL.Text := ' DELETE FROM room where ' +
                       ' (idroom= ' + QuotedStr(Qroom.FieldByName('id').AsString) + ')';
      QMyUpdate.ExecSQL;
    end;

  QmyRoom.Active := False;
  QmyRoom.Active := True;

  Qroom.Active := False;
  Qroom.Active := True;

end;

procedure Tfroom.edtnamaroomKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfroom.cmbkategoriEnter(Sender: TObject);
begin
  Qkategori.Active := False;
  Qkategori.SQL.Text := ' Select id, kategori From tkategoriroom order by harga';
  Qkategori.Active := True;
  cmbkategori.Clear;
  Qkategori.First;
  while not (Qkategori.Eof) do
  begin
    cmbkategori.Items.Add(Qkategori.fieldByName('kategori').AsString);
    Qkategori.Next;
  end;
  cmbkategori.ItemIndex := 0;
end;

procedure Tfroom.btnCocokClick(Sender: TObject);
begin
  Qroom.Active := True;
  QmyRoom.Active := True;

  QMyUpdate.SQL.Text := 'Delete from ROOM';
  QMyUpdate.ExecSQL;

  Qroom.First;

  while not(Qroom.Eof) do
  begin
    QMyUpdate.Active := False;
    QMyUpdate.SQL.Text := ' INSERT INTO room ' +
                        ' (IDROOM, ROOMNAME, IPADD, ORDDATE, ORDTIME, VOLMASTER, VOLWAVE, VOLCD, VOLTV, VOLMIC, VIDEO, USERROOM,wakeon,remotevol, remotemic, remoteecho, remoteCode, promoSongPlay, promoDirectory, royaltyLock, systemLock) '+
                        ' VALUES (:IDROOM, :ROOMNAME, :IPADD, ''2000-01-01'', ''01:01:01'', :VOLMASTER, :VOLWAVE, :VOLCD,  :VOLTV, :VOLMIC, :VIDEO, :USERROOM, :wakeon, :REMOTEVOL, :REMOTEMIC, :REMOTEECHO, :remoteCode, :promoSongPlay, :promoDirectory, :royaltyLock, :systemLock) ' ;
    QMyUpdate.ParamByName('IDROOM').AsInteger := Qroom.FieldByName('id').AsInteger;
    QMyUpdate.ParamByName('ROOMNAME').AsString := Qroom.FieldByName('namaroom').AsString;
    QMyUpdate.ParamByName('IPADD').AsString := VarToStr(QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'IPADD'));
    QMyUpdate.ParamByName('VOLMASTER').AsInteger := 70;
    QMyUpdate.ParamByName('VOLWAVE').AsInteger := 100;
    QMyUpdate.ParamByName('VOLCD').AsInteger := 25;
    QMyUpdate.ParamByName('VOLMIC').AsInteger := 25;
    QMyUpdate.ParamByName('VOLTV').AsInteger := 25;
    QMyUpdate.ParamByName('VIDEO').AsInteger := 4;
    QMyUpdate.ParamByName('USERROOM').AsString := 'RDS';
    QMyUpdate.ParamByName('wakeon').AsString  := '0';
    QMyUpdate.ParamByName('REMOTEVOL').AsInteger := 0;
    QMyUpdate.ParamByName('REMOTEMIC').AsInteger := 0;
    QMyUpdate.ParamByName('REMOTEECHO').AsInteger := 0;
    QMyUpdate.ParamByName('remoteCode').AsInteger := 100000 + Qroom.FieldByName('id').AsInteger;
    QMyUpdate.ParamByName('promoSongPlay').AsInteger := 3;
    QMyUpdate.ParamByName('promoDirectory').AsString := 'Room';
    if Qroom.FieldByName('royaltyLock').AsBoolean then
    begin
      QMyUpdate.ParamByName('royaltyLock').AsInteger := 1;
    end
    else
    begin
      QMyUpdate.ParamByName('royaltyLock').AsInteger := 0;
    end;
    if Qroom.FieldByName('systemLock').AsBoolean then
    begin
      QMyUpdate.ParamByName('systemLock').AsInteger := 1;
    end
    else
    begin
      QMyUpdate.ParamByName('systemLock').AsInteger := 0;
    end;
    QMyUpdate.ExecSQL;
    Qroom.Next;
  end;
  Close;
end;

procedure Tfroom.QroomCalcFields(DataSet: TDataSet);
begin
  if VarIsNull(QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'IDROOM')) = False then
  begin
    QroomLIPaddress.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'IPADD');
    QroomLvolmastes.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VOLMASTER');
    QroomLvolwave.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VOLWAVE');
    QroomLvolmic.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VOLMIC');
    QroomLvoltv.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VOLTV');
    QroomLvolCD.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VOLCD');
    QroomLremotevolume.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'remotevol');
    QroomLremotemic.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'remotemic');
    QroomLecho.Value := QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'remoteecho');

    if Qroom.FieldByName('jual').Value = '0' then
    begin
      QroomLjual.Value := False;
    end
    else
    begin
      QroomLjual.Value := True;
    end;

    if QmyRoom.Lookup('IDROOM', Qroom.FieldByName('id').Value, 'VIDEO') = 4 then
    begin
      QroomCalVideo.Value := 'PAL';
    end
    else
    begin
      QroomCalVideo.Value := 'NTSC';
    end;
  end;
end;

end.

