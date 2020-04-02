object fMemberUpdate: TfMemberUpdate
  Left = 429
  Top = 188
  AutoScroll = False
  BorderIcons = []
  Caption = 'Update Member'
  ClientHeight = 211
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 35
    Top = 36
    Width = 96
    Height = 13
    Caption = 'Database Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 35
    Top = 60
    Width = 91
    Height = 13
    Caption = 'Database Name'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object edtServer: TbsSkinEdit
    Left = 163
    Top = 32
    Width = 189
    Height = 18
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    UseSkinFont = False
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = False
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btnUpdate: TbsSkinXFormButton
    Left = 35
    Top = 121
    Width = 317
    Height = 27
    TabOrder = 1
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Pitch = fpFixed
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    CanFocused = False
    Down = False
    GroupIndex = 0
    Caption = 'Full Update'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnUpdateClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnExit: TbsSkinXFormButton
    Left = 163
    Top = 161
    Width = 75
    Height = 27
    TabOrder = 2
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Pitch = fpFixed
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    CanFocused = False
    Down = False
    GroupIndex = 0
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnExitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object edtDatabase: TbsSkinEdit
    Left = 163
    Top = 56
    Width = 189
    Height = 18
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    UseSkinFont = False
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = False
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object BtnUpdateRemote: TbsSkinXFormButton
    Left = 35
    Top = 89
    Width = 317
    Height = 27
    TabOrder = 4
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Pitch = fpFixed
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    CanFocused = False
    Down = False
    GroupIndex = 0
    Caption = 'Quick Update'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BtnUpdateRemoteClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object bsSkinMessage1: TbsSkinMessage
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    SkinData = FrmInduk.bsSkinData2
    CtrlSkinData = FrmInduk.bsSkinData1
    ButtonSkinDataName = 'button'
    MessageLabelSkinDataName = 'stdlabel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = 14
    DefaultButtonFont.Name = 'Arial'
    DefaultButtonFont.Style = []
    UseSkinFont = True
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = True
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ShowObjectHint = False
    UseDefaultObjectHint = True
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 230
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = FrmInduk.bsSkinData2
    MinHeight = 200
    MinWidth = 394
    MaxHeight = 525
    MaxWidth = 1024
    Magnetic = False
    MagneticSize = 0
    BorderIcons = []
    Left = 24
  end
  object dbMember: TDatabase
    DatabaseName = 'dbMember'
    DriverName = 'MSSQL'
    LoginPrompt = False
    Params.Strings = (
      'server name=127.0.0.1'
      'database name=vizta'
      'USER NAME=vizta'
      'password=kancut')
    SessionName = 'Default'
    Left = 112
    Top = 8
  end
  object QmemberPusat: TQuery
    DatabaseName = 'dbMember'
    SQL.Strings = (
      'SELECT     *'
      'FROM         tmember'
      'ORDER BY id')
    Left = 344
    Top = 8
    object QmemberPusatid: TStringField
      FieldName = 'id'
      Origin = 'DBMEMBER.tmember.id'
      FixedChar = True
      Size = 7
    end
    object QmemberPusatid_kategori: TSmallintField
      FieldName = 'id_kategori'
      Origin = 'DBMEMBER.tmember.id_kategori'
    end
    object QmemberPusattgl_registrasi: TDateTimeField
      FieldName = 'tgl_registrasi'
      Origin = 'DBMEMBER.tmember.tgl_registrasi'
    end
    object QmemberPusatberlaku: TDateTimeField
      FieldName = 'berlaku'
      Origin = 'DBMEMBER.tmember.berlaku'
    end
    object QmemberPusatnama: TStringField
      FieldName = 'nama'
      Origin = 'DBMEMBER.tmember.nama'
      FixedChar = True
      Size = 50
    end
    object QmemberPusatTgl_lahir: TDateTimeField
      FieldName = 'Tgl_lahir'
      Origin = 'DBMEMBER.tmember.Tgl_lahir'
    end
    object QmemberPusatAgama: TSmallintField
      FieldName = 'Agama'
      Origin = 'DBMEMBER.tmember.Agama'
    end
    object QmemberPusatJenis_kelamin: TBooleanField
      FieldName = 'Jenis_kelamin'
      Origin = 'DBMEMBER.tmember.Jenis_kelamin'
    end
    object QmemberPusatHP: TStringField
      FieldName = 'HP'
      Origin = 'DBMEMBER.tmember.HP'
      FixedChar = True
    end
    object QmemberPusatTelp: TStringField
      FieldName = 'Telp'
      Origin = 'DBMEMBER.tmember.Telp'
      FixedChar = True
    end
    object QmemberPusatpoin: TIntegerField
      FieldName = 'poin'
      Origin = 'DBMEMBER.tmember.poin'
    end
    object QmemberPusatalamat1: TStringField
      FieldName = 'alamat1'
      Origin = 'DBMEMBER.tmember.alamat1'
      FixedChar = True
      Size = 100
    end
    object QmemberPusatalamat2: TStringField
      FieldName = 'alamat2'
      Origin = 'DBMEMBER.tmember.alamat2'
      FixedChar = True
      Size = 100
    end
    object QmemberPusattglUpdate: TDateTimeField
      FieldName = 'tglUpdate'
      Origin = 'DBMEMBER.tmember.tglUpdate'
    end
  end
  object QupdateLocal: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      '        INSERT INTO tmember'
      
        '                      (id, id_kategori, tgl_registrasi, berlaku,' +
        ' nama, Tgl_lahir, Agama, Jenis_kelamin, HP, Telp, poin, alamat1,' +
        ' alamat2, tglUpdate)'
      
        '        VALUES    (:id, :id_kategori, :tgl_registrasi, :berlaku,' +
        ' :nama, :Tgl_lahir, :Agama, :Jenis_kelamin, :HP, :Telp, :poin, :' +
        'alamat1, :alamat2, :tglUpdate)')
    Left = 312
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id_kategori'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'tgl_registrasi'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'berlaku'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'nama'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Tgl_lahir'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Agama'
        ParamType = ptUnknown
      end
      item
        DataType = ftBoolean
        Name = 'Jenis_kelamin'
        ParamType = ptUnknown
        Value = False
      end
      item
        DataType = ftString
        Name = 'HP'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Telp'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'poin'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'alamat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'alamat2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'tglUpdate'
        ParamType = ptUnknown
      end>
  end
  object QmemberLocal: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     *'
      'FROM         tmember'
      'ORDER BY id')
    Left = 312
    Top = 8
    object QmemberLocalid: TStringField
      FieldName = 'id'
      Origin = 'VIZTA.tmember.id'
      FixedChar = True
      Size = 7
    end
    object QmemberLocalid_kategori: TSmallintField
      FieldName = 'id_kategori'
      Origin = 'VIZTA.tmember.id_kategori'
    end
    object QmemberLocaltgl_registrasi: TDateTimeField
      FieldName = 'tgl_registrasi'
      Origin = 'VIZTA.tmember.tgl_registrasi'
    end
    object QmemberLocalberlaku: TDateTimeField
      FieldName = 'berlaku'
      Origin = 'VIZTA.tmember.berlaku'
    end
    object QmemberLocalnama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tmember.nama'
      FixedChar = True
      Size = 50
    end
    object QmemberLocalTgl_lahir: TDateTimeField
      FieldName = 'Tgl_lahir'
      Origin = 'VIZTA.tmember.Tgl_lahir'
    end
    object QmemberLocalAgama: TSmallintField
      FieldName = 'Agama'
      Origin = 'VIZTA.tmember.Agama'
    end
    object QmemberLocalJenis_kelamin: TBooleanField
      FieldName = 'Jenis_kelamin'
      Origin = 'VIZTA.tmember.Jenis_kelamin'
    end
    object QmemberLocalHP: TStringField
      FieldName = 'HP'
      Origin = 'VIZTA.tmember.HP'
      FixedChar = True
    end
    object QmemberLocalTelp: TStringField
      FieldName = 'Telp'
      Origin = 'VIZTA.tmember.Telp'
      FixedChar = True
    end
    object QmemberLocalpoin: TIntegerField
      FieldName = 'poin'
      Origin = 'VIZTA.tmember.poin'
    end
    object QmemberLocalalamat1: TStringField
      FieldName = 'alamat1'
      Origin = 'VIZTA.tmember.alamat1'
      FixedChar = True
      Size = 100
    end
    object QmemberLocalalamat2: TStringField
      FieldName = 'alamat2'
      Origin = 'VIZTA.tmember.alamat2'
      FixedChar = True
      Size = 100
    end
    object QmemberLocaltglUpdate: TDateTimeField
      FieldName = 'tglUpdate'
      Origin = 'VIZTA.tmember.tglUpdate'
    end
  end
  object QupdatePusat: TQuery
    DatabaseName = 'dbMember'
    SQL.Strings = (
      '        INSERT INTO tmember'
      
        '                      (id, id_kategori, tgl_registrasi, berlaku,' +
        ' nama, Tgl_lahir, Agama, Jenis_kelamin, HP, Telp, poin, alamat1,' +
        ' alamat2, tglUpdate)'
      
        '        VALUES    (:id, :id_kategori, :tgl_registrasi, :berlaku,' +
        ' :nama, :Tgl_lahir, :Agama, :Jenis_kelamin, :HP, :Telp, :poin, :' +
        'alamat1, :alamat2, :tglUpdate)')
    Left = 344
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'id_kategori'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'tgl_registrasi'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'berlaku'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'nama'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Tgl_lahir'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Agama'
        ParamType = ptUnknown
      end
      item
        DataType = ftBoolean
        Name = 'Jenis_kelamin'
        ParamType = ptUnknown
        Value = False
      end
      item
        DataType = ftString
        Name = 'HP'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Telp'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'poin'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'alamat1'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'alamat2'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'tglUpdate'
        ParamType = ptUnknown
      end>
  end
  object QdelLocal: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'DELETE FROM tmember'
      'WHERE     (id = :id)')
    Left = 312
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object QdelPusat: TQuery
    DatabaseName = 'dbMember'
    SQL.Strings = (
      'DELETE FROM tmember'
      'WHERE     (id = :id)')
    Left = 344
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
        Value = ''
      end>
  end
  object QmaxPusat: TQuery
    DatabaseName = 'dbMember'
    SQL.Strings = (
      
        'SELECT     MAX(tmember.id) AS id, tkategorimember.id AS id_kateg' +
        'ori'
      'FROM         tmember RIGHT OUTER JOIN'
      
        '                      tkategorimember ON tmember.id_kategori = t' +
        'kategorimember.id'
      'GROUP BY tkategorimember.id'
      'ORDER BY tkategorimember.id')
    Left = 64
    Top = 160
    object QmaxPusatid: TStringField
      FieldName = 'id'
      Origin = 'DBMEMBER.tmember.id'
      FixedChar = True
      Size = 7
    end
    object QmaxPusatid_kategori: TSmallintField
      FieldName = 'id_kategori'
      Origin = 'DBMEMBER.tmember.id_kategori'
    end
  end
  object QmaxLocal: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     MAX(tmember.id) AS id, tkategorimember.id AS id_kateg' +
        'ori'
      'FROM         tmember RIGHT OUTER JOIN'
      
        '                      tkategorimember ON tmember.id_kategori = t' +
        'kategorimember.id'
      'GROUP BY tkategorimember.id'
      'ORDER BY tkategorimember.id')
    Left = 32
    Top = 160
    object QmaxLocalid: TStringField
      FieldName = 'id'
      Origin = 'VIZTA.tmember.id'
      FixedChar = True
      Size = 7
    end
    object QmaxLocalid_kategori: TSmallintField
      FieldName = 'id_kategori'
      Origin = 'VIZTA.tmember.id_kategori'
    end
  end
end
