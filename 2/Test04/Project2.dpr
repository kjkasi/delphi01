program Project2;

type
  MyArray = array [1..5] of Integer;

procedure MyProc (Param1 : MyArray);
  begin
  end;

var
  X : MyArray = (1, 1, 2, 3, 5);

begin

  MyProc (X);

end.
