program Project3;

uses
  Forms,
  Unit9 in 'Unit9.pas' {Form1},
  Cmplx in 'Cmplx.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
