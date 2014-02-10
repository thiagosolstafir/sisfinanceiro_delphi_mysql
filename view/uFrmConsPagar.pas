unit uFrmConsPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmConsPagar = class(TForm)
    DBGrid1: TDBGrid;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    cdsConsultaid: TIntegerField;
    cdsConsultanumero_doc: TStringField;
    cdsConsultadescricao: TStringField;
    cdsConsultaparcela: TIntegerField;
    cdsConsultavlr_parcela: TFMTBCDField;
    cdsConsultavlr_compra: TFMTBCDField;
    cdsConsultavlr_abatido: TFMTBCDField;
    cdsConsultadt_compra: TDateField;
    cdsConsultadt_cadastro: TDateField;
    cdsConsultadt_vencimento: TDateField;
    cdsConsultadt_pagamento: TDateField;
    cdsConsultastatus: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsPagar: TfrmConsPagar;

implementation

{$R *.dfm}

uses uDmDados;

procedure TfrmConsPagar.FormShow(Sender: TObject);
begin
  cdsConsulta.Close;
  cdsConsulta.CommandText := 'select * from contas_pagar';
  cdsConsulta.Open;
end;

end.
