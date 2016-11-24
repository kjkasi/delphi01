program Project1;

uses
  Dialogs, SysUtils;

procedure MyProc (var Param1 : Integer);
  begin
    Param1 := Param1 * 2;
  end;

var
  X : Integer;

begin

  X := 10;

  MyProc (X);

  ShowMessage (IntToStr (X));

end.
