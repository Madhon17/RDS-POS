unit untTools;

interface

uses
  SysUtils, Classes, bsSkinData;

type
  TmdlTools = class(TDataModule)
    bsSkinData2: TbsSkinData;
    bsCompressedStoredSkin2: TbsCompressedStoredSkin;
    bsCompressedStoredSkin1: TbsCompressedStoredSkin;
    bsSkinData1: TbsSkinData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mdlTools: TmdlTools;

implementation

{$R *.dfm}

end.
