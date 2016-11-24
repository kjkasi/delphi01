program MyArray;

uses
  Dialogs, SysUtils;

var
  A: array[1..5] of Integer;
  MySum, MyIndex : Integer;
  

begin

  A[1] := 10;
  A[2] := 20;
  A[3] := 30;

  MySum := 0;
  for MyIndex := 1 to 3 do
    MySum := MySum + A[MyIndex];


  //A[2] := A[1] + A[3];
  ShowMessage(IntToStr(MySum));

end.
