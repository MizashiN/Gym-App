﻿unit Global_Functions;

interface

uses
  System.SysUtils, System.RegularExpressions, System.Hash, Vcl.Dialogs, Vcl.StdCtrls,FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, Vcl.Graphics, Vcl.ExtCtrls, System.Generics.Collections,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.DApt,Vcl.Controls, Vcl.Forms,Vcl.DBCtrls, ShellAPI,
  Data.DB, FireDAC.Comp.Client,FireDAC.Stan.Param, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, DM_Connection,System.IOUtils,IdCoderMIME,
  Winapi.Windows, System.JSON, REST.Client, REST.Types, Data.Bind.Components, Data.Bind.ObjectScope, System.Classes,  System.NetEncoding,
  IdHTTP, IdSSL, IdSSLOpenSSL, System.Net.HttpClient, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Winapi.GDIPAPI, Winapi.GDIPOBJ;




procedure DeleteConfig(id_company: integer);
function VerifyIfConfigCompanyExists(id_company: integer): Boolean;
function GetCompanyID(company: string): integer;
function GetCategoryID(category: string): integer;
function GetSubcategoryID(subcategory: string): integer;
procedure EditQuery(Query: TFDQuery);
procedure SaveQuery(Query: TFDQuery);
procedure FetchCombobox(Query: TFDQuery; ComboBox: TComboBox; ParamInt: integer  = -1);
procedure LoadImage(image_src: string; Image: TImage);
procedure HideScrollbars(ScrollBox: TScrollBox);
procedure InsertScrapp(
  id_company: integer;
  parent_tag, parent_class,  title_tag, title_class, price_tag, price_class,
  img_tag, img_class,img_attribute, url_tag, url_class, url_attribute, url_base,
  alt_parent_tag, alt_parent_class, alt_parent_tag_2,alt_parent_class_2,
  alt_img_tag, alt_img_class,alt_img_tag_2, alt_img_class_2, price_parent_tag,
  price_parent_class,alt_price_parent_tag, alt_price_parent_class,
  price_code, price_integer, price_decimal, price_fraction, unv_product_tag, unv_product_class, page_param: string
);

implementation

procedure LoadImage(image_src: string; Image: TImage);
var
  MemStream: TMemoryStream;
  queryTemp: TFDQuery;
begin
  MemStream := TMemoryStream.Create;
  queryTemp := TFDQuery.Create(nil);

  try
    queryTemp.Connection := DM_Con.Connection;

    queryTemp.SQL.Text := 'SELECT image_blob FROM images WHERE image_src = :image_src';
    queryTemp.Close;
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

procedure FetchCombobox(Query: TFDQuery; ComboBox: TComboBox; ParamInt: integer  = -1);
begin
  try
    Query.Close;

    if ParamInt <> -1 then
      Query.Params[0].AsInteger := ParamInt;

    Query.Open;

    ComboBox.Clear;

    while not Query.Eof do
    begin
      ComboBox.Items.Add(Query.Fields[0].AsString);
      Query.Next;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
end;

procedure HideScrollbars(ScrollBox: TScrollBox);
begin
 ShowScrollBar(ScrollBox.Handle, SB_BOTH, False);
end;

function GetCategoryID(category: string): integer;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  Result := 0;
  try
    queryTemp.Connection := DM_Con.Connection;

    queryTemp.SQL.Text := 'SELECT id_category FROM categories WHERE category = :category';
    queryTemp.Close;
    queryTemp.ParamByName('category').AsString := category;
    queryTemp.Open;

    if not queryTemp.IsEmpty then
    begin
      Result := queryTemp.FieldByName('id_category').AsInteger
    end
    else
    begin
      ShowMessage('Nenhuma categoria encontrada com o nome: ' + category);
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
  queryTemp.Free;
end;


