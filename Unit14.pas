unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, VirtualTable, Grids, DBGrids, StdCtrls, DBTables,
  Mask, DBCtrls, Spin, BusinessSkinForm, bsSkinCtrls, ExtCtrls, AEDIT,
  bsMessages, OleCtrls, ShockwaveFlashObjects_TLB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfordermenu = class(TForm)
    qmenu: TZQuery;
    qmenuid: TStringField;
    qmenukategori: TSmallintField;
    qmenumenu: TStringField;
    qmenuharga: TFloatField;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    qkatmenu: TZQuery;
    DSkatmenu: TDataSource;
    DScarimenu: TDataSource;
    cmbroom: TComboBox;
    Qothers: TZQuery;
    grpMenu: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    cmbkategori: TComboBox;
    Panel1: TPanel;
    DBGordermenu: TDBGrid;
    btnCariMenu: TbsSkinButton;
    Qorder: TZQuery;
    DSorder: TDataSource;
    Qorderidmenu: TStringField;
    Qordermenu: TStringField;
    Qorderharga_asli: TFloatField;
    Qorderdiskon: TFloatField;
    Qorderqty: TSmallintField;
    Qorderhardisk: TFloatField;
    Qordertotal: TFloatField;
    bsSkinMessage1: TbsSkinMessage;
    Qupdate: TZQuery;
    edtTotal: TAEdit;
    btnedit: TbsSkinButton;
    btnhapus: TbsSkinButton;
    vtCashOrder: TVirtualTable;
    vtCashOrderidmenu: TStringField;
    vtCashOrdermenu: TStringField;
    vtCashOrderharga_asli: TFloatField;
    vtCashOrderdiskon: TFloatField;
    vtCashOrderqty: TIntegerField;
    vtCashOrderhardisk: TFloatField;
    vtCashOrdertotal: TFloatField;
    Label8: TLabel;
    edtNamaCs: TEdit;
    Qcs: TZQuery;
    Qcslogin: TStringField;
    Qcsnama: TStringField;
    edtCs: TAEdit;
    vtCashOrdercs: TStringField;
    DBmenu: TDBGrid;
    rdoKategori: TRadioButton;
    rdoID: TRadioButton;
    rdoMenu: TRadioButton;
    Label5: TLabel;
    edtidmenu: TAEdit;
    edtcarimenu: TAEdit;
    dbcs: TDBGrid;
    Dscs: TDataSource;
    Qidso: TZQuery;
    Qdetaiso: TZQuery;
    Qorderidso: TStringField;
    DBOrder: TDBGrid;
    DsVtOrder: TDataSource;
    VtOrder: TVirtualTable;
    VtOrderidmenu: TStringField;
    VtOrderharga_asli: TFloatField;
    VtOrderdiskon: TFloatField;
    VtOrderqty: TIntegerField;
    VtOrdertotal: TFloatField;
    VtOrdermenu: TStringField;
    SaveOrder: TButton;
    Qcari: TZQuery;
    btnDeleteVtOrder: TbsSkinButton;
    btnExit: TbsSkinButton;
    bsSkinPanel7: TbsSkinPanel;
    Label2: TLabel;
    spndiskon: TSpinEdit;
    persen: TLabel;
    edtPotongan: TAEdit;
    Label4: TLabel;
    spnquantity: TSpinEdit;
    edtafterquantity: TAEdit;
    Label3: TLabel;
    edtAfterDisc: TAEdit;
    btntambah: TbsSkinButton;
    btnbatal: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    btnkeluar: TbsSkinButton;
    Memo1: TMemo;
    bsSkinButton1: TbsSkinButton;
    bsSkinButton2: TbsSkinButton;
    bsSkinButton3: TbsSkinButton;
    edtLokasi: TAEdit;
    Label7: TLabel;

    procedure prctambah;

    procedure larang;
    procedure boleh;
    procedure buka;
    procedure tutup;

    procedure CashOrderLoad;
    procedure CashOrderHitTotal;
    procedure CashOrderHapus;
    procedure CashOrdersimpan;

    procedure orderload;
    procedure hitTotal;
    procedure Hapus;
    procedure Edit;
    procedure Simpan;
    procedure prcPrintOrder(idt : string);


    procedure FormCreate(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure edtidmenuExit(Sender: TObject);
    procedure spnquantityChange(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure edtpotonganExit(Sender: TObject);
    procedure spnquantityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spndiskonChange(Sender: TObject);
    procedure edtcarimenuExit(Sender: TObject);
    procedure DBmenuDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cmbroomClick(Sender: TObject);
    procedure Tekan13(Sender: TObject; var Key: Char);
    procedure edtidmenuEnter(Sender: TObject);
    procedure edtcarimenuEnter(Sender: TObject);
    procedure edtpotonganEnter(Sender: TObject);
    procedure edtidmenuChange(Sender: TObject);
    procedure edtidmenuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcarimenuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qmenuAfterScroll(DataSet: TDataSet);
    procedure edtcarimenuChange(Sender: TObject);
    procedure DBmenuDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBmenuEnter(Sender: TObject);
    procedure vtCashOrderCalcFields(DataSet: TDataSet);
    procedure edtCsChange(Sender: TObject);
    procedure edtCsExit(Sender: TObject);
    procedure edtCsEnter(Sender: TObject);
    procedure edtidmenuKeyPress(Sender: TObject; var Key: Char);
    procedure spnquantityEnter(Sender: TObject);
    procedure spnquantityDblClick(Sender: TObject);
    procedure DBGordermenuDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGordermenuDblClick(Sender: TObject);
    procedure edtcarimenuKeyPress(Sender: TObject; var Key: Char);
    procedure cmbkategoriEnter(Sender: TObject);
    procedure cmbkategoriChange(Sender: TObject);
    procedure DBmenuKeyPress(Sender: TObject; var Key: Char);
    procedure edtcarimenuKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtidmenuKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCariMenuClick(Sender: TObject);
    procedure dbcsDblClick(Sender: TObject);
    procedure dbcsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtNamaCsEnter(Sender: TObject);
    procedure VtOrderCalcFields(DataSet: TDataSet);
    procedure SaveOrderClick(Sender: TObject);
    procedure btnDeleteVtOrderClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure bsSkinButton1Click(Sender: TObject);
    procedure bsSkinButton2Click(Sender: TObject);
    procedure bsSkinButton3Click(Sender: TObject);
    procedure DBOrderDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    
  private
    pvtambah, pvedit  : Boolean;
    pvpotongan : Real;
    ii : integer;

  public
    pbOrderId, ygapus : String;
    pbIdAnak,pbIdRoom : Smallint;
  end;

var
  fordermenu: Tfordermenu;

implementation

uses unit1, unit9, unit3, cekTamu, Math, untBillCashOrder, dateutils,
     urivewOrder, UntAutorisasi, untOrderDelete, StrUtils, ShellApi;

{$R *.dfm}

procedure Tfordermenu.prcPrintOrder(idt : string);
var s, t, Str1, Str2, Str3, Narom, NaroomP, orderOK, wkt, wktp : String;
    F : TextFile;
begin
  Str1 := 'ID Menu';
  Str2 := 'NAMA MENU';
  Str3 := 'QTY.';
  Narom := Trim(cmbroom.Text);

  AssignFile(F,'c:\test.txt');
  Rewrite(F);
  Write (F, 'SLIP ORDER');
  NaroomP := Format('%30s',[Narom]);
  Write(F,NaroomP);
  Writeln(F,'');
  orderOK := Format('%0s %29s',[pbOrderId, 'SO'+idt]);
  Writeln (F,orderOK );
  Writeln(f,'');
  Writeln(F,'Waiters   : '+ edtcs.Text);
  writeln(f,'----------------------------------------');
  s:=Format('%0s %10s %20s', [Str1, Str2, Str3]);
  writeln(f,s);

  writeln(f,'----------------------------------------');
  VtOrder.First;
  while not(VtOrder.Eof) do
  begin
    s:=Format('%0s', [VtOrderidmenu.AsString] );
    s:=  s + LeftStr (' '+ VtOrdermenu.AsString,4500);
    t := RightStr ('                                   '+ IntToStr (VtOrderqty.AsInteger) ,500);
    Writeln(f,s);
    Writeln (f,t);
    Writeln (f,'');
    VtOrder.Next;
  end;
  Writeln(f,'');
  writeln(f,'----------------------------------------');
  Write (F, 'Note :');
  Writeln(f,'');
  Write(f, memo1.text);
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  wkt := FormatDateTime('dd-MM-YY HH:MM:SS',now);
  wktp := Format('%40s',[wkt]);
  Writeln(f,wktp);
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  Writeln(f,'');
  CloseFile(f);

  case edtLokasi.Tag of
    1 : ShellExecute(Handle, 'open', 'bar.bat','',nil, SW_HIDE);
    2 : ShellExecute(Handle, 'open', 'dapur.bat','',nil, SW_HIDE);
    3 : ShellExecute(Handle, 'open', 'markas.bat','',nil, SW_HIDE)
  end;
end;
procedure Tfordermenu.boleh;
begin
   edtidmenu.Enabled := True;
   cmbkategori.Enabled := True;
   spndiskon.Enabled := True;
   edtpotongan.Enabled := True;
   edtafterdisc.Enabled := True;
   spnquantity.Enabled := True;
   edtafterquantity.Enabled := True;
   edtcarimenu.Enabled := True;
   btnCariMenu.Enabled := True;
end;

procedure Tfordermenu.larang;
begin
   spndiskon.Enabled := False;
   edtpotongan.Enabled := False;
   edtafterdisc.Enabled := False;
   spnquantity.Enabled := False;
   edtafterquantity.Enabled := False;
end;

procedure Tfordermenu.tutup;
begin
    btnedit.Visible := false;
    btntambah.Visible := True;
    btnhapus.Visible := True;
    btnkeluar.Visible := True;
    btnsimpan.Visible := False;
    btnbatal.Visible := False;
end;

procedure Tfordermenu.buka;
begin
    btnedit.Visible := False;
    btntambah.Visible := False;
    btnhapus.Visible := False;
    btnkeluar.Visible := False;
    btnsimpan.Visible := True;
    btnbatal.Visible := True;
end;

procedure Tfordermenu.prctambah;
begin
  buka;
  boleh;
  pvpotongan := 0;
  cmbkategori.ItemIndex := 0;

  edtidmenu.Text := '';
  edtcarimenu.Text := '';
  spndiskon.Value := 0 ;
  edtpotongan.Text := '' ;
  edtafterdisc.Text := '';
  spnquantity.Value := 1 ;
  edtafterquantity.Text := '';
  pvtambah := True;
  if edtCs.Text = '' then
  begin
    edtCs.Text := FrmInduk.pbidkasir;
    edtCsChange(Self);
  end;
end;

procedure Tfordermenu.orderload;
begin
  DSorder.DataSet := Qorder;
  Qothers.Active := False;
  Qothers.SQL.Text := 'SELECT     idorder '+
                    'FROM         troom '+
                    'WHERE     (namaroom = ' + QuotedStr(Trim(cmbroom.Text)) +
                    ' )';
  Qothers.Active := True;

  pbOrderId  := Qothers.FieldByName('idorder').AsString;

  Qorder.Active := False;
  Qorder.SQL.Text := 'SELECT     torder_menu.idmenu, tmenu.menu, torder_menu.harga_asli, torder_menu.diskon, torder_menu.qty, '+
                '      torder_menu.harga_asli - torder_menu.diskon AS hardisk, (torder_menu.harga_asli - torder_menu.diskon) * torder_menu.qty AS total,  torder_menu.idso '+
                'FROM         torder_menu INNER JOIN '+
                '      tmenu ON torder_menu.idmenu = tmenu.id '+
                'WHERE     (torder_menu.idorder = :idorder) and (torder_menu.status=1) '+
                'ORDER BY tmenu.menu ';
  Qorder.ParamByName('idorder').AsString := Qothers.FieldByName('idorder').AsString;
  Qorder.Active := True;
end;

procedure Tfordermenu.hitTotal;
begin
  //HITUNG TOTAL
  Qothers.Active := False;
  Qothers.SQL.Text := ' SELECT     SUM((harga_asli - diskon) * qty) AS total '+
                      ' FROM         torder_menu '+
                      ' WHERE     (idorder = '+ QuotedStr(pbOrderId) + ')  and (status=1)' +
                      ' GROUP BY idorder ';
  Qothers.Active := True;
  edtTotal.Text := FormatFloat('#,0', Qothers.FieldByName('total').AsFloat);
  //UPDATE TOTAL MENU DI TABEL ROOM
      Qupdate.Active := False;
      Qupdate.SQL.Text := ' UPDATE    troom '+
                          ' SET               menucharge = '+ FormatFloat('0',Qothers.FieldByName('total').AsFloat) +
                          ' WHERE     (idorder = '+ QuotedStr(pbOrderId) + ') ';
      Qupdate.ExecSQL;
end;

procedure Tfordermenu.Simpan;
var pidmenu : string;
begin
  if cmbroom.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg('        Please select a room      ' , mtError, [mbOK],0);
    cmbroom.SetFocus;
    exit;
  end;

  if  not(cekRoom(trim(cmbroom.Text), Qothers)) then
  begin
    bsSkinMessage1.MessageDlg('     Room status has changed     ' , mtError, [mbOK],0);
    exit;
  end;

  pidmenu := qmenuid.Value;

  if (spnquantity.Value = 0)  then
  begin
    beep;
    bsSkinMessage1.MessageDlg('       Data tidak valid         ', mtError, [mbOK], 0);
    spnquantity.SetFocus;
    exit;
  end;

 // modul.Database1.StartTransaction;

 { if pvedit then
  begin
        //delete dulu data awal
        Qupdate.Active := False;
        Qupdate.SQL.Text := ' Delete FROM    torder_menu '+
                            ' WHERE     (idorder = '+ QuotedStr(tmpIdOrder) + ') AND '+
                            '           (idmenu  = '+ QuotedStr(tmpIdMenu) + ') AND '+
                            '           (qty  = '+ IntToStr(tmpqty) + ') AND '+
                            '           (diskon  = '+ FormatFloat('0',tmpdiskon) + ')';
        Qupdate.ExecSQL;
  end;

    Qothers.Active := False;
    Qothers.SQL.Text := ' SELECT     COUNT(*) AS jumlah, SUM(qty) AS qty '+
                        ' FROM         torder_menu '+
                        ' WHERE     (idorder = '+ QuotedStr(pbOrderId) + ') AND '+
                        '          (idmenu  = '+ QuotedStr(edtidmenu.Text) + ') AND '+
                        '          (diskon  = '+ FormatFloat('0',pvPotongan) + ')';
    Qothers.Active := True;

    if (Qothers.FieldByName('jumlah').AsInteger = 0) then
    begin    }
      if (spnquantity.Value > 0) then
      begin
        //insert
      { Qupdate.Active := False;
        Qupdate.SQL.Text := ' INSERT INTO torder_menu ' +
                            ' (idorder, idmenu, harga_asli, diskon, qty, cs, status,idso) ' +
                            ' VALUES     (:idorder, :idmenu, :harga_asli, :diskon, :qty, :cs, :status, :idso) ';
        Qupdate.Prepare;
        Qupdate.Params[0].AsString := pbOrderId;
        Qupdate.Params[1].AsString := qmenuid.AsString;
        Qupdate.Params[2].AsFloat := qmenuharga.AsFloat;
        Qupdate.Params[3].AsFloat := pvpotongan;
        Qupdate.Params[4].AsInteger := spnquantity.Value;
        Qupdate.Params[5].AsString := Qcslogin.AsString;
        Qupdate.Params[6].AsBoolean  := true;
        Qupdate.Params[7].AsString := idt;
        Qupdate.ExecSQL;   }
        
        VtOrder.Active := True;
        if VtOrder.Locate('idmenu', qmenuid.AsString, []) then
        begin
          VtOrder.Edit;
          VtOrderqty.AsInteger  := VtOrderqty.AsInteger + spnquantity.Value;
          VtOrder.Post;
        end
        else
        begin
          VtOrder.Append;
          VtOrderidmenu.Value := pbOrderId;
          VtOrderidmenu.Value := qmenuid.AsString;
          VtOrdermenu.Value := qmenumenu.AsString;
          VtOrderharga_asli.Value := qmenuharga.AsFloat;
          VtOrderdiskon.Value  := pvpotongan;
          VtOrderqty.Value  := spnquantity.Value;
          VtOrder.Post;
        end;

      end
      else
      begin
        beep;
        bsSkinMessage1.MessageDlg('    Data tidak valid     ', mtError, mbOKCancel,0);
        spnquantity.SetFocus;
      //  modul.Database1.Rollback;
        exit;
      end;
  {  end
    else
    begin
      if (Qothers.FieldByName('qty').AsInteger + spnquantity.Value > 0) then
      begin
        //update
        Qupdate.Active := False;
        Qupdate.SQL.Text := ' UPDATE    torder_menu '+
                            ' SET              qty = '+ IntToStr(Qothers.FieldByName('qty').AsInteger + spnquantity.Value) +
                            ', cs = ' + QuotedStr(Qcslogin.AsString) +
                            ', status = '+  +
                            ' WHERE     (idorder = '+ QuotedStr(pbOrderId) + ') AND '+
                            '           (idmenu  = '+ QuotedStr(edtidmenu.Text) + ') AND '+
                            '           (diskon  = '+ FormatFloat('0',pvPotongan) + ')';
        Qupdate.ExecSQL;
      end
      else
      if (Qothers.FieldByName('qty').AsInteger + spnquantity.Value = 0) then
      begin
        //delete
        Qupdate.Active := False;
        Qupdate.SQL.Text := ' Delete FROM    torder_menu '+
                            ' WHERE     (idorder = '+ QuotedStr(pbOrderId) + ') AND '+
                            '           (idmenu  = '+ QuotedStr(edtidmenu.Text) + ') AND '+
                            '           (diskon  = '+ FormatFloat('0',pvPotongan) + ')';
        Qupdate.ExecSQL;
      end
      else
      if (Qothers.FieldByName('qty').AsInteger + spnquantity.Value < 0) then
      begin
         //lebih kecil dari 0 tidak valid
         bsSkinMessage1.MessageDlg('    Data tidak valid     ', mtError, [mbOK],0);
         spnquantity.SetFocus;
         modul.Database1.Rollback;
         exit;
      end
    end;   }

{
  Qdetaiso.Active := False;
  Qdetaiso.SQL.Text := 'INSERT INTO Tso (idso, idorder, jam)'+
                       'VALUES     ('+ QuotedStr (idt)+','+QuotedStr(pbOrderId)+','+ QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss', now)) +')';
  Qdetaiso.ExecSQL;

  }


 // modul.Database1.Commit;
  Qorder.Locate('idmenu', pidmenu,[loCaseInsensitive]);
end;

procedure Tfordermenu.CashOrderHapus;
begin
  if vtCashOrder.RecordCount = 0 then
  begin
      bsSkinMessage1.MessageDlg('       Tidak ada Data         ', mtCustom, [mbOK],0);
      Exit;
  end;
  if  not(bsSkinMessage1.MessageDlg('     Hapus Order Menu     ', mtConfirmation, mbOKCancel, 0) = mrOk) then exit;
  vtCashOrder.Delete;
  CashOrderHitTotal;
end;

procedure Tfordermenu.Edit;
begin
//
end;

procedure Tfordermenu.Hapus;
begin
  Qothers.Active := False;
  Qothers.SQL.Text := ' SELECT     COUNT(*) AS jumlah '+
                      ' FROM         torder_menu '+
                      ' WHERE     (idorder = '+ QuotedStr(pbOrderId) + ')';
  Qothers.Active := True;

  if Qothers.FieldByName('jumlah').Value = 0 then
  begin
    bsSkinMessage1.MessageDlg('       Tidak ada Data         ', mtCustom, [mbOK],0);
    Exit;
  end;

  Application.CreateForm(TfOrderDelete,fOrderDelete);
  fordermenu.Enabled := False;
  fOrderDelete.lblRoom.Caption := Trim(cmbroom.Text);
  fOrderDelete.edtIDSO.Text := Qorderidso.AsString;
  fOrderDelete.edtCs.Text := FrmInduk.pbidkasir;
  fOrderDelete.edtNamaCS.Text := FrmInduk.pbnamakasir;
  fOrderDelete.edtIdMenu.Text := Qorderidmenu.AsString;
  fOrderDelete.edtMenu.Text := Qordermenu.AsString;
  fOrderDelete.edtQty.Text :=  Qorderqty.AsString;
  fOrderDelete.edtTotal.Text := formatfloat('#,0', Qordertotal.AsFloat);
  fOrderDelete.idorder := pbOrderId;


end;

procedure Tfordermenu.CashOrdersimpan;
var p : integer;
begin
  if edtidmenu.Text = '' then
  begin
    beep;
    ShowMessage('ID MENU BELUM DIISI!');
    edtidmenu.SetFocus;
    exit;
  end;

  if (spnquantity.Value = 0)  then
  begin
    beep;
    bsSkinMessage1.MessageDlg('    Data tidak valid     ', mtError, mbOKCancel,0);
    spnquantity.SetFocus;
    exit;
  end;

  if pvedit then vtCashOrder.Delete;

  p := 0;
  if  vtCashOrder.Locate('idmenu',edtidmenu.Text,[loCaseInsensitive]) then
  begin
    if  (vtCashOrderdiskon.Value = pvpotongan) then
    begin
      p := vtCashOrderqty.AsInteger;
      vtCashOrder.Delete;
    end;
  end;

  vtCashOrder.Append;
  vtCashOrdercs.Value := Qcslogin.AsString;
  vtCashOrderidmenu.Value := qmenuid.AsString;
  vtCashOrdermenu.Value := qmenumenu.AsString;
  vtCashOrderharga_asli.Value := qmenuharga.AsFloat;
  vtCashOrderdiskon.Value := pvpotongan;
  vtCashOrderqty.Value := p + spnquantity.Value;
  vtCashOrder.Post;
end;

procedure Tfordermenu.CashOrderLoad;
begin
  DSorder.DataSet := vtCashOrder;
end;

procedure Tfordermenu.CashOrderHitTotal;
var vtotal : Real;
begin
  vtotal := 0;
  vtCashOrder.First;
  while not(vtCashOrder.Eof) do
  begin
    vtotal := vtotal + vtCashOrdertotal.AsFloat;
    vtCashOrder.Next;
  end;
  edtTotal.Text := FormatFloat('#,0', vtotal);
end;

procedure Tfordermenu.FormCreate(Sender: TObject);
var i,x : Smallint;
    s : string;
begin

  qmenu.Connection := modul.Database1;
  qkatmenu.Connection := modul.Database1;
  Qothers.Connection := modul.Database1;
  Qorder.Connection := modul.Database1;
  Qupdate.Connection := modul.Database1;
  Qcs.Connection := modul.Database1;
  Qidso.Connection := modul.Database1;
  Qdetaiso.Connection := modul.Database1;
  Qcari.Connection := modul.Database1;

  FrmInduk.pbordermenu := True;
  pvtambah := false;
  dbcs.Visible := False;
  tutup;
  larang;

  vtCashOrder.Active := True;
   
  pvpotongan := 0;
  cmbkategori.ItemIndex := 0;

  edtcarimenu.Alignment := taLeftJustify;

  edtidmenu.Text := '';
  edtcarimenu.Text := '';
  spndiskon.Value := 0 ;
  edtpotongan.Text := '' ;
  edtafterdisc.Text := '';
  spnquantity.Value := 0 ;
  edtafterquantity.Text := '';


   qmenu.Active := True;
   Qcs.Active := True;

   Qothers.SQL.Text := ' SELECT     namaroom ' +
                       ' FROM       troom  ' +
                       '            where (chekin = 1) AND (tambahjam = 0)  AND (JUAL = 1) '+
                       '            ORDER BY namaroom' ;
   Qothers.Active := True;
   cmbroom.Clear;
{   s:= ('O R D E R    ');
   x := trunc((120-length(s)) /2);
   s :='';
   for i := 1 to x do
   begin
    s := s + ' ';
   end;
   s:= s+('O R D E R');
   cmbroom.Items.Add(s);
}
   while not(Qothers.Eof) do
   begin
     s:= Qothers.fieldByName('namaroom').AsString;
     x := trunc((120-length(s)) /2);
     s :='';
     for i := 1 to x do
     begin
       s := s + ' ';
     end;
     s:= s+Qothers.fieldByName('namaroom').AsString;
     cmbroom.Items.Add(s);
     Qothers.Next
   end;

   qKatMenu.SQL.Text := ' SELECT DISTINCT tkategorimenu.id, tkategorimenu.kategori '+
                        ' FROM         tmenu INNER JOIN '+
                        ' tkategorimenu ON tmenu.kategori = tkategorimenu.id '+
                        ' WHERE     (tmenu.id_lokasi = 1) AND tmenu.id not in (select menu_id from tSoldout)';
   qKatMenu.Active := True;

   cmbKategori.Clear;
   cmbKategori.Items.Add('');
   while not(qKatMenu.Eof) do
   begin
      cmbKategori.Items.Add(qKatMenu.FieldByName('kategori').AsString);
      qKatMenu.Next
   end;
   cmbkategori.ItemIndex := 0;
   cmbkategoriChange(Sender);

  DBGordermenu.Enabled := true;

  edtCs.Text := FrmInduk.pbidkasir;

  FrmInduk.activityLogin := FrmInduk.pbidkasir;
  FrmInduk.activityName := FrmInduk.pbnamakasir;
  
end;

procedure Tfordermenu.btntambahClick(Sender: TObject);
begin
  prctambah;
  edtCs.SetFocus;
end;

procedure Tfordermenu.btnbatalClick(Sender: TObject);
begin
  pvtambah := False;
  pvedit := False;
  tutup;
  larang;
  DBmenu.Enabled := True;

  pvpotongan := 0;
//  cmbkategori.ItemIndex := 0;
  edtidmenu.Text := '';
  edtcarimenu.Text := '';
  spndiskon.Value := 0 ;
  edtpotongan.Text := '' ;
  edtafterdisc.Text := '';
  spnquantity.Value := 1 ;
  edtafterquantity.Text := '';
  cmbroom.Enabled := True;
end;

procedure Tfordermenu.btnkeluarClick(Sender: TObject);
var vtotal : Real;
begin
  if vtCashOrder.RecordCount > 0 then
  begin
    cmbroom.ItemIndex := 0;
    cmbroomClick(Sender);
    Application.CreateForm(TFbillCashOrder, FbillCashOrder);
    vtotal := 0;
    vtCashOrder.First;
    while not(vtCashOrder.Eof) do
    begin
      vtotal := vtotal + vtCashOrdertotal.AsFloat;
      vtCashOrder.Next;
    end;
    FbillCashOrder.pbtotal := vtotal;
    FbillCashOrder.edtTotal.Text := FormatFloat('#,0', vtotal);
    FbillCashOrder.edtMenuHarga.Text := FormatFloat('#,0', vtotal);
    FbillCashOrder.jumlah;
    FbillCashOrder.edtNama.SetFocus;
    fordermenu.Enabled := False;
    cmbroom.Enabled := True;
    exit;
  end;
  if VtOrder.RecordCount > 0 then
  begin
    SaveOrderClick(Sender);
    cmbroom.Enabled := True;
{     Application.CreateForm(TFreviewOrder, FreviewOrder);
     FreviewOrder.Show;
     FreviewOrder.Label6.Caption := (Trim(cmbroom.Text));;
     FreviewOrder.edtNamaCs.Text := edtNamaCs.Text;
     FreviewOrder.edtCs.Text := edtCs.Text;
     vtotal := 0;
     VtOrder.First;
     while not(VtOrder.Eof) do
      begin
      vtotal := vtotal + VtOrdertotal.AsFloat;
      VtOrder.Next;
      end;
     FreviewOrder.edtTotal.Text := FormatFloat('#,0', vtotal);
     fordermenu.Enabled := false;
}
  end;
end;

procedure Tfordermenu.btnhapusClick(Sender: TObject);
begin
  if Trim(cmbroom.Text) = 'O R D E R' then
    CashOrderHapus
  else
  begin
    if Qorder.RecordCount = 0 then exit;
    if FrmInduk.pbadmin then
    begin
      ygapus :=  FrmInduk.pbidkasir;
      Hapus;
    end
    else
    begin
      Application.CreateForm(TfAutorisasi, fAutorisasi);
      Fautorisasi.Show;
      Fautorisasi.kiriman :=2;
      fordermenu.Enabled := False;
    end;
  end;
end;

procedure Tfordermenu.btneditClick(Sender: TObject);
begin
{  if cmbroom.ItemIndex = 0 then
  begin
    if vtCashOrder.RecordCount = 0 then
    begin
    //    bsSkinMessage1.MessageDlg('       Tidak ada Data         ', mtCustom, [mbOK],0);
        Exit;
    end;
    cmbroom.Enabled := False;
    tmpIdMenu := vtCashOrderidmenu.Value;
    tmpdiskon := vtCashOrderdiskon.Value;
    tmpqty := vtCashOrderqty.Value;
  end
  else
  begin
    Qothers.Active := False;
    Qothers.SQL.Text := ' SELECT     COUNT(*) AS jumlah '+
                        ' FROM         torder_menu '+
                        ' WHERE     (idorder = '+ QuotedStr(pbOrderId) + ')';
    Qothers.Active := True;

    if Qothers.FieldByName('jumlah').Value = 0 then
    begin
    //  bsSkinMessage1.MessageDlg('       Tidak ada Data         ', mtError, [mbOK],0);
      Exit;
    end;

    tmpIdOrder := pbOrderId;
    tmpIdMenu := Qorderidmenu.Value;
    tmpdiskon := Qorderdiskon.Value;
    tmpqty := Qorderqty.Value;
  end;
  boleh;
  buka;
  pvtambah := True;
  pvedit := True;
  cmbkategori.ItemIndex := 0;
  cmbkategoriChange(Sender);

  qmenu.Locate('id', tmpIdMenu,[loCaseInsensitive]);
  edtcarimenu.Text := qmenumenu.AsString;
  edtafterquantity.Text := FormatFloat('#,0',qmenuharga.Value);
  spnquantity.Value := tmpqty;

  //isi dengan data pada tabel
  cmbkategori.ItemIndex := 0;
  pvpotongan := tmpdiskon;
  edtPotongan.Text:=FormatFloat('#,0',pvpotongan);

  if not(qmenuharga.Value=0) then
    spndiskon.Text:=FloatToStr(int(pvpotongan / qmenuharga.Value * 100))
  else
    spndiskon.Text:='0';

  spnquantityChange(Sender);

  spnquantity.SetFocus;     }
end;

procedure Tfordermenu.edtidmenuExit(Sender: TObject);
begin
 if  NOT pvtambah then EXIT;

 edtidmenu.Text := qmenuid.AsString;
 edtcarimenu.Text := qmenumenu.AsString;
end;

procedure Tfordermenu.spnquantityChange(Sender: TObject);
begin
  if  not pvtambah then exit ;
  if spnquantity.Text = '' then exit;
  edtafterquantity.Text :=FormatFloat('#,0', spnquantity.Value * (qmenuharga.Value - pvpotongan));
end;

procedure Tfordermenu.btnsimpanClick(Sender: TObject);
begin
  if edtCs.Text ='' then
  begin
    Beep;
    bsSkinMessage1.MessageDlg('    Incomplete data   !!!    ', mtError,[mbOK], 0);
    edtCs.SetFocus;
    exit;
  end;

  if edtidmenu.Text ='' then
  begin
    Beep;
    bsSkinMessage1.MessageDlg('    Incomplete data    !!!    ', mtError,[mbOK], 0);
    edtidmenu.SetFocus;
    exit;
  end;

  if Trim(cmbroom.Text) = 'O R D E R' then
    CashOrdersimpan
  else
    Simpan;

  pvtambah := False;
 // pvedit := False;
  tutup;
  larang;

  pvpotongan := 0;
//  cmbkategori.ItemIndex := 0;

  edtidmenu.Text := '';
  edtcarimenu.Text := '';
  spndiskon.Value := 0 ;
  edtpotongan.Text := '' ;
  edtafterdisc.Text := '';
  spnquantity.Value := 1 ;
  edtafterquantity.Text := '';
  cmbroom.Enabled := True;
  ii := cmbroom.ItemIndex;
  btntambah.SetFocus;
  cmbroom.Enabled := False;
end;

procedure Tfordermenu.edtpotonganExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtPotongan.Text);
  except
    x:=0;
  end;
  if x > qmenuharga.Value then
    x:=0;

  pvpotongan := x;

  if not(qmenuharga.Value=0) then
    spndiskon.Text:=FloatToStr(int(pvpotongan / qmenuharga.Value * 100))
  else
    spndiskon.Text:='0';

  edtPotongan.Text:=FormatFloat('#,0',x);

  edtAfterDisc.Text := FormatFloat('#,0',qmenuharga.Value - pvpotongan);
  
  spnquantityChange(Sender);
