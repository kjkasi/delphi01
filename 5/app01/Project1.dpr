program Project1;

uses
  Dialogs, SysUtils;

function Divide (X, Y : Integer; var ErrorCode : Integer) : Integer;
  begin
    if Y <> 0
      then
        begin
          Result := X div Y;
          ErrorCode := 0;
        end
      else
        ErrorCode := -1;
  end;

var
  MyError, MyResult : Integer;

begin

  MyResult := Divide (100, 1, MyError);
  if MyError <> 0
    then
      begin
        ShowMessage('Error');
        Halt;
      end
    else
      ShowMessage(IntToStr (MyResult));

end.
