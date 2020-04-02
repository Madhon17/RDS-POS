unit untSRequest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, DB, StdCtrls, Mask, DBCtrls, DBTables, ComCtrls,
  Grids, DBGrids, bsMessages, BusinessSkinForm, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractTable;

type
  TFSsong = class(TForm)
    TSrequest: TZTable;
    TSrequestid: TIntegerField;
    TSrequestrequested: TDateTimeField;
    TSrequestartist: TStringField;
    TSrequesttitle: TStringField;
    TSrequestcategory: TSmallintField;
    TSrequestpriority: TSmallintField;
    TSrequestprocessor: TSmallintField;
    TSrequesttanggal: TDateTimeField;
    TSrequestlogin: TStringField;
    TSrequestubah: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DSrequest: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    edtArtist: TDBEdit;
    Label4: TLabel;
    edtTitle: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    tglUbah: TDBEdit;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    Qid: TZQuery;
    Qidid: TIntegerField;
    Qkategori: TZQuery;
    cboPriority: TComboBox;
    dblKategori: TDBLookupComboBox;
    Qkategoriid: TSmallintField;
    Qkategoricategory: TStringField;
    DSkategori: TDataSource;
    Qprocessor: TZQuery;
    DSprocessor: TDataSource;
    dblProcessor: TDBLookupComboBox;
    Qprocessorid: TSmallintField;
    Qprocessornama: TStringField;
    edtRequest: TDBEdit;
    tglProcess: TDateTimePicker;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    DBGrid1: TDBGrid;
    Qarranger: TZQuery;
    DSarranger: TDataSource;
    TSrequestarranger: TSmallintField;
    dblArranger: TDBLookupComboBox;
    Label11: TLabel;
    Qarrangerid: TSmallintField;
    Qarrangerarranger: TStringField;
    TSrequestselesai: TStringField;
    DBCheckBox1: TDBCheckBox;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TSrequestAfterScroll(DataSet: TDataSet);
    procedure tknEnter(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
  private
     tambah : boolean;
  public
    { Public declarations }
  end;

var
  FSsong: TFSsong;

implementation

uses Math, Unit3, untSrequestCari, Unit1;

{$R *.dfm}

procedure TFSsong.buka;
begin
  btnedit.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;
  btnkeluar.Visible:=False;
  DBGrid1.Enabled := False;
end;

procedure TFSsong.tutup;
begin
  btnedit.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;
  btnkeluar.Visible:=True;
  DBGrid1.Enabled := True;
end;

procedure TFSsong.FormCreate(Sender: TObject);
begin

  Qid.Connection := modul.Database1;
  Qkategori.Connection := modul.Database1;
  Qprocessor.Connection := modul.Database1;
  Qarranger.Connection := modul.Database1;
  TSrequest.Connection := modul.Database1;

  FrmInduk.pbSrequest := True;

  Qkategori.Active := True;
  Qprocessor.Active := True;
  Qarranger.Active := True;
  TSrequest.Active := True;
end;

procedure TFSsong.btntambahClick(Sender: TObject);
begin
  tambah := True;
  buka;
  TSrequest.Append;
  TSrequestrequested.Value := Now;
  TSrequestubah.Value := Now;
  tglProcess.DateTime := Now;
  TSrequestlogin.Value := FrmInduk.pbidkasir;
  TSrequestselesai.Value := '0';
  edtTitle.SetFocus;
end;

procedure TFSsong.btnsimpanClick(Sender: TObject);
begin
  if edtArtist.Text = '' then
  begin
    beep;
    edtArtist.SetFocus;
    exit;
  end;
  if edtTitle.Text = '' then
  begin
    beep;
    edtTitle.SetFocus;
    exit;
  end;
  if dblKategori.Text = '' then
  begin
    beep;
    dblKategori.SetFocus;
    exit;
  end;
  if dblArranger.Text = '' then
  begin
    beep;
    dblArranger.SetFocus;
    exit;
  end;

  if dblProcessor.Text = '' then
  begin
    beep;
    dblProcessor.SetFocus;
    exit;
  end;

  tutup;
  if tambah then
  begin
    Qid.Active := False;
    Qid.Active := True;
    TSrequestid.Value := Qidid.Value + 1;
    Qid.Active := False;
  end;

  TSrequestpriority.Value :=  cboPriority.ItemIndex ;
  TSrequestubah.Value  := Now;
  TSrequesttanggal.Value := tglProcess.DateTime;
  TSrequestlogin.Value := FrmInduk.pbidkasir;
  TSrequest.Post;

  tambah := False;

end;

procedure TFSsong.btnbatalClick(Sender: TObject);
begin
  tutup;
  TSrequest.Cancel;

  tambah := False;
end;

procedure TFSsong.btneditClick(Sender: TObject);
begin
  buka;
  TSrequest.Edit;
end;

procedure TFSsong.btnhapusClick(Sender: TObject);
begin
  If TSrequest.RecordCount = 0 then exit;
  TSrequest.Delete;
end;

procedure TFSsong.btnkeluarClick(Sender: TObject);
begin
  Close
end;

procedure TFSsong.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmInduk.pbSrequest := False;

  TSrequest.Active := False;
  Qkategori.Active := False;
  Qprocessor.Active := False;
  Qarranger.Active := False;

  Action := caFree;
end;

procedure TFSsong.TSrequestAfterScroll(DataSet: TDataSet);
begin
    cboPriority.ItemIndex := TSrequestpriority.Value;
    tglProcess.DateTime := TSrequesttanggal.AsDateTime;
end;

procedure TFSsong.tknEnter(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFSsong.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure TFSsong.bsSkinButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFSsongCari,FSsongCari);
  FSsongCari.vasal := 0;
  FSsongCari.ComboBox1.ItemIndex := 0;
  FSsongCari.ComboBox1Click(Sender);
  FSsongCari.Edit1.SetFocus;
  FrmInduk.Enabled := False;
end;

procedure TFSsong.bsSkinButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFSsongCari,FSsongCari);
  FSsongCari.vasal := 0;
  FSsongCari.ComboBox1.ItemIndex := 1;
  FSsongCari.ComboBox1Click(Sender);
  FSsongCari.Edit1.SetFocus;
  FrmInduk.Enabled := False;
end;

procedure TFSsong.bsSkinButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFSsongCari,FSsongCari);
  FSsongCari.vasal := 0;
  FSsongCari.ComboBox1.ItemIndex := 2;
  FSsongCari.ComboBox1Click(Sender);
  FSsongCari.Edit1.SetFocus;
  FrmInduk.Enabled := False;
end;

end.