end;
procedure Tfordermenu.spnquantityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then btnsimpanClick(Sender);
end;

procedure Tfordermenu.spndiskonChange(Sender: TObject);
begin
  if  not pvtambah then exit;
  if spndiskon.Text = '' then exit;
  pvpotongan := (spndiskon.Value/100 * qmenuharga.Value);
  edtPotongan.Text := FormatFloat('#,0',pvpotongan);
  edtAfterDisc.Text := FormatFloat('#,0',qmenuharga.Value - pvpotongan);
  spnquantityChange(Sender);
end;

procedure Tfordermenu.edtcarimenuExit(Sender: TObject);
begin
  if  NOT pvtambah then EXIT;

  edtidmenu.Text := qmenuid.AsString;
  edtcarimenu.Text := qmenumenu.AsString;
end;

procedure Tfordermenu.DBmenuDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := $00FF6833;
     FillRect(Rect);
     Font.Color:= clWhite;
     end;
     end;
    DBmenu.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfordermenu.cmbroomClick(Sender: TObject);
var vtotal : Real;
begin
  if VtOrder.RecordCount > 0 then
  begin
    cmbroom.ItemIndex := ii;
    Application.CreateForm(TFreviewOrder, FreviewOrder);
    FreviewOrder.Show;
    FreviewOrder.Label6.Caption := (Trim(cmbroom.Text));;
    FreviewOrder.edtNamaCs.Text := edtNamaCs.Text;
    FreviewOrder.edtCs.Text := edtCs.Text;
    vtotal := 0;
    VtOrder.First;
    while not(VtOrder.Eof) do
    begin
      vtotal := vtotal + VtOrdertotal.AsFloat;
      VtOrder.Next;
    end;
    FreviewOrder.edtTotal.Text := FormatFloat('#,0', vtotal);
    fordermenu.Enabled := false;
    exit;
  end;

  if Trim(cmbroom.Text) = 'O R D E R' then
  begin
    CashOrderLoad;
    CashOrderHitTotal;
  end
  else
  begin
    orderload;
    hitTotal;
  end;

