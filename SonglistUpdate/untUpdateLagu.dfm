object FsongList1: TFsongList1
  Left = 231
  Top = 133
  AutoScroll = False
  BorderIcons = []
  Caption = 'Song List Update 6.0'
  ClientHeight = 199
  ClientWidth = 424
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 43
    Top = 68
    Width = 110
    Height = 13
    Caption = 'Vizta Song List File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 43
    Top = 44
    Width = 38
    Height = 13
    Caption = 'Server'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object btnUpdate: TbsSkinXFormButton
    Left = 40
    Top = 121
    Width = 345
    Height = 27
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
    Caption = 'Update'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnUpdateClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnFile: TbsSkinXFormButton
    Left = 361
    Top = 61
    Width = 27
    Height = 24
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
    Caption = '...'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnFileClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object btnExit: TbsSkinXFormButton
    Left = 177
    Top = 153
    Width = 75
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
    Caption = 'Exit'
    NumGlyphs = 1
    Spacing = 1
    OnClick = btnExitClick
    DefActiveFontColor = clNavy
    DefDownFontColor = clBlack
  end
  object edtPath: TbsSkinEdit
    Left = 168
    Top = 64
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
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object bsSkinGauge1: TbsSkinGauge
    Left = 39
    Top = 93
    Width = 345
    Height = 20
    TabOrder = 5
    Visible = False
    SkinDataName = 'gauge'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = [fsBold]
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    ShowProgressText = False
    ShowPercent = True
    MinValue = 0
    MaxValue = 100
    Value = 0
    Vertical = False
  end
  object edtServer: TbsSkinEdit
    Left = 168
    Top = 40
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
    SkinDataName = 'edit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Vizta Karaoke Song List|*.mdb'
    Left = 80
  end
  object bsSkinMessage1: TbsSkinMessage
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    SkinData = FrmInduk.bsSkinData2
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
    MinWidth = 440
    MaxHeight = 525
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 0
    BorderIcons = []
    Left = 24
  end
  object DataSource1: TDataSource
    DataSet = Qmaster
    Left = 112
    Top = 32
  end
  object Qmaster: TTntADOQueryLX
    Connection = AdoDBacces
    CursorType = ctStatic
    CommandText = 
      'SELECT IDMUSIC, VCD, CODE, TITLE, TITLE2, TITLE4,'#13#10'SINGER, SINGE' +
      'R2, SINGER4, PATH, ANALOG, TYPE, FLAG, VOL, HITS, NEW, POPULER'#13#10 +
      ' FROM masters ORDER BY IDMUSIC'#13#10
    Parameters = <>
    SQL.Strings = (
      'SELECT IDMUSIC, VCD, CODE, TITLE, TITLE2, TITLE4,'
      
        'SINGER, SINGER2, SINGER4, PATH, ANALOG, TYPE, FLAG, VOL, HITS, N' +
        'EW, POPULER'
      ' FROM masters ORDER BY IDMUSIC')
    Left = 136
    object QmasterIDMUSIC: TIntegerField
      DefaultExpression = '0'
      FieldName = 'IDMUSIC'
    end
    object QmasterVCD: TTntWideStringField
      FieldName = 'VCD'
      Size = 255
    end
    object QmasterCODE: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CODE'
    end
    object QmasterTITLE: TTntWideStringField
      FieldName = 'TITLE'
      Size = 255
    end
    object QmasterTITLE2: TTntWideStringField
      FieldName = 'TITLE2'
      FixedChar = True
      Size = 100
    end
    object QmasterSINGER: TTntWideStringField
      FieldName = 'SINGER'
      Size = 255
    end
    object QmasterSINGER2: TTntWideStringField
      FieldName = 'SINGER2'
      Size = 255
    end
    object QmasterPATH: TTntWideStringField
      FieldName = 'PATH'
      Size = 255
    end
    object QmasterANALOG: TTntWideStringField
      FieldName = 'ANALOG'
      Size = 255
    end
    object QmasterTYPE: TIntegerField
      DefaultExpression = '0'
      FieldName = 'TYPE'
    end
    object QmasterFLAG: TTntWideStringField
      FieldName = 'FLAG'
      Size = 255
    end
    object QmasterVOL: TIntegerField
      DefaultExpression = '0'
      FieldName = 'VOL'
    end
    object QmasterHITS: TWordField
      DefaultExpression = '0'
      FieldName = 'HITS'
    end
    object QmasterNEW: TWordField
      DefaultExpression = '0'
      FieldName = 'NEW'
    end
    object QmasterPOPULER: TIntegerField
      DefaultExpression = '0'
      FieldName = 'POPULER'
    end
    object QmasterTITLE4: TTntWideStringField
      FieldName = 'TITLE4'
      Size = 255
    end
    object QmasterSINGER4: TTntWideStringField
      FieldName = 'SINGER4'
      Size = 255
    end
  end
  object AdoDB1: TADOConnection
    ConnectionString = 
      '"Provider=MSDASQL.1;Password=Viz3009Ta;User ID=karaoke;Extended ' +
      'Properties="DRIVER={MySQL ODBC 5.1 Driver};UID=karaoke;PWD=Viz30' +
      '09Ta;SERVER=192.168.0.254;DATABASE=karaoke;OPTION=18475;"'
    LoginPrompt = False
    Left = 240
    Top = 8
  end
  object AdoDBacces: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\Project\Songlist' +
      'Backup\SonglistUpdate 6\Data\Vizta3.mdb;Persist Security Info=Fa' +
      'lse'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 272
    Top = 8
  end
  object Qstruktur6: TTntADOQueryLX
    Connection = AdoDB1
    CursorType = ctStatic
    CommandText = 
      #13#10'CREATE TABLE `masters` ('#13#10'  `IDMUSIC` int(11) NOT NULL DEFAULT' +
      ' '#39'0'#39','#13#10'  `VCD` varchar(255) DEFAULT NULL,'#13#10'  `CODE` int(11) unsi' +
      'gned DEFAULT '#39'0'#39','#13#10'  `TITLE` varchar(255) DEFAULT NULL,'#13#10'  `TITL' +
      'E2` varchar(255) DEFAULT NULL,'#13#10'  `TITLE3` varchar(150) DEFAULT ' +
      'NULL,'#13#10'  `TITLE4` varchar(255) DEFAULT NULL,'#13#10'  `TITLE5` varchar' +
      '(255) DEFAULT NULL,'#13#10'  `SINGER` varchar(255) DEFAULT NULL,'#13#10'  `S' +
      'INGER2` varchar(255) DEFAULT NULL,'#13#10'  `SINGER3` varchar(150) DEF' +
      'AULT NULL,'#13#10'  `SINGER4` varchar(255) DEFAULT NULL,'#13#10'  `SINGER5` ' +
      'varchar(255) DEFAULT NULL,'#13#10'  `PATH` varchar(255) DEFAULT NULL,'#13 +
      #10'  `ANALOG` varchar(255) DEFAULT NULL,'#13#10'  `TYPE` int(11) DEFAULT' +
      ' NULL,'#13#10'  `FLAG` varchar(255) DEFAULT NULL,'#13#10'  `VOL` int(11) DEF' +
      'AULT NULL,'#13#10'  `HITS` tinyint(3) unsigned DEFAULT '#39'0'#39','#13#10'  `NEW` t' +
      'inyint(3) unsigned DEFAULT '#39'0'#39','#13#10'  `POPULER` int(10) unsigned DE' +
      'FAULT '#39'0'#39','#13#10'  `DISC` varchar(255) DEFAULT NULL,'#13#10'  `WORD` smalli' +
      'nt(11) unsigned DEFAULT NULL,'#13#10'  `POP` tinyint(3) unsigned NOT N' +
      'ULL DEFAULT '#39'0'#39','#13#10'  `ROCK` tinyint(3) unsigned NOT NULL DEFAULT ' +
      #39'0'#39','#13#10'  `JAZZ` tinyint(3) unsigned NOT NULL DEFAULT '#39'0'#39','#13#10'  `COU' +
      'NTRY` tinyint(3) unsigned NOT NULL DEFAULT '#39'0'#39','#13#10'  `REGGAE` tiny' +
      'int(3) unsigned NOT NULL DEFAULT '#39'0'#39','#13#10'  `RNB` tinyint(3) unsign' +
      'ed NOT NULL DEFAULT '#39'0'#39','#13#10'  `CHACHA` tinyint(3) unsigned NOT NUL' +
      'L DEFAULT '#39'0'#39','#13#10'  PRIMARY KEY (`IDMUSIC`),'#13#10'  KEY `idxTitle1` (`' +
      'TITLE`),'#13#10'  KEY `idxSinger1` (`SINGER`),'#13#10'  KEY `idxCode` (`CODE' +
      '`),'#13#10'  KEY `idxPath` (`PATH`),'#13#10'  KEY `idxType` (`TYPE`),'#13#10'  KEY' +
      ' `idxTitle` (`TITLE3`,`SINGER3`),'#13#10'  KEY `idxKategori` (`TYPE`,`' +
      'TITLE3`,`SINGER3`),'#13#10'  KEY `idxHits` (`HITS`,`TITLE3`,`SINGER3`)' +
      ','#13#10'  KEY `idxHitsKategori` (`TYPE`,`HITS`,`TITLE3`,`SINGER3`),'#13#10 +
      '  KEY `idxNewKategori` (`TYPE`,`NEW`,`IDMUSIC`),'#13#10'  KEY `idxNew`' +
      ' (`NEW`,`IDMUSIC`),'#13#10'  KEY `idxPopuler` (`POPULER`,`TITLE3`,`SIN' +
      'GER3`),'#13#10'  KEY `idxPopulerKategori` (`TYPE`,`POPULER`,`TITLE3`,`' +
      'SINGER3`),'#13#10'  KEY `idxSingerKategori` (`TYPE`,`SINGER3`,`TITLE3`' +
      '),'#13#10'  KEY `idxSinger` (`SINGER3`,`TITLE3`),'#13#10'  KEY `idxTitle5` (' +
      '`TITLE5`),'#13#10'  KEY `idxSinger5` (`SINGER5`)'#13#10') ENGINE=MyISAM DEFA' +
      'ULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;'#13#10#13#10#13#10#13#10
    Parameters = <>
    SQL.Strings = (
      ''
      'CREATE TABLE `masters` ('
      '  `IDMUSIC` int(11) NOT NULL DEFAULT '#39'0'#39','
      '  `VCD` varchar(255) DEFAULT NULL,'
      '  `CODE` int(11) unsigned DEFAULT '#39'0'#39','
      '  `TITLE` varchar(255) DEFAULT NULL,'
      '  `TITLE2` varchar(255) DEFAULT NULL,'
      '  `TITLE3` varchar(150) DEFAULT NULL,'
      '  `TITLE4` varchar(255) DEFAULT NULL,'
      '  `TITLE5` varchar(255) DEFAULT NULL,'
      '  `SINGER` varchar(255) DEFAULT NULL,'
      '  `SINGER2` varchar(255) DEFAULT NULL,'
      '  `SINGER3` varchar(150) DEFAULT NULL,'
      '  `SINGER4` varchar(255) DEFAULT NULL,'
      '  `SINGER5` varchar(255) DEFAULT NULL,'
      '  `PATH` varchar(255) DEFAULT NULL,'
      '  `ANALOG` varchar(255) DEFAULT NULL,'
      '  `TYPE` int(11) DEFAULT NULL,'
      '  `FLAG` varchar(255) DEFAULT NULL,'
      '  `VOL` int(11) DEFAULT NULL,'
      '  `HITS` tinyint(3) unsigned DEFAULT '#39'0'#39','
      '  `NEW` tinyint(3) unsigned DEFAULT '#39'0'#39','
      '  `POPULER` int(10) unsigned DEFAULT '#39'0'#39','
      '  `DISC` varchar(255) DEFAULT NULL,'
      '  `WORD` smallint(11) unsigned DEFAULT NULL,'
      '  `POP` tinyint(3) unsigned NOT NULL DEFAULT '#39'0'#39','
      '  `ROCK` tinyint(3) unsigned NOT NULL DEFAULT '#39'0'#39','
      '  `JAZZ` tinyint(3) unsigned NOT NULL DEFAULT '#39'0'#39','
      '  `COUNTRY` tinyint(3) unsigned NOT NULL DEFAULT '#39'0'#39','
      '  `REGGAE` tinyint(3) unsigned NOT NULL DEFAULT '#39'0'#39','
      '  `RNB` tinyint(3) unsigned NOT NULL DEFAULT '#39'0'#39','
      '  `CHACHA` tinyint(3) unsigned NOT NULL DEFAULT '#39'0'#39','
      '  PRIMARY KEY (`IDMUSIC`),'
      '  KEY `idxTitle1` (`TITLE`),'
      '  KEY `idxSinger1` (`SINGER`),'
      '  KEY `idxCode` (`CODE`),'
      '  KEY `idxPath` (`PATH`),'
      '  KEY `idxType` (`TYPE`),'
      '  KEY `idxTitle` (`TITLE3`,`SINGER3`),'
      '  KEY `idxKategori` (`TYPE`,`TITLE3`,`SINGER3`),'
      '  KEY `idxHits` (`HITS`,`TITLE3`,`SINGER3`),'
      '  KEY `idxHitsKategori` (`TYPE`,`HITS`,`TITLE3`,`SINGER3`),'
      '  KEY `idxNewKategori` (`TYPE`,`NEW`,`IDMUSIC`),'
      '  KEY `idxNew` (`NEW`,`IDMUSIC`),'
      '  KEY `idxPopuler` (`POPULER`,`TITLE3`,`SINGER3`),'
      
        '  KEY `idxPopulerKategori` (`TYPE`,`POPULER`,`TITLE3`,`SINGER3`)' +
        ','
      '  KEY `idxSingerKategori` (`TYPE`,`SINGER3`,`TITLE3`),'
      '  KEY `idxSinger` (`SINGER3`,`TITLE3`),'
      '  KEY `idxTitle5` (`TITLE5`),'
      '  KEY `idxSinger5` (`SINGER5`)'
      ') ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;'
      ''
      ''
      '')
    Left = 168
    object IntegerField1: TIntegerField
      DefaultExpression = '0'
      FieldName = 'IDMUSIC'
    end
    object TntWideStringField1: TTntWideStringField
      FieldName = 'VCD'
      Size = 255
    end
    object IntegerField2: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CODE'
    end
    object TntWideStringField2: TTntWideStringField
      FieldName = 'TITLE'
      Size = 255
    end
    object TntWideStringField3: TTntWideStringField
      FieldName = 'TITLE2'
      FixedChar = True
      Size = 100
    end
    object TntWideStringField4: TTntWideStringField
      FieldName = 'SINGER'
      Size = 255
    end
    object TntWideStringField5: TTntWideStringField
      FieldName = 'SINGER2'
      Size = 255
    end
    object TntWideStringField6: TTntWideStringField
      FieldName = 'PATH'
      Size = 255
    end
    object TntWideStringField7: TTntWideStringField
      FieldName = 'ANALOG'
      Size = 255
    end
    object IntegerField3: TIntegerField
      DefaultExpression = '0'
      FieldName = 'TYPE'
    end
    object TntWideStringField8: TTntWideStringField
      FieldName = 'FLAG'
      Size = 255
    end
    object IntegerField4: TIntegerField
      DefaultExpression = '0'
      FieldName = 'VOL'
    end
    object WordField1: TWordField
      DefaultExpression = '0'
      FieldName = 'HITS'
    end
    object WordField2: TWordField
      DefaultExpression = '0'
      FieldName = 'NEW'
    end
    object IntegerField5: TIntegerField
      DefaultExpression = '0'
      FieldName = 'POPULER'
    end
    object TntWideStringField9: TTntWideStringField
      FieldName = 'TITLE4'
      Size = 255
    end
    object TntWideStringField10: TTntWideStringField
      FieldName = 'SINGER4'
      Size = 255
    end
  end
  object QDropMasters: TTntADOQueryLX
    Connection = AdoDBacces
    CursorType = ctStatic
    CommandText = 'DROP TABLE IF EXISTS `masters`;'#13#10
    Parameters = <>
    SQL.Strings = (
      'DROP TABLE IF EXISTS `masters`;')
    Left = 200
    object IntegerField6: TIntegerField
      DefaultExpression = '0'
      FieldName = 'IDMUSIC'
    end
    object TntWideStringField11: TTntWideStringField
      FieldName = 'VCD'
      Size = 255
    end
    object IntegerField7: TIntegerField
      DefaultExpression = '0'
      FieldName = 'CODE'
    end
    object TntWideStringField12: TTntWideStringField
      FieldName = 'TITLE'
      Size = 255
    end
    object TntWideStringField13: TTntWideStringField
      FieldName = 'TITLE2'
      FixedChar = True
      Size = 100
    end
    object TntWideStringField14: TTntWideStringField
      FieldName = 'SINGER'
      Size = 255
    end
    object TntWideStringField15: TTntWideStringField
      FieldName = 'SINGER2'
      Size = 255
    end
    object TntWideStringField16: TTntWideStringField
      FieldName = 'PATH'
      Size = 255
    end
    object TntWideStringField17: TTntWideStringField
      FieldName = 'ANALOG'
      Size = 255
    end
    object IntegerField8: TIntegerField
      DefaultExpression = '0'
      FieldName = 'TYPE'
    end
    object TntWideStringField18: TTntWideStringField
      FieldName = 'FLAG'
      Size = 255
    end
    object IntegerField9: TIntegerField
      DefaultExpression = '0'
      FieldName = 'VOL'
    end
    object WordField3: TWordField
      DefaultExpression = '0'
      FieldName = 'HITS'
    end
    object WordField4: TWordField
      DefaultExpression = '0'
      FieldName = 'NEW'
    end
    object IntegerField10: TIntegerField
      DefaultExpression = '0'
      FieldName = 'POPULER'
    end
    object TntWideStringField19: TTntWideStringField
      FieldName = 'TITLE4'
      Size = 255
    end
    object TntWideStringField20: TTntWideStringField
      FieldName = 'SINGER4'
      Size = 255
    end
  end
end
