unit Frame_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  JvExStdCtrls, JvHtControls, dxGDIPlusClasses, JvEdit, Vcl.Buttons;

type
  TAceLogin = class(TFrame)
    Shape1: TShape;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Panel3: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Panel6: TPanel;
    Shape4: TShape;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Panel5: TPanel;
    Shape3: TShape;
    Edit1: TEdit;
    Panel4: TPanel;
    Shape2: TShape;
    Edit2: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.