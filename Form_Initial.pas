﻿unit Form_Initial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Login, Vcl.ExtCtrls,
  Frame_ChangePassword, Frame_ForgotPassword, Frame_CreateSecurityQuestion,
  Frame_Register, Vcl.Imaging.jpeg, Vcl.StdCtrls, DM_Connection, Global_Functions, Form_Main;

type
  TAceInitial = class(TForm)
    AceSignIn: TAceSignIn;
    WomanBackgroundImage: TImage;
    Panel1: TPanel;
    AceSignUp: TAceSignUp;
    CreateSecurityQuestion: TCreateSecurityQuestion;
    ForgotPassword: TForgotPassword;
    ChangePassword: TChangePassword;
    procedure FormCreate(Sender: TObject);
    procedure AceSignInDontHaveAccountSignUpButtonClick(Sender: TObject);
    procedure AceSignUpHaveAccountSignInButtonClick(Sender: TObject);
    procedure AceSignUpSignUpButtonClick(Sender: TObject);
    procedure AceSignInSignInButtonClick(Sender: TObject);
    procedure CreateSecurityQuestionDoneButtonClick(Sender: TObject);
    procedure AceSignInForgetPasswordButtonLabelClick(Sender: TObject);
    procedure ForgotPasswordVerifyButtonClick(Sender: TObject);
    procedure ChangePasswordChangePasswordButtonClick(Sender: TObject);
    procedure ForgotPasswordBackToLoginButtonClick(Sender: TObject);

  private
    { Private declarations }
    procedure SwitchToFrame(TargetFrame: TFrame);
  public
    { Public declarations }
    username: string;
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

procedure TAceInitial.AceSignInForgetPasswordButtonLabelClick(Sender: TObject);
begin
  if CheckIfUserExists(AceSignIn.SignInUserEdit) then
    begin

      AceSignIn.UserPassWarningLabel.Visible := False;

      ForgotPassword.Enabled := True;
      ForgotPassword.Visible := True;
      ForgotPassword.SecurityQuestionLabel.Caption := LoadQuestion(AceSignIn.SignInUserEdit);
    end
    else
    begin
      AceSignIn.UserPassWarningLabel.Caption := 'User don''t exists';
      AceSignIn.UserPassWarningLabel.Visible := True;
    end;
end;

procedure TAceInitial.AceSignInSignInButtonClick(Sender: TObject);
var
  Main: TMain;
begin
  if CheckIfUserAndPasswordIsCorrect(AceSignIn.SignInUserEdit, AceSignIn.SignInPasswordEdit) then
    begin
      ModalResult := mrOk;
      Main := TMain.Create(nil);
      Main.userID := GetUserID(AceSignIn.SignInUserEdit);
      try
        Main.ShowModal; // Exibe o formul�rio principal
      finally
        Main.Free; // Libera o recurso ap�s o fechamento
      end;

      Close;
    end
    else
    begin
      AceSignIn.UserPassWarningLabel.Caption := 'User or Password is wrong';
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
  if CheckUserCharacters(AceSignUp.SignUpUserEdit) then
    begin
      if CheckMatchPasswords(AceSignUp.SignUpPasswordEdit, AceSignUp.SignUpConfirmPasswordEdit) then
        begin
          if CheckPasswordCharacters(AceSignUp.SignUpConfirmPasswordEdit) then
            begin
              if not CheckIfUserExists(AceSignUp.SignUpUserEdit) then
                begin
                  CreateSecurityQuestion.Visible := True;
                  CreateSecurityQuestion.Enabled := True;
                end
                else
                begin
                  AceSignUp.UserWarningLabel.Caption := 'User already exists';
                  AceSignUp.UserWarningLabel.Visible := True;
                end;
            end
            else
            begin
              AceSignUp.PasswordWarningLabel.Caption := 'Password does not meet the security requirements';
              AceSignUp.PasswordWarningLabel.Visible := True;
            end;
        end
        else
        begin
          AceSignUp.PasswordWarningLabel.Caption := 'Passwords do not match';
          AceSignUp.PasswordWarningLabel.Visible := True;
        end;
    end
    else
    begin
      AceSignUp.UserWarningLabel.Caption := 'User don''t have five words and one number';
      AceSignUp.UserWarningLabel.Visible := True;
    end;
end;

