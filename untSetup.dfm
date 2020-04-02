object FSetup: TFSetup
  Left = 264
  Top = 157
  Width = 870
  Height = 500
  Caption = 'FSetup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object edtMsSql: TEdit
    Left = 200
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edtMsSql'
  end
  object edtMySql: TEdit
    Left = 200
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edtMySql'
  end
  object Button1: TButton
    Left = 248
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
