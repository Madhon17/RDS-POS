unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, MemDS, VirtualTable, Grids, DBGrids, StdCtrls,
  Spin, Mask, DBCtrls, BusinessSkinForm, bsSkinCtrls, bsMessages, ExtCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tforderroom = class(TForm)
    cmbroom: TComboBox;
    DBGrid1: TDBGrid;
    btnkeluar: TbsSkinButton;
    Qothers: TZQuery;
    DStabel: TDataSource;
    qtabel: TZQuery;
    qtabelidroom: TSmallintField;
    qtabelnamaroom: TStringField;
    qtabelidorder: TStringField;
    qtabelharga_asli: TFloatField;
    qtabeldiskon: TFloatField;
    qtabeldurasi: TSmallintField;
    qtabelJumlah: TFloatField;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    btnedit: TbsSkinButton;
    bsSkinMessage1: TbsSkinMessage;
    Qupdate: TZQuery;
    qtabeltglStart: TDateTimeField;
    qtabeltglStop: TDateTimeField;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtharga: TEdit;
    edtdiskon: TEdit;
    edtjumlah: TEdit;
    SPNdurasi: TSpinEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    procedure boleh;
    procedure larang;
    procedure buka;
    procedure tutup;
    procedure FormCreate(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure cmbroomClick(Sender: TObject);
    procedure qtabelCalcFields(DataSet: TDataSet);
    procedure btneditClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure SPNdurasiChange(Sender: TObject);
    procedure edtdiskonExit(Sender: TObject);
    procedure edtdiskonEnter(Sender: TObject);
    procedure edtjumlahEnter(Sender: TObject);
    procedure edtjumlahExit(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  
    
  private
    { Private declarations }
    pvidorder,  pvnamaroom : String;
    pvharga,  pvdiskon, pvjumlah, totalroom : Real;
    pvdurasi  : Integer;
    pvtglStart, pvtglStop : TDateTime;
    procedure WMNCHitTest(var Msg: TWMNCHitTest); message wm_NCHitTest;
  public
    { Public declarations }
  end;

var
  forderroom: Tforderroom;

implementation
   uses unit1, unit9, unit3, Math, cekTamu;
{$R *.dfm}

procedure Tforderroom.WMNCHitTest(var Msg: TWMNCHitTest);
begin
inherited;
  if Msg.Result = htcaption then Msg.Result := 0;
end;

procedure Tforderroom.larang;
begin
  edtharga.Enabled := False;
  edtdiskon.Enabled := False;
  edtjumlah.Enabled := False;
  SPNdurasi.Enabled := False;
end;


procedure Tforderroom.boleh;
begin
  edtharga.Enabled := True;
  edtdiskon.Enabled := True;
  edtjumlah.Enabled := True;
  SPNdurasi.Enabled := True;
end;

procedure Tforderroom.buka;
begin
  edtharga.Text := '';
  SPNdurasi.Value := 0;
  edtdiskon.Text := '';
  edtjumlah.Text := '';
  btnedit.Visible := True;
  btnkeluar.Visible := True;
  btnsimpan.Visible := False;
  btnbatal.Visible := False;
end;

procedure Tforderroom.tutup;
begin
  btnedit.Visible := False;
  btnkeluar.Visible := False;
  btnsimpan.Visible := True;
  btnbatal.Visible := True;

end;

procedure Tforderroom.FormCreate(Sender: TObject);
 var s: string;
      x,i : Smallint;
begin

  Qothers.Connection := modul.Database1;
  qtabel.Connection := modul.Database1;
  Qupdate.Connection := modul.Database1;

  FrmInduk.pborderroom := true;
  buka;
  btnedit.Visible := False;
  larang;
  Qothers.SQL.Text := ' SELECT     namaroom, idorder ' +
                      ' FROM         troom  ' +
                      'where chekin = 1 order by namaroom' ;
  Qothers.Active := True;

  cmbroom.Clear;
  while not (Qothers.Eof) do
  begin
    s := Qothers.fieldByName('namaroom').AsString;
    x := TRUNC((90-length(s)) / 2);
    s := '';
      for i := 1 to x do
      begin
        s:= s + ' ' ;
      end;
    s := s + Qothers.fieldByName('namaroom').AsString;
    cmbroom.Items.Add(s);
    Qothers.Next
  end;

  cmbroom.ItemIndex := 0;
  cmbroomClick(Sender);
end;

procedure Tforderroom.btnkeluarClick(Sender: TObject);
begin
  forderroom.Close;
end;

procedure Tforderroom.cmbroomClick(Sender: TObject);
begin
  Qothers.Active := False;
  Qothers.SQL.Text := ' SELECT      idorder ' +
                      ' FROM         troom  ' +
                      'where namaroom = ' + QuotedStr(trim(cmbroom.Text));
  Qothers.Active := True;

  pvidorder := Qothers.fieldByName('idorder').AsString;
  pvnamaroom := QuotedStr(trim(cmbroom.text));

  qtabel.Active := False;
  qtabel.SQL.Text := 'SELECT     torder_room.idroom, troom.namaroom, torder_room.idorder, torder_room.harga_asli, torder_room.diskon, torder_room.durasi, torder_room.tglStart, torder_room.tglStop ' +
                     ' FROM         torder_room INNER JOIN ' +
                     ' troom ON torder_room.idroom = troom.id ' +
                     ' where (torder_room.idorder = ' + QuotedStr(pvidorder) + ')' +
                     ' GROUP BY torder_room.idroom, troom.namaroom, torder_room.idorder, torder_room.harga_asli, torder_room.diskon, torder_room.durasi, torder_room.tglStart, torder_room.tglStop ' +
                     ' ORDER BY torder_room.tglStart ' ;
  qtabel.Active := True;

end;

procedure Tforderroom.qtabelCalcFields(DataSet: TDataSet);
begin
  qtabelJumlah.Value := qtabelharga_asli.Value * qtabeldurasi.Value - qtabeldiskon.Value;
end;

procedure Tforderroom.btneditClick(Sender: TObject);

begin
  tutup;
  boleh;
  
  pvtglStart := qtabeltglStart.Value;
  pvtglStop := qtabeltglStop.Value;

  pvidorder := qtabelidorder.Value;
  pvharga := qtabelharga_asli.Value ;
  pvdiskon := qtabeldiskon.Value;
  pvdurasi := qtabeldurasi.Value;


{  if not(pvdiskon=0) then
    spndiskon.Text:= FloatToStr(int(pvdiskon / (pvharga * qtabeldurasi.Value) * 100))
  else
    spndiskon.Text:='0';
}
  pvdiskon := qtabeldiskon.Value;
  pvjumlah := qtabelJumlah.Value;
  edtharga.Text := FormatFloat('#,0',pvharga);
  edtdiskon.Text := FormatFloat('#,0',pvdiskon);
  edtjumlah.Text := FormatFloat('#,0',pvjumlah);
  SPNdurasi.Text := IntToStr(pvdurasi);


end;

procedure Tforderroom.btnbatalClick(Sender: TObject);
begin
  buka;

  larang; 
end;

procedure Tforderroom.btnsimpanClick(Sender: TObject);
begin
  if  cekRoom(trim(cmbroom.Text), Qupdate) then
  begin
    // update ke order_room
    Qupdate.Active := False;
    Qupdate.SQL.Text :=       'UPDATE    torder_room ' +
                                ' SET    durasi = ' + SPNdurasi.Text +
                                         ' , harga_asli =  ' + FormatFloat('0', pvharga) +
                                         ' , diskon =  ' + FormatFloat('0',pvdiskon) +
                                         ' WHERE    (idorder= ' + QuotedStr(pvidorder) +  ')' + ' and tglStart = ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', pvtglStart)) +
                                         ' and tglstop = ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', pvtglStop)) ;


    Qupdate.ExecSQL;

    // update ke troom
    Qupdate.Active := False;
    Qupdate.SQL.Text := ' SELECT idorder, SUM(harga_asli * durasi - diskon) AS total '+
                         ' FROM  torder_room ' +
                         ' WHERE (idorder = ' + QuotedStr(pvidorder)+ ')'+
                         ' GROUP BY idorder  ';
    Qupdate.Active:=True;
    totalroom := Qupdate.FieldByName('total').AsFloat;

    Qupdate.Active := False;
    Qupdate.SQL.Text := ' UPDATE troom '+
                        ' set  roomcharge = ' + FormatFloat('0',totalroom) +
                        ' WHERE (namaroom = ' + pvnamaroom +')';
    Qupdate.ExecSQL;
  end
  else
  begin
    bsSkinMessage1.MessageDlg('     Room status has changed     ' , mtError, [mbOK],0);
  end;
  cmbroomClick(sender);
  buka;
  larang;