end;

procedure Tfordermenu.Tekan13(Sender: TObject; var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfordermenu.edtidmenuEnter(Sender: TObject);
begin
  if not(pvtambah) then prctambah;
  edtidmenu.SelectAll;
end;

procedure Tfordermenu.edtcarimenuEnter(Sender: TObject);
begin
  if not(pvtambah) then prctambah;
  edtcarimenu.SelectAll;
end;

procedure Tfordermenu.edtpotonganEnter(Sender: TObject);
begin
  edtPotongan.Text := FormatFloat('0', pvpotongan);
  edtPotongan.SelectAll;
end;

procedure Tfordermenu.edtidmenuChange(Sender: TObject);
begin
  if DBmenu.Focused then Exit;
  if  NOT pvtambah then Exit;
  if edtidmenu.Text = '' then exit;
  if edtcarimenu.Focused then exit;
  if not(qmenu.Active) then qmenu.Active := True;

  qmenu.Locate('id', edtidmenu.text,[loPartialKey, loCaseInsensitive]);
  edtcarimenu.Text := qmenumenu.AsString;
  edtAfterDisc.Text := FormatFloat('#,0',qmenuharga.Value);
  edtPotongan.Text := '0';
  edtafterquantity.Text := FormatFloat('#,0',qmenuharga.Value);

  pvpotongan := 0;
  spndiskon.Value := 0 ;
  edtpotongan.Text := '0' ;
  spnquantity.Value := 1 ;
end;

procedure Tfordermenu.edtidmenuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    qmenu.Next;
    edtidmenu.Text := qmenuid.AsString;
    edtcarimenu.Text := qmenumenu.AsString;
  end;

  if key = vk_up then
  begin
    qmenu.Prior;
    edtidmenu.Text := qmenuid.AsString;
    edtcarimenu.Text := qmenumenu.AsString;
  end;
end;

procedure Tfordermenu.edtcarimenuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
  begin
    qmenu.Next;
    edtidmenu.Text := qmenuid.AsString;
    edtcarimenu.Text := qmenumenu.AsString;
  end;

  if key = vk_up then
  begin
    qmenu.Prior;
    edtidmenu.Text := qmenuid.AsString;
    edtcarimenu.Text := qmenumenu.AsString;
  end;
end;

procedure Tfordermenu.qmenuAfterScroll(DataSet: TDataSet);
begin
//  if not pvtambah then exit;
  if not((edtidmenu.Focused) or (edtcarimenu.Focused)) then
  begin
    edtcarimenu.Text := qmenumenu.AsString;
    edtidmenu.Text := qmenuid.AsString;
    edtafterquantity.Text := FormatFloat('#,0',qmenuharga.Value);
    edtPotongan.Text := '0';
    edtAfterDisc.Text := FormatFloat('#,0',qmenuharga.Value);
    pvpotongan := 0;
    edtPotongan.Text :='0';
    spndiskon.Value := 0;
  end;
end;

procedure Tfordermenu.edtcarimenuChange(Sender: TObject);
begin
  if DBmenu.Focused then Exit;
  if  NOT pvtambah then EXIT;
  if edtcarimenu.Text = '' then exit;
  if edtidmenu.Focused then exit;

  qmenu.Locate('menu', edtcarimenu.text,[loPartialKey, loCaseInsensitive]);
  edtidmenu.Text := qmenuid.AsString;
  edtafterquantity.Text := FormatFloat('#,0',qmenuharga.Value);
  edtAfterDisc.Text := FormatFloat('#,0',qmenuharga.Value);
  edtPotongan.Text := '0';

  pvpotongan := 0;
  spndiskon.Value := 0 ;
  edtpotongan.Text := '0' ;
  spnquantity.Value := 1 ;
end;

procedure Tfordermenu.DBmenuDblClick(Sender: TObject);
begin
  spnquantity.SetFocus;
  spnquantity.SelectAll;
  btnsimpanClick(Sender);
end;

procedure Tfordermenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbordermenu := False;
end;

procedure Tfordermenu.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) and not(pvtambah)  then
  begin
    btnkeluarClick(sender);
    exit;
  end;
  
  if Key = VK_ESCAPE then
  begin
    btnbatalClick(Sender);    
  end;
