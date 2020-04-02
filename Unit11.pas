unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBTables, Grids, DBGrids, Spin,
  ExtCtrls, MemDS, VirtualTable, BusinessSkinForm, bsSkinCtrls;

type
    Tfpaketroom = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    dbgpaketmenu: TDBGrid;
    btnsimpan: TButton;
    btnkeluar: TButton;
    btncarimenu: TButton;
    Menu: TLabel;
    edtmenu: TEdit;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    DBLkatroom: TDBLookupComboBox;
    DBhargaroom: TDBEdit;
    SPNdurasi: TSpinEdit;
    edthargaroom: TEdit;
    DSkatroom: TDataSource;
    qkatroom: TQuery;
    DSkategori: TDataSource;
    qloading: TQuery;
    edtNamaMenu: TEdit;
    Qmenucari: TQuery;
    Qmenucariid: TStringField;
    Qmenucarimenu: TStringField;
    VTpaketroom: TVirtualTable;
    DBGpaketroom: TDBGrid;
    DSpaketmenu: TDataSource;
    DSpaketroom: TDataSource;
    Qharga: TQuery;
    VTpaketmenu: TVirtualTable;
    Qmenucarikategori: TSmallintField;
    Qmenucariharga: TFloatField;
    Label7: TLabel;
    Label8: TLabel;
    EdtTotalpaketmenu: TEdit;
    spnquantity: TSpinEdit;
    Edit1: TEdit;
    VTpaketroomidroom: TSmallintField;
    VTpaketroomharga: TFloatField;
    VTpaketroomjumlah: TFloatField;
    VTpaketroomdurasi: TSmallintField;
    Edit2: TEdit;
    VTpaketroomtotalpaketroom: TFloatField;
    VTpaketmenuidmenu: TStringField;
    VTpaketmenuharga: TFloatField;
    VTpaketmenuquantity: TSmallintField;
    VTpaketmenujumlah: TFloatField;
    VTpaketmenuJumlahTotalPaketmenu: TFloatField;
    lblcari: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtHarga: TDBEdit;
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    btneditpaketroom: TbsSkinButton;
    btntambahpaketroom: TbsSkinButton;
    btnhapuspaketroom: TbsSkinButton;
    btnsimpanpaketroom: TbsSkinButton;
    btnbatalpaketroom: TbsSkinButton;
    btntambahpaketmenu: TbsSkinButton;
    btneditpaketmenu: TbsSkinButton;
    btnhapuspaketmenu: TbsSkinButton;
    btnsimpanpaketmenu: TbsSkinButton;
    btnbatalpaketmenu: TbsSkinButton;


    procedure bukapaketroom;
    procedure tutuppaketroom;
    procedure bukapaketmenu;
    procedure tutuppaketmenu;
    procedure boleh;
    procedure larang;
    procedure bolehroom;
    procedure larangroom;
    procedure btnkeluarClick(Sender: TObject);
    procedure btnbatalClick(Sender: TObject);
    procedure btneditpaketmenuClick(Sender: TObject);
    procedure btnhapuspaketmenuClick(Sender: TObject);
    procedure btntambahpaketmenuClick(Sender: TObject);
    procedure DSkatroomDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure DBLkatroomClick(Sender: TObject);
    procedure SPNdurasiChange(Sender: TObject);
    procedure btncarimenuClick(Sender: TObject);
    procedure edtmenuChange(Sender: TObject);
    procedure btnbatalpaketmenuClick(Sender: TObject);
    procedure btnbatalpaketroomClick(Sender: TObject);
    procedure btntambahpaketroomClick(Sender: TObject);
    procedure btnsimpanpaketroomClick(Sender: TObject);
    procedure btnhapuspaketroomClick(Sender: TObject);
    procedure DBhargaroomChange(Sender: TObject);
    procedure edthargaChange(Sender: TObject);
    procedure spnquantityChange(Sender: TObject);
    procedure btnsimpanpaketmenuClick(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure btneditpaketroomClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VTpaketroomAfterScroll(DataSet: TDataSet);
    procedure VTpaketmenuAfterScroll(DataSet: TDataSet);
    procedure edtmenuExit(Sender: TObject);
    procedure edthargaExit(Sender: TObject);
    procedure TKN13(Sender: TObject; var Key: Char);
    procedure TKN(Sender: TObject; var Key: Char);
  private
    pvtambah, pvtambahmenu : Boolean;
    pvharga,  pvtemp   : Real;
    pvtempmenu : Real;
    { Private declarations }
  public
    pvroomtotal, pvtotalmenu : Real;
    pbcarimenu : Boolean;
    { Public declarations }
  end;

var
  fpaketroom: Tfpaketroom;

implementation
  uses unit1, unit9, unit3, unit12, Unit10;

{$R *.dfm}


procedure Tfpaketroom.boleh;
begin
  edtmenu.Enabled := true;
  edtharga.Enabled := True;
  EdtTotalpaketmenu.Enabled := True;
  Edit1.Enabled := True;
  spnquantity.Enabled := True;
  edtNamaMenu.Enabled := True;
  btncarimenu.Enabled := True;
end;

procedure Tfpaketroom.larang;
begin
   edtmenu.Enabled := False;
   edtharga.Enabled := False;
   EdtTotalpaketmenu.Enabled := False;
   Edit1.Enabled := True;
   spnquantity.Enabled := False;
   edtNamaMenu.Enabled := False;
   btncarimenu.Enabled := False;
end;

procedure Tfpaketroom.bolehroom;
begin
  DBLkatroom.Enabled := True;
  DBhargaroom.Enabled := True;
  SPNdurasi.Enabled := True;
  edthargaroom.Enabled := True;
  Edit2.Enabled := True;
end;

procedure Tfpaketroom.larangroom;
begin
  DBLkatroom.Enabled := False;
  DBhargaroom.Enabled := False;
  SPNdurasi.Enabled := False;
  edthargaroom.Enabled := False;
  Edit2.Enabled := True;
end;

procedure Tfpaketroom.bukapaketroom;

begin
  btneditpaketroom.Visible:=False;
  btnsimpanpaketroom.Visible:=True;
  btntambahpaketroom.Visible:=False;
  btnhapuspaketroom.Visible:=False;
//  btnkeluarpaketroom.Visible:=False;
  btnbatalpaketroom.Visible := True;
end;

procedure Tfpaketroom.tutuppaketroom;
begin
  btneditpaketroom.Visible:=True;
  btnsimpanpaketroom.Visible:=False;
  btntambahpaketroom.Visible:=True;
  btnhapuspaketroom.Visible:=True;
 // btnkeluarpaketroom.Visible:=True;
  btnbatalpaketroom.Visible := False;
end;

procedure Tfpaketroom.bukapaketmenu;
begin
  btneditpaketmenu.Visible:=False;
  btnsimpanpaketmenu.Visible:=True;
  btntambahpaketmenu.Visible:=False;
  btnhapuspaketmenu.Visible:=False;
 // btnkeluarpaketmenu.Visible:=False;
  btnbatalpaketmenu.Visible := True;
end;

procedure Tfpaketroom.tutuppaketmenu;
begin
  btneditpaketmenu.Visible:=True;
  btnsimpanpaketmenu.Visible:=False;
  btntambahpaketmenu.Visible:=True;
  btnhapuspaketmenu.Visible:=True;
 // btnkeluarpaketmenu.Visible:=True;
  btnbatalpaketmenu.Visible := False;
end;

procedure Tfpaketroom.btnkeluarClick(Sender: TObject);
begin
  fpaketroom.Close;
end;

procedure Tfpaketroom.btnbatalClick(Sender: TObject);
begin
  tutuppaketroom;
  VTpaketroom.Cancel;
  DBGpaketroom.Enabled:=True;
  DBLkatroom.SetFocus;
end;

procedure Tfpaketroom.btneditpaketmenuClick(Sender: TObject);
begin
  if VTpaketmenu.RecordCount = 0 then
  begin
    ShowMessage('    TIDAK ADA DATA YANG DIEDIT !!    ');
    Exit;
  end;
  boleh;
  edtmenu.Enabled := True;
  dbgpaketmenu.Enabled := true ;
  VTpaketmenu.Edit;
  pvtempmenu := VTpaketmenuharga.Value * VTpaketmenuquantity.Value;
  edtharga.SetFocus;
  bukapaketmenu;
  pvtambahmenu := True;
end;

procedure Tfpaketroom.btnhapuspaketmenuClick(Sender: TObject);
begin
  if VTpaketmenu.RecordCount = 0 then
  begin
    Exit;
  end;
   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       pvtotalmenu := pvtotalmenu - (VTpaketmenuharga.Value * VTpaketmenuquantity.Value);
       Edit1.Text := FloatToStr(pvtotalmenu)  ;
       VTpaketmenu.Delete;
end;

procedure Tfpaketroom.btntambahpaketmenuClick(Sender: TObject);
begin
    boleh;
    bukapaketmenu;
    VTpaketmenu.Append;
    pvtempmenu := 0 ;
    edtmenu.Text := '';
    edtNamaMenu.Text := '';
    edtharga.Text := '';
    spnquantity.Value := 1;
    EdtTotalpaketmenu.Text := '';
    dbgpaketmenu.Enabled := false;
    edtmenu.SetFocus;

    pvtambahmenu := True;
end;

procedure Tfpaketroom.DSkatroomDataChange(Sender: TObject; Field: TField);
begin
    qkatroom.Active := False;
    qkatroom.SQL.Text := 'SELECT     kategori, harga  ' +
                        'FROM         tkategoriroom  ' +
                        'WHERE  (kategori = ' + dblkatroom.text;

end;

procedure Tfpaketroom.FormCreate(Sender: TObject);
begin
{    fmenu.pbpaketroom := True;
    larang;
    larangroom;
    VTpaketroom.Active := True;
    VTpaketmenu.Active := True;
    qkatroom.Active := True;
    Qmenucari.Active := True;
    qloading.SQL.Text := 'SELECT     id ' +
                       ' FROM         tkategoriroom ' +
                       ' ORDER BY harga ' ;
    qloading.Active := True;
    qloading.First;
             }
end;

procedure Tfpaketroom.DBLkatroomClick(Sender: TObject);
begin
  qharga.SQL.Text := 'SELECT      harga ' +
                     'FROM         tkategoriroom ' +
                     'WHERE     (kategori = '+ QuotedStr(DBLkatroom.Text ) + ')';
  qharga.Active := True;
  pvharga := qharga.FieldByName('harga').AsFloat;
  VTpaketroomharga.Value := pvharga;
  edthargaroom.Text := FormatFloat('#,#', SPNdurasi.Value * pvharga );
end;

procedure Tfpaketroom.SPNdurasiChange(Sender: TObject);
begin
  if SPNdurasi.Text = '' then Exit;
  DBhargaroomChange(sender);
end;

procedure Tfpaketroom.btncarimenuClick(Sender: TObject);
begin
    pvtambah := True;
  if pbcarimenu = true then
    fcarimenu.Show
    else
    Application.CreateForm(Tfcarimenu,fcarimenu);
   
end;

procedure Tfpaketroom.edtmenuChange(Sender: TObject);
begin
  if not(pvtambahmenu) then exit;
  if not(Qmenucari.Active) then Qmenucari.Active := True;

  Qmenucari.Locate('id',edtmenu.Text,[loPartialKey]);
  edtNamaMenu.Text := Qmenucarimenu.AsString;
  VTpaketmenuharga.Value := Qmenucariharga.Value;
end;

procedure Tfpaketroom.btnbatalpaketmenuClick(Sender: TObject);
begin
    pvtambahmenu := False;
    VTpaketmenu.Cancel;
    tutuppaketmenu;
    DBGpaketmenu.Enabled:=True;
    DBGpaketmenu.SetFocus;
    larang;
end;

procedure Tfpaketroom.btnbatalpaketroomClick(Sender: TObject);
begin
    VTpaketroom.Cancel;
    tutuppaketroom;
    DBGpaketroom.Enabled:=True;
    DBGpaketroom.SetFocus;
    larangroom;
end;

procedure Tfpaketroom.btntambahpaketroomClick(Sender: TObject);
begin
    bolehroom;
    pvTambah := True;
    qharga.SQL.Text := 'SELECT      harga ' +
                       'FROM         tkategoriroom ' +
                       'WHERE     (kategori = '+ QuotedStr(DBLkatroom.Text ) + ')';
    qharga.Active := True;
    qkatroom.SQL.Text := ' SELECT     id, kategori  ' +
                         ' FROM         tkategoriroom ' +
                         ' ORDER BY id ' ;
    pvtemp := 0 ;
    SPNdurasi.Value := 1;
    VTpaketroom.Edit;
    bukapaketroom;
    SPNdurasiChange(sender);
    qkatroom.Active := True;
    VTpaketroom.Append;
    DBLkatroom.SetFocus;
    DBGpaketroom.Enabled := false;
end;

procedure Tfpaketroom.btnsimpanpaketroomClick(Sender: TObject);
begin
  if DBLkatroom.Text = '' then
  begin
    beep;
    ShowMessage('Pilih Kategori Room! ');
    DBLkatroom.SetFocus;
    exit;
  end;

  VTpaketroomdurasi.Value := SPNdurasi.Value;
  VTpaketroomharga.Value := pvharga;
  VTpaketroomjumlah.Value :=  pvharga * SPNdurasi.Value ;

  pvroomtotal := pvroomtotal - pvtemp + (pvharga * SPNdurasi.Value) ;
  Edit2.Text := FloatToStr(pvroomtotal)  ;
  VTpaketroomtotalpaketroom.Value := StrToFloat(Edit2.Text);

  VTpaketroom.Post;
  DBGpaketroom.Enabled := True;
  pvTambah := False;
  DBGpaketroom.Enabled:=True;
  tutuppaketroom;
  DBGpaketroom.SetFocus;
  larangroom;

end;

procedure Tfpaketroom.btnhapuspaketroomClick(Sender: TObject);
begin
  if VTpaketroom.RecordCount = 0 then
  begin
    Exit;
  end;
   if  MessageDlg('konfirmasi',mtConfirmation,mbOKCancel,0) = mrOk then
       pvroomtotal := pvroomtotal - (VTpaketroomharga.Value * VTpaketroomdurasi.Value);
       Edit2.Text := FloatToStr(pvroomtotal)  ;
       VTpaketroom.Delete;
end;

procedure Tfpaketroom.DBhargaroomChange(Sender: TObject);

begin
  if DBhargaroom.Text = '' then Exit;
  try
    pvharga := StrToFloat(DBhargaroom.Text);
    edthargaroom.Text := FormatFloat('#,#', SPNdurasi.Value * pvharga);
  except
    exit;
end;

end;
procedure Tfpaketroom.edthargaChange(Sender: TObject);
begin
  EdtTotalpaketmenu.Text := FormatFloat('#,#', spnquantity.Value * VTpaketmenuharga.Value);
end;

procedure Tfpaketroom.spnquantityChange(Sender: TObject);
begin
   if spnquantity.Text = '' then Exit;
   edthargaChange(sender);
end;

procedure Tfpaketroom.btnsimpanpaketmenuClick(Sender: TObject);

begin
  if edtmenu.Text = '' then
  begin
    beep;
    ShowMessage('ID MENU BELUM DIISI!');
    edtmenu.SetFocus;
    exit;
  end;

  VTpaketmenuidmenu.Value := UpperCase(edtmenu.Text);
  VTpaketmenuquantity.Value := spnquantity.Value;
  VTpaketmenujumlah.Value :=  VTpaketmenuharga.Value * spnquantity.Value ;

  pvtotalmenu := pvtotalmenu - pvtempmenu + (VTpaketmenuharga.Value * spnquantity.Value) ;
  Edit1.Text := FloatToStr(pvtotalmenu)  ;
  VTpaketmenuJumlahTotalPaketmenu.Value := StrToFloat(Edit1.Text);

  VTpaketmenu.Post;
  dbgpaketmenu.Enabled := True;
//  pvtambahmenu := False;
  Qmenucari.Active := False;
  tutuppaketmenu;
  dbgpaketmenu.SetFocus;
  larang;
end;

procedure Tfpaketroom.btnsimpanClick(Sender: TObject);
begin
{   fmenu.VTpaketroomok.Clear;
   VTpaketroom.First;
   while not VTpaketroom.Eof do
   begin
     // simpan ke VTpakeroomok
     fmenu.VTpaketroomok.Append;
     fmenu.VTpaketroomokidroom.AsInteger := VTpaketroomidroom.Value ;
     fmenu.VTpaketroomokharga.AsFloat := VTpaketroomharga.Value  ;
     fmenu.VTpaketroomokdurasi.AsInteger := VTpaketroomdurasi.Value  ;
     fmenu.VTpaketroomokjumlah.AsFloat := VTpaketroomjumlah.Value ;
     fmenu.VTpaketroomok.Post;
     VTpaketroom.Next;
   end;

   fmenu.VTpaketmenuok.Clear;
   VTpaketmenu.First;
   while not VTpaketmenu.Eof do
   begin
  // simpan ke VTpaketmenuok
    fmenu.VTpaketmenuok.Append;
    fmenu.VTpaketmenuokidmenu.Text := VTpaketmenuidmenu.Text  ;
    fmenu.VTpaketmenuokharga.Text := VTpaketmenuharga.Text  ;
    fmenu.VTpaketmenuokquantity.Text := VTpaketmenuquantity.Text  ;
    fmenu.VTpaketmenuokjumlah.Value := VTpaketmenujumlah.Value  ;
    fmenu.VTpaketmenuok.Post;
    VTpaketmenu.Next;
    end;
  fmenu.tmenuHarga.Value := pvroomtotal + pvtotalmenu;
  if fmenu.DBLkategori.Text = ''then
  begin
  fmenu.DBLkategori.SetFocus;
  exit;
  end;
  if fmenu.dbmenu.Text = '' then fmenu.dbmenu.SetFocus;
  //if fmenu.dbketerangan.Text = '' then fmenu.dbketerangan.SetFocus;
  fpaketroom.Close;   }
 end;
  
procedure Tfpaketroom.btneditpaketroomClick(Sender: TObject);
begin
 if VTpaketroom.RecordCount = 0 then
  begin
    ShowMessage('    TIDAK ADA DATA YANG DIEDIT !!    ');
    Exit;
  end;
  bolehroom;
  DBGpaketroom.Enabled := true ;
  VTpaketroom.Edit;
  pvtemp := pvharga * SPNdurasi.Value;
  DBLkatroom.SetFocus;
  bukapaketroom;
end;

procedure Tfpaketroom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{  Action := caFree;
  fmenu.pbpaketroom := False;   }
end;

procedure Tfpaketroom.VTpaketroomAfterScroll(DataSet: TDataSet);
begin
  if VTpaketroom.RecordCount > 0 then
  begin
    try
      SPNdurasi.Value := VTpaketroomdurasi.Value;
    except
      SPNdurasi.Value := 0;
    end;
  end;
end;

procedure Tfpaketroom.VTpaketmenuAfterScroll(DataSet: TDataSet);
begin
  if VTpaketmenu.RecordCount > 0 then
  begin
    try
      spnquantity.Value := VTpaketmenuquantity.Value;
    except
      spnquantity.Value := 0;
    end;
  end;
end;

procedure Tfpaketroom.edtmenuExit(Sender: TObject);
begin
  edtmenu.Text := Qmenucariid.AsString;
  edtNamaMenu.Text := Qmenucarimenu.AsString;
end;

procedure Tfpaketroom.edthargaExit(Sender: TObject);
begin
  EdtTotalpaketmenu.Text := FormatFloat('#,#', spnquantity.Value * VTpaketmenuharga.Value);
end;

procedure Tfpaketroom.TKN13(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure Tfpaketroom.TKN(Sender: TObject; var Key: Char);
begin
  if key=#13	then
  begin
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
end;

end.
