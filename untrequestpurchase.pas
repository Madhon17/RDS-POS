unit untrequestpurchase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBTables, DB, MemDS, VirtualTable,
  bsSkinCtrls, ComCtrls, AEDIT, ExtCtrls, Spin, SkinCtrls,
  BusinessSkinForm, bsMessages;

type
  TFpurchaseRequest = class(TForm)
    DSrequest: TDataSource;
    Qrequest: TQuery;
    Qrequestidrequest: TStringField;
    Qrequesttglperlu: TDateTimeField;
    Qrequesttglrequest: TDateTimeField;
    Qrequestnominal: TFloatField;
    Qidrequest: TQuery;
    Qupdate: TQuery;
    Qbarang: TQuery;
    Qbarangidbarang: TStringField;
    Qbarangnamabarang: TStringField;
    Qbarangharga: TFloatField;
    DSbarang: TDataSource;
    DScari: TDataSource;
    Qothers: TQuery;
    VTrequest: TVirtualTable;
    VTrequestIDbarang: TStringField;
    VTrequestHarga: TFloatField;
    VTrequestIDrequest: TStringField;
    VTrequestTotal: TFloatField;
    VTrequestQty: TIntegerField;
    Qcs: TQuery;
    Qcslogin: TStringField;
    Qcsnama: TStringField;
    bsSkinMessage1: TbsSkinMessage;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    grpMenu: TPanel;
    Barang: TLabel;
    Label4: TLabel;
    edtidbarang: TAEdit;
    edtnamabarang: TAEdit;
    spnquantity: TSpinEdit;
    btnhapus: TbsSkinButton;
    btntambah: TbsSkinButton;
    btnubah: TbsSkinButton;
    btnbatal: TbsSkinButton;
    btnsimpan: TbsSkinButton;
    DBGrid2: TDBGrid;
    Qrequestiddivisi: TStringField;
    Qkonfirmasi: TQuery;
    Qkonfirmasiid: TSmallintField;
    Qkonfirmasilogin: TStringField;
    Qkonfirmasinama: TStringField;
    Qrequestidkarkonfirmasi: TStringField;
    Qrequestketerangan: TStringField;
    Label6: TLabel;
    tglrequest: TDateTimePicker;
    Label3: TLabel;
    tglperlu: TDateTimePicker;
    Label2: TLabel;
    edtCs: TAEdit;
    btnCariMenu: TbsSkinButton;
    edtNamaCs: TEdit;
    Label7: TLabel;
    Memo1: TMemo;
    bsSkinButton1: TbsSkinButton;
    btnadd: TbsSkinButton;
    btnedit: TbsSkinButton;
    btndelete: TbsSkinButton;
    btnexit: TbsSkinButton;
    btnsave: TbsSkinButton;
    btncancel: TbsSkinButton;
    btnBtambah: TbsSkinButton;
    btnBedit: TbsSkinButton;
    btnBhapus: TbsSkinButton;
    btnBsimpan: TbsSkinButton;
    btnBbatal: TbsSkinButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    AEdit1: TAEdit;
    procedure open;
    procedure kunci;
    procedure buka;
    procedure tutup;
    procedure boleh;
    procedure larang;
    procedure btnaddClick(Sender: TObject);
    procedure edtidbarangChange(Sender: TObject);
    procedure edtidbarangEnter(Sender: TObject);
    procedure edtidbarangExit(Sender: TObject);
    procedure edtidbarangKeyPress(Sender: TObject; var Key: Char);
    procedure edtnamabarangChange(Sender: TObject);
    procedure edtnamabarangEnter(Sender: TObject);
    procedure edtnamabarangExit(Sender: TObject);
    procedure edtnamabarangKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure QbarangAfterScroll(DataSet: TDataSet);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure btneditClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btntambahClick(Sender: TObject);
    procedure edtnamabarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtidbarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBbarangDblClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure btnsaveClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btnubahClick(Sender: TObject);
    procedure btnhapusClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btndeleteClick(Sender: TObject);
    procedure edtCsChange(Sender: TObject);
    procedure edtCsEnter(Sender: TObject);
    procedure edtCsExit(Sender: TObject);
    procedure edtNamaCsEnter(Sender: TObject);
    procedure edtNamaCsExit(Sender: TObject);
    procedure spnquantityExit(Sender: TObject);
    procedure DBbarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBbarangKeyPress(Sender: TObject; var Key: Char);
    procedure DBbarangDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure spnquantityChange(Sender: TObject);
    procedure spnquantityEnter(Sender: TObject);
    procedure spnquantityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnbatalEnter(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure btnCariMenuClick(Sender: TObject);
    procedure btnBtambahClick(Sender: TObject);
    procedure btnBsimpanClick(Sender: TObject);
  
    
  private
    pvtambah, pvedit , pvadd, pvubah : boolean;
    id  : Integer;
     pvidrequest,  tmpidbarang  : string;
    pvtglrequest, pvtglperlu  : TDateTime;
    pvtotal   : Double;
    { Private declarations }
  public
   

    { Public declarations }
  end;

var
  FpurchaseRequest: TFpurchaseRequest;

implementation
      uses unit1, unit3, untcaribarang, untcarikar, untMemberCari;
{$R *.dfm}
procedure TFpurchaseRequest.open;
begin

  btnedit.Visible:=False;
  btnsave.Visible:=True;
  btnadd.Visible:=False;
  btndelete.Visible:=False;
  btncancel.Visible:=True;
  btnexit.Visible:=False;
 // btnkeluar.Visible := true;
end;

procedure TFpurchaseRequest.kunci;
begin
  btnedit.Visible:=True;
  btnsave.Visible:=False;
  btnadd.Visible:=True;
  btndelete.Visible:=True;
  btncancel.Visible:=False;
  btnexit.Visible:=True;
 // btnkeluar.Visible := False;
end;


procedure TFpurchaseRequest.boleh;
begin
  edtidbarang.Enabled := True;
  edtnamabarang.Enabled := True;
  spnquantity.Enabled := True;
end;

procedure TFpurchaseRequest.larang;
begin
  edtidbarang.Enabled := False;
  edtnamabarang.Enabled := False;
  spnquantity.Enabled := False;

end;
procedure TFpurchaseRequest.buka;
begin
  btnubah.Visible:=False;
  btnsimpan.Visible:=True;
  btntambah.Visible:=False;
  btnhapus.Visible:=False;
  btnbatal.Visible:=True;

end;

procedure TFpurchaseRequest.tutup;
begin
  btnubah.Visible:=True;
  btnsimpan.Visible:=False;
  btntambah.Visible:=True;
  btnhapus.Visible:=True;
  btnbatal.Visible:=False;

end;



procedure TFpurchaseRequest.btnaddClick(Sender: TObject);
begin
  open;
  pvadd := True;

  VTrequest.Active := True;
  VTrequest.Clear;
  Qcs.Active := True;
end;

procedure TFpurchaseRequest.edtidbarangChange(Sender: TObject);
begin
  if edtidbarang.Text = '' then exit;
  if edtnamabarang.Focused then exit;
  if not(Qbarang.Active) then Qbarang.Active := True;

  Qbarang.Locate('idbarang', edtidbarang.text,[loPartialKey, loCaseInsensitive]);
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure TFpurchaseRequest.edtidbarangEnter(Sender: TObject);
begin
  edtidbarang.SelectAll;
end;

procedure TFpurchaseRequest.edtidbarangExit(Sender: TObject);
begin
     if edtidbarang.Text = '' then exit;
   
   edtidbarang.Text := Qbarangidbarang.AsString;
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure TFpurchaseRequest.edtidbarangKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
  begin
    Key:=#0;
    if spnquantity.Value = 0 then spnquantity.Value :=1;
    spnquantity.SetFocus;
  end;
end;

procedure TFpurchaseRequest.edtnamabarangChange(Sender: TObject);
begin
  if edtnamabarang.Text = '' then exit;
  if edtidbarang.Focused then exit;
  if not(Qbarang.Active) then Qbarang.Active := True;

  Qbarang.Locate('namabarang',edtnamabarang.Text,[loPartialKey, loCaseInsensitive]);
  edtidbarang.Text := Qbarangidbarang.AsString;
end;

procedure TFpurchaseRequest.edtnamabarangEnter(Sender: TObject);
begin
   
  edtnamabarang.SelectAll;
end;

procedure TFpurchaseRequest.edtnamabarangExit(Sender: TObject);
begin
  if edtnamabarang.Text = '' then exit;
  edtidbarang.Text := Qbarangidbarang.AsString;
  edtnamabarang.Text := Qbarangnamabarang.AsString;
end;

procedure TFpurchaseRequest.edtnamabarangKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    Key:=#0;
    Perform (CM_DialogKey, VK_TAB, 0);
    if spnquantity.Value = 0 then spnquantity.Value :=1;
    spnquantity.SetFocus;
  end;
end;

procedure TFpurchaseRequest.FormCreate(Sender: TObject);
begin
  larang;
  tutup;
  Qbarang.Active := True;
  Qrequest.Active := True;
  VTrequest.Active := False;
  tglrequest.DateTime := Now;
  tglperlu.DateTime := Now;
end;

procedure TFpurchaseRequest.btnbatalClick(Sender: TObject);
begin
  tutup;
  larang;
  pvtambah := False;
  pvubah := False;
end;

procedure TFpurchaseRequest.QbarangAfterScroll(DataSet: TDataSet);
begin
    if not((edtidbarang.Focused) or (edtnamabarang.Focused)) then
  begin
    edtnamabarang.Text := Qbarangnamabarang.AsString;
    edtidbarang.Text := Qbarangidbarang.AsString;
  end;
end;

procedure TFpurchaseRequest.TKN13(Sender: TObject; var Key: Char);
begin
 {  if Key = #13 then
  begin
     Key := #0;
     if edtidbarang.Text = '' then edtnamabarang.SetFocus
     else
     begin
     DBbarang.Visible := False;
     if spnquantity.Value = 0 then spnquantity.Value :=1;
      spnquantity.SetFocus;
     end;
  end;    }
end;

procedure TFpurchaseRequest.btneditClick(Sender: TObject);
begin

  if Qrequest.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Ada', mtError,[mbOK],0);
    Exit;
  end;

  pvtglrequest := Qrequesttglrequest.Value;
  pvtglperlu := Qrequesttglperlu.Value;
  edtCs.Text := Qrequestiddivisi.Value;
  edtCsExit(sender);
  tglrequest.DateTime := pvtglrequest;
  tglperlu.DateTime := pvtglperlu;
  Memo1.Text := Qrequestketerangan.Value;


   VTrequest.Active := True;
   pvedit := True;
    open;

  pvidrequest := Qrequestidrequest.Value;
 // edtidrequest.Text := pvidrequest;
 // edtidrequest.Visible := True;

  Qothers.Active := False;
  Qothers.SQL.Text := ' SELECT idbarang, qty, harga ' +
                      ' FROM trequestbarang ' +
                      ' WHERE (idrequest = ' + QuotedStr(pvidrequest) + ')';
  Qothers.Active := True;
  VTrequest.Clear;
  Qothers.First;
  while not (Qothers.eof) do
  begin
    VTrequest.Append;
    VTrequestIDbarang.Value := Qothers.fieldByName('idbarang').AsString;
    VTrequestHarga.Value := Qothers.fieldByName('harga').AsFloat;
    VTrequestQty.Value := Qothers.fieldByName('qty').AsInteger;
    VTrequestTotal.Value :=Qothers.fieldByName('qty').AsInteger * Qothers.fieldByName('harga').AsFloat;
    VTrequest.Post;
    Qothers.Next;
  end;


end;

procedure TFpurchaseRequest.btnsimpanClick(Sender: TObject);
begin
  if edtidbarang.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Lengkap',mtError,[mbOK],0);
    edtidbarang.SetFocus;
    Exit;
  end;

  if spnquantity.Value <= 0 then
  begin
    bsSkinMessage1.MessageDlg('Data salah ', mtError,[mbOK],0);
    spnquantity.SetFocus;
    exit;
  end;

  VTrequest.Active := True;
  if VTrequest.Locate('idbarang',edtidbarang.Text,[loPartialKey, loCaseInsensitive]) then
  begin
    if pvtambah then
    begin
      VTrequest.Edit;
      VTrequestQty.Value := VTrequestQty.Value + spnquantity.Value;
      VTrequestTotal.Value := VTrequestHarga.Value * spnquantity.Value;
      VTrequest.Post;
    end
    else
    if pvubah then
    begin
      VTrequest.Edit;
      VTrequestQty.Value := spnquantity.Value;
      VTrequestTotal.Value := spnquantity.Value * VTrequestHarga.Value;
      VTrequest.Post;
    end;
  end
  else
  begin
    VTrequest.Active := True;
    VTrequest.Append;
    VTrequestIDbarang.Value := edtidbarang.Text;
    VTrequestQty.Value := spnquantity.Value;
    VTrequestHarga.Value := Qbarangharga.Value;
    VTrequestTotal.Value := Qbarangharga.Value * spnquantity.Value;
    VTrequest.Post;
  end;





   pvtambah := False;
   pvubah := False;
   tutup;
   larang;
   btntambah.SetFocus;
  // DBbarang.Visible := False;
  // Panel2.Visible := False;
end;

procedure TFpurchaseRequest.btntambahClick(Sender: TObject);
begin
  pvtambah := True;
  buka;
  boleh;
  edtidbarang.SetFocus;
  spnquantity.Value := 0;
  edtidbarang.Text := '';
  edtnamabarang.Text := '';

end;

procedure TFpurchaseRequest.edtnamabarangKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_down then
     begin
       Qbarang.Next;
       edtidbarang.Text := Qbarangidbarang.AsString;
       edtnamabarang.Text := Qbarangnamabarang.AsString;
     end;

     if key = vk_up then
     begin
       Qbarang.Prior;
       edtidbarang.Text := Qbarangidbarang.AsString;
       edtnamabarang.Text := Qbarangnamabarang.AsString;
     end;


  if key = VK_RETURN	then
  begin

    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFpurchaseRequest.edtidbarangKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key = vk_down then
  begin
    Qbarang.Next;
    edtidbarang.Text := Qbarangidbarang.AsString;
    edtnamabarang.Text := Qbarangnamabarang.AsString;
    edtidbarang.SelectAll;
  end;

  if key = vk_up then
  begin
    Qbarang.Prior;
    edtidbarang.Text := Qbarangidbarang.AsString;
    edtnamabarang.Text := Qbarangnamabarang.AsString;
    edtidbarang.SelectAll;
  end;

  if key = VK_RETURN	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFpurchaseRequest.DBbarangDblClick(Sender: TObject);
begin
  edtidbarang.Text := Qbarangidbarang.AsString;
  edtnamabarang.Text := Qbarangnamabarang.AsString;
 // DBbarang.Visible := False;
  spnquantity.SetFocus;
  spnquantity.Value := 1;
  spnquantity.SelectAll;
end;

procedure TFpurchaseRequest.btnkeluarClick(Sender: TObject);
begin
  close;
  pvadd := False;
  pvedit := False;
end;

procedure TFpurchaseRequest.btnsaveClick(Sender: TObject);
begin
  pvtotal := 0;

  if VTrequest.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('Barang Yang DiRequest Tidak Ada',mtError,[mbOK],0);
    btntambah.SetFocus;
    exit;
  end;

  if edtCs.Text = '' then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Lengkap',mtError,[mbOK],0);
    edtCs.SetFocus;
    Exit;
  end;

  if pvedit then
  begin
    Qothers.Active := False;
    Qothers.SQL.Text := ' DELETE from trequestbarang ' +
                        ' WHERE (idrequest= ' + QuotedStr(pvidrequest) + ')';
    Qothers.ExecSQL;
  end;

  VTrequest.First;
  pvtotal := 0;
  while not (VTrequest.Eof) do
  begin
    pvtotal := pvtotal + VTrequestTotal.Value;
    VTrequest.Next;
  end;

  if pvedit then
  begin
    Qupdate.Active := False;
    Qupdate.SQL.Text := ' UPDATE trequest' +
                        ' SET tglrequest = ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', tglrequest.DateTime)) +
                        ' ,   tglperlu =  ' + QuotedStr(FormatDateTime('yyyy-MM-dd HH:mm:ss ', tglperlu.DateTime)) +
                        ' ,   iddivisi=   ' + QuotedStr(edtCs.Text) +
                        ' ,   idkasir=    ' + QuotedStr(FrmInduk.pbidkasir) +
                        ' ,   nominal= ' + FloatToStr(pvtotal) +
                        ' ,   keterangan=  ' + QuotedStr(Memo1.Text) +
                        ' ,   idkarkonfirmasi= ' + QuotedStr('') +
                        ' WHERE (idrequest= ' + QuotedStr(pvidrequest) + ')';
    Qupdate.ExecSQL;
  end;

  if pvadd then
  begin
    Qidrequest.Active := False;
    Qidrequest.SQL.Text := ' SELECT     MAX(RIGHT(idrequest, 4)) AS id  ' +
                         ' FROM         trequest ' +
                         ' WHERE     (idrequest LIKE ' + QuotedStr(FormatDateTime('RQyyMMdd',Now)+'%')+')';
    Qidrequest.Active := True;
    try
      id := StrToInt(Qidrequest.FieldByName('id').Value);
    except
      id :=0;
    end;
    id := id+1;
    pvidrequest := FormatDateTime('PRyyMMdd',Now) + FormatFloat('0000',id);
   end;


