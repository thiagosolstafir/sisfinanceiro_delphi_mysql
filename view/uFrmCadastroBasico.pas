unit uFrmCadastroBasico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ImgList,
  Datasnap.DBClient, Vcl.Buttons;

type
  TfrmCadastroBasico = class(TForm)
    dsTabela: TDataSource;
    Panel1: TPanel;
    ActionToolBar1: TActionToolBar;
    PageControl1: TPageControl;
    tbsCadastro: TTabSheet;
    tbsPesquisar: TTabSheet;
    dbgDados: TDBGrid;
    StatusBar1: TStatusBar;
    ActionManagerCadastro: TActionManager;
    actInserir: TAction;
    actEditar: TAction;
    actExcluir: TAction;
    actSalvar: TAction;
    actCancelar: TAction;
    actPesquisar: TAction;
    ImageListCadastro: TImageList;
    actImprimir: TAction;
    actFechar: TAction;
    Label1: TLabel;
    edtPesquisar: TEdit;
    btnFiltrar: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actInserirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actPesquisarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actCancelarUpdate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actInserirUpdate(Sender: TObject);
    procedure actSalvarUpdate(Sender: TObject);
    procedure actExcluirUpdate(Sender: TObject);
    procedure actEditarUpdate(Sender: TObject);
    procedure actImprimirUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure LimparTudo;
  public
    { Public declarations }
  end;

var
  frmCadastroBasico: TfrmCadastroBasico;

implementation

{$R *.dfm}

uses uDmDados;

procedure TfrmCadastroBasico.actCancelarExecute(Sender: TObject);
begin
  TClientDataSet(dsTabela.DataSet).Cancel;
  LimparTudo;
end;

procedure TfrmCadastroBasico.actCancelarUpdate(Sender: TObject);
begin
  actCancelar.Enabled := actSalvar.Enabled = true;
end;

procedure TfrmCadastroBasico.actEditarExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = tbsPesquisar then
    PageControl1.ActivePage := tbsCadastro;
  TClientDataSet(dsTabela.DataSet).Edit;
end;

procedure TfrmCadastroBasico.actEditarUpdate(Sender: TObject);
begin
  if (dsTabela.State in [dsBrowse]) and (not TClientDataSet(dsTabela.DataSet).IsEmpty) then
    actEditar.Enabled := dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastroBasico.actExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir o registro?','Pergunta',MB_YESNO+MB_ICONQUESTION) = mrYes then
  begin
    try
      TClientDataSet(dsTabela.DataSet).Delete;
      TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);
      Application.MessageBox('Registro excluído com sucesso!','Informação',0+64);
      TClientDataSet(dsTabela.DataSet).Open;
    except on E : Exception do
      raise Exception.Create('Erro ao excluir registro: '+E.Message);
    end;
  end;
end;

procedure TfrmCadastroBasico.actExcluirUpdate(Sender: TObject);
begin
  if (dsTabela.State in [dsBrowse]) and (not TClientDataSet(dsTabela.DataSet).IsEmpty) then
    actExcluir.Enabled := dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastroBasico.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroBasico.actImprimirExecute(Sender: TObject);
begin
  showmessage('Em desenvolvimento...');
end;

procedure TfrmCadastroBasico.actImprimirUpdate(Sender: TObject);
begin
  if (dsTabela.State in [dsBrowse]) and (not TClientDataSet(dsTabela.DataSet).IsEmpty) then
    actImprimir.Enabled := dsTabela.State in [dsBrowse];
end;

procedure TfrmCadastroBasico.actInserirExecute(Sender: TObject);
begin
  if PageControl1.ActivePage = tbsPesquisar then
    PageControl1.ActivePage := tbsCadastro;
  if not TClientDataSet(dsTabela.DataSet).Active then
    TClientDataSet(dsTabela.DataSet).Open;
  TClientDataSet(dsTabela.DataSet).Insert;
end;

procedure TfrmCadastroBasico.actInserirUpdate(Sender: TObject);
begin
  actInserir.Enabled := dsTabela.State in [dsBrowse,dsInactive];
end;

procedure TfrmCadastroBasico.actPesquisarExecute(Sender: TObject);
begin
  TClientDataSet(dsTabela.DataSet).Close;
  TClientDataSet(dsTabela.DataSet).Open;
end;

procedure TfrmCadastroBasico.actSalvarExecute(Sender: TObject);
begin
  try
    TClientDataSet(dsTabela.DataSet).Post;
    TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);

    case dsTabela.State of
      dsEdit  : Application.MessageBox('Registro atualizado com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
      dsInsert: Application.MessageBox('Registro inserido com sucesso!','Informação',MB_OK+MB_ICONINFORMATION);
    end;
    //Limpar os campos
    LimparTudo;
    TClientDataSet(dsTabela.DataSet).Open;
  except on E : Exception do
    raise Exception.Create('Erro ao salvar registro: '+E.Message);
  end;
end;

procedure TfrmCadastroBasico.actSalvarUpdate(Sender: TObject);
begin
  actSalvar.Enabled := dsTabela.State in [dsInsert,dsEdit];
end;

procedure TfrmCadastroBasico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TClientDataSet(dsTabela.DataSet).Cancel;
  TClientDataSet(dsTabela.DataSet).Close;
end;

procedure TfrmCadastroBasico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Close;
  if key = #13 then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmCadastroBasico.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := tbsPesquisar;
end;

procedure TfrmCadastroBasico.LimparTudo;
var
  I: Integer;
begin
  for I := 0 to ComponentCount -1 do
  begin
    if Components[i] is TCustomEdit then
      TCustomEdit(Components[i]).Clear;
  end;
  if PageControl1.ActivePage = tbsCadastro then
    PageControl1.ActivePage := tbsPesquisar;
end;

end.
