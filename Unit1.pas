unit Unit1;

interface

uses
  SysUtils, Classes, DB, DBTables, ZConnection, IniFiles, Forms, MemDS,
  VirtualTable, Dialogs, ScktComp, Windows, ZDataset;

const
  roomTolerance = 15;

type
  Tmodul = class(TDataModule)
    DBmysql: TZConnection;
    My2: TZConnection;
    csKey: TClientSocket;
    Database1: TZConnection;
    Database2: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private

    logFile: TextFile;

    syncDataToBackup: Integer;

    vCekKoneksi : Boolean;

    function getKey(socket: TClientWinSocket; request: String): String;

  public

    vmysql, vmysql2, vdatabase : string;
    keyMySQL: String;
    keyWindows: String;

    procedure createProcessAndWait(commandLine: String);
    procedure log(text: String);
    procedure syncDataToBackupProcedure(parent: HWND; sqlText: String);

    function responseChallenge(socket: TClientWinSocket): Boolean;
    function sendData(socket: TClientWinSocket; data: array Of Char; dataLength: Integer): boolean; overload;
    function sendData(socket: TClientWinSocket; data: array Of Char): boolean; overload;
    function sendData(socket: TClientWinSocket; data: String): boolean; overload;

    function getApplicationVersion(): String;
    function getCorrectionBalance(): Integer;

    function BoolToStr(value: Boolean): String;
    function BoolToStr2(value: Boolean): String;
    function StrToBool(value: String): Boolean;

  end;

var
  modul: Tmodul;

implementation
     uses untlogin, untping, UOSInfo;
{$R *.dfm}

function mbedtlsBlowfishDecrypt(input: PAnsiChar; inputLength: Integer; output: PAnsiChar; index0: Integer; index1: Integer): Integer; stdcall; external 'Rds Library.dll';
function opensslAESDecrypt(input: PAnsiChar; inputLength: Integer; output: PAnsiChar; index0: Integer; index1: Integer): Integer; stdcall; external 'Rds Library.dll';
function opensslSHA512Digest(input: PAnsiChar; inputLength: Integer; output: PAnsiChar): Integer; stdcall; external 'Rds Library.dll';

procedure Tmodul.DataModuleCreate(Sender: TObject);
var
  NamaFile : TFileName;
  FileIni  : TIniFile;
  commandLine : String;

const
  cProducts: array[TOSProduct] of string = (
    'osUnknown', 'osWin95', 'osWin98', 'osWinMe',
    'osWinNT4', 'osWin2000', 'osWinXP', 'osWinServer2003'
  );
begin

  AssignFile(logFile, 'log.txt');
  if FileExists('log.txt') then
  begin
    Append(logFile);
  end
  else
  begin
    ReWrite(logFile);
  end;

  Database1.Connected := False;
  Database2.Connected := False;
  DBmysql.Connected := False;
  My2.Connected := False;

  NamaFile := ExtractFilePath (Application.ExeName)+'..\..\setting-pos.ini';
  FileIni := TIniFile.Create(NamaFile);
  vmysql := FileIni.ReadString('Database', 'MySql','127.0.0.1');
  vmysql2 := FileIni.ReadString('Database', 'MySql2','127.0.0.1');
  vdatabase := FileIni.ReadString('Database', 'Database','rds');
  vCekKoneksi := StrToBool(FileIni.ReadString('Connection', 'CekKoneksi','0'));

  syncDataToBackup := StrToInt(FileIni.ReadString('Database', 'syncDataToBackup', '0'));

  keyMySQL := '';
  keyWindows := '';

  csKey.Port := 32768;

  csKey.Host := vmysql;
  try
    csKey.Open;
  except
  end;
  if csKey.Socket.Connected = False then
  begin
    csKey.Host := vmysql2;
    try
      csKey.Open;
    except
    end;
  end;
  if csKey.Socket.Connected = False then
  begin
    Exit;
  end;

  if responseChallenge(csKey.Socket) = False then
  begin
    Exit;
  end;

  keyMySQL := getKey(csKey.Socket, 'getKeyMySQL');
  keyWindows := getKey(csKey.Socket, 'getKeyWindows');

  Database1.Password := keyMySQL;
  Database1.HostName := vmysql;
  Database2.Password := keyMySQL;
  Database2.HostName := vmysql2;

  DBmysql.Password := keyMySQL;
  My2.Password := keyMySQL;

  DBmysql.HostName := vmysql;
  My2.HostName := vmysql2;

  if (cProducts[TOSInfo.Product] = 'osWinXP') and(vCekKoneksi) then   //ping tdk jalan di win7
  begin
    if not(Ping(vmysql)) then
    begin
      Exit;
    end;
  end;

  try
    Database1.Connected := True;
    DBmysql.Connected := True;
  except
    Exit;
  end;

  if vmysql <> vmysql2 then
  begin
    try
      Database2.Connected := True;
    except
      ShowMessage('Error koneksi SQL Server backup');
    end;
    try
      My2.Connected := True;
    except
    end;
    if (cProducts[TOSInfo.Product] = 'osWinXP')and(vCekKoneksi) then
    begin
      if not(Ping(vmysql2)) then
      begin
         exit
      end;
    end;
  end;
