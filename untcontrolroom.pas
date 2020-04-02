unit untcontrolroom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, DB,
  DBTables, ExtCtrls, bsSkinCtrls, bsMessages, BusinessSkinForm, Grids,
  DBGrids, iniFiles, AEDIT;

type
  TFcontrolroom = class(TForm)
    btnbuka: TbsSkinButton;
    btnhajar: TbsSkinButton;
    btndesktop: TbsSkinButton;
    btnshutdown: TbsSkinButton;
    btntutup: TbsSkinButton;
    btnrestart: TbsSkinButton;
    Panel1: TPanel;
    chkstatus: TCheckBox;
    chkroom: TCheckBox;
    cmbstatus: TComboBox;
    cmbroom: TComboBox;
    Qupdate: TZQuery;
    Qroom: TZQuery;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinXFormButton1: TbsSkinXFormButton;
    DBGrid1: TDBGrid;
    btncari: TbsSkinXFormButton;
    myQcari: TZQuery;
    DataSource1: TDataSource;
    myQcariidroom: TSmallintField;
    myQcariroomname: TStringField;
    myQcaristatus: TStringField;
    myQcariapa: TStringField;
    myQcaricalStatus: TStringField;
    edtServer: TAEdit;
    QmsUpdate: TZQuery;
    bsSkinXFormButton2: TbsSkinXFormButton;
    myQcariipadd: TStringField;
    myQcariwakeon: TStringField;
    Qupdate2: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnbukaClick(Sender: TObject);
    procedure chkroomClick(Sender: TObject);
    procedure btntutupClick(Sender: TObject);
    procedure btnhajarClick(Sender: TObject);
    procedure btndesktopClick(Sender: TObject);
    procedure btnrestartClick(Sender: TObject);
    procedure btnshutdownClick(Sender: TObject);
    procedure chkstatusClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bsSkinXFormButton1Click(Sender: TObject);
    procedure btncariClick(Sender: TObject);
    procedure myQcariCalcFields(DataSet: TDataSet);
    procedure cmbroomClick(Sender: TObject);
    procedure cmbstatusClick(Sender: TObject);
    procedure bsSkinXFormButton2Click(Sender: TObject);
  private
    pvsql, pvsql1, pvbuka   : string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcontrolroom: TFcontrolroom;

implementation
  uses unit1, unit3,ShellAPI,StrUtils;
{$R *.dfm}

procedure TFcontrolroom.FormCreate(Sender: TObject);
var NamaFile : TFileName;
    FileIni  : TIniFile;
begin

  Qroom.Connection := modul.Database1;
  QmsUpdate.Connection := modul.Database1;

  NamaFile := ExtractFilePath (Application.ExeName)+'..\..\setting-pos.ini';
  FileIni  := TIniFile.Create(NamaFile);
  edtServer.Text := FileIni.ReadString('Database', 'MySql','10.0.0.1');

  FrmInduk.pbcontrolroom := True;
  chkroomClick(sender);
  chkstatusClick(sender);
  cmbroom.Clear;
  Qroom.Active := False;
  Qroom.SQL.Text := ' SELECT namaroom from troom ' +
                    ' order by namaroom ';
  Qroom.Active := True;

  Qroom.First;
  while not (Qroom.Eof) do
  begin
    cmbroom.Items.Add(Qroom.fieldByName('namaroom').AsString) ;
    Qroom.Next;
  end;

  cmbroom.ItemIndex :=0;

  myQcari.Active := True;
end;

