program GymApp;

uses
  Vcl.Forms,
  Global_Functions in 'Global_Functions.pas',
  DM_Connection in 'DM_Connection.pas' {DM_Con: TDataModule},
  Form_Supplements in 'Form_Supplements.pas' {Supplements},
  Form_AddCompany in 'Form_AddCompany.pas' {SetupCompany};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Con, DM_Con);
  Application.CreateForm(TSetupCompany, SetupCompany);
  Application.Run;
end.
