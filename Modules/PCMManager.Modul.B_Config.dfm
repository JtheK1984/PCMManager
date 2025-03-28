object frm_Config: Tfrm_Config
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_Config'
  ClientHeight = 944
  ClientWidth = 1137
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
  object lactrl_Config: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1137
    Height = 944
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    ExplicitHeight = 900
    object edt_CalConfigFTP_Benutzer: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'user'
      DataBinding.DataSource = ds_CalConfigFTP
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 23
      Visible = False
      OnExit = btn_CalConfigFTPSaveClick
      Width = 460
    end
    object edt_CalConfigFTP_Datei: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'kalendername'
      DataBinding.DataSource = ds_CalConfigFTP
      ParentFont = False
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
      OnExit = btn_CalConfigFTPSaveClick
      Height = 19
      Width = 454
    end
    object edt_CalConfigFTP_Passwort: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'passwort'
      DataBinding.DataSource = ds_CalConfigFTP
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 25
      Visible = False
      OnExit = btn_CalConfigFTPSaveClick
      Width = 454
    end
    object edt_CalConfigFTP_URL: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'url'
      DataBinding.DataSource = ds_CalConfigFTP
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 22
      Visible = False
      OnExit = btn_CalConfigFTPSaveClick
      Height = 19
      Width = 460
    end
    object grd_FTPConfig: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 69
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_FTPConfig: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_CalConfigFTP
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_FTPConfigurl: TcxGridDBColumn
          Caption = 'Host'
          DataBinding.FieldName = 'url'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 300
        end
        object grdDBTblView_FTPConfigkalendername: TcxGridDBColumn
          Caption = 'Dateiname'
          DataBinding.FieldName = 'kalendername'
          DataBinding.IsNullValueType = True
          Width = 300
        end
        object grdDBTblView_FTPConfiguser: TcxGridDBColumn
          Caption = 'Benutzer'
          DataBinding.FieldName = 'user'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_FTPConfigpasswort: TcxGridDBColumn
          Caption = 'Passwort'
          DataBinding.FieldName = 'passwort'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.EchoMode = eemPassword
          Properties.PasswordChar = '*'
          Width = 100
        end
      end
      object grdlvl_FTPConfig: TcxGridLevel
        GridView = grdDBTblView_FTPConfig
      end
    end
    object brdckctrl_FTP: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 63
      Align = dalNone
      BarManager = brmgr_Config
      Visible = False
    end
    object edt_CalConfig_Benutzer: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Benutzer'
      DataBinding.DataSource = ds_CalConfig
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
      OnExit = btn_CalConfigSave1Click
      Width = 451
    end
    object edt_CalConfig_Kalender: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Kalender'
      DataBinding.DataSource = ds_CalConfig
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
      OnExit = btn_CalConfigSave1Click
      Width = 457
    end
    object edt_CalConfig_Link: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Link'
      DataBinding.DataSource = ds_CalConfig
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
      OnExit = btn_CalConfigSave1Click
      Width = 457
    end
    object edt_CalConfig_Passwort: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Passwort'
      DataBinding.DataSource = ds_CalConfig
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
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
      OnExit = btn_CalConfigSave1Click
      Width = 451
    end
    object grd_CalConfig: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 68
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_calconfig: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_CalConfig
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_calconfigKalender: TcxGridDBColumn
          DataBinding.FieldName = 'Kalender'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 100
        end
        object grdDBTblView_calconfigLink: TcxGridDBColumn
          DataBinding.FieldName = 'Link'
          DataBinding.IsNullValueType = True
          Width = 250
        end
        object grdDBTblView_calconfigBenutzer: TcxGridDBColumn
          DataBinding.FieldName = 'Benutzer'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_calconfigPasswort: TcxGridDBColumn
          DataBinding.FieldName = 'Passwort'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.EchoMode = eemPassword
          Width = 100
        end
        object grdDBTblView_calconfigErinnerung: TcxGridDBColumn
          DataBinding.FieldName = 'Erinnerung'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'true'
          Properties.ValueUnchecked = 'false'
        end
        object grdDBTblView_calconfigErinnerungVor: TcxGridDBColumn
          Caption = 'Erinnerung in Minuten'
          DataBinding.FieldName = 'ErinnerungVor'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_calconfigLabelColor: TcxGridDBColumn
          Caption = 'Terminfarbe'
          DataBinding.FieldName = 'LabelColor'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.CustomColors = <>
          Width = 80
        end
        object grdDBTblView_calconfigFontcolor: TcxGridDBColumn
          Caption = 'Schriftfarbe'
          DataBinding.FieldName = 'Fontcolor'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.CustomColors = <>
          Width = 80
        end
        object grdDBTblView_calconfigID_Benutzer: TcxGridDBColumn
          Caption = 'Benutzer'
          DataBinding.FieldName = 'ID_Benutzer'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Benutzer'
            end>
          Width = 100
        end
      end
      object grdlvl_CalConfig: TcxGridLevel
        GridView = grdDBTblView_calconfig
      end
    end
    object cmbbx_CalConfigReminderVal: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ErinnerungVor'
      DataBinding.DataSource = ds_CalConfig
      ParentFont = False
      Properties.Items = <
        item
          Description = '0 Minuten vor Termin'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = '5 Minuten vor Termin'
          Value = 5
        end
        item
          Description = '10 Minuten vor Termin'
          Value = 10
        end
        item
          Description = '15 Minuten vor Termin'
          Value = 15
        end
        item
          Description = '20 Minuten vor Termin'
          Value = 20
        end
        item
          Description = '30 Minuten vor Termin'
          Value = 30
        end
        item
          Description = '1 Stunde vor Termin'
          Value = 60
        end
        item
          Description = '2 Stunden vor Termin'
          Value = 120
        end
        item
          Description = '3 Stunden vor Termin'
          Value = 180
        end
        item
          Description = '4 Stunden vor Termin'
          Value = 240
        end
        item
          Description = '5 Stunden vor Termin'
          Value = 300
        end
        item
          Description = '6 Stunden vor Termin'
          Value = 360
        end
        item
          Description = '7 Stunden vor Termin'
          Value = 420
        end
        item
          Description = '8 Stunden vor Termin'
          Value = 480
        end
        item
          Description = '9 Stunden vor Termin'
          Value = '540'
        end
        item
          Description = '10 Stunden vor Termin'
          Value = '600'
        end
        item
          Description = '11 Stunden vor Termin'
          Value = '660'
        end
        item
          Description = '12 Stunden vor Termin'
          Value = '720'
        end
        item
          Description = '18 Stunden vor Termin'
          Value = '1080'
        end
        item
          Description = '1 Tag vor Termin'
          Value = '1440'
        end
        item
          Description = '2 Tage vor Termin'
          Value = '2880'
        end
        item
          Description = '3 Tage vor Termin'
          Value = '4320'
        end
        item
          Description = '4 Tage vor Termin'
          Value = '5760'
        end
        item
          Description = '1 Woche vor Termin'
          Value = '10080'
        end
        item
          Description = '2 Wochen vor Termin'
          Value = '20160'
        end>
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
      OnExit = btn_CalConfigSave1Click
      Width = 438
    end
    object chkbx_CalConfigReminder: TcxDBCheckBox
      Left = 10000
      Top = 10000
      BiDiMode = bdRightToLeft
      DataBinding.DataField = 'Erinnerung'
      DataBinding.DataSource = ds_CalConfig
      ParentBackground = False
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      Style.Color = clWindowFrame
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Transparent = True
      Visible = False
      OnExit = btn_CalConfigSave1Click
    end
    object colcmbbx_CalConfigFontColor: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Fontcolor'
      DataBinding.DataSource = ds_CalConfig
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 17
      Visible = False
      OnExit = btn_CalConfigSave1Click
      Width = 451
    end
    object colcmbbx_CalConfigLabelColor: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'LabelColor'
      DataBinding.DataSource = ds_CalConfig
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Visible = False
      OnExit = btn_CalConfigSave1Click
      Width = 457
    end
    object bardckctrl_Kalender: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 63
      Align = dalNone
      AllowDocking = False
      BarManager = brmgr_Config
      Visible = False
    end
    object grd_Feiertage: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 272
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
      object grdDBTblView_Feiertage: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_FT
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_FeiertageJahr: TcxGridDBColumn
          DataBinding.FieldName = 'Jahr'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 80
        end
        object grdDBTblView_FeiertageMonat: TcxGridDBColumn
          DataBinding.FieldName = 'Monat'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 80
        end
        object grdDBTblView_FeiertageTag: TcxGridDBColumn
          DataBinding.FieldName = 'Tag'
          DataBinding.IsNullValueType = True
          SortIndex = 2
          SortOrder = soAscending
          Width = 80
        end
        object grdDBTblView_FeiertageKategorie: TcxGridDBColumn
          DataBinding.FieldName = 'Kategorie'
          DataBinding.IsNullValueType = True
        end
        object grdDBTblView_FeiertageBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 300
        end
      end
      object grdlvl_Feiertage: TcxGridLevel
        GridView = grdDBTblView_Feiertage
      end
    end
    object brdckctrl_Feiertage: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 63
      Align = dalNone
      AllowDocking = False
      BarManager = brmgr_Config
      Visible = False
    end
    object grd_AufgabenPrio: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 179
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_AufgabenPrio: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_prio
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_AufgabenPrioPrioritaet: TcxGridDBColumn
          Caption = 'Priorit'#228't'
          DataBinding.FieldName = 'Prioritaet'
          DataBinding.IsNullValueType = True
          Width = 200
        end
        object grdDBTblView_AufgabenPrioBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 700
        end
      end
      object grdlvl_AufgabenPrio: TcxGridLevel
        GridView = grdDBTblView_AufgabenPrio
      end
    end
    object bardckctrl_AufgabenPrio: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 63
      Align = dalNone
      AllowDocking = False
      BarManager = brmgr_Config
      Visible = False
    end
    object edt_PrioBez: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_prio
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 33
      Visible = False
      OnExit = btn_AufgabenPrioSaveClick
      Width = 464
    end
    object edt_PrioNumber: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Prioritaet'
      DataBinding.DataSource = ds_prio
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 32
      Visible = False
      OnExit = btn_AufgabenPrioSaveClick
      Width = 466
    end
    object edt_Aufgabenart: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_Aufgabenarten
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 28
      Visible = False
      OnExit = btn_AufgabenSaveClick
      Width = 456
    end
    object grd_Aufgabenarten: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 236
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 30
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Aufgabenarten: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Aufgabenarten
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_AufgabenartenBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 700
        end
        object grdDBTblView_AufgabenartenFarbe: TcxGridDBColumn
          DataBinding.FieldName = 'Farbe'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.CustomColors = <>
          Properties.ShowDescriptions = False
          Width = 200
        end
      end
      object grdLvl_Aufgabenarten: TcxGridLevel
        GridView = grdDBTblView_Aufgabenarten
      end
    end
    object colcmbbx_Aufgabenart: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Farbe'
      DataBinding.DataSource = ds_Aufgabenarten
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Properties.ShowDescriptions = False
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
      OnExit = btn_AufgabenSaveClick
      Width = 456
    end
    object bardckctrl_Aufgabenarten: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 63
      Align = dalNone
      AllowDocking = False
      BarManager = brmgr_Config
      Visible = False
    end
    object cmbbx_AufgabenSonstigesAdresseFirma: TcxDBLookupComboBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataBinding.DataField = 'Adresse_firma'
      DataBinding.DataSource = ds_option
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListSource = dm_PCM.ds_Config_Firmen
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 41
      Visible = False
      Width = 456
    end
    object cmbbx_AufgabenSonstigesAdresseEigen: TcxDBLookupComboBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataBinding.DataField = 'Adresse_eigene'
      DataBinding.DataSource = ds_option
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListSource = dm_PCM.ds_Config_Ansprechpartner
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 37
      Visible = False
      Width = 454
    end
    object bardckctrl_AufgabenSonstiges: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 63
      Align = dalNone
      BarManager = brmgr_Config
      Visible = False
    end
    object edt_AufgabenSonstigesJira: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Jira_Basic_url'
      DataBinding.DataSource = ds_option
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 36
      Visible = False
      Width = 454
    end
    object mskedt_AufgabenSonstigesStunden: TcxDBCurrencyEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'StundenProArbeitstag'
      DataBinding.DataSource = ds_option
      Properties.DisplayFormat = ',0.0'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 40
      Visible = False
      Width = 456
    end
    object cmbbx_AufgabenSonstigesBundeslandFirma: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Adresse_firmaBL'
      DataBinding.DataSource = ds_option
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dm_PCM.ds_Config_Bundesland
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 42
      Visible = False
      Width = 456
    end
    object cmbbx_AufgabenSonstigesBundeslandEigen: TcxDBLookupComboBox
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      DataBinding.DataField = 'Adresse_eigeneBL'
      DataBinding.DataSource = ds_option
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dm_PCM.ds_Config_Bundesland
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 38
      Visible = False
      Width = 454
    end
    object edt_AufgabenSonstigesAccToDo: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Account_Privat'
      DataBinding.DataSource = ds_option
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 39
      Visible = False
      Width = 454
    end
    object edt_AufgabenSonstigesAccMail: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Account_Geschaeftlich'
      DataBinding.DataSource = ds_option
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 43
      Visible = False
      Width = 456
    end
    object grd_StundenplanConfig: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 414
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 48
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_StundenplanConfig: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_SchulFaecher
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_StundenplanConfigBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 300
        end
        object grdDBTblView_StundenplanConfigFarbe: TcxGridDBColumn
          DataBinding.FieldName = 'Farbe'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.CustomColors = <>
          Properties.NamingConvention = cxncHTML4
          Properties.ShowDescriptions = False
          Width = 150
        end
        object grdDBTblView_StundenplanConfigSchriftfarbe: TcxGridDBColumn
          DataBinding.FieldName = 'Schriftfarbe'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.CustomColors = <>
          Properties.NamingConvention = cxncHTML4
          Properties.PrepareList = cxplHTML4
          Properties.ShowDescriptions = False
          Width = 150
        end
      end
      object grdlvl_StundenplanConfig: TcxGridLevel
        GridView = grdDBTblView_StundenplanConfig
      end
    end
    object colcmbbx_StundenplanConfig_FontColor: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Schriftfarbe'
      DataBinding.DataSource = ds_SchulFaecher
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Properties.ShowDescriptions = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 47
      Visible = False
      OnExit = btn_FachSaveClick
      Width = 473
    end
    object colcmbbx_StundenplanConfig_LabelColor: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Farbe'
      DataBinding.DataSource = ds_SchulFaecher
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Properties.ShowDescriptions = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 46
      Visible = False
      OnExit = btn_FachSaveClick
      Width = 474
    end
    object edt_StundenplanConfig_FachBezeichnung: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_SchulFaecher
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 45
      Visible = False
      OnExit = btn_FachSaveClick
      Width = 1019
    end
    object brdckctrl_Schulfach: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 63
      Align = dalNone
      BarManager = brmgr_Config
      Visible = False
    end
    object colcmbbx_StundenplanConfigUhr_FontColor: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Schriftfarbe'
      DataBinding.DataSource = ds_SchulFaecher_Config
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Properties.ShowDescriptions = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 51
      Visible = False
      OnExit = btn_FachUSaveClick
      Width = 473
    end
    object colcmbbx_StundenplanConfigUhr_LabelColor: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Farbe'
      DataBinding.DataSource = ds_SchulFaecher_Config
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Properties.ShowDescriptions = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 50
      Visible = False
      OnExit = btn_FachUSaveClick
      Width = 474
    end
    object grd_StundenplanConfigUhr: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 75
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 52
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_StundenplanConfigUhr: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_SchulFaecher_Config
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_StundenplanConfigUhrFarbe: TcxGridDBColumn
          DataBinding.FieldName = 'Farbe'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.CustomColors = <>
          Properties.ShowDescriptions = False
          Width = 500
        end
        object grdDBTblView_StundenplanConfigUhrSchriftfarbe: TcxGridDBColumn
          DataBinding.FieldName = 'Schriftfarbe'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.CustomColors = <>
          Properties.ShowDescriptions = False
          Width = 500
        end
      end
      object grdlvl_StundenplanConfigUhr: TcxGridLevel
        GridView = grdDBTblView_StundenplanConfigUhr
      end
    end
    object brdckctrl_SchulfachUhr: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1085
      Height = 63
      Align = dalNone
      BarManager = brmgr_Config
      Visible = False
    end
    object grd_EmailConfig: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1077
      Height = 100
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 69
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_emailConfig: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_EmailConfig
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_emailConfigEMail: TcxGridDBColumn
          Caption = 'E-Mailadresse'
          DataBinding.FieldName = 'EMail'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
        end
        object grdDBTblView_emailConfigKontotyp: TcxGridDBColumn
          DataBinding.FieldName = 'Kontotyp'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Width = 90
        end
        object grdDBTblView_emailConfigPostEingangsserver: TcxGridDBColumn
          Caption = 'Posteingangsserver'
          DataBinding.FieldName = 'PostEingangsserver'
          DataBinding.IsNullValueType = True
          Width = 200
        end
        object grdDBTblView_emailConfigPortEingangsserver: TcxGridDBColumn
          Caption = 'Port Eingang'
          DataBinding.FieldName = 'PortEingangsserver'
          DataBinding.IsNullValueType = True
          Width = 90
        end
        object grdDBTblView_emailConfigBenutzer: TcxGridDBColumn
          DataBinding.FieldName = 'Benutzer'
          DataBinding.IsNullValueType = True
          Width = 150
        end
        object grdDBTblView_emailConfigSSLActive: TcxGridDBColumn
          Caption = 'SSL Aktiv'
          DataBinding.FieldName = 'SSLActive'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 91
        end
      end
      object grdlvl_EmailConfig: TcxGridLevel
        GridView = grdDBTblView_emailConfig
      end
    end
    object btn_EmailConfig_Test: TcxButton
      Left = 10000
      Top = 10000
      Width = 1077
      Height = 27
      Caption = 'Verbindung Testen'
      TabOrder = 70
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_EmailConfig_TestClick
    end
    object chxbx_EmailConfig_SSL: TcxDBCheckBox
      Left = 10000
      Top = 10000
      AutoSize = False
      Caption = 'Aktiv'
      DataBinding.DataField = 'SSLActive'
      DataBinding.DataSource = ds_EmailConfig
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 60
      Transparent = True
      Visible = False
      OnExit = btn_EmailConfigSaveClick
      Height = 19
      Width = 403
    end
    object edt_EmailConfig_Benutzer: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Benutzer'
      DataBinding.DataSource = ds_EmailConfig
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 62
      Visible = False
      OnExit = btn_EmailConfigSaveClick
      Width = 410
    end
    object edt_EmailConfig_Emailadresse: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'EMail'
      DataBinding.DataSource = ds_EmailConfig
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 54
      Visible = False
      OnExit = btn_EmailConfigSaveClick
      Width = 403
    end
    object edt_EmailConfig_Kennwort: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Passwort'
      DataBinding.DataSource = ds_EmailConfig
      ParentFont = False
      Properties.EchoMode = eemPassword
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 63
      Visible = False
      OnExit = btn_EmailConfigSaveClick
      Width = 410
    end
    object edt_EmailConfig_PortAusgang: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PortAusgangsserver'
      DataBinding.DataSource = ds_EmailConfig
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 59
      Visible = False
      OnExit = btn_EmailConfigSaveClick
      Width = 403
    end
    object edt_EmailConfig_PortEingang: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PortEingangsserver'
      DataBinding.DataSource = ds_EmailConfig
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 57
      Visible = False
      OnExit = btn_EmailConfigSaveClick
      Width = 403
    end
    object edt_EmailConfig_PostAusgangServer: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PostAusgangsserver'
      DataBinding.DataSource = ds_EmailConfig
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 58
      Visible = False
      Width = 403
    end
    object edt_EmailConfig_PostEingangServer: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PostEingangsserver'
      DataBinding.DataSource = ds_EmailConfig
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 56
      Visible = False
      OnExit = btn_EmailConfigSaveClick
      Width = 403
    end
    object brdckctrl_Email: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1077
      Height = 63
      Align = dalNone
      BarManager = brmgr_Config
      Visible = False
    end
    object bardckctrl_Postfach: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1077
      Height = 63
      Align = dalNone
      BarManager = brmgr_Config
      Visible = False
    end
    object btn_PostfachMainbottom: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC610500000242494441
        5478DAB593CB6B135114C6BF998CB149AA99A2CDD384A238538D6834A6582A5A
        1F548C74ED46BA69232222F47FD14AEDC68A6BB108428BB8F0D9451656C53023
        5AA9B5369126934E924E4C33E3BDB72418D32E5C7808CC90B9BF73BE7BBE7338
        90F0274625CB32155816F9997266FA968A4D6257FFB06499A6424E813C65EDE5
        7D95F35F1A9508A5446331F0660DA9548A25C9CE8CA9CDF0082B72BC278EBC56
        C4A7F47B768E27DF94484F1FA2C19D88EC11211F3A0A5240E93C7F4D6AC06746
        C8BBA5C47BFB10703BA1174BB07BE95F96C2D5E587A3A7203A04AC1B65648B15
        643ECE329916B916854FF40F40B071D0AB36E86503EAEB2784B7648E56F05DBC
        4992900A8343A818BF90CD6928AD19D0DE4E5399E84D5C86512347B76D87C071
        987D38CEE0C2AB072A5797E9BD708325393C9884BDAD1DD97C01657D151EB71D
        35DE05A7CB0143D730F7E836BB3B8529C7D75DE0789BE2F0EEC3DCD4387402FA
        036174F8C2A8B6F9E0F604A01734BC9BBA83F6E001F03641114F0EB11EB5B8F0
        616105A525155DE7861194E34CDD62FA0DBECC4CC0159070302436B920345CF0
        11A9A461BA51C357733FE69F4E60BDBA46EF8A6FCF26092C23D2D5097FBB8085
        C50C73A1F223BDB50B85959F287F5758139DA4F291EEBDFFEE4265F9334B103D
        16FB7F2E707F8EAB67E03A99754BE94E24217A42C81556E954A243DC81DCD23C
        D28FC75865BA0375A629010D3AC25449AB0B7737E017934D3BD29280C6EEB357
        25B26F4AE8F495860B5476FE2F78CB041B0B9464F3419BC8E0E7F7365DF1DF3F
        EB7C93A1EABC6E0000000049454E44AE426082}
      TabOrder = 75
      Visible = False
      OnClick = btn_PostfachMainbottomClick
    end
    object btn_PostfachMaindown: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000001AB494441
        5478DADD92CB2F035114C6BF69ABDE54506FB19A9110A9502112EF10156B1BB1
        D18A8848FC2F4858A9588B44226161E1BDE882483477242C884417EDD4548D47
        E7BAF74A453DFE004E6E666EEE9CDF39DFFDCE007F3E24FE28F3CCCA949A0494
        B2652A775B73EA4FC9855DE332354DC2B2C0DE8AB6BFA24A6543B332A388ABA9
        091633814020208A84B617D454D82B9A34B7B811D162B8089E893C0BFB46EA5A
        DAE1AAC8435DA5034A7D23580352DC37297FC0DD5EB6A7C4DDD68EF2FC2CE8B1
        07D84BF8112552527EB5AB038E4C1B5E8D3842B127DC9D1F0B99945D8BC3AD5D
        FDB05925E82F56E87103EAE126E3A9223C281D9C61455887E1313C19CF088535
        3C3C1AD04EB6B84CB479466024586A5A3A6C9284E3B54501470F56552929B364
        605A146918F6C19E918350248AB87E0F67BE1D094B36B2B23361E81A4ED7E7C5
        DD39FC31856438FBA798CB94D47A7C7038AB108EDE733F50E0C845F8F60AC18D
        05D199BB9F32C6CFC1CDE34A6A7AC751A1B8C5D94DF00897DB4BEFF09E3F653A
        DF0AF028EA9990D9A44955E7288770BDE317B2235FE05F0BBC8FCE27FE0F6EA2
        80779755FCCF7803E8D0E0915AAA27200000000049454E44AE426082}
      TabOrder = 74
      Visible = False
      OnClick = btn_PostfachMaindownClick
    end
    object btn_PostfachMainUp: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000001B6494441
        5478DA636018F280119784985B96DAFFFFFF6E82D8FFFFFD537FB377D62D6CEA
        98B06BCE046BB6B2306330363464F8FFFFFF4D61C71435A20C8068FE7FD3DCC2
        9241579C974184F91F8388B41203C84041FB440C4350BC20EA9AA1065479D3C4
        CA81418C8399E1D6F34F0CAF3F7E61F8FAF52B03031B1BC38FA7574106A97F38
        BCE816860120CD40BFDE3474F061F8F7F71FC3A75F8C0CDF7FFE063B9183839D
        E1E3A74F0C3F7EFF61F870650FD8904F4797DE821B20EA920E76B6BA5B1C0323
        231303370F37C3FB0F1F196EEF9807365CCD239141584488E1D5DBCF0C9F81AE
        79B61728FEFFBFFAE7132B6E318A38A781FC7553D93B97819B939D4152848FE1
        DE83870C37364F67F8CFF05F1DA8101C88DAFE590CCA4ACA0C4FDE7E64F8F4F1
        2BC3CDD5AD207175664E45A337528EF10C2A6A1A0CF252220CD7AFDD60B8B165
        3ADCAF3F1E5D7CCB2EA3B3FCD5F593B92CC2CA0C067AFA0C6C3CFC0CDFD98419
        3EDE3993CB088A1E5008AB7B24036D6462B8B16D06D879C80105023CE6E1C000
        FE7753D32B1DE8712686AB9BA6802D018781A05D02D81B4001101743330C709B
        8680039A01E43960E2FA7E7E235675430C00005416CE3539D1B3B10000000049
        454E44AE426082}
      TabOrder = 73
      Visible = False
      OnClick = btn_PostfachMainUpClick
    end
    object btn_PostfachMainTop: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC610500000234494441
        5478DAB5534D6B1351143D93D4496262A5CD24A135626D6A46F1A3468DF9026D
        A896A2821BC19D5A2A560BF919FE03A1D245168228B8F20311316E5450889452
        633353D166682AC48C261343D2B49DF1BD572D8544A80BEFEABDE19E33F7DC73
        1E87BF947B68DC6F18BA44CF86AE8BC5D4A4DCAACFD41A7C8381A3E1E3381A08
        C0300CC919BFEADF14C11AD89042E1080E7AB64130EB1076F48212769C1C6922
        E1365E5CA7AFFB49A7742C3A00B7D50CF9AB866FE59FA856AB00CFA39ECF5022
        B1F4EA8EDC4440C144AB141838077D5587D6E0505B5A66235AAD1694350DF5E5
        15943EBC6024DA9BBBF23A81EBD4181B5B1CBA048E33C1EEB0E347A98CFCF46B
        46EEED8FC12974A2A0565021D32CA69264B38658797B5FE684C16B5497E43B9B
        80DD664197D08ECFF33928E91496D41C23E03B77A22738085FAF0F0B6A195AB9
        0AE9C14DBA5CD16CDB7DA4D81DBF8C3EFF5EECEA1630FB310BE5FD1A381609C1
        E3F620379741E5BB0A9D6FC7E143FDE01DDB51E39D287F4A27DAE828F9545272
        6C198542142B532FD15015842351E2C256CCE78B7079FB5050247C49AF62A551
        27C249DFF349B60BB6838E1357980C5BD71E348A390463F1962ED4166660117A
        50516658B86A530FE5FFEBC2DCB32423F70F8FFCBB0BD9C713306088A4914579
        FFF9F1CDBB907D32B19EB8BA32AD5ABC07EE1566DF25DA9CBE261738FA4868CE
        C5E151F24713B24F6FB3F136C69596237491C45C97F69D19632E641EDD6A7681
        7CA0D726F09FB2072FB045838AFBEDC22F58E6680A1520C2DE0000000049454E
        44AE426082}
      TabOrder = 72
      Visible = False
      OnClick = btn_PostfachMainTopClick
    end
    object grd_Postfachmain: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1033
      Height = 99
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 76
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblViewl_Postfachmain: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_EmailPostfachMain
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
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblViewl_PostfachmainPostfach: TcxGridDBColumn
          DataBinding.FieldName = 'Postfach'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          Options.Sorting = False
          Width = 400
        end
        object grdDBTblViewl_PostfachmainAnzeige: TcxGridDBColumn
          DataBinding.FieldName = 'Anzeige'
          DataBinding.IsNullValueType = True
          Options.Sorting = False
          Width = 400
        end
        object grdDBTblViewl_PostfachmainAbonnieren: TcxGridDBColumn
          DataBinding.FieldName = 'Abonnieren'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Sorting = False
          Width = 80
        end
        object grdDBTblViewl_PostfachmainSortierung: TcxGridDBColumn
          DataBinding.FieldName = 'Sortierung'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          Options.Sorting = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 80
        end
      end
      object grdlvl_Postfachmain: TcxGridLevel
        GridView = grdDBTblViewl_Postfachmain
      end
    end
    object btn_PostfachSubbottom: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC610500000242494441
        5478DAB593CB6B135114C6BF998CB149AA99A2CDD384A238538D6834A6582A5A
        1F548C74ED46BA69232222F47FD14AEDC68A6BB108428BB8F0D9451656C53023
        5AA9B5369126934E924E4C33E3BDB72418D32E5C7808CC90B9BF73BE7BBE7338
        90F0274625CB32155816F9997266FA968A4D6257FFB06499A6424E813C65EDE5
        7D95F35F1A9508A5446331F0660DA9548A25C9CE8CA9CDF0082B72BC278EBC56
        C4A7F47B768E27DF94484F1FA2C19D88EC11211F3A0A5240E93C7F4D6AC06746
        C8BBA5C47BFB10703BA1174BB07BE95F96C2D5E587A3A7203A04AC1B65648B15
        643ECE329916B916854FF40F40B071D0AB36E86503EAEB2784B7648E56F05DBC
        4992900A8343A818BF90CD6928AD19D0DE4E5399E84D5C86512347B76D87C071
        987D38CEE0C2AB072A5797E9BD708325393C9884BDAD1DD97C01657D151EB71D
        35DE05A7CB0143D730F7E836BB3B8529C7D75DE0789BE2F0EEC3DCD4387402FA
        036174F8C2A8B6F9E0F604A01734BC9BBA83F6E001F03641114F0EB11EB5B8F0
        616105A525155DE7861194E34CDD62FA0DBECC4CC0159070302436B920345CF0
        11A9A461BA51C357733FE69F4E60BDBA46EF8A6FCF26092C23D2D5097FBB8085
        C50C73A1F223BDB50B85959F287F5758139DA4F291EEBDFFEE4265F9334B103D
        16FB7F2E707F8EAB67E03A99754BE94E24217A42C81556E954A243DC81DCD23C
        D28FC75865BA0375A629010D3AC25449AB0B7737E017934D3BD29280C6EEB357
        25B26F4AE8F495860B5476FE2F78CB041B0B9464F3419BC8E0E7F7365DF1DF3F
        EB7C93A1EABC6E0000000049454E44AE426082}
      TabOrder = 80
      Visible = False
      OnClick = btn_PostfachSubbottomClick
    end
    object btn_PostfachSubDown: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000001AB494441
        5478DADD92CB2F035114C6BF69ABDE54506FB19A9110A9502112EF10156B1BB1
        D18A8848FC2F4858A9588B44226161E1BDE882483477242C884417EDD4548D47
        E7BAF74A453DFE004E6E666EEE9CDF39DFFDCE007F3E24FE28F3CCCA949A0494
        B2652A775B73EA4FC9855DE332354DC2B2C0DE8AB6BFA24A6543B332A388ABA9
        091633814020208A84B617D454D82B9A34B7B811D162B8089E893C0BFB46EA5A
        DAE1AAC8435DA5034A7D23580352DC37297FC0DD5EB6A7C4DDD68EF2FC2CE8B1
        07D84BF8112552527EB5AB038E4C1B5E8D3842B127DC9D1F0B99945D8BC3AD5D
        FDB05925E82F56E87103EAE126E3A9223C281D9C61455887E1313C19CF088535
        3C3C1AD04EB6B84CB479466024586A5A3A6C9284E3B54501470F56552929B364
        605A146918F6C19E918350248AB87E0F67BE1D094B36B2B23361E81A4ED7E7C5
        DD39FC31856438FBA798CB94D47A7C7038AB108EDE733F50E0C845F8F60AC18D
        05D199BB9F32C6CFC1CDE34A6A7AC751A1B8C5D94DF00897DB4BEFF09E3F653A
        DF0AF028EA9990D9A44955E7288770BDE317B2235FE05F0BBC8FCE27FE0F6EA2
        80779755FCCF7803E8D0E0915AAA27200000000049454E44AE426082}
      TabOrder = 79
      Visible = False
      OnClick = btn_PostfachSubDownClick
    end
    object btn_PostfachSubUp: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000001B6494441
        5478DA636018F280119784985B96DAFFFFFF6E82D8FFFFFD537FB377D62D6CEA
        98B06BCE046BB6B2306330363464F8FFFFFF4D61C71435A20C8068FE7FD3DCC2
        9241579C974184F91F8388B41203C84041FB440C4350BC20EA9AA1065479D3C4
        CA81418C8399E1D6F34F0CAF3F7E61F8FAF52B03031B1BC38FA7574106A97F38
        BCE816860120CD40BFDE3474F061F8F7F71FC3A75F8C0CDF7FFE063B9183839D
        E1E3A74F0C3F7EFF61F870650FD8904F4797DE821B20EA920E76B6BA5B1C0323
        231303370F37C3FB0F1F196EEF9807365CCD239141584488E1D5DBCF0C9F81AE
        79B61728FEFFBFFAE7132B6E318A38A781FC7553D93B97819B939D4152848FE1
        DE83870C37364F67F8CFF05F1DA8101C88DAFE590CCA4ACA0C4FDE7E64F8F4F1
        2BC3CDD5AD207175664E45A337528EF10C2A6A1A0CF252220CD7AFDD60B8B165
        3ADCAF3F1E5D7CCB2EA3B3FCD5F593B92CC2CA0C067AFA0C6C3CFC0CDFD98419
        3EDE3993CB088A1E5008AB7B24036D6462B8B16D06D879C80105023CE6E1C000
        FE7753D32B1DE8712686AB9BA6802D018781A05D02D81B4001101743330C709B
        8680039A01E43960E2FA7E7E235675430C00005416CE3539D1B3B10000000049
        454E44AE426082}
      TabOrder = 78
      Visible = False
      OnClick = btn_PostfachSubUpClick
    end
    object btn_PostfachSubTop: TcxButton
      Left = 10000
      Top = 10000
      Width = 20
      Height = 20
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0D0D3173F26F50000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC610500000234494441
        5478DAB5534D6B1351143D93D4496262A5CD24A135626D6A46F1A3468DF9026D
        A896A2821BC19D5A2A560BF919FE03A1D245168228B8F20311316E5450889452
        633353D166682AC48C261343D2B49DF1BD572D8544A80BEFEABDE19E33F7DC73
        1E87BF947B68DC6F18BA44CF86AE8BC5D4A4DCAACFD41A7C8381A3E1E3381A08
        C0300CC919BFEADF14C11AD89042E1080E7AB64130EB1076F48212769C1C6922
        E1365E5CA7AFFB49A7742C3A00B7D50CF9AB866FE59FA856AB00CFA39ECF5022
        B1F4EA8EDC4440C144AB141838077D5587D6E0505B5A66235AAD1694350DF5E5
        15943EBC6024DA9BBBF23A81EBD4181B5B1CBA048E33C1EEB0E347A98CFCF46B
        46EEED8FC12974A2A0565021D32CA69264B38658797B5FE684C16B5497E43B9B
        80DD664197D08ECFF33928E91496D41C23E03B77A22738085FAF0F0B6A195AB9
        0AE9C14DBA5CD16CDB7DA4D81DBF8C3EFF5EECEA1630FB310BE5FD1A381609C1
        E3F620379741E5BB0A9D6FC7E143FDE01DDB51E39D287F4A27DAE828F9545272
        6C198542142B532FD15015842351E2C256CCE78B7079FB5050247C49AF62A551
        27C249DFF349B60BB6838E1357980C5BD71E348A390463F1962ED4166660117A
        50516658B86A530FE5FFEBC2DCB32423F70F8FFCBB0BD9C713306088A4914579
        FFF9F1CDBB907D32B19EB8BA32AD5ABC07EE1566DF25DA9CBE261738FA4868CE
        C5E151F24713B24F6FB3F136C69596237491C45C97F69D19632E641EDD6A7681
        7CA0D726F09FB2072FB045838AFBEDC22F58E6680A1520C2DE0000000049454E
        44AE426082}
      TabOrder = 77
      Visible = False
      OnClick = btn_PostfachSubTopClick
    end
    object grd_postfachSub: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1033
      Height = 98
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 81
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblViewl_PostfachSub: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_EmailPostfachSub
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
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblViewl_PostfachSubPostfach: TcxGridDBColumn
          DataBinding.FieldName = 'Postfach'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          Options.Sorting = False
          Width = 265
        end
        object grdDBTblViewl_PostfachSubAnzeige: TcxGridDBColumn
          DataBinding.FieldName = 'Anzeige'
          DataBinding.IsNullValueType = True
          Options.Sorting = False
          Width = 265
        end
        object grdDBTblViewl_PostfachSubParent: TcxGridDBColumn
          Caption = 'Hauptpostfach'
          DataBinding.FieldName = 'Parent'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Anzeige'
            end>
          Options.Editing = False
          Options.Sorting = False
          Width = 265
        end
        object grdDBTblViewl_PostfachSubAbonnieren: TcxGridDBColumn
          DataBinding.FieldName = 'Abonnieren'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Options.Sorting = False
          Width = 80
        end
        object grdDBTblViewl_PostfachSubSortierung: TcxGridDBColumn
          DataBinding.FieldName = 'Sortierung'
          DataBinding.IsNullValueType = True
          Options.Editing = False
          Options.Sorting = False
          SortIndex = 0
          SortOrder = soAscending
          Width = 80
        end
      end
      object grdlvl_PostfachSub: TcxGridLevel
        GridView = grdDBTblViewl_PostfachSub
      end
    end
    object bardckctrl_Anrede: TdxBarDockControl
      Left = 28
      Top = 77
      Width = 1077
      Height = 63
      Align = dalNone
      BarManager = brmgr_Config
    end
    object bardckctrl_Geburtsland: TdxBarDockControl
      Left = 28
      Top = 414
      Width = 1077
      Height = 63
      Align = dalNone
      BarManager = brmgr_Config
    end
    object bardckctrl_Phonerlite: TdxBarDockControl
      Left = 28
      Top = 750
      Width = 1077
      Height = 63
      Align = dalNone
      BarManager = brmgr_Config
    end
    object edt_Anrede: TcxDBTextEdit
      Left = 106
      Top = 146
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_Anrede
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 999
    end
    object edt_Land: TcxDBTextEdit
      Left = 106
      Top = 483
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_Land
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 999
    end
    object edt_Phone: TcxDBButtonEdit
      Left = 106
      Top = 819
      DataBinding.DataField = 'Path'
      DataBinding.DataSource = ds_phone
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edt_PhonePropertiesButtonClick
      Properties.OnEditValueChanged = edt_PhonePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 999
    end
    object grd_Phonerlite: TcxGrid
      Left = 28
      Top = 844
      Width = 1077
      Height = 68
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Phonerlite: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_phone
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_PhonerlitePath: TcxGridDBColumn
          Caption = 'Pfad'
          DataBinding.FieldName = 'Path'
          DataBinding.IsNullValueType = True
          Width = 700
        end
      end
      object grdLvl_Phonerlite: TcxGridLevel
        GridView = grdDBTblView_Phonerlite
      end
    end
    object grd_Geburtsland: TcxGrid
      Left = 28
      Top = 508
      Width = 1077
      Height = 195
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Geburtsland: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Land
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_GeburtslandBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 700
        end
      end
      object grdLvl_Geburtsland: TcxGridLevel
        GridView = grdDBTblView_Geburtsland
      end
    end
    object grd_Anrede: TcxGrid
      Left = 28
      Top = 171
      Width = 1077
      Height = 196
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Anrede: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Anrede
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_AnredeBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 700
        end
      end
      object grdLvl_Anrede: TcxGridLevel
        GridView = grdDBTblView_Anrede
      end
    end
    object cmbbx_Auth: TcxDBImageComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Authtype'
      DataBinding.DataSource = ds_EmailConfig
      Properties.Items = <
        item
          Description = 'Basic Auth'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'OAuth'
          Value = 1
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 61
      Visible = False
      Height = 19
      Width = 403
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ClientID'
      DataBinding.DataSource = ds_EmailConfig
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 64
      Visible = False
      Width = 410
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ClientSecret'
      DataBinding.DataSource = ds_EmailConfig
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 65
      Visible = False
      Width = 410
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'AuthorizationEndpoint'
      DataBinding.DataSource = ds_EmailConfig
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 67
      Visible = False
      Height = 19
      Width = 410
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'AccessTokenEndpoint'
      DataBinding.DataSource = ds_EmailConfig
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 68
      Visible = False
      Height = 19
      Width = 410
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Scopes'
      DataBinding.DataSource = ds_EmailConfig
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 66
      Visible = False
      Width = 410
    end
    object lucmbbx_EmailConfig_Kontptyp: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Kontotyp'
      DataBinding.DataSource = ds_EmailConfig
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dm_PCM.ds_Config_EmailConfigTyp
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 55
      Visible = False
      OnExit = btn_EmailConfigSaveClick
      Width = 403
    end
    object lactrl_ConfigGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lactrl_ConfigTab: TdxLayoutGroup
      Parent = lactrl_ConfigGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanging = lactrl_ConfigTabTabChanging
      Index = 0
    end
    object lagrp_Kalenders: TdxLayoutGroup
      Parent = lactrl_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 10
      CaptionOptions.Text = 'Kalender'
      ShowBorder = False
      Index = 1
    end
    object lagrp_Kalender: TdxLayoutGroup
      Parent = lagrp_Kalenders
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'abonnierte Kalender'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 0
    end
    object laitm_KalenderBar: TdxLayoutItem
      Parent = lagrp_Kalender
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'bardckctrl_Kalender'
      CaptionOptions.Visible = False
      Control = bardckctrl_Kalender
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_KalenderKalender: TdxLayoutItem
      Parent = lagrp_KalenderDetailLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Kalender:'
      Control = edt_CalConfig_Kalender
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_KalenderLink: TdxLayoutItem
      Parent = lagrp_KalenderDetailLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Link:'
      Control = edt_CalConfig_Link
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_KalenderTerminFarbe: TdxLayoutItem
      Parent = lagrp_KalenderDetailLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Terminfarbe:'
      Control = colcmbbx_CalConfigLabelColor
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_KalenderAnTerminerinnern: TdxLayoutItem
      Parent = lagrp_KalenderAnTerminerinnern
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'an Termine erinnern:'
      Control = chkbx_CalConfigReminder
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 15
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_KalenderAnTerminerinnernVor: TdxLayoutItem
      Parent = lagrp_KalenderAnTerminerinnern
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cmbbx_CalConfigReminderVal'
      CaptionOptions.Visible = False
      Control = cmbbx_CalConfigReminderVal
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 341
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_KalenderBenutzer: TdxLayoutItem
      Parent = lagrp_KalenderDetailRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Benutzer:'
      Control = edt_CalConfig_Benutzer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_KalenderPasswort: TdxLayoutItem
      Parent = lagrp_KalenderDetailRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Passwort:'
      Control = edt_CalConfig_Passwort
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_KalenderSchriftfarbe: TdxLayoutItem
      Parent = lagrp_KalenderDetailRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Schriftfarbe:'
      Control = colcmbbx_CalConfigFontColor
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_KalenderGrid: TdxLayoutItem
      Parent = lagrp_Kalender
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'grd_CalConfig'
      CaptionOptions.Visible = False
      Control = grd_CalConfig
      ControlOptions.OriginalHeight = 68
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_FeiertageBar: TdxLayoutItem
      Parent = lagrp_Feiertage
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckctrl_Feiertage'
      CaptionOptions.Visible = False
      Control = brdckctrl_Feiertage
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_FeiertageGrid: TdxLayoutItem
      Parent = lagrp_Feiertage
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Feiertage'
      CaptionOptions.Visible = False
      Control = grd_Feiertage
      ControlOptions.OriginalHeight = 180
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_FTP: TdxLayoutGroup
      Parent = lagrp_Kalenders
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'FTP-Zugangsdaten'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 2
    end
    object laitm_FTPBar: TdxLayoutItem
      Parent = lagrp_FTP
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckctrl_FTP'
      CaptionOptions.Visible = False
      Control = brdckctrl_FTP
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_FTPHost: TdxLayoutItem
      Parent = lagrp_FTPDetailLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Host:'
      Control = edt_CalConfigFTP_URL
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_FTPDateiname: TdxLayoutItem
      Parent = lagrp_FTPDetailRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Dateiname:'
      Control = edt_CalConfigFTP_Datei
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_FTPBenutzer: TdxLayoutItem
      Parent = lagrp_FTPDetailLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Benutzer:'
      Control = edt_CalConfigFTP_Benutzer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_FTPPasswort: TdxLayoutItem
      Parent = lagrp_FTPDetailRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Passwort:'
      Control = edt_CalConfigFTP_Passwort
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_FTPGrid: TdxLayoutItem
      Parent = lagrp_FTP
      CaptionOptions.Text = 'grd_FTPConfig'
      CaptionOptions.Visible = False
      Control = grd_FTPConfig
      ControlOptions.OriginalHeight = 69
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrp_Aufgaben: TdxLayoutGroup
      Parent = lactrl_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 58
      CaptionOptions.Text = 'Aufgaben'
      Index = 2
    end
    object lagrp_Aufgabenart: TdxLayoutGroup
      Parent = lagrp_Aufgaben
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Aufgabenarten'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 0
    end
    object laitm_AufgabenartBar: TdxLayoutItem
      Parent = lagrp_Aufgabenart
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'bardckctrl_Aufgabenarten'
      CaptionOptions.Visible = False
      Control = bardckctrl_Aufgabenarten
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_AufgabenartArt: TdxLayoutItem
      Parent = lagrp_AufgabenartDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      Control = edt_Aufgabenart
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_AufgabenartBeschreibung: TdxLayoutItem
      Parent = lagrp_AufgabenartDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Aufgaben Farbe:'
      Control = colcmbbx_Aufgabenart
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_AufgabenartGrid: TdxLayoutItem
      Parent = lagrp_Aufgabenart
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Aufgabenarten'
      CaptionOptions.Visible = False
      Control = grd_Aufgabenarten
      ControlOptions.OriginalHeight = 186
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrp_Prio: TdxLayoutGroup
      Parent = lagrp_Aufgaben
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Priorit'#228't'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 2
      Index = 1
    end
    object laitm_PrioBar: TdxLayoutItem
      Parent = lagrp_Prio
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'bardckctrl_AufgabenPrio'
      CaptionOptions.Visible = False
      Control = bardckctrl_AufgabenPrio
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_PrioPrio: TdxLayoutItem
      Parent = lagrp_PrioDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Priorit'#228't:'
      Control = edt_PrioNumber
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_PrioBeschreibung: TdxLayoutItem
      Parent = lagrp_PrioDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      Control = edt_PrioBez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PrioGrid: TdxLayoutItem
      Parent = lagrp_Prio
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_AufgabenPrio'
      CaptionOptions.Visible = False
      Control = grd_AufgabenPrio
      ControlOptions.OriginalHeight = 137
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrp_Sonstige: TdxLayoutGroup
      Parent = lagrp_Aufgaben
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sonstige Einstellungen'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 2
    end
    object laitm_SonstigeBar: TdxLayoutItem
      Parent = lagrp_Sonstige
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'bardckctrl_AufgabenSonstiges'
      CaptionOptions.Visible = False
      Control = bardckctrl_AufgabenSonstiges
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SonstigeJira: TdxLayoutItem
      Parent = lagrp_SonstigeDetailLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Jira-Basic-Url:'
      Control = edt_AufgabenSonstigesJira
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SonstigeAdresseSelbst: TdxLayoutItem
      Parent = lagrp_SonstigeDetailLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Adresse Selbst:'
      Control = cmbbx_AufgabenSonstigesAdresseEigen
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SonstigeBundesland: TdxLayoutItem
      Parent = lagrp_SonstigeDetailLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bundesland:'
      Control = cmbbx_AufgabenSonstigesBundeslandEigen
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_SonstigeAccTODO: TdxLayoutItem
      Parent = lagrp_SonstigeDetailLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Account-ToDo:'
      Control = edt_AufgabenSonstigesAccToDo
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_SonstigeStunden: TdxLayoutItem
      Parent = lagrp_SonstigeDetailRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Stunden pro Tag:'
      Control = mskedt_AufgabenSonstigesStunden
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SonstigeAdresseFirma: TdxLayoutItem
      Parent = lagrp_SonstigeDetailRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Adresse Firma:'
      Control = cmbbx_AufgabenSonstigesAdresseFirma
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SonstigeBundeslandFirma: TdxLayoutItem
      Parent = lagrp_SonstigeDetailRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bundesland:'
      Control = cmbbx_AufgabenSonstigesBundeslandFirma
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_SonstigeAccMail: TdxLayoutItem
      Parent = lagrp_SonstigeDetailRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Account-Mails:'
      Control = edt_AufgabenSonstigesAccMail
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lagrp_Stundenplan: TdxLayoutGroup
      Parent = lactrl_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 14
      CaptionOptions.Text = 'Stundenplan'
      ItemIndex = 1
      Index = 3
    end
    object lagrp_StundenplanFaecher: TdxLayoutGroup
      Parent = lagrp_Stundenplan
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Anzeige Schulf'#228'cher'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 2
      Index = 0
    end
    object laitm_StundenplanFaecherBar: TdxLayoutItem
      Parent = lagrp_StundenplanFaecher
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckctrl_Schulfach'
      CaptionOptions.Visible = False
      Control = brdckctrl_Schulfach
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_StundenplanFaecherFach: TdxLayoutItem
      Parent = lagrp_StundenplanFaecherDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Schulfach:'
      Control = edt_StundenplanConfig_FachBezeichnung
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 950
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_StundenplanFaecherFarbeHintergrund: TdxLayoutItem
      Parent = lagrp_StundenplanFaecherFarbe
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hintergrund:'
      Control = colcmbbx_StundenplanConfig_LabelColor
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_StundenplanFaecherFarbeSchrift: TdxLayoutItem
      Parent = lagrp_StundenplanFaecherFarbe
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Schriftfarbe:'
      Control = colcmbbx_StundenplanConfig_FontColor
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_StundenplanFaecherGrid: TdxLayoutItem
      Parent = lagrp_StundenplanFaecher
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_StundenplanConfig'
      CaptionOptions.Visible = False
      Control = grd_StundenplanConfig
      ControlOptions.OriginalHeight = 414
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrp_StundenplanUhrzeit: TdxLayoutGroup
      Parent = lagrp_Stundenplan
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Anzeige Uhrzeiten'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 1
    end
    object laitm_StundenplanUhrzeitBar: TdxLayoutItem
      Parent = lagrp_StundenplanUhrzeit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckctrl_SchulfachUhr'
      CaptionOptions.Visible = False
      Control = brdckctrl_SchulfachUhr
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_StundenplanUhrzeitFarbeHintergrund: TdxLayoutItem
      Parent = lagrp_StundenplanUhrzeitFarbe
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hintergrund:'
      Control = colcmbbx_StundenplanConfigUhr_LabelColor
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_StundenplanUhrzeitFarbeSchrift: TdxLayoutItem
      Parent = lagrp_StundenplanUhrzeitFarbe
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Schriftfarbe:'
      Control = colcmbbx_StundenplanConfigUhr_FontColor
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_StundenplanUhrzeitGrid: TdxLayoutItem
      Parent = lagrp_StundenplanUhrzeit
      CaptionOptions.Text = 'grd_StundenplanConfigUhr'
      CaptionOptions.Visible = False
      Control = grd_StundenplanConfigUhr
      ControlOptions.OriginalHeight = 75
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrp_EMail: TdxLayoutGroup
      Parent = lactrl_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 15
      CaptionOptions.Text = 'E-Mail'
      Index = 4
    end
    object laitm_EmailkonfigurationBar: TdxLayoutItem
      Parent = lagrp_Emailkonfiguration
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckctrl_Email'
      CaptionOptions.Visible = False
      Control = brdckctrl_Email
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1266
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Emailadress: TdxLayoutItem
      Parent = lagrp_EmailkonfigurationDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail:'
      Control = edt_EmailConfig_Emailadresse
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_EmailPoseingangadress: TdxLayoutItem
      Parent = lagrp_EmailkonfigurationDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Posteingangsserver:'
      Control = edt_EmailConfig_PostEingangServer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_EmailPoseingangPort: TdxLayoutItem
      Parent = lagrp_EmailkonfigurationDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Port:'
      Control = edt_EmailConfig_PortEingang
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object laitm_EmailSSL: TdxLayoutItem
      Parent = lagrp_EmailkonfigurationDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'SSL- Verschl'#252'sselung:'
      Control = chxbx_EmailConfig_SSL
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object laitm_EmailAnmeldung: TdxLayoutLabeledItem
      Parent = lagrp_EmailkonfigurationDetailsRight
      AlignHorz = ahClient
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = '[B]Anmeldeinformationen[/B]'
      CaptionOptions.Width = 135
      Index = 0
    end
    object laitm_EmailKennwort: TdxLayoutItem
      Parent = lagrp_EmailkonfigurationDetailsRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Kennwort:'
      Control = edt_EmailConfig_Kennwort
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_EmailPosausgangAdress: TdxLayoutItem
      Parent = lagrp_EmailkonfigurationDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Postausgangsserver:'
      CaptionOptions.Width = 110
      Control = edt_EmailConfig_PostAusgangServer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object laitm_EmailPosausgangPort: TdxLayoutItem
      Parent = lagrp_EmailkonfigurationDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Port:'
      Control = edt_EmailConfig_PortAusgang
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object laitm_EmailCheck: TdxLayoutItem
      Parent = lagrp_Emailkonfiguration
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_EmailConfig_Test'
      CaptionOptions.Visible = False
      Control = btn_EmailConfig_Test
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 1025
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object laitm_EmailGrid: TdxLayoutItem
      Parent = lagrp_Emailkonfiguration
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_EmailConfig'
      CaptionOptions.Visible = False
      Control = grd_EmailConfig
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrp_EmailPostfaecherkonfiguration: TdxLayoutGroup
      Parent = lagrp_EMail
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'E-Mail Postf'#228'cher'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 1
    end
    object laitm_EmailPostfaecherkonfigurationBar: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfiguration
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = bardckctrl_Postfach
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_EmailPostfaecherkonfigurationMain: TdxLayoutGroup
      Parent = lagrp_EmailPostfaecherkonfiguration
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hauptpostf'#228'cher'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object laitm_EmailPostfaecherkonfigurationMainGrid: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfigurationMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Postfachmain'
      CaptionOptions.Visible = False
      Control = grd_Postfachmain
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1228
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_EmailPostfaecherkonfigurationMainButtons: TdxLayoutGroup
      Parent = lagrp_EmailPostfaecherkonfigurationMain
      AlignHorz = ahRight
      AlignVert = avTop
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object laitm_EmailPostfaecherkonfigurationMainFirst: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfigurationMainButtons
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_PostfachMainTop'
      CaptionOptions.Visible = False
      Control = btn_PostfachMainTop
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_EmailPostfaecherkonfigurationMainUp: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfigurationMainButtons
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_PostfachMainUp'
      CaptionOptions.Visible = False
      Control = btn_PostfachMainUp
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_EmailPostfaecherkonfigurationMainDown: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfigurationMainButtons
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_PostfachMaindown'
      CaptionOptions.Visible = False
      Control = btn_PostfachMaindown
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_EmailPostfaecherkonfigurationMainLast: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfigurationMainButtons
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_PostfachMainbottom'
      CaptionOptions.Visible = False
      Control = btn_PostfachMainbottom
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lagrp_EmailPostfaecherkonfigurationSub: TdxLayoutGroup
      Parent = lagrp_EmailPostfaecherkonfiguration
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Unterpostf'#228'cher'
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object laitm_EmailPostfaecherkonfigurationSubGrid: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfigurationSub
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_postfachSub'
      CaptionOptions.Visible = False
      Control = grd_postfachSub
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 1228
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_EmailPostfaecherkonfigurationSubButtons: TdxLayoutGroup
      Parent = lagrp_EmailPostfaecherkonfigurationSub
      AlignHorz = ahRight
      AlignVert = avTop
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object laitm_EmailPostfaecherkonfigurationSubFirst: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfigurationSubButtons
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_PostfachSubTop'
      CaptionOptions.Visible = False
      Control = btn_PostfachSubTop
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_EmailPostfaecherkonfigurationSubUp: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfigurationSubButtons
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_PostfachSubUp'
      CaptionOptions.Visible = False
      Control = btn_PostfachSubUp
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_EmailPostfaecherkonfigurationSubDown: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfigurationSubButtons
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_PostfachSubDown'
      CaptionOptions.Visible = False
      Control = btn_PostfachSubDown
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_EmailPostfaecherkonfigurationSubLast: TdxLayoutItem
      Parent = lagrp_EmailPostfaecherkonfigurationSubButtons
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_PostfachSubbottom'
      CaptionOptions.Visible = False
      Control = btn_PostfachSubbottom
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_EmailServer: TdxLayoutLabeledItem
      Parent = lagrp_EmailkonfigurationDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = '[B]Serverinformationen[/B]'
      Index = 0
    end
    object lagrp_Emailkonfiguration: TdxLayoutGroup
      Parent = lagrp_EMail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Emailkonfiguration'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 0
    end
    object lagrp_Feiertage: TdxLayoutGroup
      Parent = lagrp_Kalenders
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Feiertage'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 1
    end
    object lagrp_KalenderDetail: TdxLayoutGroup
      Parent = lagrp_Kalender
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_KalenderDetailLeft: TdxLayoutGroup
      Parent = lagrp_KalenderDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object lagrp_KalenderAnTerminerinnern: TdxLayoutGroup
      Parent = lagrp_KalenderDetailLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lagrp_KalenderDetailRight: TdxLayoutGroup
      Parent = lagrp_KalenderDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 1
    end
    object lagrp_FTPDetailLeft: TdxLayoutGroup
      Parent = lagrp_FTPDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object lagrp_FTPDetailRight: TdxLayoutGroup
      Parent = lagrp_FTPDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object lagrp_FTPDetail: TdxLayoutGroup
      Parent = lagrp_FTP
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_AufgabenartDetail: TdxLayoutGroup
      Parent = lagrp_Aufgabenart
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_PrioDetail: TdxLayoutGroup
      Parent = lagrp_Prio
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_SonstigeDetailLeft: TdxLayoutGroup
      Parent = lagrp_SonstigeBarDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object lagrp_SonstigeDetailRight: TdxLayoutGroup
      Parent = lagrp_SonstigeBarDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 1
    end
    object lagrp_SonstigeBarDetail: TdxLayoutGroup
      Parent = lagrp_Sonstige
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_StundenplanUhrzeitFarbe: TdxLayoutGroup
      Parent = lagrp_StundenplanUhrzeit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_StundenplanFaecherDetail: TdxLayoutGroup
      Parent = lagrp_StundenplanFaecher
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object lagrp_StundenplanFaecherFarbe: TdxLayoutGroup
      Parent = lagrp_StundenplanFaecherDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_EmailkonfigurationDetails: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_EmailkonfigurationDetailsLeft: TdxLayoutGroup
      Parent = lagrp_EmailkonfigurationDetails
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 8
      ShowBorder = False
      Index = 0
    end
    object lagrp_EmailkonfigurationDetailsRight: TdxLayoutGroup
      Parent = lagrp_EmailkonfigurationDetails
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object laitm_EmailConfigTestEin: TdxLayoutLabeledItem
      Parent = lagrp_Emailkonfiguration
      AlignHorz = ahClient
      Index = 3
    end
    object laitm_EmailConfigTestAus: TdxLayoutLabeledItem
      Parent = lagrp_Emailkonfiguration
      AlignHorz = ahClient
      Index = 4
    end
    object lagrp_Contacts: TdxLayoutGroup
      Parent = lactrl_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 11
      CaptionOptions.Text = 'Kontakte'
      Index = 0
    end
    object lagrp_Anrede: TdxLayoutGroup
      Parent = lagrp_Contacts
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Anrede'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 0
    end
    object laitm_AnredeBar: TdxLayoutItem
      Parent = lagrp_Anrede
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = bardckctrl_Anrede
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1137
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_Geburtsland: TdxLayoutGroup
      Parent = lagrp_Contacts
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Geburtsland'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 1
    end
    object laitm_GeburtslandBar: TdxLayoutItem
      Parent = lagrp_Geburtsland
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = bardckctrl_Geburtsland
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1137
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_Phone: TdxLayoutGroup
      Parent = lagrp_Contacts
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Schnittstelle Telefon (PhonerLite)'
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 2
      Index = 2
    end
    object laitm_PhoneBar: TdxLayoutItem
      Parent = lagrp_Phone
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = bardckctrl_Phonerlite
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1137
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_AnredeAnrede: TdxLayoutItem
      Parent = lagrp_Anrede
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Anrede:'
      Control = edt_Anrede
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PhonePhonepath: TdxLayoutItem
      Parent = lagrp_Phone
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pfad Software:'
      Control = edt_Phone
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_GeburtslandLand: TdxLayoutItem
      Parent = lagrp_Geburtsland
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Land:'
      Control = edt_Land
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PhoneGrid: TdxLayoutItem
      Parent = lagrp_Phone
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd_Phonerlite
      ControlOptions.OriginalHeight = 68
      ControlOptions.OriginalWidth = 1065
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_GeburtslandGrid: TdxLayoutItem
      Parent = lagrp_Geburtsland
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid2'
      CaptionOptions.Visible = False
      Control = grd_Geburtsland
      ControlOptions.OriginalHeight = 68
      ControlOptions.OriginalWidth = 1065
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_AnredeGrid: TdxLayoutItem
      Parent = lagrp_Anrede
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid3'
      CaptionOptions.Visible = False
      Control = grd_Anrede
      ControlOptions.OriginalHeight = 68
      ControlOptions.OriginalWidth = 1065
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_EmialAuth: TdxLayoutItem
      Parent = lagrp_EmailkonfigurationDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Authentifizierung:'
      Control = cmbbx_Auth
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object laitm_EmailClientID: TdxLayoutItem
      Parent = lagrp_OauthDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'ClientID:'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_EmailClientSecret: TdxLayoutItem
      Parent = lagrp_OauthDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'ClientSecret:'
      CaptionOptions.Width = 140
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lagrp_Emailkonfiguration
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object lagrp_OauthDetail: TdxLayoutGroup
      Parent = lagrp_EmailkonfigurationDetailsRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'O-Atuth'
      ShowBorder = False
      Index = 3
    end
    object laitm_AuthorizationEndpoint: TdxLayoutItem
      Parent = lagrp_OauthDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'AuthorizationEndpoint:'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_scopes: TdxLayoutItem
      Parent = lagrp_OauthDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Scopes:'
      CaptionOptions.Width = 140
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_AccessTokenEndpoint: TdxLayoutItem
      Parent = lagrp_OauthDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'AccessTokenEndpoint:'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object laitm_EmailBenutzer: TdxLayoutItem
      Parent = lagrp_EmailkonfigurationDetailsRight
      AlignHorz = ahClient
      CaptionOptions.Text = 'Benutzer:'
      Control = edt_EmailConfig_Benutzer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lagrp_EmailkonfigurationDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      Control = lucmbbx_EmailConfig_Kontptyp
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object qry_CalConfig: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID, Kalender,Link,Benutzer,Passwort, Erinnerung, Erinneru' +
        'ngVor,LabelColor,Fontcolor,ID_Benutzer From manager_kalender_kon' +
        'figuration'
      '')
    Left = 42
    Top = 72
  end
  object qry_CalConfigFTP: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID,url,user,passwort,kalendername,ID_Benutzer From manage' +
        'r_kalender_konfiguration_ftp'
      '')
    Left = 130
    Top = 72
  end
  object ds_CalConfig: TDataSource
    DataSet = qry_CalConfig
    Left = 42
    Top = 128
  end
  object ds_CalConfigFTP: TDataSource
    DataSet = qry_CalConfigFTP
    Left = 130
    Top = 128
  end
  object qry_FT1: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'SELECT ID,Jahr,Monat,Tag,Bezeichnung, uebertragen,Datum, ID_Benu' +
        'tzer,Kategorie'
      'FROM manager_Feiertage'
      'ORDER by Datum asc')
    Left = 224
    Top = 72
  end
  object qry_SchulFaecher: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID, Bezeichnung,Farbe,Schriftfarbe, ID_Benutzer'
      'From manager_Stundenplan_Schulfaecher'
      'order by Bezeichnung'
      '')
    Left = 530
    Top = 80
  end
  object qry_SchulFaecher_Config: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Farbe,Schriftfarbe,ID_benutzer'
      'From manager_Stundenplan_Konfiguration'
      '')
    Left = 626
    Top = 80
  end
  object ds_SchulFaecher: TDataSource
    DataSet = qry_SchulFaecher
    Left = 530
    Top = 136
  end
  object ds_SchulFaecher_Config: TDataSource
    DataSet = qry_SchulFaecher_Config
    Left = 626
    Top = 136
  end
  object qry_EmailConfig: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = qry_EmailConfigAfterScroll
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select *'
      'From manager_emailkonfiguration'
      ''
      '')
    Left = 747
    Top = 79
  end
  object ds_EmailConfig: TDataSource
    DataSet = qry_EmailConfig
    Left = 747
    Top = 135
  end
  object brmgr_Config: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 400
    Top = 313
    PixelsPerInch = 96
    object tb_Kalender: TdxBar
      Caption = 'tb_Calendar'
      CaptionButtons = <>
      DockControl = bardckctrl_Kalender
      DockedDockControl = bardckctrl_Kalender
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_CalConfigNew'
        end
        item
          Visible = True
          ItemName = 'btn_CalConfigSave'
        end
        item
          Visible = True
          ItemName = 'btn_CalConfigCancel'
        end
        item
          Visible = True
          ItemName = 'btn_CalConfigDelete'
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
    object tb_Feiertage: TdxBar
      Caption = 'tb_Feiertage'
      CaptionButtons = <>
      DockControl = brdckctrl_Feiertage
      DockedDockControl = brdckctrl_Feiertage
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_CalFTNew'
        end
        item
          Visible = True
          ItemName = 'btn_CalFTDelete'
        end
        item
          Visible = True
          ItemName = 'btn_CalFTinCal'
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
    object tb_FTP: TdxBar
      Caption = 'tb_FTP'
      CaptionButtons = <>
      DockControl = brdckctrl_FTP
      DockedDockControl = brdckctrl_FTP
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_CalConfigFTPNew'
        end
        item
          Visible = True
          ItemName = 'btn_CalConfigFTPSave'
        end
        item
          Visible = True
          ItemName = 'btn_CalConfigFTPCancel'
        end
        item
          Visible = True
          ItemName = 'btn_CalConfigFTPDelete'
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
    object tb_Schulfach: TdxBar
      Caption = 'tb_Schulfach'
      CaptionButtons = <>
      DockControl = brdckctrl_Schulfach
      DockedDockControl = brdckctrl_Schulfach
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_FachNew'
        end
        item
          Visible = True
          ItemName = 'btn_FachSave'
        end
        item
          Visible = True
          ItemName = 'btn_FachCancel'
        end
        item
          Visible = True
          ItemName = 'btn_FachDelete'
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
    object tb_SchulfachUhr: TdxBar
      Caption = 'tb_SchulfachUhrzeit'
      CaptionButtons = <>
      DockControl = brdckctrl_SchulfachUhr
      DockedDockControl = brdckctrl_SchulfachUhr
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_FachUSave'
        end
        item
          Visible = True
          ItemName = 'btn_FachUCancel'
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
    object tb_email: TdxBar
      Caption = 'tb_Email'
      CaptionButtons = <>
      DockControl = brdckctrl_Email
      DockedDockControl = brdckctrl_Email
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_EmailConfigNew'
        end
        item
          Visible = True
          ItemName = 'btn_EmailConfigSave'
        end
        item
          Visible = True
          ItemName = 'btn_EmailConfigCancel'
        end
        item
          Visible = True
          ItemName = 'btn_EmailConfigDelete'
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
    object tb_Postfach: TdxBar
      Caption = 'tb_Postfach'
      CaptionButtons = <>
      DockControl = bardckctrl_Postfach
      DockedDockControl = bardckctrl_Postfach
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_PostfachNew'
        end
        item
          Visible = True
          ItemName = 'btn_PostfachSave'
        end
        item
          Visible = True
          ItemName = 'btn_PostfachCancel'
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
    object tb_Aufgabenarten: TdxBar
      Caption = 'tb_Aufgabenarten'
      CaptionButtons = <>
      DockControl = bardckctrl_Aufgabenarten
      DockedDockControl = bardckctrl_Aufgabenarten
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 999
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AufgabenNew'
        end
        item
          Visible = True
          ItemName = 'btn_AufgabenSave'
        end
        item
          Visible = True
          ItemName = 'btn_AufgabenCancel'
        end
        item
          Visible = True
          ItemName = 'btn_AufgabenDelete'
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
    object tb_AufgabenPrio: TdxBar
      Caption = 'Custom 10'
      CaptionButtons = <>
      DockControl = bardckctrl_AufgabenPrio
      DockedDockControl = bardckctrl_AufgabenPrio
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 999
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AufgabenPrioNew'
        end
        item
          Visible = True
          ItemName = 'btn_AufgabenPrioSave'
        end
        item
          Visible = True
          ItemName = 'btn_AufgabenPrioCancel'
        end
        item
          Visible = True
          ItemName = 'btn_AufgabenPrioDelete'
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
    object tb_AufgabenConfig: TdxBar
      Caption = 'Custom 11'
      CaptionButtons = <>
      DockControl = bardckctrl_AufgabenSonstiges
      DockedDockControl = bardckctrl_AufgabenSonstiges
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1207
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AufgabenOptionenSave'
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
    object tb_KontaktAnrede: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = bardckctrl_Anrede
      DockedDockControl = bardckctrl_Anrede
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_AnredeNew'
        end
        item
          Visible = True
          ItemName = 'btn_AnredeSave'
        end
        item
          Visible = True
          ItemName = 'btn_AnredeCancel'
        end
        item
          Visible = True
          ItemName = 'btn_AnredeDelete'
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
    object tb_KontaktLand: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = bardckctrl_Geburtsland
      DockedDockControl = bardckctrl_Geburtsland
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_LandNew'
        end
        item
          Visible = True
          ItemName = 'btn_LandSave'
        end
        item
          Visible = True
          ItemName = 'btn_LandCancel'
        end
        item
          Visible = True
          ItemName = 'btn_LandDelete'
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
    object tb_KontaktSchnittstelle: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockControl = bardckctrl_Phonerlite
      DockedDockControl = bardckctrl_Phonerlite
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_PhoneSave'
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
    object btn_CalConfigNew: TdxBarLargeButton
      Caption = 'Kalender anlegen'
      Category = 0
      Hint = 'Kalender anlegen'
      Visible = ivAlways
      OnClick = btn_CalConfigNew1Click
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_CalConfigSave: TdxBarLargeButton
      Caption = 'Kalender speichern'
      Category = 0
      Hint = 'Kalender speichern'
      Visible = ivAlways
      OnClick = btn_CalConfigSave1Click
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_CalConfigCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_CalConfigCancel1Click
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_CalConfigDelete: TdxBarLargeButton
      Caption = 'Kalender l'#246'schen'
      Category = 0
      Hint = 'Kalender l'#246'schen'
      Visible = ivAlways
      OnClick = btn_CalConfigDelete1Click
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_CalFTNew: TdxBarLargeButton
      Caption = 'Feiertage anlegen'
      Category = 0
      Hint = 'Feiertage anlegen'
      Visible = ivAlways
      OnClick = btn_CalFTNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_CalFTinCal: TdxBarLargeButton
      Caption = 'Feiertage eintragen'
      Category = 0
      Hint = 'Feiertage eintragen'
      Visible = ivAlways
      OnClick = btn_CalFTinCalClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_CalFTDelete: TdxBarLargeButton
      Caption = 'Feiertage l'#246'schen'
      Category = 0
      Hint = 'Feiertage l'#246'schen'
      Visible = ivAlways
      OnClick = btn_CalFTDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_CalConfigFTPNew: TdxBarLargeButton
      Caption = 'FTP anlegen'
      Category = 0
      Hint = 'FTP anlegen'
      Visible = ivAlways
      OnClick = btn_CalConfigFTPNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_CalConfigFTPDelete: TdxBarLargeButton
      Caption = 'FTP l'#246'schen'
      Category = 0
      Hint = 'FTP l'#246'schen'
      Visible = ivAlways
      OnClick = btn_CalConfigFTPDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_CalConfigFTPCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_CalConfigFTPCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_CalConfigFTPSave: TdxBarLargeButton
      Caption = 'FTP speichern'
      Category = 0
      Hint = 'FTP speichern'
      Visible = ivAlways
      OnClick = btn_CalConfigFTPSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_FachUSave: TdxBarLargeButton
      Caption = 'Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      OnClick = btn_FachUSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_FachUCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_FachUCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_FachNew: TdxBarLargeButton
      Caption = 'Schulfach anlegen'
      Category = 0
      Hint = 'Schulfach anlegen'
      Visible = ivAlways
      OnClick = btn_FachNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_FachDelete: TdxBarLargeButton
      Caption = 'Schulfach l'#246'schen'
      Category = 0
      Hint = 'Schulfach l'#246'schen'
      Visible = ivAlways
      OnClick = btn_FachDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_FachCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_FachCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_FachSave: TdxBarLargeButton
      Caption = 'Schulfach speichern'
      Category = 0
      Hint = 'Schulfach speichern'
      Visible = ivAlways
      OnClick = btn_FachSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_EmailConfigDelete: TdxBarLargeButton
      Caption = 'E-Mail l'#246'schen'
      Category = 0
      Hint = 'E-Mail l'#246'schen'
      Visible = ivAlways
      OnClick = btn_EmailConfigDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_EmailConfigCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_EmailConfigCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_EmailConfigSave: TdxBarLargeButton
      Caption = 'E-Mail speichern'
      Category = 0
      Hint = 'E-Mail speichern'
      Visible = ivAlways
      OnClick = btn_EmailConfigSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_EmailConfigNew: TdxBarLargeButton
      Caption = 'E-Mail anlegen'
      Category = 0
      Hint = 'E-Mail anlegen'
      Visible = ivAlways
      OnClick = btn_EmailConfigNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_PostfachNew: TdxBarLargeButton
      Caption = 'Postf'#228'cher lesen'
      Category = 0
      Hint = 'Postf'#228'cher lesen'
      Visible = ivAlways
      OnClick = btn_PostfachNewClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 125
    end
    object btn_PostfachSave: TdxBarLargeButton
      Caption = 'Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      OnClick = btn_PostfachSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_PostfachCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_PostfachCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_AufgabenNew: TdxBarLargeButton
      Caption = 'Art anlegen'
      Category = 0
      Hint = 'Art anlegen'
      Visible = ivAlways
      OnClick = btn_AufgabenNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_AufgabenCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_AufgabenCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_AufgabenSave: TdxBarLargeButton
      Caption = 'Art speichern'
      Category = 0
      Hint = 'Art speichern'
      Visible = ivAlways
      OnClick = btn_AufgabenSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_AufgabenDelete: TdxBarLargeButton
      Caption = 'Art l'#246'schen'
      Category = 0
      Hint = 'Art l'#246'schen'
      Visible = ivAlways
      OnClick = btn_AufgabenDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_AufgabenPrioNew: TdxBarLargeButton
      Caption = 'Priorit'#228't anlegen'
      Category = 0
      Hint = 'Priorit'#228't anlegen'
      Visible = ivAlways
      OnClick = btn_AufgabenPrioNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_AufgabenPrioSave: TdxBarLargeButton
      Caption = 'Priorit'#228't speichern'
      Category = 0
      Hint = 'Priorit'#228't speichern'
      Visible = ivAlways
      OnClick = btn_AufgabenPrioSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_AufgabenPrioCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_AufgabenPrioCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_AufgabenPrioDelete: TdxBarLargeButton
      Caption = 'Priorit'#228't l'#246'schen'
      Category = 0
      Hint = 'Priorit'#228't l'#246'schen'
      Visible = ivAlways
      OnClick = btn_AufgabenPrioDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_AufgabenOptionenSave: TdxBarLargeButton
      Caption = 'Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      OnClick = btn_AufgabenOptionenSaveClick
      LargeImageIndex = 12
      Width = 125
    end
    object btn_PhoneSave: TdxBarLargeButton
      Caption = 'Pfad speichern'
      Category = 0
      Hint = 'Pfad speichern'
      Visible = ivAlways
      OnClick = btn_PhoneSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_AnredeNew: TdxBarLargeButton
      Caption = 'Anrede anlegen'
      Category = 0
      Hint = 'Anrede anlegen'
      Visible = ivAlways
      OnClick = btn_AnredeNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_LandNew: TdxBarLargeButton
      Caption = 'Land anlegen'
      Category = 0
      Hint = 'Land anlegen'
      Visible = ivAlways
      OnClick = btn_LandNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_AnredeSave: TdxBarLargeButton
      Caption = 'Anrede speichern'
      Category = 0
      Hint = 'Anrede speichern'
      Visible = ivAlways
      OnClick = btn_AnredeSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_AnredeCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_AnredeCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_AnredeDelete: TdxBarLargeButton
      Caption = 'Anrede l'#246'schen'
      Category = 0
      Hint = 'Anrede l'#246'schen'
      Visible = ivAlways
      OnClick = btn_AnredeDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_LandSave: TdxBarLargeButton
      Caption = 'Land speichern'
      Category = 0
      Hint = 'Land speichern'
      Visible = ivAlways
      OnClick = btn_LandSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_LandCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_LandCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_LandDelete: TdxBarLargeButton
      Caption = 'Land l'#246'schen'
      Category = 0
      Hint = 'Land l'#246'schen'
      Visible = ivAlways
      OnClick = btn_LandDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
  end
  object qry_EmailPostfachMain: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = qry_EmailPostfachMainAfterScroll
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'SELECT ID,Postfach,Anzeige,Sortierung, Typ, Parent, Abonnieren, ' +
        'ID_manager_email FROM manager_email_postfach Where Typ = 0'
      '')
    Left = 843
    Top = 87
  end
  object ds_EmailPostfachMain: TDataSource
    DataSet = qry_EmailPostfachMain
    Left = 843
    Top = 135
  end
  object qry_EmailPostfachSub: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'SELECT ID,Postfach,Anzeige,Sortierung, Typ, Parent, Abonnieren, ' +
        'ID_manager_email FROM manager_email_postfach WHERE TYP = 1'
      '')
    Left = 75
    Top = 439
  end
  object ds_EmailPostfachSub: TDataSource
    DataSet = qry_EmailPostfachSub
    Left = 155
    Top = 447
  end
  object IdIMAP_Mail: TIdIMAP4
    Password = 'Jh2019+1'
    Port = 993
    Username = 'Jens.Henske@t-online.de'
    Host = 'imap.t-online.de'
    SASLMechanisms = <>
    MilliSecsToWaitToClearBuffer = 10
    Left = 1000
    Top = 56
  end
  object ds_Aufgabenarten: TDataSource
    DataSet = qry_AufgabenArten
    Left = 282
    Top = 136
  end
  object qry_AufgabenArten: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung, Farbe From manager_aufgaben_arten '
      '')
    Left = 290
    Top = 72
  end
  object qry_prio: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID,Prioritaet,Bezeichnung From manager_aufgaben_Prioritae' +
        'ten '
      '')
    Left = 378
    Top = 80
  end
  object ds_prio: TDataSource
    DataSet = qry_prio
    Left = 378
    Top = 136
  end
  object qry_Konfiguration_Kalender_Optionen: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select Jira_Basic_url,StundenProArbeitstag,Adresse_eigene,Adress' +
        'e_firma,'
      'Adresse_eigeneBL,'
      'Adresse_firmaBL,'
      'Account_Privat,'
      'Account_Geschaeftlich,'
      'ID_Benutzer'
      ''
      'From manager_Kalender_optionen'
      '')
    Left = 442
    Top = 80
  end
  object ds_option: TDataSource
    DataSet = qry_Konfiguration_Kalender_Optionen
    Left = 442
    Top = 136
  end
  object ds_FT: TDataSource
    DataSet = qry_FT1
    Left = 224
    Top = 136
  end
  object qry_Anrede: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From manager_Anrede '
      '')
    Left = 42
    Top = 192
  end
  object ds_Anrede: TDataSource
    DataSet = qry_Anrede
    Left = 42
    Top = 248
  end
  object qry_Land: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From manager_Land '
      '')
    Left = 98
    Top = 208
  end
  object ds_Land: TDataSource
    DataSet = qry_Land
    Left = 98
    Top = 264
  end
  object ds_phone: TDataSource
    DataSet = qry_phone
    Left = 170
    Top = 296
  end
  object qry_phone: TFDQuery
    AfterOpen = SetButtonsEnableVisible
    AfterInsert = SetButtonsEnableVisible
    AfterEdit = SetButtonsEnableVisible
    AfterPost = SetButtonsEnableVisible
    AfterCancel = SetButtonsEnableVisible
    AfterDelete = SetButtonsEnableVisible
    AfterScroll = SetButtonsEnableVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From manager_phone'
      '')
    Left = 162
    Top = 232
  end
  object IdHTTPServer1: TIdHTTPServer
    Bindings = <>
    DefaultPort = 2132
    OnCommandGet = IdHTTPServer1CommandGet
    Left = 1109
    Top = 120
  end
  object IdSSLIOHandlerSocketIMAP: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':143'
    MaxLineAction = maException
    Port = 143
    DefaultPort = 0
    SSLOptions.Method = sslvTLSv1_2
    SSLOptions.SSLVersions = [sslvTLSv1_2]
    SSLOptions.Mode = sslmClient
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 1029
    Top = 354
  end
  object IdSSLIOHandlerSocketSMTP: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Method = sslvTLSv1_2
    SSLOptions.SSLVersions = [sslvTLSv1_2]
    SSLOptions.Mode = sslmClient
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 264
    Top = 396
  end
  object IDSMTP_Mail: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketSMTP
    AuthType = satSASL
    SASLMechanisms = <>
    UseTLS = utUseRequireTLS
    Left = 276
    Top = 672
  end
end
