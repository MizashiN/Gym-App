unit Frame_Home;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  THome = class(TFrame)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Shape1: TShape;
    Panel7: TPanel;
    Shape3: TShape;
    Panel8: TPanel;
    Panel9: TPanel;
    Shape4: TShape;
    Panel10: TPanel;
    AuthorLabel: TLabel;
    QuoteLabel: TLabel;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
