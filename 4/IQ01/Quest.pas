unit Quest;

interface

type
  Question = class
               Caption, Category : String;
               Answers : array [1..4] of String;
               CorrectNumber : Integer;
               constructor Create (Caption, Category, Answer1, Answer2, Answer3, Answer4 : String; Correct : Integer );
             end;

implementation

constructor Question.Create (Caption, Category, Answer1, Answer2, Answer3, Answer4 : String; Correct : Integer );
  begin
    self.Caption := Caption;
    self.Category := Category;
    Answers[1] := Answer1;
    Answers[2] := Answer2;
    Answers[3] := Answer3;
    Answers[4] := Answer4;
    CorrectNumber := Correct;
  end;

end.
