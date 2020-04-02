object FPurchaseRequestStatus: TFPurchaseRequestStatus
  Left = 284
  Top = 122
  Width = 732
  Height = 780
  Caption = 'FPurchaseRequestStatus'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 21
    Top = 551
    Width = 37
    Height = 13
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 29
    Top = 55
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
  object fls_keluar: TbsSkinButton
    Left = 240
    Top = 640
    Width = 75
    Height = 25
    TabOrder = 0
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
    Caption = 'Keluar'
    NumGlyphs = 1
    Spacing = 1
  end
  object fls_simpan: TbsSkinButton
    Left = 205
    Top = 600
    Width = 75
    Height = 25
    TabOrder = 1
    Visible = False
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
    Caption = 'Simpan'
    NumGlyphs = 1
    Spacing = 1
  end
  object fls_batal: TbsSkinButton
    Left = 280
    Top = 600
    Width = 75
    Height = 25
    TabOrder = 2
    Visible = False
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
    Caption = 'Batal'
    NumGlyphs = 1
    Spacing = 1
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 544
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = 'ComboBox1'
  end
  object Panel1: TPanel
    Left = 20
    Top = 205
    Width = 525
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
    TabOrder = 4
    object Label6: TLabel
      Left = 13
      Top = 21
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
    object Label3: TLabel
      Left = 13
      Top = 36
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
    object Label4: TLabel
      Left = 13
      Top = 68
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
    object Label7: TLabel
      Left = 13
      Top = 92
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
    object tglrequest: TDateTimePicker
      Left = 118
      Top = 10
      Width = 147
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 0
    end
    object tglperlu: TDateTimePicker
      Left = 118
      Top = 36
      Width = 147
      Height = 21
      Date = 38520.662762094910000000
      Format = 'dd MMMM yyyy '
      Time = 38520.662762094910000000
      TabOrder = 1
    end
    object AEdit1: TAEdit
      Left = 118
      Top = 60
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      Alignment = taCenter
    end
    object bsSkinButton3: TbsSkinButton
      Left = 216
      Top = 61
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
    object Edit1: TEdit
      Left = 244
      Top = 60
      Width = 228
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Memo1: TMemo
      Left = 119
      Top = 88
      Width = 353
      Height = 57
      Lines.Strings = (
        '')
      TabOrder = 5
    end
    object DBGrid1: TDBGrid
      Left = 30
      Top = 152
      Width = 458
      Height = 113
      FixedColor = clRed
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
      Left = 339
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
  end
  object edtCs: TAEdit
    Left = 102
    Top = 50
    Width = 91
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 5
    Alignment = taCenter
  end
  object btnCariMenu: TbsSkinButton
    Left = 200
    Top = 51
    Width = 24
    Height = 20
    TabOrder = 6
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
  object edtNamaCs: TEdit
    Left = 229
    Top = 50
    Width = 228
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object DBGrid2: TDBGrid
    Left = 27
    Top = 80
    Width = 510
    Height = 89
    Hint = 'DoubleClick For Details'
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'idmenu'
        Title.Alignment = taCenter
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'menu'
        Title.Alignment = taCenter
        Width = 307
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga_asli'
        Title.Alignment = taCenter
        Title.Caption = 'Harga Asli'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTY'
        Title.Alignment = taCenter
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Diskon'
        Title.Caption = 'Total Diskon'
        Visible = True
      end
      item
        Color = clAqua
        Expanded = False
        FieldName = 'Total'
        Title.Alignment = taCenter
        Width = 109
        Visible = True
      end>
  end
end
