unit Global_Functions;

interface

uses
  System.SysUtils, System.RegularExpressions, System.Hash, Vcl.Dialogs, Vcl.StdCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, Vcl.Graphics, Vcl.ExtCtrls, System.Generics.Collections,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.DApt,Vcl.Controls, Vcl.Forms,Vcl.DBCtrls, ShellAPI,
  Data.DB, FireDAC.Comp.Client,FireDAC.Stan.Param, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, DM_Connection,System.IOUtils,IdCoderMIME,
  Winapi.Windows, System.JSON, REST.Client, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope, System.Classes,  System.NetEncoding,
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
function FileExistsInFolder(const Folder, FileName: string): Boolean;
function VerifyImgSrc(image_src: string): Boolean;
procedure GetImageUser(id_user: integer; Image: TImage);
procedure InsertImageUser(id_user: integer);
procedure CreateCardProduct(CardsBox: TScrollBox; ProductsArray: TJSONArray);
procedure HideScrollbars(ScrollBox: TScrollBox);
procedure InsertImg(image_src, FilePath: string);
procedure LoadImage(image_src: string; Image: TImage);
procedure SelectBrands(ComboBox: TComboBox);
procedure SelectCategories(Combobox: TComboBox);
procedure OpenURLOnClick(Sender: TObject);

implementation

//              APIs

function APISupp(brand, category, subcategory: string): TJSONArray;
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  JSONValue: TJSONValue;
  URL: String;
begin
  RESTClient := TRESTClient.Create(nil);
  RESTRequest := TRESTRequest.Create(nil);
  RESTResponse := TRESTResponse.Create(nil);
  Result := TJSONArray.Create;

  try
    // Construindo a URL
    if subcategory = '' then
      URL := 'http://127.0.0.1:5000/' + brand + '?category=' + category
    else
      URL := 'http://127.0.0.1:5000/' + brand + '?category=' + category + '&subcategory=' + subcategory;

    RESTClient.BaseURL := URL;
    RESTClient.ReadTimeout := 60000000;
    RESTRequest.Client := RESTClient;
    RESTRequest.Response := RESTResponse;
    RESTRequest.Method := rmGET;
    RESTRequest.Execute;

    // Parse JSON response
    JSONValue := TJSONObject.ParseJSONValue(RESTResponse.Content);
    try
      if (JSONValue is TJSONObject) and (TJSONObject(JSONValue).GetValue('products') <> nil) then
      begin
        Result := TJSONObject(JSONValue).GetValue<TJSONArray>('products').Clone as TJSONArray;
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


//              Database SQLite Operations

function VerifyImgSrc(image_src: string): Boolean;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  Result := False;
  try
    queryTemp.Connection := DM_Con.ConnectionSQLite;

    queryTemp.SQL.Text := 'SELECT image_src FROM images WHERE image_src = :image_src';
    queryTemp.ParamByName('image_src').AsString := image_src;
    queryTemp.Open;

    if not queryTemp.IsEmpty then
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

procedure InsertImg(image_src, FilePath: string);
var
  queryTemp: TFDQuery;
  MemStream: TMemoryStream;
begin
 if not FileExists(FilePath) then
  begin
    ShowMessage('Arquivo de imagem não encontrado.');
    Exit;
  end;

  queryTemp := TFDQuery.Create(nil);
  MemStream := TMemoryStream.Create;
  try

    MemStream.LoadFromFile(FilePath);

    queryTemp.Connection := DM_Con.ConnectionSQLite;

    queryTemp.SQL.Text := 'INSERT INTO images (image_src, image_blob) VALUES (:image_src, :image_blob)';
    queryTemp.ParamByName('image_src').AsString := image_src;

    MemStream.Position := 0;
    queryTemp.ParamByName('image_blob').LoadFromStream(MemStream, ftBlob);

    queryTemp.ExecSQL;
  finally
    MemStream.Free;
  end;
end;

procedure LoadImage(image_src: string; Image: TImage);
var
  MemStream: TMemoryStream;
  queryTemp: TFDQuery;
