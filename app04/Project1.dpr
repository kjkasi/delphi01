program Project1;

uses
  Dialogs, SysUtils;

var
  A, B, C, D : Integer;

begin

  A := 10;
  B := 3;

  //C := A + B;
  C := A div B;
  D := A mod B;

  ShowMessage ('Result: ' + IntToStr(C) + ', ' + IntToStr(D));

end.
