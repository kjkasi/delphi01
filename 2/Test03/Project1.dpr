program Project1;

uses
  SysUtils, Dialogs;

var
  Y1, M1, D1, Y2, M2, D2 : Integer;

function IsLeapYear (Y : Integer) : boolean;
  begin
    if (Y mod 4 = 0) AND (Y mod 100 > 0) OR (Y mod 400 = 0)
      then
        Result := true
      else
        Result := false;
  end;

function DaysInMonth (Y, M : Integer) : Integer;
  begin
    case M of
      1, 3, 5, 7, 8, 10, 12 :
        Result := 31;
      4, 6, 9, 11:
        Result := 30;
      2 :
        if IsLeapYear (Y)
          then
            Result := 29
          else
            Result := 28;
    end;
  end;

function LifeSpan (Y1, M1, D1, Y2, M2, D2 : Integer) : Integer;
  var
    Y, M : Integer;
  begin
    Result := 0;

    for Y := Y1 to Y2 do
      for M := 1 to 12 do
        if (Y = Y1) AND (M = M1)
          then
            Result := Result + DaysInMonth (Y, M) - D1 + 1
          else
            if (Y = Y2) AND (M = M2)
              then
                Result := Result + D2
              else
                if  (Y > Y1) AND (Y < Y2) OR
                    (Y = Y1) AND (M > M1) OR
                    (Y = Y2) AND (M < M2)
                  then
                   Result := Result + DaysInMonth (Y, M);
  end;

procedure PrintInteger (X : Integer; Comment : String);
  begin
    ShowMessage (Comment + ': ' + IntToStr (X));
  end;

begin

  Y1 := 1912; M1 := 10; D1 := 25;
  Y2 := 1989; M2 := 11; D2 := 17;

  PrintInteger (LifeSpan (Y1, M1, D1, Y2, M2, D2), 'Duration');

end.
