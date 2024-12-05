unit Form_ConfigCompanies;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Generics.Collections;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Company: TPanel;
    Panel3: TPanel;
    UrlBase: TLabeledEdit;
    Panel4: TPanel;
    CompanyName: TLabeledEdit;
    ScrappConfig: TPanel;
    CategoriesPanel: TPanel;
    Panel13: TPanel;
    PreWorkParam: TLabeledEdit;
    Panel14: TPanel;
    AminoacidParam: TLabeledEdit;
    Scrap: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
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
    UrlClass: TLabeledEdit;
    AddConfig: TButton;
    TestScrap: TButton;
    Q_InsertConfig: TFDQuery;
    Q_InsertCompany: TFDQuery;
    Q_InsertCategoryParams: TFDQuery;
    SubCategoriesPanel: TPanel;
    Panel11: TPanel;
    WheyParam: TLabeledEdit;
    Panel37: TPanel;
    Panel38: TPanel;
    TresDablioParam: TLabeledEdit;
    Panel39: TPanel;
    IsoTitleParam: TLabeledEdit;
    Panel41: TPanel;
    ConcentratedTitleParam: TLabeledEdit;
    Q_InsertSubCategoryParams: TFDQuery;
    CreatineTitleParam: TLabeledEdit;
    procedure AddConfigClick(Sender: TObject);
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
  DM_Connection;

procedure TForm1.AddConfigClick(Sender: TObject);
var
  Categories: array of Integer;
  SubCategories: array of Integer;
  i,a,j,b,c,d: Integer;
  SubPanel: TPanel;
  LabeledEdit: TLabeledEdit;
begin
   Categories := [27,28,29];
   SubCategories := [58,60,61,62];
  try

  Q_InsertCompany.Close;
  Q_InsertCompany.ParamByName('company').AsString := CompanyName.Text;
  Q_InsertCompany.ExecSQL;


    for a := 0 to CategoriesPanel.ControlCount - 1 do
    begin
    if CategoriesPanel.Controls[a] is TPanel then
      begin
        SubPanel := TPanel(CategoriesPanel.Controls[a]);
        for I in Categories do
        begin
          for j := 0 to SubPanel.ControlCount - 1 do
          begin
            if SubPanel.Controls[j] is TLabeledEdit then
            begin
              LabeledEdit := TLabeledEdit(SubPanel.Controls[j]);

              Q_InsertCategoryParams.Close;
              Q_InsertCategoryParams.ParamByName('company').AsString := CompanyName.Text;
              Q_InsertCategoryParams.ParamByName('id_category').AsInteger := I;
              Q_InsertCategoryParams.ParamByName('companyparam').AsString := LabeledEdit.Text;
              Q_InsertCategoryParams.ExecSQL;
            end;
          end;
        end;
      end;

    for b := 0 to SubCategoriesPanel.ControlCount - 1 do
      begin
      if SubCategoriesPanel.Controls[b] is TPanel then
        begin
          SubPanel := TPanel(SubCategoriesPanel.Controls[b]);
          for c in SubCategories do
          begin
            for d := 0 to SubPanel.ControlCount - 1 do
            begin
              if SubPanel.Controls[d] is TLabeledEdit then
              begin
                LabeledEdit := TLabeledEdit(SubPanel.Controls[d]);

                Q_InsertSubCategoryParams.Close;
                Q_InsertSubCategoryParams.ParamByName('company').AsString := CompanyName.Text;
                Q_InsertSubCategoryParams.ParamByName('id_category').AsInteger := I;
                Q_InsertSubCategoryParams.ParamByName('id_category').AsInteger := I;
                Q_InsertSubCategoryParams.ParamByName('companyparam').AsString := LabeledEdit.Text;
                Q_InsertSubCategoryParams.ExecSQL;
              end;
            end;
          end;
        end;
      end;
    end;
  finally

  end;
end;

end.
