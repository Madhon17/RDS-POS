object Froomreport: TFroomreport
  Left = 228
  Top = 5
  AutoScroll = False
  BorderIcons = []
  Caption = 'Room Report'
  ClientHeight = 620
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 404
    Top = 375
    Width = 41
    Height = 13
    Caption = 'TOTAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 31
    Top = 24
    Width = 684
    Height = 73
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    TabOrder = 0
    object Label2: TLabel
      Left = 321
      Top = 14
      Width = 20
      Height = 13
      Caption = 's/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object tgl_mulai: TDateTimePicker
      Left = 112
      Top = 11
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cmbkategori: TComboBox
      Left = 111
      Top = 36
      Width = 122
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
      TabOrder = 3
      Items.Strings = (
        ''
        'CASH'
        'CARD'
        'SERVICE'
        'CANCEL')
    end
    object chk_kategori: TCheckBox
      Left = 14
      Top = 38
      Width = 97
      Height = 17
      Caption = 'Kategori'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = chk_kategoriClick
    end
    object chk_tanggal: TCheckBox
      Left = 14
      Top = 13
      Width = 81
      Height = 17
      Caption = 'Tanggal'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = chk_tanggalClick
    end
    object waktuawal: TDateTimePicker
      Left = 240
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Kind = dtkTime
      TabOrder = 4
    end
    object Tgl_akhir: TDateTimePicker
      Left = 352
      Top = 11
      Width = 121
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 5
    end
    object waktuakhir: TDateTimePicker
      Left = 480
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Kind = dtkTime
      TabOrder = 6
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 335
    Top = 105
    Width = 75
    Height = 26
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
    Caption = 'Cari'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnexit: TbsSkinXFormButton
    Left = 335
    Top = 577
    Width = 75
    Height = 26
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
    OnClick = btnexitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnprint: TbsSkinXFormButton
    Left = 31
    Top = 537
    Width = 684
    Height = 26
    TabOrder = 3
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
    Caption = 'Print'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnprintClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object DBGrid1: TDBGrid
    Left = 31
    Top = 139
    Width = 684
    Height = 353
    DataSource = DScari
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nama Room'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kategori'
        Title.Alignment = taCenter
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Durasi'
        Title.Alignment = taCenter
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Jumlah Room'
        Title.Alignment = taCenter
        Title.Caption = 'Payment'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Room Charge'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total Charge'
        Title.Alignment = taCenter
        Width = 125
        Visible = True
      end>
  end
  object edttotal: TAEdit
    Left = 569
    Top = 504
    Width = 125
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Alignment = taRightJustify
  end
  object edtRoom: TAEdit
    Left = 367
    Top = 504
    Width = 70
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Alignment = taRightJustify
  end
  object edtRoomCharge: TAEdit
    Left = 441
    Top = 504
    Width = 125
    Height = 21
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Alignment = taRightJustify
  end
  object Qcari: TZQuery
    SQL.Strings = (
      
        'SELECT     troom.namaroom, tkategoriroom.kategori, COUNT(*) AS p' +
        'ayment, tkategoriroom.id, torder_room.durasi, SUM(tpayment.croom' +
        ' - tpayment.disroom) '
      '                      AS roomcharge, '
      
        '                      SUM(tpayment.cmenu + tpayment.croom + tpay' +
        'ment.cother + tpayment.service + tpayment.tax - tpayment.dismenu' +
        ' - tpayment.disroom - tpayment.disdll'
      
        '                       - tpayment.discmember - tpayment.extradis' +
        'kon) AS Total'
      'FROM         tpayment LEFT OUTER JOIN'
      
        '                      torder_room ON tpayment.idroom = torder_ro' +
        'om.idroom AND tpayment.idorder = torder_room.idorder LEFT OUTER ' +
        'JOIN'
      
        '                      troom ON tpayment.idroom = troom.id LEFT O' +
        'UTER JOIN'
      
        '                      tkategoriroom ON troom.idkategori = tkateg' +
        'oriroom.id'
      
        'WHERE     (tpayment.payment <> 0) AND (tpayment.payment <> 4) AN' +
        'D (tpayment.payment <> 5)'
      
        'GROUP BY troom.namaroom, tkategoriroom.id, tkategoriroom.kategor' +
        'i, torder_room.durasi'
      'ORDER BY troom.namaroom')
    Params = <>
    Left = 592
    Top = 32
    object Qcarinamaroom: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nama Room'
      FieldName = 'namaroom'
      Origin = 'VIZTA.troom.namaroom'
      FixedChar = True
      Size = 4
    end
    object Qcaritotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'total'
      DisplayFormat = '#,0'
    end
    object Qcarikategori: TStringField
      FieldName = 'kategori'
      FixedChar = True
      Size = 10
    end
    object Qcaripayment: TLargeintField
      FieldName = 'payment'
    end
    object QcariLUpaymentFOC: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LUpaymentFOC'
      LookupDataSet = QcariFOC
      LookupKeyFields = 'namaroom'
      LookupResultField = 'payment'
      KeyFields = 'namaroom'
      Lookup = True
    end
    object Qcariroomcharge: TFloatField
      FieldName = 'roomcharge'
    end
  end
  object Qkategori: TZQuery
    SQL.Strings = (
      'SELECT     harga, kategori'
      'FROM         tkategoriroom'
      'ORDER BY harga')
    Params = <>
    Left = 16
    Top = 56
    object Qkategorikategori: TStringField
      FieldName = 'kategori'
      Origin = 'VIZTA.tkategoriroom.kategori'
      FixedChar = True
      Size = 10
    end
  end
  object DScari: TDataSource
    DataSet = VTroomreport
    Left = 496
    Top = 120
  end
  object Qothers: TZQuery
    SQL.Strings = (
      'SELECT     troom.id'
      'FROM         tkategoriroom RIGHT OUTER JOIN'
      
        '                      troom ON tkategoriroom.id = troom.idkatego' +
        'ri'
      'WHERE     (tkategoriroom.kategori = '#39'SMALL'#39')')
    Params = <>
    Left = 16
    Top = 160
    object Qothersid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.troom.id'
    end
  end
  object RVroomreport: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = VTroomreport
    Left = 632
    Top = 104
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
    MinWidth = 640
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 16
    Top = 96
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
    Left = 16
    Top = 120
  end
  object Qdurasi: TZQuery
    Params = <>
    Left = 248
  end
  object VTroomreport: TVirtualTable
    FieldDefs = <
      item
        Name = 'Nama Room'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Kategori'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Durasi'
        DataType = ftSmallint
      end
      item
        Name = 'Jumlah Room'
        DataType = ftInteger
      end
      item
        Name = 'Total Charge'
        DataType = ftFloat
      end
      item
        Name = 'Room Charge'
        DataType = ftFloat
      end>
    Left = 496
    Top = 104
    Data = {
      0200060009004E616D6120526F6F6D0100140008004B617465676F7269010014
      000600447572617369020000000B004A756D6C616820526F6F6D030000000C00
      546F74616C20436861726765060000000B00526F6F6D20436861726765060000
      00000000000000}
    object VTroomreportNamaRoom: TStringField
      FieldName = 'Nama Room'
    end
    object VTroomreportKategori: TStringField
      Alignment = taCenter
      FieldName = 'Kategori'
    end
    object VTroomreportDurasi: TSmallintField
      Alignment = taCenter
      FieldName = 'Durasi'
      DisplayFormat = '#,0'
    end
    object VTroomreportJumlahRoom: TIntegerField
      FieldName = 'Jumlah Room'
      DisplayFormat = '#,0'
    end
    object VTroomreportTotalCharge: TFloatField
      FieldName = 'Total Charge'
      DisplayFormat = '#,0'
    end
    object VTroomreportRoomCharge: TFloatField
      FieldName = 'Room Charge'
      DisplayFormat = '#,0'
    end
  end
  object DataSource1: TDataSource
    DataSet = Qdurasi
    Left = 592
    Top = 48
  end
  object QcariFOC: TZQuery
    SQL.Strings = (
      
        'SELECT     troom.namaroom, tkategoriroom.kategori, COUNT(*) AS p' +
        'ayment, tpayment.idroom, tkategoriroom.id, SUM(tpayment.croom - ' +
        'tpayment.disroom) '
      '                      AS total'
      'FROM         tpayment INNER JOIN'
      
        '                      troom ON tpayment.idroom = troom.id INNER ' +
        'JOIN'
      
        '                      tkategoriroom ON troom.idkategori = tkateg' +
        'oriroom.id'
      'WHERE     (tpayment.payment <> 4) AND (tpayment.payment <> 5)'
      
        'GROUP BY tpayment.idroom, troom.namaroom, tkategoriroom.id, tkat' +
        'egoriroom.kategori'
      'HAVING      (tkategoriroom.kategori = '#39'1'#39')'
      'ORDER BY troom.namaroom')
    Params = <>
    Left = 624
    Top = 32
    object StringField1: TStringField
      Alignment = taCenter
      DisplayLabel = 'Nama Room'
      FieldName = 'namaroom'
      Origin = 'VIZTA.troom.namaroom'
      FixedChar = True
      Size = 4
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'total'
      DisplayFormat = '#,0'
    end
    object StringField2: TStringField
      FieldName = 'kategori'
      FixedChar = True
      Size = 10
    end
    object IntegerField1: TLargeintField
      FieldName = 'payment'
    end
  end
end
