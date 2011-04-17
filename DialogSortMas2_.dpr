program DialogSortMas2_;

uses
  Forms,
  DialogSortMas2 in 'DialogSortMas2.pas' {Form2},
  DIMINI in 'DIMINI.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
