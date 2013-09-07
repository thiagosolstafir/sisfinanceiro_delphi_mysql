program SisFinanceiro;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {frmPrincipal},
  uDmDados in 'datamodule\uDmDados.pas' {DmDados: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  uFrmCadastroBasico in 'view\uFrmCadastroBasico.pas' {frmCadastroBasico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Metropolis UI Blue');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDmDados, DmDados);
  Application.Run;
end.
