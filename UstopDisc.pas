unit UstopDisc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsMessages, RpDefine, RpCon, RpConDS, DB, DBTables, StdCtrls,
  Spin, bsSkinCtrls, Grids, DBGrids, ExtCtrls, AEDIT;

type
  TFStopBaru = class(TForm)
    lblRoom: TLabel;
    Nama: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label2: TLabel;
    edtdiskonvoucher: TAEdit;
    grpRoom: TPanel;
    DBGrid1: TDBGrid;
    edtTotalGrid: TAEdit;
    btnCancel: TbsSkinButton;
    btnOK: TbsSkinButton;
    edtNama: TEdit;
    btnRoom: TbsSkinButton;
    btnMenu: TbsSkinButton;
    btnOthers: TbsSkinButton;
    edtOrderID: TEdit;
    spnRoom: TSpinEdit;
    spnMenu: TSpinEdit;
    spnOthers: TSpinEdit;
    edtRoomHarga: TAEdit;
    edtMenuHarga: TAEdit;
    edtOthersHarga: TAEdit;
    edtJumlahHarga: TAEdit;
    edtRoomDiskon: TAEdit;
    edtMenuDiskon: TAEdit;
    edtOthersDiskon: TAEdit;
    edtJumlahDiskon: TAEdit;
    edtRoomTotal: TAEdit;
    edtMenuTotal: TAEdit;
    edtOthersTotal: TAEdit;
    edtTotal: TAEdit;
    edtTax: TAEdit;
    edtService: TAEdit;
    edtGrandTotal: TAEdit;
    cmbMember: TComboBox;
    edtIdMember: TEdit;
    edtmemberdiskon: TAEdit;
    edtJumOrang: TAEdit;
    chkPajak: TCheckBox;
    Edit1: TEdit;
    BsPromo: TbsSkinButton;
    AEdit1: TAEdit;
    AEdit2: TAEdit;
    AEdit3: TAEdit;
    AEdit4: TAEdit;
    AEdit5: TAEdit;
    AEdit6: TAEdit;
    AEdit7: TAEdit;
    AEdit8: TAEdit;
    DBPromo: TDBGrid;
    DBmember: TDBGrid;
    Qharga: TQuery;
    DStabel: TDataSource;
    QtabelRoom: TQuery;
    QtabelRoomRoom: TStringField;
    QtabelRoomCheckIn: TDateTimeField;
    QtabelRoomCheckOut: TDateTimeField;
    QtabelRoomDurasi: TSmallintField;
    QtabelRoomHarga: TFloatField;
    QtabelRoomdiskon: TFloatField;
    QtabelRoomJumlah: TFloatField;
    QtabelMenu: TQuery;
    QtabelMenuMenuItem: TStringField;
    QtabelMenuQty: TSmallintField;
    QtabelMenuHarga: TFloatField;
    QtabelMenuJumlah: TFloatField;
    QtabelDll: TQuery;
    QtabelDllketerangan: TStringField;
    QtabelDllQty: TSmallintField;
    QtabelDllHarga: TFloatField;
    QtabelDllJumlah: TFloatField;
    RvRoom: TRvDataSetConnection;
    RvMenu: TRvDataSetConnection;
    RvDll: TRvDataSetConnection;
    Qmember: TQuery;
    Qmemberid: TStringField;
    Qmemberid_kategori: TSmallintField;
    Qmembernama: TStringField;
    Qmemberdiskonroom: TFloatField;
    Qmemberdiskonmenu: TFloatField;
    Qmembertgl_registrasi: TDateTimeField;
    Qmemberberlaku: TDateTimeField;
    bsSkinMessage1: TbsSkinMessage;
    DSmember: TDataSource;
    QmsOrderID: TQuery;
    Qbarang: TQuery;
    Qbarangkeluar: TQuery;
    Qbarangcari: TQuery;
    Qfreepass: TQuery;
    Qfreepassid: TSmallintField;
    Qfreepasskategori: TStringField;
    Qfreepassharga: TFloatField;
    Qfreepassfreepass: TFloatField;
    QmasaFreepass: TQuery;
    QmasaFreepassmasaFreepass: TIntegerField;
    QmasaFreepasspesanbill: TStringField;
    QmasaFreepasspromobill: TSmallintField;
    QmasaFreepassid_cabang: TSmallintField;
    QmasaFreepasskode: TStringField;
    Qkategori: TQuery;
    Qkategoriidroom: TSmallintField;
    Qkategoriidkategori: TSmallintField;
    Qother: TQuery;
    QcashBack: TQuery;
    QcashBackidkategori: TSmallintField;
    QcashBackmin_charge: TFloatField;
    QcashBackvoucher: TFloatField;
    DataSource1: TDataSource;
    Qpromo: TQuery;
    Qpromoidpromo: TStringField;
    Qpromonamapromo: TStringField;
    Qpromoketerangan: TStringField;
    Qpromoromdisc: TFloatField;
    Qpromomenudisc: TFloatField;
    Qpromootherdisc: TFloatField;
    DSPromo: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStopBaru: TFStopBaru;

implementation

{$R *.dfm}



end.
