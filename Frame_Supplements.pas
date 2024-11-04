unit Frame_Supplements;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList,System.JSON, REST.Client, REST.Types, Global_Functions;

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
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MinPriceEdit: TEdit;
    MaxPriceEdit: TEdit;
    CardsPanel: TPanel;
    CardsBox: TScrollBox;
    Panel4: TPanel;
    Button1: TButton;
    BrandsCombobox: TComboBox;
    CategoriesCombobox: TComboBox;
    SubcategoriesCombobox: TComboBox;
    Panel5: TPanel;
    Label7: TLabel;
    TypesCombobox: TComboBox;
    procedure GetProducts;
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
GetProducts;
end;

procedure TSupplements.GetProducts;
var
  ProductsArray: TJSONArray;
  brand, category, subcategory: string;
begin
  brand := StringReplace(LowerCase(BrandsCombobox.Text), ' ', '', [rfReplaceAll]);
  category := StringReplace(LowerCase(CategoriesCombobox.Text), ' ', '', [rfReplaceAll]);
  subcategory := StringReplace(LowerCase(SubcategoriesCombobox.Text), ' ', '', [rfReplaceAll]);
  try
    ProductsArray := APISupp(brand, category, subcategory);
    CreateCardProduct(CardsBox, ProductsArray);
  finally

  end;
end;

end.
