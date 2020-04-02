object freport: Tfreport
  Left = 200
  Top = 44
  AutoScroll = False
  BorderIcons = []
  Caption = 'Report'
  ClientHeight = 750
  ClientWidth = 927
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 115
    Top = 16
    Width = 697
    Height = 121
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 369
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
      Width = 150
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object cmbpayment: TComboBox
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
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        ''
        'CASH'
        'CARD'
        'FOC'
        'CANCEL'
        'CORRECTION')
    end
    object chk_payment: TCheckBox
      Left = 14
      Top = 38
      Width = 97
      Height = 17
      Caption = 'Payment'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = chk_paymentClick
    end
    object chk_kasir: TCheckBox
      Left = 14
      Top = 64
      Width = 97
      Height = 17
      Caption = 'Kasir'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      OnClick = chk_kasirClick
    end
    object chk_faktur: TCheckBox
      Left = 14
      Top = 90
      Width = 97
      Height = 17
      Caption = 'Invoice'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      OnClick = chk_fakturClick
    end
    object edtfakturawal: TEdit
      Left = 111
      Top = 88
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnExit = edtfakturawalExit
      OnKeyPress = edtfakturawalKeyPress
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
    object edtidkasir: TEdit
      Left = 111
      Top = 62
      Width = 65
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnExit = edtidkasirExit
    end
    object edtnamakasir: TEdit
      Left = 191
      Top = 62
      Width = 202
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object waktuawal: TDateTimePicker
      Left = 272
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.250000000000000000
      Format = 'HH:mm:ss'
      Time = 38610.250000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
      TabOrder = 9
    end
    object Tgl_akhir: TDateTimePicker
      Left = 416
      Top = 11
      Width = 150
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object waktuakhir: TDateTimePicker
      Left = 576
      Top = 11
      Width = 73
      Height = 21
      Date = 38610.249988425930000000
      Format = 'HH:mm:ss'
      Time = 38610.249988425930000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkTime
      ParentFont = False
      TabOrder = 11
    end
    object chkPajak: TCheckBox
      Left = 632
      Top = 90
      Width = 33
      Height = 17
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
  end
  object btncari: TbsSkinXFormButton
    Left = 425
    Top = 185
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
    Caption = 'CARI'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btncariClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object Panel2: TPanel
    Left = 43
    Top = 219
    Width = 846
    Height = 329
    Caption = 'Panel2'
    Color = clGray
    TabOrder = 2
    object Label3: TLabel
      Left = 56
      Top = 252
      Width = 62
      Height = 13
      Caption = 'Total Cash'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 56
      Top = 276
      Width = 60
      Height = 13
      Caption = 'Total Card'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 56
      Top = 300
      Width = 77
      Height = 13
      Caption = 'Total Service'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 472
      Top = 252
      Width = 82
      Height = 13
      Caption = 'Total Payment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtTotCash: TAEdit
      Left = 184
      Top = 248
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
      TabOrder = 0
      Alignment = taRightJustify
    end
    object edtTotCard: TAEdit
      Left = 184
      Top = 272
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
      TabOrder = 1
      Alignment = taRightJustify
    end
    object edtTotservice: TAEdit
      Left = 184
      Top = 296
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
      TabOrder = 2
      Alignment = taRightJustify
    end
    object edtJumPayment: TAEdit
      Left = 568
      Top = 248
      Width = 129
      Height = 45
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Alignment = taCenter
    end
    object edtTotPayment: TAEdit
      Left = 632
      Top = 296
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
      TabOrder = 4
      Alignment = taCenter
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 7
      Width = 825
      Height = 232
      Hint = 'Double Click For Details'
      DataSource = DSreport
      FixedColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindow
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'tglstop'
          Title.Alignment = taCenter
          Width = 107
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'invoice'
          Title.Alignment = taCenter
          Title.Caption = 'Invoice'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Title.Caption = 'Nama'
          Width = 137
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CalPayment'
          Title.Alignment = taCenter
          Title.Caption = 'Payment'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kasir'
          Title.Alignment = taCenter
          Title.Caption = 'Kasir'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CalTotal'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'keterangan'
          Title.Caption = 'Keterangan'
          Width = 202
          Visible = True
        end>
    end
    object edtOrang: TAEdit
      Left = 704
      Top = 248
      Width = 129
      Height = 45
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      Alignment = taCenter
    end
  end
  object btnkeluar: TbsSkinButton
    Left = 426
    Top = 678
    Width = 75
    Height = 26
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
    OnClick = btnkeluarClick
  end
  object bsSkinButton1: TbsSkinButton
    Left = 40
    Top = 646
    Width = 849
    Height = 26
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
    UseSkinFont = True
    RepeatMode = False
    RepeatInterval = 100
    AllowAllUp = False
    TabStop = True
    CanFocused = True
    Down = False
    GroupIndex = 0
    Caption = 'Print'
    NumGlyphs = 1
    Spacing = 1
    OnClick = bsSkinButton1Click
  end
  object Panel3: TPanel
    Left = 115
    Top = 144
    Width = 697
    Height = 33
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object rdo_tanggal: TRadioButton
      Left = 160
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object rdo_orderid: TRadioButton
      Left = 40
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Invoice'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
    end
    object rdo_nama: TRadioButton
      Left = 304
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object rdo_Kasir: TRadioButton
      Left = 560
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Kasir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object rdo_payment: TRadioButton
      Left = 424
      Top = 8
      Width = 113
      Height = 17
      Caption = 'Payment'
      TabOrder = 3
    end
  end
  object Panel4: TPanel
    Left = 40
    Top = 553
    Width = 849
    Height = 85
    Color = clGray
    TabOrder = 6
    object Label1: TLabel
      Left = 13
      Top = 8
      Width = 77
      Height = 13
      Caption = 'Room Charge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 13
      Top = 32
      Width = 76
      Height = 13
      Caption = 'Menu Charge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 13
      Top = 56
      Width = 76
      Height = 13
      Caption = 'Other Charge'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 235
      Top = 8
      Width = 66
      Height = 13
      Caption = 'Room Disc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 235
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Menu Disc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 235
      Top = 56
      Width = 65
      Height = 13
      Caption = 'Other Disc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 444
      Top = 18
      Width = 78
      Height = 13
      Caption = 'Member Disc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 663
      Top = 18
      Width = 25
      Height = 13
      Caption = 'TAX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 663
      Top = 46
      Width = 54
      Height = 13
      Caption = 'SERVICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 443
      Top = 46
      Width = 81
      Height = 13
      Caption = 'Voucher Disc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtmenucharge: TEdit
      Left = 99
      Top = 32
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtothercharge: TEdit
      Left = 99
      Top = 56
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtroomdisc: TEdit
      Left = 315
      Top = 8
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtmenudisc: TEdit
      Left = 315
      Top = 32
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtotherdisc: TEdit
      Left = 315
      Top = 56
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object edtmemberdisc: TEdit
      Left = 529
      Top = 13
      Width = 119
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object edtservice: TEdit
      Left = 721
      Top = 44
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object edttax: TEdit
      Left = 721
      Top = 13
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object edtroomcharge: TEdit
      Left = 99
      Top = 8
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object edtvoucherdisc: TEdit
      Left = 528
      Top = 44
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
  end
  object qreport: TQuery
    OnCalcFields = qreportCalcFields
    DatabaseName = 'vizta'
    SQL.Strings = (
      
        'SELECT     idorder, tglstop, payment, nama, kasir, croom, cmenu,' +
        ' cother, disroom, dismenu, disdll, tax, service, discmember, inv' +
        'oice, keterangan, extradiskon'
      'FROM         tpayment'
      'WHERE     (payment > 0)')
    Left = 8
    Top = 216
    object qreportidorder: TStringField
      FieldName = 'idorder'
      Origin = 'VIZTA.tpayment.idorder'
      FixedChar = True
      Size = 10
    end
    object qreporttglstop: TDateTimeField
      DisplayLabel = 'Tanggal'
      FieldName = 'tglstop'
      Origin = 'VIZTA.tpayment.tglstop'
      DisplayFormat = 'dd-MM-yy HH:mm'
    end
    object qreportpayment: TSmallintField
      FieldName = 'payment'
      Origin = 'VIZTA.tpayment.payment'
    end
    object qreportnama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tpayment.nama'
      FixedChar = True
      Size = 15
    end
    object qreportcroom: TFloatField
      FieldName = 'croom'
      Origin = 'VIZTA.tpayment.croom'
    end
    object qreportcmenu: TFloatField
      FieldName = 'cmenu'
      Origin = 'VIZTA.tpayment.cmenu'
    end
    object qreportcother: TFloatField
      FieldName = 'cother'
      Origin = 'VIZTA.tpayment.cother'
    end
    object qreportdisroom: TFloatField
      FieldName = 'disroom'
      Origin = 'VIZTA.tpayment.disroom'
    end
    object qreportdismenu: TFloatField
      FieldName = 'dismenu'
      Origin = 'VIZTA.tpayment.dismenu'
    end
    object qreportdisdll: TFloatField
      FieldName = 'disdll'
      Origin = 'VIZTA.tpayment.disdll'
    end
    object qreporttax: TFloatField
      FieldName = 'tax'
      Origin = 'VIZTA.tpayment.tax'
    end
    object qreportservice: TFloatField
      FieldName = 'service'
      Origin = 'VIZTA.tpayment.service'
    end
    object qreportCalTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CalTotal'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object qreportCalPayment: TStringField
      FieldKind = fkCalculated
      FieldName = 'CalPayment'
      Size = 15
      Calculated = True
    end
    object qreportkasir: TStringField
      FieldName = 'kasir'
      Origin = 'VIZTA.tpayment.kasir'
      FixedChar = True
      Size = 5
    end
    object qreportdiscmember: TFloatField
      FieldName = 'discmember'
      Origin = 'VIZTA.tpayment.discmember'
    end
    object qreportinvoice: TStringField
      FieldName = 'invoice'
      Origin = 'VIZTA.tpayment.invoice'
      FixedChar = True
      Size = 11
    end
    object qreportketerangan: TStringField
      FieldName = 'keterangan'
      Origin = 'VIZTA.tpayment.keterangan'
      FixedChar = True
      Size = 30
    end
    object qreportextradiskon: TFloatField
      FieldName = 'extradiskon'
      Origin = 'VIZTA.tpayment.extradiskon'
    end
  end
  object DSreport: TDataSource
    DataSet = qreport
    Left = 8
    Top = 232
  end
  object qkasir: TQuery
    DatabaseName = 'vizta'
    SQL.Strings = (
      'SELECT     id, login'
      'FROM         tkasir'
      'ORDER BY login')
    Left = 16
    Top = 88
  end
  object Qidorder: TQuery
    Left = 40
    Top = 88
  end
  object RVpayment: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = qreport
    Left = 8
    Top = 251
  end
  object Qother: TQuery
    DatabaseName = 'vizta'
    Left = 16
    Top = 128
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
    MaximizeOnFullScreen = False
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
end
