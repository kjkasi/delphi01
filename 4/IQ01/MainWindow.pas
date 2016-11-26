unit MainWindow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, IQ, Quest;

type
  TForm1 = class(TForm)
    RightPanel: TPanel;
    BottomPanel: TPanel;
    MainArea: TPanel;
    RightBottomCorner: TPanel;
    Button1: TButton;
    Cards: TPageControl;
    History: TTabSheet;
    Geography: TTabSheet;
    Astronomy: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    QHistory: TLabel;
    History1: TButton;
    History3: TButton;
    History2: TButton;
    History4: TButton;
    QGeography: TLabel;
    Geo: TRadioGroup;
    Button6: TButton;
    QAstronomy: TLabel;
    Planets: TListBox;
    Button7: TButton;
    Label4: TLabel;
    MyResult: TLabel;
    procedure History1Click(Sender: TObject);
    procedure History2Click(Sender: TObject);
    procedure History3Click(Sender: TObject);
    procedure History4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  MyTest: Tester;
  QuestHistory, QuestGeorgaphy, QuestAstronomy : Question;

implementation

{$R *.dfm}

procedure TForm1.History1Click(Sender: TObject);
begin
  if QuestHistory.CorrectNumber = 1
    then
      MyTest.SetAnswer (true, 'История')
    else
      MyTest.SetAnswer (false, 'История');
  History.TabVisible := false;
end;

procedure TForm1.History2Click(Sender: TObject);
begin
  if QuestHistory.CorrectNumber = 2
    then
      MyTest.SetAnswer (true, 'История')
    else
      MyTest.SetAnswer (false, 'История');
  History.TabVisible := false;
end;

procedure TForm1.History3Click(Sender: TObject);
begin
  if QuestHistory.CorrectNumber = 3
    then
      MyTest.SetAnswer (true, 'История')
    else
      MyTest.SetAnswer (false, 'История');
  History.TabVisible := false;
end;

procedure TForm1.History4Click(Sender: TObject);
begin
  if QuestHistory.CorrectNumber = 4
    then
      MyTest.SetAnswer (true, 'История')
    else
      MyTest.SetAnswer (false, 'История');
  History.TabVisible := false;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  if Geo.ItemIndex + 1 = QuestGeorgaphy.CorrectNumber
    then
      MyTest.SetAnswer (true, 'География')
    else
      MyTest.SetAnswer (false, 'География');
  Geography.TabVisible := false;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  if Planets.ItemIndex + 1 = QuestAstronomy.CorrectNumber
    then
      MyTest.SetAnswer (true, 'Астрономия')
    else
      MyTest.SetAnswer (false, 'Астрономия');
  Astronomy.TabVisible := false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MyTest := Tester.Create ();

  QuestHistory := MyTest.GetQuestion ('История');
  QHistory.Caption := QuestHistory.Caption;
  History1.Caption := QuestHistory.Answers[1];
  History2.Caption := QuestHistory.Answers[2];
  History3.Caption := QuestHistory.Answers[3];
  History4.Caption := QuestHistory.Answers[4];

  QuestGeorgaphy := MyTest.GetQuestion ('География');
  QGeography.Caption := QuestGeorgaphy.Caption;
  Geo.Items.Clear ();
  Geo.Items.Add (QuestGeorgaphy.Answers[1]);
  Geo.Items.Add (QuestGeorgaphy.Answers[2]);
  Geo.Items.Add (QuestGeorgaphy.Answers[3]);
  Geo.Items.Add (QuestGeorgaphy.Answers[4]);

  QuestAstronomy := MyTest.GetQuestion ('Астрономия');
  QAstronomy.Caption := QuestAstronomy.Caption;
  Planets.Items.Clear ();
  Planets.Items.Add (QuestAstronomy.Answers[1]);
  Planets.Items.Add (QuestAstronomy.Answers[2]);
  Planets.Items.Add (QuestAstronomy.Answers[3]);
  Planets.Items.Add (QuestAstronomy.Answers[4]);

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  MyResult.Caption := IntToStr (MyTest.GetResult ());
end;

end.
