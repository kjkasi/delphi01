unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    MyButton: TButton;
    Button2222: TButton;
    procedure MyButtonClick(Sender: TObject);
    procedure Button2222Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.MyButtonClick(Sender: TObject);
begin
  ShowMessage ('Кнопка!');
end;

procedure TForm1.Button2222Click(Sender: TObject);
begin
  ShowMessage ('Кнопка 2!');
end;

end.
