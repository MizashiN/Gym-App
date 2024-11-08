unit Frame_CreateSecurityQuestion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ButtonStylesAttributes, Vcl.StyledButton, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TCreateSecurityQuestion = class(TFrame)
    Panel1: TPanel;
    Shape1: TShape;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    AnswerWarningLabel: TLabel;
    Label1: TLabel;
    Panel4: TPanel;
    Shape2: TShape;
    SecurityQuestionEdit: TEdit;
    DoneButton: TStyledButton;
    Panel6: TPanel;
    Shape4: TShape;
    ConfirmAnswerEdit: TEdit;
    Panel5: TPanel;
    Shape3: TShape;
    AnswerEdit: TEdit;
    Image1: TImage;
    Label2: TLabel;
    QuestionWarningLabel: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
