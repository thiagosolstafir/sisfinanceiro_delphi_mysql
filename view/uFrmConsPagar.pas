unit uFrmConsPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, tpEdit, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TfrmConsPagar = class(TForm)
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
    GroupBox1: TGroupBox;
    RadioGroup1: TRadioGroup;
    GroupBox2: TGroupBox;
    tpEdit1: TtpEdit;
    tpEdit2: TtpEdit;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    edtDocumento: TEdit;
    edtParcela: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    RadioGroup2: TRadioGroup;
    SpeedButton1: TSpeedButton;
    GroupBox4: TGroupBox;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure Pesquisar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsPagar: TfrmConsPagar;

implementation

{$R *.dfm}

uses uDmDados, uFuncoes;

procedure TfrmConsPagar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsPagar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_f2 then
    Pesquisar;
end;

procedure TfrmConsPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    Close;
  if key = #13 then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmConsPagar.Pesquisar;
var
  Sql : TStringList;
begin
  Sql := TStringList.Create;
  try
    sql.Add('select * from contas_pagar');

    cdsConsulta.Close;
    cdsConsulta.CommandText := Sql.Text;
    cdsConsulta.Open;
  finally
    FreeAndNil(Sql);
  end;
end;

procedure TfrmConsPagar.SpeedButton1Click(Sender: TObject);
begin
  Pesquisar;
end;

end.
