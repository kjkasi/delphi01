program Project1;

uses
  SysUtils, Dialogs;

function Divide (X, Y : Integer) : Integer;
  begin
    Result := X div Y;
  end;

function FuelCalc (Distance, Fuel : Integer) : Integer;
  begin

  end;

var
  X : Integer;

begin

  X := 0;

  try
    ShowMessage('ONE');
    X := 1 div X;
    ShowMessage('TWO');
    ShowMessage(IntToStr (X));

    //X := 1 div 1;
    //X := 1 div 0;
    //X := 1 div 1;
    //ShowMessage(IntToStr (Divide (100, 3)));
    //ShowMessage(IntToStr (Divide (100, 0)));
    //ShowMessage(IntToStr (Divide (100, 3)));
  except
    on ErrorReport : EDivByZero do
      ShowMessage('Div by zero');
    on ErrorReport : Exception do
      ShowMessage('Class name: ' + ErrorReport.ClassName () + ' Error message: ' + ErrorReport.Message);
  end;
  
end.
