unit Udiskonroom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, DB, DBTables, Grids, DBGrids,
  bsSkinCtrls, StdCtrls, Spin, ComCtrls, ZDataset;

type
  TFdiskonroom = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    btnSave: TbsSkinXFormButton;
    bsSkinPanel1: TbsSkinPanel;
    bsSkinPanel2: TbsSkinPanel;
    bsSkinPanel3: TbsSkinPanel;
    chkPromo1: TbsSkinCheckRadioBox;
    chkPromo2: TbsSkinCheckRadioBox;
    waktuawal2: TDateTimePicker;
    waktuakhir2: TDateTimePicker;
    tgl_awal2: TDateTimePicker;
    tgl_akhir2: TDateTimePicker;
    spnDiscMenu2: TSpinEdit;
    Label9: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    edtPromo2: TEdit;
    edtID2: TEdit;
    dbKategoriRoom2: TDBGrid;
    chkWed2: TbsSkinCheckRadioBox;
    chkTue2: TbsSkinCheckRadioBox;
    chkThu2: TbsSkinCheckRadioBox;
    chkSun2: TbsSkinCheckRadioBox;
    chkSat2: TbsSkinCheckRadioBox;
    chkMon2: TbsSkinCheckRadioBox;
    chkFri2: TbsSkinCheckRadioBox;
    chkAktif2: TbsSkinCheckRadioBox;
    waktuawal: TDateTimePicker;
    waktuakhir: TDateTimePicker;
    tgl_awal: TDateTimePicker;
    tgl_akhir: TDateTimePicker;
    spnDiscMenu: TSpinEdit;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    edtPromo: TEdit;
    edtID: TEdit;
    dbKategoriRoom: TDBGrid;
    chkWed: TbsSkinCheckRadioBox;
    chkTue: TbsSkinCheckRadioBox;
    chkThu: TbsSkinCheckRadioBox;
    chkSun: TbsSkinCheckRadioBox;
    chkSat: TbsSkinCheckRadioBox;
    chkMon: TbsSkinCheckRadioBox;
    chkFri: TbsSkinCheckRadioBox;
    chkAktif: TbsSkinCheckRadioBox;
    qRoomDisc: TQuery;
    qRoomDisciddisc: TStringField;
    qRoomDiscdiskon: TFloatField;
    qRoomDisckategori: TStringField;
    qRoomDischarga: TFloatField;
    qRoomDisccalHarga: TFloatField;
    qRoomDiscidroom: TSmallintField;
    dsRoomDisc: TDataSource;
    qRoomDisc2: TQuery;
    StringField1: TStringField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    SmallintField1: TSmallintField;
    dsRoomDisc2: TDataSource;
    btnCancel: TbsSkinXFormButton;
    procedure btnSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelClick(Sender: TObject);
    procedure chkPromo1Click(Sender: TObject);
    procedure chkPromo2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdiskonroom: TFdiskonroom;

implementation
       uses unit3, unit1, Usetdis;
{$R *.dfm}

procedure TFdiskonroom.btnSaveClick(Sender: TObject);
var qUpdate : TZQuery;
    vstatus : Smallint;
begin
  vstatus := 0;
  if (chkPromo1.Checked) and (chkPromo2.Checked=False) then vstatus := 1;
  if (chkPromo1.Checked=False) and (chkPromo2.Checked) then vstatus := 2;
  if (chkPromo1.Checked) and (chkPromo2.Checked) then vstatus := 3;

  qUpdate := TZQuery.Create(Self);
  qUpdate.Connection := modul.Database1;
  qUpdate.SQL.Text := ' UPDATE    Tpromo '+
                      ' SET       status = '+ IntToStr(vstatus) +
                      ' WHERE     (idpromo1 = '+QuotedStr(edtID.Text)+
                                 ') AND (idpromo2 = '+QuotedStr(edtID2.Text)+')';
  qUpdate.ExecSQL;
  qUpdate.Destroy;
  FSetupDisc.qJointPromo.Active := False;
  FSetupDisc.qJointPromo.Active := True;
  Close;
end;

procedure TFdiskonroom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.Enabled := True;
  FSetupDisc.Enabled := True;
  Action := caFree;
end;

procedure TFdiskonroom.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFdiskonroom.chkPromo1Click(Sender: TObject);
begin
  if (chkPromo1.Checked = False) and (chkPromo2.Checked = False) then
    chkPromo2.Checked := True;

end;

procedure TFdiskonroom.chkPromo2Click(Sender: TObject);
begin
  if (chkPromo1.Checked = False) and (chkPromo2.Checked = False) then
    chkPromo1.Checked := True;
end;

end.