// simpan ke trequestbarang
   VTrequest.First;
   while not (VTrequest.Eof) do
   begin
     Qupdate.Active := False;
     Qupdate.SQL.Text := ' INSERT INTO    trequestbarang '+
                          ' (idrequest, idbarang, qty, harga) '+
                          ' VALUES   (:idrequest, :idbarang, :qty, :harga ) ';

     Qupdate.Prepare;
     Qupdate.ParamByName('idrequest').AsString := pvidrequest;
     Qupdate.ParamByName('idbarang').AsString := VTrequestIDbarang.Value ;
     Qupdate.ParamByName('qty').AsInteger := VTrequestQty.Value;
     Qupdate.ParamByName('harga').AsFloat := VTrequestHarga.Value;
     Qupdate.ExecSQL;
     VTrequest.Next;
  end;



//simpan ke Trequest
  if pvadd then
  begin
  Qupdate.Active := False;
  Qupdate.SQL.Text := ' INSERT INTO    trequest '+
                          ' (idrequest, tglrequest, tglperlu, iddivisi, idkasir, nominal, keterangan, idkarkonfirmasi) '+
                          ' VALUES   (:idrequest, :tglrequest, :tglperlu, :iddivisi, :idkasir, :nominal, :keterangan, :idkarkonfirmasi ) ';
   Qupdate.Prepare;
   Qupdate.ParamByName('idrequest').AsString := pvidrequest;
   Qupdate.ParamByName('tglrequest').AsDateTime := tglrequest.DateTime;
   Qupdate.ParamByName('tglperlu').AsDateTime := tglperlu.DateTime;
   Qupdate.ParamByName('iddivisi').AsString := edtCs.Text;
   Qupdate.ParamByName('idkasir').AsString := FrmInduk.pbidkasir;
   Qupdate.ParamByName('nominal').AsFloat := pvtotal;
   Qupdate.ParamByName('keterangan').AsString := Memo1.Text;
   Qupdate.ParamByName('idkarkonfirmasi').AsString := '';
   Qupdate.ExecSQL;

  end;

   Qrequest.Active := False;
   Qrequest.Active := True;

   kunci;
   pvadd := False;
   pvedit := False;