end;

procedure Tfordermenu.DBmenuEnter(Sender: TObject);
begin
  if not(pvtambah) then prctambah;
  qmenuAfterScroll(qmenu);
  dbcs.Visible := False;
end;

procedure Tfordermenu.vtCashOrderCalcFields(DataSet: TDataSet);
begin
  vtCashOrderhardisk.Value := vtCashOrderharga_asli.Value - vtCashOrderdiskon.Value;
  vtCashOrdertotal.Value := vtCashOrderqty.Value * (vtCashOrderharga_asli.Value - vtCashOrderdiskon.Value);
end;

procedure Tfordermenu.edtCsChange(Sender: TObject);
begin
  Qcs.Locate('login', edtCs.Text, [loPartialKey, loCaseInsensitive]);
  edtNamaCs.Text := Qcsnama.AsString;
end;

procedure Tfordermenu.edtCsExit(Sender: TObject);
begin
  Qcs.Locate('login', edtCs.Text, [loPartialKey, loCaseInsensitive]);
  edtCs.Text := Qcslogin.AsString;
  edtNamaCs.Text := Qcsnama.AsString;
end;

procedure Tfordermenu.edtCsEnter(Sender: TObject);
begin
  if not(pvtambah) then prctambah;
  edtCs.SelectAll;
  dbcs.Visible := False;
