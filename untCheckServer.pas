unit untCheckServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractTable, bsSkinCtrls, bsMessages, BusinessSkinForm, Grids,
  DBGrids, Mask, DBCtrls, dwinlock, ExtCtrls;

type
  TFcheckServer = class(TForm)
    Qmaster: TZReadOnlyQuery;
    QmasterPATH: TStringField;
    Label1: TLabel;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    btnkeluar: TbsSkinButton;
    Memo1: TMemo;
    DataSource1: TDataSource;
    edtServer: TEdit;
    dWinLock1: TdWinLock;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    btnbatal: TbsSkinButton;
    bsSkinButton1: TbsSkinButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    bsSkinButton2: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    Tmaster: TZTable;
    Tmovie: TZTable;
    btnDelete: TbsSkinButton;
    Qdel: TZReadOnlyQuery;
    StringField1: TStringField;
    bsSkinGauge1: TbsSkinGauge;
    BsSimpanNotepad: TbsSkinButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure ShellExecute_AndWait(FileName: string; Params: string);
    procedure memodir(Path:String);
    procedure HapusMovie(Path:String);
    procedure HapusLagu(Path:String);
    procedure btnbatalClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure BsSimpanNotepadClick(Sender: TObject);
  private
    pvchek : Smallint;  //1=lagu,2=movie
  public
    { Public declarations }
  end;

var
  FcheckServer: TFcheckServer;

implementation

uses ShellApi, StrUtils, Unit1, Unit3, dwlCore;

{$R *.dfm}

procedure TFcheckServer.ShellExecute_AndWait(FileName: string; Params: string);
var
  exInfo: TShellExecuteInfo;
  Ph: DWORD;
begin
  FillChar(exInfo, SizeOf(exInfo), 0);
  with exInfo do
  begin
    cbSize := SizeOf(exInfo);
    fMask := SEE_MASK_NOCLOSEPROCESS or SEE_MASK_FLAG_DDEWAIT;
    Wnd := GetActiveWindow();
    ExInfo.lpVerb := 'open';
    ExInfo.lpParameters := PChar(Params);
    lpFile := PChar(FileName);
    nShow := SW_HIDE;
  end;
  if ShellExecuteEx(@exInfo) then
    Ph := exInfo.HProcess
  else
  begin
    ShowMessage(SysErrorMessage(GetLastError));
    Exit;
  end;
  while WaitForSingleObject(ExInfo.hProcess, 50) <> WAIT_OBJECT_0 do
    Application.ProcessMessages;
  CloseHandle(Ph);
end;

procedure TFcheckServer.memodir(Path:String);
  var  MySearch: TSearchRec;
       nama, NamaFile   : String;