end;

procedure TFpurchaseRequest.btncancelClick(Sender: TObject);
begin
  kunci;
  pvadd := False;
  pvedit := False;
 // Panel2.Visible := True;
end;

procedure TFpurchaseRequest.btnubahClick(Sender: TObject);
begin
  if VTrequest.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Ada', mtError,[mbOK],0 );
    Exit;
  end;
  

  buka;
  boleh;
  pvubah := True;
  spnquantity.SetFocus;
  VTrequest.Edit;
  edtidbarang.Text := VTrequestIDbarang.Value;
 // edtidbarangChange(sender);}
  spnquantity.Value := VTrequestQty.Value;
  tmpidbarang := VTrequestIDbarang.Value;

end;

procedure TFpurchaseRequest.btnhapusClick(Sender: TObject);
begin
  if VTrequest.RecordCount = 0 then
  begin
    Exit;
  end;
   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
    VTrequest.Delete;
end;

procedure TFpurchaseRequest.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 { with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     end;
     end;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State); }
end;

procedure TFpurchaseRequest.DBGrid2DrawColumnCell(Sender: TObject;
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
    DBGrid2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFpurchaseRequest.btndeleteClick(Sender: TObject);
begin
 if Qrequest.RecordCount = 0 then
  begin
    bsSkinMessage1.MessageDlg('Data Tidak Ada', mtError,[mbOK],0);
    Exit;
  end;

   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
   begin

    Qothers.Active := False;
    Qothers.SQL.Text := ' DELETE From trequest ' +
                        ' WHERE (idrequest= ' + QuotedStr(Qrequestidrequest.Text) + ')';
    Qothers.ExecSQL;


    Qothers.Active := False;
    Qothers.SQL.Text := ' DELETE From trequestbarang ' +
                       ' WHERE (idrequest= ' + QuotedStr(Qrequestidrequest.Text) + ')';
    Qothers.ExecSQL;

    Qrequest.Active := False;
    Qrequest.Active := True;
   end;
end;

procedure TFpurchaseRequest.edtCsChange(Sender: TObject);
begin
  if edtCs.Text = '' then exit;
  if not (Qcs.Active) then Qcs.Active := True;
  Qcs.Locate('login', edtCs.Text, [loPartialKey,loCaseInsensitive]);
  edtNamaCs.Text := Qcsnama.AsString;
end;

procedure TFpurchaseRequest.edtCsEnter(Sender: TObject);
begin
   edtCs.SelectAll;
end;

procedure TFpurchaseRequest.edtCsExit(Sender: TObject);
begin
  if edtCs.Text = '' then exit;
  Qcs.Locate('login', edtCs.Text, [loPartialKey, loCaseInsensitive]);
  edtNamaCs.Text := Qcsnama.AsString;
end;

procedure TFpurchaseRequest.edtNamaCsEnter(Sender: TObject);
begin
   edtNamaCs.SelectAll;
end;

procedure TFpurchaseRequest.edtNamaCsExit(Sender: TObject);
begin
   if edtNamaCs.Text = '' then exit;
    Qcs.Locate('nama', edtNamaCs.Text, [loPartialKey, loCaseInsensitive]);
  edtCs.Text := Qcslogin.AsString;
  edtNamaCs.Text := Qcsnama.AsString;
end;

procedure TFpurchaseRequest.spnquantityExit(Sender: TObject);
begin
  if spnquantity.Text = '' then spnquantity.Value := 1;

end;

procedure TFpurchaseRequest.DBbarangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_down then
  begin
    Qbarang.Next;
    edtidbarang.Text := Qbarangidbarang.AsString;
    edtnamabarang.Text := Qbarangnamabarang.AsString;
  end;

  if key = vk_up then
  begin
    Qbarang.Prior;
    edtidbarang.Text := Qbarangidbarang.AsString;
    edtnamabarang.Text := Qbarangnamabarang.AsString;
  end;
end;

procedure TFpurchaseRequest.DBbarangKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13	then
  begin
    Key := #0;
    DBbarangDblClick(sender);
  end;
end;

procedure TFpurchaseRequest.DBbarangDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 { with (Sender as TDBGrid).Canvas do begin
    if (gdSelected in State) then
    begin
     Brush.Color := clLime;
     FillRect(Rect);
     Font.Color:= clBlack;
     end;
     end;
    DBbarang.DefaultDrawColumnCell(Rect, DataCol, Column, State); }
end;

procedure TFpurchaseRequest.spnquantityChange(Sender: TObject);
begin
  if  not pvtambah then exit ;
  if spnquantity.Text = '' then exit;
end;

procedure TFpurchaseRequest.spnquantityEnter(Sender: TObject);
begin
  spnquantity.SelectAll;
end;

procedure TFpurchaseRequest.spnquantityKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then btnsimpanClick(Sender);
end;

procedure TFpurchaseRequest.btnbatalEnter(Sender: TObject);
begin
  //DBbarang.Visible := False;
end;

procedure TFpurchaseRequest.btnexitClick(Sender: TObject);
begin
    FpurchaseRequest.Close;
end;

procedure TFpurchaseRequest.btnCariMenuClick(Sender: TObject);
begin
  Application.CreateForm(TFcarikar,Fcarikar);
  Fcarikar.pbrequest := True;
  Fcarikar.ComboBox1.ItemIndex := 0;
  Fcarikar.ComboBox1Click(Sender);
  FrmInduk.Enabled := False;
end;

procedure TFpurchaseRequest.btnBtambahClick(Sender: TObject);
begin
  VTrequest.Append;
end;

procedure TFpurchaseRequest.btnBsimpanClick(Sender: TObject);
begin
  if VTrequest.Locate('idbarang', edtidbarang.Text, [loCaseInsensitive]) then
  begin
    VTrequest.Edit;
    VTrequestQty.Value := VTrequestQty.Value + spnquantity.Value;
    VTrequest.Post;
  end
  else
  begin
    VTrequest.Append;
    VTrequestIDbarang.Value := edtidbarang.Text;
    VTrequestQty.Value := VTrequestQty.Value + spnquantity.Value;
    VTrequestHarga.Value := Qbarangharga.Value;
    VTrequest.Post;
  end;

end;

end.

