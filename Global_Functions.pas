unit Global_Functions;

interface

uses
  System.SysUtils, System.RegularExpressions, System.Hash, Vcl.Dialogs, Vcl.StdCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, DM_Connection;

function CheckIfUserExists(nameUser: TEdit): Boolean;
function CheckIfUserAndPasswordIsCorrect(nameUser, passwordUser: TEdit): Boolean;
function SignUpUser(nameUser, passwordUser, questionUser, questionAnswerUser: TEdit): Boolean;
function Encrypter(const passwordUser: string): string;
function CheckPasswordCharacters(passwordConfirmEdit: TEdit): Boolean;
function CheckUserCharacters(userEdit: TEdit): Boolean;
function CheckAnswerCharacters(answerConfirmEdit: TEdit): Boolean;
function CheckQuestionCharacters(questionEdit: TEdit): Boolean;
function LoadQuestion(nameUser: TEdit): string;
function CheckIfAnswerSecurityQuestionIsCorrect(nameUser, answerSecurityQuestionUser: TEdit): Boolean;
function UpdatePasswordUser(nameUser, newPasswordUser: TEdit): Boolean;
function CheckMatchPasswords(passwordEdit, passwordConfirmEdit: TEdit): Boolean;
function CheckMatchAnswers(answerEdit, answerConfirmEdit: TEdit): Boolean;

implementation

function CheckIfUserExists(nameUser: TEdit): Boolean;
var
  queryTemp: TFDQuery;
begin
  Result := False;
  queryTemp := TFDQuery.Create(nil);
  try
    queryTemp.Connection := DM_Con.Connection;

    queryTemp.SQL.Text := 'SELECT COUNT(*) AS Count FROM users WHERE name_user = :name_user';
    queryTemp.ParamByName('name_user').AsString := nameUser.Text;
    queryTemp.Open;

    if queryTemp.FieldByName('Count').AsInteger > 0 then
      begin
      Result := True;
      end;
    except
      on E: Exception do
      begin
      ShowMessage('Erro: ' + E.Message);
      end;
  end;
  queryTemp.Free;
end;

function CheckIfUserAndPasswordIsCorrect(nameUser, passwordUser: TEdit): Boolean;
var
  queryTemp: TFDQuery;
  passwordUserEncrypted: string;
begin
  Result := False;

  passwordUserEncrypted := Encrypter(passwordUser.Text);

  queryTemp := TFDQuery.Create(nil);

  try
    queryTemp.Connection := DM_Con.Connection;

    queryTemp.SQL.Text := 'SELECT password_user AS password FROM users WHERE name_user = :name_user';
    queryTemp.ParamByName('name_user').AsString := nameUser.Text;
    queryTemp.Open;


    if not queryTemp.IsEmpty then
    begin
      if queryTemp.FieldByName('password').AsString = passwordUserEncrypted then
      begin
        Result := True;
      end;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
   end;
  end;
   queryTemp.Free;
end;


function SignUpUser(nameUser, passwordUser, questionUser, questionAnswerUser: TEdit): Boolean;
var
  queryTemp: TFDQuery;
  passwordUserEncrypted: string;
  questionAnswerUserEncrypted: string;
begin
  Result := False;
  queryTemp := TFDQuery.Create(nil);

  passwordUserEncrypted := Encrypter(passwordUser.Text);
  questionAnswerUserEncrypted := Encrypter(questionAnswerUser.Text);

  try
    queryTemp.Connection := DM_Con.Connection;
    queryTemp.Transaction := DM_Con.Transaction;

    DM_Con.Connection.StartTransaction;
    try
      queryTemp.SQL.Text := 'INSERT INTO users (name_user, password_user, question_user, question_answer_user) VALUES (:name_user, :password_user, :question_user, :question_answer_user)';
      queryTemp.ParamByName('name_user').AsString := nameUser.Text;
      queryTemp.ParamByName('password_user').AsString := passwordUserEncrypted;
      queryTemp.ParamByName('question_user').AsString := questionUser.Text;
      queryTemp.ParamByName('question_answer_user').AsString := questionAnswerUserEncrypted;

      queryTemp.ExecSQL;
      DM_Con.Connection.Commit;

      Result := True;
    except
      on E: Exception do
      begin
        DM_Con.Connection.Rollback;
        ShowMessage(E.Message);
      end;
    end;
  finally
    queryTemp.Free;
  end;
end;

function Encrypter(const passwordUser: string): string;
begin
  Result := THashSHA2.GetHashString(passwordUser);
end;


function CheckMatchPasswords(passwordEdit, passwordConfirmEdit: TEdit): Boolean;
var
  inputText: string;
  inputTextConfirm: string;
