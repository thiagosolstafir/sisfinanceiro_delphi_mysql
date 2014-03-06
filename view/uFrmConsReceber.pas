unit uFrmConsReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, tpEdit, Vcl.ExtCtrls, Data.DB, Datasnap.DBClient;

type
  TfrmConsReceber = class(TForm)
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    RadioGroup1: TRadioGroup;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    tpEdit1: TtpEdit;
    tpEdit2: TtpEdit;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    edtDocumento: TEdit;
    edtParcela: TEdit;
    RadioGroup2: TRadioGroup;
    GroupBox4: TGroupBox;
    StatusBar1: TStatusBar;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cdsConsultaid: TIntegerField;
    cdsConsultadocumento: TStringField;
    cdsConsultadescricao: TStringField;
    cdsConsultaparcela: TIntegerField;
    cdsConsultavlr_parcela: TFMTBCDField;
    cdsConsultavlr_compra: TFMTBCDField;
    cdsConsultavlr_abatido: TFMTBCDField;
    cdsConsultadt_compra: TDateField;
    cdsConsultadt_vencimento: TDateField;
    cdsConsultadt_cadastro: TDateField;
    cdsConsultastatus: TStringField;
    cdsConsultadt_pagamento: TDateField;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure Pesquisar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsReceber: TfrmConsReceber;

implementation

{$R *.dfm}

uses uDmDados;

procedure TfrmConsReceber.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsReceber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = Vk_f2 then
    Pesquisar;
end;

procedure TfrmConsReceber.Pesquisar;
var
  Sql : TStringList;
begin
  Sql := TStringList.Create;
  try
    sql.Add('select * from contas_receber');

    cdsConsulta.Close;
    cdsConsulta.CommandText := Sql.Text;
    cdsConsulta.Open;
  finally
    FreeAndNil(Sql);
  end;
end;

procedure TfrmConsReceber.SpeedButton1Click(Sender: TObject);
begin
  Pesquisar;
end;

end.
