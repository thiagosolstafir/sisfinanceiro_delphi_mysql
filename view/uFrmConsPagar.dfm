object frmConsPagar: TfrmConsPagar
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Consultar contas a pagar'
  ClientHeight = 433
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 8
    Top = 408
    Width = 342
    Height = 13
    Caption = 'Legenda (Status): A = Aberto | B = Baixado | C = Cancelado '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 729
    Height = 105
    Caption = ' Filtros: '
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 647
      Top = 21
      Width = 74
      Height = 72
      Cursor = crHandPoint
      Caption = '(F2)'
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFA6A29FA6A29FA6A29FFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA6A29FE5E6E6E5E5E57C7B7C919393FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFA6A29FD6D7D7E7E7E78080808A8B8B919393FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6
        A29FBEBFBFEBEBEB7B7B7B7D7E7E919393FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6
        A29FEAEBEB8B8B8B757676919393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FE4
        E5E5B3B3B3707171919393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FDCDDDDB1
        B1B16F7070919393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FC9C9C9BFBFBF68
        6868919393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FC6C6C66B6C6C91
        9393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FCCCDCD808080919393FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FA6A29FA6A29FA6A2
        9FA6A29FA6A29FA6A29FFF00FFFF00FFA6A29FC9CACA7F7F7F919393FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFA6A29FA6A29FD8D7D7EDEDEDF7F7F7F9F9
        F9F7F7F7EAE9E9D0CDCFA6A29FA6A29FD6D4D6999899737474FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFA6A29FE1E1E1FDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFCFCFCF1F1F1CBC9CBA6A29F767175FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFA6A29FF3F2F1FFFFFFFFFFFEFFFEFEFFFEFEFFFEFEFFFF
        FEFFFFFEFFFFFEFFFFFEFFFFFEF9F9F9DCDADBA6A29FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFA6A29FF6F4F2FFFFFCFFFDFBFFFDFCFFFEFCFFFEFCFFFEFCFFFE
        FCFFFEFCFFFEFDFFFEFDFFFEFDFFFEFDF6F6F5E0DCDDA6A29FFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA6A29FE9E4E0FFFEFAFEFAF7FFFCFAFFFDFAFFFDFAFFFDFBFFFDFAFFFD
        FBFFFDFBFFFDFBFFFDFBFFFDFBFFFEFBFEFBFAF1EFEEC7C2C4A6A29FFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA6A29FFCF7F1FEF9F4FEFAF5FEFBF9FEFBF9FEFBF9FEFBF9FEFBF9FEFC
        F9FEFCF9FEFCF9FEFCF9FEFCF9FEFCF9FFFEFBF9F6F4E7E4E3A6A29FFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FDCD6CFFFFAF3FEF7F0FEF8F2FEFBF7FEFBF7FEFBF7FEFBF7FEFBF7FEFB
        F7FEFBF7FEFBF7FEFBF7FEFBF7FEFBF7FEFBF8FFFBF8F2F0EDB5B1B2A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FEAE2D9FFF8EFFEF6EDFEF8F0FEFBF5FEF9F4FEFAF4FEFAF5FEFAF5FEFA
        F5FEFAF5FEFAF5FEFAF5FEFAF5FEFAF6FEFAF6FFFCF7F5F3EFC6C3C2A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FECE3D9FFF6ECFDF4EAFEF7EFFEF9F4FEF9F3FEF9F3FEF9F3FEF9F3FEF9
        F4FEF9F4FEF9F4FEF9F4FEF9F4FEFAF4FEFAF5FFFBF5F7F1EBCFC8C6A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FE3D9CCFFF5E9FDF3E7FDF6ECFEF9F2FEF8F1FEF8F1FEF8F2FEF9F2FEF9
        F2FEF9F2FEF9F3FEF9F3FEF8F2FEF7EFFDF5ECFEF7EDF7F1E9D1CCC9A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FDBCFC1FFF4E6FDF1E4FDF4E9FEF8F1FEF7F0FEF7F0FEF7F0FEF7F0FEF7
        EFFDF6EDFDF5EAFDF4E8FDF3E7FDF4E9FDF5ECFFF9F1F6F0EACDC7C6A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FCCBFB1FFF3E5FDF1E2FCF1E3FDF2E4FDF2E4FDF2E4FDF1E4FCF1E4FCF1
        E3FDF1E4FDF2E5FDF3E8FEF6ECFEF7EFFEF7EFFEF8F0F2EBE4C2BDBCA6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FB5AB9FF6EADBFEF2E4FCF0E2FDF1E4FDF1E4FDF1E5FDF2E6FDF3E8FDF4
        EAFEF5ECFEF6EEFEF6EFFEF6EEFEF6EDFEF7EEFBF4EBEAE3DDADAAA9A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA6A29FCABCACFEF2E4FDF1E3FEF5ECFEF6EFFEF6EFFEF6EFFEF6EFFEF6
        EEFEF6EEFEF6EDFEF6EDFEF6EDFEF6EDFEF7EEEFE8E1D6CEC8A6A29FFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA6A29FA3978BDCCEBEFFF2E5FEF5EAFEF6EEFEF6EDFEF6EDFEF6EDFEF6
        EDFEF6EDFEF6EDFEF6EDFEF6EDFFF7EFF6EEE6DDD5CDB0AAA9A6A29FFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFA6A29FA69989DCCFBFFFF4E8FFFAF2FEF7EEFEF6EDFEF6EDFEF6
        EDFEF6EDFEF6EDFFF7EFFFF9F1F9F2EAD9D2CABEB6B2A6A29FFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFA6A29FA99E90C8BAAAEBE2D6FDF5EDFFF9F0FFF9F1FFF9
        F0FFF9F0FFF8F0F8F1E9E4DCD3CBC1B8B0A9A6A6A29FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFA6A29FAEA39BA6998ABEB2A5D7CDC1E4DBD1E8DF
        D6E1D9CFD1C8BEBCB2A6B5A9A0A7A19DA6A29FFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFA6A29FA6A29FB7B0AAB2A89EB1A69AAFA4
        98B1A69BAFA69DA8A29FA6A29FA6A29FFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FA6A29FA6A29FA6A2
        9FA6A29FA6A29FA6A29FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton1Click
    end
    object rdgPeriodo: TRadioGroup
      Left = 15
      Top = 21
      Width = 106
      Height = 72
      Caption = ' Per'#237'odo: '
      Items.Strings = (
        'Compra'
        'Vencimento'
        'Baixa')
      TabOrder = 0
    end
    object GroupBox2: TGroupBox
      Left = 127
      Top = 21
      Width = 179
      Height = 72
      Caption = ' Data: '
      TabOrder = 1
      object Label2: TLabel
        Left = 11
        Top = 19
        Width = 31
        Height = 13
        Caption = 'Inicial:'
      end
      object Label3: TLabel
        Left = 11
        Top = 46
        Width = 26
        Height = 13
        Caption = 'Final:'
      end
      object edtDataIni: TtpEdit
        Left = 48
        Top = 16
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 0
        Check = ckDate
        Caracter = tcNumeric
        UF = '[Only for Check = ckIe ]'
      end
      object edtDataFim: TtpEdit
        Left = 48
        Top = 43
        Width = 121
        Height = 21
        Alignment = taLeftJustify
        CharCase = ecUpperCase
        MaxLength = 8
        TabOrder = 1
        Check = ckDate
        Caracter = tcNumeric
        UF = '[Only for Check = ckIe ]'
      end
    end
    object GroupBox3: TGroupBox
      Left = 312
      Top = 21
      Width = 201
      Height = 72
      Caption = ' Documento: '
      TabOrder = 2
      object Label1: TLabel
        Left = 11
        Top = 19
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object Label4: TLabel
        Left = 11
        Top = 46
        Width = 39
        Height = 13
        Caption = 'Parcela:'
      end
      object edtDocumento: TEdit
        Left = 58
        Top = 16
        Width = 134
        Height = 21
        TabOrder = 0
      end
      object edtParcela: TEdit
        Left = 58
        Top = 43
        Width = 134
        Height = 21
        NumbersOnly = True
        TabOrder = 1
      end
    end
    object rdgStatus: TRadioGroup
      Left = 519
      Top = 21
      Width = 122
      Height = 72
      Caption = ' Status: '
      Items.Strings = (
        'Aberto'
        'Cancelado'
        'Finalizado')
      TabOrder = 3
    end
  end
  object GroupBox4: TGroupBox
    Left = 8
    Top = 121
    Width = 729
    Height = 273
    Caption = ' Registros: '
    TabOrder = 1
    object StatusBar1: TStatusBar
      Left = 2
      Top = 252
      Width = 725
      Height = 19
      Panels = <
        item
          Width = 300
        end
        item
          Width = 200
        end>
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 725
      Height = 237
      Align = alClient
      DataSource = dsConsulta
      DrawingStyle = gdsGradient
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'numero_doc'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'parcela'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_vencimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_parcela'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 300
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
          FieldName = 'dt_pagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Visible = True
        end>
    end
  end
  object BitBtn1: TBitBtn
    Left = 586
    Top = 403
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      0800000000000001000000000000000000000001000000010000FF00FF000000
      9A00012AF200002CF600002CF8000733F6000031FE000431FE000134FF000C3C
      FF00123BF100103BF400143EF400103DFB001743F6001B46F6001C47F6001D48
      F6001342FF001A47F8001847FF00174AFD001A48F9001D4BFF001A4CFF001D50
      FF00224DF100224CF400204BF800214CF800214EFC002550F4002D59F4002655
      FA002355FF002659FF002E5BF9002C5FFF00325DF1003B66F3003664FA00386B
      FF004071FA004274FF00497AFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010100
      00000000000101000000000001150B010000000001040601000000000113180B
      010000010306030100000000000110180B010104060301000000000000000111
      190D060603010000000000000000000118120D05010000000000000000000001
      1D181312010000000000000000000124241D1D19110100000000000000012829
      2401011F191F010000000000012A2A26010000011F231D0100000000012C2701
      00000000011F1901000000000001010000000000000101000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 662
    Top = 403
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Glyph.Data = {
      B6020000424DB602000000000000B60100002800000010000000100000000100
      08000000000000010000120B0000120B0000600000006000000000000000FFFF
      FF00FF00FF00C76A6D00CC6E7100D0727500FBDDDE0069333400D2686900D06A
      6B00D56D6E00DE737400DA727300D7707100D56F7000E0777800DF777800DB75
      7600DA747500C3686900C66A6B00DF797A00E57D7E00E07A7B00E37D7E00D374
      7600E9818200E57F8000EA828300E6808100F0878800EE868700F58C8D00F48C
      8D00F28B8C00DC7F8000FA919200F9909200F48E8F00F8929300F9939400FE97
      9800FD979800FC969700FF999A00E3888900FF9A9B00FE999A00FF9B9C00EB8F
      9000E78C8D00E98E8F00FF9D9E00FF9FA000DA888A00D7868700D8888A00EC96
      9700FEA2A300F0999A00B0717200FCAFB000FABCBD00F9C5C600FDDCDD00B966
      6600BB686800E0858500DA8888009A666600FBF0D200FDF3D400FFF5D800FDFC
      DA00FDFCDC00FFFFDD00FFFFDE00FFFFDF00FFFFE000ECFDD400B8E1AC006BDC
      89003DC2640042C468005DD5800039C5650046D4730024CB600029CC630029CB
      630030CD67002FCA640033CB670019CB5B0020CA5E0025CF6300020202020202
      0245070202020202020202020202454541420702020202020202020245451409
      081307454545454545020202450B0D0E0A03073A3D3E3F3F45020202450F1112
      0C0407555F585D3F4502020245161715100507535A5C573F45020202451C1B18
      1D190752595B5E3F45020202451E1A39063807505154563F4502020245201F3B
      403607484E4C4F3F4502020245242622212307474D4B4E3F4502020245292827
      254307474D4B4D3F4502020245302A2B292D07474D4B4D3F4502020245352E2C
      2E3207474D4B4D3F450202024545332F343107464A494A3F450202020202453C
      3744074545454545450202020202020245450702020202020202}
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object btnBaixar: TBitBtn
    Left = 510
    Top = 403
    Width = 75
    Height = 25
    Caption = 'Baixar'
    Enabled = False
    Glyph.Data = {
      CA010000424DCA01000000000000CA0000002800000010000000100000000100
      08000000000000010000120B0000120B0000250000002500000000000000FFFF
      FF00FF00FF0012823A004ED6920062DA9E006ADAA20092E2BA0096E6BE002ACE
      7E002ED282006EE2AA002ED686002ED286004AD292006EE6AE006ADAA60096EA
      C2002ED28A002ECE860032D68E0062DAA60072E6B2009AEAC6002ED28E002ECE
      8A0032DA920036DA960072E6B60072E2B20096EAC60036DA9A0072EABA009AEA
      CA009AEACE00FEFEFE00FFFFFF00020202020202020202020202020202020202
      0202020202020202020202020202020202020203030202020202020202020202
      020203161C030202020202020202020202030F1A1B2003020202020202020202
      030B141A1B1F1C030202020202020203040A0C1E171A1A1D0302020202020308
      05091123231E120D0B0302020202020323082303032311130910030202020202
      032303020203231E130906030202020202030202020203231E19130E03020202
      0202020202020203232118150703020202020202020202020323222303020202
      0202020202020202020323030202020202020202020202020202030202020202
      0202020202020202020202020202}
    TabOrder = 4
    OnClick = btnBaixarClick
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspConsultas'
    RemoteServer = DmDados.LocalConnection
    Left = 336
    Top = 185
    object cdsConsultaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsConsultanumero_doc: TStringField
      DisplayLabel = 'Documento:'
      FieldName = 'numero_doc'
      Required = True
    end
    object cdsConsultadescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o:'
      FieldName = 'descricao'
      Size = 200
    end
    object cdsConsultaparcela: TIntegerField
      DisplayLabel = 'Parcela:'
      FieldName = 'parcela'
      Required = True
    end
    object cdsConsultavlr_parcela: TFMTBCDField
      DisplayLabel = 'Vlr.Parcela:'
      FieldName = 'vlr_parcela'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdsConsultavlr_compra: TFMTBCDField
      DisplayLabel = 'Vlr.Compra:'
      FieldName = 'vlr_compra'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdsConsultavlr_abatido: TFMTBCDField
      DisplayLabel = 'Vlr.Abatido:'
      FieldName = 'vlr_abatido'
      Required = True
      currency = True
      Precision = 20
      Size = 2
    end
    object cdsConsultadt_compra: TDateField
      DisplayLabel = 'Dt.Compra:'
      FieldName = 'dt_compra'
      Required = True
    end
    object cdsConsultadt_cadastro: TDateField
      DisplayLabel = 'Dt.Cadastro:'
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdsConsultadt_vencimento: TDateField
      DisplayLabel = 'Dt.Vencimento:'
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdsConsultadt_pagamento: TDateField
      DisplayLabel = 'Dt.Pagamento:'
      FieldName = 'dt_pagamento'
    end
    object cdsConsultastatus: TStringField
      DisplayLabel = 'Status:'
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsConsultaTotal: TAggregateField
      FieldName = 'Total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlr_parcela)'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 264
    Top = 185
  end
end
