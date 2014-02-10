object frmConsPagar: TfrmConsPagar
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Consultar contas a pagar'
  ClientHeight = 478
  ClientWidth = 839
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 88
    Top = 88
    Width = 737
    Height = 120
    DataSource = dsConsulta
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'numero_doc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_compra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vlr_abatido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dt_compra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dt_cadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dt_vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dt_pagamento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status'
        Visible = True
      end>
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsultas'
    RemoteServer = DmDados.LocalConnection
    Left = 384
    Top = 144
    object cdsConsultaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsConsultanumero_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
    end
    object cdsConsultadescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cdsConsultaparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object cdsConsultavlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsConsultavlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsConsultavlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsConsultadt_compra: TDateField
      FieldName = 'dt_compra'
      Required = True
    end
    object cdsConsultadt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdsConsultadt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdsConsultadt_pagamento: TDateField
      FieldName = 'dt_pagamento'
    end
    object cdsConsultastatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 312
    Top = 144
  end
end
