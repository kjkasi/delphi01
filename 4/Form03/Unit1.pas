unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Calculator, ExtCtrls, Menus;

type
  TForm1 = class(TForm)

    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Timer1: TTimer;
    CurrentTime: TLabel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    PopupMenu1: TPopupMenu;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    PopupMenu2: TPopupMenu;
    N12: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  MyCalc : Calc;
  Seconds : Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label1.Caption := IntToStr (MyCalc.Sum  (
                                          StrToInt (Edit1.Text),
                                          StrToInt (Edit2.Text)
                                          ));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MyCalc := Calc.Create ();
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if Seconds = 10
    then
      Application.Terminate ()
    else
      begin
        Seconds := Seconds + 1;
        CurrentTime.Caption := IntToStr (Seconds);
      end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Seconds := 0;
  Timer1.Enabled := true;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  Application.Terminate ();
end;

end.
