program GymApp;

uses
  Vcl.Forms,
  Global_Functions in 'Global_Functions.pas',
  DM_Connection in 'DM_Connection.pas' {DM_Con: TDataModule},
  Form_Supplements in 'Form_Supplements.pas' {Supplements},
  Form_ConfigCompanies in 'Form_ConfigCompanies.pas' {ConfigCompanies},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Tablet Dark');
  Application.CreateForm(TDM_Con, DM_Con);
  Application.CreateForm(TSupplements, Supp);
  Application.Run;
end.
