object FbillCashOrder: TFbillCashOrder
  Left = 247
  Top = 73
  Width = 734
  Height = 677
  ActiveControl = spnMenu
  Caption = 'Cash Order'
  Color = 16738355
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
  object Nama: TLabel
    Left = 24
    Top = 76
    Width = 33
    Height = 13
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 248
    Top = 372
    Width = 51
    Height = 13
    Caption = 'Discount'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 372
    Width = 76
    Height = 13
    Caption = 'Menu Charge'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 376
    Top = 428
    Width = 33
    Height = 13
    Caption = 'T A X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 376
    Top = 452
    Width = 44
    Height = 13
    Caption = 'Service'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 376
    Top = 512
    Width = 68
    Height = 13
    Caption = 'Grand Total'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 523
    Top = 372
    Width = 8
    Height = 13
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 240
    Top = 398
    Width = 99
    Height = 13
    Caption = 'Member Discount'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 355
    Top = 399
    Width = 8
    Height = 13
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 523
    Top = 399
    Width = 8
    Height = 13
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 377
    Top = 481
    Width = 81
    Height = 13
    Caption = 'Voucher Disc.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNama: TEdit
    Left = 306
    Top = 72
    Width = 265
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = 'VIZTA'
    OnEnter = edtNamaEnter
    OnKeyPress = edtIdMemberKeyPress
  end
  object spnMenu: TSpinEdit
    Left = 320
    Top = 368
    Width = 49
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
    OnChange = spnMenuChange
    OnEnter = spnMenuEnter
    OnKeyDown = spnMenuKeyDown
  end
  object edtMenuHarga: TAEdit
    Left = 104
    Top = 368
    Width = 129
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    Text = 'AEdit1'
    OnEnter = edtMenuHargaEnter
    Alignment = taRightJustify
  end
  object edtMenuDiskon: TAEdit
    Left = 376
    Top = 368
    Width = 129
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = 'AEdit1'
    OnEnter = edtMenuDiskonEnter
    OnExit = edtMenuDiskonExit
    OnKeyPress = edtMenuDiskonKeyPress
    Alignment = taRightJustify
  end
  object edtMenuTotal: TAEdit
    Left = 552
    Top = 368
    Width = 129
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
    Text = 'AEdit1'
    OnEnter = edtMenuTotalEnter
    Alignment = taRightJustify
  end
  object btnOk: TbsSkinButton
    Left = 17
    Top = 540
    Width = 665
    Height = 26
    TabOrder = 11
    SkinData = FrmInduk.bsSkinData1
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
    Caption = 'OK'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnOkClick
  end
  object edtTax: TAEdit
    Left = 552
    Top = 424
    Width = 129
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
    Text = 'edtTax'
    OnEnter = edtTaxEnter
    Alignment = taRightJustify
  end
  object edtService: TAEdit
    Left = 552
    Top = 448
    Width = 129
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 16
    Text = 'edtService'
    OnEnter = edtServiceEnter
    Alignment = taRightJustify
  end
  object edtGrandTotal: TAEdit
    Left = 552
    Top = 508
    Width = 129
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    Text = 'edtGrandTotal'
    OnEnter = edtGrandTotalEnter
    Alignment = taRightJustify
  end
  object Panel1: TPanel
    Left = 15
    Top = 101
    Width = 666
    Height = 260
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BorderWidth = 1
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    object TOTAL: TLabel
      Left = 435
      Top = 231
      Width = 56
      Height = 20
      Caption = 'TOTAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBGordermenu: TDBGrid
      Left = 14
      Top = 16
      Width = 638
      Height = 209
      TabStop = False
      Color = clWhite
      DataSource = fordermenu.DSorder
      FixedColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnKeyPress = DBGordermenuKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'idmenu'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'menu'
          Width = 221
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hardisk'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qty'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Width = 125
          Visible = True
        end>
    end
    object edtTotal: TAEdit
      Left = 507
      Top = 229
      Width = 121
      Height = 21
      TabStop = False
      TabOrder = 1
      Alignment = taRightJustify
    end
  end
  object btnExit: TbsSkinButton
    Left = 312
    Top = 572
    Width = 75
    Height = 26
    TabOrder = 12
    SkinData = FrmInduk.bsSkinData1
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
    Caption = 'Cancel'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnExitClick
  end
  object cmbMember: TComboBox
    Left = 68
    Top = 72
    Width = 94
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkFlat
    BevelOuter = bvNone
    Style = csDropDownList
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ItemIndex = 0
    ParentFont = False
    TabOrder = 0
    Text = 'Non Member'
    OnClick = cmbMemberClick
    OnKeyPress = pencet
    Items.Strings = (
      'Non Member'
      'Member')
  end
  object edtIdMember: TEdit
    Left = 173
    Top = 72
    Width = 129
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = edtIdMemberChange
    OnEnter = edtIdMemberEnter
    OnExit = edtIdMemberExit
    OnKeyDown = edtIdMemberKeyDown
    OnKeyPress = edtIdMemberKeyPress
  end
  object edtmemberdiskon: TAEdit
    Left = 376
    Top = 396
    Width = 129
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    Text = 'edtmemberdiskon'
    Alignment = taRightJustify
  end
  object DBmember: TDBGrid
    Left = 174
    Top = 96
    Width = 467
    Height = 209
    DataSource = DSmember
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clMenu
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    OnDrawColumnCell = DBmemberDrawColumnCell
    OnDblClick = DBmemberDblClick
    OnKeyPress = DBmemberKeyPress
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'Nama'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 227
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'berlaku'
        Title.Alignment = taCenter
        Title.Caption = 'Valid Thru'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clMenu
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object edtsubtotal: TAEdit
    Left = 552
    Top = 395
    Width = 129
    Height = 21
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    OnEnter = edtsubtotalEnter
    Alignment = taRightJustify
  end
  object edtvoucher: TAEdit
    Left = 553
    Top = 479
    Width = 128
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    Text = 'edtvoucher'
    OnEnter = edtvoucherEnter
    OnExit = edtvoucherExit
    OnKeyPress = pencet
    Alignment = taRightJustify
  end
  object QmsOrderID: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'select * from troom')
    Left = 24
    Top = 16
  end
  object Qmember: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     tmember.id, tmember.id_kategori, tmember.nama, tmembe' +
        'r.tgl_registrasi, tmember.berlaku, tkategorimember.diskonroom, t' +
        'kategorimember.diskonmenu'
      'FROM         tmember INNER JOIN'
      
        '                      tkategorimember ON tmember.id_kategori = t' +
        'kategorimember.id'
      'ORDER BY tmember.id'
      '')
    Left = 64
    Top = 16
    object Qmemberid: TStringField
      FieldName = 'id'
      Origin = 'VIZTA.tmember.id'
      FixedChar = True
      Size = 5
    end
    object Qmemberid_kategori: TSmallintField
      FieldName = 'id_kategori'
      Origin = 'VIZTA.tmember.id_kategori'
    end
    object Qmembernama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tmember.nama'
      FixedChar = True
      Size = 50
    end
    object Qmembertgl_registrasi: TDateTimeField
      FieldName = 'tgl_registrasi'
      Origin = 'VIZTA.tmember.tgl_registrasi'
    end
    object Qmemberberlaku: TDateTimeField
      FieldName = 'berlaku'
      Origin = 'VIZTA.tmember.berlaku'
    end
    object Qmemberdiskonroom: TFloatField
      FieldName = 'diskonroom'
      Origin = 'VIZTA.tkategorimember.diskonroom'
    end
    object Qmemberdiskonmenu: TFloatField
      FieldName = 'diskonmenu'
      Origin = 'VIZTA.tkategorimember.diskonmenu'
    end
  end
  object RvCashMenu: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = fordermenu.vtCashOrder
    Left = 304
    Top = 32
  end
  object DSmember: TDataSource
    DataSet = Qmember
    Left = 64
    Top = 32
  end
  object Qbarangkeluar: TQuery
    DatabaseName = 'vizta'
    Left = 664
    Top = 32
  end
  object Qbarangcari: TQuery
    DatabaseName = 'vizta'
    Left = 632
    Top = 40
  end
  object QmasaFreepass: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     Tsetup.masaFreepass, Tsetup.pesanbill, Tsetup.promobi' +
        'll, Tsetup.id_cabang, tkategorimember.kode'
      'FROM         Tsetup INNER JOIN'
      
        '                      tkategorimember ON Tsetup.id_cabang = tkat' +
        'egorimember.id')
    Left = 24
    Top = 418
    object QmasaFreepassmasaFreepass: TIntegerField
      FieldName = 'masaFreepass'
      Origin = 'VIZTA.Tsetup.masaFreepass'
    end
    object QmasaFreepasspesanbill: TStringField
      FieldName = 'pesanbill'
      Origin = 'VIZTA.Tsetup.pesanbill'
      FixedChar = True
      Size = 50
    end
    object QmasaFreepasspromobill: TSmallintField
      FieldName = 'promobill'
      Origin = 'VIZTA.Tsetup.promobill'
    end
    object QmasaFreepassid_cabang: TSmallintField
      FieldName = 'id_cabang'
      Origin = 'VIZTA.Tsetup.id_cabang'
    end
    object QmasaFreepasskode: TStringField
      FieldName = 'kode'
      Origin = 'VIZTA.tkategorimember.kode'
      FixedChar = True
      Size = 2
    end
  end
end
