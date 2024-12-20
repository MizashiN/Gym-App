unit Form_Supplements;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, ShellAPI,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList,System.JSON, REST.Client, REST.Types, System.Generics.Collections,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TSupplements = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Panel3: TPanel;
    SubcategoriesPanel: TPanel;
    BrandPanel: TPanel;
    CategoryPanel: TPanel;
    Label1: TLabel;
    CategoriesLabel: TLabel;
    SubcategoriesLabel: TLabel;
    CardsPanel: TPanel;
    CardsBox: TScrollBox;
    Panel4: TPanel;
    CategoriesCombobox: TComboBox;
    SubcategoriesCombobox: TComboBox;
    CompaniesCombobox: TComboBox;
    Q_Products: TFDQuery;
    Button1: TButton;
    Q_Companies: TFDQuery;
    Q_Companiescompany: TStringField;
    Q_Subcategories: TFDQuery;
    Q_Subcategoriessubcategory: TStringField;
    Q_Categories: TFDQuery;
    Q_Categoriescategory: TStringField;
    Q_Productstitle_product: TStringField;
    Q_Productsprice_product: TBCDField;
    Q_Productsimage_src: TStringField;
    Q_Productsurl_product: TStringField;
    procedure OpenURL(URL: string);
    procedure PanelClick(Sender: TObject);
    procedure CreateCardsProduct;
    procedure CategoriesComboboxSelect(Sender: TObject);
    procedure CompaniesComboboxSelect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Supp: TSupplements;

implementation

{$R *.dfm}

uses
  DM_Connection, Global_Functions, Form_ConfigCompanies;

procedure TSupplements.CompaniesComboboxSelect(Sender: TObject);
begin
  FetchCombobox(Q_Categories, CategoriesCombobox);
end;
procedure TSupplements.PanelClick(Sender: TObject);
var
  URL: string;
  ProductIndex: Integer;
begin
  if Sender is TPanel then
    ProductIndex := TPanel(Sender).Tag
  else if Sender is TImage then
    ProductIndex := TImage(Sender).Tag
  else if Sender is TLabel then
    ProductIndex := TLabel(Sender).Tag
  else
    Exit;

  Q_Products.DisableControls;
  try
    Q_Products.First;
    Q_Products.MoveBy(ProductIndex);

    URL := Q_Products.FieldByName('url_product').AsString;
  finally
    Q_Products.EnableControls;
  end;

  OpenURL(URL);
end;


procedure TSupplements.Button1Click(Sender: TObject);
begin
CreateCardsProduct;
end;

procedure TSupplements.CategoriesComboboxSelect(Sender: TObject);
var
  id_category: integer;
begin

  SubcategoriesLabel.Visible := True;
  SubcategoriesCombobox.Visible := True;

  id_category := GetCategoryID(CategoriesCombobox.Text);
  FetchCombobox(Q_SubCategories, SubcategoriesCombobox, id_category);
end;

procedure TSupplements.CreateCardsProduct;
var
  PanelWidth, PanelHeight, Padding, Columns, col, row, I, id_category, id_subcategory, id_company: Integer;
  Title, Image_Src, categ_value, subcateg_value, company_value: string;
  Price: Double;
  Panel: TPanel;
  Image: TImage;
  TitleLabel, PriceLabel: TLabel;
begin
  PanelWidth := 250;
  PanelHeight := 370;
  Padding := 15;
  Columns := 7;

  while CardsBox.ControlCount > 0 do
    CardsBox.Controls[0].Free;

  categ_value := CategoriesCombobox.Text;
  subcateg_value := SubcategoriesCombobox.Text;
  company_value := CompaniesCombobox.Text;

  id_category := 0;
  id_subcategory := 0;
  id_company := 0;

  if categ_value <> '' then
  begin
     id_category := GetCategoryID(categ_value);
  end;

  if subcateg_value <> '' then
  begin
     id_subcategory := GetSubcategoryID(subcateg_value);
  end;

  if company_value <> '' then
  begin
     id_company := GetCompanyID(company_value);
  end;

  Q_Products.Close;
  Q_Products.ParamByName('id_company').AsInteger := id_company;
  Q_Products.ParamByName('id_category').AsInteger := id_category;
  Q_Products.ParamByName('id_subcategory').AsInteger := id_subcategory;
  Q_Products.Open;

  I := 0;
  while not Q_Products.Eof do
  begin
    if I = 6 then
    begin
      HideScrollbars(CardsBox);
    end;

    Title := Q_Products.FieldByName('title_product').AsString;
    Price := Q_Products.FieldByName('price_product').AsFloat;
    Image_Src := Q_Products.FieldByName('image_src').AsString;

    col := i mod Columns;
    row := i div Columns;

    Panel := TPanel.Create(CardsBox);
    Panel.Parent := CardsBox;
    Panel.Width := PanelWidth;
    Panel.Height := PanelHeight;
    Panel.Left := col * (PanelWidth + Padding);
    Panel.Top := row * (PanelHeight + Padding);
    Panel.BevelOuter := bvRaised;
    Panel.ParentBackground := False;
    Panel.Font.Name := 'Hammersmith One';
    Panel.Color := TColor($3b3b3b);
    Panel.Tag := i;
    Panel.OnClick := PanelClick;

    Image := TImage.Create(Panel);
    Image.Align := alTop;
    Image.Height := 245;
    Image.Width := 250;
    Image.Parent := Panel;

    Image.Center := True;
    Image.Proportional := True;
    Image.Tag := i;
    Image.OnClick := PanelClick;
    LoadImage(Image_Src, Image);

    TitleLabel := TLabel.Create(Panel);
    TitleLabel.AlignWithMargins := True;
    TitleLabel.Margins.Left := 5;
    TitleLabel.Margins.Right := 5;
    TitleLabel.Margins.Top := 12;
    TitleLabel.Margins.Bottom := 0;
    TitleLabel.Parent := Panel;
    TitleLabel.Caption := Title;
    TitleLabel.Font.Color := clWhite;
    TitleLabel.Font.Size := 12;
    TitleLabel.WordWrap := True;
    TitleLabel.Alignment := taCenter;
    TitleLabel.Align := alClient;
    TitleLabel.Tag := i;
    TitleLabel.OnClick := PanelClick;

    PriceLabel := TLabel.Create(Panel);
    PriceLabel.AlignWithMargins := True;
    PriceLabel.Margins.Bottom := 12;
    PriceLabel.Parent := Panel;
    PriceLabel.Font.Name := 'Hammersmith One';
    PriceLabel.StyleElements := [];
    PriceLabel.Caption := 'R$ ' + FloatToStr(Price);
    PriceLabel.Font.Size :=18;
    PriceLabel.Font.Color := TColor($002FF92F);
    PriceLabel.Alignment := taCenter;
    PriceLabel.Align := alBottom;
    PriceLabel.Tag := i;
    PriceLabel.OnClick := PanelClick;

    Q_Products.Next;
    Inc(I);
  end;
end;

procedure TSupplements.FormCreate(Sender: TObject);
begin
  FetchCombobox(Q_Companies, CompaniesCombobox);
end;

procedure TSupplements.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F1 then
  begin
    ConfigCompanies := TConfigCompanies.Create(nil);
    try
      ConfigCompanies.ShowModal;
    finally
      ConfigCompanies.Free;
    end;
  end;
end;

procedure TSupplements.OpenURL(URL: string);
begin
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;

end.
