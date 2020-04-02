unit frmPlaylist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids, MemDS, VirtualTable,
  bsSkinCtrls, bsMessages, BusinessSkinForm, TntDBGrids;

type
  TfPlaylist = class(TForm)
    cboRoom: TComboBox;
    AdoPlaylist: TADOQuery;
    DataSource1: TDataSource;
    vtPlayList: TVirtualTable;
    vtPlayListIDmusic: TIntegerField;
    vtPlayListTitle: TStringField;
    vtPlayListSinger: TStringField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    btnTambah: TbsSkinButton;
    btnSimpan: TbsSkinButton;
    TntDBGrid1: TTntDBGrid;
    procedure IsiRoom;
    procedure FormCreate(Sender: TObject);
    procedure cboRoomClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPlaylist: TfPlaylist;

implementation

uses untDB, Unttambahlagu;

{$R *.dfm}

procedure TfPlaylist.IsiRoom;
var AdoQueryTemp : TADOQuery;
begin
  cboRoom.Clear;
  AdoQueryTemp := TADOQuery.Create(Self);;
  AdoQueryTemp.Connection := mdlDB.AdoDB1;
  AdoQueryTemp.SQL.Text := 'Select ROOMNAME from room';
  AdoQueryTemp.Open;
  AdoQueryTemp.First;
  while not AdoQueryTemp.Eof do
  begin
    cboRoom.Items.Add(AdoQueryTemp.Fields[0].AsString);
    AdoQueryTemp.Next;
  end;
  cboRoom.ItemIndex := 0;
  AdoQueryTemp.Close;
  AdoQueryTemp.Free;
end;

procedure TfPlaylist.FormCreate(Sender: TObject);
begin
  vtPlayList.Active := True;
  IsiRoom;
end;

procedure TfPlaylist.cboRoomClick(Sender: TObject);
begin
  if cboRoom.Text = '' then Exit;
  AdoPlaylist.SQL.Text := 'select pl.IDMUSIC, pl.room, mr.title, mr.singer from playlist pl INNER JOIN masters mr ' +
                          'on pl.idmusic = mr.idmusic where pl.room = ' +
                          QuotedStr(cboRoom.Text);
  AdoPlaylist.Open;
  vtPlayList.Active := True;
  vtPlayList.Clear;
  while not(AdoPlaylist.Eof) do
  begin
    vtPlayList.Append;
    vtPlayListIDmusic.AsInteger := AdoPlaylist.fieldByName('IDMUSIC').AsInteger;
    vtPlayListTitle.AsString    := AdoPlaylist.fieldByName('TITLE').AsString;
    vtPlayListSinger.AsString    := AdoPlaylist.fieldByName('SINGER').AsString;
    vtPlayList.Post;
    AdoPlaylist.Next;
  end;
end;

procedure TfPlaylist.btnTambahClick(Sender: TObject);
begin
  Ftambahlagu.Show;
end;

procedure TfPlaylist.btnSimpanClick(Sender: TObject);
var AdoQueryTemp : TADOQuery;
begin
  AdoQueryTemp := TADOQuery.Create(Self);
  AdoQueryTemp.Connection := mdlDB.AdoDB1;
  AdoQueryTemp.SQL.Text := 'DELETE FROM playlist WHERE room =' + QuotedStr(Trim(cboRoom.Text));
  AdoQueryTemp.ExecSQL;

  vtPlayList.First;
  while not(vtPlayList.Eof) do
  begin
    AdoQueryTemp.SQL.Text := 'INSERT INTO playlist (IDMUSIC, USERID, room) VALUES ' +
                             '( '+ vtPlayListIDmusic.AsString + ', ' +QuotedStr('00000') +', '+ QuotedStr(Trim(cboRoom.Text)) +')';
    AdoQueryTemp.ExecSQL;
    vtPlayList.Next
  end;

  AdoQueryTemp.SQL.Text := 'UPDATE room SET playlist= 1 WHERE ROOMNAME =' + QuotedStr(Trim(cboRoom.Text));
  AdoQueryTemp.ExecSQL;

  AdoQueryTemp.Free;
end;

procedure TfPlaylist.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AdoPlaylist.Active := False;
  Ftambahlagu.Free;
  Action := caFree;
end;

end.
