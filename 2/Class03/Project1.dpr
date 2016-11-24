program Project1;
uses Dialogs, SysUtils;

type
  Clock = class
            Hours, Minutes : Integer;
            procedure Tick ();
            function Show () : String;
            constructor Create (); overload;
            constructor Create (Hours, Minutes : Integer); overload;
          end;

//============================================================

constructor Clock.Create ();
  begin
    Hours := 0;
    Minutes := 0;
  end;

constructor Clock.Create (Hours, Minutes : Integer);
  begin
    self.Hours := Hours;
    self.Minutes := Minutes;
  end;

function Clock.Show () : String;
  begin
    Result := IntToStr (Hours) + ':' + IntToStr (Minutes);
  end;

procedure Clock.Tick ();
  begin
    Minutes := Minutes + 1;
    if Minutes = 60
      then
        begin
          Minutes := 0;
          Hours := Hours + 1;
          if Hours = 24
            then
              Hours := 0;
        end;
  end;

var
  A : array [1..5] of Clock;

begin

  A[1] := Clock.Create ();
  A[2] := Clock.Create (4, 45);

  A[1].Tick ();
  A[1].Tick ();
  A[1].Tick ();

  A[2].Tick ();

  ShowMessage (A[1].Show ());
  ShowMessage (A[2].Show ());
  ShowMessage (A[3].Show ());

end.
