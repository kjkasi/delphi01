program Project1;

uses
  Dialogs, SysUtils;

function StrAndInt (MyString : String; MyInteger : Integer) : String;
  begin
    Result := MyString + IntToStr (MyInteger);
  end;

procedure PrintInteger (MyNumber : Integer; MyComment : String);
{
  var
    X : Integer;
}
  begin
    ShowMessage (StrAndInt (MyComment + ': ', MyNumber));
  end;

begin

  PrintInteger (10, 'My result');

end.
