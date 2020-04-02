unit untUpdateLagu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractRODataset, ZAbstractDataset, ZDataset, DB, ADODB,
  Grids, DBGrids, StdCtrls, bsMessages, ZAbstractTable, bsSkinCtrls,
  BusinessSkinForm, Mask, bsSkinBoxCtrls, bsSkinData, ZConnection;

type
  TFsongList = class(TForm)
    ADOConnection1: TADOConnection;
    taMaster: TADOTable;
    QmyMaster: TZQuery;
    qaMaster: TADOQuery;
    OpenDialog1: TOpenDialog;
    bsSkinMessage1: TbsSkinMessage;
    BtnBackup: TbsSkinXFormButton;
    btnUpdate: TbsSkinXFormButton;
    btnFile: TbsSkinXFormButton;
    Label1: TLabel;
    btnExit: TbsSkinXFormButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    TmyMaster: TZTable;
    edtPath: TbsSkinEdit;
    bsSkinGauge1: TbsSkinGauge;
    taMasterID: TIntegerField;
    taMasterTITLE: TWideStringField;
    taMasterARTIS: TMemoField;
    taMasterSINOPSIS: TMemoField;
    taMasterPATH: TWideStringField;
    taMasterNEGARA: TIntegerField;
    taMasterVOL: TIntegerField;
    taMasterDRAMA: TBooleanField;
    taMasterKOMEDI: TBooleanField;
    taMasterACTION: TBooleanField;
    taMasterHOROR: TBooleanField;
    taMasterKARTUN: TBooleanField;
    bsSkinData2: TbsSkinData;
    bsCompressedStoredSkin2: TbsCompressedStoredSkin;
    TmyMasterid: TIntegerField;
    TmyMastertitle: TStringField;
    TmyMasterartis: TMemoField;
    TmyMastersinopsis: TMemoField;
    TmyMasterpath: TStringField;
    TmyMasternegara: TIntegerField;
    TmyMastervol: TSmallintField;
    TmyMasterdrama: TSmallintField;
    TmyMasterkomedi: TSmallintField;
    TmyMasteraction: TSmallintField;
    TmyMasterhoror: TSmallintField;
    TmyMasterkartun: TSmallintField;
    Label2: TLabel;
    bsSkinEdit1: TbsSkinEdit;
    DBCon: TZConnection;
    function BooltoInt(x : boolean) : Integer;
    procedure btnFileClick(Sender: TObject);
    procedure BtnBackupClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FsongList: TFsongList;

implementation

uses DataModul1, Math, StrUtils;

{$R *.dfm}

function TFsongList.BooltoInt(x: boolean): Integer;
begin
  if x then result := 1 else Result := 0;
end;

procedure TFsongList.btnFileClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    edtpath.Text := OpenDialog1.FileName;
end;

