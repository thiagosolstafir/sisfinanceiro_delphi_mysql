unit uFrmCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroBasico, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCadastroUsuarios = class(TfrmCadastroBasico)
    edtNome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtLogin: TEdit;
    edtSenha: TEdit;
    procedure acSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuarios: TfrmCadastroUsuarios;

implementation

{$R *.dfm}

uses uDmDados, uFuncoes;

procedure TfrmCadastroUsuarios.acSalvarExecute(Sender: TObject);
begin
  if Trim(edtNome.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo nome.','Atenção',MB_OK+MB_ICONWARNING);
    edtNome.SetFocus;
    Abort;
  end;
  if Trim(edtLogin.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo login.','Atenção',MB_OK+MB_ICONWARNING);
    edtLogin.SetFocus;
    Abort;
  end;
  if GetLoginCadastrado(trim(edtLogin.Text)) then
  begin
    Application.MessageBox('Login encontra-se cadastrado.','Atenção',MB_OK+MB_ICONWARNING);
    edtLogin.SetFocus;
    Abort;
  end;
  if Trim(edtSenha.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo senha.','Atenção',MB_OK+MB_ICONWARNING);
    edtSenha.SetFocus;
    Abort;
  end;
  with DmDados do
  begin
    cdsUsuariosid.AsInteger           := GetId('ID','USUARIOS');
    cdsUsuariosnome.AsString          := trim(edtNome.Text);
    cdsUsuarioslogin.AsString         := trim(edtLogin.Text);
    cdsUsuariossenha.AsString         := trim(edtSenha.Text);
    cdsUsuariosstatus.AsString        := 'A';
    cdsUsuariosdt_cadastro.AsDateTime := now;
  end;
  inherited;
end;

end.
