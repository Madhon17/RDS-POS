object Fcarikar: TFcarikar
  Left = 889
  Top = 165
  AutoScroll = False
  BorderIcons = []
  Caption = 'Cari Karyawan'
  ClientHeight = 530
  ClientWidth = 444
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
  object ComboBox1: TComboBox
    Left = 53
    Top = 24
    Width = 116
    Height = 21
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ItemIndex = 0
    ParentFont = False
    TabOrder = 0
    Text = 'ID-LOGIN'
    OnClick = ComboBox1Click
    Items.Strings = (
      'ID-LOGIN'
      'NAMA')
  end
  object edtcari: TEdit
    Left = 173
    Top = 24
    Width = 212
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = edtcariChange
    OnEnter = edtcariEnter
    OnKeyDown = edtcariKeyDown
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 57
    Width = 308
    Height = 350
    TabStop = False
    Color = clWhite
    DataSource = DScari
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'login'
        Title.Alignment = taCenter
        Title.Caption = 'Login'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 213
        Visible = True
      end>
  end
  object btnok: TbsSkinButton
    Left = 138
    Top = 421
    Width = 75
    Height = 25
    Cursor = crHandPoint
    TabOrder = 3
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'OK'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnokClick
  end
  object btncancel: TbsSkinButton
    Left = 226
    Top = 421
    Width = 75
    Height = 25
    Cursor = crHandPoint
    TabOrder = 4
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = False
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Cancel'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncancelClick
  end
  object Qcari: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT    login, nama'
      'FROM         tkasir'
      'ORDER BY login')
    Left = 16
    Top = 16
    object Qcarilogin: TStringField
      FieldName = 'login'
      Origin = 'VIZTA.tkasir.login'
      FixedChar = True
      Size = 5
    end
    object Qcarinama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tkasir.nama'
      FixedChar = True
    end
  end
  object DScari: TDataSource
    DataSet = Qcari
    Left = 16
    Top = 32
  end
end