procedure TFsongList.BtnBackupClick(Sender: TObject);
var i : integer;
begin
  bsSkinGauge1.Visible := True;
  bsSkinGauge1.Value := 0;

  if edtpath.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('         File tidak lengkap   !!!          ', mtError,[mbOK], 0);
    exit;
  end;

  ADOConnection1.Connected := False;
  ADOConnection1.ConnectionString :=
        ' Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source= ' +
          edtpath.Text +
        ' ;Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=""; '+
        ' Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1; '+
        ' Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False; '+
        ' Jet OLEDB:Don' + ''''+ 't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False ';
  try
    ADOConnection1.Connected := True;
  except
     bsSkinMessage1.MessageDlg('    File salah   !!!    ', mtError,[mbOK], 0);
     edtpath.SetFocus;
     edtpath.SelectAll;
     exit;
  end;

  qaMaster.Active := False;
  qaMaster.SQL.Text := 'DELETE FROM film';
  qaMaster.ExecSQL;

  taMaster.Active := False;
  taMaster.Active := True;

  TmyMaster.Active := True;
  TmyMaster.First;
  while not(TmyMaster.Eof) do
  begin
    taMaster.Append;
    for i := 0 to TmyMaster.FieldCount -1 do
    begin
      taMaster.Fields[i].Value := TmyMaster.Fields[i].Value;
    end;

      bsSkinGauge1.Value := trunc(TmyMaster.RecNo / TmyMaster.RecordCount*100);
      FsongList.Repaint;

    taMaster.Post;
    TmyMaster.Next;
  end;
  bsSkinGauge1.Visible := False;
end;

procedure TFsongList.btnUpdateClick(Sender: TObject);
var i : integer;
begin

  DBCon.Connected := False;
  DBCon.HostName := trim(bsSkinEdit1.Text);
  DBCon.Database := 'karaoke';
  DBCon.User := 'karaoke';
  DBCon.Password := 'Viz3009Ta';
  DBCon.Connected := True;




  bsSkinGauge1.Visible := True;
  bsSkinGauge1.Value := 0;
  if edtpath.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('         File tidak lengkap   !!!          ', mtError,[mbOK], 0);
    exit;
  end;

  ADOConnection1.Connected := False;
  ADOConnection1.ConnectionString :=
        ' Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source= ' +
          edtpath.Text +
        ' ;Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password=""; '+
        ' Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1; '+
        ' Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=False; '+
        ' Jet OLEDB:Don' + ''''+ 't Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False ';
  try
    ADOConnection1.Connected := True;
  except
     bsSkinMessage1.MessageDlg('    File salah   !!!    ', mtError,[mbOK], 0);
     edtpath.SetFocus;
     edtpath.SelectAll;
     exit;
  end;

  QmyMaster.Active := False;
  QmyMaster.SQL.Text := 'DELETE FROM film';
  QmyMaster.ExecSQL;

  taMaster.Active := True;
  taMaster.First;

  QmyMaster.SQL.Text := ' INSERT INTO film (ID, TITLE, ARTIS, SINOPSIS, PATH, NEGARA, VOL, DRAMA, KOMEDI, ACTION, HOROR, KARTUN) VALUES ( ' +
                        ' :ID, :TITLE, :ARTIS, :SINOPSIS, :PATH, :NEGARA, :VOL, :DRAMA, :KOMEDI, :ACTION, :HOROR, :KARTUN)';

  while not(taMaster.Eof) do
  begin
      QmyMaster.Params[0].AsInteger := taMaster.Fields[0].AsInteger;
      QmyMaster.Params[1].AsString := taMaster.Fields[1].AsString;
      QmyMaster.Params[2].AsString := taMaster.Fields[2].AsString;
      QmyMaster.Params[3].AsString := taMaster.Fields[3].AsString;
      QmyMaster.Params[4].AsString := taMaster.Fields[4].AsString;
      QmyMaster.Params[5].AsInteger := taMaster.Fields[5].AsInteger;
      QmyMaster.Params[6].AsInteger := taMaster.Fields[6].AsInteger;
      QmyMaster.Params[7].AsInteger := BooltoInt(taMaster.Fields[7].AsBoolean);
      QmyMaster.Params[8].AsInteger := BooltoInt(taMaster.Fields[8].AsBoolean);
      QmyMaster.Params[9].AsInteger := BooltoInt(taMaster.Fields[9].AsBoolean);
      QmyMaster.Params[10].AsInteger := BooltoInt(taMaster.Fields[10].AsBoolean);
      QmyMaster.Params[11].AsInteger := BooltoInt(taMaster.Fields[11].AsBoolean);
      QmyMaster.ExecSQL;
      bsSkinGauge1.Value := trunc(taMaster.RecNo / taMaster.RecordCount*100);
      FsongList.Repaint;
    taMaster.Next;
  end;
  bsSkinGauge1.Visible := False;
  bsSkinMessage1.MessageDlg('               Update Succes               ', mtInformation,[mbOK], 0);
end;

procedure TFsongList.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFsongList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
