unit Frame_Supplements;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  AdvCombo, AdvDBComboBox, AdvDBLookupComboBox, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList,System.JSON, REST.Client, REST.Types, Global_Functions,
  PythonEngine;

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
    SubcategoryCombobox: TDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MinPriceEdit: TEdit;
    MaxPriceEdit: TEdit;
    CardsPanel: TPanel;
    CardsBox: TScrollBox;
    Panel4: TPanel;
    Button1: TButton;
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
  brand := BrandsCombobox.Text;
  category := CategoryCombobox.Text;
  subcategory := SubcategoryCombobox.Text;
  try
    ProductsArray := APISupp('maxtitanium', 'acessories', '');
    CreateCardProduct(CardsBox, ProductsArray);
  finally

  end;
end;

end.
