unit uFuncoes;

interface

  uses Vcl.Forms, System.SysUtils, System.Classes, uDmDados,
       Data.DB, Data.SqlExpr;

  procedure CriarForm(T : TComponentClass ;Form : TForm);
  function GetId(Campo, Tabela : String) : Integer;
  function GetLoginCadastrado(Login : String) : Boolean;

implementation

procedure CriarForm(T : TComponentClass ;Form : TForm);
begin
  Application.CreateForm(T,Form);
  try
    Form.ShowModal;
  finally
    FreeAndNil(Form);
  end;
end;

function GetId(Campo, Tabela : String) : Integer;
begin
  with TSQLQuery.Create(nil) do
  try
    SQLConnection := DmDados.SQLConnection;
    Sql.Add('SELECT '+Campo+' FROM '+Tabela+' ORDER BY '+Campo+' DESC LIMIT 1');
    Open;
    Result := Fields[0].AsInteger + 1;
  finally
    Close;
    Free;
  end;
end;

function GetLoginCadastrado(Login : String) : Boolean;
begin
  result := false;
  with TSQLQuery.Create(nil) do
  try
    SQLConnection := DmDados.SQLConnection;
    Sql.Add('SELECT ID FROM USUARIOS WHERE LOGIN = :LOGIN');
    Params[0].AsString := Login;
    Open;
    if not IsEmpty then
      result := true;
  finally
    Close;
    Free;
  end;
end;

end.
