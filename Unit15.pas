unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, MemDS, VirtualTable, Grids, DBGrids,
  Spin, Mask, BusinessSkinForm, bsSkinCtrls, DBTables, bsMessages, AEDIT,
  ExtCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tforderdll = class(TForm)
    DSorderdll: TDataSource;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btnedit: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnhapus: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    cmbroom: TComboBox;
    qchekin: TZQuery;
    qupdate: TZQuery;
    qorder: TZQuery;
    qorderidorder: TStringField;
    qorderjumlah: TSmallintField;
    qorderketerangan: TStringField;
    qorderharga: TFloatField;
    bsSkinMessage1: TbsSkinMessage;
    qedit: TZQuery;
    qordertotal: TFloatField;
    grpMenu: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    spnquantity: TSpinEdit;
    edtketerangan: TEdit;
    edtharga: TAEdit;
    edthargatotal: TAEdit;
    DBGrid1: TDBGrid;
    edttotal: TAEdit;
    procedure hittotal;
    procedure orderload;
    procedure larang;
    procedure boleh;
    procedure buka;
    procedure tutup;
    procedure btnbatalClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbhargaExit(Sender: TObject);
    procedure spnquantityChange(Sender: TObject);
    procedure TKNTAB(Sender: TObject; var Key: Char);
    procedure spnquantityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbroomClick(Sender: TObject);
    procedure edthargaExit(Sender: TObject);
    procedure edthargaEnter(Sender: TObject);
    procedure spnquantityExit(Sender: TObject);
    procedure edttotalKeyPress(Sender: TObject; var Key: Char);
    procedure edthargaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    pvtambah, pvedit : Boolean;
    pborderid : String;
    pvharga, tmpharga : Real;
    tmpidorder, tmpketerangan : String;
    tmpjumlah : integer;

    { Private declarations }
  public
    pbIdAnak,pbIdRoom : Smallint;
  end;

var
  forderdll: Tforderdll;

implementation

uses unit1, unit3, unit9, cektamu, Math;

{$R *.dfm}

procedure Tforderdll.larang;
begin
   edtharga.Enabled := False;
   edthargatotal.Enabled := False;
   edtketerangan.Enabled := False;
   spnquantity.Enabled := False;
end;

procedure Tforderdll.boleh;
begin
   edtharga.Enabled := True;
   edthargatotal.Enabled := True;
   edtketerangan.Enabled := True;
   spnquantity.Enabled := True;
end;
procedure Tforderdll.buka;
begin
   btnedit.Visible := True;
   btntambah.Visible := True;
   btnkeluar.Visible := True;
   btnhapus.Visible := True;
   btnsimpan.Visible := False;
   btnbatal.Visible := False;

end;

procedure Tforderdll.tutup;
begin
   btnedit.Visible := False;
   btntambah.Visible := False;
   btnkeluar.Visible := False;
   btnhapus.Visible := False;
   btnsimpan.Visible := True;
   btnbatal.Visible := True;
end;
procedure Tforderdll.btnbatalClick(Sender: TObject);
begin
  buka;
  pvtambah := False;
  pvedit := False;
  DBGrid1.Enabled:=True;
  DBGrid1.SetFocus;
  larang;
end;

procedure Tforderdll.btnkeluarClick(Sender: TObject);
begin
  forderdll.Close;
end;

procedure Tforderdll.btntambahClick(Sender: TObject);
begin
  boleh;
  tutup;
  pvharga := 0;
  edtharga.Text := '' ;
  edthargatotal.Text := '';
  edtketerangan.Text := '';
  edttotal.Text := '';
  edtketerangan.SetFocus;
  spnquantity.Value := 1;
  pvtambah := True;

end;

procedure Tforderdll.hittotal;
begin
    //HITUNG TOTAL
  qchekin.Active := False;
  qchekin.SQL.Text := ' SELECT     SUM(jumlah * harga)AS total '+
                      ' FROM         torder_dll '+
                      ' WHERE     (idorder = '+ QuotedStr(pborderid) + ')';
  qchekin.Active := True;
  edttotal.Text := FormatFloat('#,0', qchekin.FieldByName('total').AsFloat);
  //UPDATE TOTAL MENU DI TABEL ROOM
      Qupdate.Active := False;
      Qupdate.SQL.Text := ' UPDATE    troom '+
                          ' SET   othercharge = '+ FormatFloat('0',qchekin.FieldByName('total').AsFloat) +
                          ' WHERE     (idorder = '+ QuotedStr(pborderid) + ') ';
      Qupdate.ExecSQL;

