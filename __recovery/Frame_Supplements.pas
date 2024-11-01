unit Frame_Supplements;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  AdvCombo, AdvDBComboBox, AdvDBLookupComboBox, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList;

type
  TSupplements = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Panel3: TPanel;
    SubcategoriesPanel: TPanel;
    BrandPanel: TPanel;
    MaxPricePanel: TPanel;
    MinPricePanel: TPanel;
    CategoryPanel: TPanel;
    BrandsCombobox: TDBComboBox;
    Label1: TLabel;
    CategoryCombobox: TDBComboBox;
    Label3: TLabel;
    SubcategoriesCombobox: TDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MinPriceEdit: TEdit;
    MaxPriceEdit: TEdit;
    CardsPanel: TPanel;
    CardsBox: TScrollBox;
    ImageList1: TImageList;
    Panel4: TPanel;
    Button1: TButton;
    procedure CreateCards;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TSupplements.Button1Click(Sender: TObject);
begin
CreateCards;
end;

procedure TSupplements.CreateCards;
var
 i, col, row: Integer;
  Panel: TPanel;
  LabelText: TLabel;
  Image: TImage;
  PanelWidth, PanelHeight, Padding, Columns: Integer;
begin
  PanelWidth := 250;   // Largura de cada panel
  PanelHeight := 300;  // Altura de cada panel
  Padding := 10;       // Espaço entre os painéis
  Columns := 5;        // Número de colunas desejado

  for i := 0 to 30 do
  begin
    // Calcula a coluna e a linha com base no índice e no número de colunas
    col := i mod Columns;
    row := i div Columns;

    // Cria o TPanel dinamicamente
    Panel := TPanel.Create(Self);
    Panel.Parent := CardsBox;         // Define o ScrollBox como o pai do Panel
    Panel.Width := PanelWidth;
    Panel.Height := PanelHeight;
    Panel.Left := col * (PanelWidth + Padding);
    Panel.Top := row * (PanelHeight + Padding);
    Panel.BevelOuter := bvNone;
    Panel.Color := clBlack;

    // Adiciona uma imagem no painel (simulação)
  Image := TImage.Create(Panel);
//    Image.Parent := Panel;
//    Image.Align := alTop;
//    Image.Proportional := True;
//    Image.Stretch := True;
//    Image.Height := 120;  // Define a altura da imagem dentro do painel

    // Adiciona o TLabel abaixo da imagem
    LabelText := TLabel.Create(Panel);
    LabelText.Parent := Panel;
    LabelText.Caption := 'Product';
    LabelText.Font.Style := [fsBold];
    LabelText.Font.Color := clWhite;
    LabelText.Alignment := taCenter;
    LabelText.Align := alClient;
  end;
end;

end.
