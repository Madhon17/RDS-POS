object Fmessage: TFmessage
  Left = 628
  Top = 168
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderStyle = bsNone
  Caption = 'Fmessage'
  ClientHeight = 516
  ClientWidth = 623
  Color = clLime
  TransparentColor = True
  TransparentColorValue = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 625
    Height = 489
    Cursor = crHandPoint
    DragMode = dmAutomatic
    Stretch = True
    OnDragOver = Image1DragOver
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 119
    Width = 553
    Height = 282
    TabStop = False
    BorderStyle = bsNone
    Ctl3D = False
    DataSource = DSmessage
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tanggal'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 148
        Visible = True
      end
      item
        Alignment = taCenter
        Color = 14806704
        Expanded = False
        FieldName = 'dari'
        Title.Alignment = taCenter
        Title.Caption = 'Asal'
        Width = 74
        Visible = True
      end
      item
        Color = 11073531
        Expanded = False
        FieldName = 'pesan'
        Title.Caption = 'Pesan'
        Width = 246
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kasir'
        Title.Alignment = taCenter
        Title.Caption = 'Opp'
        Width = 63
        Visible = True
      end>
  end
  object edtPesan: TAEdit
    Left = 66
    Top = 416
    Width = 335
    Height = 30
    BorderStyle = bsNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 30
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Alignment = taCenter
  end
  object edtAsal: TAEdit
    Left = 66
    Top = 44
    Width = 87
    Height = 22
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 30
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    Alignment = taCenter
  end
  object flsPanah: TShockwaveFlash
    Left = 24
    Top = 73
    Width = 569
    Height = 16
    TabStop = False
    TabOrder = 3
    OnEnter = flsPanahEnter
    ControlData = {
      67556655000C0000CF3A0000A701000008000200000000000800000000000800
      0000000008000E000000570069006E0064006F00770000000800060000002D00
      310000000800060000002D003100000008000A00000048006900670068000000
      08000200000000000800060000002D0031000000080000000000080002000000
      0000080010000000530068006F00770041006C006C0000000800040000003000
      0000080004000000300000000800020000000000080000000000080002000000
      00000D0000000000000000000000000000000000080004000000310000000800
      0400000030000000080000000000080004000000300000000800080000006100
      6C006C00000008000C000000660061006C0073006500000008000C0000006600
      61006C007300650000000800060000002D0031000000}
  end
  object edtPesanMasuk: TEdit
    Left = 160
    Top = 44
    Width = 353
    Height = 22
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 4
  end
  object LMDButton1: TLMDButton
    Left = 520
    Top = 43
    Width = 41
    Height = 25
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = LMDButton1Click
  end
  object LMDButton2: TLMDButton
    Left = 432
    Top = 416
    Width = 89
    Height = 25
    Caption = 'Send'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = LMDButton2Click
  end
  object Qmessage: TZQuery
    AfterScroll = QmessageAfterScroll
    SQL.Strings = (
      'SELECT      *'
      'FROM         Tmessage'
      'ORDER BY id DESC'
      'limit 0, 13')
    Params = <>
    Left = 210
    object Qmessageid: TAutoIncField
      FieldName = 'id'
    end
    object Qmessagetanggal: TDateTimeField
      FieldName = 'tanggal'
      DisplayFormat = 'dd-MM-yy HH:mm'
    end
    object Qmessagepesan: TStringField
      FieldName = 'pesan'
      FixedChar = True
      Size = 200
    end
    object Qmessagedari: TStringField
      FieldName = 'dari'
      FixedChar = True
      Size = 50
    end
    object Qmessagestatus: TStringField
      FieldName = 'status'
    end
    object Qmessagekasir: TStringField
      FieldName = 'kasir'
      FixedChar = True
      Size = 5
    end
  end
  object Qjumlah: TZQuery
    SQL.Strings = (
      'SELECT     cast(COUNT(*) as signed int) AS jumlah'
      'FROM         Tmessage'
      'WHERE     (status = 0)')
    Params = <>
    Left = 242
    object Qjumlahjumlah: TLargeintField
      FieldName = 'jumlah'
    end
  end
  object Qupdate: TZQuery
    SQL.Strings = (
      'UPDATE    Tmessage'
      'SET              status = 1, kasir = :kasir'
      'WHERE     (id = :id)')
    Params = <
      item
        DataType = ftString
        Name = 'kasir'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 274
    ParamData = <
      item
        DataType = ftString
        Name = 'kasir'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object AutoIncField2: TAutoIncField
      FieldName = 'id'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'tanggal'
    end
    object StringField4: TStringField
      FieldName = 'pesan'
      FixedChar = True
      Size = 200
    end
    object StringField5: TStringField
      FieldName = 'dari'
      FixedChar = True
      Size = 50
    end
    object BooleanField2: TStringField
      FieldName = 'status'
    end
    object StringField6: TStringField
      FieldName = 'kasir'
      FixedChar = True
      Size = 5
    end
  end
  object DSmessage: TDataSource
    DataSet = Qmessage
    Left = 208
    Top = 16
  end
  object Timer1: TTimer
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 336
  end
  object Qinsert: TZQuery
    SQL.Strings = (
      'UPDATE    Tmessage'
      'SET              status = 1, kasir = :kasir'
      'WHERE     (id = :id)')
    Params = <
      item
        DataType = ftString
        Name = 'kasir'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    Left = 306
    ParamData = <
      item
        DataType = ftString
        Name = 'kasir'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'tanggal'
    end
    object StringField1: TStringField
      FieldName = 'pesan'
      FixedChar = True
      Size = 200
    end
    object StringField2: TStringField
      FieldName = 'dari'
      FixedChar = True
      Size = 50
    end
    object BooleanField1: TStringField
      FieldName = 'status'
    end
    object StringField3: TStringField
      FieldName = 'kasir'
      FixedChar = True
      Size = 5
    end
  end
end