end;

procedure Tforderroom.SPNdurasiChange(Sender: TObject);
begin
  pvjumlah := SPNdurasi.Value * pvharga - pvdiskon;
  edtjumlah.Text := FloatToStr(pvjumlah);
  if pvjumlah < 0 then
  begin
    bsSkinMessage1.MessageDlg('Diskon Lebih Besar dari Harga Aslinya',mtInformation,[mbOK],0);
    edtdiskon.SetFocus;
  end;
end;

procedure Tforderroom.edtdiskonExit(Sender: TObject);
var x :  Double;
begin

  try
    x:=StrToFloat(edtdiskon.Text);
  except
    x:=0;
  end;
  if x > pvharga then
      x := pvharga ;

  pvdiskon := x;

  if edtdiskon.Text = '' then
  begin
    edtdiskon.Text := FormatFloat('#,0',pvdiskon);
    exit ;
  end;

  pvdiskon := StrToFloat(edtdiskon.Text);
  pvjumlah := (pvharga * SPNdurasi.Value) - pvdiskon;

  if pvjumlah < 0 then
  begin
    bsSkinMessage1.MessageDlg('Diskon Lebih Besar dari Harga Aslinya',mtInformation,[mbOK],0);
    edtdiskon.SetFocus;
    exit;
  end;

  edtjumlah.Text := FormatFloat('#,0',pvjumlah);
  edtdiskon.Text := FormatFloat('#,0',pvdiskon);
end;

procedure Tforderroom.edtdiskonEnter(Sender: TObject);
begin
  edtdiskon.Text := FormatFloat('0',pvdiskon);
end;

procedure Tforderroom.edtjumlahEnter(Sender: TObject);
begin
  edtjumlah.Text := FormatFloat('0',pvjumlah);
end;

procedure Tforderroom.edtjumlahExit(Sender: TObject);
begin
  edtjumlah.Text := FormatFloat('#,0',pvjumlah);
end;

procedure Tforderroom.TKN13(Sender: TObject; var Key: Char);
begin
   if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;  
end;

procedure Tforderroom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pborderroom := False;
end;

end.