procedure TFcontrolroom.btnbukaClick(Sender: TObject);
var pesan, pvmssql : string;
begin
  if not(myQcari.Active) then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;
  if myQcari.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;

  pesan := '';
  if chkroom.Checked then
    pesan := pesan + cmbroom.Text;
  if chkstatus.Checked then
    pesan := pesan + ' ' + cmbstatus.Text;

  if not(bsSkinMessage1.MessageDlg('        ' + pesan + ' Active         ', mtConfirmation,mbOKCancel, 0) = mrOk) then
  begin
    exit;
  end;

  Qupdate.Active := False;
  pvmssql := ' UPDATE  Troom   SET status = 1  WHERE  ID is not NULL';
  pvsql := ' UPDATE  room   SET APA = ' + QuotedStr('buka') + ' WHERE  IDROOM is not NULL';

  if chkroom.Checked then
  begin
      pvsql := pvsql +  ' AND ROOMNAME= ' + QuotedStr(cmbroom.Text);
      pvmssql := pvmssql +  ' AND namaroom = ' + QuotedStr(cmbroom.Text);
  end;

  if chkstatus.Checked then
  begin
    pvsql := pvsql +  ' AND STATUS = '+ QuotedStr(cmbstatus.Text) ;
    if cmbstatus.ItemIndex = 0 then
      pvmssql := pvmssql +  ' AND chekin = 1 '
    else
       pvmssql := pvmssql +  ' AND chekin = 0 '
  end;

  QmsUpdate.SQL.Text := pvmssql;
  QmsUpdate.ExecSQL;
  Qupdate.SQL.Text := pvsql;
  Qupdate.ExecSQL;

  if modul.My2.Connected = True then
  begin
    Qupdate2.SQL.Text := pvsql;
    Qupdate2.ExecSQL;
  end;

  myQcari.First;
  while myQcari.Eof = false do
  begin
    QmsUpdate.SQL.Text := 'insert tControlRoom (datetime, login, roomName, apa) values (now(), ' + QuotedStr(FrmInduk.pbidkasir) + ', ' + QuotedStr(myQcari.Fields.FieldByName('roomname').AsString) + ', ' + QuotedStr(btnbuka.Caption) + ')';
    QmsUpdate.ExecSQL;
    myQcari.Next;
  end;

  myQcari.Active := False;
  myQcari.Active := True;
end;

procedure TFcontrolroom.chkroomClick(Sender: TObject);
begin
  myQcari.Active := False;

  if chkroom.Checked then
    cmbroom.Enabled := True
  else
    cmbroom.Enabled := False;
 
end;

procedure TFcontrolroom.btntutupClick(Sender: TObject);
var pesan, pvmssql : string;
begin
  if not(myQcari.Active) then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;
  if myQcari.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;

  pesan := '';
  if chkroom.Checked then
    pesan := pesan + cmbroom.Text;
  if chkstatus.Checked then
    pesan := pesan + ' ' + cmbstatus.Text;

  if not(bsSkinMessage1.MessageDlg('        ' + pesan + ' StandBy         ', mtConfirmation,mbOKCancel, 0) = mrOk) then
  begin
    exit;
  end;

  Qupdate.Active := False;
  pvsql := ' UPDATE  room   SET APA = ' + QuotedStr('tutup') + ' WHERE  IDROOM is not NULL';
  pvmssql := ' UPDATE  Troom   SET status = 0  WHERE  ID is not NULL';
  if chkroom.Checked then
  begin
      pvsql := pvsql +  ' AND ROOMNAME= ' + QuotedStr(cmbroom.Text);
      pvmssql := pvmssql +  ' AND namaroom = ' + QuotedStr(cmbroom.Text);
  end;

  if chkstatus.Checked then
  begin
    pvsql := pvsql +  ' AND STATUS= '+ QuotedStr(cmbstatus.Text) ;
    if cmbstatus.ItemIndex = 0 then
      pvmssql := pvmssql +  ' AND chekin = 1 '
    else
       pvmssql := pvmssql +  ' AND chekin = 0 '
  end;

  QmsUpdate.SQL.Text := pvmssql;
  QmsUpdate.ExecSQL;
  Qupdate.SQL.Text := pvsql;
  Qupdate.ExecSQL;

  if modul.My2.Connected = True then
  begin
    Qupdate2.SQL.Text := pvsql;
    Qupdate2.ExecSQL;
  end;

  myQcari.First;
  while myQcari.Eof = false do
  begin
    QmsUpdate.SQL.Text := 'insert tControlRoom (datetime, login, roomName, apa) values (now(), ' + QuotedStr(FrmInduk.pbidkasir) + ', ' + QuotedStr(myQcari.Fields.FieldByName('roomname').AsString) + ', ' + QuotedStr(btntutup.Caption) + ')';
    QmsUpdate.ExecSQL;
    myQcari.Next;
  end;

  myQcari.Active := False;
  myQcari.Active := True;
