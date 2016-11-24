program Matrix;

uses
  Dialogs, SysUtils;

var
  Calendar : array [1901..2000,1..12] of Integer;
  Y, M, D : Integer;

  Cemetery : array [1..3,1..2,1..3] of Integer =
    (
      (
        (1911, 2, 15),
        (1987, 10, 4)
      ),
      ( (1922, 4, 8),
        (1977, 4, 9)
      ),
      ( (1915, 5, 5),
        (1990, 3, 3)
      )
    );
  Days : Integer;

begin

  ShowMessage (IntToStr (Cemetery [2, 1, 2]));



{
  Y1 := 1911;   M1 := 2;  D1 := 15;
  Y2 := 1987;   M2 := 10; D2 := 4;
}
  for Y:= 1901 to 2000 do
    for M := 1 to 12 do
      case M of
        1, 3, 5, 7, 8, 10, 12:
          Calendar [Y, M] := 31;
        4, 6, 9, 11:
          Calendar [Y, M] := 30;
        2:
          if (Y mod 4 = 0) AND (Y mod 100 > 0) OR (Y mod 400 = 0)
            then
              Calendar [Y, M] := 29
            else
              Calendar [Y, M] := 28;
      end;

{
  Days := 0;

  for Y := Y1 to Y2 do
    for M := 1 to 12 do
      if (Y > Y1) AND (Y < Y2) OR
         (Y = Y1) AND (M > M1) AND (Y1 <> Y2) OR
         (Y = Y2) AND (M < M2) AND (Y1 <> Y2) OR
         (Y1 = Y2) AND (M > M1) AND (M < M2)
         then
           Days := Days + Calendar [Y, M];

  Days := Days + Calendar [Y1, M1] - D1 + 1;
  Days := Days + D2;

  ShowMessage (IntToStr (Days));
  
  Days := 0;

  for Y := 1901 to 2000 do
    for M := 1 to 12 do
      for D := 1 to Calendar [Y, M] do
        if ((Y > Y1) OR
            (Y = Y1) AND (M > M1) OR
            (Y = Y1) AND (M = M1) AND (D >= D1))
            AND
           ((Y < Y2) OR
            (Y = Y2) AND (M < M2) OR
            (Y = Y2) AND (M = M2) AND (D <= D2))
          then
            Days := Days + 1;

  ShowMessage (IntToStr (Days));
}
end.