procedure TAceInitial.ChangePasswordChangePasswordButtonClick(Sender: TObject);
begin
  if CheckMatchPasswords(ChangePassword.NewPasswordEdit,ChangePassword.ConfirmNewPasswordEdit) then
    begin
      if CheckPasswordCharacters(ChangePassword.ConfirmNewPasswordEdit) then
        begin
          if UpdatePasswordUser(AceSignIn.SignInUserEdit, ChangePassword.ConfirmNewPasswordEdit) then
            begin

              ChangePassword.PasswordWarningLabel.Visible := False;
              ForgotPassword.IncorrectAnswerWarningLabel.Visible := False;

              SwitchToFrame(AceSignIn)
            end;
        end
        else
        begin
          ChangePassword.PasswordWarningLabel.Caption := 'Password does not meet the security requirements';
          ChangePassword.PasswordWarningLabel.Visible := True;
        end;
    end
    else
    begin
      ChangePassword.PasswordWarningLabel.Caption := 'Passwords do not match';
      ChangePassword.PasswordWarningLabel.Visible := True;
    end;
end;

procedure TAceInitial.ForgotPasswordBackToLoginButtonClick(
  Sender: TObject);
begin
  ForgotPassword.IncorrectAnswerWarningLabel.Visible := False;
  SwitchToFrame(AceSignIn);
end;

procedure TAceInitial.ForgotPasswordVerifyButtonClick(Sender: TObject);
begin
  if CheckIfAnswerSecurityQuestionIsCorrect(AceSignIn.SignInUserEdit, ForgotPassword.AnswerQuestionEdit) then
    begin
      ChangePassword.Visible := True;
      ChangePassword.Enabled := True;
    end
    else
    begin
      ForgotPassword.IncorrectAnswerWarningLabel.Visible := True;
    end;
end;

procedure TAceInitial.FormCreate(Sender: TObject);
begin
  SwitchToFrame(AceSignIn);
  AceSignIn.UserPassWarningLabel.Visible := False;
end;

procedure TAceInitial.CreateSecurityQuestionDoneButtonClick(Sender: TObject);
begin
  if CheckQuestionCharacters(CreateSecurityQuestion.SecurityQuestionEdit) then
    begin
      if CheckMatchAnswers(CreateSecurityQuestion.AnswerEdit,CreateSecurityQuestion.ConfirmAnswerEdit) then
        begin
          if CheckAnswerCharacters(CreateSecurityQuestion.ConfirmAnswerEdit) then
            begin
              if SignUpUser(AceSignUp.SignUpUserEdit, AceSignUp.SignUpConfirmPasswordEdit, CreateSecurityQuestion.SecurityQuestionEdit, CreateSecurityQuestion.ConfirmAnswerEdit) then
                begin
                  AceSignUp.UserWarningLabel.Visible := False;
                  AceSignUp.PasswordWarningLabel.Visible := False;

                  CreateSecurityQuestion.QuestionWarningLabel.Visible := False;
                  CreateSecurityQuestion.AnswerWarningLabel.Visible := False;

                  SwitchToFrame(AceSignIn);
                end
            end
            else
            begin
              CreateSecurityQuestion.AnswerWarningLabel.Caption := 'Answers does not meet the security requirements';
              CreateSecurityQuestion.AnswerWarningLabel.Visible := True;
            end;
        end
        else
        begin
          CreateSecurityQuestion.AnswerWarningLabel.Caption := 'Answers do not match';
          CreateSecurityQuestion.AnswerWarningLabel.Visible := True;
        end;
    end
    else
    begin
      CreateSecurityQuestion.QuestionWarningLabel.Visible := True;
    end;
end;

procedure TAceInitial.SwitchToFrame(TargetFrame: TFrame);

  // Procedimento recursivo para iterar sobre os componentes dentro dos frames
  procedure ClearEditsInFrame(Frame: TFrame);
  var
    J: Integer;
  begin
    for J := 0 to Frame.ComponentCount - 1 do
    begin
      if Frame.Components[J] is TEdit then
      begin
        TEdit(Frame.Components[J]).Text := '';
      end;
    end;
  end;

var
  I: Integer;
begin
  // Itera sobre todos os componentes do formul�rio para ocultar e desabilitar TFrame e limpar os TEdit
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TFrame then
    begin
      TFrame(Components[I]).Visible := False;
      TFrame(Components[I]).Enabled := False;

      // Limpa os TEdit dentro do frame
      ClearEditsInFrame(TFrame(Components[I]));
    end;
  end;

  // Mostra e habilita o frame alvo
  TargetFrame.Visible := True;
  TargetFrame.Enabled := True;
end;




end.