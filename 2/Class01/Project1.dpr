program Project1;
uses SysUtils, Dialogs;

type
  Point2D = class
              X, Y : Integer;             // „то знает?
              function Info () : String; // ќбъ€вление метода (что умеет)
            end;

function Point2D.Info () : String; // –еализациф€ метода (как умеет)
  begin
    Result := '(' + IntToStr (X) + ', ' + IntToStr (Y) + ')';
  end;

var
//  I : Integer;
  A, B : Point2D;

begin

//  I := 10;
  A := Point2D.Create ();

//  ShowMessage (IntToStr (I));
  A.X := 10;
  A.Y := A.X + 1;

  ShowMessage (A.Info ());

//  ShowMessage (IntToStr (A.X));
//  ShowMessage (IntToStr (A.Y));

end.