end;

procedure TModul.createProcessAndWait(commandLine: String);
var
  StartInfo : TStartupInfo;
  ProcInfo : TProcessInformation;
  CreateOK : Boolean;
begin
  FillChar(StartInfo, SizeOf(TStartupInfo),#0);
  FillChar(ProcInfo, SizeOf(TProcessInformation),#0);
  StartInfo.cb := SizeOf(TStartupInfo);
  StartInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartInfo.wShowWindow := SW_HIDE;
  CreateOK := CreateProcess(nil, PChar(commandLine), nil, nil, False, CREATE_NEW_PROCESS_GROUP + NORMAL_PRIORITY_CLASS, nil, nil, StartInfo, ProcInfo);
  if CreateOK then
  begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
  end;
  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
end;

function TModul.getApplicationVersion(): String;
var
  VerInfoSize, VerValueSize, Dummy : DWORD;
  VerInfo : Pointer;
  VerValue : PVSFixedFileInfo;
  V1,       // Major Version
  V2,       // Minor Version
  V3,       // Release
  V4: Word; // Build Number
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  With VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  Result := IntToStr(V1);
  if V2 <> 0 then
  begin
    Result := Result + '.' + IntToStr(V2);
  end;
  if V3 <> 0 then
  begin
    Result := Result + '.' + IntToStr(V3);
  end;
  if V4 <> 0 then
  begin
    Result := Result + '.' + IntToStr(V4);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TModul.syncDataToBackupProcedure(parent: HWND; sqlText: String);
var
  query : TZQuery;
begin
  if syncDataToBackup <> 0 then
  begin
    if modul.Database2.Connected then
    begin
      query := TZQuery.Create(Self);
      query.Connection := modul.Database2;
      query.SQL.Text := sqlText;
      try
        query.ExecSQL;
      except
        MessageBox(parent, PChar('Gagal menyimpan data ke server backup.' + #10 + 'Silahkan hubungi IT-DIVISION sistem.'), PChar(''), MB_OK);
        modul.Database2.Connected := False;
      end;
      query.Destroy;
    end;
  end;
end;

procedure TModul.log(text: String);
begin
  WriteLn(logFile, formatdatetime('yyyy-mm-dd hh:nn:ss ', Now) + ' POS ' + getApplicationVersion() + ' ' + text);
  Flush(logFile);
end;

function TModul.responseChallenge(socket: TClientWinSocket): Boolean;
var
  return: Integer;
  headerLength: Integer;
  buffer: array[0..65535] of Char;
  buffer2: array[0..65535] of Char;
  challengeResponseLength: Integer;
  challengeResponse: array[0..63] of Char;
begin

  Result := False;

  return := socket.ReceiveBuf(buffer, 4);
  if return <> 4 then
  begin
    ShowMessage('ReceiveBuf fail');
    Exit;
  end;
  Move(buffer, headerLength, 4);

  return := socket.ReceiveBuf(buffer, headerLength);
  if return <> headerLength then
  begin
    ShowMessage('ReceiveBuf fail');
    Exit;
  end;

  return := opensslAESDecrypt(buffer, headerLength, buffer2, 1073741822, 1073741821);
  if return <> 4 then
  begin
    ShowMessage('opensslAESDecrypt fail');
    Exit;
  end;

  challengeResponseLength := opensslSHA512Digest(buffer2, return, challengeResponse);
  if challengeResponseLength <> Length(challengeResponse) then
  begin
    ShowMessage('opensslSHA512Digest fail');
    Exit;
  end;

  if sendData(socket, challengeResponse) = False then
  begin
    Exit;
  end;

  Result := True;
end;

function TModul.getKey(socket: TClientWinSocket; request: String): String;
var
  return: Integer;
  buffer: array[0..65535] of Char;
  headerLength: Integer;
  buffer2: array[0..65535] of Char;
  a: Integer;
begin

  result := '';

  if sendData(socket, request) = False then
  begin
    exit;
  end;

  return := socket.ReceiveBuf(buffer, 4);
  if return <> 4 then
  begin
    ShowMessage('ReceiveBuf fail');
    Exit;
  end;
  Move(buffer, headerLength, 4);

  a := 0;
  while a < headerLength do
  begin
    return := socket.ReceiveBuf(buffer[a], headerLength - a);
    if return <= 0 then
    begin
      ShowMessage('ReceiveBuf fail');
      Exit;
    end;
    a := a + return;
  end;

  return := mbedtlsBlowfishDecrypt(buffer, headerLength, buffer2, 1073741823, 1073741824);
  if return <> 2048 then
  begin
    ShowMessage('mbedtlsBlowfishDecrypt fail');
    Exit;
  end;

  Move(buffer2, headerLength, 4);
  Move(buffer2[4], buffer, headerLength);
  SetString(Result, buffer, headerLength);
end;

function TModul.sendData(socket: TClientWinSocket; data: array Of Char; dataLength: Integer): boolean;
var
  return: Integer;
  buffer: array[0..65535] of Char;
  send: Integer;
begin

  result := false;

  Move(dataLength, buffer, 4);
  Move(data, buffer[4], dataLength);

  send := 0;
  while send < 4 + dataLength do
  begin
    return := socket.SendBuf(buffer[send], 4 + dataLength - send);
    if return = 0 then
    begin
      ShowMessage('SendBuf fail');
      Exit;
    end;
    send := send + return;
  end;

  result := true;
end;

function TModul.sendData(socket: TClientWinSocket; data: array Of Char): boolean;
begin
  Result := sendData(socket, data, Length(data));
end;

function TModul.sendData(socket: TClientWinSocket; data: String): boolean;
var
  buffer: Array[0..65535] of Char;
begin
  Move(data[1], buffer, Length(data));
  Result := sendData(socket, buffer, Length(data));
end;

function TModul.getCorrectionBalance(): Integer;
var
  query: TZQuery;
begin

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'select count(*) count from tpayment where payment = 5 and tglstop > date_add(now(), interval -1 month)';
  query.Active := True;
  Result := 60 - query.FieldByName('count').AsInteger;
  query.Active := False;
  query.Destroy;
end;

function TModul.BoolToStr(value: Boolean): String;
begin
  if value then
  begin
    Result := '1';
  end
  else
  begin
    Result := '0';
  end;
end;

function TModul.BoolToStr2(value: Boolean): String;
begin
  Result := '''' + modul.BoolToStr(value) + '''';
end;

function TModul.StrToBool(value: String): Boolean;
begin
  if value = '0' then
  begin
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;

end.
