program IQTest;

uses
  Forms,
  MainWindow in 'MainWindow.pas' {Form1},
  IQ in 'IQ.pas',
  Quest in 'Quest.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
