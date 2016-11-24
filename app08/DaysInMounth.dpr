program DaysInMounth;

uses
  Dialogs, SysUtils;

var
  Y, M, Days : Integer;

begin

  Y := 2011;
  M := 9;

  case M of
    1, 3, 5, 7, 8, 10, 12:
      Days := 31;
    4, 6, 9, 11:
      Days := 30;
    2:
      if (Y mod 4 = 0) AND (Y mod 100 > 0) OR (Y mod 400 = 0)
        then
          Days := 29
        else
          Days := 28;
  end;
  ShowMessage('Days: ' + IntToStr(Days));
end.
