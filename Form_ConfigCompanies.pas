unit Form_ConfigCompanies;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Generics.Collections, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Winapi.ShellAPI;

type
  TConfigCompanies = class(TForm)
    Panel1: TPanel;
    Company: TPanel;
    Panel4: TPanel;
    ScrappConfig: TPanel;
    CategoriesPanel: TPanel;
    Panel14: TPanel;
    Title: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Parent: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Price: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    PriceSeparately: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel2: TPanel;
    Panel10: TPanel;
    Panel17: TPanel;
    Panel19: TPanel;
    Img: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Url: TPanel;
    Panel40: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    PageControl: TPageControl;
    UrlParamsInformations: TTabSheet;
    TabSheet2: TTabSheet;
    Panel12: TPanel;
    Panel7: TPanel;
    Q_CategParams: TFDQuery;
    Q_SubCategParams: TFDQuery;
    Panel11: TPanel;
    SubCategPanel: TPanel;
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
    CompaniesGrid: TDBGrid;
    Q_Companies: TFDQuery;
    D_Companies: TDataSource;
    Panel44: TPanel;
    Q_Companiescompany: TStringField;
    Panel3: TPanel;
    Panel45: TPanel;
    Button3: TButton;
    Button2: TButton;
    CompaniesCombobox: TComboBox;
    Label3: TLabel;
    Q_Categories: TFDQuery;
    Q_Subcategories: TFDQuery;
    Q_Categoriescategory: TStringField;
    Q_Subcategoriessubcategory: TStringField;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;
    Panel49: TPanel;
    Label4: TLabel;
    CompanyConfigCombobox: TComboBox;
    parent_tag: TDBLabeledEdit;
    Q_ConfigCompanies: TFDQuery;
    D_ConfigCompanies: TDataSource;
    Button5: TButton;
    parent_class: TDBLabeledEdit;
    alt_parent_tag: TDBLabeledEdit;
    alt_parent_class: TDBLabeledEdit;
    alt_parent_tag_2: TDBLabeledEdit;
    alt_parent_class_2: TDBLabeledEdit;
    title_class: TDBLabeledEdit;
    title_tag: TDBLabeledEdit;
    price_tag: TDBLabeledEdit;
    price_class: TDBLabeledEdit;
    img_tag: TDBLabeledEdit;
    img_class: TDBLabeledEdit;
    img_attribute: TDBLabeledEdit;
    alt_img_tag: TDBLabeledEdit;
    alt_img_class: TDBLabeledEdit;
    alt_img_tag_2: TDBLabeledEdit;
    alt_img_class_2: TDBLabeledEdit;
    url_tag: TDBLabeledEdit;
    url_class: TDBLabeledEdit;
    url_attribute: TDBLabeledEdit;
    url_base: TDBLabeledEdit;
    price_parent_tag: TDBLabeledEdit;
    price_parent_class: TDBLabeledEdit;
    alt_price_parent_tag: TDBLabeledEdit;
    alt_price_parent_class: TDBLabeledEdit;
    Panel50: TPanel;
    price_fraction: TDBLabeledEdit;
    Panel51: TPanel;
    price_decimal: TDBLabeledEdit;
    Panel52: TPanel;
    price_integer: TDBLabeledEdit;
    Panel53: TPanel;
    price_code: TDBLabeledEdit;
    Panel5: TPanel;
    Panel18: TPanel;
    unv_product_tag: TDBLabeledEdit;
    Panel30: TPanel;
    unv_product_class: TDBLabeledEdit;
    Panel32: TPanel;
    Button6: TButton;
    Q_ConfigCompaniesid_config: TFDAutoIncField;
    Q_ConfigCompaniesid_company: TIntegerField;
    Q_ConfigCompaniesparent_tag: TStringField;
    Q_ConfigCompaniestitle_tag: TStringField;
    Q_ConfigCompaniesimg_tag: TStringField;
    Q_ConfigCompaniesprice_tag: TStringField;
    Q_ConfigCompaniesurl_tag: TStringField;
    Q_ConfigCompaniesurl_attribute: TStringField;
    Q_ConfigCompaniesurl_base: TStringField;
    Q_ConfigCompaniesurl_class: TStringField;
    Q_ConfigCompaniesprice_parent_tag: TStringField;
    Q_ConfigCompaniesprice_parent_class: TStringField;
    Q_ConfigCompaniesprice_code: TStringField;
    Q_ConfigCompaniesprice_integer: TStringField;
    Q_ConfigCompaniesprice_decimal: TStringField;
    Q_ConfigCompaniesprice_fraction: TStringField;
    Q_ConfigCompaniesimg_attribute: TStringField;
    Q_ConfigCompaniesparent_class: TStringField;
    Q_ConfigCompaniestitle_class: TStringField;
    Q_ConfigCompaniesprice_class: TStringField;
    Q_ConfigCompaniesimg_class: TStringField;
    Q_ConfigCompaniesalt_price_parent_tag: TStringField;
    Q_ConfigCompaniesalt_price_parent_class: TStringField;
    Q_ConfigCompaniesalt_img_tag: TStringField;
    Q_ConfigCompaniesalt_img_class: TStringField;
    Q_ConfigCompaniesalt_parent_class_2: TStringField;
    Q_ConfigCompaniesalt_img_tag_2: TStringField;
    Q_ConfigCompaniesalt_img_class_2: TStringField;
    Q_ConfigCompaniesalt_parent_tag_2: TStringField;
    Q_ConfigCompaniesalt_parent_tag: TStringField;
    Q_ConfigCompaniesalt_parent_class: TStringField;
    Q_ConfigCompaniesunv_product_tag: TStringField;
    Q_ConfigCompaniesunv_product_class: TStringField;
    Button4: TButton;
    page_param: TDBLabeledEdit;
    Q_ConfigCompaniespage_param: TStringField;
    Panel27: TPanel;
    TitleSubCategParam: TCheckBox;
    Q_InsertSubCategoryTitleParam: TFDQuery;
    SubCategTitlePanel: TPanel;
    DBGrid3: TDBGrid;
    Panel54: TPanel;
    Q_SubCategTitleParams: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    D_SubCategTitleParams: TDataSource;
    Panel13: TPanel;
    perc_pix: TDBLabeledEdit;
    Q_ConfigCompaniesperc_pix: TIntegerField;
    Panel31: TPanel;
    grid_tag: TDBLabeledEdit;
    Panel55: TPanel;
    grid_class: TDBLabeledEdit;
    Q_ConfigCompaniesgrid_tag: TStringField;
    Q_ConfigCompaniesgrid_class: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CategComboboxSelect(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CompaniesComboboxSelect(Sender: TObject);
    procedure CompanyConfigComboboxSelect(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure TitleSubCategParamClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ConfigCompanies: TConfigCompanies;

implementation

{$R *.dfm}

uses
  DM_Connection, Global_Functions;

procedure TConfigCompanies.Button1Click(Sender: TObject);
var
  id_company, id_category, id_subcategory: integer;
begin
  id_category := GetCategoryID(CategCombobox.Text);
  id_subcategory := GetSubcategoryID(SubCategCombobox.Text);
  id_company := GetCompanyID(CompaniesCombobox.Text);
  try
    if not DM_Con.Connection.InTransaction then
        DM_Con.Connection.StartTransaction;

    if SubCategCombobox.Text = '' then
    begin
      Q_InsertCategoryParam.Close;
      Q_InsertCategoryParam.ParamByName('id_company').AsInteger := id_company;
      Q_InsertCategoryParam.ParamByName('id_category').AsInteger := id_category;
      Q_InsertCategoryParam.ParamByName('companyparam').AsString := ParamEdit.Text;
      Q_InsertCategoryParam.ExecSQL;
      DM_Con.Connection.Commit;
      ShowMessage('Succest CategoryParam Insert');
      Q_CategParams.Refresh;
    end
    else
    begin
      if TitleSubCategParam.Checked then
      begin
        Q_InsertSubCategoryTitleParam.Close;
        Q_InsertSubCategoryTitleParam.ParamByName('id_company').AsInteger := id_company;
        Q_InsertSubCategoryTitleParam.ParamByName('id_category').AsInteger := id_category;
        Q_InsertSubCategoryTitleParam.ParamByName('id_subcategory').AsInteger := id_subcategory;
        Q_InsertSubCategoryTitleParam.ParamByName('companyparam').AsString := ParamEdit.Text;
        Q_InsertSubCategoryTitleParam.ExecSQL;
        DM_Con.Connection.Commit;
        ShowMessage('Succest SubCategoryTitleParam Insert');
        Q_SubCategTitleParams.Refresh;
      end
      else
      begin
        Q_InsertSubCategoryParam.Close;
        Q_InsertSubCategoryParam.ParamByName('id_company').AsInteger := id_company;
        Q_InsertSubCategoryParam.ParamByName('id_category').AsInteger := id_category;
        Q_InsertSubCategoryParam.ParamByName('id_subcategory').AsInteger := id_subcategory;
        Q_InsertSubCategoryParam.ParamByName('companyparam').AsString := ParamEdit.Text;
        Q_InsertSubCategoryParam.ExecSQL;
        DM_Con.Connection.Commit;
        ShowMessage('Succest SubCategoryParam Insert');
        Q_SubCategParams.Refresh;
      end;
    end;
  except
    on E: Exception do
    begin
      DM_Con.Connection.Rollback;
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
end;

procedure TConfigCompanies.Button2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir o registro selecionado?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    D_Companies.DataSet.Delete;
  end;
end;

procedure TConfigCompanies.Button3Click(Sender: TObject);
begin
  D_Companies.DataSet.Insert;
  CompaniesGrid.SetFocus;
end;

procedure TConfigCompanies.Button4Click(Sender: TObject);
var
  id_company: integer;
begin
  id_company := GetCompanyID(CompanyConfigCombobox.Text);
  if MessageDlg('Deseja realmente excluir a config selecionada?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    DeleteConfig(id_company);
  end;
end;

procedure TConfigCompanies.Button5Click(Sender: TObject);
var
  id_company: integer;
begin
  id_company := GetCompanyID(CompanyConfigCombobox.Text);

  if not VerifyIfConfigCompanyExists(id_company) then
  begin
    InsertScrapp(
    id_company,
    parent_tag.text, parent_class.text, title_tag.text, title_class.text,
    price_tag.text, price_class.text, img_tag.text, img_class.text,
    img_attribute.text, url_tag.text, url_class.text, url_attribute.text,
    url_base.text, alt_parent_tag.text, alt_parent_class.text,
    alt_parent_tag_2.text, alt_parent_class_2.text, alt_img_tag.text,
    alt_img_class.text, alt_img_tag_2.text, alt_img_class_2.text,
    price_parent_tag.text, price_parent_class.text,
    alt_price_parent_tag.text, alt_price_parent_class.text,
    price_code.text, price_integer.text, price_decimal.text,
    price_fraction.text, unv_product_tag.text, unv_product_class.text, page_param.text
  );
  end
  else
  begin
    ShowMessage('J� existe config para essa marca');
  end;

end;

procedure TConfigCompanies.Button6Click(Sender: TObject);
begin
 SaveQuery(Q_ConfigCompanies);
end;

procedure TConfigCompanies.CategComboboxSelect(Sender: TObject);
var
  id_category: integer;
begin
  id_category := GetCategoryID(CategCombobox.Text);
  FetchCombobox(Q_SubCategories, SubCategCombobox, id_category);
end;

procedure TConfigCompanies.CompanyConfigComboboxSelect(Sender: TObject);
var
  id_company: integer;
begin
  id_company := GetCompanyID(CompanyConfigCombobox.Text);

  Q_ConfigCompanies.Close;
  Q_ConfigCompanies.ParamByName('id_company').AsInteger := id_company;
  Q_ConfigCompanies.Open;
end;

procedure TConfigCompanies.CompaniesComboboxSelect(Sender: TObject);
var
  id_company: integer;
begin
   id_company := GetCompanyID(CompaniesCombobox.Text);

   Q_CategParams.Close;
   Q_CategParams.ParamByName('id_company').AsInteger := id_company;
   Q_CategParams.Open;

   Q_SubCategParams.Close;
   Q_SubCategParams.ParamByName('id_company').AsInteger := id_company;
   Q_SubCategParams.Open;

   Q_SubCategTitleParams.Close;
   Q_SubCategTitleParams.ParamByName('id_company').AsInteger := id_company;
   Q_SubCategTitleParams.Open;
end;

procedure TConfigCompanies.FormCreate(Sender: TObject);
begin
  Q_Companies.Close;
  Q_Companies.Open;
end;

procedure TConfigCompanies.PageControlChange(Sender: TObject);
begin

 if PageControl.TabIndex = 1 then
 begin
   FetchCombobox(Q_Companies, CompaniesCombobox);
   FetchCombobox(Q_Categories, CategCombobox);
 end
 else if PageControl.TabIndex = 2 then
 begin
   FetchCombobox(Q_Companies, CompanyConfigCombobox);
 end;
end;

procedure TConfigCompanies.TitleSubCategParamClick(Sender: TObject);
begin
  if TitleSubCategParam.Checked then
  begin
    SubCategPanel.Visible := False;
  end
  else
  begin
    SubCategPanel.Visible := True;
  end;
end;
end.
