unit Frame_Profile;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ButtonStylesAttributes, Vcl.StyledButton, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TProfile = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Panel5: TPanel;
    Panel15: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    UsernameLabel: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TProfile.Image2Click(Sender: TObject);
begin
//alterar imagem
end;

end.
