unit Frame_Register;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ButtonStylesAttributes, Vcl.StyledButton, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TAceRegister = class(TFrame)
    Panel1: TPanel;
    Shape1: TShape;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    HaveAccountSignInButton: TLabel;
    Panel5: TPanel;
    Shape3: TShape;
    ConfirmPasswordEdit: TEdit;
    Panel4: TPanel;
    Shape2: TShape;
    UserEdit: TEdit;
    SignUpButton: TStyledButton;
    Label4: TLabel;
    Panel6: TPanel;
    Shape4: TShape;
    PasswordEdit: TEdit;
    procedure HaveAccountSignInButtonMouseEnter(Sender: TObject);
    procedure HaveAccountSignInButtonMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TAceRegister.HaveAccountSignInButtonMouseEnter(Sender: TObject);
begin
  HaveAccountSignInButton.Font.Color := $00D6AA7A;
end;

procedure TAceRegister.HaveAccountSignInButtonMouseLeave(Sender: TObject);
begin
  HaveAccountSignInButton.Font.Color := clWhite;
end;

end.
