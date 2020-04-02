unit konversi;

interface

uses SysUtils;

function Num2Word(dNumber: Extended): String;

implementation
const
  aNum: array[1..9] of String[8] = ('SATU', 'DUA', 'TIGA', 'EMPAT', 'LIMA', 'ENAM', 'TUJUH', 'DELAPAN', 'SEMBILAN');
  aUnit: array[1..5] of String[7] = ('TRILYUN', 'MILYAR', 'JUTA', 'RIBU', '');
function Num2Word(dNumber: Extended): String;
var
  iCount, iDigit1, iDigit2, iDigit3: Integer;
  sNum2Str, s3Digit, sWord: String;
begin
  Result := '';
  if ( dNumber = 0 ) then Exit;
  if ( dNumber < 0 ) then Result := 'MINUS ';

  sNum2Str :=  Copy(Format('%18.2f', [dNumber]), 1, 15);
//  sNum2Str :=  Copy(Format('%18.2f', [dNumber]), 1, 15);
  for ICount := 1 to 5 do
  begin
    s3Digit := Copy(sNum2Str, iCount * 3 - 2, 3);
    if (StrToIntDef(s3Digit, 0) <> 0) then
    begin
      sWord := '';
      iDigit1 := StrToIntDef(Copy(s3Digit, 1, 1), 0);
      iDigit2 := StrToIntDef(Copy(s3Digit, 2, 1), 0);
      iDigit3 := StrToIntDef(Copy(s3Digit, 3, 1), 0);
      case iDigit1 of
        2..9:
          sWord := sWord + aNum[iDigit1] + ' RATUS ';
        1:
          sWord := sWord + 'SERATUS ';
      end; { case }
      case iDigit2 of
        2..9:
          sWord := sWord + aNum[iDigit2] + ' PULUH ';
        1:
          case iDigit3 of
            2..9:
              sWord := sWord + aNum[iDigit3] + ' BELAS ';
            1:
              sWord := sWord + 'SEBELAS ';
            0:
              sWord := sWord + 'SEPULUH ';
          end; { case }
      end; { case }
      if (iDigit2 <> 1) then
        case iDigit3 of
          2..9:
            sWord := sWord + aNum[iDigit3] + ' ';
          1:
            if (iCount = 4) and ((iDigit1 + iDigit2) = 0) then
              sWord := sWord + 'SE'
            else
              sWord := sWord + 'SATU ';
        end;
      Result := Result + sWord + aUnit[iCount] + ' ';
    end;
  end;
  while Result[Length(Result)] = ' ' do
    SetLength(Result, Length(Result) - 1);
end;

end.
 