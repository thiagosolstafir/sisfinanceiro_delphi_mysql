program SisFinanceiro;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  uDmDados in 'datamodule\uDmDados.pas' {DmDados: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  uFrmCadastroBasico in 'view\uFrmCadastroBasico.pas' {frmCadastroBasico},
  uFrmCadastroUsuarios in 'view\uFrmCadastroUsuarios.pas' {frmCadastroUsuarios},
  uFuncoes in 'classes\uFuncoes.pas',
  uFrmCadastroCaixa in 'view\uFrmCadastroCaixa.pas' {frmCadastroCaixa},
  uFrmCadastroPagar in 'view\uFrmCadastroPagar.pas' {frmCadastroPagar},
  uFrmCadastroReceber in 'view\uFrmCadastroReceber.pas' {frmCadastroReceber},
  uDmRelatorios in 'datamodule\uDmRelatorios.pas' {DmRelatorios: TDataModule},
  uFrmConsReceber in 'view\uFrmConsReceber.pas' {frmConsReceber},
  uFrmConsPagar in 'view\uFrmConsPagar.pas' {frmConsPagar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmDados, DmDados);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConsPagar, frmConsPagar);
  Application.Run;
end.
