unit untinsertlagu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MPlayer, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, bsSkinCtrls, OleCtrls, WMPLib_TLB, ComCtrls, ExtCtrls,
  bsMessages, BusinessSkinForm, jpeg, ACTIVESKINLib_TLB, AEDIT;

type
  Tfinsertlagu = class(TForm)
    Label3: TLabel;
    edtvcd: TEdit;
    edttitle: TEdit;
    edtartist: TEdit;
    edtdisc: TEdit;
    edtpath: TEdit;
    cmbanalog: TComboBox;
    cmbtype: TComboBox;
    OpenDialog1: TOpenDialog;
    btnbrowse: TbsSkinXFormButton;
    Qkategori: TZQuery;
    Qidmusic: TZQuery;
    Qupdate: TZQuery;
    WMP1: TWindowsMediaPlayer;
    lblanalog: TLabel;
    Timer1: TTimer;
    Qedit: TZQuery;
    edtdepan: TEdit;
    trkPosisi: TbsSkinTrackBar;
    TrackBar1: TbsSkinTrackBar;
    tmrPlay: TTimer;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    SkinLabel1: TSkinLabel;
    Skin1: TSkin;
    SkinLabel2: TSkinLabel;
    SkinLabel3: TSkinLabel;
    SkinLabel4: TSkinLabel;
    SkinLabel5: TSkinLabel;
    SkinLabel6: TSkinLabel;
    txtVol: TAEdit;
    TrackBar2: TbsSkinTrackBar;
    txtVol1: TAEdit;
    Panel1: TPanel;
    chkHits: TCheckBox;
    chkNew: TCheckBox;
    function BooltoInt(x : boolean) : Integer;
    procedure PosChange(var Msg: TWmWindowPosChanging) ;
    message WM_WINDOWPOSCHANGING;
    procedure btnbrowseClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbanalogChange(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TrackBar12Change(Sender: TObject);
    procedure btnstopClick(Sender: TObject);
    procedure btnpauseClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btnplayClick(Sender: TObject);
    procedure tmrPlayTimer(Sender: TObject);
    procedure trkPosisiChange(Sender: TObject);
    procedure edtvcdKeyPress(Sender: TObject; var Key: Char);
    procedure Skin1Click(ASender: TObject; const Source: ISkinObject);
    procedure btnMiniClick(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure btnFullClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    kunciposisi : Boolean;
  public
    pbidmusic, pbtype : Integer;
    pbtambah, pbMini    : Boolean;
    { Public declarations }
  end;

var
  finsertlagu: Tfinsertlagu;

implementation
   uses unit1, unit3, unttambahlagu, StrUtils;
{$R *.dfm}

function Tfinsertlagu.BooltoInt(x: boolean): Integer;
begin
  if x then result := 1 else Result := 0;
end;

procedure Tfinsertlagu.PosChange
   (var Msg: TWmWindowPosChanging) ;
begin
  if kunciposisi then
  begin
    Msg.WindowPos.x := Left;
    Msg.WindowPos.y := Top;
    Msg.Result := 0;
  end;
end;

procedure Tfinsertlagu.btnbrowseClick(Sender: TObject);
var pathdpn, pthblkng, fullpath : String;
    pjngpath    : Integer;
begin
  if OpenDialog1.Execute then
  begin
    fullpath := OpenDialog1.FileName;
    btnstopClick(Sender);
    pjngpath := StrLen(Pchar(fullpath));
    pthblkng := RightStr(fullpath,pjngpath-3);
    edtpath.Text := pthblkng;
    pathdpn := LeftStr(fullpath,pjngpath-(pjngpath-3)) ;
    edtdepan.Text := pathdpn;
    btnplayClick(Sender);
  end;
end;

procedure Tfinsertlagu.BtnSaveClick(Sender: TObject);
begin
  if edtvcd.Text = '' then
  begin
    Beep;
    edtvcd.SetFocus;
    Exit;
  end;
  if edttitle.Text = '' then
  begin
    Beep;
    edttitle.SetFocus;
    Exit;
  end;
  if edtartist.Text = '' then
  begin
    Beep;
    edtartist.SetFocus;
    Exit;
  end;
  if edtdepan.Text = '' then
  begin
    Beep;
    edtdepan.SetFocus;
    Exit;
  end;
  if edtpath.Text = '' then
  begin
    Beep;
    edtpath.SetFocus;
    Exit;
  end;

 if pbtambah then
 begin
    Qidmusic.Active := False;
    Qidmusic.SQL.Text := ' Select max(idmusic) AS MAX from masters ';
    Qidmusic.Active := True;
    pbidmusic := Qidmusic.fieldByName('MAX').AsInteger + 1;
    Qidmusic.Active := False;

    Qkategori.Locate('typename',cmbtype.Text,[loCaseInsensitive]);
    pbtype := Qkategori.fieldByName('type').AsInteger;

    Qupdate.Active := False;
    Qupdate.SQL.Text := ' INSERT INTO masters ' +
                        ' (IDMUSIC, VCD, TITLE, SINGER, DISC, PATH, ANALOG, FLAG, TYPE, VOL, HITS, NEW ) ' +
                        ' VALUES (:IDMUSIC , :VCD , :TITLE , :SINGER , :DISC , :PATH , :ANALOG, :FLAG, :TYPE, :VOL, :HITS, :NEW ) ';

    Qupdate.paramByName('IDMUSIC').AsInteger := pbidmusic;
    Qupdate.paramByName('VCD').AsString := edtvcd.Text;
    Qupdate.paramByName('TITLE').AsString := edttitle.Text;
    Qupdate.paramByName('SINGER').AsString := edtartist.Text;
    Qupdate.paramByName('DISC').AsString := edtdisc.Text;
    Qupdate.paramByName('PATH').AsString := edtpath.Text;
    Qupdate.paramByName('ANALOG').AsString := cmbanalog.Text;
    Qupdate.ParamByName('FLAG').AsString := 'Y';
    Qupdate.paramByName('TYPE').AsInteger := pbtype;
    Qupdate.paramByName('VOL').AsInteger := TrackBar1.Value;
    Qupdate.paramByName('HITS').AsInteger := BooltoInt(chkHits.Checked);
    Qupdate.paramByName('NEW').AsInteger := BooltoInt(chkNew.Checked);
    Qupdate.ExecSQL;

    with Ftambahlagu do
    begin
      VTcari.Append;
      VTcariIDMUSIC.Value := pbidmusic;
      VTcariVCD.Value := edtvcd.Text;
      VTcariTITLE.Value := edttitle.Text;
      VTcariSINGER.Value := edtartist.Text;
      VTcari.Post;
    end;
  end
  else
  begin
    Qkategori.Locate('typename',cmbtype.Text,[loCaseInsensitive]);
    pbtype := Qkategori.fieldByName('type').AsInteger;

    Qupdate.Active := False;
    Qupdate.SQL.Text := ' UPDATE  masters ' +
                        ' SET VCD = :VCD ' +
                        ', TITLE = :TITLE  ' +
                        ', SINGER =:SINGER  ' +
                        ', DISC = :DISC   ' +
                        ', PATH =  :PATH   ' +
                        ', ANALOG = :ANALOG  ' +
                        ', TYPE = :TYPE    ' +
                        ', VOL =  :VOL    ' +
                        ', HITS =  :HITS    ' +
                        ', NEW =  :NEW    ' +
                        ' WHERE (IDMUSIC= '+ IntToStr(pbidmusic)+ ')';
    Qupdate.paramByName('VCD').AsString := edtvcd.Text;
    Qupdate.paramByName('TITLE').AsString := edttitle.Text;
    Qupdate.paramByName('SINGER').AsString := edtartist.Text;
    Qupdate.paramByName('DISC').AsString := edtdisc.Text;
    Qupdate.paramByName('PATH').AsString := edtpath.Text;
    Qupdate.paramByName('ANALOG').AsString := cmbanalog.Text;
    Qupdate.paramByName('TYPE').AsInteger := pbtype;
    Qupdate.paramByName('VOL').AsInteger := TrackBar1.Value;
    Qupdate.paramByName('HITS').AsInteger := BooltoInt(chkHits.Checked);
    Qupdate.paramByName('NEW').AsInteger := BooltoInt(chkNew.Checked);
    Qupdate.ExecSQL;
    with Ftambahlagu do
    begin
      VTcari.Edit;
      VTcariVCD.Value := edtvcd.Text;
      VTcariTITLE.Value := edttitle.Text;
      VTcariSINGER.Value := edtartist.Text;
      VTcari.Post;
    end;
  end;

  Ftambahlagu.VTcari.Locate('IDMUSIC',pbidmusic,[loCaseInsensitive]);
  Close;
end;

procedure Tfinsertlagu.FormCreate(Sender: TObject);
begin
    FrmInduk.pbinsertlagu := True;

    Qkategori.Active := False;
    Qkategori.SQL.Text := 'SELECT TYPE, TYPENAME FROM kategori order By type';
    Qkategori.Active := True;
    cmbtype.Clear;
    while not (Qkategori.Eof) do
    begin
      cmbtype.Items.Add(Qkategori.fieldByName('typename').AsString);
      Qkategori.Next;
    end;
end;

procedure Tfinsertlagu.cmbanalogChange(Sender: TObject);
begin
try
  case cmbanalog.ItemIndex of
  0 : begin
      iwmpcontrols3(WMP1.controls).currentAudioLanguageIndex := 1;
      lblanalog.Caption := 'STEREO';
      END;
  1 : BEGIN
      iwmpcontrols3(WMP1.controls).currentAudioLanguageIndex := 2;
      lblanalog.Caption := 'MONO-LEFT';
      END;
  2 : BEGIN
      iwmpcontrols3(WMP1.controls).currentAudioLanguageIndex := 3;
      lblanalog.Caption := 'MONO-RIGHT';
      END;
  end;
except
  exit;
end;
end;

procedure Tfinsertlagu.btnExitClick(Sender: TObject);
begin
  btnstopClick(Sender);
  finsertlagu.Close;
end;

procedure Tfinsertlagu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  tmrPlay.Enabled := False;
  Action := caFree;
  FrmInduk.pbinsertlagu := False;
end;

procedure Tfinsertlagu.TrackBar12Change(Sender: TObject);
begin

  WMP1.settings.volume := TrackBar1.Value;
  txtVol.Text := IntToStr(TrackBar1.Value);
  TrackBar2.Value := TrackBar1.Value;
end;

procedure Tfinsertlagu.btnstopClick(Sender: TObject);
begin
  WMP1.controls.stop;
  tmrPlay.Enabled := False;
end;

procedure Tfinsertlagu.btnpauseClick(Sender: TObject);
begin
  WMP1.controls.pause;
  tmrPlay.Enabled := False;
end;

procedure Tfinsertlagu.Timer1Timer(Sender: TObject);
begin
try
  case cmbanalog.ItemIndex of
  0 : begin
      iwmpcontrols3(WMP1.controls).currentAudioLanguageIndex := 1;
      lblanalog.Caption := 'STEREO';
      END;
  1 : BEGIN
      iwmpcontrols3(WMP1.controls).currentAudioLanguageIndex := 2;
      lblanalog.Caption := 'MONO-LEFT';
      END;
  2 : BEGIN
      iwmpcontrols3(WMP1.controls).currentAudioLanguageIndex := 3;
      lblanalog.Caption := 'MONO-RIGHT';
      END;
  end;
  Timer1.Enabled := False;
except
  Timer1.Enabled := True;
end

end;

procedure Tfinsertlagu.btnplayClick(Sender: TObject);
begin
  if not(WMP1.playState = 2) then
  begin
    WMP1.URL := edtdepan.Text + edtpath.Text;
    trkPosisi.MaxValue := 0;
  end;


  WMP1.controls.play;
  Timer1.Enabled := True;
  tmrPlay.Enabled := True;
end;

procedure Tfinsertlagu.tmrPlayTimer(Sender: TObject);
begin
{  try
    if (trkPosisi.MaxValue = 0) then
    begin
      trkPosisi.MaxValue := round(WMP1.currentMedia.duration);
    end;
    trkPosisi.Value := round(WMP1.controls.currentPosition);
  except
    trkPosisi.Value := 0;
  end; } 
end;

procedure Tfinsertlagu.trkPosisiChange(Sender: TObject);
begin
if trkPosisi.Focused then
begin
  try
    WMP1.controls.currentPosition := trkPosisi.Value;
  except
    trkPosisi.Value := 0;
  end;
end;
end;

procedure Tfinsertlagu.edtvcdKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfinsertlagu.Skin1Click(ASender: TObject;
  const Source: ISkinObject);
var tombol : WideString;
begin
  Source.GetName(tombol);
  if tombol = 'btnplay' then btnplayClick(Self);
  if tombol = 'btnpause' then btnpauseClick(Self);
  if tombol = 'btnstop' then btnstopClick(Self);
  if tombol = 'btnsave' then BtnSaveClick(Self);
  if tombol = 'btncancel' then btnCancelClick(Self);
  if tombol = 'btnmini' then btnMiniClick(Self);
  if tombol = 'btnfull' then btnFullClick(Self);
  if tombol = 'btnclose' then btnExitClick(Self);
end;

procedure Tfinsertlagu.btnMiniClick(Sender: TObject);
begin
//  finsertlagu.WindowState := wsNormal;

  Skin1.ApplySkin(handle);
  Skin1.LoadSkin(ExtractFilePath (Application.ExeName)+'image\sknlagu.skn');
  Skin1.ApplySkinByName(handle, 'sknmini');
  kunciposisi := False;
  pbMini:= True;
end;

procedure Tfinsertlagu.TrackBar2Change(Sender: TObject);
begin
  WMP1.settings.volume := TrackBar1.Value;
  txtVol1.Text := IntToStr(TrackBar1.Value);
  TrackBar1.Value := TrackBar2.Value;
end;

procedure Tfinsertlagu.btnFullClick(Sender: TObject);
begin
  Skin1.ApplySkin(handle);
  Skin1.LoadSkin(ExtractFilePath (Application.ExeName)+'image\sknlagu.skn');
  Skin1.ApplySkinByName(handle, 'sknlagu');
//  finsertlagu.WindowState := wsNormal;
  kunciposisi := False;
  pbMini := True;
end;

procedure Tfinsertlagu.FormShow(Sender: TObject);
begin
{//try
  if pbFull then
    btnFullClick(Sender)
  else
  begin
    Skin1.LoadSkin(ExtractFilePath (Application.ExeName)+'image\sknlagu.skn');
    btnMiniClick(Sender);
  end;
//except
//  exit;
//end; }
end;

procedure Tfinsertlagu.btnCancelClick(Sender: TObject);
begin
  btnstopClick(Sender);
  Close;
end;

end.
