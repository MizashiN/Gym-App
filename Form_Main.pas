unit Form_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.ButtonStylesAttributes, Vcl.StyledButton, Vcl.Imaging.jpeg, Vcl.StdCtrls,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.ComCtrls,
  AdvPageControl, Frame_Home;

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
    Home: THome;
    procedure StatusButton(Button: TStyledButton);
    procedure SideBarButtonClick(Sender: TObject);
    procedure SwitchToFrame(TargetFrame: TFrame);
    procedure FormCreate(Sender: TObject);
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

procedure TMain.FormCreate(Sender: TObject);
begin
SideBarButtonClick(HomeSideBarButton);
end;

procedure TMain.SideBarButtonClick(Sender: TObject);
var
  TargetFrame: TFrame;
begin
  if Sender is TStyledButton then
  begin
    // Atualiza o estado do bot�o
    StatusButton(TStyledButton(Sender));

    // Verifica qual Frame ser� ativado baseado na propriedade Tag do bot�o
    case TStyledButton(Sender).Tag of
      1: TargetFrame := Home; // Supondo que voc� tenha um TFrame chamado Frame1
      else
        Exit; // Se o Tag n�o corresponder a nenhum Frame, sai do m�todo
    end;

    // Chama o m�todo para alternar para o Frame selecionado
    SwitchToFrame(TargetFrame);
  end;
end;


procedure TMain.SwitchToFrame(TargetFrame: TFrame);
var
  I: Integer;
begin
  // Verifica se o TargetFrame j� est� vis�vel e habilitado
  if TargetFrame.Visible and TargetFrame.Enabled then
    Exit; // Se j� estiver ativo, sai do m�todo

  // Itera sobre todos os componentes do formul�rio para ocultar e desabilitar TFrame
  for I := 0 to ComponentCount - 1 do
  begin
    if Components[I] is TFrame then
    begin
      TFrame(Components[I]).Visible := False;
      TFrame(Components[I]).Enabled := False;
    end;
  end;

  // Torna o TargetFrame vis�vel e habilitado
  TargetFrame.Visible := True;
  TargetFrame.Enabled := True;
end;

end.