unit Frame_Supplements;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  AdvCombo, AdvDBComboBox, AdvDBLookupComboBox, Vcl.DBCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
