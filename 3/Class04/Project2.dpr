program Project2;
uses
  SysUtils,
  Dialogs;

type
  Predok = class
             procedure Print (); virtual;
           end;

procedure Predok.Print ();
  begin
    ShowMessage ('Predok');
  end;

type
  Potomok = class (Predok)
              procedure Print (); override;
            end;

procedure Potomok.Print ();
  begin
    ShowMessage ('Potomok');
  end;

var
  X : array [1..2] of Predok;

begin

  X[1] := Predok.Create ();
  X[2] := Potomok.Create ();

  X[1].Print ();
  X[2].Print ();

end.

