unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Frame_Login, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Frame_Register;

type
  TAceInitial = class(TForm)
    AceLogin: TAceLogin;
    WomanBackgroundImage: TImage;
    Panel1: TPanel;
    AceRegister: TAceRegister;
    procedure FormCreate(Sender: TObject);
    procedure AceLoginDontHaveAccountSignUpButtonClick(Sender: TObject);
    procedure AceRegisterHaveAccountSignInButtonClick(Sender: TObject);

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
end;

procedure TAceInitial.AceRegisterHaveAccountSignInButtonClick(Sender: TObject);
begin
SwitchToFrame(AceLogin)
end;

procedure TAceInitial.FormCreate(Sender: TObject);
begin
SwitchToFrame(AceLogin)
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
