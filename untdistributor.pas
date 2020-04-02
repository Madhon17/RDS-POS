unit untdistributor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, bsSkinCtrls, Grids, DBGrids, StdCtrls, DBCtrls,
  Mask, BusinessSkinForm, bsMessages, ExtCtrls;

type
  Tfdistributor = class(TForm)
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    Qid: TQuery;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbfax: TDBEdit;
    dbhp: TDBEdit;
    dbtelpon: TDBEdit;
    dbnama: TDBEdit;
    Qothers: TQuery;
    Label7: TLabel;
    dbCP: TDBEdit;
    DBMemo1: TDBMemo;
    DBCheckBox1: TDBCheckBox;
    Label8: TLabel;
    btnOK: TbsSkinButton;
    DBMemo2: TDBMemo;
    procedure btnsimpanClick(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    pvtutup    : Boolean;
  public
    pvtambah    : Boolean;
  end;

var
  fdistributor: Tfdistributor;

implementation
    uses unit1, unit3, untDistributorMaster ;

{$R *.dfm}
procedure Tfdistributor.btnsimpanClick(Sender: TObject);
var id    : Smallint;
begin
   if dbnama.Text = '' then
  begin
    Beep;
    bsSkinMessage1.MessageDlg('       Nama Distributor belum Diisi..!       ', mtError, [mbOK], 0);
    dbnama.SetFocus;
    exit;
  end;

  if pvtambah then
  begin
    Qid.SQL.Text := 'SELECT MAX(id) AS id ' +
                    'FROM tdistributor';
    qid.Active := True;
    if  qid.FieldByName('id').AsInteger = null then
      id := 1
    else
      id:= qid.FieldByName('id').AsInteger + 1;

    FdistributorMaster.tdistributorid.value := id;
  end;

  FdistributorMaster.Tdistributor.Post;
  FdistributorMaster.Tdistributor.Refresh;
  pvtutup := True;

  Close;
end;

procedure Tfdistributor.TKN13(Sender: TObject; var Key: Char);
begin
   if key=#13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfdistributor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.Enabled := True;
  FdistributorMaster.Enabled := True;

  if not(pvtutup) then
  begin
    FdistributorMaster.Tdistributor.Cancel;
  end;
  Action := caFree;
end;

procedure Tfdistributor.FormCreate(Sender: TObject);
begin
  pvtutup := False;
end;

procedure Tfdistributor.btnbatalClick(Sender: TObject);
begin
  pvtutup := True;
  FdistributorMaster.Tdistributor.Cancel;

  Close;
end;

procedure Tfdistributor.btnOKClick(Sender: TObject);
begin
  pvtutup := True;

  Close;
end;

end.
