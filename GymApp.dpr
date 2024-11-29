program GymApp;

uses
  Vcl.Forms,
  Global_Functions in 'Global_Functions.pas',
  DM_Connection in 'DM_Connection.pas' {DM_Con: TDataModule},
  Form_Supplements in 'Form_Supplements.pas' {Supplements},
  Form_ConfigCompanies in 'Form_ConfigCompanies.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Con, DM_Con);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
