unit untUpdateLagu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BusinessSkinForm, bsMessages, bsSkinCtrls, StdCtrls, Mask,
  bsSkinBoxCtrls, DB, ADODB,
  Grids, DBGrids, TntLXAdoDataSet, TntDBGrids, TntStdCtrls, TntDB;

type
  TFsongList1 = class(TForm)
    OpenDialog1: TOpenDialog;
    bsSkinMessage1: TbsSkinMessage;
    btnUpdate: TbsSkinXFormButton;
    btnFile: TbsSkinXFormButton;
    Label1: TLabel;
    btnExit: TbsSkinXFormButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    edtPath: TbsSkinEdit;
    bsSkinGauge1: TbsSkinGauge;
    DataSource1: TDataSource;
    Qmaster: TTntADOQueryLX;
    QmasterIDMUSIC: TIntegerField;
    QmasterVCD: TTntWideStringField;
    QmasterCODE: TIntegerField;
    QmasterTITLE: TTntWideStringField;
    QmasterTITLE2: TTntWideStringField;
    QmasterSINGER: TTntWideStringField;
    QmasterSINGER2: TTntWideStringField;
    QmasterPATH: TTntWideStringField;
    QmasterANALOG: TTntWideStringField;
    QmasterTYPE: TIntegerField;
    QmasterFLAG: TTntWideStringField;
    QmasterVOL: TIntegerField;
    QmasterHITS: TWordField;
    QmasterNEW: TWordField;
    QmasterPOPULER: TIntegerField;
    edtServer: TbsSkinEdit;
    Label2: TLabel;
    AdoDB1: TADOConnection;
    AdoDBacces: TADOConnection;
    QmasterTITLE4: TTntWideStringField;
    QmasterSINGER4: TTntWideStringField;
    Qstruktur6: TTntADOQueryLX;
    IntegerField1: TIntegerField;
    TntWideStringField1: TTntWideStringField;
    IntegerField2: TIntegerField;
    TntWideStringField2: TTntWideStringField;
    TntWideStringField3: TTntWideStringField;
    TntWideStringField4: TTntWideStringField;
    TntWideStringField5: TTntWideStringField;
    TntWideStringField6: TTntWideStringField;
    TntWideStringField7: TTntWideStringField;
    IntegerField3: TIntegerField;
    TntWideStringField8: TTntWideStringField;
    IntegerField4: TIntegerField;
    WordField1: TWordField;
    WordField2: TWordField;
    IntegerField5: TIntegerField;
    TntWideStringField9: TTntWideStringField;
    TntWideStringField10: TTntWideStringField;
    QDropMasters: TTntADOQueryLX;
    IntegerField6: TIntegerField;
    TntWideStringField11: TTntWideStringField;
    IntegerField7: TIntegerField;
    TntWideStringField12: TTntWideStringField;
    TntWideStringField13: TTntWideStringField;
    TntWideStringField14: TTntWideStringField;
    TntWideStringField15: TTntWideStringField;
    TntWideStringField16: TTntWideStringField;
    TntWideStringField17: TTntWideStringField;
    IntegerField8: TIntegerField;
    TntWideStringField18: TTntWideStringField;
    IntegerField9: TIntegerField;
    WordField3: TWordField;
    WordField4: TWordField;
    IntegerField10: TIntegerField;
    TntWideStringField19: TTntWideStringField;
    TntWideStringField20: TTntWideStringField;
    procedure KonekDataBase(alamat: String);
    procedure btnFileClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure TmyMasterFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
    function getAbbreviation(text: string) : string;
    function Split(Str: string) : TStrings;
  public
    { Public declarations }
  end;

var
  FsongList1: TFsongList1;

implementation

uses Math, Unit3, Unit1;

{$R *.dfm}

procedure TFsongList1.KonekDataBase(alamat: String);
var vmysql, vdatabase : string;
begin
  vdatabase := 'karaoke';
  vmysql    := alamat;
  with AdoDB1 do
  begin
    Connected := False;

    ConnectionString := '"Provider=MSDASQL.1;Password=' + modul.keyMySQL + ';User ID=karaoke;Extended Properties="DRIVER={MySQL ODBC 5.1 Driver};UID=karaoke;PWD=' + modul.keyMySQL + ';'+
                        'SERVER='+ vmysql + '; '+
                        'DATABASE=' + vdatabase +
                        ';OPTION=18475;"';

    Connected := True;
  end;
