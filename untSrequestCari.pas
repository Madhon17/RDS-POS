unit untSrequestCari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, Grids, DBGrids, StdCtrls, DB, DBTables,
  BusinessSkinForm;

type
  TFSsongCari = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Fkeluar: TbsSkinButton;
    Qcari: TQuery;
    DScari: TDataSource;
    Qcariid: TIntegerField;
    Qcariartist: TStringField;
    Qcarititle: TStringField;
    DBGrid1: TDBGrid;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    vasal : integer;
  end;

var
  FSsongCari: TFSsongCari;

implementation

uses Unit3, untSRequest, untSongReport;

{$R *.dfm}

procedure TFSsongCari.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ComboBox1Click(Sender);
    Exit;
  end;

  Qcari.Active:=False;
  if ComboBox1.ItemIndex=2 then
  begin
     Qcari.SQL.Clear;
     Qcari.SQL.Add('SELECT     id, artist, title '+
                   'FROM         TSrequest '+
                   'WHERE     (id = ' + IntToStr(StrToInt(edit1.Text)) + ')' +
                   'ORDER BY id'
                   );
  end;
  if ComboBox1.ItemIndex=0 then
  begin
     Qcari.SQL.Clear;
     Qcari.SQL.Add('SELECT     id, artist, title '+
                   'FROM         TSrequest '+
                   'WHERE     (title LIKE '+ QuotedStr('%'+edit1.Text+'%') +' )' +
                   'ORDER BY title'
                   );
  end;
  if ComboBox1.ItemIndex=1 then
  begin
     Qcari.SQL.Clear;
     Qcari.SQL.Add('SELECT     id, artist, title '+
                   'FROM         TSrequest '+
                   'WHERE     (artist LIKE '+ QuotedStr('%'+edit1.Text+'%') +' )' +
                   'ORDER BY artist'
                   );
  end;

  Qcari.Active:=True;




end;

procedure TFSsongCari.FormCreate(Sender: TObject);
begin
  Qcari.Active := True;
end;

procedure TFSsongCari.ComboBox1Click(Sender: TObject);
begin
  Edit1.Text:='';
  Qcari.Active:=False;
  if ComboBox1.ItemIndex=2 then
  begin
     Qcari.SQL.Clear;
     Qcari.SQL.Add('SELECT     id, artist, title '+
                   'FROM         TSrequest '+
                   'ORDER BY id'
                   );
  end;
  if ComboBox1.ItemIndex=0 then
  begin
     Qcari.SQL.Clear;
     Qcari.SQL.Add('SELECT     id, artist, title '+
                   'FROM         TSrequest '+
                   'ORDER BY title'
                   );
  end;
  if ComboBox1.ItemIndex=1 then
  begin
     Qcari.SQL.Clear;
     Qcari.SQL.Add('SELECT     id, artist, title '+
                   'FROM         TSrequest '+
                   'ORDER BY artist'
                   );
  end;
  Qcari.Active:=True;
end;

procedure TFSsongCari.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
  if ComboBox1.ItemIndex = 2 then
  begin
    if not(((Key>='0')and(Key<='9'))or(Key=#8)or(Key=DecimalSeparator)) then Key:=#0;
  end;
end;

procedure TFSsongCari.FkeluarClick(Sender: TObject);
begin
  if vasal = 0 then
  begin
    FSsong.TSrequest.Locate('id',Qcariid.Value,[loCaseInsensitive, loPartialKey])
  end;
  Close;
end;

procedure TFSsongCari.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.Enabled := True;
  Action := caFree;
end;

procedure TFSsongCari.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFSsongCari.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clNavy;
    end;
    end;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
