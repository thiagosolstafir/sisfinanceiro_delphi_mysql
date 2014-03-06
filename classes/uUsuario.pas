unit uUsuario;

interface

type
  TUsuario = class
  private
    fLogin : String;
    fSenha : String;
  public
    property Login: String read fLogin write fLogin;
    property Senha: String read fSenha write fSenha;

    function Logar : boolean;
  end;

implementation

uses
  Data.SqlExpr, uDmDados;

{ TUsuario }

function TUsuario.Logar: boolean;
begin
  with TSQLQuery.Create(nil) do
  try
    SQLConnection := DmDados.SQLConnection;
    Sql.Add('SELECT ID FROM USUARIOS WHERE LOGIN = :LOGIN AND SENHA = :SENHA');
    Params[0].AsString := fLogin;
    Params[1].AsString := fSenha;
    Open;
    result := fields[0].AsInteger > 0;
  finally
    Close;
    Free;
  end;
end;

end.
