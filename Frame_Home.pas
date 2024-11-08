unit Frame_Home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope,
  Vcl.MPlayer, Vcl.Imaging.pngimage, Vcl.ButtonStylesAttributes,
  Vcl.StyledButton, Global_Functions, ShellAPI;

type
  THome = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Panel7: TPanel;
    Shape3: TShape;
    Panel8: TPanel;
    Panel9: TPanel;
    Shape4: TShape;
    Panel10: TPanel;
    AuthorLabel: TLabel;
    QuoteLabel: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    UsernameLabel: TLabel;
    SignInButton: TStyledButton;
    Panel14: TPanel;
    Label3: TLabel;
    Image2: TImage;
    StyledButton1: TStyledButton;
    Panel5: TPanel;
  private
    { Private declaration }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
