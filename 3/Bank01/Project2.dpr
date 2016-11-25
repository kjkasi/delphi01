program Project1;
uses
  SysUtils,
  Dialogs,
  ClassAccount in 'ClassAccount.pas',
  ClassBank in 'ClassBank.pas';

var
{
  A1, A2, A3, A4 : Account;
}

  B : Bank;
  Num1, Num2, Num3, Current : Integer;

begin

  B := Bank.Create ();

  Num1 := B.OpenAccount (1000, 10); // Num = 1
  Num2 := B.Open (Account6.Create (1000, 10)); // Num = 2
  Num3 := B.Open (Account5.Create (1000, 10)); // Num = 3

  ShowMessage (IntToStr (Num1) + ': ' + IntToStr (B.GetBalance (Num1)) + ' -> ' + IntToStr (B.Accounts [Num1].Predict (10)));
  ShowMessage (IntToStr (Num2) + ': ' + IntToStr (B.GetBalance (Num2)) + ' -> ' + IntToStr (B.Accounts [Num2].Predict (10)));
  ShowMessage (IntToStr (Num3) + ': ' + IntToStr (B.GetBalance (Num3)) + ' -> ' + IntToStr (B.Accounts [Num3].Predict (10)));


{
  Current := B.Accounts [Num].Balance;
  Current := B.Accounts [Num].GetBalance ();
  Current := B.GetAccount (Num).GetBalance ();
  Current := B.GetBalance (Num);
}

{
  A1 := Account.Create (1000, 10);
  A2 := Account2.Create (1000, 10);
  A3 := Account3.Create (1000, 10);
  A4 := Account4.Create (1000, 10);

//  A4.AddMoney (100);

  ShowMessage ('A1: ' + IntToStr (A1.Predict (10)));
  ShowMessage ('A2: ' + IntToStr (A2.Predict (10)));
  ShowMessage ('A3: ' + IntToStr (A3.Predict (10)));
  ShowMessage ('A4: ' + IntToStr (A4.Predict (10)));
}


end.
