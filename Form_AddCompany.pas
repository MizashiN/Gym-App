unit Form_AddCompany;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.WinXCtrls, Global_Functions, PythonEngine, Vcl.PythonGUIInputOutput;

type
  TSetupCompany = class(TForm)
    PageControl1: TPageControl;
    Tab1: TTabSheet;
    Tab2: TTabSheet;
    Tab3: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CompanyDescEdit: TEdit;
    PriceFragmentedCheckBox: TCheckBox;
    AltParent2CheckBox: TCheckBox;
    AltParentCheckBox: TCheckBox;
    AltImg2CheckBox: TCheckBox;
    AltImgCheckBox: TCheckBox;
    AltPriceCheckBox: TCheckBox;
    AltTagCheckBox: TCheckBox;
    Button1: TButton;
    Panel10: TPanel;
    Panel11: TPanel;
    CompanyNameEdit: TEdit;
    Panel12: TPanel;
    CompanyBranchEdit: TEdit;
    Panel13: TPanel;
    CompanyLogoBox: TSearchBox;
    UrlBasePanel: TPanel;
    Panel17: TPanel;
    Label6: TLabel;
    Panel18: TPanel;
    UrlBaseEdit: TEdit;
    Panel15: TPanel;
    DataHtmlPanel: TPanel;
    UrlPanel: TPanel;
    Panel29: TPanel;
    Label10: TLabel;
    Panel30: TPanel;
    ImgAtrEdit: TEdit;
    ImgPanel: TPanel;
    Panel32: TPanel;
    Label11: TLabel;
    Panel33: TPanel;
    ImgClassEdit: TEdit;
    Panel34: TPanel;
    Label12: TLabel;
    Panel35: TPanel;
    ImgTagEdit: TEdit;
    PricePanel: TPanel;
    Panel37: TPanel;
    Label13: TLabel;
    Panel38: TPanel;
    PriceClassEdit: TEdit;
    Panel39: TPanel;
    Label14: TLabel;
    Panel40: TPanel;
    PriceTagEdit: TEdit;
    TitlePanel: TPanel;
    Panel42: TPanel;
    Label15: TLabel;
    Panel43: TPanel;
    TitleClassEdit: TEdit;
    Panel44: TPanel;
    Label16: TLabel;
    Panel45: TPanel;
    TitleTagEdit: TEdit;
    ParentPanel: TPanel;
    Panel47: TPanel;
    Label17: TLabel;
    Panel48: TPanel;
    ParentClassEdit: TEdit;
    Panel49: TPanel;
    Label18: TLabel;
    Panel50: TPanel;
    ParentTagEdit: TEdit;
    Panel51: TPanel;
    Label19: TLabel;
    Panel19: TPanel;
    PriceFragmentedPanel: TPanel;
    Panel21: TPanel;
    AltParent2Panel: TPanel;
    Panel24: TPanel;
    Label7: TLabel;
    Panel25: TPanel;
    AltParent2ClassEdit: TEdit;
    Panel52: TPanel;
    Label8: TLabel;
    Panel53: TPanel;
    AltParent2TagEdit: TEdit;
    AltImg2Panel: TPanel;
    Panel55: TPanel;
    Label20: TLabel;
    Panel56: TPanel;
    AltImg2ClassEdit: TEdit;
    Panel57: TPanel;
    Label21: TLabel;
    Panel58: TPanel;
    AltImg2TagEdit: TEdit;
    AltImgPanel: TPanel;
    Panel60: TPanel;
    Label22: TLabel;
    Panel61: TPanel;
    AltImgClassEdit: TEdit;
    Panel62: TPanel;
    Label23: TLabel;
    Panel63: TPanel;
    AltImgTagEdit: TEdit;
    AltPricePanel: TPanel;
    Panel65: TPanel;
    Label24: TLabel;
    Panel66: TPanel;
    AltPriceClassEdit: TEdit;
    Panel67: TPanel;
    Label25: TLabel;
    Panel68: TPanel;
    AltPriceTagEdit: TEdit;
    AltParentPanel: TPanel;
    Panel70: TPanel;
    Label26: TLabel;
    Panel71: TPanel;
    AltParentClassEdit: TEdit;
    Panel72: TPanel;
    Label27: TLabel;
    Panel73: TPanel;
    AltParentTagEdit: TEdit;
    TitleAltPanel: TPanel;
    Label28: TLabel;
    Panel75: TPanel;
    Shape1: TShape;
    Panel22: TPanel;
    Label5: TLabel;
    Panel76: TPanel;
    PriceFractionEdit: TEdit;
    Panel77: TPanel;
    Label29: TLabel;
    Panel78: TPanel;
    PriceDecimalEdit: TEdit;
    Panel79: TPanel;
    Label30: TLabel;
    Panel80: TPanel;
    PriceIntegerEdit: TEdit;
    Panel81: TPanel;
    Label31: TLabel;
    Panel82: TPanel;
    PriceCodeEdit: TEdit;
    UrlTestPanel: TPanel;
    Panel86: TPanel;
    Label33: TLabel;
    Panel87: TPanel;
    UrlTestEdit: TEdit;
    Button3: TButton;
    Panel14: TPanel;
    Panel20: TPanel;
    DebugMemo: TMemo;
    Label32: TLabel;
    Button2: TButton;
    Panel23: TPanel;
    Button4: TButton;
    Button5: TButton;
    Panel26: TPanel;
    Panel16: TPanel;
    Panel31: TPanel;
    Label34: TLabel;
    Panel36: TPanel;
    UrlClassEdit: TEdit;
    Panel41: TPanel;
    Label35: TLabel;
    Panel46: TPanel;
    UrlTagEdit: TEdit;
    Panel27: TPanel;
    Panel28: TPanel;
    Label9: TLabel;
    Panel54: TPanel;
    UrlAtrEdit: TEdit;
    Panel59: TPanel;
    Panel64: TPanel;
    Label36: TLabel;
    Panel69: TPanel;
    PriceParentClassEdit: TEdit;
    Panel74: TPanel;
    Label37: TLabel;
    Panel83: TPanel;
    PriceParentTagEdit: TEdit;
    Python: TPythonEngine;
    OutputGui: TPythonGUIInputOutput;
    procedure SearchBox1InvokeSearch(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetupCompany: TSetupCompany;

implementation

{$R *.dfm}

procedure TSetupCompany.Button3Click(Sender: TObject);
begin
DeleteConfig;
InsertScrappTest(ParentTagEdit.Text, ParentClassEdit.Text, TitleTagEdit.Text, TitleClassEdit.Text,
  PriceTagEdit.Text, PriceClassEdit.Text, ImgTagEdit.Text, ImgClassEdit.Text, ImgAtrEdit.Text,
  UrlTagEdit.Text, UrlClassEdit.Text, UrlAtrEdit.Text, UrlBaseEdit.Text, AltParentTagEdit.Text,
  AltParentClassEdit.Text, AltParent2TagEdit.Text, AltParent2ClassEdit.Text, AltImgTagEdit.Text,
  AltImgClassEdit.Text, AltImg2TagEdit.Text, AltImg2ClassEdit.Text, PriceParentTagEdit.Text,
  PriceParentClassEdit.Text, AltPriceTagEdit.Text, AltPriceClassEdit.Text, PriceCodeEdit.Text,
  PriceIntegerEdit.Text, PriceDecimalEdit.Text, PriceFractionEdit.Text, UrlTestEdit.Text
  )
end;

procedure TSetupCompany.Button5Click(Sender: TObject);
var
  PythonScript: TStringList;
begin
    try
      PythonScript.LoadFromFile('Scripts Py\testscsrapp.py');
      Python.ExecString(PythonScript.Text);  // Executa o script carregado
    finally
      PythonScript.Free;
    end;

    // Exibe a sa�da do script no DebugMemo
    DebugMemo.Lines.Assign(OutputGui.Output);
end;





procedure TSetupCompany.SearchBox1InvokeSearch(Sender: TObject);
var
OpenDialogLogo: TOpenDialog;
begin
  OpenDialogLogo := TOpenDialog.Create(nil);
  TRY
    OpenDialogLogo.Filter := 'Imagens|*.png;*.jpg;*.jpeg;*.svg';
    if OpenDialogLogo.Execute then
    begin
      CompanyLogoBox.Text := OpenDialogLogo.FileName;
    end;
  FINALLY
  OpenDialogLogo.Free;
  END;

end;

end.
