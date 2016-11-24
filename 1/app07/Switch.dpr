program Switch;

uses
  SysUtils, Dialogs;

var
  X: Integer;

begin

  X := 10;

  case X of
    1, 2, 5:
      ShowMessage('One');
    3,8:
      ShowMessage('Two');
    4,6:
      ShowMessage('Three');
    else
      ShowMessage('Four');
    end;


end.
