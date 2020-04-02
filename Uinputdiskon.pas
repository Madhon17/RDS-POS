unit Uinputdiskon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, BusinessSkinForm, DB, DBTables, bsSkinCtrls,
  StdCtrls, AEDIT, ComCtrls, Spin, ZDataSet;

type
  TFinputdiskon = class(TForm)
    bsBusinessSkinForm1: TbsBusinessSkinForm;
    bsSkinMessage1: TbsSkinMessage;
    btnsimpan: TbsSkinButton;
    btnbatal: TbsSkinButton;
    bsSkinPanel7: TbsSkinPanel;
    Label1: TLabel;
    Label6: TLabel;
    ComboBox1: TComboBox;
    edtDiscount: TAEdit;
    edtHarga: TAEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnsimpanClick(Sender: TObject);
    procedure edtDiscountEnter(Sender: TObject);
    procedure edtDiscountExit(Sender: TObject);
    procedure edtDiscountKeyPress(Sender: TObject; var Key: Char);
    procedure btnbatalClick(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    pvdiskon  : real;
    pbtambah  : Boolean;
  end;

var
  Finputdiskon: TFinputdiskon;

implementation

uses unit1, unit3, Usetdis;

{$R *.dfm}

procedure TFinputdiskon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmInduk.Enabled := True;
  FSetupDisc.Enabled := True;
  Action := caFree;
end;

procedure TFinputdiskon.FormCreate(Sender: TObject);
var qRoom : TZQuery;
begin
  qRoom := TZQuery.Create(Self);
  qRoom.Connection := modul.Database1;
  qRoom.Active := False;
  qRoom.sql.Text := 'SELECT     id, kategori '+
                    ' FROM         tkategoriroom '+
                    ' ORDER BY harga';
  qRoom.Active := True;

  ComboBox1.Clear;
  qRoom.First;
  while not( qRoom.Eof ) do
  begin
      ComboBox1.items.Add(qRoom.fieldbyname('kategori').AsString ) ;
      qRoom.Next;
  end;
  qRoom.Destroy;
  ComboBox1.ItemIndex := 0;
  pvdiskon := 0;
end;

procedure TFinputdiskon.btnsimpanClick(Sender: TObject);
var qUpdate : TZQuery;
    vidkategori : integer;
begin
  //validasi
  if ComboBox1.Text = '' then
  begin
     bsSkinMessage1.MessageDlg('        Please select the room category      ', mtError, [mbOK],0);
     exit;
  end;
  if (edtDiscount.Text = '') or (edtDiscount.Text = '0') or (pvdiskon=0) then
  begin
    edtDiscount.SetFocus;
    exit;
  end;
  
  qUpdate := TZQuery.Create(Self);
  qUpdate.Connection := modul.Database1;

  qUpdate.SQL.Text := ' SELECT     id '+
                      ' FROM         tkategoriroom '+
                      ' WHERE     (kategori = '+QuotedStr(ComboBox1.Text)+')';
  qUpdate.Active := True;
  vidkategori := qUpdate.FieldByName('id').AsInteger;

  if pbtambah then
  begin
    qUpdate.Active := False;
    qUpdate.SQL.Text := ' SELECT     COUNT(*) AS jumlah '+
                        ' FROM         Tdiskonroom '+
                        ' WHERE     (iddisc = '+ QuotedStr(FSetupDisc.qRoomDisciddisc.AsString)+') AND '+
                        '           (idroom = '+ IntToStr(vidkategori) + ')';
    qUpdate.Active := True;
    if qUpdate.FieldByName('jumlah').AsInteger > 0 then
    begin
      bsSkinMessage1.MessageDlg('   This category already exists    ' , mtInformation, [mbOK],0);
      exit;
    end;
    qUpdate.Active := False;
    qUpdate.SQL.Text := ' INSERT INTO Tdiskonroom '+
                        '             (iddisc, idroom, diskon) '+
                        ' VALUES      ( ' + QuotedStr(FSetupDisc.qPromoid.AsString) +  ', '+
                                      IntToStr(vidkategori) + ', '+
                                      FormatFloat('0', pvdiskon) +
                                      ')';
    qUpdate.ExecSQL;
  end
  else
  begin
    qUpdate.Active := False;
    qUpdate.SQL.Text := ' SELECT     COUNT(*) AS jumlah '+
                        ' FROM         Tdiskonroom '+
                        ' WHERE     (iddisc = '+ QuotedStr(FSetupDisc.qRoomDisciddisc.AsString)+') AND '+
                        '           (idroom = '+ IntToStr(vidkategori) + ')';
    qUpdate.Active := True;
    if not(vidkategori = FSetupDisc.qRoomDiscidroom.AsInteger) then
    begin
      if qUpdate.FieldByName('jumlah').AsInteger > 0  then
      begin
        bsSkinMessage1.MessageDlg('   This category already exists    ', mtInformation, [mbOK],0);
        exit
      end;
    end;

    qUpdate.Active := False;
    qUpdate.SQL.Text := 'UPDATE    Tdiskonroom '+
                        'SET      iddisc = ' + QuotedStr(FSetupDisc.qPromoid.AsString) +
                                  ', idroom = ' + IntToStr(vidkategori) +
                                  ', diskon = '+ FormatFloat('0', pvdiskon) +

                        ' WHERE     (iddisc = '+ QuotedStr(FSetupDisc.qRoomDisciddisc.AsString)+') AND '+
                        '           (idroom = '+ FSetupDisc.qRoomDiscidroom.AsString + ')';
    qUpdate.ExecSQL;
  end;
  qUpdate.Destroy;
  
  FSetupDisc.qRoomDisc.Active := False;
  FSetupDisc.qRoomDisc.Active := True;
  Close;
end;

procedure TFinputdiskon.edtDiscountEnter(Sender: TObject);
begin
  edtDiscount.Text := FormatFloat('0', pvdiskon);
  edtDiscount.SelectAll;
end;

procedure TFinputdiskon.edtDiscountExit(Sender: TObject);
var x : Real;
begin
  try
    x:=StrToFloat(edtDiscount.Text);
  except
    x:=0;
  end;
  pvdiskon := x;
  edtDiscount.Text := FormatFloat('0,#', pvdiskon);
end;

procedure TFinputdiskon.edtDiscountKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13	then
  begin
    Key := #0;
    Perform (CM_DialogKey, VK_TAB, 0);
  end;
  if not(((Key>='0')and(Key<='9'))or(Key=#8)) then Key:=#0;
end;

procedure TFinputdiskon.btnbatalClick(Sender: TObject);
begin
  Close;
end;

procedure TFinputdiskon.ComboBox1Click(Sender: TObject);
var qKategori : TZQuery;
begin
  qKategori := TZQuery.Create(Self);
  qKategori.Connection := modul.Database1;
  qKategori.SQL.Text := ' SELECT     harga '+
                      ' FROM         tkategoriroom '+
                      ' WHERE     (kategori = '+QuotedStr(ComboBox1.Text)+')';
  qKategori.Active := True;
  edtHarga.Text := FormatFloat('#,0', qKategori.FieldByName('harga').AsFloat);
  qKategori.Destroy;
end;

end.
