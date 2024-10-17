program GymApp;

uses
  Vcl.Forms,
  Form_Initial in 'Form_Initial.pas' {AceInitial},
  Frame_Login in 'Frame_Login.pas' {AceLogin: TFrame},
  Frame_Register in 'Frame_Register.pas' {AceRegister: TFrame},
  Global_Functions in 'Global_Functions.pas',
  DM_Connection in 'DM_Connection.pas' {DM_Con: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAceInitial, AceInitial);
  Application.CreateForm(TDM_Con, DM_Con);
  Application.Run;
end.
