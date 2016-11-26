program Project1;

uses
  SysUtils,
  Dialogs;

type
  CalcError = class (Exception)
                Distance, Fuel, ErrorCode : Integer;
                constructor Create (CodeError, Distance, Fuel : Integer; Description : String);
              end;

constructor CalcError.Create (CodeError, Distance, Fuel : Integer; Description : String);
  begin
    self.Distance := Distance;
    self.Fuel := Fuel;
    self.Message := Description;
    self.ErrorCode := ErrorCode
  end;

function Calculate (Distance, Fuel : Integer) : Integer;
  begin
    if Distance > 20
      then
        Result := Fuel * 100 div Distance
      else
        if Distance > 0
          then
            raise CalcError.Create (-1, Distance, Fuel, 'too low distance')
          else
            if distance = 0
              then
                raise CalcError.Create (-2, Distance, Fuel, 'Distance missing')
              else
                raise CalcError.Create (-3, Distance, Fuel, 'Distance is not correct')
  end;

var
  D, F : Integer;

begin

  D := 0; //km
  F := 100;  //l

  try
    ShowMessage (IntToStr (Calculate(D, F)));
  except
    on ErrorReport : CalcError do
      case ErrorReport.ErrorCode of
        -1:
          ShowMessage ('Error message: ' + ErrorReport.Message + ' distamce: ' + IntToStr (ErrorReport.Distance) + ' fuel: ' + IntToStr (ErrorReport.Fuel));
        -2:
          ShowMessage ('Error message: ' + ErrorReport.Message);
        -3:
          ShowMessage ('Error message: ' + ErrorReport.Message);
        else
          ShowMessage ('Error message: ' + ErrorReport.Message);
      end;
    on ErrorReport : Exception do
      ShowMessage ('Error message: ' + ErrorReport.Message + 'Class: ' + ErrorReport.ClassName ());
  end;
end.