begin
  MemStream := TMemoryStream.Create;
  queryTemp := TFDQuery.Create(nil);

//  image_src := StringReplace(image_src, '?', '', [rfReplaceAll]);
//  image_src := StringReplace(image_src, '&', '', [rfReplaceAll]);

  try
    queryTemp.Connection := DM_Con.ConnectionSQLite;

    queryTemp.SQL.Text := 'SELECT image_blob FROM images WHERE image_src = :image_src';
    queryTemp.ParamByName('image_src').AsString := image_src;
    queryTemp.Open;

    if not queryTemp.IsEmpty then
    begin
      TBlobField(queryTemp.FieldByName('image_blob')).SaveToStream(MemStream);

      MemStream.Position := 0;

      Image.Picture.Graphic := nil;
      Image.Picture.LoadFromStream(MemStream);
    end
    else
      ShowMessage('Imagem não encontrada.');
  finally
    MemStream.Free;
    queryTemp.Free;
  end;
end;

//              Design Frames Procedures

procedure CreateCardProduct(CardsBox: TScrollBox; ProductsArray: TJSONArray);
var
  PanelWidth, PanelHeight, Padding, Columns, col, row, i: Integer;
  InputImagePath, OutputImagePath, Title, Price, Image_Src, Url: string;
  Product: TJSONObject;
  Panel: TPanel;
  Image: TImage;
  TitleLabel, PriceLabel: TLabel;
begin
  InputImagePath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'Scripts Py\input_image_path';
  OutputImagePath := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'Scripts Py\output_image_path';

  PanelWidth := 245;
  PanelHeight := 350;
  Padding := 25;
  Columns := 5;

  while CardsBox.ControlCount > 0 do
    CardsBox.Controls[0].Free;

  for i := 0 to ProductsArray.Count - 1 do
  begin
    Product := ProductsArray.Items[i] as TJSONObject;
    Title := Product.GetValue<string>('title');
    Price := Product.GetValue<string>('price');
    Image_Src := Product.GetValue<string>('image_src');
    URL := Product.GetValue<string>('url');

    col := i mod Columns;
    row := i div Columns;

    Panel := TPanel.Create(CardsBox);



    Panel.Parent := CardsBox;
    Panel.Width := PanelWidth;
    Panel.Height := PanelHeight;
    Panel.Left := col * (PanelWidth + Padding);
    Panel.Top := row * (PanelHeight + Padding);
    Panel.BevelOuter := bvNone;
    Panel.Color := clBlack;

    Panel.Tag := NativeInt(StrNew(PChar(URL)));
    Panel.OnClick := OpenURLOnClick;

    Image := TImage.Create(Panel);

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


    if i = 6 then
    begin
      HideScrollbars(CardsBox);
    end;

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
    TitleLabel.WordWrap := True;
    TitleLabel.Alignment := taCenter;
    TitleLabel.Align := alClient;



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


    LoadImage(Image_Src, Image);
  end;

end;

//         Database MySQL Operations

function GetUserName(id_user: integer): string;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  Result := '';
  try
    queryTemp.Connection := DM_Con.ConnectionMySQL;

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

function CheckIfUserExists(nameUser: TEdit): Boolean;
var
  queryTemp: TFDQuery;
begin
  Result := False;
  queryTemp := TFDQuery.Create(nil);
  try
    queryTemp.Connection := DM_Con.ConnectionMySQL;

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
    queryTemp.Connection := DM_Con.ConnectionMySQL;

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

function CheckIfUserAndPasswordIsCorrect(nameUser, passwordUser: TEdit): Boolean;
var
  queryTemp: TFDQuery;
  passwordUserEncrypted: string;
