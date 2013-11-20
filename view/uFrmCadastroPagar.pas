unit uFrmCadastroPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmCadastroBasico, System.Actions,
  Vcl.ActnList, Vcl.ImgList, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, tpEdit, Datasnap.DBClient;

type
  TfrmCadastroPagar = class(TfrmCadastroBasico)
    Label2: TLabel;
    edtDocumento: TEdit;
    edtDescricao: TEdit;
    Label3: TLabel;
    edtQtdeParcelas: TEdit;
    Label4: TLabel;
    edtVlrCompra: TtpEdit;
    Label6: TLabel;
    edtDtCompra: TtpEdit;
    Label7: TLabel;
    edtVariacao: TEdit;
    Label8: TLabel;
    Button1: TButton;
    cdsParcelas: TClientDataSet;
    DBGrid1: TDBGrid;
    dsParcelas: TDataSource;
    cdsParcelasParcela: TIntegerField;
    cdsParcelasValor: TCurrencyField;
    cdsParcelasVencimento: TDateField;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPagar: TfrmCadastroPagar;

implementation

{$R *.dfm}

uses uDmDados, uFuncoes;

procedure TfrmCadastroPagar.Button1Click(Sender: TObject);
var
  I: Integer;
begin
  if edtDocumento.Text = '' then
  begin
    Application.MessageBox('Preencha o campo documento.','Atenção',MB_OK+MB_ICONWARNING);
    edtDocumento.SetFocus;
    Abort;
  end;
  if edtDescricao.Text = '' then
  begin
    Application.MessageBox('Preencha o campo descrição.','Atenção',MB_OK+MB_ICONWARNING);
    edtDescricao.SetFocus;
    Abort;
  end;
  if edtQtdeParcelas.Text = '' then
  begin
    Application.MessageBox('Preencha o campo quantidade de parcela(s).','Atenção',MB_OK+MB_ICONWARNING);
    edtQtdeParcelas.SetFocus;
    Abort;
  end;
  if edtVariacao.Text = '' then
  begin
    Application.MessageBox('Preencha o campo variação da(s) parcela(s).','Atenção',MB_OK+MB_ICONWARNING);
    edtVariacao.SetFocus;
    Abort;
  end;
  if StringParaFloat(edtVlrCompra.Text) = 0 then
  begin
    Application.MessageBox('Preencha o campo valor da compra.','Atenção',MB_OK+MB_ICONWARNING);
    edtVlrCompra.SetFocus;
    Abort;
  end;
  if edtDtCompra.Text = '' then
  begin
    Application.MessageBox('Preencha o campo data da compra.','Atenção',MB_OK+MB_ICONWARNING);
    edtDtCompra.SetFocus;
    Abort;
  end;

  cdsParcelas.EmptyDataSet;
  for I := 1 to StrToInt(edtQtdeParcelas.Text) do
  begin
    cdsParcelas.Insert;
    cdsParcelasParcela.AsInteger     := i;
    cdsParcelasValor.AsCurrency      := StringParaFloat(edtVlrCompra.Text) / StrToInt(edtQtdeParcelas.Text);
    cdsParcelasVencimento.AsDateTime := StrToDate(edtDtCompra.Text) + (StrToInt(edtVariacao.Text) * i);
    cdsParcelas.Post;
  end;
end;

procedure TfrmCadastroPagar.Button2Click(Sender: TObject);
begin
  cdsParcelas.EmptyDataSet;
end;

end.
