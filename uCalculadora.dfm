object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 321
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 25
  object Button1: TButton
    Left = 240
    Top = 24
    Width = 114
    Height = 65
    Caption = 'Somar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 64
    Top = 40
    Width = 137
    Height = 33
    EditLabel.Width = 130
    EditLabel.Height = 25
    EditLabel.Caption = 'Primeiro valor'
    NumbersOnly = True
    TabOrder = 1
    Text = '0'
  end
  object LabeledEdit2: TLabeledEdit
    Left = 64
    Top = 120
    Width = 137
    Height = 33
    EditLabel.Width = 134
    EditLabel.Height = 25
    EditLabel.Caption = 'Segundo valor'
    NumbersOnly = True
    TabOrder = 2
    Text = '0'
  end
  object LabeledEdit3: TLabeledEdit
    Left = 64
    Top = 192
    Width = 137
    Height = 33
    EditLabel.Width = 91
    EditLabel.Height = 25
    EditLabel.Caption = 'Resultado'
    NumbersOnly = True
    TabOrder = 3
    Text = '0'
  end
  object Button2: TButton
    Left = 240
    Top = 95
    Width = 114
    Height = 65
    Caption = 'Subtrair'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 240
    Top = 166
    Width = 114
    Height = 65
    Caption = 'Multiplicar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 240
    Top = 237
    Width = 114
    Height = 65
    Caption = 'Dividir'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 368
    Top = 24
    Width = 114
    Height = 65
    Caption = 'Limpar'
    TabOrder = 7
    OnClick = Button5Click
  end
end
