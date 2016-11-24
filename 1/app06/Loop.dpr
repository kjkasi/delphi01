program Loop;

uses
  Dialogs, SysUtils;

var
  Counter: Integer;

begin

  Counter := 3;

  for Counter := 1 to 3 do
    ShowMessage(IntToStr(Counter));

  for Counter := 3 downto 1 do
    ShowMessage(IntToStr(Counter));  
{
  repeat

    ShowMessage(IntToStr(Counter));
    Counter := Counter - 1;

  until Counter <= 0;
}
{
  while Counter > 0 do
    begin
      ShowMessage(IntToStr(Counter));
      Counter := Counter - 1;
    end;
}
end.
