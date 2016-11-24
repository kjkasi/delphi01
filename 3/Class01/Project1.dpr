program Project1;
uses SysUtils, Dialogs;

type
  Account = class
              Balance, Percent : Integer;
              function Predict (Years : Integer) : Integer;
              constructor Create (); overload;
              constructor Create (Balance : Integer); overload;
              constructor Create (Balance, Percent : Integer); overload;
            end;

constructor Account.Create ();
  begin
    Balance := 0;
    Percent := 10;
  end;

constructor Account.Create (Balance : Integer);
  begin
    self.Balance := Balance;
    Percent := 10;
  end;

constructor Account.Create (Balance, Percent : Integer);
  begin
    self.Balance := Balance;
    self.Percent := Percent;
  end;

function Account.Predict (Years : Integer) : Integer;
  begin
    Result := Balance + Balance div 100 * Percent * Years;
  end;

var
  A : array [1..100] of Account;

begin

  A[1] := Account.Create (100, 35);
  A[2] := Account.Create (1000, 25);

  ShowMessage (IntToStr (A[1].Predict (10)));
  ShowMessage (IntToStr (A[2].Predict (10)));

end.