begin
  Result := False;

  passwordUserEncrypted := Encrypter(passwordUser.Text);

  queryTemp := TFDQuery.Create(nil);

  try
    queryTemp.Connection := DM_Con.ConnectionMySQL;

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
    queryTemp.Connection := DM_Con.ConnectionMySQL;
    queryTemp.Transaction := DM_Con.TransactionMySQL;

    DM_Con.ConnectionMySQL.StartTransaction;
    try
      queryTemp.SQL.Text := 'INSERT INTO users (name_user, password_user, question_user, question_answer_user) VALUES (:name_user, :password_user, :question_user, :question_answer_user)';
      queryTemp.ParamByName('name_user').AsString := nameUser.Text;
      queryTemp.ParamByName('password_user').AsString := passwordUserEncrypted;
      queryTemp.ParamByName('question_user').AsString := questionUser.Text;
      queryTemp.ParamByName('question_answer_user').AsString := questionAnswerUserEncrypted;

      queryTemp.ExecSQL;
      DM_Con.ConnectionMySQL.Commit;

      Result := True;
    except
      on E: Exception do
      begin
        DM_Con.ConnectionMySQL.Rollback;
        ShowMessage(E.Message);
      end;
    end;
  finally
    queryTemp.Free;
  end;
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
    queryTemp.Connection := DM_Con.ConnectionMySQL;

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
    queryTemp.Connection := DM_Con.ConnectionMySQL;

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
    queryTemp.Connection := DM_Con.ConnectionMySQL;
    queryTemp.Transaction := DM_Con.TransactionMySQL;

    DM_Con.ConnectionMySQL.StartTransaction;
    try
      queryTemp.SQL.Text := 'UPDATE users SET password_user = :password_user WHERE name_user = :name_user';
      queryTemp.ParamByName('name_user').AsString := nameUser.Text;
      queryTemp.ParamByName('password_user').AsString := passwordUserEncrypted;

      queryTemp.ExecSQL;
      DM_Con.ConnectionMySQL.Commit;

      Result := True;
    except
      on E: Exception do
      begin
        DM_Con.ConnectionMySQL.Rollback;
        ShowMessage(E.Message);
      end;
    end;
  finally
    queryTemp.Free;
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

procedure SelectBrands(ComboBox: TComboBox);
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  try
    queryTemp.Connection := DM_Con.ConnectionMySQL;

    queryTemp.SQL.Text := 'SELECT brand FROM brands';
    queryTemp.Open;

    ComboBox.Clear;

    while not queryTemp.Eof do
    begin
      ComboBox.Items.Add(queryTemp.FieldByName('brand').AsString);
      queryTemp.Next;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
  queryTemp.Free;
end;

procedure SelectCategories(Combobox: TComboBox);
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  try
    queryTemp.Connection := DM_Con.ConnectionMySQL;

    queryTemp.SQL.Text := 'SELECT category FROM categories';
    queryTemp.Open;

    ComboBox.Clear;

    while not queryTemp.Eof do
    begin
      ComboBox.Items.Add(queryTemp.FieldByName('category').AsString);
      queryTemp.Next;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
  queryTemp.Free;
end;

procedure SelectSubcategories(Combobox: TComboBox; id_category: integer);
begin

end;

procedure SelectTypes(Combobox: TDBCombobox; id_subcategory: integer);
begin

end;


//                  Others

function FileExistsInFolder(const Folder, FileName: string): Boolean;
var
  FullPath: string;
begin
  FullPath := IncludeTrailingPathDelimiter(Folder) + FileName + '.png';
  // Verifica se o arquivo existe
  Result := FileExists(FullPath);
end;

function Encrypter(const passwordUser: string): string;
begin
  Result := THashSHA2.GetHashString(passwordUser);
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

procedure HideScrollbars(ScrollBox: TScrollBox);
begin
 // ShowScrollBar(ScrollBox.Handle, SB_BOTH, False);
end;

procedure TGlobalFunctions.OpenURLOnClick(Sender: TObject);
var
  URL: string;
begin
  URL := PChar(TPanel(Sender).Tag);  // Recupera a URL armazenada no Tag
  ShellExecute(0, 'open', PChar(URL), nil, nil, SW_SHOWNORMAL);
end;

end.