end;

procedure TFcontrolroom.btnhajarClick(Sender: TObject);
var pesan : string;
begin
  if not(myQcari.Active) then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;
  if myQcari.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;

  pesan := '';
  if chkroom.Checked then
    pesan := pesan + cmbroom.Text;
  if chkstatus.Checked then
    pesan := pesan + ' ' + cmbstatus.Text;

  if not(bsSkinMessage1.MessageDlg('        ' + pesan + ' Hajar         ', mtConfirmation,mbOKCancel, 0) = mrOk) then
  begin
    exit;
  end;
  
  Qupdate.Active := False;
  pvsql := ' UPDATE  room   SET APA = ' + QuotedStr('hajar') + ' WHERE  IDROOM is not NULL';
  if chkroom.Checked then
  begin
      pvsql := pvsql +  ' AND ROOMNAME= ' + QuotedStr(cmbroom.Text)
  end;

  if chkstatus.Checked then
  begin
    pvsql := pvsql +  ' AND STATUS= '+ QuotedStr(cmbstatus.Text) ;
  end;

  Qupdate.SQL.Text := pvsql;
  Qupdate.ExecSQL;

  if modul.My2.Connected = True then
  begin
    Qupdate2.SQL.Text := pvsql;
    Qupdate2.ExecSQL;
  end;
  
  myQcari.Active := False;
  myQcari.Active := True;
end;

procedure TFcontrolroom.btndesktopClick(Sender: TObject);
var pesan : string;
begin
  if not(myQcari.Active) then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;
  if myQcari.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;

  pesan := '';
  if chkroom.Checked then
    pesan := pesan + cmbroom.Text;
  if chkstatus.Checked then
    pesan := pesan + ' ' + cmbstatus.Text;

  if not(bsSkinMessage1.MessageDlg('        ' + pesan + ' Desktop         ', mtConfirmation,mbOKCancel, 0) = mrOk) then
  begin
    exit;
  end;
  
    Qupdate.Active := False;
  pvsql := ' UPDATE  room   SET APA = ' + QuotedStr('T') + ' WHERE  IDROOM is not NULL';
  if chkroom.Checked then
  begin
      pvsql := pvsql +  ' AND ROOMNAME= ' + QuotedStr(cmbroom.Text)
  end;

  if chkstatus.Checked then
  begin
    pvsql := pvsql +  ' AND STATUS= '+ QuotedStr(cmbstatus.Text) ;
  end;

  Qupdate.SQL.Text := pvsql;
  Qupdate.ExecSQL;
  if modul.My2.Connected = True then
  begin
    Qupdate2.SQL.Text := pvsql;
    Qupdate2.ExecSQL;
  end;

  myQcari.Active := False;
  myQcari.Active := True;
end;

