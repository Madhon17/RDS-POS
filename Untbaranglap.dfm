object Fsplash: TFsplash
  Left = 284
  Top = 133
  AutoSize = True
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Fsplash'
  ClientHeight = 329
  ClientWidth = 550
  Color = clBtnFace
  TransparentColor = True
  TransparentColorValue = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 32
    Top = 24
  end
end
