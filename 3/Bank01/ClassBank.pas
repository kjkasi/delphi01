unit ClassBank;

interface

uses ClassAccount;

type
  Bank = class
           Counter : Integer;
           Accounts : array [1..1000] of Account;
           constructor Create ();

           function OpenAccount (Money, Percent : Integer) : Integer;
           function OpenAccount2 (Money, Percent : Integer) : Integer;
           function Open (A : Account) : Integer;

           function GetAccount (Num : Integer) : Account;
           function GetBalance (Num : Integer) : Integer;
         end;

implementation

function Bank.GetBalance (Num : Integer) : Integer;
  begin
    if (Num > 0) AND (Num <= Counter)
      then
        Result := Accounts [Num].GetBalance ();
  end;

function Bank.GetAccount (Num : Integer) : Account;
  begin
    if (Num > 0) AND (Num <= Counter)
      then
        Result := Accounts [Num];
  end;

constructor Bank.Create ();
  begin
    Counter := 0;
  end;

function Bank.OpenAccount (Money, Percent : Integer) : Integer;
  begin
    Counter := Counter + 1;
    Accounts [Counter] := Account.Create (Money, Percent);
    Result := Counter;
  end;

function Bank.OpenAccount2 (Money, Percent : Integer) : Integer;
  begin
    Counter := Counter + 1;
    Accounts [Counter] := Account2.Create (Money, Percent);
    Result := Counter;
  end;

function Bank.Open (A : Account) : Integer;
  begin
    Counter := Counter + 1;
    Accounts [Counter] := A;
    Result := Counter;
  end;

end.
