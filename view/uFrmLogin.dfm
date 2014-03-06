object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Entrar no sistema'
  ClientHeight = 143
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 35
    Width = 40
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object Label2: TLabel
    Left = 32
    Top = 62
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object edtLogin: TEdit
    Left = 72
    Top = 32
    Width = 321
    Height = 21
    MaxLength = 20
    TabOrder = 0
  end
  object edtSenha: TEdit
    Left = 72
    Top = 59
    Width = 321
    Height = 21
    MaxLength = 20
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnEntrar: TBitBtn
    Left = 318
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 2
    OnClick = btnEntrarClick
  end
end
