unit untUpdateLagu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractRODataset, ZAbstractDataset, ZDataset, DB, ADODB,
  Grids, DBGrids, StdCtrls, bsMessages, ZAbstractTable, bsSkinCtrls,
  BusinessSkinForm, Mask, bsSkinBoxCtrls;

type
  TFsongList = class(TForm)
    ADOConnection1: TADOConnection;
    taMaster: TADOTable;
    QmyMaster: TZQuery;
    qaMaster: TADOQuery;
    OpenDialog1: TOpenDialog;
    bsSkinMessage1: TbsSkinMessage;
    taMasterIDMUSIC: TIntegerField;
    taMasterVCD: TWideStringField;
    taMasterTITLE: TWideStringField;
    taMasterSINGER: TWideStringField;
    taMasterDISC: TWideStringField;
    taMasterPATH: TWideStringField;
    taMasterANALOG: TWideStringField;
    taMasterTYPE: TIntegerField;
    taMasterWORD: TIntegerField;
    taMasterFLAG: TWideStringField;
    taMasterVOL: TIntegerField;
    BtnBackup: TbsSkinXFormButton;
    btnUpdate: TbsSkinXFormButton;
    btnFile: TbsSkinXFormButton;
    Label1: TLabel;
    btnExit: TbsSkinXFormButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    TmyMaster: TZTable;
    edtPath: TbsSkinEdit;
    bsSkinGauge1: TbsSkinGauge;
    TmyMasterIDMUSIC: TIntegerField;
    TmyMasterVCD: TStringField;
    TmyMasterTITLE: TStringField;
    TmyMasterSINGER: TStringField;
    TmyMasterDISC: TStringField;
    TmyMasterPATH: TStringField;
    TmyMasterANALOG: TStringField;
    TmyMasterTYPE: TIntegerField;
    TmyMasterWORD: TIntegerField;
    TmyMasterFLAG: TStringField;
    TmyMasterVOL: TIntegerField;
    taMasterHITS: TIntegerField;
    taMasterNEW: TIntegerField;
    taMasterPOPULER: TIntegerField;
    TmyMasterHITS: TSmallintField;
    TmyMasterNEW: TSmallintField;
    TmyMasterPOPULER: TLargeintField;
    procedure btnFileClick(Sender: TObject);
    procedure BtnBackupClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure TmyMasterFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FsongList: TFsongList;

implementation

uses unit3, Math;

{$R *.dfm}

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
  qaMaster.SQL.Text := 'DELETE FROM master';
  qaMaster.ExecSQL;

  taMaster.Active := False;
  taMaster.Active := True;

  TmyMaster.Active := False;
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

  //simpan populer
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

  QmyMaster.Active := False;
  QmyMaster.SQL.Text := 'DELETE FROM masters';
  QmyMaster.ExecSQL;

  taMaster.Active := False;
  taMaster.Active := True;
  taMaster.First;

  QmyMaster.SQL.Text := ' INSERT INTO masters (IDMUSIC, VCD, TITLE, SINGER, DISC, PATH, ANALOG, TYPE, WORD, FLAG, VOL, HITS, NEW, POPULER) VALUES ( ' +
                        ' :IDMUSIC, :VCD, :TITLE, :SINGER, :DISC, :PATH, :ANALOG, :TYPE, :WORD, :FLAG, :VOL, :HITS, :NEW, :POPULER)';

  while not(taMaster.Eof) do
  begin
      QmyMaster.Params[0].AsInteger := taMaster.Fields[0].AsInteger;
      QmyMaster.Params[1].AsString := taMaster.Fields[1].AsString;
      QmyMaster.Params[2].AsString := taMaster.Fields[2].AsString;
      QmyMaster.Params[3].AsString := taMaster.Fields[3].AsString;
      QmyMaster.Params[4].AsString := taMaster.Fields[4].AsString;
      QmyMaster.Params[5].AsString := taMaster.Fields[5].AsString;
      QmyMaster.Params[6].AsString := taMaster.Fields[6].AsString;
      QmyMaster.Params[7].AsInteger := taMaster.Fields[7].AsInteger;
      QmyMaster.Params[8].AsInteger := taMaster.Fields[8].AsInteger;
      QmyMaster.Params[9].AsString := taMaster.Fields[9].AsString;
      QmyMaster.Params[10].AsInteger := taMaster.Fields[10].AsInteger;
      QmyMaster.Params[11].AsInteger := taMaster.Fields[11].AsInteger;
      QmyMaster.Params[12].AsInteger := taMaster.Fields[12].AsInteger;
      QmyMaster.Params[13].AsInteger := taMaster.Fields[13].AsInteger;
      QmyMaster.ExecSQL;
      bsSkinGauge1.Value := trunc(taMaster.RecNo / taMaster.RecordCount*100);
      FsongList.Repaint;
    taMaster.Next;
  end;
  bsSkinGauge1.Visible := False;
end;

procedure TFsongList.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TFsongList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbSongList := False;
end;

procedure TFsongList.FormCreate(Sender: TObject);
begin
  FrmInduk.pbSongList := True;
end;

procedure TFsongList.TmyMasterFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  Accept := TmyMasterPOPULER.Value > 10;
end;

end.
