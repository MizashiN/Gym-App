unit Global_Functions;

interface

uses
  System.SysUtils, System.RegularExpressions, System.Hash, Vcl.Dialogs, Vcl.StdCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, Vcl.Graphics, Vcl.ExtCtrls, System.Generics.Collections,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.DApt,Vcl.Controls, Vcl.Forms,Vcl.DBCtrls, ShellAPI,
  Data.DB, FireDAC.Comp.Client,FireDAC.Stan.Param, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, DM_Connection,System.IOUtils,IdCoderMIME,
  Winapi.Windows, System.JSON, REST.Client, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope, System.Classes,  System.NetEncoding,
  IdHTTP, IdSSL, IdSSLOpenSSL, System.Net.HttpClient, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Winapi.GDIPAPI, Winapi.GDIPOBJ;


function APISupp(brand, category, subcategory: string): TJSONArray;
function GetCategoryID(Combobox: TComboBox): integer;
function GetSubcategoryID(Combobox: TComboBox): integer;
procedure LoadImage(image_src: string; Image: TImage);
procedure SelectBrands(ComboBox: TComboBox);
procedure SelectCategories(Combobox: TComboBox);
procedure SelectSubcategories(Combobox: TComboBox; id_category: integer);
procedure HideScrollbars(ScrollBox: TScrollBox);
procedure CheckConnection;

implementation

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
    queryTemp.Connection := DM_Con.ConnectionMySQL;

    CheckConnection;

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

procedure HideScrollbars(ScrollBox: TScrollBox);
begin
 ShowScrollBar(ScrollBox.Handle, SB_BOTH, False);
end;


procedure CheckConnection;
begin
  // Verifica se a conexão está ativa
  if not DM_Con.ConnectionMySQL.Connected then
  begin
    try
      DM_Con.ConnectionMySQL.Connected := True;
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao conectar ao banco de dados: ' + E.Message);
      end;
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

    CheckConnection;

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

    CheckConnection;

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
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  try
    queryTemp.Connection := DM_Con.ConnectionMySQL;

    CheckConnection;

    queryTemp.SQL.Text := 'SELECT subcategory FROM subcategories WHERE id_category = (SELECT id_category FROM categories WHERE id_category = :id_category)';
    queryTemp.ParamByName('id_category').AsInteger := id_category;
    queryTemp.Open;

    ComboBox.Clear;

    while not queryTemp.Eof do
    begin
      ComboBox.Items.Add(queryTemp.FieldByName('subcategory').AsString);
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

procedure SelectTypes(Combobox: TComboBox; id_subcategory: integer);
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  try
    queryTemp.Connection := DM_Con.ConnectionMySQL;

    CheckConnection;

    queryTemp.SQL.Text := 'SELECT type FROM tyoes WHERE id_type = (SELECT id_subcategory FROM subcategories WHERE id_subcategory = :id_subcategory)';
    queryTemp.ParamByName('id_subcategory').AsInteger := id_subcategory;
    queryTemp.Open;

    ComboBox.Clear;

    while not queryTemp.Eof do
    begin
      ComboBox.Items.Add(queryTemp.FieldByName('type').AsString);
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


function GetCategoryID(Combobox: TComboBox): integer;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  Result := 0;
  try
    queryTemp.Connection := DM_Con.ConnectionMySQL;

    CheckConnection;

    queryTemp.SQL.Text := 'SELECT id_category FROM categories WHERE category = :category';
    queryTemp.ParamByName('category').AsString := Combobox.Text;
    queryTemp.Open;

    if not queryTemp.IsEmpty then
      Result := queryTemp.FieldByName('id_category').AsInteger
    else
      ShowMessage('Nenhuma categoria encontrada com o nome: ' + Combobox.Text);
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
  queryTemp.Free;
end;

function GetSubcategoryID(Combobox: TComboBox): integer;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  Result := 0;
  try
    queryTemp.Connection := DM_Con.ConnectionMySQL;

    CheckConnection;

    queryTemp.SQL.Text := 'SELECT id_subcategory FROM subcategories WHERE subcategory = :subcategory';
    queryTemp.ParamByName('subcategory').AsString := Combobox.Text;
    queryTemp.Open;

    if not queryTemp.IsEmpty then
      Result := queryTemp.FieldByName('id_subcategory').AsInteger
    else
      ShowMessage('Nenhuma categoria encontrada com o nome: ' + Combobox.Text);
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
  queryTemp.Free;
end;

end.
