object FpurchaseOrderMaster: TFpurchaseOrderMaster
  Left = 133
  Top = 157
  Width = 995
  Height = 548
  Caption = 'FpurchaseOrderMaster'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 70
    Top = 32
    Width = 539
    Height = 281
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'idorder'
        Title.Alignment = taCenter
        Title.Caption = 'ID-Order'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idkarrequest'
        Title.Alignment = taCenter
        Title.Caption = 'Request'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idkonfirmasi'
        Title.Alignment = taCenter
        Title.Caption = 'Konfirmasi'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_order'
        Title.Alignment = taCenter
        Title.Caption = 'Tgl Order'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_perlu'
        Title.Alignment = taCenter
        Title.Caption = 'Tgl Perlu'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tgl_janji'
        Title.Alignment = taCenter
        Title.Caption = 'Tgl Janji'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nominal'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'iddistributor'
        Title.Alignment = taCenter
        Title.Caption = 'Distributor'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 369
    Width = 809
    Height = 328
    FixedColor = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindow
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'idbarang'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'barang'
        Title.Caption = 'BARANG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'satuan'
        Title.Caption = 'SATUAN'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'discount'
        Title.Caption = 'DISCOUNT'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga'
        Title.Caption = 'HARGA'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qty'
        Title.Caption = 'QTY'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Caltotal'
        Title.Caption = 'TOTAL'
        Width = 125
        Visible = True
      end>
  end
end