end;
procedure Tforderdll.btnhapusClick(Sender: TObject);
begin
  if not bsSkinMessage1.MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then exit;

  tmpidorder := pborderid;
  tmpharga := qorderharga.Value;
  tmpjumlah := qorderjumlah.Value;
  tmpketerangan := qorderketerangan.Value;

        //delete
        qupdate.Active := False;
        qupdate.SQL.Text := ' Delete FROM    torder_dll '+
                            ' WHERE     (idorder = '+ QuotedStr(tmpidorder) + ') AND '+
                            '           (harga  = '+ FormatFloat('0',tmpharga) + ') AND '+
                            '           (jumlah  = '+ IntToStr(tmpjumlah) + ') AND '+
                            '           (keterangan  = '+ QuotedStr(tmpketerangan) + ')';
        Qupdate.ExecSQL;
  Qorder.Active := False;
  Qorder.Active := True;
  hittotal;
end;

procedure Tforderdll.btneditClick(Sender: TObject);
begin
  boleh;
  tutup;
  pvtambah := True;
  pvedit := True;

  qchekin.Active := False;
  qchekin.SQL.Text := ' SELECT    COUNT (*) AS jumlah '+
                      ' FROM         torder_dll '+
                      ' WHERE     (idorder = '+ QuotedStr(pbOrderId) + ')';
  qchekin.Active := True;

  if qchekin.FieldByName('jumlah').Value = 0 then
  begin
    bsSkinMessage1.MessageDlg('       Tidak ada Data         ', mtError, [mbOK],0);
    buka;
    larang;
    Exit;
  end;

  tmpidorder := pborderid;
  tmpharga := qorderharga.Value;
  tmpjumlah := qorderjumlah.Value;
  tmpketerangan := qorderketerangan.Value;

  pvharga := tmpharga;
  edtHarga.Text := FormatFloat('#,0',pvharga);
  edtketerangan.Text := tmpketerangan;
  spnquantity.Value := tmpjumlah;
  edthargatotal.Text := FormatFloat('#,0',tmpjumlah * tmpharga);
end;

procedure Tforderdll.orderload;
begin
  qchekin.Active := False;
  qchekin.SQL.Text := 'SELECT     idorder '+
                    'FROM         troom '+
                    'WHERE     (namaroom = ' + QuotedStr(Trim(cmbroom.Text)) +
                    ' )';
  qchekin.Active := True;
  pbOrderId  := qchekin.FieldByName('idorder').AsString;

  Qorder.Active := False;
  Qorder.SQL.Text := ' SELECT     idorder, jumlah, harga, keterangan, (jumlah*harga) as total ' +
                     ' FROM         torder_dll ' +
                     ' where idorder = ' + QuotedStr(pborderid) ;
  qorder.Active := True;

end;




procedure Tforderdll.btnsimpanClick(Sender: TObject);
begin
  if  not(cekRoom(Trim(cmbroom.Text), qchekin)) then
  begin
    bsSkinMessage1.MessageDlg('     Room status has changed     ' , mtError, [mbOK],0);
    exit;
  end;
  if cmbroom.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg('   Incomplete Data    ', mtInformation, [mbOK],0);
    cmbroom.SetFocus;
    Exit;
  end;
  if edtketerangan.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg('  Incomplete Data   ', mtInformation, [mbOK],0);
    edtketerangan.SetFocus;
    exit;
  end;

  If pvharga = 0 then
  begin
      beep;
      bsSkinMessage1.MessageDlg('     Harganya Berapa ?       ', mtInformation, [mbOK],0);
      edtharga.SetFocus;
      exit;
  end;

  if pvedit then
  begin
        //delete dulu data awal
        Qupdate.Active := False;
        Qupdate.SQL.Text := ' Delete FROM    torder_dll '+
                            ' WHERE     (idorder = '+ QuotedStr(tmpIdOrder) + ') AND '+
                            '           (keterangan  = '+ QuotedStr(tmpketerangan) + ') AND '+
                            '           (jumlah  = '+ IntToStr(tmpjumlah) + ') AND '+
                            '           (harga  = '+ FormatFloat('0',tmpharga) + ')';
        Qupdate.ExecSQL;
  end;

  if (spnquantity.Value > 0) then
  begin
    //insert
    qupdate.Active := False;
    qupdate.SQL.Text := ' INSERT INTO torder_dll ' +
                        ' (idorder, jumlah, harga, keterangan) ' +
                        ' VALUES     (:idorder, :jumlah, :harga, :keterangan) ';
    qupdate.Params[0].AsString := pborderid;
    qupdate.Params[1].AsInteger := spnquantity.Value;
    qupdate.Params[2].AsFloat := pvharga;
    qupdate.Params[3].AsString := edtketerangan.Text;
    qupdate.ExecSQL;
  end;

  pvtambah := False;
  pvedit := False;
  buka;
  larang;

  pvharga := 0;
  edtharga.Text := '' ;
  edthargatotal.Text := '';
  edtketerangan.Text := '';

  qorder.Active := False;
  qorder.Active := True;

  hittotal;

  btntambah.SetFocus;