function GetCompanyID(company: string): integer;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  Result := 0;
  try
    queryTemp.Connection := DM_Con.Connection;
    queryTemp.SQL.Text := 'SELECT id_company FROM companies WHERE company = :company';
    queryTemp.Close;
    queryTemp.ParamByName('company').AsString := company;
    queryTemp.Open;

    if not queryTemp.IsEmpty then
    begin
      Result := queryTemp.FieldByName('id_company').AsInteger;
    end
    else
    begin
      ShowMessage('Nenhuma categoria encontrada com o nome: ' + company);
    end;

  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
  queryTemp.Free;
end;


function GetSubcategoryID(subcategory: string): integer;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  Result := 0;
  if subcategory <> '' then
    begin
    try
      queryTemp.Connection := DM_Con.Connection;
      queryTemp.SQL.Text := 'SELECT id_subcategory FROM subcategories WHERE subcategory = :subcategory';
      queryTemp.Close;
      queryTemp.ParamByName('subcategory').AsString := subcategory;
      queryTemp.Open;

      if not queryTemp.IsEmpty then
        Result := queryTemp.FieldByName('id_subcategory').AsInteger
      else
        ShowMessage('Nenhuma categoria encontrada com o nome: ' + subcategory);
    except
      on E: Exception do
      begin
        ShowMessage('Erro: ' + E.Message);
      end;
    end;
  end;
  queryTemp.Free;
end;

procedure EditQuery(Query: TFDQuery);
begin
  if not Query.IsEmpty then
    Query.Edit;
end;

procedure SaveQuery(Query: TFDQuery);
begin
try
  if not DM_Con.Connection.InTransaction then
      DM_Con.Connection.StartTransaction;

    Query.Post;
    DM_Con.Connection.Commit;
    ShowMessage('Alteração salva com sucesso!');
  except
    on E: Exception do
    begin
      DM_Con.Connection.Rollback;
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
end;

