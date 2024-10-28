unit Global_Functions;

interface

uses
  System.SysUtils, System.RegularExpressions, System.Hash, Vcl.Dialogs, Vcl.StdCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, DM_Connection,
  System.JSON, REST.Client, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope;

var
  url_value: string;

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
function GetUserID(nameUser: TEdit): integer;
function GetUserName(id_user: integer): string;
procedure GetMotivationMessageAPI(MessageLabel, AuthorLabel: TLabel);
procedure GetMaxTitaniumProducts;
procedure GetNewsAPI(titleLabel, paragraphLabel: TLabel);


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

function GetUserID(nameUser: TEdit): integer;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  Result := 0;
  try
    queryTemp.Connection := DM_Con.Connection;

    queryTemp.SQL.Text := 'SELECT id_user FROM users WHERE name_user = :name_user';
    queryTemp.ParamByName('name_user').AsString := nameUser.Text;
    queryTemp.Open;

    Result := queryTemp.FieldByName('id_user').AsInteger;

    except
      on E: Exception do
      begin
      ShowMessage('Erro: ' + E.Message);
      end;
  end;
  queryTemp.Free;
end;

function GetUserName(id_user: integer): string;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  Result := '';
  try
    queryTemp.Connection := DM_Con.Connection;

    queryTemp.SQL.Text := 'SELECT name_user FROM users WHERE id_user = :id_user';
    queryTemp.ParamByName('id_user').AsInteger := id_user;
    queryTemp.Open;

    Result := queryTemp.FieldByName('name_user').AsString;

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

procedure GetMotivationMessageAPI(MessageLabel, AuthorLabel: TLabel);
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  JSONValue: TJSONValue;
  JSONObject: TJSONObject;
  Author, Quote: string;
begin
  // Cria os componentes REST temporariamente
  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);

  try
    // Configura o RESTClient
    RESTClient.BaseURL := 'http://127.0.0.1:5000/motivationmessage'; // Substitua pela URL da API

    // Configura o RESTRequest
    RESTRequest.Client := RESTClient;
    RESTRequest.Response := RESTResponse;
    RESTRequest.Method := rmGET; // Define o m�todo como GET

    // Executa a requisi��o
    RESTRequest.Execute;

    // Obt�m a resposta como JSON
    JSONValue := TJSONObject.ParseJSONValue(RESTResponse.Content);
    try
      if JSONValue is TJSONObject then
      begin
        JSONObject := TJSONObject(JSONValue);

        // Acessa o valor da chave "Quote"
        if JSONObject.TryGetValue('quote', Quote) then
        begin
          MessageLabel.Caption := Quote;
        end
        else
        begin
          MessageLabel.Caption := 'Quote n�o encontrado';
        end;

        // Acessa o valor da chave "Author"
        if JSONObject.TryGetValue('author', Author) then
        begin
          AuthorLabel.Caption := Author;
        end
        else
        begin
          AuthorLabel.Caption := 'Author n�o encontrado';
        end;
      end
      else
      begin
        MessageLabel.Caption := 'Resposta inv�lida';
        AuthorLabel.Caption := 'Resposta inv�lida';
      end;
    finally
      JSONValue.Free;
    end;

  finally
    // Libera os componentes REST
    RESTClient.Free;
    RESTRequest.Free;
    RESTResponse.Free;
  end;
end;

procedure GetMaxTitaniumProducts;
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  JSONValue: TJSONValue;
  JSONProducts: TJSONArray;
  Product: TJSONObject;
  Price, Title: string;
begin
  // Cria os componentes REST temporariamente
  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);

  try
    // Configura o RESTClient
    RESTClient.BaseURL := 'http://127.0.0.1:5000/all?category=proteins'; // Ajuste conforme necess�rio

    // Configura o RESTRequest
    RESTRequest.Client := RESTClient;
    RESTRequest.Response := RESTResponse;
    RESTRequest.Method := rmGET; // Define o m�todo como GET

    // Executa a requisi��o
    RESTRequest.Execute;

    // Obt�m a resposta como JSON
  // Obt�m a resposta como JSON
    JSONValue := TJSONObject.ParseJSONValue(RESTResponse.Content);
    try
      if JSONValue is TJSONObject then
      begin
        // Acesse o array "products" dentro do objeto JSON
        var ProductsArray := JSONValue.GetValue<TJSONArray>('products');
        if Assigned(ProductsArray) then
        begin
          var ProductsList: string := ''; // String para armazenar os produtos

          // Itera sobre cada produto no JSONArray
          for var i := 0 to ProductsArray.Count - 1 do
          begin
            Product := ProductsArray.Items[i] as TJSONObject;
            Title := Product.GetValue<string>('title');
            Price := Product.GetValue<string>('price');

            // Adiciona o t�tulo e o pre�o � lista
            ProductsList := ProductsList + Format('Produto: %s, Pre�o: %s'#13#10, [Title, Price]);
          end;

          // Exibe todos os produtos em um ShowMessage
          ShowMessage(ProductsList);
        end;
      end
      else
        ShowMessage('Formato JSON inesperado.');
    finally
      JSONValue.Free;
    end;

  finally
    // Libera os componentes REST
    RESTClient.Free;
    RESTRequest.Free;
    RESTResponse.Free;
  end;
end;

procedure GetNewsAPI(titleLabel, paragraphLabel: TLabel);
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  JSONValue: TJSONValue;
  JSONObject: TJSONObject;
  title, paragraph, url, cleanedText: string;
begin
  // Cria os componentes REST temporariamente
  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);

  try
    // Configura o RESTClient
    RESTClient.BaseURL := 'http://127.0.0.1:5000/news'; // Substitua pela URL da API

    // Configura o RESTRequest
    RESTRequest.Client := RESTClient;
    RESTRequest.Response := RESTResponse;
    RESTRequest.Method := rmGET; // Define o m�todo como GET

    // Executa a requisi��o
    RESTRequest.Execute;

    // Obt�m a resposta como JSON
    JSONValue := TJSONObject.ParseJSONValue(RESTResponse.Content);
    try
      if JSONValue is TJSONObject then
      begin
        JSONObject := TJSONObject(JSONValue);

        // Acessa o valor da chave "Quote"
        if JSONObject.TryGetValue('title', title) then
        begin
          titleLabel.Caption := title;
        end
        else
        begin
          titleLabel.Caption := 'Title not found';
        end;

        // Acessa o valor da chave "Author"
        if JSONObject.TryGetValue('paragraph', paragraph) then
        begin
          cleanedText := StringReplace(Trim(paragraph), #13#10, ' ', [rfReplaceAll]);
          cleanedText := StringReplace(cleanedText, #9, ' ', [rfReplaceAll]); // remover tabula��es, se houver
          paragraphLabel.Caption := cleanedText;
        end
        else
        begin
          paragraphLabel.Caption := 'paragraph not found';
        end;

        if JSONObject.TryGetValue('url', url) then
        begin
          url_value := url
        end
        else
        begin
          ShowMessage('Url not found');
        end;

      end
      else
      begin
        titleLabel.Caption := 'Resposta inv�lida';
        paragraphLabel.Caption := 'Resposta inv�lida';
      end;
    finally
      JSONValue.Free;
    end;

  finally
    // Libera os componentes REST
    RESTClient.Free;
    RESTRequest.Free;
    RESTResponse.Free;
  end;
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
