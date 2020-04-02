object FpurchaseRequestTambah: TFpurchaseRequestTambah
  Left = 180
  Top = 63
  Width = 971
  Height = 734
  Caption = 'FpurchaseRequestTambah'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 52
    Top = 354
    Width = 773
    Height = 271
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label7: TLabel
      Left = 16
      Top = 13
      Width = 77
      Height = 13
      Caption = 'Nama Barang'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 16
      Top = 40
      Width = 20
      Height = 13
      Caption = 'Qty'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object DBGrid1: TDBGrid
      Left = 22
      Top = 72
      Width = 458
      Height = 145
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNone
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'IDbarang'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qty'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Harga'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Width = 67
          Visible = True
        end>
    end
    object jum_kredit: TAEdit
      Left = 331
      Top = 228
      Width = 130
      Height = 21
      TabStop = False
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
      TabOrder = 1
      Alignment = taRightJustify
    end
    object edtidbarang: TAEdit
      Left = 122
      Top = 9
      Width = 97
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Alignment = taRightJustify
    end
    object edtnamabarang: TAEdit
      Left = 224
      Top = 9
      Width = 193
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Alignment = taRightJustify
    end
    object spn_jumlah: TSpinEdit
      Left = 122
      Top = 35
      Width = 49
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 4
      Value = 0
    end
  end
  object Panel2: TPanel
    Left = 52
    Top = 26
    Width = 773
    Height = 308
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 85
      Width = 70
      Height = 13
      Caption = 'Tgl Request'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 13
      Top = 100
      Width = 52
      Height = 13
      Caption = 'Tgl Perlu'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 13
      Top = 52
      Width = 32
      Height = 13
      Caption = 'Divisi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 517
      Top = 52
      Width = 66
      Height = 13
      Caption = 'Keterangan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 21
      Top = 21
      Width = 65
      Height = 13
      Caption = 'ID Request'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DateTimePicker1: TDateTimePicker
      Left = 118
      Top = 74
      Width = 147
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 118
      Top = 100
      Width = 147
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 1
    end
    object AEdit2: TAEdit
      Left = 118
      Top = 44
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      Alignment = taCenter
    end
    object bsSkinButton1: TbsSkinButton
      Left = 216
      Top = 45
      Width = 24
      Height = 20
      TabOrder = 3
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
      Caption = '... '
      NumGlyphs = 1
      Spacing = 1
    end
    object Edit2: TEdit
      Left = 244
      Top = 44
      Width = 228
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Memo2: TMemo
      Left = 512
      Top = 80
      Width = 232
      Height = 65
      Lines.Strings = (
        '')
      TabOrder = 5
    end
    object DBGrid3: TDBGrid
      Left = 22
      Top = 160
      Width = 659
      Height = 113
      FixedColor = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNone
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object AEdit3: TAEdit
      Left = 571
      Top = 276
      Width = 130
      Height = 21
      TabStop = False
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
    object AEdit1: TAEdit
      Left = 120
      Top = 12
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 8
      Alignment = taCenter
    end
    object AEdit4: TAEdit
      Left = 248
      Top = 12
      Width = 225
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 9
      Alignment = taCenter
    end
    object bsSkinButton2: TbsSkinButton
      Left = 216
      Top = 13
      Width = 24
      Height = 20
      TabOrder = 10
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
      Caption = '... '
      NumGlyphs = 1
      Spacing = 1
    end
  end
end
