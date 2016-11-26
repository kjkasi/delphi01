unit IQ;

interface

uses Quest;

type
  Tester = class
             Count : Integer;
             Q : array [1..1000] of Question;
             CorrectAnswers : Integer;

             function GetResult () : Integer;
             function GetQuestion (Category : String) : Question;
             procedure SetAnswer (Otvet : boolean; Category : String);

             constructor Create ();
           end;

implementation

procedure Tester.SetAnswer (Otvet : boolean; Category : String);
  begin
    if Otvet
      then
        CorrectAnswers := CorrectAnswers + 1;
  end;

function Tester.GetQuestion (Category : String) : Question;
  var
    index : Integer;
  begin
    for index := 1 to Count do
      if Q[index].Category = Category
        then
          Result := Q[index];
  end;

constructor Tester.Create ();
  begin
    CorrectAnswers := 0;

    Count := 3;
    Q[1] := Question.Create ('В каком году произошла Куликовская битва', 'История', '1320', '1340', '1360', '1380', 4);
    Q[2] := Question.Create ('Какой пролив разделяет Чукотку и Аляску', 'География', 'Лаперуза', 'Берингов', 'Ла-Манш', 'Магелланов', 2);
    Q[3] := Question.Create ('Назовите четвёртую планету от солнца', 'Астрономия', 'Меркурий', 'Венера', 'Земля', 'Марс', 4);

  end;

function Tester.GetResult () : Integer;
  begin
    Result := CorrectAnswers;
  end;

end.
