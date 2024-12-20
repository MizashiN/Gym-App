unit DM_Connection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteWrapper.Stat, Winapi.ShellAPI, Winapi.Windows, VCl.Forms;

type
  TDM_Con = class(TDataModule)
    Connection: TFDConnection;
    Transaction: TFDTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Con: TDM_Con;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM_Con.DataModuleCreate(Sender: TObject);
var
  ExePath: string;
  ProcessInfo: TProcessInformation;
  StartupInfo: TStartupInfo;
begin
  ExePath := ExtractFilePath(Application.ExeName) + 'AddCompany.exe';
  if FileExists(ExePath) then
  begin
  ZeroMemory(@StartupInfo, SizeOf(StartupInfo));
  StartupInfo.cb := SizeOf(StartupInfo);
    if CreateProcess(nil, PChar(ExePath), nil, nil, False, 0, nil, nil, StartupInfo, ProcessInfo) then
    begin
      WaitForSingleObject(ProcessInfo.hProcess, INFINITE);

      Connection.Params.Database := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + 'database.db';
      Connection.Connected := True;
    end;
  end;

end;

end.
