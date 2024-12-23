object frm_Contact: Tfrm_Contact
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_Contact'
  ClientHeight = 786
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  WindowState = wsMaximized
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
    Height = 786
    Width = 1070
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1070
    Height = 786
    Align = alClient
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dm_PCM.imglst_16x16
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea]
    Properties.TabSlants.Kind = skCutCorner
    Properties.TabWidth = 100
    OnChange = pc_Kontakte_KontakteChange
    ClientRectBottom = 780
    ClientRectLeft = 2
    ClientRectRight = 1064
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = 'Kontakte'
      ImageIndex = 64
      object pc_Kontakte_Kontakte: TcxPageControl
        AlignWithMargins = True
        Left = 0
        Top = 63
        Width = 1062
        Height = 689
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Color = clBtnFace
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Properties.ActivePage = ts_A_Kontakte_Kontakte_Suche
        Properties.CustomButtons.Buttons = <>
        Properties.Images = dm_PCM.imglst_16x16
        Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea]
        Properties.TabSlants.Kind = skCutCorner
        Properties.TabWidth = 100
        OnChange = pc_Kontakte_KontakteChange
        ClientRectBottom = 683
        ClientRectLeft = 2
        ClientRectRight = 1056
        ClientRectTop = 28
        object ts_A_Kontakte_Kontakte_Suche: TcxTabSheet
          Caption = 'Suche'
          ImageIndex = 25
          object grd_Kontaktesuche: TcxGrid
            Left = 0
            Top = 148
            Width = 1054
            Height = 507
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            LockedStateImageOptions.Effect = lsieDark
            LookAndFeel.ScrollbarMode = sbmDefault
            object grdDBTblView_Kontakte: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              OnCellDblClick = grdDBTblView_KontakteCellDblClick
              DataController.DataSource = ds_Kontakte
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Filter.PercentWildcard = '*'
              DataController.Filter.UnderscoreWildcard = '?'
              DataController.KeyFieldNames = 'ID'
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
              OptionsCustomize.ColumnsQuickCustomization = True
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsSelection.MultiSelect = True
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
              OptionsView.HeaderFilterButtonShowMode = fbmButton
              OptionsView.IndicatorWidth = 14
              object grdDBTblView_KontakteID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                Visible = False
              end
              object grdDBTblView_KontakteID_Anrede: TcxGridDBColumn
                Caption = 'Anrede'
                DataBinding.FieldName = 'ID_Anrede'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'Bezeichnung'
                  end>
                Properties.ListSource = dm_PCM.ds_Contact_Anrede
                FixedKind = fkLeft
              end
              object grdDBTblView_KontakteVorname: TcxGridDBColumn
                DataBinding.FieldName = 'Vorname'
                FixedKind = fkLeft
                SortIndex = 0
                SortOrder = soAscending
                Width = 200
              end
              object grdDBTblView_KontakteNachname: TcxGridDBColumn
                DataBinding.FieldName = 'Nachname'
                FixedKind = fkLeft
                SortIndex = 1
                SortOrder = soAscending
                Width = 200
              end
              object grdDBTblView_KontakteGeburtsname: TcxGridDBColumn
                DataBinding.FieldName = 'Geburtsname'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteGeburtsland: TcxGridDBColumn
                DataBinding.FieldName = 'Geburtsland'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteZusatz: TcxGridDBColumn
                DataBinding.FieldName = 'Zusatz'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteBild: TcxGridDBColumn
                DataBinding.FieldName = 'Bild'
                PropertiesClassName = 'TcxImageProperties'
                Properties.GraphicClassName = 'TdxPNGImage'
              end
              object grdDBTblView_KontakteStrasse_Privat: TcxGridDBColumn
                Caption = 'Strasse Privat'
                DataBinding.FieldName = 'Strasse_Privat'
                Width = 200
              end
              object grdDBTblView_KontaktePLZ_Privat: TcxGridDBColumn
                Caption = 'PLZ Privat'
                DataBinding.FieldName = 'PLZ_Privat'
                Width = 90
              end
              object grdDBTblView_KontakteOrt_Privat: TcxGridDBColumn
                Caption = 'Ort Privat'
                DataBinding.FieldName = 'Ort_Privat'
                Width = 200
              end
              object grdDBTblView_KontakteID_Kontaktart: TcxGridDBColumn
                Caption = 'Kontaktart'
                DataBinding.FieldName = 'ID_Kontaktart'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'Bezeichnung'
                  end>
                Properties.ListSource = dm_PCM.ds_Contact_Kontaktart
                Width = 120
              end
              object grdDBTblView_KontakteTelefon_Privat: TcxGridDBColumn
                Caption = 'Telefon Privat'
                DataBinding.FieldName = 'Telefon_Privat'
                Width = 150
              end
              object grdDBTblView_KontakteTelefon_Privat1: TcxGridDBColumn
                Caption = 'Telefon Privat 1'
                DataBinding.FieldName = 'Telefon_Privat1'
                Visible = False
                Width = 150
              end
              object grdDBTblView_KontakteHandy_privat: TcxGridDBColumn
                Caption = 'Mobil Privat'
                DataBinding.FieldName = 'Handy_privat'
                Width = 150
              end
              object grdDBTblView_KontakteE_Mail_Privat: TcxGridDBColumn
                Caption = 'E-Mail Privat'
                DataBinding.FieldName = 'E_Mail_Privat'
                Width = 150
              end
              object grdDBTblView_KontakteE_Mail_Privat1: TcxGridDBColumn
                Caption = 'E-Mail Privat 1'
                DataBinding.FieldName = 'E_Mail_Privat1'
                Visible = False
                Width = 180
              end
              object grdDBTblView_KontakteInternet_Privat: TcxGridDBColumn
                Caption = 'Internet Privat'
                DataBinding.FieldName = 'Internet_Privat'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteGeburtsdatum: TcxGridDBColumn
                DataBinding.FieldName = 'Geburtsdatum'
                Visible = False
                Width = 100
              end
              object grdDBTblView_KontakteID_Geschlecht: TcxGridDBColumn
                Caption = 'Geschlecht'
                DataBinding.FieldName = 'ID_Geschlecht'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'Bezeichnung'
                  end>
                Properties.ListSource = dm_PCM.ds_Contact_Geschlecht
                Visible = False
                Width = 80
              end
              object grdDBTblView_KontakteID_Familienstand: TcxGridDBColumn
                Caption = 'Familienstand'
                DataBinding.FieldName = 'ID_Familienstand'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'Bezeichnung'
                  end>
                Properties.ListSource = dm_PCM.ds_Contact_Familienstand
                Visible = False
                Width = 90
              end
              object grdDBTblView_KontakteID_Staatsangehoerigkeit: TcxGridDBColumn
                Caption = 'Staatsangehoerigkeit'
                DataBinding.FieldName = 'ID_Staatsangehoerigkeit'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'Bezeichnung'
                  end>
                Properties.ListSource = dm_PCM.ds_Contact_Staatsangehoerigkeit
                Visible = False
                Width = 120
              end
              object grdDBTblView_KontakteID_Konfession: TcxGridDBColumn
                Caption = 'Konfession'
                DataBinding.FieldName = 'ID_Konfession'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'ID'
                Properties.ListColumns = <
                  item
                    FieldName = 'Bezeichnung'
                  end>
                Properties.ListSource = dm_PCM.ds_Contact_Konfession
                Visible = False
                Width = 80
              end
              object grdDBTblView_KontakteInfo: TcxGridDBColumn
                DataBinding.FieldName = 'Info'
                Visible = False
                Width = 100
              end
              object grdDBTblView_KontakteFirma: TcxGridDBColumn
                DataBinding.FieldName = 'Firma'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteStrasse_Ges: TcxGridDBColumn
                Caption = 'Strasse Gesch'#228'ftlich'
                DataBinding.FieldName = 'Strasse_Ges'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontaktePLZ_Ges: TcxGridDBColumn
                Caption = 'PLZ Gesch'#228'ftlich'
                DataBinding.FieldName = 'PLZ_Ges'
                Visible = False
                Width = 90
              end
              object grdDBTblView_KontakteOrt_Ges: TcxGridDBColumn
                Caption = 'Ort Gesch'#228'ftlich'
                DataBinding.FieldName = 'Ort_Ges'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteAbteilung_Ges: TcxGridDBColumn
                Caption = 'Abteilung'
                DataBinding.FieldName = 'Abteilung_Ges'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteFunktion_Ges: TcxGridDBColumn
                Caption = 'Funktion'
                DataBinding.FieldName = 'Funktion_Ges'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteZentrale_Ges: TcxGridDBColumn
                Caption = 'Zentrale'
                DataBinding.FieldName = 'Zentrale_Ges'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteTelefon_Ges: TcxGridDBColumn
                Caption = 'Durchwahl'
                DataBinding.FieldName = 'Telefon_Ges'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteHandy_Ges: TcxGridDBColumn
                Caption = 'Handy Gesch'#228'ftlich'
                DataBinding.FieldName = 'Handy_Ges'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteE_Mail_Ges: TcxGridDBColumn
                Caption = 'E-Mail Gesch'#228'ftlich'
                DataBinding.FieldName = 'E_Mail_Ges'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteInternet_Ges: TcxGridDBColumn
                Caption = 'Internet Gesch'#228'ftlich'
                DataBinding.FieldName = 'Internet_Ges'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteFacebook: TcxGridDBColumn
                DataBinding.FieldName = 'Facebook'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteSkype: TcxGridDBColumn
                DataBinding.FieldName = 'Skype'
                Visible = False
                Width = 200
              end
              object grdDBTblView_KontakteLive_Messanger: TcxGridDBColumn
                Caption = 'Microsoft Teams'
                DataBinding.FieldName = 'Live_Messanger'
                Visible = False
                Width = 200
              end
            end
            object grdLvl_Kontakte: TcxGridLevel
              GridView = grdDBTblView_Kontakte
            end
          end
          object grpbx_KontakteSuche: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Filterkriterien'
            TabOrder = 0
            Height = 109
            Width = 1054
            object cmbbx_KontaktSucheArt: TcxComboBox
              Left = 100
              Top = 75
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              OnKeyDown = edt_KontaktSucheNachnameKeyDown
              Width = 234
            end
            object edt_KontaktSucheAbteilung: TcxTextEdit
              Left = 820
              Top = 48
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              OnKeyDown = edt_KontaktSucheNachnameKeyDown
              Width = 234
            end
            object edt_KontaktSucheFirma: TcxTextEdit
              Left = 820
              Top = 21
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              OnKeyDown = edt_KontaktSucheNachnameKeyDown
              Width = 234
            end
            object edt_KontaktSucheFunktion: TcxTextEdit
              Left = 820
              Top = 75
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 8
              OnKeyDown = edt_KontaktSucheNachnameKeyDown
              Width = 234
            end
            object edt_KontaktSucheNachname: TcxTextEdit
              Left = 100
              Top = 21
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.TextColor = clBtnShadow
              StyleDisabled.TextStyle = []
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.TextStyle = []
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.TextStyle = []
              TabOrder = 0
              OnKeyDown = edt_KontaktSucheNachnameKeyDown
              Width = 234
            end
            object edt_KontaktSucheOrt: TcxTextEdit
              Left = 460
              Top = 75
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              OnKeyDown = edt_KontaktSucheNachnameKeyDown
              Width = 234
            end
            object edt_KontaktSuchePLZ: TcxTextEdit
              Left = 460
              Top = 48
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              OnKeyDown = edt_KontaktSucheNachnameKeyDown
              Width = 234
            end
            object edt_KontaktSucheStrasse: TcxTextEdit
              Left = 460
              Top = 21
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              OnKeyDown = edt_KontaktSucheNachnameKeyDown
              Width = 234
            end
            object edt_KontaktSucheVorname: TcxTextEdit
              Left = 100
              Top = 48
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              OnKeyDown = edt_KontaktSucheNachnameKeyDown
              Width = 234
            end
            object lbl_KontaktSucheAbteilung: TcxLabel
              Left = 728
              Top = 51
              AutoSize = False
              Caption = 'Abteilung:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 17
              Width = 90
            end
            object lbl_KontaktSucheArt: TcxLabel
              Left = 8
              Top = 78
              AutoSize = False
              Caption = 'Kontaktart:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 17
              Width = 90
            end
            object lbl_KontaktSucheFirma: TcxLabel
              Left = 728
              Top = 24
              AutoSize = False
              Caption = 'Firma:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 17
              Width = 90
            end
            object lbl_KontaktSucheFunktion: TcxLabel
              Left = 728
              Top = 78
              AutoSize = False
              Caption = 'Funktion:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 17
              Width = 90
            end
            object lbl_KontaktSucheNachname: TcxLabel
              Left = 8
              Top = 24
              AutoSize = False
              Caption = 'Nachname:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 17
              Width = 90
            end
            object lbl_KontaktSucheOrt: TcxLabel
              Left = 368
              Top = 78
              AutoSize = False
              Caption = 'Ort:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 17
              Width = 90
            end
            object lbl_KontaktSuchePLZ: TcxLabel
              Left = 368
              Top = 51
              AutoSize = False
              Caption = 'Postleitzahl:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 17
              Width = 90
            end
            object lbl_KontaktSucheStrasse: TcxLabel
              Left = 368
              Top = 24
              AutoSize = False
              Caption = 'Stra'#223'e:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 17
              Width = 90
            end
            object lbl_KontaktSucheVorname: TcxLabel
              Left = 8
              Top = 51
              AutoSize = False
              Caption = 'Vorname:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
              Height = 17
              Width = 90
            end
          end
          object pnl_KontakteButtons: TcxGroupBox
            Left = 0
            Top = 109
            Align = alTop
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 1
            Height = 39
            Width = 1054
            object btn_kontaktDeletefilter: TcxButton
              Left = 151
              Top = 6
              Width = 137
              Height = 27
              Caption = 'Filter l'#246'schen'
              OptionsImage.ImageIndex = 24
              OptionsImage.Images = dm_PCM.imglst_16x16
              TabOrder = 1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btn_kontaktDeletefilterClick
            end
            object btn_kontaktsuchen: TcxButton
              Left = 8
              Top = 6
              Width = 137
              Height = 27
              Caption = 'Kontakt suchen'
              OptionsImage.ImageIndex = 25
              OptionsImage.Images = dm_PCM.imglst_16x16
              TabOrder = 0
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btn_kontaktsuchenClick
            end
          end
        end
        object ts_B_Kontakte_Kontakte_Detail: TcxTabSheet
          Caption = 'Kontakte'
          ImageIndex = 11
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 1181
          ExplicitHeight = 0
          object pc_Kontakte_Kontakte_Adressen: TcxPageControl
            Left = 394
            Top = 0
            Width = 660
            Height = 655
            Align = alClient
            BiDiMode = bdLeftToRight
            Color = clBtnFace
            ParentBackground = False
            ParentBiDiMode = False
            ParentColor = False
            TabOrder = 1
            Properties.ActivePage = ts_A_Zusatz
            Properties.CustomButtons.Buttons = <>
            Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea]
            Properties.TabSlants.Kind = skCutCorner
            Properties.TabWidth = 100
            ExplicitWidth = 787
            ExplicitHeight = 678
            ClientRectBottom = 649
            ClientRectLeft = 2
            ClientRectRight = 654
            ClientRectTop = 27
            object ts_A_Zusatz: TcxTabSheet
              Caption = 'Zusatz'
              ImageIndex = 0
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 787
              ExplicitHeight = 0
              object grpbx_KontakteZusatzSonstige: TcxGroupBox
                Left = 0
                Top = 187
                Align = alClient
                Caption = 'Sonstige Informationen'
                TabOrder = 1
                ExplicitWidth = 676
                ExplicitHeight = 467
                Height = 435
                Width = 652
                object mem_KontakteZusatzSonstige: TcxDBMemo
                  Left = 8
                  Top = 24
                  DataBinding.DataField = 'Info'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsNone
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  OnExit = btn_KontaktSaveClick
                  Height = 57
                  Width = 640
                end
              end
              object grpbx_KontakteZusatz: TcxGroupBox
                Left = 0
                Top = 0
                Align = alTop
                Caption = 'Zusatzinformation'
                TabOrder = 0
                ExplicitWidth = 676
                Height = 187
                Width = 652
                object lbl_KontaktZusatzFamilienstand: TcxLabel
                  Left = 184
                  Top = 91
                  Caption = 'Familienstand:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktZusatzGeburtsdatum: TcxLabel
                  Left = 184
                  Top = 37
                  Caption = 'Geburtsdatum:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktZusatzGeschlecht: TcxLabel
                  Left = 184
                  Top = 64
                  Caption = 'Geschlecht:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktZusatzkonfession: TcxLabel
                  Left = 184
                  Top = 145
                  Caption = 'Konfession:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktZusatzStaatsanghoerigkeit: TcxLabel
                  Left = 184
                  Top = 118
                  Caption = 'Staatsangeh'#246'rigkeit:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object dtEdt_KontaktZusatzGeburtsdatum: TcxDBDateEdit
                  Left = 288
                  Top = 34
                  DataBinding.DataField = 'Geburtsdatum'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  OnExit = btn_KontaktSaveClick
                  Width = 360
                end
                object lucmbbx_KontaktZusatzFamilienstand: TcxDBLookupComboBox
                  Left = 288
                  Top = 88
                  DataBinding.DataField = 'ID_Familienstand'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      SortOrder = soAscending
                      FieldName = 'Bezeichnung'
                    end>
                  Properties.ListSource = dm_PCM.ds_Contact_Familienstand
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  OnExit = btn_KontaktSaveClick
                  Width = 360
                end
                object lucmbbx_KontaktZusatzGeschlecht: TcxDBLookupComboBox
                  Left = 288
                  Top = 61
                  DataBinding.DataField = 'ID_Geschlecht'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      SortOrder = soAscending
                      FieldName = 'Bezeichnung'
                    end>
                  Properties.ListOptions.AnsiSort = True
                  Properties.ListSource = dm_PCM.ds_Contact_Geschlecht
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  OnExit = btn_KontaktSaveClick
                  Width = 360
                end
                object lucmbbx_KontaktZusatzkonfession: TcxDBLookupComboBox
                  Left = 288
                  Top = 142
                  DataBinding.DataField = 'ID_Konfession'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      SortOrder = soAscending
                      FieldName = 'Bezeichnung'
                    end>
                  Properties.ListSource = dm_PCM.ds_Contact_Konfession
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 4
                  OnExit = btn_KontaktSaveClick
                  Width = 333
                end
                object lucmbbx_KontaktZusatzStaatsanghoerigkeit: TcxDBLookupComboBox
                  Left = 288
                  Top = 115
                  DataBinding.DataField = 'ID_Staatsangehoerigkeit'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Properties.KeyFieldNames = 'ID'
                  Properties.ListColumns = <
                    item
                      SortOrder = soAscending
                      FieldName = 'Bezeichnung'
                    end>
                  Properties.ListSource = dm_PCM.ds_Contact_Staatsangehoerigkeit
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  OnExit = btn_KontaktSaveClick
                  Width = 333
                end
                object btn_KontaktKonfessionEdit: TcxButton
                  Left = 627
                  Top = 142
                  Width = 21
                  Height = 21
                  OptionsImage.ImageIndex = 74
                  OptionsImage.Images = dm_PCM.imglst_16x16
                  TabOrder = 10
                  TabStop = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btn_KontaktKonfessionEditClick
                end
                object btn_KontaktStaatsangehörigkeitEdit: TcxButton
                  Left = 627
                  Top = 115
                  Width = 21
                  Height = 21
                  OptionsImage.ImageIndex = 74
                  OptionsImage.Images = dm_PCM.imglst_16x16
                  TabOrder = 11
                  TabStop = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btn_KontaktStaatsangehörigkeitEditClick
                end
                object pnl_KontaktZusatzPicture: TcxGroupBox
                  Left = 8
                  Top = 24
                  PanelStyle.Active = True
                  Style.BorderStyle = ebsNone
                  TabOrder = 12
                  Height = 150
                  Width = 150
                  object img_KontaktZusatzPicture: TcxDBImage
                    Left = -4
                    Top = 1
                    TabStop = False
                    DataBinding.DataField = 'Bild'
                    DataBinding.DataSource = ds_Kontakte
                    Properties.FitMode = ifmProportionalStretch
                    Properties.GraphicClassName = 'TdxSmartImage'
                    Style.BorderStyle = ebsFlat
                    TabOrder = 0
                    Height = 150
                    Width = 150
                  end
                end
              end
            end
            object ts_B_Geschaeftlich: TcxTabSheet
              Caption = 'Gesch'#228'ftlich'
              ImageIndex = 2
              ExplicitLeft = 0
              ExplicitTop = 24
              ExplicitWidth = 676
              ExplicitHeight = 654
              object grpbx_KontakteGeschaeftlich: TcxGroupBox
                Left = 0
                Top = 0
                Align = alClient
                Caption = 'Kontakdaten Gesch'#228'ftlich'
                TabOrder = 0
                ExplicitWidth = 676
                ExplicitHeight = 654
                Height = 622
                Width = 652
                object btn_KontaktGeschaeftlichSendMail: TcxButton
                  Left = 627
                  Top = 236
                  Width = 21
                  Height = 21
                  OptionsImage.ImageIndex = 15
                  OptionsImage.Images = dm_PCM.imglst_16x16
                  TabOrder = 11
                  TabStop = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btn_KontaktGeschaeftlichSendMailClick
                end
                object edt_KontaktGeschaeftlichAbteilung: TcxDBTextEdit
                  Left = 113
                  Top = 101
                  DataBinding.DataField = 'Abteilung_Ges'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 4
                  OnExit = btn_KontaktSaveClick
                  Width = 535
                end
                object edt_KontaktGeschaeftlichEMail: TcxDBTextEdit
                  Left = 113
                  Top = 236
                  DataBinding.DataField = 'E_Mail_Ges'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 9
                  OnExit = btn_KontaktSaveClick
                  Width = 507
                end
                object edt_KontaktGeschaeftlichFirma: TcxDBTextEdit
                  Left = 113
                  Top = 20
                  DataBinding.DataField = 'Firma'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  OnExit = btn_KontaktSaveClick
                  Width = 535
                end
                object edt_KontaktGeschaeftlichFunktion: TcxDBTextEdit
                  Left = 113
                  Top = 128
                  DataBinding.DataField = 'Funktion_Ges'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 5
                  OnExit = btn_KontaktSaveClick
                  Width = 535
                end
                object edt_KontaktGeschaeftlichHandy: TcxDBTextEdit
                  Left = 113
                  Top = 209
                  DataBinding.DataField = 'Handy_Ges'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 8
                  OnExit = btn_KontaktSaveClick
                  Width = 535
                end
                object edt_KontaktGeschaeftlichInternet: TcxDBTextEdit
                  Left = 113
                  Top = 263
                  DataBinding.DataField = 'Internet_Ges'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 10
                  OnExit = btn_KontaktSaveClick
                  Width = 507
                end
                object edt_KontaktGeschaeftlichOrt: TcxDBTextEdit
                  Left = 191
                  Top = 74
                  DataBinding.DataField = 'Ort_Ges'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  OnExit = btn_KontaktSaveClick
                  Width = 457
                end
                object edt_KontaktGeschaeftlichPLZ: TcxDBTextEdit
                  Left = 113
                  Top = 74
                  DataBinding.DataField = 'PLZ_Ges'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  OnExit = btn_KontaktSaveClick
                  Width = 72
                end
                object edt_KontaktGeschaeftlichStrasse: TcxDBTextEdit
                  Left = 113
                  Top = 47
                  DataBinding.DataField = 'Strasse_Ges'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  OnExit = btn_KontaktSaveClick
                  Width = 535
                end
                object edt_KontaktGeschaeftlichTelefonDurchwahl: TcxDBTextEdit
                  Left = 113
                  Top = 182
                  DataBinding.DataField = 'Telefon_Ges'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 7
                  OnExit = btn_KontaktSaveClick
                  Width = 535
                end
                object edt_KontaktGeschaeftlichTelefonZentrale: TcxDBTextEdit
                  Left = 113
                  Top = 155
                  DataBinding.DataField = 'Zentrale_Ges'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 6
                  OnExit = btn_KontaktSaveClick
                  Width = 535
                end
                object lbl_KontaktGeschaeftlichAbteilung: TcxLabel
                  Left = 8
                  Top = 104
                  Caption = 'Abteilung:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktGeschaeftlichEMail: TcxLabel
                  Left = 8
                  Top = 239
                  Caption = 'E-Mail:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktGeschaeftlichFirma: TcxLabel
                  Left = 8
                  Top = 23
                  Caption = 'Firma:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktGeschaeftlichFunktion: TcxLabel
                  Left = 8
                  Top = 131
                  Caption = 'Funktion:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktGeschaeftlichHandy: TcxLabel
                  Left = 8
                  Top = 212
                  Caption = 'Handy:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktGeschaeftlichInternet: TcxLabel
                  Left = 8
                  Top = 266
                  Caption = 'Internet:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktGeschaeftlichPLZOrt: TcxLabel
                  Left = 8
                  Top = 77
                  Caption = 'Plz - Ort:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktGeschaeftlichStrasse: TcxLabel
                  Left = 8
                  Top = 50
                  Caption = 'Stra'#223'e:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktGeschaeftlichTelefonDurchwahl: TcxLabel
                  Left = 8
                  Top = 185
                  Caption = 'Telefon Durchwahl:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontaktGeschaeftlichTelefonZentrale: TcxLabel
                  Left = 8
                  Top = 158
                  Caption = 'Telefon Zentrale:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object btn_KontaktGesOpenWebsite: TcxButton
                  Left = 627
                  Top = 263
                  Width = 21
                  Height = 21
                  OptionsImage.ImageIndex = 75
                  OptionsImage.Images = dm_PCM.imglst_16x16
                  TabOrder = 22
                  TabStop = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  OnClick = btn_KontaktGesOpenWebsiteClick
                end
              end
            end
            object ts_C_Sonstiges: TcxTabSheet
              Caption = 'Sonstige Info'
              ImageIndex = 3
              ExplicitLeft = 0
              ExplicitTop = 24
              ExplicitWidth = 676
              ExplicitHeight = 654
              object grpbx_KontakteSonstiges: TcxGroupBox
                Left = 0
                Top = 0
                Align = alClient
                Caption = 'Messenger / Soziale Netzwerke'
                TabOrder = 0
                ExplicitWidth = 676
                ExplicitHeight = 654
                Height = 622
                Width = 652
                object edt_KontakteSonstigesFacebook: TcxDBTextEdit
                  Left = 113
                  Top = 21
                  DataBinding.DataField = 'Facebook'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  OnExit = btn_KontaktSaveClick
                  Width = 535
                end
                object edt_KontakteSonstigesSkype: TcxDBTextEdit
                  Left = 113
                  Top = 48
                  DataBinding.DataField = 'Skype'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  OnExit = btn_KontaktSaveClick
                  Width = 535
                end
                object edt_KontakteSonstigesTeams: TcxDBTextEdit
                  Left = 113
                  Top = 75
                  DataBinding.DataField = 'Live_Messanger'
                  DataBinding.DataSource = ds_Kontakte
                  ParentFont = False
                  Style.BorderStyle = ebsFlat
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  OnExit = btn_KontaktSaveClick
                  Width = 535
                end
                object lbl_KontakteSonstigesFacebook: TcxLabel
                  Left = 9
                  Top = 24
                  Caption = 'Facebook:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontakteSonstigesSkype: TcxLabel
                  Left = 8
                  Top = 51
                  Caption = 'Skype:'
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Transparent = True
                end
                object lbl_KontakteSonstigesTeams: TcxLabel
                  Left = 8
                  Top = 78
                  Caption = 'Microsoft Teams:'
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
          object grpbx_KontaktAllgemein: TcxGroupBox
            Left = 0
            Top = 0
            TabStop = True
            Align = alLeft
            Caption = 'Kontakt'
            TabOrder = 0
            ExplicitHeight = 678
            Height = 655
            Width = 394
            object btn_KontaktEmail1Send: TcxButton
              Left = 364
              Top = 317
              Width = 21
              Height = 21
              OptionsImage.ImageIndex = 15
              OptionsImage.Images = dm_PCM.imglst_16x16
              TabOrder = 16
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btn_KontaktEmail1SendClick
            end
            object btn_KontaktEmail2Send: TcxButton
              Left = 364
              Top = 344
              Width = 21
              Height = 21
              OptionsImage.ImageIndex = 15
              OptionsImage.Images = dm_PCM.imglst_16x16
              TabOrder = 17
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btn_KontaktEmail2SendClick
            end
            object cmbbx_KontaktAnrede: TcxDBLookupComboBox
              Left = 96
              Top = 20
              DataBinding.DataField = 'ID_Anrede'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  SortOrder = soAscending
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListOptions.AnsiSort = True
              Properties.ListSource = dm_PCM.ds_Contact_Anrede
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object cmbbx_KontaktArt: TcxDBLookupComboBox
              Left = 96
              Top = 398
              DataBinding.DataField = 'ID_Kontaktart'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  SortOrder = soAscending
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dm_PCM.ds_Contact_Kontaktart
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 15
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object edt_KontaktEmail1: TcxDBTextEdit
              Left = 96
              Top = 317
              DataBinding.DataField = 'E_Mail_Privat'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 12
              OnExit = btn_KontaktSaveClick
              Width = 262
            end
            object edt_KontaktEmail2: TcxDBTextEdit
              Left = 96
              Top = 344
              DataBinding.DataField = 'E_Mail_Privat1'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 13
              OnExit = btn_KontaktSaveClick
              Width = 262
            end
            object edt_KontaktGeburtsland: TcxDBTextEdit
              Left = 96
              Top = 130
              DataBinding.DataField = 'Geburtsland'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object edt_KontaktGeburtsname: TcxDBTextEdit
              Left = 96
              Top = 103
              DataBinding.DataField = 'Geburtsname'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object edt_KontaktHandy: TcxDBTextEdit
              Left = 96
              Top = 290
              DataBinding.DataField = 'Handy_privat'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 11
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object edt_KontaktInternet: TcxDBTextEdit
              Left = 96
              Top = 371
              DataBinding.DataField = 'Internet_Privat'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 14
              OnExit = btn_KontaktSaveClick
              Width = 262
            end
            object edt_KontaktNachname: TcxDBTextEdit
              Left = 96
              Top = 74
              DataBinding.DataField = 'Nachname'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = clInfoBk
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clInfoText
              Style.IsFontAssigned = True
              TabOrder = 2
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object edt_KontaktName: TcxDBTextEdit
              Left = 96
              Top = 47
              DataBinding.DataField = 'Vorname'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Color = clInfoBk
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.TextColor = clInfoText
              Style.IsFontAssigned = True
              TabOrder = 1
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object edt_KontaktOrt: TcxDBTextEdit
              Left = 174
              Top = 209
              DataBinding.DataField = 'Ort_Privat'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 8
              OnExit = btn_KontaktSaveClick
              Width = 211
            end
            object edt_KontaktPLZ: TcxDBTextEdit
              Left = 96
              Top = 209
              DataBinding.DataField = 'PLZ_Privat'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              OnExit = btn_KontaktSaveClick
              Width = 72
            end
            object edt_KontaktStrasse: TcxDBTextEdit
              Left = 96
              Top = 182
              DataBinding.DataField = 'Strasse_Privat'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object edt_KontaktTelefon1: TcxDBTextEdit
              Left = 96
              Top = 236
              DataBinding.DataField = 'Telefon_Privat'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 9
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object edt_KontaktTelefon2: TcxDBTextEdit
              Left = 96
              Top = 263
              DataBinding.DataField = 'Telefon_Privat1'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 10
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object edt_KontaktZusatz: TcxDBTextEdit
              Left = 96
              Top = 157
              DataBinding.DataField = 'Zusatz'
              DataBinding.DataSource = ds_Kontakte
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              OnExit = btn_KontaktSaveClick
              Width = 289
            end
            object lbl_KontaktAnrede: TcxLabel
              Left = 8
              Top = 23
              Caption = 'Anrede:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktArt: TcxLabel
              Left = 8
              Top = 401
              Caption = 'Kontaktart:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktEmail1: TcxLabel
              Left = 8
              Top = 320
              Caption = 'E-Mail 1:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktEmail2: TcxLabel
              Left = 8
              Top = 347
              Caption = 'E-Mail 2:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktGeburtsland: TcxLabel
              Left = 8
              Top = 133
              Caption = 'Geburtsland:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktGeburtsname: TcxLabel
              Left = 8
              Top = 106
              Caption = 'Geburtsname:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktHandy: TcxLabel
              Left = 8
              Top = 293
              Caption = 'Handy:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktInternet: TcxLabel
              Left = 8
              Top = 374
              Caption = 'Internet:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktNachname: TcxLabel
              Left = 9
              Top = 77
              Caption = 'Nachname:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktName: TcxLabel
              Left = 9
              Top = 50
              Caption = 'Vorname:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktPLZOrt: TcxLabel
              Left = 8
              Top = 212
              Caption = 'Plz - Ort:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktStrasse: TcxLabel
              Left = 8
              Top = 185
              Caption = 'Stra'#223'e:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktTelefon1: TcxLabel
              Left = 8
              Top = 239
              Caption = 'Telefon 1:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktTelefon2: TcxLabel
              Left = 8
              Top = 266
              Caption = 'Telefon 2:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_KontaktZusatz: TcxLabel
              Left = 8
              Top = 160
              Caption = 'Zusatz:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object btn_KontaktPrivOpenWebsite: TcxButton
              Left = 364
              Top = 371
              Width = 21
              Height = 21
              OptionsImage.ImageIndex = 75
              OptionsImage.Images = dm_PCM.imglst_16x16
              TabOrder = 33
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = btn_KontaktPrivOpenWebsiteClick
            end
          end
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 0
        Width = 1062
        Height = 63
        Align = dalTop
        BarManager = brmgr_Contacts
      end
    end
  end
  object ds_Kontakte: TDataSource
    DataSet = qry_Kontakte
    Left = 509
    Top = 344
  end
  object brmgr_Contacts: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'pm_kontakte'
      'pm_KontaktImExport'
      'PopupMenu1')
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 112
    Top = 488
    PixelsPerInch = 96
    object brmgrContactsBar1: TdxBar
      Caption = 'tb_Contacts'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1133
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_KontaktNew'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktSave'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktCancel'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktDelete'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktFirst'
        end
        item
          Visible = True
          ItemName = 'btn_Kontaktprev'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktNext'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktLast'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktImport'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_KontaktNew: TdxBarLargeButton
      Caption = 'Kontakt anlegen'
      Category = 0
      Hint = 'Kontakt anlegen'
      Visible = ivAlways
      OnClick = btn_KontaktNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktNext: TdxBarLargeButton
      Caption = 'n'#228'chster Kontakt'
      Category = 0
      Hint = 'n'#228'chster Kontakt'
      Visible = ivAlways
      OnClick = btn_KontaktNextClick
      AutoGrayScale = False
      LargeImageIndex = 26
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Kontaktprev: TdxBarLargeButton
      Caption = 'vorheriger Kontakt'
      Category = 0
      Hint = 'vorheriger Kontakt'
      Visible = ivAlways
      OnClick = btn_KontaktprevClick
      AutoGrayScale = False
      LargeImageIndex = 25
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktFirst: TdxBarLargeButton
      Caption = 'erster Kontakt'
      Category = 0
      Hint = 'erster Kontakt'
      Visible = ivAlways
      OnClick = btn_KontaktFirstClick
      AutoGrayScale = False
      LargeImageIndex = 33
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktDelete: TdxBarLargeButton
      Caption = 'Kontakt l'#246'schen'
      Category = 0
      Hint = 'Kontakt l'#246'schen'
      Visible = ivAlways
      OnClick = btn_KontaktDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_KontaktCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktSave: TdxBarLargeButton
      Caption = 'Kontakt speichern'
      Category = 0
      Hint = 'Kontakt speichern'
      Visible = ivAlways
      OnClick = btn_KontaktSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktLast: TdxBarLargeButton
      Caption = 'letzter Kontakt'
      Category = 0
      Hint = 'letzter Kontakt'
      Visible = ivAlways
      OnClick = btn_KontaktLastClick
      AutoGrayScale = False
      LargeImageIndex = 37
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktImport: TdxBarLargeButton
      Caption = 'Kontakt importieren'
      Category = 0
      Hint = 'Kontakt importieren'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = brpmm_Contact
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 120
      SyncImageIndex = False
      ImageIndex = -1
    end
    object ppmbtn_NachExcelexportieren: TdxBarButton
      Caption = 'Nach Excel exportieren'
      Category = 1
      Visible = ivAlways
      ImageIndex = 63
      OnClick = ppmbtn_NachExcelexportierenClick
    end
    object btn_import: TdxBarButton
      Caption = 'Importieren'
      Category = 2
      Hint = 'Importieren'
      Visible = ivAlways
      ImageIndex = 65
    end
    object btn_Export: TdxBarButton
      Caption = 'Exportieren'
      Category = 2
      Hint = 'Exportieren'
      Visible = ivAlways
      ImageIndex = 66
    end
    object ppmbtn_VCFImportieren: TdxBarButton
      Caption = 'VCF Importieren'
      Category = 3
      Visible = ivAlways
      ImageIndex = 64
      OnClick = ppmbtn_VCFImportierenClick
    end
    object ppmbtn_CSVImportiern: TdxBarButton
      Caption = 'CSV Importieren'
      Category = 3
      Visible = ivAlways
      ImageIndex = 63
    end
    object ppmbtn_ExportVCF: TdxBarButton
      Caption = 'VCard erstellen'
      Category = 3
      Hint = 'VCard erstellen'
      Visible = ivAlways
      ImageIndex = 64
      OnClick = ppmbtn_ExportVCFClick
    end
  end
  object brpmm_Kontakt: TdxBarPopupMenu
    BarManager = brmgr_Contacts
    ItemLinks = <
      item
        Visible = True
        ItemName = 'ppmbtn_NachExcelexportieren'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_ExportVCF'
      end>
    UseOwnFont = False
    Left = 250
    Top = 409
    PixelsPerInch = 96
  end
  object grdpmm_Personal: TcxGridPopupMenu
    Grid = grd_Kontaktesuche
    PopupMenus = <
      item
        GridView = grdDBTblView_Kontakte
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        PopupMenu = brpmm_Kontakt
      end>
    Left = 250
    Top = 289
  end
  object brpmm_Contact: TdxBarPopupMenu
    BarManager = brmgr_Contacts
    ItemLinks = <
      item
        Visible = True
        ItemName = 'ppmbtn_VCFImportieren'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_CSVImportiern'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_ExportVCF'
      end>
    UseOwnFont = False
    Left = 250
    Top = 351
    PixelsPerInch = 96
  end
  object idDecMIMME_Decode: TIdDecoderMIME
    FillChar = '='
    Left = 114
    Top = 343
  end
  object idDecQuotPrint_Decode: TIdDecoderQuotedPrintable
    Left = 114
    Top = 287
  end
  object qry_Kontakte: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    AfterScroll = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * '
      'From Manager_kontakte'
      'order by Vorname, Nachname')
    Left = 504
    Top = 288
    object qry_KontakteID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qry_KontakteID_Anrede: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Anrede'
      Origin = 'ID_Anrede'
    end
    object qry_KontakteVorname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vorname'
      Origin = 'Vorname'
      Size = 128
    end
    object qry_KontakteNachname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nachname'
      Origin = 'Nachname'
      Size = 128
    end
    object qry_KontakteZusatz: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Zusatz'
      Origin = 'Zusatz'
      Size = 128
    end
    object qry_KontakteStrasse_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Strasse_Privat'
      Origin = 'Strasse_Privat'
      Size = 128
    end
    object qry_KontaktePLZ_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLZ_Privat'
      Origin = 'PLZ_Privat'
      Size = 128
    end
    object qry_KontakteOrt_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ort_Privat'
      Origin = 'Ort_Privat'
      Size = 128
    end
    object qry_KontakteTelefon_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat'
      Origin = 'Telefon_Privat'
      Size = 128
    end
    object qry_KontakteTelefon_Privat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat1'
      Origin = 'Telefon_Privat1'
      Size = 128
    end
    object qry_KontakteTelefon_Privat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat2'
      Origin = 'Telefon_Privat2'
      Size = 128
    end
    object qry_KontakteHandy_privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Handy_privat'
      Origin = 'Handy_privat'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat'
      Origin = 'E_Mail_Privat'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat1'
      Origin = 'E_Mail_Privat1'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat2'
      Origin = 'E_Mail_Privat2'
      Size = 128
    end
    object qry_KontakteInternet_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Internet_Privat'
      Origin = 'Internet_Privat'
      Size = 128
    end
    object qry_KontakteID_Kontaktart: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Kontaktart'
      Origin = 'ID_Kontaktart'
    end
    object qry_KontakteBild: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Bild'
      Origin = 'Bild'
    end
    object qry_KontakteGeburtsdatum: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsdatum'
      Origin = 'Geburtsdatum'
    end
    object qry_KontakteID_Geschlecht: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Geschlecht'
      Origin = 'ID_Geschlecht'
    end
    object qry_KontakteID_Familienstand: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Familienstand'
      Origin = 'ID_Familienstand'
    end
    object qry_KontakteID_Staatsangehoerigkeit: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Staatsangehoerigkeit'
      Origin = 'ID_Staatsangehoerigkeit'
    end
    object qry_KontakteID_Konfession: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Konfession'
      Origin = 'ID_Konfession'
    end
    object qry_KontakteInfo: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Info'
      Origin = 'Info'
      BlobType = ftMemo
    end
    object qry_KontakteFirma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Firma'
      Origin = 'Firma'
      Size = 128
    end
    object qry_KontakteStrasse_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Strasse_Ges'
      Origin = 'Strasse_Ges'
      Size = 128
    end
    object qry_KontaktePLZ_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLZ_Ges'
      Origin = 'PLZ_Ges'
      Size = 128
    end
    object qry_KontakteOrt_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ort_Ges'
      Origin = 'Ort_Ges'
      Size = 128
    end
    object qry_KontakteAbteilung_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Abteilung_Ges'
      Origin = 'Abteilung_Ges'
      Size = 128
    end
    object qry_KontakteFunktion_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Funktion_Ges'
      Origin = 'Funktion_Ges'
      Size = 128
    end
    object qry_KontakteZentrale_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Zentrale_Ges'
      Origin = 'Zentrale_Ges'
      Size = 128
    end
    object qry_KontakteTelefon_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Ges'
      Origin = 'Telefon_Ges'
      Size = 128
    end
    object qry_KontakteHandy_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Handy_Ges'
      Origin = 'Handy_Ges'
      Size = 128
    end
    object qry_KontakteE_Mail_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Ges'
      Origin = 'E_Mail_Ges'
      Size = 128
    end
    object qry_KontakteInternet_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Internet_Ges'
      Origin = 'Internet_Ges'
      Size = 128
    end
    object qry_KontakteFacebook: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Facebook'
      Origin = 'Facebook'
      Size = 128
    end
    object qry_KontakteSkype: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Skype'
      Origin = 'Skype'
      Size = 128
    end
    object qry_KontakteICQ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICQ'
      Origin = 'ICQ'
      Size = 128
    end
    object qry_KontakteLive_Messanger: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Live_Messanger'
      Origin = 'Live_Messanger'
      Size = 128
    end
    object qry_KontakteID_Benutzer: TIntegerField
      FieldName = 'ID_Benutzer'
      Origin = 'ID_Benutzer'
      Required = True
    end
    object qry_KontakteGeburtsname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsname'
      Origin = 'Geburtsname'
      Size = 128
    end
    object qry_KontakteGeburtsland: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsland'
      Origin = 'Geburtsland'
      Size = 128
    end
  end
  object idEncQuotPrint_Main: TIdEncoderQuotedPrintable
    Left = 114
    Top = 215
  end
  object dlgFOpen_VCF: TdxOpenFileDialog
    Options = []
    Left = 370
    Top = 255
  end
  object dlgsave_Personal: TdxSaveFileDialog
    Filter = 'Excel (*.xls)|*.xls'
    Left = 373
    Top = 360
  end
  object dlgSave_VCF: TdxSaveFileDialog
    Filter = '*.vcf'
    FilterIndex = 0
    Left = 370
    Top = 303
  end
end
