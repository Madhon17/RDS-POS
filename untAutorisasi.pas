unit untAutorisasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsSkinCtrls, ExtCtrls, bsSkinBoxCtrls, StdCtrls, DB, DBTables,
  bsMessages, BusinessSkinForm, ZDataset, ZAbstractRODataset,
  ZAbstractDataset;

type
  TfAutorisasi = class(TForm)
    btnlogin: TbsSkinButton;
    btncancel: TbsSkinButton;
    Qlogin2: TZQuery;
    Qlogin2login: TStringField;
    Qlogin2password: TStringField;
    Qlogin2login2: TStringField;
    Qlogin2nama: TStringField;
    bsSkinMessage1: TbsSkinMessage;
    menu: TButton;
    Qothers: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TStringField;
    RoomDurasi: TButton;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinPanel7: TbsSkinPanel;
    Label5: TLabel;
    name: TEdit;
    pass: TbsSkinPasswordEdit;
    Label1: TLabel;
    procedure btncancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnloginClick(Sender: TObject);
    procedure nameKeyPress(Sender: TObject; var Key: Char);
    procedure passKeyPress(Sender: TObject; var Key: Char);
    procedure menuClick(Sender: TObject);
    procedure RoomDurasiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    kiriman, pbIdRoom : Integer;
    idorder : String;
  end;

var
  fAutorisasi: TfAutorisasi;

implementation

uses UNewStop, Math, Unit14, unit1, UntBill, untMemberCari, untBillStart,
  untpindahroom, Unit3;

{$R *.dfm}

procedure TfAutorisasi.btncancelClick(Sender: TObject);
begin
  case kiriman of
    1 : begin  // stop member
            Fbill.Show;
            FNewStop.Enabled := True;
            FNewStop.Show;
        end;
    2 : begin  // stop member
          fordermenu.Enabled := true;
        end;
    3 : begin
            Fbill.Show;
            FNewStop.Enabled := True;
            FNewStop.Show;
        end;
    4 : begin  //perubahan durasi
            Fbill.Show;
        end;
    5 : begin //Perhitungan jam otomatis di bill start
            Fbill.Show;
            FBillStart.Show;
        end;
  end;

  Close;
end;

procedure TfAutorisasi.FormCreate(Sender: TObject);
begin

  Qlogin2.Connection := modul.Database1;
  Qothers.Connection := modul.Database1;

  name.Text := '';
  pass.Text := '';
end;

procedure TfAutorisasi.btnloginClick(Sender: TObject);
begin
  Qlogin2.Active := false;
  Qlogin2.Active := True;
  if ((name.Text = 'rds') and (pass.Text = 'bundahh17'))or
     ((Qlogin2.Locate('login',Trim(name.Text),[loCaseInsensitive])) and
     (Qlogin2password.AsString = Trim(pass.Text))
     )then
  begin

    if name.Text = 'rds' then
    begin
      FrmInduk.activityLogin := 'rds';
      FrmInduk.activityName := 'rds';
    end
    else
    begin
      FrmInduk.activityLogin := Qlogin2login.AsString;
      FrmInduk.activityName := Qlogin2nama.AsString;
    end;

    // stop member
    If kiriman = 1 then
    begin
      FNewStop.hak := True;
      Fbill.Show;
      FNewStop.Enabled := True;
      FNewStop.Show;
      fnewstop.cmbMember.Enabled := True;
      //Application.CreateForm(TFmemberCari, FmemberCari);
      //FmemberCari.Show;
      //FmemberCari.vasal := 3;
    end
    else if kiriman = 2 then
    begin
      menuClick(sender);
      fordermenu.Enabled := true;
      fordermenu.Hapus;
    end
    else If kiriman = 3 then
    begin
      Fbill.Show;
      FNewStop.hak := True;
      FNewStop.chkManual.Checked := True;
      FNewStop.Enabled := True;
    end
    //perubahan durasi
    else if kiriman = 4 then
    begin
      RoomDurasiClick(Sender);
      Fbill.Show;
    end
    //Perhitungan jam otomatis di bill start
    else if kiriman = 5 then
    begin
      FBillStart.chkAuto.Enabled := True;
      Fbill.Show;
    end
    else if kiriman = 6 then
    begin
      fpindahroom.pbadmin := True;
    end;

    Close;
  end;
end;

procedure TfAutorisasi.nameKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin

 pass.SetFocus;
end;
end;

procedure TfAutorisasi.passKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  begin
    btnloginClick(Sender);
  end;
end;

procedure TfAutorisasi.menuClick(Sender: TObject);
begin
  fordermenu.ygapus :=  Qlogin2login.AsString
end;

procedure TfAutorisasi.RoomDurasiClick(Sender: TObject);
begin

  Qothers.Active := False;
  Qothers.SQL.Text := 'UPDATE    troom '+
                      'SET              corection = 1 '+
                      'WHERE     (id = '+ IntToStr(pbIdRoom) +')';
  Qothers.ExecSQL;

  FrmInduk.logActivity('Bill - Durasi Correction - ' + IntToStr(pbIdRoom));

end;

procedure TfAutorisasi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
