object fpindahroom: Tfpindahroom
  Left = 403
  Top = 87
  AutoScroll = False
  BorderIcons = []
  Caption = 'Room'
  ClientHeight = 532
  ClientWidth = 454
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 21
    Top = 16
    Width = 412
    Height = 185
    BevelInner = bvLowered
    Color = clGray
    TabOrder = 1
    object Label3: TLabel
      Left = 33
      Top = 56
      Width = 49
      Height = 13
      Caption = 'Duration'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 34
      Top = 129
      Width = 51
      Height = 13
      Caption = 'Discount'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 33
      Top = 88
      Width = 30
      Height = 13
      Caption = 'Price'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 34
      Top = 156
      Width = 30
      Height = 13
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 256
      Top = 80
      Width = 37
      Height = 13
      Caption = 'Durasi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 170
      Top = 8
      Width = 73
      Height = 13
      Caption = 'Select Room'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtdurasi: TEdit
      Left = 126
      Top = 51
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edttotal: TEdit
      Left = 126
      Top = 152
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = edttotalEnter
      OnExit = edttotalExit
    end
    object edtdiskon: TEdit
      Left = 126
      Top = 126
      Width = 121
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnEnter = edtdiskonEnter
      OnExit = edtdiskonExit
    end
    object spndurasilama: TSpinEdit
      Left = 299
      Top = 75
      Width = 38
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 100
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 0
      OnChange = spndurasilamaChange
    end
    object cmbroomasal: TComboBox
      Left = 26
      Top = 24
      Width = 361
      Height = 21
      BevelInner = bvLowered
      BevelKind = bkFlat
      Style = csDropDownList
      BiDiMode = bdLeftToRight
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnClick = cmbroomasalClick
    end
    object edtHargaTotal: TAEdit
      Left = 126
      Top = 100
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = 'edtHargaTotal'
      Alignment = taRightJustify
    end
    object edtHargaPakai: TAEdit
      Left = 256
      Top = 52
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      Text = 'edtHargaPakai'
      Alignment = taRightJustify
    end
    object edtroomcharge: TAEdit
      Left = 126
      Top = 76
      Width = 121
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = 'edtroomcharge'
      Alignment = taRightJustify
    end
  end
  object Panel1: TPanel
    Left = 21
    Top = 207
    Width = 412
    Height = 245
    BevelInner = bvLowered
    Color = clGray
    TabOrder = 0
    object Label1: TLabel
      Left = 173
      Top = 13
      Width = 65
      Height = 13
      Caption = 'Destination'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 94
      Top = 217
      Width = 49
      Height = 13
      Caption = 'Duration'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spndurasi: TSpinEdit
      Left = 147
      Top = 212
      Width = 43
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 12
      MinValue = 1
      ParentFont = False
      TabOrder = 0
      Value = 1
    end
    object cmbkatroom: TComboBox
      Left = 33
      Top = 32
      Width = 361
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 1
      OnClick = cmbkatroomClick
    end
    object DBGrid1: TDBGrid
      Left = 31
      Top = 60
      Width = 361
      Height = 141
      BorderStyle = bsNone
      DataSource = DCchekout
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'namaroom'
          Title.Alignment = taCenter
          Title.Caption = 'Room'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kategori'
          Title.Alignment = taCenter
          Title.Caption = 'Category'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'harga'
          Title.Alignment = taCenter
          Title.Caption = 'Price'
          Width = 113
          Visible = True
        end>
    end
    object chkAuto: TCheckBox
      Left = 232
      Top = 216
      Width = 89
      Height = 17
      Caption = 'Auto Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = chkAutoClick
    end
  end
  object btnok: TbsSkinButton
    Left = 21
    Top = 459
    Width = 412
    Height = 25
    TabOrder = 2
    SkinData = FrmInduk.bsSkinData2
    SkinDataName = 'button'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Go'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnokClick
  end
  object btnbatal: TbsSkinButton
    Left = 190
    Top = 491
    Width = 75
    Height = 25
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
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnbatalClick
  end
  object qkatroom: TZQuery
    SQL.Strings = (
      'SELECT     id, kategori, harga'
      'FROM         tkategoriroom'
      'order by harga')
    Params = <>
    Left = 160
  end
  object qroomchekout: TZQuery
    SQL.Strings = (
      
        'SELECT     troom.namaroom, troom.id, tkategoriroom.kategori, tka' +
        'tegoriroom.harga'
      'FROM         troom INNER JOIN'
      
        '                      tkategoriroom ON troom.idkategori = tkateg' +
        'oriroom.id'
      
        'WHERE     (troom.chekin = 0)  AND (troom.jual=1) ORDER BY namaro' +
        'om')
    Params = <>
    Left = 42
    Top = 256
    object qroomchekoutnamaroom: TStringField
      DisplayLabel = 'Nama Room'
      FieldName = 'namaroom'
      Origin = 'VIZTA.troom.namaroom'
      FixedChar = True
      Size = 4
    end
    object qroomchekoutkategori: TStringField
      DisplayLabel = 'Kategori'
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategoriroom.kategori'
      FixedChar = True
      Size = 10
    end
    object qroomchekoutharga: TFloatField
      DisplayLabel = 'Harga'
      FieldName = 'harga'
      Origin = 'VIZTA.tkategoriroom.harga'
      DisplayFormat = '#,0'
    end
    object qroomchekoutid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.troom.id'
    end
  end
  object DCchekout: TDataSource
    DataSet = qroomchekout
    Left = 41
    Top = 280
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
    MenusSkinData = FrmInduk.bsSkinData1
    MinHeight = 480
    MinWidth = 480
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biMinimize, biMaximize]
    Left = 65534
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
    Top = 16
  end
  object Qothers: TZQuery
    SQL.Strings = (
      
        'SELECT     namaroom, status, chekin, waktu, idorder, durasi, nam' +
        'a, roomcharge, menucharge, othercharge, id, idkategori, keterang' +
        'an, jual'
      'FROM         troom')
    Params = <>
    Left = 40
  end
  object Qupdate: TZQuery
    Params = <>
    Left = 104
    Top = 448
  end
  object Qnonaktif: TZQuery
    Params = <>
    Left = 72
    Top = 448
  end
  object qcari: TZQuery
    Params = <>
    Left = 200
  end
  object qordermenu: TZQuery
    Params = <>
    Left = 72
  end
  object QmyROOM: TZQuery
    Connection = modul.DBmysql
    Params = <>
    Top = 176
  end
  object qroomasal: TZQuery
    SQL.Strings = (
      'SELECT     namaroom'
      'FROM         troom'
      'WHERE     (chekin = 1) AND (tambahjam = 0)  AND (JUAL = 1) '
      'ORDER BY namaroom')
    Params = <>
    Left = 127
    Top = 65534
  end
end
