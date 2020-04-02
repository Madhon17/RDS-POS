unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBTables, BusinessSkinForm,
  bsSkinCtrls, Grids, DBGrids, ExtCtrls, SkinCtrls, bsMessages, ComCtrls,
  AEDIT, OleCtrls, ShockwaveFlashObjects_TLB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfpayment = class(TForm)
    DBGrid1: TDBGrid;
    qordermenu: TZQuery;
    dsMenu: TDataSource;
    qordermenuidorder: TStringField;
    qordermenumenu: TFloatField;
    qordermenuroom: TFloatField;
    qordermenudll: TFloatField;
    bsSkinMessage1: TbsSkinMessage;
    qbank: TZQuery;
    qbankid: TSmallintField;
    qbanknama: TStringField;
    Qedit: TZQuery;
    Qeditidorder: TStringField;
    Qedittanggal: TDateTimeField;
    Qeditstatus: TSmallintField;
    Qeditpayment: TSmallintField;
    Qeditccid: TStringField;
    Qeditccno: TStringField;
    Qeditccnama: TStringField;
    Qeditketerangan: TStringField;
    Qedittotal: TFloatField;
    Qeditnama: TStringField;
    Qeditroom: TStringField;
    Qeditnamabank: TStringField;
    DTMpayment: TDateTimePicker;
    qordermenunama: TStringField;
    qordermenunamaroom: TStringField;
    qordermenudisroom: TFloatField;
    qordermenudismenu: TFloatField;
    qordermenudisdll: TFloatField;
    qordermenucalRoom: TFloatField;
    qordermenucalMenu: TFloatField;
    qordermenucalDll: TFloatField;
    qordermenutax: TFloatField;
    qordermenuservice: TFloatField;
    grpRoom: TPanel;
    Label9: TLabel;
    edttotal: TAEdit;
    Label1: TLabel;
    cmbcarabayar: TComboBox;
    Panelcash: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtBayar: TAEdit;
    edtKembali: TAEdit;
    btnsimpan: TbsSkinButton;
    panelcard: TPanel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cmbjenis: TComboBox;
    cmbnamabank: TComboBox;
    edtnocc: TEdit;
    edtnamacc: TEdit;
    panelketerangan: TPanel;
    Label7: TLabel;
    edtketerangan: TEdit;
    qordermenutotal: TFloatField;
    QmyROOM: TZQuery;
    qordermenudiscmember: TFloatField;
    Panel3: TPanel;
    rdo_invoice: TRadioButton;
    rdo_nama: TRadioButton;
    rdo_room: TRadioButton;
    qordermenuinvoice: TStringField;
    qordermenuextradiskon: TFloatField;
    qordermenupajak: TStringField;
    qordermenuinvoice2: TStringField;
    BsPrint: TbsSkinButton;
    Query1: TZQuery;
    panelVoucher: TPanel;
    edtVoucherKode: TEdit;
    Label10: TLabel;
    payment2CheckBox: TCheckBox;
    Label11: TLabel;
    payment2ComboBox: TComboBox;
    Label12: TLabel;
    voucherComboBox: TComboBox;
    Label13: TLabel;
    voucheNomimalEdit: TEdit;
    Label14: TLabel;
    voucherHargaEdit: TEdit;
    voucherNamaEdit: TEdit;
    Label15: TLabel;
    panelcard2: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cmbjenis2: TComboBox;
    cmbnamabank2: TComboBox;
    edtnocc2: TEdit;
    edtnamacc2: TEdit;
    Panelcash2: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    edtBayar2: TAEdit;
    edtKembali2: TAEdit;
    Label22: TLabel;
    edtBayar3: TEdit;
    BtnExitp: TbsSkinButton;
    procedure bersih;
    procedure cmbcarabayarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure qordermenuCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edtbayarKeyPress(Sender: TObject; var Key: Char);
    procedure edtbayarExit(Sender: TObject);
    procedure edtbayarEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtketeranganEnter(Sender: TObject);
    procedure edtKembaliEnter(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cmbcarabayarKeyPress(Sender: TObject; var Key: Char);
    procedure flsExitEnter(Sender: TObject);
    procedure rdo_invoiceClick(Sender: TObject);
    procedure qordermenuAfterScroll(DataSet: TDataSet);
    procedure BsPrintClick(Sender: TObject);
    procedure payment2CheckBoxClick(Sender: TObject);
    procedure payment2ComboBoxClick(Sender: TObject);
    procedure voucherComboBoxClick(Sender: TObject);
    procedure voucheNomimalEditKeyPress(Sender: TObject; var Key: Char);
    procedure voucheNomimalEditChange(Sender: TObject);
    procedure edtBayar2Enter(Sender: TObject);
    procedure edtBayar2Exit(Sender: TObject);
    procedure voucheNomimalEditEnter(Sender: TObject);
    procedure voucheNomimalEditExit(Sender: TObject);
    procedure BtnExitpClick(Sender: TObject);
  private
    pvbayar,  tmptotal : Real;
    tmpidorder : String;
    pvedit, pvboleh : Boolean;
    roomTax: Integer;
    roomService: Integer;
    voucherFee: Integer;
    voucherDiscount: Integer;
    voucherId: Integer;
    voucherName: String;
    voucherName2: String;
    voucherCode: String;
    voucherValue: Double;
    voucherValue2: Double;
    cash2Value: Double;
    procedure calculateVoucher();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpayment: Tfpayment;

implementation
  uses unit1, unit3, cektamu, untBill,ShellAPI,untdetailpayment,
  untdetailreport;
{$R *.dfm}


procedure Tfpayment.bersih;
begin
   edtbayar.Text := '';
   edtkembali.Text := '';
   edtketerangan.Text := '';
   edtnocc.Text := '';
   edtnamacc.Text := '';
   cmbjenis.ItemIndex := -1;
   cmbnamabank.ItemIndex := 0;
end;
procedure Tfpayment.cmbcarabayarClick(Sender: TObject);
begin
  if not pvedit then
  BEGIN
    cmbcarabayar.ItemIndex := 0;
    exit;
  end;

  if cmbcarabayar.ItemIndex = 0 then
  begin
    Panelcash.Visible := True;
    panelcard.Visible := False;
    panelketerangan.Visible := False;
    panelVoucher.Visible := False;
    payment2CheckBox.Checked := False;
    payment2CheckBox.Enabled := False;
    payment2ComboBox.ItemIndex := -1;
    payment2ComboBox.Enabled := False;
    edtbayar.Text := '';
    edtkembali.Text := '';
    edtbayar.SetFocus;
    edtbayarEnter(Sender);
  end;

  IF cmbcarabayar.ItemIndex = 1 then
  begin
    Panelcash.Visible := False;
    panelcard.Visible := True;
    panelketerangan.Visible := False;
    panelVoucher.Visible := False;
    payment2CheckBox.Checked := False;
    payment2CheckBox.Enabled := False;
    payment2ComboBox.ItemIndex := -1;
    payment2ComboBox.Enabled := False;
    edtnocc.Text := '';
    edtnamacc.Text := '';
    cmbjenis.SetFocus;
  end;


  if cmbcarabayar.ItemIndex = 2 then
  begin
    panelketerangan.Visible := True;
    Panelcash.Visible := False;
    panelcard.Visible := False;
    panelVoucher.Visible := False;
    payment2CheckBox.Checked := False;
    payment2CheckBox.Enabled := False;
    payment2ComboBox.ItemIndex := -1;
    payment2ComboBox.Enabled := False;
    edtketerangan.Text := '';
    edtketerangan.SetFocus;
  end;

  if cmbcarabayar.ItemIndex = 3 then
  begin
    panelketerangan.Visible := True;
    Panelcash.Visible := False;
    panelcard.Visible := False;
    panelVoucher.Visible := False;
    payment2CheckBox.Checked := False;
    payment2CheckBox.Enabled := False;
    payment2ComboBox.ItemIndex := -1;
    payment2ComboBox.Enabled := False;
    edtketerangan.Text := '';
    edtketerangan.SetFocus;
  end;

  if cmbcarabayar.ItemIndex = 4 then
  begin
    Panelcash.Visible := False;
    panelcard.Visible := False;
    panelketerangan.Visible := False;
    panelVoucher.Visible := True;

    voucherComboBox.ItemIndex := -1;
    voucheNomimalEdit.Text := '';
    voucherHargaEdit.Text := '';
    voucherNamaEdit.Text := '';
    edtVoucherKode.Text := '';

    payment2CheckBox.Enabled := True;

    payment2ComboBox.ItemIndex := -1;

    edtBayar2.Text := '';
    edtKembali2.Text := '';

    cmbjenis2.ItemIndex := -1;
    cmbnamabank2.ItemIndex := -1;
    edtnamacc2.Text := '';
    edtnocc2.Text := '';
  end;

  bersih;
end;

procedure Tfpayment.FormCreate(Sender: TObject);
var
  query: TZQuery;
begin
  qordermenu.Connection := modul.Database1;
  qbank.Connection := modul.Database1;
  Qedit.Connection := modul.Database1;
  Query1.Connection := modul.Database1;

  BsPrint.Enabled := False;
  FrmInduk.pbpayment := True;
  Self.Height := 768;
  self.Width := 1024;

  qbank.Active := True;
  edttotal.Text := '';
  edtbayar.Text := '';
  edtkembali.Text := '';
  qordermenu.Active := True;
  qordermenu.First;
  pvedit := false;
  pvboleh := False;
  DBGrid1.Enabled := True;

  qbank.Active := False;
  qbank.SQL.Text :='SELECT     id, nama ' +
                    ' FROM         tbank order by nama ';
  qbank.Active := True;

   cmbnamabank.Clear;
   cmbnamabank.Items.Add('');
   while not(qbank.Eof) do
   begin
      cmbnamabank.Items.Add(qbank.Fields[1].Value);
      cmbnamabank2.Items.Add(qbank.Fields[1].Value);
      qbank.Next
   end;

  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;

  query.SQL.Text := 'select * from tvoucher';
  query.Active := True;
  while query.Eof = False do
  begin
    voucherComboBox.Items.Add(query.FieldByName('name').AsString);
    query.Next;
  end;

  query.Active := False;
  query.SQL.Text := 'select * from tsetup';
  query.Active := True;
  roomTax := query.FieldByName('tax').AsInteger;
  roomService := query.FieldByName('service').AsInteger;
end;


procedure Tfpayment.btnsimpanClick(Sender: TObject);
var
  vidorder2 : string;
  payment : integer;
  bankName: String;
  cardType: String;
  cardNumber: String;
  cardName: String;
  description: String;
begin

  bankName := '';
  cardType := '';
  cardNumber := '';
  cardName := '';
  description := '';

  //Validasi Umum
  if edttotal.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg('     Data Tidak Valid  !!!     ' ,mtError, [mbOK],0);
    DBGrid1.SetFocus;
    Exit;
  end;


 //VALIDASI PEMBAYARAN SECARA CASH
 if cmbcarabayar.ItemIndex = 0 then
 begin
  if edtbayar.Text = '' then
  begin
    beep;
    bsSkinMessage1.MessageDlg(' DATA TIDAK VALID ' ,mtInformation, [mbOK],0);
    edtbayar.SetFocus;
    EXIT;
  end;
  if pvbayar < tmptotal then
  begin
    beep;
    bsSkinMessage1.MessageDlg('      PEMBAYARAN KURANG       ', mtInformation, [mbOK], 0);
    edtbayar.SetFocus;
    exit;
  end;
 end;

  if cmbcarabayar.ItemIndex = 0 then
  begin
    if edtbayar.Text = '' then
    begin
      beep;
      edtbayar.SetFocus;
      exit;
    end;
  end;
//validasi credit card
  if (cmbcarabayar.ItemIndex) = 1 then
  begin
    if cmbjenis.Text = '' then
    begin
      beep;
      bsSkinMessage1.MessageDlg(' JENIS CARD BELUM DIPILIH ! ',mtInformation,[mbOK],0);
      cmbjenis.SetFocus;
      exit;
    end;
    cardType := cmbjenis.Text;
    if cmbnamabank.Text = '' then
    begin
      beep;
      bsSkinMessage1.MessageDlg(' NAMA BANK BELUM DIPILIH ',mtInformation,[mbOK],0);
      cmbnamabank.SetFocus;
      exit;
    end;
    bankName := cmbnamabank.Text;
    if edtnocc.Text = '' then
    begin
      beep;
      bsSkinMessage1.MessageDlg('  NOMOR CREDIT CARD MASIH KOSONG! ',mtInformation,[mbOK],0);
      edtnocc.SetFocus;
      exit;
    end;
    cardNumber := edtnocc.Text;
    if edtnamacc.Text = '' then
    begin
      beep;
      bsSkinMessage1.MessageDlg(' NAMA PEMILIK CREDIT CARD MASIH KOSONG ',mtInformation,[mbOK],0);
      edtnamacc.SetFocus;
      exit;
    end;
    cardName := edtnamacc.Text;
  end;


  //VALIDASI SERVICE
  if cmbcarabayar.ItemIndex = 2 then
  begin
    if edtketerangan.Text = '' then
    begin
        beep;
        bsSkinMessage1.MessageDlg( ' INFORMASI FOC HARUS DIISI ',mtInformation,[mbOK],0);
        edtketerangan.SetFocus;
        exit;
    end;
    description := edtketerangan.Text;
  end;

// VALIDASI CANCEL
  if cmbcarabayar.ItemIndex = 3 then
  begin
    if edtketerangan.Text = '' then
    begin
        beep;
        bsSkinMessage1.MessageDlg(' INPUT ALASAN CANCEL ', mtInformation, [mbOK],0);
        edtketerangan.SetFocus;
        EXIT;
    END;
    description := edtketerangan.Text;
  END;

  if cmbcarabayar.ItemIndex = 0 then
  begin
    ShellExecute(Handle, 'open', 'printer.bat','',nil, SW_HIDE);
  end;

  payment := cmbcarabayar.ItemIndex+1;
  if payment = 5 then
  begin
    payment := 7;
  end;

  if payment = 7 then
  begin

    if voucherComboBox.ItemIndex = -1 then
    begin
      Beep;
      bsSkinMessage1.MessageDlg('Silahkan pilih voucher', mtInformation, [mbOK],0);
      voucherComboBox.SetFocus;
      exit;
    end;
    
    voucherName := voucherComboBox.Text;

    if voucheNomimalEdit.Text = '' then
    begin
      Beep;
      bsSkinMessage1.MessageDlg('Silahkan isi nominal voucher', mtInformation, [mbOK],0);
      voucheNomimalEdit.SetFocus;
      exit;
    end;

    voucherName2 := voucherNamaEdit.Text;
    if voucherName2 = '' then
    begin
      Beep;
      bsSkinMessage1.MessageDlg('Silahkan isi nama voucher', mtInformation, [mbOK],0);
      voucherNamaEdit.SetFocus;
      exit;
    end;

    voucherCode := edtVoucherKode.Text;
    if voucherCode = '' then
    begin
      Beep;
      bsSkinMessage1.MessageDlg('Silahkan isi kode voucher', mtInformation, [mbOK],0);
      edtVoucherKode.SetFocus;
      exit;
    end;

    if payment2CheckBox.Checked then
    begin
      if payment2ComboBox.ItemIndex = 0 then
      begin
        payment := 8;
        if edtBayar2.Text = '' then
        begin
          Beep;
          bsSkinMessage1.MessageDlg('Silahkan isi nilai cash', mtInformation, [mbOK],0);
          edtBayar2.SetFocus;
          exit;
        end;
        if (voucherValue + cash2Value) < tmptotal then
        begin
          Beep;
          bsSkinMessage1.MessageDlg('Pembayaran kurang', mtInformation, [mbOK],0);
          edtBayar2.SetFocus;
          exit;
        end;
      end
      else if payment2ComboBox.ItemIndex = 1 then
      begin
        payment := 9;
        cardType := cmbjenis2.Text;
        if cardType = '' then
        begin
          beep;
          bsSkinMessage1.MessageDlg(' JENIS CARD BELUM DIPILIH ! ',mtInformation,[mbOK],0);
          cmbjenis2.SetFocus;
          exit;
        end;
        bankName := cmbnamabank2.Text;
        if bankName = '' then
        begin
          beep;
          bsSkinMessage1.MessageDlg(' NAMA BANK BELUM DIPILIH ',mtInformation,[mbOK],0);
          cmbnamabank2.SetFocus;
          exit;
        end;
        cardNumber := edtnocc2.Text;
        if cardNumber = '' then
        begin
          beep;
          bsSkinMessage1.MessageDlg('  NOMOR CREDIT CARD MASIH KOSONG! ',mtInformation,[mbOK],0);
          edtnocc2.SetFocus;
          exit;
        end;
        cardName := edtnamacc2.Text;
        if cardName = '' then
        begin
          beep;
          bsSkinMessage1.MessageDlg(' NAMA PEMILIK CREDIT CARD MASIH KOSONG ',mtInformation,[mbOK],0);
          edtnamacc2.SetFocus;
          exit;
        end;
      end
      else
      begin
        Beep;
        bsSkinMessage1.MessageDlg('Silahkan pilih metode pembayaran kedua', mtInformation, [mbOK],0);
        payment2ComboBox.SetFocus;
        exit;
      end;
    end
    else
    begin
      if voucherValue < tmptotal then
      begin
        Beep;
        bsSkinMessage1.MessageDlg('Pembayaran kurang', mtInformation, [mbOK],0);
        voucheNomimalEdit.SetFocus;
        exit;
      end;
    end;
  end
  else
  begin
    voucherFee := 0;
    voucherDiscount := 0;
    voucherId := 0;
    voucherName := '';
    voucherName2 := '';
    voucherCode := '';
    voucherValue := 0;
    voucherValue2 := 0;
  end;

  Qedit.Active := False;
  Qedit.SQL.Text := ' UPDATE    tpayment ' +
                    '  SET idorder = ' + QuotedStr(tmpidorder) +
//                    ', tanggal = ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss', Now)) +
                    ', payment = ' + IntToStr(payment) +
                    ', namabank = ' + QuotedStr(bankName) +
                    ' , ccid = '+  QuotedStr(cardType) +
                    ', ccno = ' + QuotedStr(cardNumber) +
                    ', keterangan = ' + QuotedStr(description) +
                    ' , ccnama = ' + QuotedStr(cardName) +
                    ' , kasir = ' + QuotedStr(FrmInduk.pbidkasir) +
                    ' , voucher2_id = ' + IntToStr(voucherId) +
                    ' , voucher2_name = ' + QuotedStr(voucherName) +
                    ' , voucher2_fee = ' + IntToStr(voucherFee) +
                    ' , voucher2_discount = ' + IntToStr(voucherDiscount) +
                    ' , voucher2_name2 = ' + QuotedStr(voucherName2) +
                    ' , voucher2_code = ' + QuotedStr(voucherCode) +
                    ' , voucher2_value = ' + FormatFloat('0', voucherValue) +
                    ' , voucher2_value2 = ' + FormatFloat('0', voucherValue2) +
                    ' where idorder = ' + QuotedStr(tmpidorder) ;
  Qedit.ExecSQL;

  //edit payment tbayar
  Query1.Active := False;
  Query1.SQL.Text :=  'SELECT     idorder2 '+
                     'FROM         tpayment '+
                     'WHERE     (idorder = '+ QuotedStr(tmpidorder) +')';
  Query1.Active := True;
  vidorder2 := Query1.FieldbyName('idorder2').AsString;

  Query1.Active := False;
  Query1.SQL.Text := ' UPDATE    tbayar ' +
                    '  SET payment = ' + IntToStr(payment) +
                    ' , voucher2_value2 = ' + FormatFloat('0', voucherValue2) +
                    ' where idorder = ' + QuotedStr(vidorder2) ;
  Query1.ExecSQL;

  qordermenu.Active := False;
  qordermenu.Active := True;
  edttotal.Text := '';
  bersih;

  voucherComboBox.ItemIndex := -1;
  voucherValue := 0;
  voucheNomimalEdit.Text := '';
  voucherHargaEdit.Text := '';
  voucherNamaEdit.Text := '';
  edtVoucherKode.Text := '';

  payment2CheckBox.Enabled := True;

  payment2ComboBox.ItemIndex := -1;

  edtBayar2.Text := '';
  edtKembali2.Text := '';

  cmbjenis2.ItemIndex := -1;
  cmbnamabank2.ItemIndex := -1;
  edtnamacc2.Text := '';
  edtnocc2.Text := '';

  DBGrid1.SetFocus;
  BsPrint.Enabled := False;
end;

procedure Tfpayment.qordermenuCalcFields(DataSet: TDataSet);
begin
  qordermenucalRoom.Value := qordermenuroom.Value - qordermenudisroom.Value;
  qordermenucalMenu.Value := qordermenumenu.Value - qordermenudismenu.Value;
  qordermenucalDll.Value := qordermenudll.Value - qordermenudisdll.Value;
  qordermenutotal.AsFloat := (qordermenuroom.Value - qordermenudisroom.Value) +
                             (qordermenumenu.Value - qordermenudismenu.Value)+
                             (qordermenudll.Value - qordermenudisdll.Value)+
                             qordermenutax.Value + qordermenuservice.Value -
                             qordermenuextradiskon.Value - qordermenudiscmember.Value ;
end;

procedure Tfpayment.DBGrid1DblClick(Sender: TObject);
begin
  tmptotal := qordermenu.fieldByName('total').AsFloat;
  tmpidorder := qordermenuidorder.AsString;
  edttotal.Text := FormatFloat('#,0',tmptotal);
  pvbayar := qordermenu.FieldByName('total').AsFloat;
  pvedit := True;
  pvboleh := True;
  cmbcarabayar.ItemIndex := 0;
  
  cmbcarabayar.SetFocus;
  BsPrint.Enabled := true;
end;

procedure Tfpayment.edtbayarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;

  if not (((Key>='0')and(Key<='9')) or (key=#8)) then
  key:=#0;
end;

procedure Tfpayment.edtbayarExit(Sender: TObject);
begin
  if not pvedit then
  begin
    beep;
    edtbayar.Text := '';
    exit;
  end;

  if edtbayar.Text = '' then exit;
  pvbayar := StrToFloat(edtbayar.Text);
  edtbayar.Text := FormatFloat('#,0',pvbayar);
  edtkembali.Text := FormatFloat('#,0',pvbayar-tmptotal);
end;

procedure Tfpayment.edtbayarEnter(Sender: TObject);
begin
  edtbayar.Text := FormatFloat('#',pvbayar);
  edtBayar.SelectAll;
end;

procedure Tfpayment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmInduk.pbpayment := False;
end;

procedure Tfpayment.edtketeranganEnter(Sender: TObject);
begin
  edtketerangan.SelectAll;
end;

procedure Tfpayment.edtKembaliEnter(Sender: TObject);
begin
  edtKembali.SelectAll;
end;

procedure Tfpayment.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := $000080FF;
     FillRect(Rect);
     Font.Color:= clNavy;
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfpayment.cmbcarabayarKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    cmbcarabayarClick(Sender);
end;

procedure Tfpayment.flsExitEnter(Sender: TObject);
begin
  Close;
end;

procedure Tfpayment.rdo_invoiceClick(Sender: TObject);
var sql : String;
begin
  qordermenu.Active := False;
  sql := 'SELECT     tpayment.idorder, tpayment.nama, troom.namaroom AS namaroom, tpayment.croom AS room, tpayment.cmenu AS menu, tpayment.cother AS dll, ' +
         '           tpayment.disroom, tpayment.dismenu, tpayment.disdll, tpayment.tax, tpayment.service, tpayment.idroom, tpayment.discmember, tpayment.invoice ' +
         'FROM       tpayment LEFT OUTER JOIN '+
         '           troom ON tpayment.idroom = troom.id '+
         'WHERE      (tpayment.payment = 0) '+
         'GROUP BY   tpayment.idorder, tpayment.nama, troom.namaroom, tpayment.disroom, tpayment.dismenu, tpayment.disdll, tpayment.tglstop, tpayment.tax, '+
         '           tpayment.service, tpayment.croom, tpayment.cmenu, tpayment.cother, tpayment.idroom, tpayment.discmember, tpayment.invoice ';


  if rdo_invoice.Checked then sql := sql + ' ORDER BY tpayment.invoice ';
  if rdo_room.Checked then sql := sql + ' ORDER BY troom.namaroom, tpayment.invoice ';
  if rdo_nama.Checked then sql := sql + ' ORDER BY tpayment.nama ';
  qordermenu.SQL.Text := sql;
  qordermenu.Active := True;

end;

procedure Tfpayment.qordermenuAfterScroll(DataSet: TDataSet);
begin
  pvbayar := 0;
  cmbcarabayar.ItemIndex := 0;
  Panelcash.Visible := True;
  panelcard.Visible := False;
  panelVoucher.Visible := False;
  payment2CheckBox.Checked := False;
  panelketerangan.Visible := False;
  Panelcash2.Visible := False;
  panelcard2.Visible := False;
  edttotal.Text := '';
  edtbayar.Text := '';
  edtkembali.Text := '';
end;

procedure Tfpayment.BsPrintClick(Sender: TObject);
begin

  Application.CreateForm(Tfdetailreport,fdetailreport);

  if qordermenupajak.Value = '1' then
  begin
    fdetailreport.pbPajak := true;
  end
  else
  begin
    fdetailreport.pbPajak := false;
  end;
  fdetailreport.pbinvoice :=  qordermenuinvoice.Value;
  fdetailreport.pbidorder := qordermenuidorder.Value;
  fdetailreport.pbnamaroom :=  qordermenunamaroom.Value;
  fdetailreport.edtinvoice.Text := fdetailreport.pbinvoice;
  if fdetailreport.pbPajak then
  begin
    fdetailreport.pbInvoice2 := qordermenuinvoice2.Value;
  end
  else
  begin
    fdetailreport.pbInvoice2 := qordermenuinvoice.Value;
  end;
  fdetailreport.btnRoomClick(sender);
end;

procedure Tfpayment.payment2CheckBoxClick(Sender: TObject);
begin
  if payment2CheckBox.Checked then
  begin
    payment2ComboBox.Enabled := True;

    edtBayar2.Text := '';
    edtKembali2.Text := '';

    edtBayar3.Text := FormatFloat('#,0', tmptotal - voucherValue);
    cmbjenis2.ItemIndex := -1;
    cmbnamabank2.ItemIndex := -1;
    edtnamacc2.Text := '';
    edtnocc2.Text := '';
  end
  else
  begin
    payment2ComboBox.ItemIndex := -1;
    payment2ComboBox.Enabled := False;
  end;
end;

procedure Tfpayment.payment2ComboBoxClick(Sender: TObject);
begin
  if payment2ComboBox.ItemIndex = 0 then
  begin
    Panelcash2.Visible := True;
    panelcard2.Visible := False;

    edtBayar2.Text := '';
    edtKembali2.Text := '';
  end
  else if payment2ComboBox.ItemIndex = 1 then
  begin
    Panelcash2.Visible := False;
    panelcard2.Visible := True;

    cmbjenis2.ItemIndex := -1;
    cmbnamabank2.ItemIndex := -1;
    edtnamacc2.Text := '';
    edtnocc2.Text := '';
  end;
end;

procedure Tfpayment.voucherComboBoxClick(Sender: TObject);
var
  query: TZQuery;
begin
  query := TZQuery.Create(Self);
  query.Connection := modul.Database1;
  query.SQL.Text := 'select * from tvoucher where name=''' + voucherComboBox.Text + '''';
  query.Active := True;
  voucherId := query.FieldByName('id').AsInteger;
  voucherFee := query.FieldByName('fee').AsInteger;
  voucherDiscount := query.FieldByName('discount').AsInteger;
  calculateVoucher();
end;

procedure Tfpayment.voucheNomimalEditKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

procedure Tfpayment.voucheNomimalEditChange(Sender: TObject);
begin
  calculateVoucher();
end;

procedure Tfpayment.calculateVoucher();
var
  voucherRoomValue: Double;
  voucherText: String;
begin

  voucherText := voucheNomimalEdit.Text;
  if voucherText = '' then
  begin
    exit;
  end;

  voucherText := stringreplace(voucherText, ',', '', [rfReplaceAll]);
  voucherText := stringreplace(voucherText, '.', '', [rfReplaceAll]);
  voucherValue := StrToFloat(voucherText);
  // voucherRoomValue := (voucherValue * 100) / (100 + roomTax + roomService);
  voucherRoomValue := voucherValue;

  voucherValue2 := voucherRoomValue - ((voucherRoomValue * voucherFee) / 100) - ((voucherRoomValue * voucherDiscount) / 100);
  voucherHargaEdit.Text := FormatFloat('#,0', voucherValue2);
end;

procedure Tfpayment.edtBayar2Enter(Sender: TObject);
begin
  edtbayar2.Text := FormatFloat('#', tmptotal - voucherValue);
  edtBayar2.SelectAll;
end;

procedure Tfpayment.edtBayar2Exit(Sender: TObject);
begin
  if edtBayar2.Text = '' then exit;
  cash2Value := StrToFloat(edtBayar2.Text);
  edtBayar2.Text := FormatFloat('#,0', cash2Value);
  edtKembali2.Text := FormatFloat('#,0', (voucherValue + cash2Value) - tmptotal);
end;

procedure Tfpayment.voucheNomimalEditEnter(Sender: TObject);
begin
  voucheNomimalEdit.Text := FormatFloat('#', voucherValue);
  voucheNomimalEdit.SelectAll;
end;

procedure Tfpayment.voucheNomimalEditExit(Sender: TObject);
begin
  voucheNomimalEdit.Text := FormatFloat('#,0', voucherValue);
end;

procedure Tfpayment.BtnExitpClick(Sender: TObject);
begin
  Close;
end;

end.
