unit Global_Functions;

interface

uses
  System.SysUtils, System.RegularExpressions, System.Hash, Vcl.Dialogs, Vcl.StdCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, DM_Connection;

function CheckIfUserExists(nameUser: TEdit): Boolean;
function CheckIfUserAndPasswordIsCorrect(name_user, passwordUser: TEdit): Boolean;
function SignUpUser(nameUser, passwordUser: TEdit): Boolean;
function EncryptPassword(const passwordUser: string): string;
function CheckPasswordCharacters(passwordEdit, passwordConfirmEdit: TEdit): Boolean;
function CheckUserCharacters(userEdit: TEdit): Boolean;

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
    begin
      ShowMessage('Erro: ' + E.Message);
   end;
  end;
   queryTemp.Free;
end;


function SignUpUser(nameUser, passwordUser: TEdit): Boolean;
var
  queryTemp: TFDQuery;
  passwordUserEncrypted: string;
begin
  Result := False;
  queryTemp := TFDQuery.Create(nil);
  passwordUserEncrypted := EncryptPassword(passwordUser.Text);
  try
    queryTemp.Connection := DM_Con.Connection;

    DM_Con.Connection.StartTransaction;
    try
      queryTemp.SQL.Text := 'INSERT INTO users (name_user, password_user) VALUES (:name_user, :password_user)';
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

function EncryptPassword(const passwordUser: string): string;
begin
  Result := THashSHA2.GetHashString(passwordUser);
end;

function CheckPasswordCharacters(passwordEdit, passwordConfirmEdit: TEdit): Boolean;
var
  inputPass: string;
  inputPassConfirm: string;
begin
  inputPass := passwordEdit.Text;
  inputPassConfirm := passwordConfirmEdit.Text;

  if inputPass = inputPassConfirm then
    begin
      if Length(InputPassConfirm) < 8 then
        Exit(False);

      Result := TRegEx.IsMatch(InputPassConfirm, '[a-zA-Z]') and
                TRegEx.IsMatch(InputPassConfirm, '\d') and
                TRegEx.IsMatch(InputPassConfirm, '[!@#$%^&*(),.?":{}|<>]');
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


end.
