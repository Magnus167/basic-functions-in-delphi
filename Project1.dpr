program Project1;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

function isInt(isInt_s: String): Boolean; forward;
function getInt(): Int64; forward;
function getFloat(): Extended; forward;

function getFloat(): Extended;
var
  getFloat_s: String;
  GF_i: Int64;
begin
  ReadLn(getFloat_s);
  if NOT(isInt(getFloat_s) = True) then
    repeat
      WriteLn('');
      Write('>> Please enter a valid integer : ');
      ReadLn(getFloat_s);
    until isInt(getFloat_s);
end;

function getInt(): Int64;
var
  s: String;
  i: Int64;
begin

  ReadLn(s);
  if NOT(isInt(s) = True) then
    repeat
      WriteLn('');
      Write('>> Please enter a valid integer : ');
      ReadLn(s);
    until isInt(s);

end;

function isInt(isInt_s: String): Boolean;
var
  i: Int64;
  res: Boolean;
begin

  res := True;

  for i := 0 to isInt_s.Length - 1 do
    if NOT(isInt_s.Chars[i] in ['0' .. '9']) then
    begin
      res := False;
      if i = 0 then
        if isInt_s.Chars[0] in ['+', '-'] then
          res := True;

    end;

  result := res;

end;

var
  ss: Int64;

begin

  Write('>> Please enter and integer : ');

  WriteLn(isInt(IntToStr(getInt)));
  ReadLn;

end.
