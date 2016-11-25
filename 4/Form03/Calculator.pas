unit Calculator;

interface

type
  Calc = class
           function Sum (X, Y : Integer) : Integer;
         end;

implementation

function Calc.Sum (X, Y : Integer) : Integer;
  begin
    Result := X + Y;
  end;

end.
