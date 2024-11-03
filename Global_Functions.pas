unit Global_Functions;

interface

uses
  System.SysUtils, System.RegularExpressions, System.Hash, Vcl.Dialogs, Vcl.StdCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, Vcl.Graphics, Vcl.ExtCtrls, System.Generics.Collections,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.DApt,Vcl.Controls, Vcl.Forms,
  Data.DB, FireDAC.Comp.Client,FireDAC.Stan.Param, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, DM_Connection,System.IOUtils,
  Winapi.Windows, System.JSON, REST.Client, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope, System.Classes,PythonEngine,
  IdHTTP, IdSSL, IdSSLOpenSSL, System.Net.HttpClient, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Winapi.GDIPAPI, Winapi.GDIPOBJ;


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
function APISupp(brand, category, subcategory: string): TJSONArray;
function extractUrl(ImageUrl: string):string;
function GetImageIcon(FileName: string): string;
function FileExistsInFolder(const Folder, FileName: string): Boolean;
procedure GetImageUser(id_user: integer; Image: TImage);
procedure InsertImageUser(id_user: integer);
procedure DownloadImageFromURL(const URL, SaveDirectory: string; FileName: string);
procedure RunResizeImgPy;
procedure CreateCardProduct(CardsBox: TScrollBox; ProductsArray: TJSONArray);
procedure HideScrollbars(ScrollBox: TScrollBox);




implementation
var
  PythonEngine: TPythonEngine;

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

procedure HideScrollbars(ScrollBox: TScrollBox);
begin

  ShowScrollBar(ScrollBox.Handle, SB_BOTH, False);
end;

procedure CreateCardProduct(CardsBox: TScrollBox; ProductsArray: TJSONArray);
var
  PanelWidth, PanelHeight, Padding, Columns, col, row, i: Integer;
  Image_url, InputImagePath, OutputImagePath, FileName, Title, Price: string;
  Product: TJSONObject;
  Panel: TPanel;
  Image: TImage;
  TitleLabel, PriceLabel: TLabel;
