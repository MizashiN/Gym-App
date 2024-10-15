program GymApp;

uses
  Vcl.Forms,
  Login in 'Login.pas' {AceInitial},
  Frame_Login in 'Frame_Login.pas' {AceLogin: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAceInitial, AceInitial);
  Application.Run;
end.
