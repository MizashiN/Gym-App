unit Frame_ChangePassword;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ButtonStylesAttributes, Vcl.StyledButton, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TChangePassword = class(TFrame)
    Panel1: TPanel;
    Shape1: TShape;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    PasswordWarningLabel: TLabel;
    Panel5: TPanel;
    Shape3: TShape;
    ConfirmNewPasswordEdit: TEdit;
    Panel4: TPanel;
    Shape2: TShape;
    NewPasswordEdit: TEdit;
    ChangePasswordButton: TStyledButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