begin
  // Caminhos de entrada e saída para as imagens
  InputImagePath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'Scripts Py\input_image_path';
  OutputImagePath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'Scripts Py\output_image_path';

  // Define as dimensões dos painéis e o layout
  PanelWidth := 245;
  PanelHeight := 350;
  Padding := 25;
  Columns := 5;

  // Limpa os componentes filhos existentes de CardsBox antes de adicionar novos
  while CardsBox.ControlCount > 0 do
    CardsBox.Controls[0].Free;

  for i := 0 to ProductsArray.Count - 1 do
  begin
    Product := ProductsArray.Items[i] as TJSONObject;
    Title := Product.GetValue<string>('title');
    Price := Product.GetValue<string>('price');
    Image_url := Product.GetValue<string>('image_src');

    col := i mod Columns;
    row := i div Columns;

    // Criação e configuração do painel
    Panel := TPanel.Create(CardsBox);
    Panel.Parent := CardsBox;
    Panel.Width := PanelWidth;
    Panel.Height := PanelHeight;
    Panel.Left := col * (PanelWidth + Padding);
    Panel.Top := row * (PanelHeight + Padding);
    Panel.BevelOuter := bvNone;
    Panel.Color := clBlack;

    if i = 6 then
    begin
      HideScrollbars(CardsBox);
    end;

    // Criação e configuração do TLabel para o título
    TitleLabel := TLabel.Create(Panel);
    TitleLabel.AlignWithMargins := True;
    TitleLabel.Margins.Top := 3;
    TitleLabel.Margins.Bottom := 3;
    TitleLabel.Margins.Left := 3;
    TitleLabel.Margins.Right := 3;
    TitleLabel.Parent := Panel;
    TitleLabel.Caption := Title;
    TitleLabel.Font.Style := [fsBold];
    TitleLabel.Font.Color := clWhite;
    TitleLabel.Font.Size := 11;
    TitleLabel.WordWrap := True; // Permite quebra de linha
    TitleLabel.Alignment := taCenter; // Centraliza o texto
    TitleLabel.Align := alClient; // Ajusta o TLabel para ocupar todo o espaço disponível no painel

    // Criação e configuração da imagem
    Image := TImage.Create(Panel);
    FileName := extractUrl(Image_url);
    if not FileExistsInFolder(OutputImagePath, FileName) then
    begin
      DownloadImageFromURL(Image_url, InputImagePath, FileName);
      RunResizeImgPy;
    end;
    Image.Picture.LoadFromFile(OutputImagePath + '\' + FileName + '.png');
    Image.AlignWithMargins := True;
    Image.Height := 250;
    Image.Width := 250;
    Image.Margins.Top := 3;
    Image.Margins.Bottom := 3;
    Image.Margins.Left := 3;
    Image.Margins.Right := 3;
    Image.Parent := Panel;
    Image.Align := alTop;
    Image.Center := True;
    Image.Proportional := True;

    // Criação e configuração do TLabel para o preço
    PriceLabel := TLabel.Create(Panel);
    PriceLabel.AlignWithMargins := True;
    PriceLabel.Margins.Top := 3;
    PriceLabel.Margins.Bottom := 12;
    PriceLabel.Margins.Left := 3;
    PriceLabel.Margins.Right := 3;
    PriceLabel.Parent := Panel;
    PriceLabel.Caption := Price;
    PriceLabel.Font.Size := 18;
    PriceLabel.Font.Style := [fsBold];
    PriceLabel.Font.Color := clLime;
    PriceLabel.Alignment := taCenter;
    PriceLabel.Align := alBottom;
  end;
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

procedure GetImageUser(id_user: integer; Image: TImage);
var
  ImagemStream: TMemoryStream;
  queryTemp: TFDQuery;
begin

  queryTemp := TFDQuery.Create(nil);

  queryTemp.Close;
  queryTemp.SQL.Text := 'SELECT image_user FROM users WHERE id_user = :id_user';
  queryTemp.ParamByName('id_user').AsInteger := id_user; // Exemplo de ID
  queryTemp.Open;


  if not queryTemp.FieldByName('image_user').IsNull then
  begin
    ImagemStream := TMemoryStream.Create;
    try

      TBlobField(queryTemp.FieldByName('image_user')).SaveToStream(ImagemStream);

      ImagemStream.Position := 0;


      Image.Picture.LoadFromStream(ImagemStream);
    finally
      ImagemStream.Free;
    end;
  end
  else
    ShowMessage('Imagem not found');
end;

procedure DownloadImageFromURL(const URL, SaveDirectory: string; FileName: string);
var
  IdHTTP: TIdHTTP;
  SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
  MemoryStream: TMemoryStream;
  SavePath: string;
begin
  IdHTTP := TIdHTTP.Create(nil);
  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  MemoryStream := TMemoryStream.Create;
  try
    IdHTTP.IOHandler := SSLHandler;
    SSLHandler.SSLOptions.Method := sslvTLSv1_2;
    SSLHandler.SSLOptions.VerifyMode := [];
    SSLHandler.SSLOptions.VerifyDepth := 0;

    IdHTTP.Request.UserAgent := 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36';
    IdHTTP.Request.Referer := URL;

    IdHTTP.Get(URL, MemoryStream);

    SavePath := IncludeTrailingPathDelimiter(SaveDirectory) + FileName + '.png';

    MemoryStream.Position := 0;
    MemoryStream.SaveToFile(SavePath);
  finally
    MemoryStream.Free;
    SSLHandler.Free;
    IdHTTP.Free;
  end;

end;

procedure InitializePython;
begin
  PythonEngine := TPythonEngine.Create(nil);
  try
    PythonEngine.DllName := 'python312.dll';  // Verifique se a DLL está no caminho correto
    PythonEngine.LoadDll;  // Carrega a DLL do Python
  except
    on E: Exception do
      ShowMessage('Erro ao inicializar o Python: ' + E.Message);
  end;
end;

procedure FinalizePython;
begin
  if Assigned(PythonEngine) then
  begin
    PythonEngine.UnloadDll;  // Descarrega a DLL do Python
    PythonEngine.Free;        // Libera a instância do PythonEngine
  end;
end;

procedure RunResizeImgPy;
var
  FilePy: string;
begin
  FilePy := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'Scripts Py\resizeimage.py';
  try
    if not Assigned(PythonEngine) then
      InitializePython;  // Inicializa apenas se ainda não estiver inicializado

    PythonEngine.ExecFile(FilePy);
  except
    on E: Exception do
      ShowMessage('Erro ao executar o script: ' + E.Message);
  end;
end;

function extractUrl(ImageUrl: string): string;
var
  OriginalString: string;
  ExtractedString: string;
begin

  Result := '';
  OriginalString := ImageUrl;

  var LastSlashPos := LastDelimiter('/', OriginalString);
  var LastDotPos := LastDelimiter('.', OriginalString);

  // Extraímos a substring entre a última barra e o último ponto.
  ExtractedString := Copy(OriginalString, LastSlashPos + 1, LastDotPos - LastSlashPos - 1);

  Result := ExtractedString;
end;



procedure InsertImageUser(id_user: integer);
var
  FileStream:  TFileStream;
  queryTemp: TFDQuery;
begin
   FileStream := nil;
  queryTemp := TFDQuery.Create(nil);

  queryTemp.Close;
  queryTemp.SQL.Text := 'INSERT INTO image_user  VALUES :image_user FROM users WHERE id_user = :id_user';
  queryTemp.ParamByName('id_user').AsInteger := id_user;


  try
    try
      queryTemp.ParamByName('image_user').LoadFromStream(FileStream, ftBlob);
    finally
      FileStream.Free;
      queryTemp.Free;
    end;
  except
  on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
   end;

  end;
end;

procedure SelectImageExplorer(id_user: integer);
var
  OpenDialog: TOpenDialog;
begin
  OpenDialog := TOpenDialog.Create(nil);
  try
    OpenDialog.Filter := 'Imagens|*.jpg;*.jpeg;*.png;*.bmp;*.gif|Todos os Arquivos|*.*';
    OpenDialog.Title := 'Selecione uma imagem';
    OpenDialog.Options := [ofFileMustExist, ofHideReadOnly];

    if OpenDialog.Execute then
    begin
      InsertImageUser(id_user);
    end;
  finally
    OpenDialog.Free;
  end;
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

function GetImageIcon(FileName: string): string;
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
begin
  Result := '';

  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);
  try
     //
  finally
    RESTClient.Free;
    RESTRequest.Free;
    RESTResponse.Free;
  end;
