object frm_finanzen: Tfrm_finanzen
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_finanzen'
  ClientHeight = 815
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1280
    Height = 815
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object btn_FinanzenDrucken: TcxButton
      Left = 10000
      Top = 10000
      Width = 1210
      Height = 31
      Caption = 'detailierten Bericht drucken'
      TabOrder = 0
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_FinanzenDruckenClick
    end
    object edt_FinEinAbsender: TcxDBTextEdit
      Left = 117
      Top = 144
      DataBinding.DataField = 'Quelle'
      DataBinding.DataSource = dsEinnahmen
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 2
      OnExit = btn_FinEinSaveClick
      Width = 532
    end
    object edt_FinEinBetrag: TcxDBCurrencyEdit
      Left = 117
      Top = 194
      DataBinding.DataField = 'Betrag'
      DataBinding.DataSource = dsEinnahmen
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 4
      OnExit = btn_FinEinSaveClick
      Width = 532
    end
    object edt_FinEinBEz: TcxDBTextEdit
      Left = 117
      Top = 169
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = dsEinnahmen
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 3
      OnExit = btn_FinEinSaveClick
      Width = 532
    end
    object cxButton2: TcxButton
      Left = 655
      Top = 169
      Width = 581
      Height = 21
      Caption = 'Fixbetrag '#252'bernehmen'
      TabOrder = 6
      OnClick = cxButton2Click
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 710
      Top = 144
      DataBinding.DataField = 'FixBetrag'
      DataBinding.DataSource = dsEinnahmen
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 5
      OnExit = btn_FinEinSaveClick
      Width = 526
    end
    object grd_Finanzen_Einnahmen: TcxGrid
      Left = 32
      Top = 231
      Width = 1216
      Height = 552
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object tv_Einnahmen: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsEinnahmen
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
              end>
          end>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ShowHourglassCursor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object tv_EinnahmenQuelle: TcxGridDBColumn
          Caption = 'Absender'
          DataBinding.FieldName = 'Quelle'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 440
        end
        object tv_EinnahmenBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 440
        end
        object tv_EinnahmenBetrag: TcxGridDBColumn
          DataBinding.FieldName = 'Betrag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
        object tv_EinnahmenFixBetrag: TcxGridDBColumn
          Caption = 'Fixbetrag'
          DataBinding.FieldName = 'FixBetrag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
      end
      object glvl_Einnahmen: TcxGridLevel
        GridView = tv_Einnahmen
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 32
      Top = 62
      Width = 1216
      Height = 58
      Align = dalNone
      BarManager = dxBarManager1
    end
    object cbx_FinAusJahr: TcxDBComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Gueltig_Jahr'
      DataBinding.DataSource = dsAusgaben
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030'
        '2031'
        '2032'
        '2033'
        '2034'
        '2035'
        '2036'
        '2037'
        '2038'
        '2039'
        '2040'
        '2041'
        '2042'
        '2043'
        '2044'
        '2045'
        '2046'
        '2047'
        '2048'
        '2049'
        '2050'
        '2051'
        '2052'
        '2053'
        '2054'
        '2055'
        '2056'
        '2057'
        '2058'
        '2059'
        '2060'
        '2061'
        '2062'
        '2063'
        '2064'
        '2065'
        '2066'
        '2067'
        '2068'
        '2069'
        '2070'
        '2071'
        '2072'
        '2073'
        '2074'
        '2075'
        '2076'
        '2077'
        '2078'
        '2079'
        '2080'
        '2081'
        '2082'
        '2083'
        '2084'
        '2085'
        '2086'
        '2087'
        '2088'
        '2089'
        '2090'
        '2091'
        '2092'
        '2093'
        '2094'
        '2095'
        '2096'
        '2097'
        '2098'
        '2099')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      Visible = False
      OnExit = btn_FinAusSaveClick
      Width = 275
    end
    object cbx_FinAusMonat: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Gueltig_monat'
      DataBinding.DataSource = dsAusgaben
      ParentFont = False
      Properties.Items = <
        item
          Description = 'Januar'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Februar'
          Value = 2
        end
        item
          Description = 'M'#228'rz'
          Value = 3
        end
        item
          Description = 'April'
          Value = 4
        end
        item
          Description = 'Mai'
          Value = 5
        end
        item
          Description = 'Juni'
          Value = 6
        end
        item
          Description = 'Juli'
          Value = 7
        end
        item
          Description = 'August'
          Value = 8
        end
        item
          Description = 'September'
          Value = 9
        end
        item
          Description = 'Oktober'
          Value = 10
        end
        item
          Description = 'November'
          Value = 11
        end
        item
          Description = 'Dezember'
          Value = 12
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 18
      Visible = False
      OnExit = btn_FinAusSaveClick
      Width = 275
    end
    object chkbx_FinAusFixkosten: TcxDBCheckBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'fixkosten'
      DataBinding.DataSource = dsAusgaben
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.OnChange = chkbx_FinAusFixkostenPropertiesChange
      Style.Color = clWindowFrame
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 17
      Transparent = True
      Visible = False
      OnExit = btn_FinAusSaveClick
    end
    object edt_FinAusBetrag: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'betrag'
      DataBinding.DataSource = dsAusgaben
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Visible = False
      OnExit = btn_FinAusSaveClick
      Width = 331
    end
    object edt_FinAusBez: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Beschreibung'
      DataBinding.DataSource = dsAusgaben
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Visible = False
      OnExit = btn_FinAusSaveClick
      Width = 342
    end
    object edt_FinAusBIC: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Bankleitzahl'
      DataBinding.DataSource = dsAusgaben
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Visible = False
      OnExit = btn_FinAusSaveClick
      Width = 342
    end
    object edt_FinAusIBAN: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Kontonummer'
      DataBinding.DataSource = dsAusgaben
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 15
      Visible = False
      OnExit = btn_FinAusSaveClick
      Width = 342
    end
    object edt_FinAusName: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = dsAusgaben
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Visible = False
      OnExit = btn_FinAusSaveClick
      Width = 331
    end
    object edt_FinAusVerwendung: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'verwendungszweck'
      DataBinding.DataSource = dsAusgaben
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 14
      Visible = False
      OnExit = btn_FinAusSaveClick
      Width = 342
    end
    object cxButton1: TcxButton
      Left = 10000
      Top = 10000
      Width = 392
      Height = 21
      Caption = 'Fixbetrag '#252'bernehmen'
      TabOrder = 12
      Visible = False
      OnClick = cxButton1Click
    end
    object edt_FinAusFixBetrag: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'FixBetrag'
      DataBinding.DataSource = dsAusgaben
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Visible = False
      OnExit = btn_FinAusSaveClick
      Width = 331
    end
    object grd_Finanzen_Ausgaben: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1232
      Height = 530
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object tv_Ausgaben: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsAusgaben
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
              end>
          end>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ShowHourglassCursor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object tv_AusgabenName: TcxGridDBColumn
          Caption = 'Empf'#228'nger'
          DataBinding.FieldName = 'Name'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
        end
        object tv_AusgabenBeschreibung: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          DataBinding.IsNullValueType = True
          Width = 200
        end
        object tv_AusgabenKontonummer: TcxGridDBColumn
          Caption = 'IBAN'
          DataBinding.FieldName = 'Kontonummer'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 150
        end
        object tv_AusgabenBankleitzahl: TcxGridDBColumn
          Caption = 'BIC'
          DataBinding.FieldName = 'Bankleitzahl'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 100
        end
        object tv_Ausgabenverwendungszweck: TcxGridDBColumn
          Caption = 'Verwendungszweck'
          DataBinding.FieldName = 'verwendungszweck'
          DataBinding.IsNullValueType = True
          Width = 200
        end
        object tv_Ausgabenbetrag: TcxGridDBColumn
          Caption = 'Betrag'
          DataBinding.FieldName = 'betrag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
        object tv_AusgabenFixBetrag: TcxGridDBColumn
          Caption = 'Fixbetrag'
          DataBinding.FieldName = 'FixBetrag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
        object tv_Ausgabenfixkosten: TcxGridDBColumn
          Caption = 'Fixkosten'
          DataBinding.FieldName = 'fixkosten'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 100
        end
        object tv_AusgabenGueltig_monat: TcxGridDBColumn
          Caption = 'Monat'
          DataBinding.FieldName = 'Gueltig_monat'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Januar'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Februar'
              Value = 2
            end
            item
              Description = 'M'#228'rz'
              Value = 3
            end
            item
              Description = 'April'
              Value = 4
            end
            item
              Description = 'Mai'
              Value = 5
            end
            item
              Description = 'Juni'
              Value = 6
            end
            item
              Description = 'Juli'
              Value = 7
            end
            item
              Description = 'August'
              Value = 8
            end
            item
              Description = 'September'
              Value = 9
            end
            item
              Description = 'Oktober'
              Value = 10
            end
            item
              Description = 'November'
              Value = 11
            end
            item
              Description = 'Dezember'
              Value = 12
            end>
          Width = 80
        end
        object tv_AusgabenGueltig_Jahr: TcxGridDBColumn
          Caption = 'Jahr'
          DataBinding.FieldName = 'Gueltig_Jahr'
          DataBinding.IsNullValueType = True
        end
      end
      object glvl_Ausgaben: TcxGridLevel
        GridView = tv_Ausgaben
      end
    end
    object dxBarDockControl2: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1210
      Height = 58
      Align = dalNone
      BarManager = dxBarManager1
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 10000
      Top = 10000
      Width = 150
      Height = 17
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Quelle'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 10000
      Top = 10000
      Width = 150
      Height = 17
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Betrag'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
      Visible = False
    end
    object DBEdit3: TDBEdit
      Left = 10000
      Top = 10000
      Width = 150
      Height = 17
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      DataField = 'Beschreibung'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      Visible = False
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Eingegangen_Ausgegangen_am'
      ParentFont = False
      Properties.DateButtons = [btnClear, btnToday]
      Properties.DateOnError = deNull
      Properties.DisplayFormat = 'dd.MM.yyyy'
      Properties.EditFormat = 'dd.MM.yyyy'
      Properties.InputKind = ikRegExpr
      Properties.Nullstring = ' '
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.WeekNumbers = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 24
      Visible = False
      Width = 150
    end
    object ComboBox1: TComboBox
      Left = 10000
      Top = 10000
      Width = 145
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      Visible = False
      Items.Strings = (
        'Januar'
        'Februar'
        'M'#228'rz'
        'April'
        'Mai'
        'Juni'
        'Juli'
        'August'
        'September'
        'Oktober'
        'November'
        'Dezember')
    end
    object ComboBox2: TComboBox
      Left = 10000
      Top = 10000
      Width = 145
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      Visible = False
      Items.Strings = (
        '2000'
        '2001'
        '2002'
        '2003'
        '2004'
        '2005'
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030'
        '2031'
        '2032'
        '2033'
        '2034'
        '2035'
        '2036'
        '2037'
        '2038'
        '2039'
        '2040'
        '2041'
        '2042'
        '2043'
        '2044'
        '2045'
        '2046'
        '2047'
        '2048'
        '2049'
        '2050'
        '2051'
        '2052'
        '2053'
        '2054'
        '2055'
        '2056'
        '2057'
        '2058'
        '2059'
        '2060'
        '2061'
        '2062'
        '2063'
        '2064'
        '2065'
        '2066'
        '2067'
        '2068'
        '2069'
        '2070'
        '2071'
        '2072'
        '2073'
        '2074'
        '2075'
        '2076'
        '2077'
        '2078'
        '2079'
        '2080'
        '2081'
        '2082'
        '2083'
        '2084'
        '2085'
        '2086'
        '2087'
        '2088'
        '2089'
        '2090'
        '2091'
        '2092'
        '2093'
        '2094'
        '2095'
        '2096'
        '2097'
        '2098'
        '2099')
    end
    object cxGrid1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1232
      Height = 567
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      object tv_Ausgaben1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
              end>
          end>
        Filtering.ColumnPopup.MultiSelect = False
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ShowHourglassCursor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = 'Kalender'
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = 'Link'
          DataBinding.FieldName = 'Vokabeluebersicht'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Nummer'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Width = 200
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = 'Benutzer'
          DataBinding.FieldName = 'Vokabeltest'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Nummer'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Width = 130
        end
        object cxGridDBColumn4: TcxGridDBColumn
          DataBinding.FieldName = 'Lernstatistik'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Nummer'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Width = 130
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Benutzerverwaltung'
          DataBinding.FieldName = 'Optionen'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Nummer'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Width = 130
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = tv_Ausgaben1
      end
    end
    object dxBarDockControl3: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1210
      Height = 58
      Align = dalNone
      BarManager = dxBarManager1
      Visible = False
    end
    object cx_BelegJahr: TcxDBComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Jahr'
      DataBinding.DataSource = dsBelege
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030'
        '2031'
        '2032'
        '2033'
        '2034'
        '2035'
        '2036'
        '2037'
        '2038'
        '2039'
        '2040'
        '2041'
        '2042'
        '2043'
        '2044'
        '2045'
        '2046'
        '2047'
        '2048'
        '2049'
        '2050'
        '2051'
        '2052'
        '2053'
        '2054'
        '2055'
        '2056'
        '2057'
        '2058'
        '2059'
        '2060'
        '2061'
        '2062'
        '2063'
        '2064'
        '2065'
        '2066'
        '2067'
        '2068'
        '2069'
        '2070'
        '2071'
        '2072'
        '2073'
        '2074'
        '2075'
        '2076'
        '2077'
        '2078'
        '2079'
        '2080'
        '2081'
        '2082'
        '2083'
        '2084'
        '2085'
        '2086'
        '2087'
        '2088'
        '2089'
        '2090'
        '2091'
        '2092'
        '2093'
        '2094'
        '2095'
        '2096'
        '2097'
        '2098'
        '2099')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 35
      Visible = False
      OnExit = btn_BelegeSaveClick
      Width = 249
    end
    object cx_BelegMonat: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Monat'
      DataBinding.DataSource = dsBelege
      ParentFont = False
      Properties.Items = <
        item
          Description = 'Januar'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Februar'
          Value = 2
        end
        item
          Description = 'M'#228'rz'
          Value = 3
        end
        item
          Description = 'April'
          Value = 4
        end
        item
          Description = 'Mai'
          Value = 5
        end
        item
          Description = 'Juni'
          Value = 6
        end
        item
          Description = 'Juli'
          Value = 7
        end
        item
          Description = 'August'
          Value = 8
        end
        item
          Description = 'September'
          Value = 9
        end
        item
          Description = 'Oktober'
          Value = 10
        end
        item
          Description = 'November'
          Value = 11
        end
        item
          Description = 'Dezember'
          Value = 12
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 34
      Visible = False
      OnExit = btn_BelegeSaveClick
      Width = 261
    end
    object edt_BelegeNummer: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Nummer'
      DataBinding.DataSource = dsBelege
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 29
      Visible = False
      OnExit = btn_BelegeSaveClick
      Width = 547
    end
    object edt_BelegeBetrag: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Betrag'
      DataBinding.DataSource = dsBelege
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 32
      Visible = False
      OnExit = btn_BelegeSaveClick
      Width = 546
    end
    object edt_BelegeAussteller: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Aussteller'
      DataBinding.DataSource = dsBelege
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 31
      Visible = False
      OnExit = btn_BelegeSaveClick
      Width = 547
    end
    object cbx_BelegeKategorie: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Kategorie'
      DataBinding.DataSource = dsBelege
      Properties.Items = <
        item
          Description = 'Lebensmittel'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Textilien'
          Value = 1
        end
        item
          Description = 'Schuhe'
          Value = 2
        end
        item
          Description = 'Medizin'
          Value = 3
        end
        item
          Description = 'Drogerie'
          Value = 4
        end
        item
          Description = 'Elektronik'
          Value = 5
        end
        item
          Description = 'KFZ'
          Value = 6
        end
        item
          Description = 'Sonstiges'
          Value = 7
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 33
      Visible = False
      OnExit = btn_BelegeSaveClick
      Width = 546
    end
    object edt_BelegDatum: TcxDBDateEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Datum'
      DataBinding.DataSource = dsBelege
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 30
      Visible = False
      OnExit = btn_BelegeSaveClick
      Width = 547
    end
    object grd_Finanzen_Belege: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1210
      Height = 557
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 36
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object tv_Belege: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsBelege
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
              end>
          end>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ShowHourglassCursor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object tv_BelegeNummer: TcxGridDBColumn
          DataBinding.FieldName = 'Nummer'
          DataBinding.IsNullValueType = True
          Width = 250
        end
        object tv_BelegeDatum: TcxGridDBColumn
          DataBinding.FieldName = 'Datum'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 80
        end
        object tv_BelegeAussteller: TcxGridDBColumn
          DataBinding.FieldName = 'Aussteller'
          DataBinding.IsNullValueType = True
          Width = 250
        end
        object tv_BelegeBetrag: TcxGridDBColumn
          DataBinding.FieldName = 'Betrag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
        object tv_BelegeKategorie: TcxGridDBColumn
          DataBinding.FieldName = 'Kategorie'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Lebensmittel'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Textilien'
              Value = 1
            end
            item
              Description = 'Schuhe'
              Value = 2
            end
            item
              Description = 'Medizin'
              Value = 3
            end
            item
              Description = 'Drogerie'
              Value = 4
            end
            item
              Description = 'Elektronik'
              Value = 5
            end
            item
              Description = 'KFZ'
              Value = 6
            end
            item
              Description = 'Sonstiges'
              Value = 7
            end>
          Width = 250
        end
        object tv_BelegeMonat: TcxGridDBColumn
          DataBinding.FieldName = 'Monat'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Januar'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Februar'
              Value = 2
            end
            item
              Description = 'M'#228'rz'
              Value = 3
            end
            item
              Description = 'April'
              Value = 4
            end
            item
              Description = 'Mai'
              Value = 5
            end
            item
              Description = 'Juni'
              Value = 6
            end
            item
              Description = 'Juli'
              Value = 7
            end
            item
              Description = 'August'
              Value = 8
            end
            item
              Description = 'September'
              Value = 9
            end
            item
              Description = 'Oktober'
              Value = 10
            end
            item
              Description = 'November'
              Value = 11
            end
            item
              Description = 'Dezember'
              Value = 12
            end>
          Width = 80
        end
        object tv_BelegeJahr: TcxGridDBColumn
          DataBinding.FieldName = 'Jahr'
          DataBinding.IsNullValueType = True
        end
      end
      object glvl_Belege: TcxGridLevel
        GridView = tv_Belege
      end
    end
    object dxBarDockControl4: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1210
      Height = 58
      Align = dalNone
      BarManager = dxBarManager1
      Visible = False
    end
    object grd_Finanzen_Gutscheine: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1210
      Height = 557
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 44
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object cxGridDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsGutschein
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
              end>
          end>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ShowHourglassCursor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object cxGridDBTableView2Nummer: TcxGridDBColumn
          DataBinding.FieldName = 'Nummer'
          DataBinding.IsNullValueType = True
          Width = 250
        end
        object cxGridDBTableView2Datum: TcxGridDBColumn
          DataBinding.FieldName = 'Datum'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 80
        end
        object cxGridDBTableView2Bezeichnung: TcxGridDBColumn
          Caption = 'Aussteller'
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 250
        end
        object cxGridDBTableView2Wert: TcxGridDBColumn
          DataBinding.FieldName = 'Wert'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
        object cxGridDBTableView2Restwert: TcxGridDBColumn
          DataBinding.FieldName = 'Restwert'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 80
        end
        object cxGridDBTableView2AbfragePin: TcxGridDBColumn
          Caption = 'Abfragepin'
          DataBinding.FieldName = 'AbfragePin'
          DataBinding.IsNullValueType = True
          Width = 100
        end
      end
      object cxGridLevel3: TcxGridLevel
        GridView = cxGridDBTableView2
      end
    end
    object edt_GutscheinNummer: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Nummer'
      DataBinding.DataSource = dsGutschein
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 38
      Visible = False
      OnExit = btn_GutscheinSaveClick
      Width = 542
    end
    object edt_GutscheinWert: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Wert'
      DataBinding.DataSource = dsGutschein
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 41
      Visible = False
      OnExit = btn_GutscheinSaveClick
      Width = 544
    end
    object edt_GutscheinAussteller: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = dsGutschein
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 39
      Visible = False
      OnExit = btn_GutscheinSaveClick
      Width = 542
    end
    object edt_GutscheinDatum: TcxDBDateEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Datum'
      DataBinding.DataSource = dsGutschein
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 40
      Visible = False
      OnExit = btn_GutscheinSaveClick
      Width = 542
    end
    object edt_GutscheinRestwert: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Restwert'
      DataBinding.DataSource = dsGutschein
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 42
      Visible = False
      OnExit = btn_GutscheinSaveClick
      Width = 544
    end
    object edt_GutscheinPin: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'AbfragePin'
      DataBinding.DataSource = dsGutschein
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 43
      Visible = False
      OnExit = btn_GutscheinSaveClick
      Width = 544
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Monats'#252'bersicht'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object grpbx_FinanzenUebersicht: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = #220'bersicht'
      ItemIndex = 3
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = grpbx_FinanzenUebersicht
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Einnahmen:'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lbl_Einnahmenlabel: TdxLayoutLabeledItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Einnahmen'
      Index = 0
    end
    object lbl_Einnahmen: TdxLayoutLabeledItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      SizeOptions.Height = 17
      SizeOptions.Width = 250
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Label15'
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = grpbx_FinanzenUebersicht
      AlignHorz = ahClient
      CaptionOptions.Text = 'variable Kosten:'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object lbl_varKostenlabel: TdxLayoutLabeledItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'variable Kosten'
      Index = 0
    end
    object lbl_varKosten: TdxLayoutLabeledItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.Height = 17
      SizeOptions.Width = 250
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Label15'
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = grpbx_FinanzenUebersicht
      AlignHorz = ahClient
      CaptionOptions.Text = 'fixe Kosten:'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object lbl_fixKostenlabel: TdxLayoutLabeledItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'fixe Kosten'
      Index = 0
    end
    object lbl_fixKosten: TdxLayoutLabeledItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.Height = 17
      SizeOptions.Width = 250
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Label15'
      Index = 1
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = grpbx_FinanzenUebersicht
      AlignHorz = ahClient
      CaptionOptions.Text = 'verf'#252'gbare Restsumme:'
      ItemIndex = 3
      Index = 3
    end
    object lbl_Einnahmen_summelabel: TdxLayoutLabeledItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Einnahmen'
      Index = 0
    end
    object lbl_Einnahmen_summe: TdxLayoutLabeledItem
      Parent = dxLayoutGroup17
      AlignHorz = ahRight
      AlignVert = avClient
      SizeOptions.Height = 17
      SizeOptions.Width = 250
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Label'
      CaptionOptions.Width = 300
      Index = 1
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = grpbx_FinanzenUebersicht
      CaptionOptions.Text = 'btn_FinanzenDrucken'
      CaptionOptions.Visible = False
      Control = btn_FinanzenDrucken
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 1053
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Einnahmen'
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup24
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1276
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Einnahmequellen:'
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Absender:'
      Control = edt_FinEinAbsender
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Fixbetrag:'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Beschreibung:'
      Control = edt_FinEinBEz
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Betrag:'
      Control = edt_FinEinBetrag
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Finanzen_Einnahmen'
      CaptionOptions.Visible = False
      Control = grd_Finanzen_Einnahmen
      ControlOptions.OriginalHeight = 610
      ControlOptions.OriginalWidth = 1272
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup31: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Ausgaben'
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup33
      CaptionOptions.Text = 'dxBarDockControl2'
      CaptionOptions.Visible = False
      Control = dxBarDockControl2
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1276
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup33: TdxLayoutGroup
      Parent = dxLayoutGroup31
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ausgaben'
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Empf'#228'nger:'
      Control = edt_FinAusName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Beschreibung:'
      Control = edt_FinAusBez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Fixkosten:'
      Control = chkbx_FinAusFixkosten
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 13
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Betrag:'
      Control = edt_FinAusBetrag
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Verwendungszweck:'
      Control = edt_FinAusVerwendung
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lbl_FinAusMonat: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'G'#252'ltig f'#252'r Monat:'
      Control = cbx_FinAusMonat
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Fixbetrag:'
      Control = edt_FinAusFixBetrag
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'IBAN:'
      Control = edt_FinAusIBAN
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lbl_FinAusJahr: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'G'#252'ltig f'#252'r Jahr:'
      Control = cbx_FinAusJahr
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup15
      CaptionOptions.Text = 'BIC:'
      Control = edt_FinAusBIC
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup31
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Finanzen_Ausgaben'
      CaptionOptions.Visible = False
      Control = grd_Finanzen_Ausgaben
      ControlOptions.OriginalHeight = 586
      ControlOptions.OriginalWidth = 1272
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup41: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Verf'#252'gung'
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutGroup43: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Monat ausw'#228'hlen'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup44: TdxLayoutGroup
      Parent = dxLayoutGroup43
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup45: TdxLayoutGroup
      Parent = dxLayoutGroup44
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup45
      CaptionOptions.Text = 'Monat:'
      Control = ComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup45
      CaptionOptions.Text = 'Jahr:'
      Control = ComboBox2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup46: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Verf'#252'gung'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup47: TdxLayoutGroup
      Parent = dxLayoutGroup25
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup48: TdxLayoutGroup
      Parent = dxLayoutGroup47
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup25
      CaptionOptions.Text = 'Einnahme / Ausgabe:'
      Control = DBEdit1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 150
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup25
      CaptionOptions.Text = 'Beschreibung: '
      Control = DBEdit3
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 150
      Index = 2
    end
    object dxLayoutGroup49: TdxLayoutGroup
      Parent = dxLayoutGroup47
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object Label2: TdxLayoutLabeledItem
      Parent = dxLayoutGroup49
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Betrag:'
      Index = 0
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup49
      CaptionOptions.Text = 'DBEdit2'
      CaptionOptions.Visible = False
      Control = DBEdit2
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 150
      Index = 1
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup49
      CaptionOptions.Text = 'Eingang / Ausgang am:'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 575
      ControlOptions.OriginalWidth = 1072
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup50: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Belege'
      Index = 4
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup52
      CaptionOptions.Text = 'dxBarDockControl3'
      CaptionOptions.Visible = False
      Control = dxBarDockControl3
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1276
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup52: TdxLayoutGroup
      Parent = dxLayoutGroup50
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Belege'
      Index = 0
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nummer:'
      Control = edt_BelegeNummer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Betrag:'
      Control = edt_BelegeBetrag
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Datum:'
      Control = edt_BelegDatum
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Kategorie:'
      Control = cbx_BelegeKategorie
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Aussteller:'
      Control = edt_BelegeAussteller
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutGroup23
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Monat:'
      Control = cx_BelegMonat
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutGroup23
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Jahr:'
      Control = cx_BelegJahr
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 155
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutGroup52
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
      CaptionOptions.Text = 'grd_Finanzen_Belege'
      CaptionOptions.Visible = False
      Control = grd_Finanzen_Belege
      ControlOptions.OriginalHeight = 610
      ControlOptions.OriginalWidth = 1272
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup59: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Gutscheine'
      Index = 5
    end
    object dxLayoutItem41: TdxLayoutItem
      Parent = dxLayoutGroup61
      CaptionOptions.Text = 'dxBarDockControl4'
      CaptionOptions.Visible = False
      Control = dxBarDockControl4
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1276
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup61: TdxLayoutGroup
      Parent = dxLayoutGroup59
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Gutscheine'
      Index = 0
    end
    object dxLayoutItem42: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nummer:'
      Control = edt_GutscheinNummer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem43: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Wert:'
      Control = edt_GutscheinWert
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Aussteller:'
      Control = edt_GutscheinAussteller
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem45: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Restwert:'
      Control = edt_GutscheinRestwert
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem46: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Datum:'
      Control = edt_GutscheinDatum
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem47: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Abfragepin:'
      Control = edt_GutscheinPin
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = dxLayoutGroup61
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Finanzen_Gutscheine'
      CaptionOptions.Visible = False
      Control = grd_Finanzen_Gutscheine
      ControlOptions.OriginalHeight = 610
      ControlOptions.OriginalWidth = 1272
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lbl_fixKosten_summe: TdxLayoutLabeledItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Label'
      CaptionOptions.Width = 300
      Index = 1
    end
    object lbl_fixKosten_summelabel: TdxLayoutLabeledItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '- fixe Kosten'
      Index = 0
    end
    object lbl_varKosten_summelabel: TdxLayoutLabeledItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '- variable Kosten'
      Index = 0
    end
    object lbl_varKosten_summe: TdxLayoutLabeledItem
      Parent = dxLayoutGroup6
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Label'
      CaptionOptions.Width = 300
      Index = 1
    end
    object lbl_restsummelabel: TdxLayoutLabeledItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = '[B]= verf'#252'gbare Restsumme[/B]'
      Index = 0
    end
    object lbl_restsumme: TdxLayoutLabeledItem
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      CaptionOptions.AlignHorz = taRightJustify
      CaptionOptions.Text = 'Label'
      CaptionOptions.Width = 300
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup14
      CaptionOptions.Text = '[B]= verf'#252'gbare Restsumme[/B]'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup24
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup33
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup41
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup52
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup23: TdxLayoutGroup
      Parent = dxLayoutGroup21
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = dxLayoutGroup46
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup26: TdxLayoutGroup
      Parent = dxLayoutGroup61
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup27: TdxLayoutGroup
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup28: TdxLayoutGroup
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
  end
  object qEinnahmen: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Quelle,Betrag,Bezeichnung,ID_Benutzer, FixBetrag'
      'From manager_finanzen_einnahmen'
      '')
    Left = 184
    Top = 88
  end
  object dsEinnahmen: TDataSource
    DataSet = qEinnahmen
    Left = 184
    Top = 144
  end
  object qAusgaben: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID,Name,Beschreibung,Kontonummer, Bankleitzahl, verwendun' +
        'gszweck, betrag,fixkosten,Gueltig_monat,Gueltig_Jahr,ID_Benutzer' +
        ', FixBetrag'
      'From manager_finanzen_Ausgaben'
      '')
    Left = 280
    Top = 88
  end
  object dsAusgaben: TDataSource
    DataSet = qAusgaben
    Left = 280
    Top = 144
  end
  object pm_Einnahmen: TcxGridPopupMenu
    Grid = grd_Finanzen_Einnahmen
    PopupMenus = <
      item
        GridView = tv_Einnahmen
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        PopupMenu = pmm_Einnahmen
      end>
    Left = 208
    Top = 368
  end
  object pm_Ausgaben: TcxGridPopupMenu
    Grid = grd_Finanzen_Ausgaben
    PopupMenus = <
      item
        GridView = tv_Ausgaben
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        PopupMenu = pmm_Ausgaben
      end>
    Left = 304
    Top = 360
  end
  object sdlg_Ausgaben: TSaveDialog
    Filter = 'Excel (*.xls)|*.xls'
    Left = 456
    Top = 400
  end
  object sdlg_Einnahmen: TSaveDialog
    Filter = 'Excel (*.xls)|*.xls'
    Left = 376
    Top = 400
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PopupMenu1'
      'PopupMenu2'
      'pmm_Belege')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.Images = dm_PCM.imglst_16x16
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    ImageOptions.UseLargeImagesForLargeIcons = True
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 616
    Top = 392
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1273
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_FinEinNew'
        end
        item
          Visible = True
          ItemName = 'btn_FinEinSave'
        end
        item
          Visible = True
          ItemName = 'btn_FinEinCancel'
        end
        item
          Visible = True
          ItemName = 'btn_FinEinDelete'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1273
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_FinAusNew'
        end
        item
          Visible = True
          ItemName = 'btn_FinAusSave'
        end
        item
          Visible = True
          ItemName = 'btn_FinAusCancel'
        end
        item
          Visible = True
          ItemName = 'btn_FinAusDelete'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 999
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_BelegeNew'
        end
        item
          Visible = True
          ItemName = 'btn_BelegeSave'
        end
        item
          Visible = True
          ItemName = 'btn_BelegeCancel'
        end
        item
          Visible = True
          ItemName = 'btn_BelegeDelete'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = dxBarDockControl4
      DockedDockControl = dxBarDockControl4
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 999
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_GutscheinNew'
        end
        item
          Visible = True
          ItemName = 'btn_GutscheinSave'
        end
        item
          Visible = True
          ItemName = 'btn_GutscheinCancel'
        end
        item
          Visible = True
          ItemName = 'btn_GutscheinDelete'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_FinEinNew: TdxBarLargeButton
      Caption = 'Einnahme anlegen'
      Category = 0
      Hint = 'Einnahme anlegen'
      Visible = ivAlways
      OnClick = btn_FinEinNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_FinEinDelete: TdxBarLargeButton
      Caption = 'Einnahme L'#246'schen'
      Category = 0
      Hint = 'Einnahme L'#246'schen'
      Visible = ivAlways
      OnClick = btn_FinEinDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_FinEinCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_FinEinCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_FinEinSave: TdxBarLargeButton
      Caption = 'Einnahme Speichern'
      Category = 0
      Hint = 'Einnahme Speichern'
      Visible = ivAlways
      OnClick = btn_FinEinSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_FinAusNew: TdxBarLargeButton
      Caption = 'Ausgabe anlegen'
      Category = 0
      Hint = 'Ausgabe anlegen'
      Visible = ivAlways
      OnClick = btn_FinAusNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_FinAusDelete: TdxBarLargeButton
      Caption = 'Ausgabe L'#246'schen'
      Category = 0
      Hint = 'Ausgabe L'#246'schen'
      Visible = ivAlways
      OnClick = btn_FinAusDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_FinAusCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_FinAusCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_FinAusSave: TdxBarLargeButton
      Caption = 'Ausgabe Speichern'
      Category = 0
      Hint = 'Ausgabe Speichern'
      Visible = ivAlways
      OnClick = btn_FinAusSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Alle Fixbetr'#228'ge '#252'bernehmen'
      Category = 0
      Hint = 'Alle Fixbetr'#228'ge '#252'bernehmen'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
      AutoGrayScale = False
      LargeImageIndex = 6
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Alle Fixbetr'#228'ge '#252'bernehmen'
      Category = 0
      Hint = 'Alle Fixbetr'#228'ge '#252'bernehmen'
      Visible = ivAlways
      OnClick = dxBarLargeButton2Click
      AutoGrayScale = False
      LargeImageIndex = 6
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Alle Betr'#228'ge auf 0 setzen'
      Category = 0
      Hint = 'Alle Betr'#228'ge auf 0 setzen'
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
      AutoGrayScale = False
      LargeImageIndex = 6
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Alle Betr'#228'ge auf 0 setzen'
      Category = 0
      Hint = 'Alle Betr'#228'ge auf 0 setzen'
      Visible = ivAlways
      OnClick = dxBarLargeButton4Click
      AutoGrayScale = False
      LargeImageIndex = 6
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_BelegeNew: TdxBarLargeButton
      Caption = 'Beleg anlegen'
      Category = 0
      Hint = 'Beleg anlegen'
      Visible = ivAlways
      OnClick = btn_BelegeNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_BelegeSave: TdxBarLargeButton
      Caption = 'Beleg Speichern'
      Category = 0
      Hint = 'Beleg Speichern'
      Visible = ivAlways
      OnClick = btn_BelegeSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_BelegeCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_BelegeCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_BelegeDelete: TdxBarLargeButton
      Caption = 'Beleg l'#246'schen'
      Category = 0
      Hint = 'Beleg l'#246'schen'
      Visible = ivAlways
      OnClick = btn_BelegeDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_GutscheinNew: TdxBarLargeButton
      Caption = 'Gutschein anlegen'
      Category = 0
      Hint = 'Gutschein anlegen'
      Visible = ivAlways
      OnClick = btn_GutscheinNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_GutscheinSave: TdxBarLargeButton
      Caption = 'Gutschein Speichern'
      Category = 0
      Hint = 'Gutschein Speichern'
      Visible = ivAlways
      OnClick = btn_GutscheinSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_GutscheinCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_GutscheinCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_GutscheinDelete: TdxBarLargeButton
      Caption = 'Gutschein l'#246'schen'
      Category = 0
      Hint = 'Gutschein l'#246'schen'
      Visible = ivAlways
      OnClick = btn_GutscheinDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object NachExcelexportieren1: TdxBarButton
      Caption = 'Nach &Excel exportieren...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 63
      OnClick = NachExcelexportieren1Click
    end
    object NachExcelexportieren2: TdxBarButton
      Caption = 'Nach &Excel exportieren...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 63
      OnClick = NachExcelexportieren2Click
    end
    object MenuItem1: TdxBarButton
      Caption = 'Nach &Excel exportieren...'
      Category = 2
      Visible = ivAlways
      ImageIndex = 63
      OnClick = MenuItem1Click
    end
    object NachEx1: TdxBarButton
      Caption = 'Nach &Excel exportieren...'
      Category = 3
      Visible = ivAlways
      ImageIndex = 63
      OnClick = NachEx1Click
    end
  end
  object pmm_Einnahmen: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'NachExcelexportieren1'
      end>
    UseOwnFont = False
    Left = 722
    Top = 391
    PixelsPerInch = 96
  end
  object pmm_Ausgaben: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'MenuItem1'
      end>
    UseOwnFont = False
    Left = 810
    Top = 391
    PixelsPerInch = 96
  end
  object pm_Belege: TcxGridPopupMenu
    Grid = grd_Finanzen_Belege
    PopupMenus = <
      item
        GridView = tv_Belege
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        PopupMenu = pmm_Belege
      end>
    Left = 320
    Top = 288
  end
  object pm_Gutscheine: TcxGridPopupMenu
    Grid = grd_Finanzen_Gutscheine
    PopupMenus = <
      item
        GridView = cxGridDBTableView2
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        PopupMenu = pmm_Gutscheine
      end>
    Left = 224
    Top = 296
  end
  object pmm_Belege: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'NachEx1'
      end>
    UseOwnFont = False
    Left = 808
    Top = 448
    PixelsPerInch = 96
  end
  object pmm_Gutscheine: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'NachExcelexportieren2'
      end>
    UseOwnFont = False
    Left = 288
    Top = 552
    PixelsPerInch = 96
  end
  object qBelege: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID,Nummer,Datum,Aussteller,Betrag,Kategorie,Jahr,Monat,ID' +
        '_Benutzer'
      'From manager_finanzen_belege')
    Left = 120
    Top = 104
  end
  object dsBelege: TDataSource
    DataSet = qBelege
    Left = 112
    Top = 176
  end
  object qGutschein: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID,Nummer,Bezeichnung,Datum,Wert,Restwert,AbfragePin,ID_B' +
        'enutzer'
      'From manager_finanzen_gutschein')
    Left = 56
    Top = 112
  end
  object dsGutschein: TDataSource
    DataSet = qGutschein
    Left = 48
    Top = 184
  end
end
