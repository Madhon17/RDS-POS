unit untOrderDelete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AEDIT, StdCtrls, ExtCtrls, bsSkinCtrls, BusinessSkinForm,
  bsMessages, DB, DBTables, StrUtils, ZDataset, ZAbstractRODataset,
  ZAbstractDataset;

type
  TfOrderDelete = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btdelete: TbsSkinButton;
    btbatal: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    Qupdate: TZQuery;
    bsSkinPanel7: TbsSkinPanel;
    lblRoom: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtQty: TAEdit;
    edtTotal: TAEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtCs: TEdit;
    edtNamaCS: TEdit;
    edtIDSO: TEdit;
    edtIdMenu: TEdit;
    edtMenu: TEdit;
    edtMemo: TEdit;
    procedure btdeleteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btbatalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure prcPrintOrder(namaRoom : string; pbOrderId : string; idt: string; itemCount: integer; idMenu: array of string; menu: array of string; menuQty: array of integer; note: string);
  public
    { Public declarations }
    idorder : String; 
  end;

var
  fOrderDelete: TfOrderDelete;

implementation

uses Unit14, unit3, cekTamu, ShellApi, Unit1;

{$R *.dfm}

procedure TfOrderDelete.btdeleteClick(Sender: TObject);
begin
  if (edtMemo.Text = '') then
  begin
     bsSkinMessage1.MessageDlg('    Incomplete data   !!!    ', mtError,[mbOK], 0);
     edtMemo.SetFocus;
     exit;
  end;

  if  cekRoom(lblRoom.Caption,Qupdate) then
  begin
    Qupdate.Active := False;
    Qupdate.SQL.Text := ' update torder_menu set status=0, keterangan='+ QuotedStr(edtMemo.Text) +', cs='+ QuotedStr (edtCs.Text) +' '+
                        ' WHERE     (idmenu = '+ QuotedStr (edtIdMenu.Text)+')  AND '+
                        '           (idso  = '+ QuotedStr (edtIDSO.Text)+')';
    Qupdate.ExecSQL;

    FrmInduk.logActivity('Order Menu - Hapus - ' + idorder + ' - ' + edtIdMenu.Text);

    fordermenu.hitTotal;
    fordermenu.Qorder.Active := False;
    fordermenu.Qorder.Active := True;
  end
  else
  begin
    bsSkinMessage1.MessageDlg('     Room status has changed     ', mtError, [mbOK],0);
  end;

  prcPrintOrder(lblRoom.Caption, idorder, edtIDSO.Text, 1, [edtIdMenu.Text], [edtMenu.Text], [StrToInt(edtQty.Text)], edtMemo.Text);
  
  Close;
end;
procedure TfOrderDelete.prcPrintOrder(namaRoom: string; pbOrderId: string; idt: string; itemCount: integer; idMenu: array of string; menu: array of string; menuQty: array of integer; note: string);
var s, t, Str1, Str2, Str3, Narom, NaroomP, orderOK, wkt, wktp : String;
    F : TextFile;
    a: integer;
    lokasi: Integer;
  qSQL : TZQuery;
begin
  qSQL := TZQuery.Create(Self);
  qSQL.Connection := modul.Database1;
  qSQL.SQL.Text := 'SELECT     tmenu.id_lokasi FROM tmenu ' +
                     'WHERE     (tmenu.id = ' + QuotedStr(idMenu[0]) +')';
  qSQL.Active := True;
  lokasi := qSQL.FieldByName('id_lokasi').AsInteger;
  qSQL.Active := False;

  Str1 := 'ID Menu';
  Str2 := 'NAMA MENU';
  Str3 := 'QTY.';
  Narom := Trim(namaRoom);

  AssignFile(F,'c:\test.txt');
  Rewrite(F);
  Write (F, 'CANCEL ORDER');
  NaroomP := Format('%30s',[Narom]);
  Write(F,NaroomP);
  Writeln(F,'');
  orderOK := Format('%0s %29s',[pbOrderId, 'SO'+idt]);
  Writeln (F,orderOK );
  Writeln(f,'');
  Writeln(F,'Waiters   : '+ edtcs.Text);
  writeln(f,'----------------------------------------');
  s:=Format('%0s %10s %20s', [Str1, Str2, Str3]);
  writeln(f,s);

  writeln(f,'----------------------------------------');
  for a := 0 to itemCount - 1 do
  begin
    s:=Format('%0s', [idMenu[a]] );
    s:=  s + LeftStr (' '+ menu[a],4500);
    t := RightStr ('                                   '+ IntToStr (-menuQty[a]) ,500);
    Writeln(f,s);
    Writeln (f,t);
    Writeln (f,'');
  end;
  Writeln(f,'');
  writeln(f,'----------------------------------------');
  Write (F, 'Note :');
  Writeln(f,'');
  Write(f, note);
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  wkt := FormatDateTime('dd-MM-YY HH:MM:SS',now);
  wktp := Format('%40s',[wkt]);
  Writeln(f,wktp);
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  CloseFile(f);

  case lokasi of
    1 : ShellExecute(Handle, 'open', 'bar.bat','',nil, SW_HIDE);
    2 : ShellExecute(Handle, 'open', 'dapur.bat','',nil, SW_HIDE);
    3 : ShellExecute(Handle, 'open', 'markas.bat','',nil, SW_HIDE)
  end;
end;

procedure TfOrderDelete.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  fordermenu.Enabled := True;
  Action := caFree;
end;

procedure TfOrderDelete.btbatalClick(Sender: TObject);
begin
  Close;
end;

procedure TfOrderDelete.FormCreate(Sender: TObject);
begin
  Qupdate.Connection := modul.Database1;
end;

end.
