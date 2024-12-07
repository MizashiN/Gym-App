unit Form_ConfigCompanies;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Generics.Collections, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Company: TPanel;
    Panel4: TPanel;
    CompanyName: TLabeledEdit;
    ScrappConfig: TPanel;
    CategoriesPanel: TPanel;
    Panel14: TPanel;
    Title: TPanel;
    Panel15: TPanel;
    TitleTag: TLabeledEdit;
    Panel16: TPanel;
    TitleClass: TLabeledEdit;
    Parent: TPanel;
    Panel21: TPanel;
    AltParentTag2: TLabeledEdit;
    Panel22: TPanel;
    AltParentClass: TLabeledEdit;
    Panel23: TPanel;
    AltParentClass2: TLabeledEdit;
    Panel24: TPanel;
    AltParentTag: TLabeledEdit;
    Panel25: TPanel;
    ParentClass: TLabeledEdit;
    Panel26: TPanel;
    ParentTag: TLabeledEdit;
    Price: TPanel;
    Panel18: TPanel;
    AltPriceClass: TLabeledEdit;
    Panel27: TPanel;
    AltPriceTag: TLabeledEdit;
    Panel28: TPanel;
    PriceClass: TLabeledEdit;
    Panel29: TPanel;
    PriceTag: TLabeledEdit;
    PriceSeparately: TPanel;
    Panel5: TPanel;
    AltPriceParentClass: TLabeledEdit;
    Panel6: TPanel;
    PriceFraction: TLabeledEdit;
    Panel8: TPanel;
    PriceDecimal: TLabeledEdit;
    Panel9: TPanel;
    PriceParentTag: TLabeledEdit;
    Panel2: TPanel;
    PriceInteger: TLabeledEdit;
    Panel10: TPanel;
    PriceCode: TLabeledEdit;
    Panel17: TPanel;
    PriceParentClass: TLabeledEdit;
    Panel19: TPanel;
    AltPriceParentTag: TLabeledEdit;
    Img: TPanel;
    Panel30: TPanel;
    AltImgClass2: TLabeledEdit;
    Panel31: TPanel;
    AltImgTag2: TLabeledEdit;
    Panel32: TPanel;
    AltImgClass: TLabeledEdit;
    Panel33: TPanel;
    ImgTag: TLabeledEdit;
    Panel34: TPanel;
    AltImgTag: TLabeledEdit;
    Panel35: TPanel;
    ImgAttribute: TLabeledEdit;
    Panel36: TPanel;
    ImgClass: TLabeledEdit;
    Url: TPanel;
    Panel40: TPanel;
    UrlTag: TLabeledEdit;
    Panel42: TPanel;
    UrlAttribute: TLabeledEdit;
    Panel43: TPanel;
    PageControl: TPageControl;
    UrlParamsInformations: TTabSheet;
    TabSheet2: TTabSheet;
    Panel12: TPanel;
    UrlClass: TLabeledEdit;
    Panel7: TPanel;
    Q_CategParams: TFDQuery;
    Q_SubCategParams: TFDQuery;
    Panel11: TPanel;
    Panel13: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    D_CategParams: TDataSource;
    D_SubCategParams: TDataSource;
    Q_CategParamscompany: TStringField;
    Q_CategParamscategory: TStringField;
    Q_CategParamscompanyparam: TStringField;
    Q_SubCategParamscompany: TStringField;
    Q_SubCategParamscategory: TStringField;
    Q_SubCategParamssubcategory: TStringField;
    Q_SubCategParamscompanyparam: TStringField;
    Panel20: TPanel;
    Panel37: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SubCategCombobox: TComboBox;
    CategCombobox: TComboBox;
    Panel38: TPanel;
    ParamEdit: TLabeledEdit;
    Button1: TButton;
    Q_InsertCategoryParam: TFDQuery;
    Q_InsertSubCategoryParam: TFDQuery;
    BrandRegistration: TTabSheet;
    Panel39: TPanel;
    Panel41: TPanel;
    DBGrid3: TDBGrid;
    Button2: TButton;
    Q_Companies: TFDQuery;
    D_Companies: TDataSource;
    Q_InsertCompany: TFDQuery;
    Panel44: TPanel;
    UrlBase: TLabeledEdit;
    Q_Companiescompany: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CategComboboxSelect(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  DM_Connection, Global_Functions;

procedure TForm1.Button1Click(Sender: TObject);
var
  company, param, category, subcategory: string;
begin
  company := CompanyName.Text;
  param := ParamEdit.Text;
  category := CategCombobox.Text;
  subcategory := SubCategCombobox.Text;

  if subcategory = '' then
  begin
    Q_InsertCategoryParam.Close;
    Q_InsertCategoryParam.ParamByName('company').AsString := company;
    Q_InsertCategoryParam.ParamByName('category').AsString := category;
    Q_InsertCategoryParam.ParamByName('companyparam').AsString := param;
    Q_InsertCategoryParam.ExecSQL;
    ShowMessage('Succest CategoryParam Insert');
    Q_CategParams.Refresh;
  end
  else
  begin
    Q_InsertSubCategoryParam.Close;
    Q_InsertSubCategoryParam.ParamByName('company').AsString := company;
    Q_InsertSubCategoryParam.ParamByName('category').AsString := category;
    Q_InsertSubCategoryParam.ParamByName('subcategory').AsString := subcategory;
    Q_InsertSubCategoryParam.ParamByName('companyparam').AsString := param;
    Q_InsertSubCategoryParam.ExecSQL;
    ShowMessage('Succest SubCategoryParam Insert');
    Q_SubCategParams.Refresh;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  company: string;
begin
  company := CompanyName.Text;

  Q_InsertCompany.Close;
  Q_InsertCompany.ParamByName('company').AsString := company;
  Q_InsertCompany.ExecSQL;

  PageControl.ActivePage := UrlParamsInformations;
end;

procedure TForm1.CategComboboxSelect(Sender: TObject);
var
  id_category: integer;
begin
  id_category := GetCategoryID(CategCombobox);
  SelectSubCategories(SubCategCombobox, id_category);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  SelectCategories(CategCombobox);

  Q_Companies.Close;
  Q_Companies.Open;

end;

procedure TForm1.PageControlChange(Sender: TObject);
var
 company: string;
begin
 company := CompanyName.Text;

 if PageControl.TabIndex = 0 then
 begin
   Q_Companies.Close;
   Q_Companies.Open;
 end
 else if PageControl.TabIndex = 1 then
 begin
   Q_CategParams.Close;
   Q_CategParams.ParamByName('company').AsString := company;
   Q_CategParams.Open;

   Q_SubCategParams.Close;
   Q_SubCategParams.ParamByName('company').AsString := company;
   Q_SubCategParams.Open;
 end
 else if PageControl.TabIndex = 2 then
 begin
   //
 end;
end;

end.