procedure TFcontrolroom.btnrestartClick(Sender: TObject);
var pesan, pvmssql : string;
begin
  if not(myQcari.Active) then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;
  if myQcari.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;

  pesan := '';
  if chkroom.Checked then
    pesan := pesan + cmbroom.Text;
  if chkstatus.Checked then
    pesan := pesan + ' ' + cmbstatus.Text;

  if not(bsSkinMessage1.MessageDlg('        ' + pesan + ' Restart         ', mtConfirmation,mbOKCancel, 0) = mrOk) then
  begin
    exit;
  end;

  Qupdate.Active := False;
  pvmssql := ' UPDATE  Troom   SET status = 2  WHERE  ID is not NULL';
  pvsql := ' UPDATE  room   SET APA = ' + QuotedStr('R') + ' WHERE  IDROOM is not NULL';
  if chkroom.Checked then
  begin
      pvsql := pvsql +  ' AND ROOMNAME= ' + QuotedStr(cmbroom.Text);
      pvmssql := pvmssql +  ' AND namaroom = ' + QuotedStr(cmbroom.Text);
  end;

  if chkstatus.Checked then
  begin
    pvsql := pvsql +  ' AND STATUS= '+ QuotedStr(cmbstatus.Text) ;
    if cmbstatus.ItemIndex = 0 then
      pvmssql := pvmssql +  ' AND chekin = 1 '
    else
       pvmssql := pvmssql +  ' AND chekin = 0 '
  end;

  QmsUpdate.SQL.Text := pvmssql;
  QmsUpdate.ExecSQL;
  Qupdate.SQL.Text := pvsql;
  Qupdate.ExecSQL;

  if modul.My2.Connected = True then
  begin
    Qupdate2.SQL.Text := pvsql;
    Qupdate2.ExecSQL;
  end;

  myQcari.Active := False;
  myQcari.Active := True;
end;

procedure TFcontrolroom.btnshutdownClick(Sender: TObject);
var pesan, pvmssql : string;
begin
  if not(myQcari.Active) then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;
  if myQcari.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;

  pesan := '';
  if chkroom.Checked then
    pesan := pesan + cmbroom.Text;
  if chkstatus.Checked then
    pesan := pesan + ' ' + cmbstatus.Text;

  if not(bsSkinMessage1.MessageDlg('        ' + pesan + ' Shut Down         ', mtConfirmation,mbOKCancel, 0) = mrOk) then
  begin
    exit;
  end;

  Qupdate.Active := False;
  pvmssql := ' UPDATE  Troom   SET status = 3  WHERE  ID is not NULL';
  pvsql := ' UPDATE  room   SET APA = ' + QuotedStr('S') + ' WHERE  IDROOM is not NULL';
  if chkroom.Checked then
  begin
      pvsql := pvsql +  ' AND ROOMNAME= ' + QuotedStr(cmbroom.Text);
      pvmssql := pvmssql +  ' AND namaroom = ' + QuotedStr(cmbroom.Text);
  end;

  if chkstatus.Checked then
  begin
    pvsql := pvsql +  ' AND STATUS= '+ QuotedStr(cmbstatus.Text) ;
    if cmbstatus.ItemIndex = 0 then
      pvmssql := pvmssql +  ' AND chekin = 1 '
    else
       pvmssql := pvmssql +  ' AND chekin = 0 '
  end;

  QmsUpdate.SQL.Text := pvmssql;
  QmsUpdate.ExecSQL;
  Qupdate.SQL.Text := pvsql;
  Qupdate.ExecSQL;

  if modul.My2.Connected = True then
  begin
    Qupdate2.SQL.Text := pvsql;
    Qupdate2.ExecSQL;
  end;

  myQcari.Active := False;
  myQcari.Active := True;
end;

procedure TFcontrolroom.chkstatusClick(Sender: TObject);
begin
  myQcari.Active := False;
  
  if chkstatus.Checked then
    cmbstatus.Enabled := True
  else
    cmbstatus.Enabled := False;
end;

procedure TFcontrolroom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.pbcontrolroom := False;
  Action := caFree;
end;

procedure TFcontrolroom.bsSkinXFormButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFcontrolroom.btncariClick(Sender: TObject);
var pvsql : string;
begin
  myQcari.Active := False;
  pvsql := ' select idroom, roomname, status, apa, ipadd, wakeon from room WHERE  1=1';

  if chkroom.Checked then
  begin
      pvsql := pvsql +  ' AND ROOMNAME= ' + QuotedStr(cmbroom.Text)
  end;

  if chkstatus.Checked then
  begin
    pvsql := pvsql +  ' AND STATUS= '+ QuotedStr(cmbstatus.Text) ;
  end;
  pvsql := pvsql + ' ORDER BY roomname';

  myQcari.SQL.Text := pvsql;
  myQcari.Active := True;