procedure InsertScrapp(
  id_company: integer;
  parent_tag, parent_class,  title_tag, title_class, price_tag, price_class,
  img_tag, img_class,img_attribute, url_tag, url_class, url_attribute, url_base,
  alt_parent_tag, alt_parent_class, alt_parent_tag_2,alt_parent_class_2,
  alt_img_tag, alt_img_class,alt_img_tag_2, alt_img_class_2, price_parent_tag,
  price_parent_class,alt_price_parent_tag, alt_price_parent_class,
  price_code, price_integer, price_decimal, price_fraction, unv_product_tag, unv_product_class, page_param: string
);
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  try
    if not DM_Con.Connection.InTransaction then
      DM_Con.Connection.StartTransaction;

    queryTemp.Connection := DM_Con.Connection;

    queryTemp.SQL.Text :=
      'INSERT INTO configcompanies (' +
      '    id_company, parent_tag, title_tag, img_tag, price_tag, url_tag, ' +
      '    url_attribute, url_base, url_class, price_parent_tag, ' +
      '    price_parent_class, price_code, price_integer, price_decimal, ' +
      '    price_fraction, img_attribute, parent_class, title_class, ' +
      '    price_class, img_class, alt_price_parent_tag, alt_price_parent_class, ' +
      '    alt_img_tag, alt_img_class, alt_parent_class_2, alt_img_tag_2, ' +
      '    alt_img_class_2, alt_parent_tag_2, alt_parent_tag, alt_parent_class,' +
      '    unv_product_tag, unv_product_class, page_param' +
      ') VALUES (' +
      '    :id_company, :parent_tag, :title_tag, :img_tag, :price_tag, :url_tag, ' +
      '    :url_attribute, :url_base, :url_class, :price_parent_tag, ' +
      '    :price_parent_class, :price_code, :price_integer, :price_decimal, ' +
      '    :price_fraction, :img_attribute, :parent_class, :title_class, ' +
      '    :price_class, :img_class, :alt_price_parent_tag, :alt_price_parent_class, ' +
      '    :alt_img_tag, :alt_img_class, :alt_parent_class_2, :alt_img_tag_2, ' +
      '    :alt_img_class_2, :alt_parent_tag_2, :alt_parent_tag, :alt_parent_class,' +
      '    :unv_product_tag, :unv_product_class, :page_param' +
      ');';
    queryTemp.Close;
    queryTemp.ParamByName('id_company').AsInteger := id_company;
    queryTemp.ParamByName('parent_tag').AsString := parent_tag;
    queryTemp.ParamByName('title_tag').AsString := title_tag;
    queryTemp.ParamByName('img_tag').AsString := img_tag;
    queryTemp.ParamByName('price_tag').AsString := price_tag;
    queryTemp.ParamByName('url_tag').AsString := url_tag;
    queryTemp.ParamByName('url_attribute').AsString := url_attribute;
    queryTemp.ParamByName('url_base').AsString := url_base;
    queryTemp.ParamByName('url_class').AsString := url_class;
    queryTemp.ParamByName('price_parent_tag').AsString := price_parent_tag;
    queryTemp.ParamByName('price_parent_class').AsString := price_parent_class;
    queryTemp.ParamByName('price_code').AsString := price_code;
    queryTemp.ParamByName('price_integer').AsString := price_integer;
    queryTemp.ParamByName('price_decimal').AsString := price_decimal;
    queryTemp.ParamByName('price_fraction').AsString := price_fraction;
    queryTemp.ParamByName('img_attribute').AsString := img_attribute;
    queryTemp.ParamByName('parent_class').AsString := parent_class;
    queryTemp.ParamByName('title_class').AsString := title_class;
    queryTemp.ParamByName('price_class').AsString := price_class;
    queryTemp.ParamByName('img_class').AsString := img_class;
    queryTemp.ParamByName('alt_price_parent_tag').AsString := alt_price_parent_tag;
    queryTemp.ParamByName('alt_price_parent_class').AsString := alt_price_parent_class;
    queryTemp.ParamByName('alt_img_tag').AsString := alt_img_tag;
    queryTemp.ParamByName('alt_img_class').AsString := alt_img_class;
    queryTemp.ParamByName('alt_parent_class_2').AsString := alt_parent_class_2;
    queryTemp.ParamByName('alt_img_tag_2').AsString := alt_img_tag_2;
    queryTemp.ParamByName('alt_img_class_2').AsString := alt_img_class_2;
    queryTemp.ParamByName('alt_parent_tag_2').AsString := alt_parent_tag_2;
    queryTemp.ParamByName('alt_parent_tag').AsString := alt_parent_tag;
    queryTemp.ParamByName('alt_parent_class').AsString := alt_parent_class;
    queryTemp.ParamByName('unv_product_tag').AsString := unv_product_tag;
    queryTemp.ParamByName('unv_product_class').AsString := unv_product_class;
    queryTemp.ParamByName('page_param').AsString := page_param;
    queryTemp.ExecSQL;
    DM_Con.Connection.Commit;

    ShowMessage('Inserido com Sucesso');

  except
    on E: Exception do
    begin
      DM_Con.Connection.Rollback;
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
  queryTemp.Free;
end;

function VerifyIfConfigCompanyExists(id_company: integer): Boolean;
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  Result := False;
  try
    queryTemp.Connection := DM_Con.Connection;
    queryTemp.SQL.Text := 'SELECT id_company FROM configcompanies WHERE id_company = :id_company';
    queryTemp.Close;
    queryTemp.ParamByName('id_company').AsInteger := id_company;
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

procedure DeleteConfig(id_company: integer);
var
  queryTemp: TFDQuery;
begin
  queryTemp := TFDQuery.Create(nil);
  try
    queryTemp.Connection := DM_Con.Connection;
    queryTemp.SQL.Text := 'DELETE FROM configcompanies WHERE id_company = :id_company';
    queryTemp.Close;
    queryTemp.ParamByName('id_company').AsInteger := id_company;
    queryTemp.ExecSQL;

    ShowMessage('Excluido com sucesso');
  except
    on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message);
    end;
  end;
  queryTemp.Free;
end;


end.
