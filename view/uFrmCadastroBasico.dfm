object frmCadastroBasico: TfrmCadastroBasico
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro'
  ClientHeight = 477
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 458
    Width = 786
    Height = 19
    Panels = <>
    ExplicitLeft = 136
    ExplicitTop = 280
    ExplicitWidth = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 392
    Width = 786
    Height = 66
    Align = alBottom
    TabOrder = 1
    object ActionToolBar1: TActionToolBar
      Left = 1
      Top = 1
      Width = 784
      Height = 59
      Caption = 'ActionToolBar1'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 7171437
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Spacing = 0
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 786
    Height = 392
    ActivePage = tbsCadastro
    Align = alClient
    TabOrder = 2
    object tbsCadastro: TTabSheet
      Caption = 'Cadastro'
    end
    object tbsPesquisar: TTabSheet
      Caption = 'Pesquisar'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 64
        Width = 778
        Height = 300
        Align = alBottom
        DataSource = dsTabela
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object dsTabela: TDataSource
    Left = 728
    Top = 32
  end
end