end;

procedure Tfordermenu.edtidmenuKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfordermenu.spnquantityEnter(Sender: TObject);
begin
  spnquantity.SelectAll;
end;

procedure Tfordermenu.spnquantityDblClick(Sender: TObject);
begin
  btnsimpanClick(Sender);
end;

procedure Tfordermenu.DBGordermenuDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := $00FF6833;
     FillRect(Rect);
     Font.Color:= clWhite;
     end;
     end;
    DBGordermenu.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfordermenu.DBGordermenuDblClick(Sender: TObject);
begin
  btneditClick(Sender);
end;

procedure Tfordermenu.edtcarimenuKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key:=#0;
    if spnquantity.Value = 0 then spnquantity.Value :=1;
    spnquantity.SetFocus;
  end;
end;

procedure Tfordermenu.cmbkategoriEnter(Sender: TObject);
begin
  if not(pvtambah) then prctambah;
  cmbkategoriChange(Sender);
end;

procedure Tfordermenu.cmbkategoriChange(Sender: TObject);
begin
  qMenu.Active := False;
  qMenu.SQL.Text :=   ' SELECT     id, kategori, menu, harga ' +
                      ' FROM         tmenu '  +
                      ' where (status = 1 ) AND tmenu.id not in (select menu_id from tSoldout) AND  id_lokasi =' + IntToStr(edtLokasi.Tag);
  if cmbkategori.ItemIndex <> 0 then
  begin
   qkatmenu.Locate('kategori',cmbkategori.Text,[loCaseInsensitive]);
   qMenu.SQL.Text := qMenu.SQL.Text + ' and    kategori = '+ IntToStr(qkatmenu.fieldByName('id').Value);
  end;
  if rdoKategori.Checked then
    qMenu.SQL.Text := qMenu.SQL.Text + ' ORDER BY kategori, menu';
  if rdoMenu.Checked then
    qMenu.SQL.Text := qMenu.SQL.Text + ' ORDER BY menu';
  if rdoID.Checked then
    qMenu.SQL.Text := qMenu.SQL.Text + ' ORDER BY id';

  qMenu.Active := True;

  pvpotongan := 0;
  edtidmenu.Text := '';
  edtcarimenu.Text := '';
  spndiskon.Value := 0 ;
  edtpotongan.Text := '' ;
  edtafterdisc.Text := '';
  edtafterquantity.Text := '';
