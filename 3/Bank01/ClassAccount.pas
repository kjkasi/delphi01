unit ClassAccount;

interface // Что умеет делать... --------------------------------------

type
  Account = class
              Balance, Percent : Integer;
              function Predict (Years : Integer) : Integer; virtual;
              constructor Create (); overload;
              constructor Create (Balance : Integer); overload;
              constructor Create (Balance, Percent : Integer); overload;

              function GetBalance () : Integer;
            end;

type
  Account2 = class (Account)
               procedure AddMoney (Money : Integer);
             end;

type
  Account3 = class (Account)
               function Predict (Years : Integer) : Integer; override;
             end;

type
  Account4 = class (Account3)
               procedure AddMoney (Money : Integer);
             end;

type
  Account5 = class (Account4)
             end;

type
  Account6 = class (Account5)
               function Predict (Years : Integer) : Integer; override;
             end;

implementation  // Как делает... --------------------------------------

procedure Account2.AddMoney (Money : Integer);
  begin
    Balance := Balance + Money;
  end;

procedure Account4.AddMoney (Money : Integer);
  begin
    Balance := Balance + Money;
  end;

function Account.GetBalance () : Integer;
  begin
    Result := Balance;
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

function Account3.Predict (Years : Integer) : Integer;
  var
    Counter : Integer;
  begin
    Result := Balance;
    for Counter := 1 to Years do
      Result := Result + Result div 100 * Percent;
  end;

function Account6.Predict (Years : Integer) : Integer;
  begin
    Result := Balance + Years;
  end;


end.
