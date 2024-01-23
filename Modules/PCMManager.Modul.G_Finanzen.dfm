object frm_finanzen: Tfrm_finanzen
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_finanzen'
  ClientHeight = 815
  ClientWidth = 987
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
  object pnl_Design: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 815
    Width = 987
    object AG_pc_Finanzen: TcxPageControl
      Left = 3
      Top = 3
      Width = 981
      Height = 809
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = C_ts_Aus
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.TabSlants.Kind = skCutCorner
      Properties.TabWidth = 100
      OnChange = AG_pc_FinanzenChange
      ClientRectBottom = 803
      ClientRectLeft = 2
      ClientRectRight = 975
      ClientRectTop = 28
      object A_ts_MU: TcxTabSheet
        Caption = 'Monats'#252'bersicht'
        ImageIndex = 3
        object grpbx_FinanzenUebersicht: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = #220'bersicht'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 775
          Width = 973
          object ckbx_EditReport: TCheckBox
            Left = 6
            Top = 324
            Width = 161
            Height = 17
            Caption = 'Bericht bearbeiten'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
          end
          object btn_FinanzenDrucken: TcxButton
            Left = 8
            Top = 317
            Width = 1053
            Height = 31
            Caption = 'detailierten Bericht drucken'
            TabOrder = 0
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = btn_FinanzenDruckenClick
          end
          object grpbx_FinanzenEinnahmen: TcxGroupBox
            AlignWithMargins = True
            Left = 8
            Top = 24
            Margins.Left = 5
            Margins.Top = 6
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Caption = 'Einnahmen:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            ExplicitTop = 2
            Height = 53
            Width = 957
            object lbl_Einnahmen: TcxLabel
              Left = 798
              Top = 24
              AutoSize = False
              Caption = 'Label15'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 17
              Width = 250
              AnchorX = 1048
            end
            object lbl_Einnahmenlabel: TcxLabel
              Left = 16
              Top = 24
              Caption = 'Einnahmen'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
          object grpbx_FinanzenGesamt: TcxGroupBox
            AlignWithMargins = True
            Left = 8
            Top = 201
            Margins.Left = 5
            Margins.Top = 6
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Caption = 'verf'#252'gbare Restsumme:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 3
            ExplicitTop = 179
            Height = 110
            Width = 957
            object lbl_Einnahmen_summe: TcxLabel
              Left = 798
              Top = 24
              AutoSize = False
              Caption = 'Label15'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 17
              Width = 250
              AnchorX = 1048
            end
            object lbl_Einnahmen_summelabel: TcxLabel
              Left = 16
              Top = 24
              Caption = 'Einnahmen'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_fixKosten_summe: TcxLabel
              Left = 798
              Top = 62
              AutoSize = False
              Caption = 'Label15'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 17
              Width = 250
              AnchorX = 1048
            end
            object lbl_fixKosten_summelabel: TcxLabel
              Left = 16
              Top = 62
              Caption = '- fixe Kosten'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_restsumme: TcxLabel
              Left = 798
              Top = 81
              AutoSize = False
              Caption = 'Label15'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 17
              Width = 250
              AnchorX = 1048
            end
            object lbl_restsummelabel: TcxLabel
              Left = 16
              Top = 81
              Caption = '= verf'#252'gbare Restsumme'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taLeftJustify
              Transparent = True
            end
            object lbl_varKosten_summe: TcxLabel
              Left = 798
              Top = 43
              AutoSize = False
              Caption = 'Label15'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 17
              Width = 250
              AnchorX = 1048
            end
            object lbl_varKosten_summelabel: TcxLabel
              Left = 16
              Top = 43
              Caption = '- variable Kosten'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object pnl_FinanzenGesamt: TPanel
              Left = 16
              Top = 78
              Width = 1034
              Height = 2
              BevelInner = bvLowered
              TabOrder = 8
            end
          end
          object grpbx_FinanzenFixKosten: TcxGroupBox
            AlignWithMargins = True
            Left = 8
            Top = 142
            Margins.Left = 5
            Margins.Top = 6
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Caption = 'fixe Kosten:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 4
            ExplicitTop = 120
            Height = 53
            Width = 957
            object lbl_fixKosten: TcxLabel
              Left = 798
              Top = 24
              AutoSize = False
              Caption = 'Label15'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 17
              Width = 250
              AnchorX = 1048
            end
            object lbl_fixKostenlabel: TcxLabel
              Left = 16
              Top = 24
              Caption = 'fixe Kosten'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
          object grpbx_FinanzenVarKosten: TcxGroupBox
            AlignWithMargins = True
            Left = 8
            Top = 83
            Margins.Left = 5
            Margins.Top = 6
            Margins.Right = 5
            Margins.Bottom = 0
            Align = alTop
            Caption = 'variable Kosten:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 5
            ExplicitTop = 61
            Height = 53
            Width = 957
            object lbl_varKosten: TcxLabel
              Left = 798
              Top = 24
              AutoSize = False
              Caption = 'Label15'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taRightJustify
              Transparent = True
              Height = 17
              Width = 250
              AnchorX = 1048
            end
            object lbl_varKostenlabel: TcxLabel
              Left = 16
              Top = 24
              Caption = 'variable Kosten'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
        end
      end
      object B_ts_Ein: TcxTabSheet
        Caption = 'Einnahmen'
        ImageIndex = 6
        object gbx_Finanzen_Einnahmen_Quelle: TcxGroupBox
          Left = 0
          Top = 63
          Align = alClient
          Caption = 'Einnahmequellen:'
          TabOrder = 0
          Height = 712
          Width = 973
          object pnl_Finanzen_Einnahmen: TcxGroupBox
            Left = 3
            Top = 15
            Align = alTop
            PanelStyle.Active = True
            ParentFont = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 98
            Width = 967
            object edt_FinEinAbsender: TcxDBTextEdit
              Left = 96
              Top = 8
              DataBinding.DataField = 'Quelle'
              DataBinding.DataSource = dsEinnahmen
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = btn_FinEinSaveClick
              Width = 400
            end
            object edt_FinEinBetrag: TcxDBCurrencyEdit
              Left = 96
              Top = 62
              DataBinding.DataField = 'Betrag'
              DataBinding.DataSource = dsEinnahmen
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              OnExit = btn_FinEinSaveClick
              Width = 400
            end
            object edt_FinEinBEz: TcxDBTextEdit
              Left = 96
              Top = 35
              DataBinding.DataField = 'Bezeichnung'
              DataBinding.DataSource = dsEinnahmen
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              OnExit = btn_FinEinSaveClick
              Width = 400
            end
            object lbl_FinEinAbsender: TcxLabel
              Left = 8
              Top = 11
              Caption = 'Absender:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinEinBetrag: TcxLabel
              Left = 8
              Top = 65
              Caption = 'Betrag:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinEinBEz: TcxLabel
              Left = 8
              Top = 38
              Caption = 'Beschreibung:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object cxButton2: TcxButton
              Left = 607
              Top = 35
              Width = 400
              Height = 21
              Caption = 'Fixbetrag '#252'bernehmen'
              TabOrder = 4
              OnClick = cxButton2Click
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit
              Left = 607
              Top = 8
              DataBinding.DataField = 'FixBetrag'
              DataBinding.DataSource = dsEinnahmen
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              OnExit = btn_FinEinSaveClick
              Width = 400
            end
            object cxLabel2: TcxLabel
              Left = 540
              Top = 11
              Caption = 'Fixbetrag:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
          object grd_Finanzen_Einnahmen: TcxGrid
            Left = 3
            Top = 113
            Width = 967
            Height = 590
            Align = alClient
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
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
        end
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 973
          Height = 63
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object C_ts_Aus: TcxTabSheet
        Caption = 'Ausgaben'
        ImageIndex = 5
        object gbx_Finanzen_Ausgaben: TcxGroupBox
          Left = 0
          Top = 63
          Align = alClient
          Caption = 'Ausgaben'
          TabOrder = 0
          Height = 712
          Width = 973
          object pnl_Finanzen_Ausgaben: TcxGroupBox
            Left = 3
            Top = 15
            Align = alTop
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 0
            Height = 122
            Width = 967
            object lbl_FinAusBetrag: TcxLabel
              Left = 8
              Top = 37
              Caption = 'Betrag:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinAusBez: TcxLabel
              Left = 376
              Top = 11
              Caption = 'Beschreibung:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinAusBIC: TcxLabel
              Left = 376
              Top = 90
              Caption = 'BIC: '
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinAusFixkosten: TcxLabel
              Left = 772
              Top = 11
              Caption = 'Fixkosten:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinAusFixkostenCheck: TcxLabel
              Left = 885
              Top = 11
              Caption = 'Aktiv'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinAusIBAN: TcxLabel
              Left = 376
              Top = 63
              Caption = 'IBAN:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinAusJahr: TcxLabel
              Left = 772
              Top = 65
              Caption = 'G'#252'ltig f'#252'r Jahr:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinAusMonat: TcxLabel
              Left = 772
              Top = 38
              Caption = 'G'#252'ltig f'#252'r Monat:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinAusName: TcxLabel
              Left = 8
              Top = 11
              Caption = 'Empf'#228'nger:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_FinAusVerwendung: TcxLabel
              Left = 376
              Top = 37
              Caption = 'Verwendungszweck:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object cbx_FinAusJahr: TcxDBComboBox
              Left = 864
              Top = 62
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
              TabOrder = 10
              OnExit = btn_FinAusSaveClick
              Width = 200
            end
            object cbx_FinAusMonat: TcxDBImageComboBox
              Left = 864
              Top = 35
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
              Style.IsFontAssigned = True
              TabOrder = 9
              OnExit = btn_FinAusSaveClick
              Width = 200
            end
            object chkbx_FinAusFixkosten: TcxDBCheckBox
              Left = 864
              Top = 9
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
              Style.TransparentBorder = False
              Style.IsFontAssigned = True
              TabOrder = 8
              Transparent = True
              OnExit = btn_FinAusSaveClick
            end
            object edt_FinAusBetrag: TcxDBCurrencyEdit
              Left = 96
              Top = 35
              DataBinding.DataField = 'betrag'
              DataBinding.DataSource = dsAusgaben
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              OnExit = btn_FinAusSaveClick
              Width = 250
            end
            object edt_FinAusBez: TcxDBTextEdit
              Left = 487
              Top = 8
              DataBinding.DataField = 'Beschreibung'
              DataBinding.DataSource = dsAusgaben
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              OnExit = btn_FinAusSaveClick
              Width = 250
            end
            object edt_FinAusBIC: TcxDBTextEdit
              Left = 487
              Top = 89
              DataBinding.DataField = 'Bankleitzahl'
              DataBinding.DataSource = dsAusgaben
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              OnExit = btn_FinAusSaveClick
              Width = 250
            end
            object edt_FinAusIBAN: TcxDBTextEdit
              Left = 487
              Top = 62
              DataBinding.DataField = 'Kontonummer'
              DataBinding.DataSource = dsAusgaben
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              OnExit = btn_FinAusSaveClick
              Width = 250
            end
            object edt_FinAusName: TcxDBTextEdit
              Left = 96
              Top = 8
              DataBinding.DataField = 'Name'
              DataBinding.DataSource = dsAusgaben
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = btn_FinAusSaveClick
              Width = 250
            end
            object edt_FinAusVerwendung: TcxDBTextEdit
              Left = 487
              Top = 35
              DataBinding.DataField = 'verwendungszweck'
              DataBinding.DataSource = dsAusgaben
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              OnExit = btn_FinAusSaveClick
              Width = 250
            end
            object cxButton1: TcxButton
              Left = 96
              Top = 89
              Width = 250
              Height = 21
              Caption = 'Fixbetrag '#252'bernehmen'
              TabOrder = 3
              OnClick = cxButton1Click
            end
            object edt_FinAusFixBetrag: TcxDBCurrencyEdit
              Left = 96
              Top = 62
              DataBinding.DataField = 'FixBetrag'
              DataBinding.DataSource = dsAusgaben
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              OnExit = btn_FinAusSaveClick
              Width = 250
            end
            object cxLabel1: TcxLabel
              Left = 8
              Top = 63
              Caption = 'Fixbetrag:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
          end
          object grd_Finanzen_Ausgaben: TcxGrid
            Left = 3
            Top = 137
            Width = 967
            Height = 566
            Align = alClient
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TabStop = False
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
        end
        object dxBarDockControl2: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 973
          Height = 63
          Align = dalTop
          BarManager = dxBarManager1
        end
      end
      object ts_Verf: TcxTabSheet
        Caption = 'Verf'#252'gung'
        ImageIndex = 8
        TabVisible = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 752
        object gbx_Finanzen_Verf: TGroupBox
          Left = 0
          Top = 66
          Width = 1072
          Height = 75
          Caption = 'Verf'#252'gung'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Label1: TLabel
            Left = 9
            Top = 24
            Width = 102
            Height = 13
            Caption = 'Einnahme / Ausgabe:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 9
            Top = 49
            Width = 36
            Height = 13
            Caption = 'Betrag:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 290
            Top = 24
            Width = 71
            Height = 13
            Caption = 'Beschreibung: '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 290
            Top = 49
            Width = 111
            Height = 13
            Caption = 'Eingang / Ausgang am:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 116
            Top = 21
            Width = 150
            Height = 21
            DataField = 'Quelle'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 116
            Top = 46
            Width = 150
            Height = 21
            DataField = 'Betrag'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit3: TDBEdit
            Left = 407
            Top = 21
            Width = 150
            Height = 21
            DataField = 'Beschreibung'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 407
            Top = 46
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
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 150
          end
        end
        object gbx_Finanzen_Verf_Monat: TGroupBox
          Left = 0
          Top = 10
          Width = 1072
          Height = 50
          Caption = 'Monat ausw'#228'hlen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object Label5: TLabel
            Left = 8
            Top = 24
            Width = 34
            Height = 13
            Caption = 'Monat:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 290
            Top = 24
            Width = 25
            Height = 13
            Caption = 'Jahr:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object ComboBox1: TComboBox
            Left = 50
            Top = 21
            Width = 145
            Height = 21
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
            Left = 321
            Top = 21
            Width = 145
            Height = 21
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
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
        end
        object cxGrid1: TcxGrid
          Left = 0
          Top = 183
          Width = 1072
          Height = 575
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = cxcbsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
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
      end
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
    Left = 360
    Top = 192
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
    Left = 432
    Top = 208
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
      'PopupMenu2')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = dm_PCM.imglst_16x16
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    ImageOptions.UseLargeImagesForLargeIcons = True
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
    object NachExcelexportieren1: TdxBarButton
      Caption = 'Nach &Excel exportieren...'
      Category = 1
      Visible = ivAlways
      ImageIndex = 63
      OnClick = NachExcelexportieren1Click
    end
    object MenuItem1: TdxBarButton
      Caption = 'Nach &Excel exportieren...'
      Category = 2
      Visible = ivAlways
      ImageIndex = 63
      OnClick = MenuItem1Click
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
end
