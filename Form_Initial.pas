unit Form_Initial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Login, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Frame_Register, DM_Connection, Global_Functions, Form_Main;

type
  TAceInitial = class(TForm)
    AceSignIn: TAceSignIn;
    WomanBackgroundImage: TImage;
    Panel1: TPanel;
    AceSignUp: TAceSignUp;
    procedure FormCreate(Sender: TObject);
    procedure AceSignInDontHaveAccountSignUpButtonClick(Sender: TObject);
    procedure AceSignUpHaveAccountSignInButtonClick(Sender: TObject);
    procedure AceSignUpSignUpButtonClick(Sender: TObject);
    procedure AceSignInSignInButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

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
procedure TAceInitial.AceSignInDontHaveAccountSignUpButtonClick(Sender: TObject);
begin
SwitchToFrame(AceSignUp);
AceSignUp.PasswordWarningLabel.Visible := False;
AceSignUp.UserWarningLabel.Visible := False;
end;

procedure TAceInitial.AceSignInSignInButtonClick(Sender: TObject);
var
  Main: TMain;
begin
  if CheckIfUserAndPasswordIsCorrect(AceSignIn.SignInUserEdit, AceSignIn.SignInPasswordEdit) then
    begin
    ModalResult := mrOk;
    Close;
    end
    else
    begin
      AceSignIn.UserPassWarningLabel.Visible := True;
    end;
end;

procedure TAceInitial.AceSignUpHaveAccountSignInButtonClick(Sender: TObject);
begin
SwitchToFrame(AceSignIn);
AceSignIn.UserPassWarningLabel.Visible := False;
end;

procedure TAceInitial.AceSignUpSignUpButtonClick(Sender: TObject);
begin
  if CheckUserCharacters(AceSignUp.SignUpUserEdit) and CheckPasswordCharacters(AceSignUp.SignUpPasswordEdit, AceSignUp.SignUpConfirmPasswordEdit) then
    begin
      if not CheckIfUserExists(AceSignUp.SignUpUserEdit) then
        begin
          if SignUpUser(AceSignUp.SignUpUserEdit, AceSignUp.SignUpConfirmPasswordEdit) then
            begin
              AceSignUp.SignUpUserEdit.Text := '';
              AceSignUp.SignUpPasswordEdit.Text := '';
              AceSignUp.SignUpConfirmPasswordEdit.Text := '';
              SwitchToFrame(AceSignIn);
            end
        end
        else
          begin
            AceSignUp.UserWarningLabel.Caption := 'User already exists';
            AceSignUp.UserWarningLabel.Visible := True;
          end;
    end
    else
    begin
      if not CheckUserCharacters(AceSignUp.SignUpUserEdit) then
        begin
          AceSignUp.UserWarningLabel.Caption := 'User don''t have five words and one number';
          AceSignUp.UserWarningLabel.Visible := True;
        end;

      if not CheckPasswordCharacters(AceSignUp.SignUpPasswordEdit, AceSignUp.SignUpConfirmPasswordEdit) then
        begin;
          AceSignUp.PasswordWarningLabel.Visible := True;
        end
    end;
end;

procedure TAceInitial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult = mrOk then
  begin
    Main := TMain.Create(nil);
    try
      Main.ShowModal;
    finally
      Main.Free;
    end;
  end;
end;

procedure TAceInitial.FormCreate(Sender: TObject);
begin
SwitchToFrame(AceSignIn);
AceSignIn.UserPassWarningLabel.Visible := False;
end;

procedure TAceInitial.SwitchToFrame(TargetFrame: TFrame);
begin
  // Esconde e desabilita ambos os frames
  AceSignIn.Visible := False;
  AceSignIn.Enabled := False;
  AceSignUp.Visible := False;
  AceSignUp.Enabled := False;

  // Mostra o frame alvo
  TargetFrame.Visible := True;
  TargetFrame.Enabled := True;
end;

end.
