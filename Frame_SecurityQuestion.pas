unit Frame_SecurityQuestion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DM_Connection;

type
  TSecurityQuestion = class(TFrame)
    Q_Questions: TFDQuery;
    D_Questions: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FrameEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TSecurityQuestion.FrameEnter(Sender: TObject);
begin
Q_Questions.Close;
Q_Questions.Open;
end;

end.