begin
   if not(SetCurrentDir(Path)) then exit;

    FindFirst(GetCurrentDir+'\*.*', faAnyFile, MySearch);

      while FindNext(MySearch)=0 do
      begin
          if not((MySearch.Name = '.') or (MySearch.Name = '..')) then
          begin

            memodir(GetCurrentDir+'\' + MySearch.Name);


            if SetCurrentDir(GetCurrentDir+'\' ) then
            begin
              if RightStr(GetCurrentDir,1)='\' then
                nama := GetCurrentDir + MySearch.Name
              else
                nama := GetCurrentDir+'\' + MySearch.Name;

              NamaFile := RightStr(nama, length(nama)-3);
              if not(Qmaster.Locate('PATH', NamaFile, [loCaseInsensitive])) then
              begin
                Memo1.Lines.Add(nama);
                DeleteFile(nama);
                //memodir(GetCurrentDir+'\' + MySearch.Name);
              end;
            end;
          end;

      end;
      SetCurrentDir(GetCurrentDir+'\..' );

end;

procedure TFcheckServer.btnbatalClick(Sender: TObject);
  var  MySearch: TSearchRec;
begin
  Memo1.Text := '';
  pvchek := 0;
  if edtServer.Text = '' then Exit;
  try
    Tmaster.Active := False;
    Tmaster.Active := True;
    ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');
    ShellExecute_AndWait('command.com', '/c NET USE X: \\'+ Trim(edtServer.Text) + '\data ' + modul.keyWindows + ' /user:administrator');

    wlDisableKey(0,VK_DELETE,MOD_CONTROL or MOD_ALT,1);
    wlDisableKey(0,MOD_ALL,MOD_ALL,1);

    HapusLagu('X:\');
  finally
    ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');
    wlDisableKey(0,0,0,0); // enable all Keys
    WinExec('Shutdown -t 10 -s',0);
  end;


end;

procedure TFcheckServer.btnkeluarClick(Sender: TObject);
begin
  Close;
end;

procedure TFcheckServer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Qmaster.Active := False;

  FrmInduk.pbCheckServer := False;
  Action := caFree;
end;

procedure TFcheckServer.FormCreate(Sender: TObject);
begin
  FrmInduk.pbCheckServer := True;

 with OpenDialog1 do begin
  Options:=Options+[ofPathMustExist,ofFileMustExist];
  InitialDir:=ExtractFilePath(Application.ExeName);
  //InitialDir:= ExtractFilePath('My Documets');
  Filter:='Text files (*.txt)|*.txt';
 end;
 with SaveDialog1 do begin
  InitialDir:=ExtractFilePath(Application.ExeName);
  //InitialDir:= ExtractFilePath('my documents');
  Filter:='Text files (*.txt)|*.txt';
 end;
 Memo1.ScrollBars := ssBoth;

end;

procedure TFcheckServer.bsSkinButton1Click(Sender: TObject);
var lokasi : String;
begin
  Memo1.Text := '';
  pvchek := 0;
  if edtServer.Text = '' then Exit;
  try
    ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');
    ShellExecute_AndWait('command.com', '/c NET USE X: \\'+ Trim(edtServer.Text) +'\data ' + modul.keyWindows + ' /user:administrator');

    wlDisableKey(0,VK_DELETE,MOD_CONTROL or MOD_ALT,1);
    wlDisableKey(0,MOD_ALL,MOD_ALL,1);

    Qmaster.Active := False;
    Qmaster.SQL.Text := 'SELECT PATH FROM masters '+
                        'ORDER BY PATH';
    Qmaster.Active := True;
    Qmaster.First;
    lokasi := 'X:\' +  Trim(QmasterPATH.Value);
    while not(Qmaster.Eof) do
    begin
      lokasi := 'X:\' + Trim(QmasterPATH.Value);
      if not(FileExists(lokasi)) then
      begin
        Memo1.Lines.Add(lokasi);
      end;
      Qmaster.Next;
    end;
  finally
    ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');
    wlDisableKey(0,0,0,0); // enable all Keys
  end;
  pvchek := 1;
end;

procedure TFcheckServer.bsSkinButton3Click(Sender: TObject);
var lokasi : String;
begin
  if edtServer.Text = '' then Exit;
  try
    ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');
    ShellExecute_AndWait('command.com', '/c NET USE Y: \\'+ Trim(edtServer.Text) +'\movie ' + modul.keyWindows + ' /user:administrator');

    wlDisableKey(0,VK_DELETE,MOD_CONTROL or MOD_ALT,1);
    wlDisableKey(0,MOD_ALL,MOD_ALL,1);

    Qmaster.Active := False;
    Qmaster.SQL.Text := 'SELECT PATH FROM film '+
                        'ORDER BY PATH';
    Qmaster.Active := True;
    Qmaster.First;
    lokasi := 'Y:\' +  Trim(QmasterPATH.Value);
    while not(Qmaster.Eof) do
    begin
      lokasi := 'Y:\' + Trim(QmasterPATH.Value);
      if not(FileExists(lokasi)) then
      begin
        Memo1.Lines.Add(lokasi);
      end;
      Qmaster.Next;
    end;
  finally
    ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');
    wlDisableKey(0,0,0,0); // enable all Keys
  end;
  pvchek := 2;
end;

procedure TFcheckServer.bsSkinButton2Click(Sender: TObject);
  var  MySearch: TSearchRec;
begin
  Memo1.Text := '';
  pvchek := 0;
  
  if edtServer.Text = '' then Exit;
  try
    Tmovie.Active := False;
    Tmovie.Active := True;

    ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');
    ShellExecute_AndWait('command.com', '/c NET USE Y: \\'+ Trim(edtServer.Text) +'\movie ' + modul.keyWindows + ' /user:administrator');

    wlDisableKey(0,VK_DELETE,MOD_CONTROL or MOD_ALT,1);
    wlDisableKey(0,MOD_ALL,MOD_ALL,1);

    Qmaster.Active := False;
    Qmaster.SQL.Text := 'SELECT PATH FROM film '+
                        'ORDER BY PATH';
    Qmaster.Active := True;
    HapusMovie('Y:\');
  finally
    ShellExecute_AndWait('command.com', '/c NET USE /DELETE * /y');
    wlDisableKey(0,0,0,0); // enable all Keys
    //WinExec('Shutdown -t 10 -s',0);
  end;

end;

procedure TFcheckServer.HapusLagu(Path: String);
  var  MySearch: TSearchRec;
       nama, NamaFile   : String;
begin
   if not(SetCurrentDir(Path)) then exit;

    FindFirst(GetCurrentDir+'\*.*', faAnyFile, MySearch);

      while FindNext(MySearch)=0 do
      begin
          if not((MySearch.Name = '.') or (MySearch.Name = '..')) then
          begin

            HapusLagu(GetCurrentDir+'\' + MySearch.Name);


            if SetCurrentDir(GetCurrentDir+'\' ) then
            begin
              if RightStr(GetCurrentDir,1)='\' then
                nama := GetCurrentDir + MySearch.Name
              else
                nama := GetCurrentDir+'\' + MySearch.Name;

              NamaFile := RightStr(nama, length(nama)-3);
              if not(Tmaster.Locate('PATH', NamaFile, [loCaseInsensitive])) then
              begin
                Memo1.Lines.Add(nama);
                DeleteFile(nama);
                //HapusLagu(GetCurrentDir+'\' + MySearch.Name);
              end;
            end;
          end;

      end;
      SetCurrentDir(GetCurrentDir+'\..' );

end;

procedure TFcheckServer.HapusMovie(Path: String);
  var  MySearch: TSearchRec;
       nama, NamaFile   : String;
begin
   if not(SetCurrentDir(Path)) then exit;

    FindFirst(GetCurrentDir+'\*.*', faAnyFile, MySearch);

      while FindNext(MySearch)=0 do
      begin
          if not((MySearch.Name = '.') or (MySearch.Name = '..')) then
          begin

            HapusMovie(GetCurrentDir+'\' + MySearch.Name);


            if SetCurrentDir(GetCurrentDir+'\' ) then
            begin
              if RightStr(GetCurrentDir,1)='\' then
                nama := GetCurrentDir + MySearch.Name
              else
                nama := GetCurrentDir+'\' + MySearch.Name;

              NamaFile := RightStr(nama, length(nama)-3);
              if not(Tmovie.Locate('PATH', NamaFile, [loCaseInsensitive])) then
              begin
                Memo1.Lines.Add(nama);
                DeleteFile(nama);
                //HapusMovie(GetCurrentDir+'\' + MySearch.Name);
              end;
            end;
          end;

      end;
      SetCurrentDir(GetCurrentDir+'\..' );
end;

procedure TFcheckServer.btnDeleteClick(Sender: TObject);
var i, jumlagu : integer;
    namafile : string;
begin
  if (Memo1.Text = '') or (pvchek = 0) then
  begin
    Beep;
    Exit;
  end;

  bsSkinGauge1.Visible := True;
  bsSkinGauge1.Value := 0;

  jumlagu := Memo1.Lines.Count-1;

  if pvchek = 1 then
  begin
    Tmaster.Active := True;
    for i:= 0 to (Memo1.Lines.Count - 1) do
    begin
      namafile := RightStr(Memo1.Lines[i], StrLen(PChar(string(Memo1.Lines[i])))-3);
      if Tmaster.Locate('PATH', namafile , [loCaseInsensitive]) then
      begin
        Tmaster.Delete;
        bsSkinGauge1.Value := trunc(i/jumlagu * 100);
      end;
    end;
  end;

  if pvchek = 2 then
  begin
    Tmovie.Active := True;
    for i:= 0 to (Memo1.Lines.Count - 1) do
    begin
      if Tmovie.Locate('PATH', Memo1.Lines[i], [loCaseInsensitive]) then
      begin
        Tmovie.Delete;
        bsSkinGauge1.Value := trunc(i/jumlagu * 100);
      end;
    end;
  end;

  bsSkinGauge1.Visible := False;

end;

procedure TFcheckServer.BsSimpanNotepadClick(Sender: TObject);
begin
 SaveDialog1.FileName :='LaguKurang'+ edtServer.Text ;
 if SaveDialog1.Execute then begin
   Memo1.Lines.SaveToFile
     (SaveDialog1.FileName + '.txt');
   edtServer.Text:=SaveDialog1.FileName;
 end;
end;
end.
