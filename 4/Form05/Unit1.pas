unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ToolWin, ComCtrls, ExtCtrls, Buttons;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    ControlBar1: TControlBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.N2Click(Sender: TObject);
begin
  Form2.Label1.Caption := Edit1.Text;
  Form2.ShowModal ();
end;

end.
