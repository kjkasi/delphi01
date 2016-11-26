program Project1;

uses
  SysUtils,
  Dialogs;

function Calculate (Distance, Fuel : Integer) : Integer;
  begin
    if Distance <> 0
      then
        Result := Fuel * 100 div Distance
      else
        raise Exception.Create ('Distance missing');
  end;

var
  D, F : Integer;

begin

  D := 0; //km
  F := 100;  //l

  try
    ShowMessage (IntToStr (Calculate(D, F)));
  except
    on ErrorReport : Exception do
      ShowMessage ('Error message: ' + ErrorReport.Message);
  end;
end.
