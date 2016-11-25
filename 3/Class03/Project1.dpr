program Project1;
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
  X : Predok;

begin

  X := Potomok.Create ();

  X.Print ();

end.
