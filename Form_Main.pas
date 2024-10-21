unit Form_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.ButtonStylesAttributes, Vcl.StyledButton, Vcl.Imaging.jpeg, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.ComCtrls,
  AdvPageControl;

type
  TMain = class(TForm)
    Panel1: TPanel;
    HomeSideBarButton: TStyledButton;
    RoutineSideBarButton: TStyledButton;
    ExercisesSideBarButton: TStyledButton;
    DietSideBarButton: TStyledButton;
    GoalsSideBarButton: TStyledButton;
    GuideAndTipsSideBarButton: TStyledButton;
    SupplementsSideBarButton: TStyledButton;
    HistorySideBarButton: TStyledButton;
    AcessoriesSideBarButton: TStyledButton;
    AnabolSideBarButton: TStyledButton;
    Panel2: TPanel;
    Shape1: TShape;
    Panel3: TPanel;
    Image1: TImage;
    UserNameLabel: TLabel;
    Panel4: TPanel;
    StyledButton1: TStyledButton;
    procedure StatusButton(Button: TStyledButton);
    procedure SideBarButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.StatusButton(Button: TStyledButton);
begin
  Button.Down := not Button.Down;
end;

procedure TMain.SideBarButtonClick(Sender: TObject);
begin
  if Sender is TStyledButton then
    StatusButton(TStyledButton(Sender));
end;

end.
