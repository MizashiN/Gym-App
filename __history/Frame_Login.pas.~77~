unit Frame_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, Global_Functions,
  Vcl.StyledButton, Vcl.ButtonStylesAttributes;

type
  TAceSignIn = class(TFrame)
    Shape1: TShape;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    DontHaveAccountSignUpButton: TLabel;
    Panel5: TPanel;
    Shape3: TShape;
    SignInPasswordEdit: TEdit;
    Panel4: TPanel;
    Shape2: TShape;
    SignInUserEdit: TEdit;
    SignInButton: TStyledButton;
    UserPassWarningLabel: TLabel;
    ForgetPasswordButtonLabel: TLabel;
    procedure DontHaveAccountSignUpButtonMouseEnter(Sender: TObject);
    procedure DontHaveAccountSignUpButtonMouseLeave(Sender: TObject);
    procedure ForgetPasswordButtonLabelMouseEnter(Sender: TObject);
    procedure ForgetPasswordButtonLabelMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TAceSignIn.DontHaveAccountSignUpButtonMouseEnter(Sender: TObject);
begin
  DontHaveAccountSignUpButton.Font.Color := $00D6AA7A;
end;

procedure TAceSignIn.DontHaveAccountSignUpButtonMouseLeave(Sender: TObject);
begin
  DontHaveAccountSignUpButton.Font.Color := clWhite;
end;

procedure TAceSignIn.ForgetPasswordButtonLabelMouseEnter(Sender: TObject);
begin
  ForgetPasswordButtonLabel.Font.Color := $00D6AA7A;
end;

procedure TAceSignIn.ForgetPasswordButtonLabelMouseLeave(Sender: TObject);
begin
  ForgetPasswordButtonLabel.Font.Color := clWhite;
end;

end.