begin
  inputText := passwordEdit.Text;
  inputTextConfirm := passwordConfirmEdit.Text;

  if inputText = inputTextConfirm then
    begin
      Result := True;
    end
    else
    begin
      Exit(False)
    end;
end;

function CheckPasswordCharacters(passwordConfirmEdit: TEdit): Boolean;
var
  inputText: string;
begin
  inputText := passwordConfirmEdit.Text;

  if not Length(inputText) < 8 then
    begin
      Result := TRegEx.IsMatch(inputText, '[a-zA-Z]') and
                TRegEx.IsMatch(inputText, '\d') and
                TRegEx.IsMatch(inputText, '[!@#$%^&*(),.?":{}|<>]');
    end
    else
    begin
      Exit(False)
    end;
end;

function CheckUserCharacters(userEdit: TEdit): Boolean;
var
  inputUser: string;
begin
  inputUser := userEdit.Text;

  if Length(inputUser) < 5 then
    Exit(False);

  Result := TRegEx.IsMatch(inputUser, '[a-zA-Z]') and
            TRegEx.IsMatch(inputUser, '\d');
end;

function CheckQuestionCharacters(questionEdit: TEdit): Boolean;
var
  inputText: string;
begin
  inputText := questionEdit.Text;

  if Length(inputText) < 8 then
    Exit(False);

  Result := TRegEx.IsMatch(inputText, '[a-zA-Z]')
end;

function CheckAnswerCharacters(answerConfirmEdit: TEdit): Boolean;
var
  inputText: string;
begin
  inputText := answerConfirmEdit.Text;
  if Length(inputText) < 3 then
    begin
      Exit(False);
    end;
    Result := True;
end;

function CheckMatchAnswers(answerEdit, answerConfirmEdit: TEdit): Boolean;
var
  inputText: string;
  inputTextConfirm: string;
begin
  inputText := answerEdit.Text;
  inputTextConfirm := answerConfirmEdit.Text;

  if inputText = inputTextConfirm then
    begin
      Result := True;
    end
    else
    begin
      Exit(False)
    end;
end;

function LoadQuestion(nameUser: TEdit): string;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  try
    queryTemp.Connection := DM_Con.Connection;

    queryTemp.SQL.Text := 'SELECT question_user AS question FROM users WHERE name_user = :name_user';
    queryTemp.ParamByName('name_user').AsString := nameUser.Text;
    queryTemp.Open;

    if not queryTemp.IsEmpty then
      begin
      Result := queryTemp.FieldByName('question').AsString;
      end;
    except
      on E: Exception do
      begin
      ShowMessage('Erro: ' + E.Message);
      end;
  end;
  queryTemp.Free;
end;

function CheckIfAnswerSecurityQuestionIsCorrect(nameUser, answerSecurityQuestionUser: TEdit): Boolean;
var
  queryTemp: TFDQuery;
  answerSecurityQuestionUserEncrypted: string;
begin
  Result := False;

  answerSecurityQuestionUserEncrypted := Encrypter(answerSecurityQuestionUser.Text);

  queryTemp := TFDQuery.Create(nil);

  try
    queryTemp.Connection := DM_Con.Connection;

    queryTemp.SQL.Text := 'SELECT question_answer_user AS answer FROM users WHERE name_user = :name_user';
    queryTemp.ParamByName('name_user').AsString := nameUser.Text;
    queryTemp.Open;


    if not queryTemp.IsEmpty then
    begin
      if queryTemp.FieldByName('answer').AsString = answerSecurityQuestionUserEncrypted then
      begin
        Result := True;
      end;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
   end;
  end;
   queryTemp.Free;
end;

function UpdatePasswordUser(nameUser, newPasswordUser: TEdit): Boolean;
var
  queryTemp: TFDQuery;
  passwordUserEncrypted: string;
begin
  Result := False;
  queryTemp := TFDQuery.Create(nil);

  passwordUserEncrypted := Encrypter(newPasswordUser.Text);

  try
    queryTemp.Connection := DM_Con.Connection;
    queryTemp.Transaction := DM_Con.Transaction;

    DM_Con.Connection.StartTransaction;
    try
      queryTemp.SQL.Text := 'UPDATE users SET password_user = :password_user WHERE name_user = :name_user';
      queryTemp.ParamByName('name_user').AsString := nameUser.Text;
      queryTemp.ParamByName('password_user').AsString := passwordUserEncrypted;

      queryTemp.ExecSQL;
      DM_Con.Connection.Commit;

      Result := True;
    except
      on E: Exception do
      begin
        DM_Con.Connection.Rollback;
        ShowMessage(E.Message);
      end;
    end;
  finally
    queryTemp.Free;
  end;
end;


end.