end;

procedure TFsongList1.btnFileClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    edtpath.Text := OpenDialog1.FileName;
end;

procedure TFsongList1.btnUpdateClick(Sender: TObject);
var
    qupdate, qAd : TTntADOQueryLX;
    title3, singer3, title4, singer4, title6, singer6, title7, singer7 : String;
begin
  if edtServer.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('         IP Server tidak lengkap   !!!          ', mtError,[mbOK], 0);
    exit;
  end;

  if edtpath.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('         File tidak lengkap   !!!          ', mtError,[mbOK], 0);
    exit;
  end;

  KonekDataBase(edtServer.Text);

  AdoDBacces.Connected := False;
  AdoDBacces.ConnectionString :=
        ' Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source= ' +
          edtpath.Text +
        ' ;Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=""; '+
        ' Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1; '+
        ' Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False; '+
        ' Jet OLEDB:Don' + ''''+ 't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False ';
  try
    AdoDBacces.Connected := True;
  except
     bsSkinMessage1.MessageDlg('    File salah   !!!    ', mtError,[mbOK], 0);
     edtpath.SetFocus;
     edtpath.SelectAll;
     exit;
  end;

  bsSkinGauge1.Visible := True;
  bsSkinGauge1.Value := 0;
{  //simpan populer
  taMaster.Active := False;
  taMaster.Active := True;
  TmyMaster.Active := False;
  TmyMaster.Active := True;
  TmyMaster.First;
  TmyMaster.Filtered := False;
  TmyMaster.Filtered := True;
  while not(TmyMaster.Eof) do
  begin
    if taMaster.Locate('IDMUSIC', TmyMasterIDMUSIC.Value,[]) then
    begin
      taMaster.Edit;
      taMasterPOPULER.Value := TmyMasterPOPULER.Value;
      bsSkinGauge1.Value := trunc(TmyMaster.RecNo / TmyMaster.RecordCount*100);
      FsongList.Repaint;
      taMaster.Post;
    end;
    TmyMaster.Next;
  end;

  TmyMaster.Filtered := False;
}
{
  QDropMasters.ExecSQL;

  Qstruktur6.CommandText := 'CREATE TABLE `masters` ( `IDMUSIC` int(11) NOT NULL DEFAULT ''0'', `VCD` varchar(255) DEFAULT NULL, `CODE` int(11) unsigned DEFAULT ''0'', `TITLE` varchar(255) DEFAULT NULL, `TITLE2` varchar(255) DEFAULT NULL, ';
  Qstruktur6.CommandText := Qstruktur6.CommandText + '`TITLE3` varchar(150) DEFAULT NULL, `TITLE4` varchar(255) DEFAULT NULL, `TITLE5` varchar(255) DEFAULT NULL, `TITLE6` varchar(255) DEFAULT '''', `TITLE7` varchar(255) DEFAULT '''', `SINGER` varchar(255) DEFAULT NULL, ';
  Qstruktur6.CommandText := Qstruktur6.CommandText + '`SINGER2` varchar(255) DEFAULT NULL, `SINGER3` varchar(150) DEFAULT NULL, `SINGER4` varchar(255) DEFAULT NULL, `SINGER5` varchar(255) DEFAULT NULL, `SINGER6` varchar(255) DEFAULT '''', `SINGER7` varchar(255) DEFAULT '''', ';
  Qstruktur6.CommandText := Qstruktur6.CommandText + '`PATH` varchar(255) DEFAULT NULL, `ANALOG` varchar(255) DEFAULT NULL, `TYPE` int(11) DEFAULT NULL, `FLAG` varchar(255) DEFAULT NULL, `VOL` int(11) DEFAULT NULL, `HITS` tinyint(3) unsigned DEFAULT ''0'', ';
  Qstruktur6.CommandText := Qstruktur6.CommandText + '`NEW` tinyint(3) unsigned DEFAULT ''0'', `POPULER` int(10) unsigned DEFAULT ''0'', `DISC` varchar(255) DEFAULT NULL, `WORD` smallint(11) unsigned DEFAULT NULL, `POP` tinyint(3) unsigned NOT NULL DEFAULT ''0'', ';
  Qstruktur6.CommandText := Qstruktur6.CommandText + '`ROCK` tinyint(3) unsigned NOT NULL DEFAULT ''0'', `JAZZ` tinyint(3) unsigned NOT NULL DEFAULT ''0'', `COUNTRY` tinyint(3) unsigned NOT NULL DEFAULT ''0'', `REGGAE` tinyint(3) unsigned NOT NULL DEFAULT ''0'', ';
  Qstruktur6.CommandText := Qstruktur6.CommandText + '`RNB` tinyint(3) unsigned NOT NULL DEFAULT ''0'', `CHACHA` tinyint(3) unsigned NOT NULL DEFAULT ''0'', PRIMARY KEY (`IDMUSIC`), KEY `idxTitle1` (`TITLE`), KEY `idxSinger1` (`SINGER`), KEY `idxCode` (`CODE`), ';
  Qstruktur6.CommandText := Qstruktur6.CommandText + 'KEY `idxPath` (`PATH`), KEY `idxType` (`TYPE`), KEY `idxTitle` (`TITLE3`,`SINGER3`), KEY `idxKategori` (`TYPE`,`TITLE3`,`SINGER3`), KEY `idxHits` (`HITS`,`TITLE3`,`SINGER3`), KEY `idxHitsKategori` (`TYPE`,`HITS`,`TITLE3`,`SINGER3`), ';
  Qstruktur6.CommandText := Qstruktur6.CommandText + 'KEY `idxNewKategori` (`TYPE`,`NEW`,`IDMUSIC`), KEY `idxNew` (`NEW`,`IDMUSIC`), KEY `idxPopuler` (`POPULER`,`TITLE3`,`SINGER3`), KEY `idxPopulerKategori` (`TYPE`,`POPULER`,`TITLE3`,`SINGER3`), KEY `idxSingerKategori` (`TYPE`,`SINGER3`,`TITLE3`), ';
  Qstruktur6.CommandText := Qstruktur6.CommandText + 'KEY `idxSinger` (`SINGER3`,`TITLE3`), KEY `idxTitle5` (`TITLE5`), KEY `idxSinger5` (`SINGER5`), KEY `idxTitle6` (`TITLE6`), KEY `idxTitle7` (`TITLE7`), KEY `idxSinger6` (`SINGER6`), KEY `idxSinger7` (`SINGER7`)) ';
  Qstruktur6.CommandText := Qstruktur6.CommandText + 'ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC';

  Qstruktur6.ExecSQL;
}
  qupdate := TTntADOQueryLX.Create(Self);
  qupdate.Connection := AdoDB1;
  qupdate.Active := False;
  qupdate.SQL.Text := 'TRUNCATE masters';
  qupdate.ExecSQL;

  Qmaster.Connection := AdoDBacces;
  DataSource1.DataSet := Qmaster;
  Qmaster.Active := True;
  Qmaster.First;
  bsSkinGauge1.Visible := True;
  while not(Qmaster.Eof) do
  begin
    title3 := QmasterTITLE.AsString;
    title3 := StringReplace(title3, ' ', '', [rfReplaceAll]);
    title3 := StringReplace(title3, '''', '', [rfReplaceAll]);
    title3 := StringReplace(title3, ',', '', [rfReplaceAll]);
    title3 := StringReplace(title3, '.', '', [rfReplaceAll]);
    title3 := StringReplace(title3, '-', '', [rfReplaceAll]);

    singer3 := QmasterSINGER.AsString;
    singer3 := StringReplace(singer3, ' ', '', [rfReplaceAll]);
    singer3 := StringReplace(singer3, '''', '', [rfReplaceAll]);
    singer3 := StringReplace(singer3, ',', '', [rfReplaceAll]);
    singer3 := StringReplace(singer3, '.', '', [rfReplaceAll]);
    singer3 := StringReplace(singer3, '-', '', [rfReplaceAll]);

    title4 := QmasterTITLE4.AsString;
    title4 := StringReplace(title4, ' ', '', [rfReplaceAll]);
    title4 := StringReplace(title4, '''', '', [rfReplaceAll]);
    title4 := StringReplace(title4, ',', '', [rfReplaceAll]);
    title4 := StringReplace(title4, '.', '', [rfReplaceAll]);
    title4 := StringReplace(title4, '-', '', [rfReplaceAll]);

    singer4 := QmasterSINGER4.AsString;
    singer4 := StringReplace(singer4, ' ', '', [rfReplaceAll]);
    singer4 := StringReplace(singer4, '''', '', [rfReplaceAll]);
    singer4 := StringReplace(singer4, ',', '', [rfReplaceAll]);
    singer4 := StringReplace(singer4, '.', '', [rfReplaceAll]);
    singer4 := StringReplace(singer4, '-', '', [rfReplaceAll]);

    title6 := getAbbreviation(QmasterTITLE.AsString);
    title7 := getAbbreviation(QmasterTITLE4.AsString);
    singer6 := getAbbreviation(QmasterSINGER.AsString);
    singer7 := getAbbreviation(QmasterSINGER4.AsString);

    qupdate.SQL.Text := 'INSERT INTO masters (IDMUSIC, VCD, CODE, TITLE4, TITLE2, '+
                        '     SINGER, SINGER2, PATH, ANALOG, TYPE, FLAG, VOL, HITS, NEW, ' +
                        '     TITLE5, SINGER3, TITLE, TITLE3, SINGER4, SINGER5, TITLE6, TITLE7, SINGER6, SINGER7) VALUES (' +
                        QmasterIDMUSIC.AsString + ', ' +
                        QuotedStr(QmasterVCD.AsString) + ', ' +
                        QmasterCODE.AsString + ', ' +
                        QuotedStr(QmasterTITLE.AsString) + ', ''' +
                        QmasterTITLE2.AsWideString + ''', ' +
                        QuotedStr(QmasterSINGER.AsString) + ', ''' +
                        QmasterSINGER2.AsWideString + ''', ' +
                        QuotedStr(StringReplace(QmasterPATH.AsString,'\','\\',[rfReplaceAll, rfIgnoreCase]) ) + ', ' +
                        QuotedStr(QmasterANALOG.AsString) + ', ' +
                        QmasterTYPE.AsString + ', ' +
                        QuotedStr(QmasterFLAG.AsString) + ', ' +
                        QmasterVOL.AsString + ', ' +
                        QmasterHITS.AsString + ', ' +
                        QmasterNEW.AsString + ', ' +
                        QuotedStr(title3) + ', ' +
                        QuotedStr(singer3) + ', ' +
                        QuotedStr(QmasterTITLE4.AsString) + ', ' +
                        QuotedStr(title4) + ', ' +
                        QuotedStr(QmasterSINGER4.AsString) + ', ' +
                        QuotedStr(singer4) + ', ' +
                        QuotedStr(title6) + ', ' +
                        QuotedStr(title7) + ', ' +
                        QuotedStr(singer6) + ', ' +
                        QuotedStr(singer7) +
                         ')';
    qupdate.ExecSQL;


    bsSkinGauge1.Value := trunc(Qmaster.RecNo / Qmaster.RecordCount*100);
    Qmaster.Next;
  end;


  qupdate.SQL.Text := 'TRUNCATE promo';
  qupdate.ExecSQL;

  qAd := TTntADOQueryLX.Create(Self);
  qAd.Connection := AdoDBacces;
  qAd.SQL.Text := 'SELECT * FROM Promo';
  qAd.Active := True;
  qAd.First;
  while not(qAd.Eof) do
  begin

    qupdate.SQL.Text := 'INSERT promo (playOrder, IDMUSIC) VALUES (' + qAd.FieldValues['playOrder'] + ', ' + qAd.FieldValues['IDMUSIC'] + ')';
    qupdate.ExecSQL;
    
    qAd.Next;
  end;
  qAd.Close;
  qAd.Free;
  qAd.Destroy;

  bsSkinGauge1.Visible := False;
  qupdate.Free;
end;

procedure TFsongList1.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFsongList1.TmyMasterFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
//  Accept := TmyMasterPOPULER.Value > 10;
end;

function TFsongList1.Split(Str: string) : TStrings;
var
  OutPutList: TStringList;
begin
  OutPutList := TStringList.Create;
  OutPutList.Clear;
  OutPutList.Delimiter := ' ';
  OutPutList.DelimitedText := Str;
  Result := OutPutList;
end;

function TFsongList1.getAbbreviation(text: string) : string;
var
  stringArray: TStrings;
  a : Integer;
begin
  Result := '';
  stringArray := Split(text);
  for a := 0 to stringArray.Count - 1 do
  begin
    if stringArray[a] <> '' then
    begin
      Result := Result + stringArray[a][1];
    end;
  end;
end;

end.