end;

procedure Tforderdll.FormCreate(Sender: TObject);
var s : String;
    i, x : Smallint;
begin

  qchekin.Connection := modul.Database1;
  qupdate.Connection := modul.Database1;
  qorder.Connection := modul.Database1;
  qedit.Connection := modul.Database1;

  FrmInduk.pborderdll := True;
  larang;
  DBGrid1.Enabled := True;

  pvharga := 0;
  edtharga.Text := '' ;
  edthargatotal.Text := '';
  edtketerangan.Text := '';
  edttotal.Text := '';

   qchekin.SQL.Text := ' SELECT     namaroom ' +
                      ' FROM         troom  ' +
                      'where chekin = 1 order by namaroom' ;
   qchekin.Active := True;

   cmbroom.Clear;
   while not(qchekin.Eof) do
   begin
     s :=  qchekin.fieldByName('namaroom').AsString;
     x := TRUNC((80-length(s)) / 2);
     s := '';
      for i := 1 to x do
      begin
        s:= s + ' ' ;
      end;
    s := s + qchekin.fieldByName('namaroom').AsString;
    cmbroom.Items.Add(s);
    qchekin.Next
      
   end;
end;

procedure Tforderdll.dbhargaExit(Sender: TObject);
begin
  spnquantityChange(Sender);
end;

procedure Tforderdll.spnquantityChange(Sender: TObject);
begin
  if spnquantity.Text = '' then exit;
  edthargatotal.Text := FormatFloat('#,#',spnquantity.Value * pvharga);

end;


procedure Tforderdll.TKNTAB(Sender: TObject; var Key: Char);
begin
 
  
 if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tforderdll.spnquantityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY=vk_return then edtketerangan.SetFocus;
end;

procedure Tforderdll.cmbroomClick(Sender: TObject);
begin
  orderload;
  hittotal;
end;

procedure Tforderdll.edthargaExit(Sender: TObject);
begin
  if edtharga.Text = '' then exit;
  pvharga := StrToFloat(edtharga.Text);
  if pvharga < 0 then begin
    beep;
    bsSkinMessage1.MessageDlg('  HARGANYA MINUS ? ',mtError, [mbOK],0);
    edtharga.SetFocus;
    exit;
  end;
  edtharga.Text := FormatFloat('#,0',pvharga);
  spnquantityChange(sender);
end;

procedure Tforderdll.edthargaEnter(Sender: TObject);
begin
  edtharga.Text := FormatFloat('#',pvharga);
  edtharga.SelectAll;
end;

procedure Tforderdll.spnquantityExit(Sender: TObject);
begin
  if spnquantity.Text = '' then exit;
  edthargatotal.Text := FormatFloat('#,#',spnquantity.Value * pvharga);

end;

procedure Tforderdll.edttotalKeyPress(Sender: TObject; var Key: Char);
begin
  if not (((Key>='0')and(Key<='9')) or (key=#8)) then
  key:=#0;
end;

procedure Tforderdll.edthargaKeyPress(Sender: TObject; var Key: Char);
begin
  if not (((Key>='0')and(Key<='9')) or (key=#8)) then
  key:=#0;
  if key=#13 then spnquantity.SetFocus;

end;

procedure Tforderdll.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
     FrmInduk.pborderdll := False;
end;

end.
