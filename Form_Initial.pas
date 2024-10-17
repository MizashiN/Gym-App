unit Form_Initial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Login, Vcl.ExtCtrls, System.RegularExpressions,
  Vcl.Imaging.jpeg, Frame_Register, DM_Connection, Global_Functions;

type
  TAceInitial = class(TForm)
    AceLogin: TAceLogin;
    WomanBackgroundImage: TImage;
    Panel1: TPanel;
    AceRegister: TAceRegister;
    procedure FormCreate(Sender: TObject);
    procedure AceLoginDontHaveAccountSignUpButtonClick(Sender: TObject);
    procedure AceRegisterHaveAccountSignInButtonClick(Sender: TObject);
    procedure AceRegisterSignUpButtonClick(Sender: TObject);
    procedure AceLoginSignInButtonClick(Sender: TObject);

  private
    { Private declarations }
    procedure SwitchToFrame(TargetFrame: TFrame);
  public
    { Public declarations }
  end;

var
  AceInitial: TAceInitial;

implementation

{$R *.dfm}
procedure TAceInitial.AceLoginDontHaveAccountSignUpButtonClick(Sender: TObject);
begin
SwitchToFrame(AceRegister)
PasswordWarningLabel.Visible := False;
UserWarningLabel.Visible := False;
end;

procedure TAceInitial.AceLoginSignInButtonClick(Sender: TObject);
begin
  if CheckIfUserAndPasswordIsCorrect(UserEdit, PasswordEdit) then
    begin
      showMessage('Funfou')
    end;
    else
    begin
      UserPassWarningLabel.Visible := True;
    end;
end;

procedure TAceInitial.AceRegisterHaveAccountSignInButtonClick(Sender: TObject);
begin
SwitchToFrame(AceLogin)
UserPassWarningLabel.Visible := False;
end;

procedure TAceInitial.AceRegisterSignUpButtonClick(Sender: TObject);
begin
  if CheckUserCharacter(UserEdit) and CheckPasswordCharacter(SignUpPasswordEdit, ConfirmPasswordEdit) then
    begin
      if not CheckIfUserExists(UserEdit) then
      begin
        SignUpUser(UserEdit, ConfirmPasswordEdit);
      end
      else
      begin
      ShowMessage('Usuario Existente');
      end;
    end
    else
    begin
      if not CheckUserCharacter then
        begin
          UserWarningLabel.Visible := True;
        end
      if not CheckPasswordCharacter then
        begin
          PasswordWarningLabel.Visible := True;
        end
    end;
end;

procedure TAceInitial.FormCreate(Sender: TObject);
begin
SwitchToFrame(AceLogin)
UserPassWarningLabel.Visible := False;
end;

procedure TAceInitial.SwitchToFrame(TargetFrame: TFrame);
begin
  // Esconde e desabilita ambos os frames
  AceLogin.Visible := False;
  AceLogin.Enabled := False;
  AceRegister.Visible := False;
  AceRegister.Enabled := False;

  // Mostra o frame alvo
  TargetFrame.Visible := True;
  TargetFrame.Enabled := True;
end;

end.
