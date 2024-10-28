program GymApp;

uses
  Vcl.Forms,
  Form_Initial in 'Form_Initial.pas' {AceInitial},
  Frame_Login in 'Frame_Login.pas' {AceSignIn: TFrame},
  Frame_Register in 'Frame_Register.pas' {AceSignUp: TFrame},
  Global_Functions in 'Global_Functions.pas',
  DM_Connection in 'DM_Connection.pas' {DM_Con: TDataModule},
  Form_Main in 'Form_Main.pas' {Main},
  Frame_CreateSecurityQuestion in 'Frame_CreateSecurityQuestion.pas' {CreateSecurityQuestion: TFrame},
  Frame_ForgotPassword in 'Frame_ForgotPassword.pas' {ForgotPassword: TFrame},
  Frame_ChangePassword in 'Frame_ChangePassword.pas' {ChangePassword: TFrame},
  Frame_Home in 'Frame_Home.pas' {Home: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAceInitial, AceInitial);
  Application.CreateForm(TDM_Con, DM_Con);
  Application.Run;
end.