end;

procedure Tfordermenu.DBmenuKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key:=#0;
    if spnquantity.Value = 0 then spnquantity.Value :=1;
    spnquantity.SetFocus;
  end;
end;

procedure Tfordermenu.edtcarimenuKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_down) or (key = vk_up) then
  begin
    edtcarimenu.SelectAll;
  end;
end;

procedure Tfordermenu.edtidmenuKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_down) or (key = vk_up) then
  begin
    edtidmenu.SelectAll;
  end;
end;

procedure Tfordermenu.btnCariMenuClick(Sender: TObject);
begin
  Qcs.Active := False;
  Qcs.SQL.Text := ' SELECT     login, nama ' +
                  ' FROM         tkasir ' +
                  ' ORDER BY login ' ;
  Qcs.Active := True;
  dbcs.Visible := True;
  dbcs.Height := 329;
end;

procedure Tfordermenu.dbcsDblClick(Sender: TObject);
begin
  edtCs.Text := Qcslogin.Value;
  edtNamaCs.Text := Qcsnama.Value;
  dbcs.Visible := False;
  cmbkategori.SetFocus;
end;

procedure Tfordermenu.dbcsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     end;
     end;
    dbcs.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfordermenu.edtNamaCsEnter(Sender: TObject);
begin
  dbcs.Visible := False;
