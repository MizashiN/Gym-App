unit Global_Functions;

interface

uses
System.SysUtils, System.Hash, DM_Connections;

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
  finally
    queryTemp.Free;
  end;
end;

function CheckIfUserAndPasswordIsCorrect(name_user, passwordUser: TEdit): Boolean;
var
  queryTemp: TFDQuery;
  passwordUserEncrypted: string;
begin
  Result := False;
  passwordUserEncrypted := EncryptPassword(passwordUser.Text);
  queryTemp := TFDQuery.Create(nil);

  try
    queryTemp.Connection := DM_Con.Connection;

    queryTemp.SQL.Text := 'SELECT password_user AS password FROM users WHERE name_user = :name_user';
    queryTemp.ParamByName('name_user').AsString := name_user.Text;
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
      ShowMessage('Erro: ' + E.Message);
  finally
    queryTemp.Free;
  end;
end;


procedure SignUpUser(nameUser, passwordUser: TEdit);
var
  queryTemp: TFDQuery;
  passwordUserEncrypted: string;
begin
  queryTemp := TFDQuery.Create(nil);
  passwordUserEncrypted := EncryptPassword(passwordUser);
  try
    queryTemp.Connection := DM_Con.Connection;

    DM_Con.Connection.StartTransaction;
    try
      queryTemp.SQL.Text := 'INSERT INTO users (name_user, password_user) VALUES (:name_user, :password_user)';
      queryTemp.ParamByName('name_user').AsString := nameUser.Text;
      queryTemp.ParamByName('password_user').AsString := passwordUserEncrypted.Text;

      queryTemp.ExecSQL;

      DM_Con.Connection.Commit;
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

function EncryptPassword(const passwordUser: string): string;
begin
  Result := THashSHA2.GetHashString(passwordUser);
end;

function CheckPasswordCharacters(passwordEdit: TEdit): Boolean;
var
  InputText: string;
begin
  InputText := passwordEdit.Text;

  if Length(InputText) < 8 then
    Exit(False);

  Result := TRegEx.IsMatch(InputText, '[a-zA-Z]') and
            TRegEx.IsMatch(InputText, '\d') and
            TRegEx.IsMatch(InputText, '[!@#$%^&*(),.?":{}|<>]');
end;

function CheckUserCharacters(userEdit: TEdit): Boolean;
var
  InputText: string;
begin
  InputText := userEdit.Text;

  if Length(InputText) < 5 then
    Exit(False);

  Result := TRegEx.IsMatch(InputText, '[a-zA-Z]') and
            TRegEx.IsMatch(InputText, '\d');
end;


end.
