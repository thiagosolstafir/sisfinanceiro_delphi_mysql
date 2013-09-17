unit uFrmCadastroBasico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.PlatformDefaultStyleActnCtrls, System.Actions, Vcl.ActnList, Vcl.ImgList,
  Datasnap.DBClient;

type
  TfrmCadastroBasico = class(TForm)
    dsTabela: TDataSource;
    Panel1: TPanel;
    ActionToolBar1: TActionToolBar;
    PageControl1: TPageControl;
    tbsCadastro: TTabSheet;
    tbsPesquisar: TTabSheet;
    DBGrid1: TDBGrid;
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
  private
    { Private declarations }
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
  TClientDataSet(dsTabela).Cancel;
end;

procedure TfrmCadastroBasico.actCancelarUpdate(Sender: TObject);
begin
  TAction(actCancelar).Enabled := TAction(actSalvar).Enabled = true;
end;

procedure TfrmCadastroBasico.actEditarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.actExcluirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroBasico.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.actInserirExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.actPesquisarExecute(Sender: TObject);
begin
  TClientDataSet(dsTabela).Close;
  TClientDataSet(dsTabela).Open;
end;

procedure TfrmCadastroBasico.actSalvarExecute(Sender: TObject);
begin
//
end;

procedure TfrmCadastroBasico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TClientDataSet(dsTabela).Cancel;
  TClientDataSet(dsTabela).Close;
end;

procedure TfrmCadastroBasico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Close;
  if key = #13 then
    Perform(WM_NEXTDLGCTL,0,0);
end;

end.