end;

function FileExistsInFolder(const Folder, FileName: string): Boolean;
var
  FullPath: string;
begin
  FullPath := IncludeTrailingPathDelimiter(Folder) + FileName + '.png';
  // Verifica se o arquivo existe
  Result := FileExists(FullPath);
end;

function APISupp(brand, category, subcategory: string): TJSONArray;
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  JSONValue: TJSONValue;
  ProductsArray: TJSONArray;
  URL: String;
begin
  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);
  Result := TJSONArray.Create;

  try
    if subcategory = '' then
      URL := 'http://127.0.0.1:5000/' + brand + '?category=' + category
    else
      URL := 'http://127.0.0.1:5000/' + brand + '?category=' + category + '&subcategory=' + subcategory;

    RESTClient.BaseURL := URL;
    RESTRequest.Client := RESTClient;
    RESTRequest.Response := RESTResponse;
    RESTRequest.Method := rmGET;
    RESTRequest.Execute;

    JSONValue := TJSONObject.ParseJSONValue(RESTResponse.Content);
    try
      if (JSONValue is TJSONObject) and (TJSONObject(JSONValue).GetValue('products') <> nil) then
      begin
        ProductsArray := TJSONObject(JSONValue).GetValue<TJSONArray>('products');
        Result := ProductsArray.Clone as TJSONArray;
      end;
    finally
      JSONValue.Free;
    end;
  finally
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
