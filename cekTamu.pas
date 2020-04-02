unit cekTamu;

interface

uses
DBtables,StrUtils, ZDataset, Unit1;

function cekInvoiceError(idorder : String; pakequery : TZQuery) : Boolean;
function cekRoom(room : String; pakequery : TZQuery) : Boolean;
function cekBillStart(room : String; pakequery : TZQuery) : Boolean;

implementation

uses SysUtils, DB;

function cekInvoiceError(idorder : string; pakequery : TZQuery) : Boolean;
begin
  pakequery.Active := False;
  pakequery.SQL.Text := 'SELECT     invoice '+
                        'FROM         tpayment ' +
                        'WHERE        (idorder = ' + QuotedStr(idorder) +
                        ')';
  pakequery.Active := True;
  try
    if not(pakequery.FieldByName('invoice').AsString = '') then
      result := True
    else
      Result := False;
  Except
    Result := False;
  end;
end;

function cekRoom(room : String; pakequery : TZQuery) : Boolean;
begin
  pakequery.Active := False;
  pakequery.SQL.Text := 'SELECT     chekin, tambahjam, billstop '+
                        'FROM       troom '+
                        'WHERE      (namaroom = ' + QuotedStr(room) +
                        ')';
  pakequery.Active := True;
  try
    if (pakequery.FieldByName('chekin').AsString = '1') and
       (pakequery.FieldByName('tambahjam').AsInteger = 0) and
       (pakequery.FieldByName('billstop').AsString <> '1') then
    begin
      Result := True
    end
    else
    begin
      Result := False;
    end;
  Except
    Result := False;
  end;
end;

function cekBillStart(room : String; pakequery : TZQuery) : Boolean;
begin
  pakequery.Active := False;
  pakequery.SQL.Text := 'SELECT     chekin, tambahjam, billstop '+
                        'FROM       troom '+
                        'WHERE      (namaroom = ' + QuotedStr(room) +
                        ')';
  pakequery.Active := True;
  try
    if (pakequery.FieldByName('chekin').AsString = '1') and
       (pakequery.FieldByName('tambahjam').AsInteger = 0) then
       
      Result := True
    else
      Result := False;
  Except
    Result := False;
  end;
end;

end.
