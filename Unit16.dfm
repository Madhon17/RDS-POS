object fpayment: Tfpayment
  Left = 208
  Top = 54
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'PAYMENT'
  ClientHeight = 741
  ClientWidth = 1007
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 24
    Top = 187
    Width = 969
    Height = 25
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 16738355
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object rdo_invoice: TRadioButton
      Left = 40
      Top = 4
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
      OnClick = rdo_invoiceClick
    end
    object rdo_nama: TRadioButton
      Left = 820
      Top = 4
      Width = 113
      Height = 17
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = rdo_invoiceClick
    end
    object rdo_room: TRadioButton
      Left = 430
      Top = 4
      Width = 113
      Height = 17
      Caption = 'Room'
      TabOrder = 2
      OnClick = rdo_invoiceClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 128
    Width = 985
    Height = 185
    Color = clSilver
    DataSource = dsMenu
    FixedColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'invoice'
        Title.Alignment = taCenter
        Title.Caption = 'Invoice'
        Width = 88
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'namaroom'
        Title.Alignment = taCenter
        Title.Caption = 'Room'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Caption = 'Nama'
        Width = 122
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calRoom'
        Title.Alignment = taCenter
        Title.Caption = 'Room Charge'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calMenu'
        Title.Alignment = taCenter
        Title.Caption = 'Menu Charge'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'calDll'
        Title.Alignment = taCenter
        Title.Caption = 'Others Charge'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'discmember'
        Title.Alignment = taCenter
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tax'
        Title.Alignment = taCenter
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'service'
        Title.Alignment = taCenter
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'extradiskon'
        Title.Alignment = taCenter
        Title.Caption = 'Voucher'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 100
        Visible = True
      end>
  end
  object DTMpayment: TDateTimePicker
    Left = 824
    Top = 592
    Width = 153
    Height = 21
    Date = 38520.662762094910000000
    Format = 'dd MMMM yyyy'
    Time = 38520.662762094910000000
    TabOrder = 1
    Visible = False
  end
  object grpRoom: TPanel
    Left = 16
    Top = 321
    Width = 985
    Height = 352
    BevelInner = bvLowered
    BevelOuter = bvSpace
    BorderWidth = 1
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label9: TLabel
      Left = 432
      Top = 5
      Width = 68
      Height = 24
      Alignment = taCenter
      Caption = 'TOTAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 122
      Top = 91
      Width = 134
      Height = 24
      Caption = 'Payment Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 826
      Top = 59
      Width = 134
      Height = 24
      Caption = 'Payment Type'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Panelcash2: TPanel
      Left = 555
      Top = 134
      Width = 408
      Height = 139
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
      TabOrder = 11
      Visible = False
      object Label20: TLabel
        Left = 189
        Top = 8
        Width = 30
        Height = 20
        Caption = 'Pay'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 172
        Top = 71
        Width = 63
        Height = 20
        Caption = 'Change'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtBayar2: TAEdit
        Left = 65
        Top = 30
        Width = 278
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'edtBayar'
        OnEnter = edtBayar2Enter
        OnExit = edtBayar2Exit
        OnKeyPress = edtbayarKeyPress
        Alignment = taCenter
      end
      object edtKembali2: TAEdit
        Left = 66
        Top = 94
        Width = 278
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = 'edtKembali'
        OnEnter = edtKembaliEnter
        Alignment = taCenter
      end
    end
    object panelcard: TPanel
      Left = 267
      Top = 126
      Width = 408
      Height = 139
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
      TabOrder = 4
      Visible = False
      object Label2: TLabel
        Left = 24
        Top = 24
        Width = 44
        Height = 16
        Caption = 'JENIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 24
        Top = 48
        Width = 85
        Height = 16
        Caption = 'NAMA BANK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 24
        Top = 75
        Width = 23
        Height = 16
        Caption = 'NO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 24
        Top = 101
        Width = 44
        Height = 16
        Caption = 'NAMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cmbjenis: TComboBox
        Left = 136
        Top = 24
        Width = 233
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          'VISA CARD'
          'MASTER CARD'
          'AMERICAN EXPRESS'
          'DEBIT CARD')
      end
      object cmbnamabank: TComboBox
        Left = 136
        Top = 48
        Width = 233
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
      end
      object edtnocc: TEdit
        Left = 136
        Top = 75
        Width = 233
        Height = 21
        TabOrder = 2
      end
      object edtnamacc: TEdit
        Left = 136
        Top = 102
        Width = 233
        Height = 21
        TabOrder = 3
      end
    end
    object panelketerangan: TPanel
      Left = 267
      Top = 125
      Width = 408
      Height = 74
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
      TabOrder = 5
      Visible = False
      object Label7: TLabel
        Left = 143
        Top = 10
        Width = 121
        Height = 20
        Caption = 'KETERANGAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtketerangan: TEdit
        Left = 20
        Top = 34
        Width = 369
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnEnter = edtketeranganEnter
      end
    end
    object edttotal: TAEdit
      Left = 266
      Top = 32
      Width = 359
      Height = 49
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -35
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Alignment = taCenter
    end
    object cmbcarabayar: TComboBox
      Left = 265
      Top = 87
      Width = 256
      Height = 32
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 24
      ParentFont = False
      TabOrder = 1
      OnClick = cmbcarabayarClick
      OnKeyPress = cmbcarabayarKeyPress
      Items.Strings = (
        'CASH'
        'CARD'
        'FOC'
        'CANCEL'
        'VOUCHER')
    end
    object Panelcash: TPanel
      Left = 267
      Top = 126
      Width = 408
      Height = 139
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
      TabOrder = 2
      object Label5: TLabel
        Left = 189
        Top = 8
        Width = 30
        Height = 20
        Caption = 'Pay'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 172
        Top = 71
        Width = 63
        Height = 20
        Caption = 'Change'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtBayar: TAEdit
        Left = 65
        Top = 30
        Width = 278
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'edtBayar'
        OnEnter = edtbayarEnter
        OnExit = edtbayarExit
        OnKeyPress = edtbayarKeyPress
        Alignment = taCenter
      end
      object edtKembali: TAEdit
        Left = 66
        Top = 94
        Width = 278
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = 'edtKembali'
        OnEnter = edtKembaliEnter
        Alignment = taCenter
      end
    end
    object btnsimpan: TbsSkinButton
      Left = 264
      Top = 317
      Width = 409
      Height = 26
      TabOrder = 3
      SkinData = FrmInduk.bsSkinData1
      SkinDataName = 'button'
      DefaultFont.Charset = ANSI_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
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
      Caption = 'Save'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnsimpanClick
    end
    object BsPrint: TbsSkinButton
      Left = 632
      Top = 32
      Width = 41
      Height = 49
      TabOrder = 6
      SkinData = FrmInduk.bsSkinData2
      SkinDataName = 'resizebutton'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
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
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000010000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000001C770000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00001C6F6F6FBF0000FFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF00000000
        1C6F6F6F00006FBF0000FFFF0000000000FF0000FFFFFFFFFFFF000000001C6F
        6F6F0000F708006FBF00000000002F0A0000000000FFFFFFFFFF00001C6F6F6F
        0000F708FFFFFF006FBF0000252E2F130A00F6090000FFFFFFFF00006F6F0000
        F708FFFFFFFFFFFF006FBF00252E2F131313F609E40000FFFFFFFF000000F708
        FFFFFFFFFFFFFFFFFF006F77132F2F1C1C13F609E4E40000FFFFFF000008FFFF
        FFFFFFFFFFFFFFFFFFF6001C132F2F1C1C13F609E4E40000FFFFFFFF0000FFFF
        FFFFFFFFFFFFFFF6F6080700132FB71D2513F609E4E40000FFFFFFFFFF0000FF
        FFFFFFFFFFF6F608080707F71325B7262513F609E4E40000FFFFFFFFFF000000
        FFFFFFF6F608080707F713136F6FB72F26130909E4E40000FFFFFFFFFF00006F
        00F6F608080707F713136F6F7777B72F2E25130909E40000FFFFFFFFFF00006F
        2E00080707F713136F6F7777B7B7B7772F2E251309090000FFFFFFFFFF0000B7
        1B1300F713136F6F777777B7B7B7B7776F25252513130000FFFFFFFFFF0000B7
        1B131313776F7777B7B7B7B7BFBF77252525251C130A0000FFFFFFFFFF0000F6
        2E2F6F6F7777B7B7B7BFBF086F25252526251C1C000000FFFFFFFFFFFF0000F6
        2E6F7777B7B7BF08F6F66F252525262525251B0A0000FFFFFFFFFFFFFF00002E
        6F2FB7B70808F6F66F25252526262E251B131313AD0000FFFFFFFFFFFF000025
        6F2FB708F6F66F1C2525262626251B13131C2566B7080000FFFFFFFFFFFF0000
        2E6F77B76F1C2525252525251B13131C2626262E6EB7080000FFFFFFFFFF0000
        2526251C252525251D1C1C13131C1C256E6E2E2E2E6EB70000FFFFFFFFFFFF00
        001B25251D1D1C1C1B13131C6626251C6E6E6E6E2500000000FFFFFFFFFFFFFF
        0000001B1B131313131C26266E6E6E6E1D6E2500000000FFFFFFFFFFFFFFFFFF
        FF0000000000000000266E6E6E6E6E6E2500000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFF000000000000006E6E6E2E2500000000FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000262500000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 1
      Spacing = 1
      OnClick = BsPrintClick
    end
    object panelVoucher: TPanel
      Left = 267
      Top = 126
      Width = 408
      Height = 187
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
      TabOrder = 7
      Visible = False
      object Label10: TLabel
        Left = 55
        Top = 151
        Width = 42
        Height = 20
        Alignment = taRightJustify
        Caption = 'Kode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 31
        Top = 23
        Width = 68
        Height = 20
        Alignment = taRightJustify
        Caption = 'Voucher'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 34
        Top = 55
        Width = 65
        Height = 20
        Alignment = taRightJustify
        Caption = 'Nominal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 49
        Top = 87
        Width = 50
        Height = 20
        Alignment = taRightJustify
        Caption = 'Harga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 52
        Top = 119
        Width = 47
        Height = 20
        Alignment = taRightJustify
        Caption = 'Nama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtVoucherKode: TEdit
        Left = 112
        Top = 146
        Width = 281
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object voucherComboBox: TComboBox
        Left = 112
        Top = 15
        Width = 281
        Height = 32
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 24
        ParentFont = False
        TabOrder = 1
        OnClick = voucherComboBoxClick
      end
      object voucheNomimalEdit: TEdit
        Left = 112
        Top = 50
        Width = 281
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnChange = voucheNomimalEditChange
        OnEnter = voucheNomimalEditEnter
        OnExit = voucheNomimalEditExit
        OnKeyPress = voucheNomimalEditKeyPress
      end
      object voucherHargaEdit: TEdit
        Left = 112
        Top = 82
        Width = 281
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object voucherNamaEdit: TEdit
        Left = 112
        Top = 114
        Width = 281
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object payment2CheckBox: TCheckBox
      Left = 808
      Top = 56
      Width = 17
      Height = 33
      Enabled = False
      TabOrder = 8
      OnClick = payment2CheckBoxClick
    end
    object payment2ComboBox: TComboBox
      Left = 713
      Top = 87
      Width = 250
      Height = 32
      Style = csDropDownList
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 24
      ParentFont = False
      TabOrder = 9
      OnClick = payment2ComboBoxClick
      Items.Strings = (
        'CASH'
        'CARD')
    end
    object panelcard2: TPanel
      Left = 555
      Top = 134
      Width = 408
      Height = 163
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
      TabOrder = 10
      Visible = False
      object Label16: TLabel
        Left = 24
        Top = 56
        Width = 44
        Height = 16
        Caption = 'JENIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 24
        Top = 80
        Width = 85
        Height = 16
        Caption = 'NAMA BANK'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 24
        Top = 107
        Width = 23
        Height = 16
        Caption = 'NO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 24
        Top = 133
        Width = 44
        Height = 16
        Caption = 'NAMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 24
        Top = 24
        Width = 31
        Height = 16
        Caption = 'PAY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cmbjenis2: TComboBox
        Left = 136
        Top = 56
        Width = 233
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          'VISA CARD'
          'MASTER CARD'
          'AMERICAN EXPRESS'
          'DEBIT CARD')
      end
      object cmbnamabank2: TComboBox
        Left = 136
        Top = 80
        Width = 233
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
      end
      object edtnocc2: TEdit
        Left = 136
        Top = 107
        Width = 233
        Height = 21
        TabOrder = 2
      end
      object edtnamacc2: TEdit
        Left = 136
        Top = 134
        Width = 233
        Height = 21
        TabOrder = 3
      end
      object edtBayar3: TEdit
        Left = 136
        Top = 19
        Width = 233
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
    end
  end
  object BtnExitp: TbsSkinButton
    Left = 280
    Top = 688
    Width = 409
    Height = 49
    TabOrder = 4
    SkinData = FrmInduk.bsSkinData1
    SkinDataName = 'button'
    DefaultFont.Charset = ANSI_CHARSET
    DefaultFont.Color = clBlue
    DefaultFont.Height = -27
    DefaultFont.Name = 'Franklin Gothic Demi'
    DefaultFont.Style = []
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
    Caption = 'EXIT'
    NumGlyphs = 1
    Spacing = 1
    OnClick = BtnExitpClick
  end
  object qordermenu: TZQuery
    AfterScroll = qordermenuAfterScroll
    OnCalcFields = qordermenuCalcFields
    SQL.Strings = (
      
        'SELECT     tpayment.idorder, tpayment.nama, troom.namaroom AS na' +
        'maroom, tpayment.croom AS room, tpayment.cmenu AS menu, tpayment' +
        '.cother AS dll, '
      
        '                      tpayment.disroom, tpayment.dismenu, tpayme' +
        'nt.disdll, tpayment.tax, tpayment.service, tpayment.idroom, tpay' +
        'ment.discmember, tpayment.invoice, tpayment.extradiskon, tpaymen' +
        't.pajak, tbayar.invoice invoice2 '
      'FROM         tpayment LEFT OUTER JOIN'
      '                      troom ON tpayment.idroom = troom.id'
      'left join tbayar on tbayar.idorder = tpayment.idorder2'
      'WHERE     (tpayment.payment = 0)'
      
        'GROUP BY tpayment.idorder, tpayment.nama, troom.namaroom, tpayme' +
        'nt.disroom, tpayment.dismenu, tpayment.disdll, tpayment.tglstop,' +
        ' tpayment.tax, '
      
        '                      tpayment.service, tpayment.croom, tpayment' +
        '.cmenu, tpayment.cother, tpayment.idroom, tpayment.discmember, t' +
        'payment.invoice, tpayment.extradiskon, tpayment.pajak, tbayar.in' +
        'voice  '
      'ORDER BY tpayment.invoice')
    Params = <>
    Left = 280
    Top = 16
    object qordermenuidorder: TStringField
      FieldName = 'idorder'
      FixedChar = True
      Size = 10
    end
    object qordermenunamaroom: TStringField
      FieldName = 'namaroom'
      FixedChar = True
      Size = 4
    end
    object qordermenumenu: TFloatField
      FieldName = 'menu'
    end
    object qordermenuroom: TFloatField
      FieldName = 'room'
    end
    object qordermenudll: TFloatField
      FieldName = 'dll'
    end
    object qordermenunama: TStringField
      FieldName = 'nama'
      FixedChar = True
      Size = 15
    end
    object qordermenudisroom: TFloatField
      FieldName = 'disroom'
    end
    object qordermenudismenu: TFloatField
      FieldName = 'dismenu'
    end
    object qordermenudisdll: TFloatField
      FieldName = 'disdll'
    end
    object qordermenucalRoom: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calRoom'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object qordermenucalMenu: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calMenu'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object qordermenucalDll: TFloatField
      FieldKind = fkCalculated
      FieldName = 'calDll'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object qordermenudiscmember: TFloatField
      DisplayLabel = 'Member Disc.'
      FieldName = 'discmember'
      Origin = 'VIZTA.tpayment.discmember'
    end
    object qordermenutax: TFloatField
      DisplayLabel = 'Tax'
      FieldName = 'tax'
    end
    object qordermenuservice: TFloatField
      DisplayLabel = 'Service'
      FieldName = 'service'
    end
    object qordermenutotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      DisplayFormat = '#,0'
      Calculated = True
    end
    object qordermenuinvoice: TStringField
      FieldName = 'invoice'
      Origin = 'VIZTA.tpayment.invoice'
      FixedChar = True
      Size = 11
    end
    object qordermenuextradiskon: TFloatField
      FieldName = 'extradiskon'
      Origin = 'VIZTA.tpayment.extradiskon'
    end
    object qordermenupajak: TStringField
      FieldName = 'pajak'
      Origin = 'VIZTA.tpayment.pajak'
    end
    object qordermenuinvoice2: TStringField
      FieldName = 'invoice2'
      Origin = 'VIZTA.tpayment.invoice2'
      FixedChar = True
      Size = 11
    end
  end
  object dsMenu: TDataSource
    AutoEdit = False
    DataSet = qordermenu
    Left = 280
    Top = 32
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
    Left = 8
    Top = 16
  end
  object qbank: TZQuery
    SQL.Strings = (
      'SELECT     id, nama'
      'FROM         tbank')
    Params = <>
    Left = 152
    Top = 264
    object qbankid: TSmallintField
      FieldName = 'id'
      Origin = 'VIZTA.tbank.id'
    end
    object qbanknama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tbank.nama'
      FixedChar = True
      Size = 30
    end
  end
  object Qedit: TZQuery
    SQL.Strings = (
      
        'SELECT     idorder, tanggal, status, payment, ccid, ccno, ccnama' +
        ', keterangan, total, nama, room, namabank'
      'FROM         tpayment')
    Params = <>
    Left = 120
    Top = 264
    object Qeditidorder: TStringField
      FieldName = 'idorder'
      Origin = 'VIZTA.tpayment.idorder'
      FixedChar = True
      Size = 10
    end
    object Qedittanggal: TDateTimeField
      FieldName = 'tanggal'
      Origin = 'VIZTA.tpayment.tanggal'
    end
    object Qeditstatus: TSmallintField
      FieldName = 'status'
      Origin = 'VIZTA.tpayment.status'
    end
    object Qeditpayment: TSmallintField
      FieldName = 'payment'
      Origin = 'VIZTA.tpayment.payment'
    end
    object Qeditccid: TStringField
      FieldName = 'ccid'
      Origin = 'VIZTA.tpayment.ccid'
      FixedChar = True
      Size = 10
    end
    object Qeditccno: TStringField
      FieldName = 'ccno'
      Origin = 'VIZTA.tpayment.ccno'
      FixedChar = True
      Size = 10
    end
    object Qeditccnama: TStringField
      FieldName = 'ccnama'
      Origin = 'VIZTA.tpayment.ccnama'
      FixedChar = True
      Size = 10
    end
    object Qeditketerangan: TStringField
      FieldName = 'keterangan'
      Origin = 'VIZTA.tpayment.keterangan'
      FixedChar = True
      Size = 30
    end
    object Qedittotal: TFloatField
      FieldName = 'total'
      Origin = 'VIZTA.tpayment.total'
    end
    object Qeditnama: TStringField
      FieldName = 'nama'
      Origin = 'VIZTA.tpayment.nama'
      FixedChar = True
      Size = 15
    end
    object Qeditroom: TStringField
      FieldName = 'room'
      Origin = 'VIZTA.tpayment.room'
      FixedChar = True
      Size = 4
    end
    object Qeditnamabank: TStringField
      FieldName = 'namabank'
      Origin = 'VIZTA.tpayment.namabank'
      FixedChar = True
      Size = 10
    end
  end
  object QmyROOM: TZQuery
    Connection = modul.DBmysql
    Params = <>
    Left = 240
    Top = 16
  end
  object Query1: TZQuery
    Params = <>
    Left = 88
    Top = 264
  end
end
