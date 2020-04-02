unit untMemberCari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, BusinessSkinForm, DBTables, Grids, DBGrids, bsSkinCtrls,
  StdCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFmemberCari = class(TForm)
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Fkeluar: TbsSkinButton;
    DBGrid1: TDBGrid;
    Qcari: TZQuery;
    DScari: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Qcariid: TStringField;
    Qcarinama: TStringField;
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FkeluarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    vasal : Smallint;
  end;

var
  FmemberCari: TFmemberCari;

implementation

uses Unit3, Unit10, untmemberreport, untreportmemberdetail, UNewStop, UntBill,
  Unit1;

{$R *.dfm}

procedure TFmemberCari.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFmemberCari.ComboBox1Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit1Change(Sender);
end;

procedure TFmemberCari.Edit1Change(Sender: TObject);
begin
  if Edit1.Text = '' then exit;
  Qcari.Active:=False;
  if ComboBox1.ItemIndex=0 then
  begin
     Qcari.SQL.Text :=  'SELECT     id, nama '+
                        'FROM         tmember '+
                        'WHERE     (id LIKE '+ QuotedStr('%'+edit1.Text+'%') +' )' +
                        'ORDER BY id';
  end;
  if ComboBox1.ItemIndex=1 then
  begin
     Qcari.SQL.Text :=  'SELECT     id, nama '+
                        'FROM         tmember '+
                        'WHERE     (nama LIKE '+ QuotedStr('%'+edit1.Text+'%') +' )' +
                        'ORDER BY nama';
  end;

  Qcari.Active:=True;
end;

procedure TFmemberCari.FormCreate(Sender: TObject);
begin
	Qcari.Connection := modul.Database1;
//  Qcari.Active := True;
end;

procedure TFmemberCari.FkeluarClick(Sender: TObject);
begin
  frmInduk.Enabled := True;

  if vasal = 0 then
  begin
    fmember.Tmembersql.Locate('id', Qcariid.AsString, [loCaseInsensitive, loPartialKey])
  end;
  if vasal = 1 then
  begin
    fmemberreport.chkidmember.Checked := True;
    fmemberreport.edtidmember.Text := Qcariid.AsString;
  end;
  if vasal = 2 then
  begin
    fdetailmemberreport.chkidmember.Checked := True;
    fdetailmemberreport.edtidmember.Text := Qcariid.AsString;
  end;
  if vasal = 3 then
  begin
    FNewStop.Enabled:= True;
    if not(Qcariid.AsString = '') then
    begin
      FNewStop.edtIdMember.Text := Qcariid.AsString;
      FNewStop.edtNama.Text := Qcarinama.AsString;
      FNewStop.prcUbahMember;
    end
    else
    begin
      if FNewStop.edtIdMember.Text = '' then
      begin
        FNewStop.cmbMember.ItemIndex := 0;
        FNewStop.cmbMemberClick(Self);
      end;
    end;

    FNewStop.hak := True;
    Fbill.Show;
    FNewStop.Show;
  end;

  Close;
end;

procedure TFmemberCari.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  case vasal of
    3 : begin
            Fbill.Show;
        end;
  end;

  frmInduk.Enabled := True;
  Qcari.Active := False;
  Action := caFree;
end;

end.
