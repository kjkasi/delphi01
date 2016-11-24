program Project1;
uses  SysUtils, Dialogs;

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

type
  Date = class
           Year, Month, Day : Integer;
           constructor Create (Y, M, D : Integer);
         end;

constructor Date.Create (Y, M, D : Integer);
  begin
    Year := Y;
    Month := M;
    Day := D;
  end;

type
  Tombstone = class
                Start, Finish : Date;
                function LifeSpan () : Integer;
                constructor Create (S, F : Date);
              end;

constructor Tombstone.Create (S, F : Date);
  begin
    Start := S;
    Finish := F;
  end;

function Tombstone.LifeSpan () : Integer;
  var
    Y, M : Integer;
  begin
    Result := 0;

    for Y := Start.Year to Finish.Year do
      for M := 1 to 12 do
        if (Y = Start.Year) AND (M = Start.Month)
          then
            Result := Result + DaysInMonth (Y, M) - Start.Day + 1
          else
            if (Y = Finish.Year) AND (M = Finish.Month)
              then
                Result := Result + Finish.Day
              else
                if  (Y > Start.Year) AND (Y < Finish.Year) OR
                    (Y = Start.Year) AND (M > Start.Month) OR
                    (Y = Finish.Year) AND (M < Finish.Month)
                  then
                   Result := Result + DaysInMonth (Y, M);
  end;

type
  Cemetery = class
               Persons : array [1..100] of Tombstone;
               Count : Integer;
               function Max () : Integer;
               function Min () : Integer;
               procedure Add (T : Tombstone);
               constructor Create ();
             end;

procedure Cemetery.Add (T : Tombstone);
  begin
    if Count < 100
      then
        begin
          Count := Count + 1;
          Persons [Count] := T;
        end
  end;

function Cemetery.Max () : Integer;
  var
    index : Integer;
  begin
    Result := 0;
    for index := 1 to Count do
      if Persons [index].LifeSpan () > Result
        then
          Result := Persons [index].LifeSpan ();
  end;

function Cemetery.Min () : Integer;
  var
    index : Integer;
  begin
    Result := 0;
    for index := 1 to Count do
      if (Persons [index].LifeSpan () < Result) OR (Result = 0)
        then
          Result := Persons [index].LifeSpan ();
  end;

constructor Cemetery.Create ();
  begin
    Count := 0;
  end;

//-------------------------------------------------------------

var
  MyCemetery : Cemetery;

begin

  MyCemetery := Cemetery.Create ();

  MyCemetery.Add (Tombstone.Create  (
                                    Date.Create (1911, 2, 15),
                                    Date.Create (1987, 9, 25)
                                    )
                 );
  MyCemetery.Add (Tombstone.Create  (
                                    Date.Create (1912, 2, 15),
                                    Date.Create (1986, 9, 25)
                                    )
                 );
  MyCemetery.Add (Tombstone.Create  (
                                    Date.Create (1915, 2, 15),
                                    Date.Create (1983, 9, 25)
                                    )
                 );

  ShowMessage ('Min: ' + IntToStr (MyCemetery.Min ()) + ', Max: ' + IntToStr (MyCemetery.Max ()));

end.
