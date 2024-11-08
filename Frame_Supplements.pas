unit Frame_Supplements;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, ShellAPI,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList,System.JSON, REST.Client, REST.Types, Global_Functions, System.Generics.Collections,
  Vcl.ButtonStylesAttributes, Vcl.StyledButton;

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
    Label1: TLabel;
    CategoriesLabel: TLabel;
    SubcategoriesLabel: TLabel;
    MinPriceLabel: TLabel;
    MaxPriceLabel: TLabel;
    MinPriceEdit: TEdit;
    MaxPriceEdit: TEdit;
    CardsPanel: TPanel;
    CardsBox: TScrollBox;
    Panel4: TPanel;
    CategoriesCombobox: TComboBox;
    SubcategoriesCombobox: TComboBox;
    Panel5: TPanel;
    TypesLabel: TLabel;
    TypesCombobox: TComboBox;
    BrandsCombobox: TComboBox;
    SearchButton: TStyledButton;
    procedure GetProducts;
    procedure OpenURL(URL: string);
    procedure PanelClick(Sender: TObject);
    procedure CreateCardsProduct;
    procedure CategoriesComboboxSelect(Sender: TObject);
    procedure BrandsComboboxSelect(Sender: TObject);
    procedure SubcategoriesComboboxSelect(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
  private
    { Private declarations }
    ProductsArray: TJSONArray;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TSupplements.BrandsComboboxSelect(Sender: TObject);
begin
  CategoriesLabel.Visible := True;
  CategoriesCombobox.Visible := True;

  MinPriceLabel.Visible := True;
  MinPriceEdit.Visible := True;

  MaxPriceLabel.Visible := True;
  MaxPriceEdit.Visible := True;

  SearchButton.Visible := True;

  SelectCategories(CategoriesCombobox);
end;
procedure TSupplements.PanelClick(Sender: TObject);
var
  URL: string;
  ProductIndex: Integer;
  Product: TJSONObject;
begin
  if Sender is TPanel then
    ProductIndex := TPanel(Sender).Tag
  else if Sender is TImage then
    ProductIndex := TImage(Sender).Tag
  else if Sender is TLabel then
    ProductIndex := TLabel(Sender).Tag
  else
    Exit;

  // Obt�m o URL do produto correspondente a partir do array
  Product := ProductsArray.Items[ProductIndex] as TJSONObject;
  URL := Product.GetValue<string>('url');

  // Abre o URL usando OpenURL
  OpenURL(URL);
end;

procedure TSupplements.SearchButtonClick(Sender: TObject);
begin
GetProducts;
end;

procedure TSupplements.SubcategoriesComboboxSelect(Sender: TObject);
var
 id_subcategory: integer;
begin
  TypesLabel.Visible := True;
  TypesCombobox.Visible := True;

//  id_subcategory := GetSubcategoryID(SubcategoriesCombobox);
//  SelectTypes(TypesCombobox, id_subcategory);

end;

procedure TSupplements.CategoriesComboboxSelect(Sender: TObject);
var
id_category: integer;
begin

  SubcategoriesLabel.Visible := True;
  SubcategoriesCombobox.Visible := True;

  id_category := GetCategoryID(CategoriesCombobox);
  SelectSubCategories(SubcategoriesCombobox, id_category);
end;

procedure TSupplements.CreateCardsProduct;
var
  PanelWidth, PanelHeight, Padding, Columns, col, row, i: Integer;
  InputImagePath, OutputImagePath, Title, Price, Image_Src, URL: string;
  Product: TJSONObject;
  Panel: TPanel;
  Image: TImage;
  TitleLabel, PriceLabel: TLabel;
  ListSrc: TStringList;
begin
  ListSrc := TStringList.Create;
  ListSrc.Clear;

  InputImagePath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'Scripts Py\input_image_path';
  OutputImagePath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'Scripts Py\output_image_path';

  PanelWidth := 245;
  PanelHeight := 350;
  Padding := 25;
  Columns := 5;


  while CardsBox.ControlCount > 0 do
    CardsBox.Controls[0].Free;

  try
    for i := 0 to ProductsArray.Count - 1 do
    begin
      Product := ProductsArray.Items[i] as TJSONObject;
      Title := Product.GetValue<string>('title');
      Price := Product.GetValue<string>('price');
      Image_Src := Product.GetValue<string>('image_src');
      URL := Product.GetValue<string>('url');

      ListSrc.Add(Image_Src);

      col := i mod Columns;
      row := i div Columns;

      Panel := TPanel.Create(CardsBox);
      Panel.Parent := CardsBox;
      Panel.Width := PanelWidth;
      Panel.Height := PanelHeight;
      Panel.Left := col * (PanelWidth + Padding);
      Panel.Top := row * (PanelHeight + Padding);
      Panel.BevelOuter := bvNone;
      Panel.Color := clBlack;

      Panel.Tag := i;

      Panel.OnClick := PanelClick;

      if i = 6 then
      begin
        HideScrollbars(CardsBox);
      end;

      TitleLabel := TLabel.Create(Panel);
      TitleLabel.AlignWithMargins := True;
      TitleLabel.Margins.Top := 3;
      TitleLabel.Margins.Bottom := 3;
      TitleLabel.Margins.Left := 3;
      TitleLabel.Margins.Right := 3;
      TitleLabel.Parent := Panel;
      TitleLabel.Caption := Title;
      TitleLabel.Font.Style := [fsBold];
      TitleLabel.Font.Color := clWhite;
      TitleLabel.Font.Size := 11;
      TitleLabel.WordWrap := True;
      TitleLabel.Alignment := taCenter;
      TitleLabel.Align := alClient;

      TitleLabel.Tag := i;

      TitleLabel.OnClick := PanelClick;

      PriceLabel := TLabel.Create(Panel);
      PriceLabel.AlignWithMargins := True;
      PriceLabel.Margins.Top := 3;
      PriceLabel.Margins.Bottom := 12;
      PriceLabel.Margins.Left := 3;
      PriceLabel.Margins.Right := 3;
      PriceLabel.Parent := Panel;
      PriceLabel.Caption := Price;
      PriceLabel.Font.Size := 18;
      PriceLabel.Font.Style := [fsBold];
      PriceLabel.Font.Color := clLime;
      PriceLabel.Alignment := taCenter;
      PriceLabel.Align := alBottom;

      PriceLabel.Tag := i;

      PriceLabel.OnClick := PanelClick;


    end;
    for i := 0 to CardsBox.ControlCount - 1 do
        begin
          Panel := CardsBox.Controls[i] as TPanel;

          Image := TImage.Create(Panel);
          Image.AlignWithMargins := True;
          Image.Height := 250;
          Image.Width := 250;
          Image.Margins.Top := 3;
          Image.Margins.Bottom := 3;
          Image.Margins.Left := 3;
          Image.Margins.Right := 3;
          Image.Parent := Panel;
          Image.Align := alTop;
          Image.Center := True;
          Image.Proportional := True;

          LoadImage(ListSrc[i], Image);
          Image.Tag := i;
          Image.OnClick := PanelClick;
        end;
  finally
  ListSrc.Free;
  end;
end;

procedure TSupplements.OpenURL(URL: string);
begin
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;

procedure TSupplements.GetProducts;
var
  brand, category, subcategory: string;
begin
  brand := StringReplace(LowerCase(BrandsCombobox.Text), ' ', '', [rfReplaceAll]);
  category := StringReplace(LowerCase(CategoriesCombobox.Text), ' ', '', [rfReplaceAll]);
  subcategory := StringReplace(LowerCase(SubcategoriesCombobox.Text), ' ', '', [rfReplaceAll]);

  ProductsArray := APISupp(brand, category, subcategory);
  CreateCardsProduct;
end;

end.