end;

procedure Tfordermenu.VtOrderCalcFields(DataSet: TDataSet);
begin
    VtOrdertotal.Value := VtOrderqty.Value *( VtOrderharga_asli.Value - VtOrderdiskon.Value);

end;

procedure Tfordermenu.SaveOrderClick(Sender: TObject);
var
  id :integer;
  idt : string;
begin
  if  not(cekRoom(trim(cmbroom.Text), Qothers)) then
  begin
    bsSkinMessage1.MessageDlg('     Room status has changed     ' , mtError, [mbOK],0);
    exit;
  end;
  
  Qidso.Active := False;
  Qidso.SQL.Text := ' SELECT     MAX(RIGHT(idso, 4)) AS id  ' +
                         ' FROM         tso ' +
                         ' WHERE     (idso LIKE ' + QuotedStr(FormatDateTime('yyMMdd',Now)+'%')+')';
  Qidso.Active := True;
  try
    id := StrToInt(Qidso.FieldByName('id').Value);
  except
    id :=0;
  end;
  id := id+1;
  idt := FormatDateTime('yyMMdd',Now) + FormatFloat('0000',id);

  VtOrder.First;
  while not(VtOrder.Eof) do
  begin
{    qcari.Active := false;
    qcari.SQL.Clear;
    qcari.SQL.Append('SELECT * from torder_menu');
    qcari.SQL.Append('WHERE (idorder='''+ pbOrderId +''') AND (idmenu='''+ VtOrderidmenu.Value +''') AND (status= 1) and (diskon='''+ VtOrderdiskon.AsString +''')');
    qcari.Active := true;
    if qcari.Eof =false then
      begin
        Qupdate.Active := False;
        Qupdate.SQL.Clear;
        Qupdate.SQL.Append (' UPDATE    torder_menu ');
        Qupdate.SQL.Append (' SET qty = '''+ IntToStr(qcari.FieldByName('qty').AsInteger+ VtOrderqty.Value) +'''');
        Qupdate.SQL.Append (' WHERE     (idorder = '''+ pbOrderId +''') AND ');
        Qupdate.SQL.Append ('   (status= 1) and        (idmenu  = '''+ VtOrderidmenu.Value + ''')');
        Qupdate.ExecSQL;

      end
    else
      begin
}        Qupdate.Active := False;
        Qupdate.SQL.Text := ' INSERT INTO torder_menu ' +
                            ' (idorder, idmenu, harga_asli, diskon, qty, cs, status,idso) ' +
                            ' VALUES     (:idorder, :idmenu, :harga_asli, :diskon, :qty, :cs, :status, :idso) ';
        Qupdate.Params[0].AsString := pbOrderId;
        Qupdate.Params[1].AsString := VtOrderidmenu.Value;
        Qupdate.Params[2].AsFloat := VtOrderharga_asli.Value;
        Qupdate.Params[3].AsFloat := VtOrderdiskon.Value ;
        Qupdate.Params[4].AsInteger := VtOrderqty.Value ;
        Qupdate.Params[5].AsString := edtCs.Text;
        Qupdate.Params[6].AsInteger  := 1;
        Qupdate.Params[7].AsString := idt;
        Qupdate.ExecSQL;
//    end;
    VtOrder.Next;
  end;

  Qdetaiso.Active := False;
  Qdetaiso.SQL.Text := 'INSERT INTO Tso (idso, idorder, jam)'+
                       'VALUES     ('+ QuotedStr (idt)+','+QuotedStr(pbOrderId)+','+ QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss', now)) +')';
  Qdetaiso.ExecSQL;

  prcPrintOrder(idt);

  Qorder.Active := False;
  Qorder.Active := True;
  hitTotal;
  VtOrder.Clear;
end;

procedure Tfordermenu.btnDeleteVtOrderClick(Sender: TObject);
begin
  If fordermenu.VtOrder.RecordCount = 0 then exit;
  fordermenu.VtOrder.Delete;
  If fordermenu.VtOrder.RecordCount = 0 then cmbroom.Enabled := True;
end;

procedure Tfordermenu.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfordermenu.bsSkinButton1Click(Sender: TObject);
begin
  edtLokasi.Text := 'Bar';
  edtLokasi.Tag := 1;
  qKatMenu.SQL.Text := ' SELECT DISTINCT tkategorimenu.id, tkategorimenu.kategori '+
                        ' FROM         tmenu INNER JOIN '+
                        ' tkategorimenu ON tmenu.kategori = tkategorimenu.id '+
                        ' WHERE     (tmenu.id_lokasi = 1) AND tmenu.id not in (select menu_id from tSoldout)';
   qKatMenu.Active := True;

   cmbKategori.Clear;
   cmbKategori.Items.Add('');
   while not(qKatMenu.Eof) do
   begin
      cmbKategori.Items.Add(qKatMenu.FieldByName('kategori').AsString);
      qKatMenu.Next
   end;
   cmbkategori.ItemIndex := 0;
   cmbkategoriChange(Sender);
end;

procedure Tfordermenu.bsSkinButton2Click(Sender: TObject);
begin
  edtLokasi.Text := 'Kitchen';
  edtLokasi.Tag := 2;
  qKatMenu.SQL.Text := ' SELECT DISTINCT tkategorimenu.id, tkategorimenu.kategori '+
                        ' FROM         tmenu INNER JOIN '+
                        ' tkategorimenu ON tmenu.kategori = tkategorimenu.id '+
                        ' WHERE     (tmenu.id_lokasi = 2) AND tmenu.id not in (select menu_id from tSoldout)';
   qKatMenu.Active := True;

   cmbKategori.Clear;
   cmbKategori.Items.Add('');
   while not(qKatMenu.Eof) do
   begin
      cmbKategori.Items.Add(qKatMenu.FieldByName('kategori').AsString);
      qKatMenu.Next
   end;
   cmbkategori.ItemIndex := 0;
   cmbkategoriChange(Sender);
end;

procedure Tfordermenu.bsSkinButton3Click(Sender: TObject);
begin
  edtLokasi.Text := 'IT';
  edtLokasi.Tag := 3;
  qKatMenu.SQL.Text := ' SELECT DISTINCT tkategorimenu.id, tkategorimenu.kategori '+
                        ' FROM         tmenu INNER JOIN '+
                        ' tkategorimenu ON tmenu.kategori = tkategorimenu.id '+
                        ' WHERE     (tmenu.id_lokasi = 3) AND tmenu.id not in (select menu_id from tSoldout)';
   qKatMenu.Active := True;

   cmbKategori.Clear;
   cmbKategori.Items.Add('');
   while not(qKatMenu.Eof) do
   begin
      cmbKategori.Items.Add(qKatMenu.FieldByName('kategori').AsString);
      qKatMenu.Next
   end;
   cmbkategori.ItemIndex := 0;
   cmbkategoriChange(Sender);
end;

procedure Tfordermenu.DBOrderDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := $00FF6833;
     FillRect(Rect);
     Font.Color:= clWhite;
     end;
     end;
    DBOrder.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