end;

procedure TFcontrolroom.myQcariCalcFields(DataSet: TDataSet);
begin
  if myQcariapa.Value = 'buka' then myQcaricalStatus.Value := 'Active';
  if myQcariapa.Value = 'tutup' then myQcaricalStatus.Value := 'Standby';
  if myQcariapa.Value = 'T' then myQcaricalStatus.Value := 'Desktop';
  if myQcariapa.Value = 'S' then myQcaricalStatus.Value := 'Shut Down';
  if myQcariapa.Value = 'R' then myQcaricalStatus.Value := 'Restart';
  if myQcariapa.Value = 'hajar' then myQcaricalStatus.Value := 'Hajar';
  if myQcariapa.Value = 'welco' then myQcaricalStatus.Value := 'Welcome';
end;

procedure TFcontrolroom.cmbroomClick(Sender: TObject);
begin
  myQcari.Active := False;
end;

procedure TFcontrolroom.cmbstatusClick(Sender: TObject);
begin
  myQcari.Active := False;
end;

procedure TFcontrolroom.bsSkinXFormButton2Click(Sender: TObject);
var pesan, pvmssql, k : string;
wk:integer;
begin

  if not(myQcari.Active) then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;
  if myQcari.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('      Tidak ada yang sesuai kriteria       ', mtError,[mbOK], 0);
    exit;
  end;

  pesan := '';
  if chkroom.Checked then
    pesan := pesan + cmbroom.Text;
  if chkstatus.Checked then
    pesan := pesan + ' ' + cmbstatus.Text;

  if not(bsSkinMessage1.MessageDlg('        ' + pesan + ' Hidup & StandBy         ', mtConfirmation,mbOKCancel, 0) = mrOk) then
  begin
    exit;
  end;

  Qupdate.Active := False;
  pvsql := ' UPDATE  room   SET APA = ' + QuotedStr('tutup') + ' WHERE  IDROOM is not NULL';
  pvmssql := ' UPDATE  Troom   SET status = 0  WHERE  ID is not NULL';

  while not(myQcari.eof)do
  begin
  Action.Free;
   if  bsSkinMessage1.MessageDlg('Hidupkan Room '+ myQcariroomname.AsString +' ?', mtConfirmation,[mbYes, mbNo] ,0) = mrYes then
    begin
    k:= myQcariwakeon.AsString;
    WinExec(PChar('c:\wolcmd '+ k +' 255.255.255.255 255.255.255.255'), SW_HIDE );
    end;
   myQcari.Next;
  end;



  if chkroom.Checked then
  begin
      pvsql := pvsql +  ' AND ROOMNAME= ' + QuotedStr(cmbroom.Text);
      pvmssql := pvmssql +  ' AND namaroom = ' + QuotedStr(cmbroom.Text);

    k:= myQcariwakeon.AsString;

    WinExec(PChar('c:\wolcmd '+ k +' 255.255.255.255 255.255.255.255'), SW_HIDE );
      

  end;

  if chkstatus.Checked then
  begin
    pvsql := pvsql +  ' AND STATUS= '+ QuotedStr(cmbstatus.Text) ;
    if cmbstatus.ItemIndex = 0 then
      pvmssql := pvmssql +  ' AND chekin = 1 '
    else
       pvmssql := pvmssql +  ' AND chekin = 0 '
  end;

  QmsUpdate.SQL.Text := pvmssql;
  QmsUpdate.ExecSQL;
  Qupdate.SQL.Text := pvsql;
  Qupdate.ExecSQL;
       if modul.My2.Connected = True then
       begin
          Qupdate2.SQL.Text := pvsql;
          Qupdate2.ExecSQL;
       end;
  myQcari.Active := False;
  myQcari.Active := True;
  
end;

end.
