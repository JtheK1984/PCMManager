object frm_password: Tfrm_password
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_password'
  ClientHeight = 749
  ClientWidth = 1980
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
  object lactrl_PassSerial: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1980
    Height = 749
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    object grd_Passwort: TcxGrid
      Left = 28
      Top = 393
      Width = 1920
      Height = 324
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object tv_Passwort: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_PWD
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
        object tv_PasswortBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 300
        end
        object tv_Passwortlink: TcxGridDBColumn
          Caption = 'Link'
          DataBinding.FieldName = 'link'
          DataBinding.IsNullValueType = True
          Width = 230
        end
        object tv_Passwortuser: TcxGridDBColumn
          Caption = 'Benutzer'
          DataBinding.FieldName = 'user'
          DataBinding.IsNullValueType = True
          Width = 230
        end
        object tv_Passwortpassword: TcxGridDBColumn
          Caption = 'Passwort'
          DataBinding.FieldName = 'password'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.EchoMode = eemPassword
          Width = 230
        end
        object tv_PasswortVPN_SharedSecret: TcxGridDBColumn
          Caption = 'VPN SharedSecret'
          DataBinding.FieldName = 'VPN_SharedSecret'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object tv_PasswortAPP_IP: TcxGridDBColumn
          Caption = 'APP IP-Adresse'
          DataBinding.FieldName = 'APP_IP'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 300
        end
        object tv_PasswortAPP_Port: TcxGridDBColumn
          Caption = 'APP Port'
          DataBinding.FieldName = 'APP_Port'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 70
        end
        object tv_PasswortAPP_Verschluesselung: TcxGridDBColumn
          Caption = 'APP Verschl'#252'sselung'
          DataBinding.FieldName = 'APP_Verschluesselung'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 150
        end
        object tv_PasswortMAIL_Posteingangsserver: TcxGridDBColumn
          Caption = 'E-Mail Posteingangsserver'
          DataBinding.FieldName = 'MAIL_Posteingangsserver'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object tv_PasswortMAIL_PosteingangsPort: TcxGridDBColumn
          Caption = 'E-Mail Posteingang Port'
          DataBinding.FieldName = 'MAIL_PosteingangsPort'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object tv_PasswortMAIL_PosteingangsVerschluesselung: TcxGridDBColumn
          Caption = 'E-Mail Posteingang Verschl'#252'sselung'
          DataBinding.FieldName = 'MAIL_PosteingangsVerschluesselung'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object tv_PasswortMAIL_Postausgangsserver: TcxGridDBColumn
          Caption = 'E-Mail Postausgangsserver'
          DataBinding.FieldName = 'MAIL_Postausgangsserver'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object tv_PasswortMAIL_PostausgangsPort: TcxGridDBColumn
          Caption = 'E-Mail Postausgang Port'
          DataBinding.FieldName = 'MAIL_PostausgangsPort'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object tv_PasswortMAIL_PostausgangsVerschluesselung: TcxGridDBColumn
          Caption = 'E-Mail Postausgang Verschl'#252'sselung'
          DataBinding.FieldName = 'MAIL_PostausgangsVerschluesselung'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object tv_PasswortID_Typ: TcxGridDBColumn
          Caption = 'Passwort Typ'
          DataBinding.FieldName = 'ID_Typ'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dm_PCM.ds_PasswortSerial_PWDTyp
          Width = 150
        end
      end
      object grdlvl_Passwort: TcxGridLevel
        GridView = tv_Passwort
      end
    end
    object cmbbx_PWTyp: TcxDBLookupComboBox
      Left = 141
      Top = 268
      AutoSize = False
      DataBinding.DataField = 'ID_typ'
      DataBinding.DataSource = ds_PWD
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dm_PCM.ds_PasswortSerial_PWDTyp
      Properties.OnEditValueChanged = cmbbx_PWTypPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 5
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 877
    end
    object edt_Passwort_APPPort: TcxDBTextEdit
      Left = 141
      Top = 343
      AutoSize = False
      DataBinding.DataField = 'APP_Port'
      DataBinding.DataSource = ds_PWD
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 12
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 469
    end
    object edt_Passwort_APPSSL: TcxDBTextEdit
      Left = 141
      Top = 368
      AutoSize = False
      DataBinding.DataField = 'APP_Verschluesselung'
      DataBinding.DataSource = ds_PWD
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
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 469
    end
    object edt_Passwort_Benutzer: TcxDBTextEdit
      Left = 141
      Top = 243
      AutoSize = False
      DataBinding.DataField = 'user'
      DataBinding.DataSource = ds_PWD
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
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 877
    end
    object edt_Passwort_Bezeichnung: TcxDBTextEdit
      Left = 141
      Top = 218
      AutoSize = False
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_PWD
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
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 877
    end
    object edt_Passwort_EmailInboxPort: TcxDBTextEdit
      Left = 780
      Top = 343
      AutoSize = False
      DataBinding.DataField = 'MAIL_PosteingangsPort'
      DataBinding.DataSource = ds_PWD
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
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 499
    end
    object edt_Passwort_EmailInboxServer: TcxDBTextEdit
      Left = 780
      Top = 318
      AutoSize = False
      DataBinding.DataField = 'MAIL_Posteingangsserver'
      DataBinding.DataSource = ds_PWD
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
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 499
    end
    object edt_Passwort_EmailInboxSSL: TcxDBTextEdit
      Left = 780
      Top = 368
      AutoSize = False
      DataBinding.DataField = 'MAIL_PosteingangsVerschluesselung'
      DataBinding.DataSource = ds_PWD
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
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 499
    end
    object edt_Passwort_EmailOutboxPort: TcxDBTextEdit
      Left = 1449
      Top = 343
      AutoSize = False
      DataBinding.DataField = 'MAIL_PostausgangsPort'
      DataBinding.DataSource = ds_PWD
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 18
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 499
    end
    object edt_Passwort_EmailOutboxServer: TcxDBTextEdit
      Left = 1449
      Top = 318
      AutoSize = False
      DataBinding.DataField = 'MAIL_Postausgangsserver'
      DataBinding.DataSource = ds_PWD
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 17
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 499
    end
    object edt_Passwort_EmailOutboxSSL: TcxDBTextEdit
      Left = 1449
      Top = 368
      AutoSize = False
      DataBinding.DataField = 'MAIL_PostausgangsVerschluesselung'
      DataBinding.DataSource = ds_PWD
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 19
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 499
    end
    object edt_Passwort_Link: TcxDBTextEdit
      Left = 1123
      Top = 268
      AutoSize = False
      DataBinding.DataField = 'link'
      DataBinding.DataSource = ds_PWD
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
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 825
    end
    object edt_Passwort_VPN: TcxDBTextEdit
      Left = 1123
      Top = 293
      AutoSize = False
      DataBinding.DataField = 'VPN_SharedSecret'
      DataBinding.DataSource = ds_PWD
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
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 825
    end
    object edt_Passwort_VPN_APP: TcxDBTextEdit
      Left = 141
      Top = 318
      AutoSize = False
      DataBinding.DataField = 'APP_IP'
      DataBinding.DataSource = ds_PWD
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
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 469
    end
    object brdckCtrl_Password: TdxBarDockControl
      Left = 28
      Top = 77
      Width = 1920
      Height = 63
      Align = dalNone
      BarManager = brmgr_Passwort
    end
    object grd_Programs: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1920
      Height = 193
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object tv_Programs: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Serial
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
        object tv_ProgramsAPP: TcxGridDBColumn
          Caption = 'Bezeichnung'
          DataBinding.FieldName = 'APP'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 700
        end
        object tv_ProgramsiD_typ: TcxGridDBColumn
          Caption = 'Programmtyp'
          DataBinding.FieldName = 'iD_typ'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dm_PCM.ds_PasswortSerial_SerialTyp
          Width = 200
        end
      end
      object grd_ProgramsDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Serial_keys
        DataController.DetailKeyFieldNames = 'ID_serial'
        DataController.KeyFieldNames = 'ID_serial'
        DataController.MasterKeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object grd_ProgramsDBTableView1USer: TcxGridDBColumn
          DataBinding.FieldName = 'USer'
          DataBinding.IsNullValueType = True
        end
        object grd_ProgramsDBTableView1Serial: TcxGridDBColumn
          DataBinding.FieldName = 'Serial'
          DataBinding.IsNullValueType = True
        end
      end
      object grdlvl_Programs: TcxGridLevel
        GridView = tv_Programs
      end
    end
    object edt_Programs_Bez: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'APP'
      DataBinding.DataSource = ds_Serial
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
      Width = 934
    end
    object lucbx_Programs_Typ: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'iD_typ'
      DataBinding.DataSource = ds_Serial
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dm_PCM.ds_PasswortSerial_SerialTyp
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
      OnExit = btn_SerialSaveClick
      Width = 884
    end
    object brdckCtrl_Programm: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1920
      Height = 63
      Align = dalNone
      BarManager = brmgr_Passwort
      Visible = False
    end
    object grd_SerialDetail: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1920
      Height = 140
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
      object grdDBTblView_SerialDetail: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Serial_keys
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
        object grdDBTblView_SerialDetailUSer: TcxGridDBColumn
          Caption = 'Benutzer'
          DataBinding.FieldName = 'USer'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 500
        end
        object grdDBTblView_SerialDetailSerial: TcxGridDBColumn
          DataBinding.FieldName = 'Serial'
          DataBinding.IsNullValueType = True
          Width = 500
        end
      end
      object grdLvl_SerialDetail: TcxGridLevel
        GridView = grdDBTblView_SerialDetail
      end
    end
    object edt_SerialsBez: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'USer'
      DataBinding.DataSource = ds_Serial_keys
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
      Width = 925
    end
    object edt_SerialsSerial: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Serial'
      DataBinding.DataSource = ds_Serial_keys
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
      OnExit = btn_SerialSSaveClick
      Width = 885
    end
    object brdckCtrl_SerialDetail: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1920
      Height = 63
      Align = dalNone
      BarManager = brmgr_Passwort
      Visible = False
    end
    object edt_Passwort_WLAN: TcxDBTextEdit
      Left = 141
      Top = 293
      AutoSize = False
      DataBinding.DataField = 'WLAN'
      DataBinding.DataSource = ds_PWD
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 6
      OnExit = btn_PasswortSaveClick
      Height = 19
      Width = 877
    end
    object cmbbx_SearchPW: TcxComboBox
      Left = 1051
      Top = 178
      AutoSize = False
      Properties.OnChange = cmbbx_SearchPWPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Height = 25
      Width = 888
    end
    object edt_searchPW: TcxButtonEdit
      Left = 106
      Top = 178
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 26
          Glyph.SourceWidth = 26
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
            3B7D262331333B262331303B2623393B2E5265647B66696C6C3A234431314331
            433B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C75652220
            643D224D31382C32336C2D342E332C342E35632D302E372C302E372D312E392C
            302E372D322E362C306C2D362E362D362E36632D302E372D302E372D302E372D
            312E392C302D322E364C392C31344C31382C32337A222F3E0D0A3C7061746820
            636C6173733D225265642220643D224D32372E352C31332E374C32302C32316C
            2D392D396C372E332D372E3563302E372D302E372C312E392D302E372C322E36
            2C306C362E362C362E364332382E322C31312E382C32382E322C31332C32372E
            352C31332E377A222F3E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_searchPWPropertiesButtonClick
      Properties.OnChange = edt_searchPWPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 25
      Width = 865
    end
    object edt_Passwort_Banking: TcxDBButtonEdit
      Left = 1123
      Top = 243
      DataBinding.DataField = 'BankingPin'
      DataBinding.DataSource = ds_PWD
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 23
          Kind = bkGlyph
        end>
      Properties.EchoMode = eemPassword
      Properties.Images = dm_PCM.imglst_16x16
      Properties.OnButtonClick = edt_Passwort_BankingPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      OnExit = btn_PasswortSaveClick
      Width = 825
    end
    object edt_Passwort_Passwort: TcxDBButtonEdit
      Left = 1123
      Top = 218
      DataBinding.DataField = 'password'
      DataBinding.DataSource = ds_PWD
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 23
          Kind = bkGlyph
        end>
      Properties.EchoMode = eemPassword
      Properties.Images = dm_PCM.imglst_16x16
      Properties.OnButtonClick = edt_Passwort_PasswortPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      OnExit = btn_PasswortSaveClick
      Width = 825
    end
    object edt_SucheSer: TcxButtonEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 26
          Glyph.SourceWidth = 26
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
            3B7D262331333B262331303B2623393B2E5265647B66696C6C3A234431314331
            433B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C75652220
            643D224D31382C32336C2D342E332C342E35632D302E372C302E372D312E392C
            302E372D322E362C306C2D362E362D362E36632D302E372D302E372D302E372D
            312E392C302D322E364C392C31344C31382C32337A222F3E0D0A3C7061746820
            636C6173733D225265642220643D224D32372E352C31332E374C32302C32316C
            2D392D396C372E332D372E3563302E372D302E372C312E392D302E372C322E36
            2C306C362E362C362E364332382E322C31312E382C32382E322C31332C32372E
            352C31332E377A222F3E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_SucheSerPropertiesButtonClick
      Properties.OnChange = edt_SucheSerPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      Visible = False
      Height = 25
      Width = 874
    end
    object cmbbx_serialsTyp: TcxComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.OnChange = cmbbx_serialsTypPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 23
      Visible = False
      Height = 25
      Width = 897
    end
    object lactrl_PassSerialGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lagrp_PassSerialTab: TdxLayoutGroup
      Parent = lactrl_PassSerialGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lagrp_Passwords: TdxLayoutGroup
      Parent = lagrp_PassSerialTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 9
      CaptionOptions.Text = 'Passw'#246'rter'
      Index = 0
    end
    object laitm_PWDBar: TdxLayoutItem
      Parent = lagrp_PasswordsPage
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = brdckCtrl_Password
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1168
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_Serialssuche: TdxLayoutGroup
      Parent = lagrp_SRLProgram
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Passwortdetails'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object laitm_PWDBezeichnung: TdxLayoutItem
      Parent = lagrp_PasswordsDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      Control = edt_Passwort_Bezeichnung
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_PWDLink: TdxLayoutItem
      Parent = lagrp_PasswordsDetailsRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Link:'
      Control = edt_Passwort_Link
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_PWDBenutzer: TdxLayoutItem
      Parent = lagrp_PasswordsDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Benutzer:'
      Control = edt_Passwort_Benutzer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PWDPassword: TdxLayoutItem
      Parent = lagrp_PasswordsDetailsRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Passwort:'
      Control = edt_Passwort_Passwort
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_PWDTyp: TdxLayoutItem
      Parent = lagrp_PasswordsDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Passwort Typ:'
      Control = cmbbx_PWTyp
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_PWDVPNSharedSec: TdxLayoutItem
      Parent = lagrp_PasswordsDetailsRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'VPN Shared Secret:'
      Control = edt_Passwort_VPN
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_PWDAPPVPN: TdxLayoutItem
      Parent = lagrp_PasswordsApp
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'VPN / APP IP-Adresse:'
      Control = edt_Passwort_VPN_APP
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_PWDAPPPort: TdxLayoutItem
      Parent = lagrp_PasswordsApp
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'APP Port:'
      Control = edt_Passwort_APPPort
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PWDAPPSSL: TdxLayoutItem
      Parent = lagrp_PasswordsApp
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'APP Verschl'#252'sselung:'
      Control = edt_Passwort_APPSSL
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_PWDEmailEinServer: TdxLayoutItem
      Parent = lagrp_PasswordsEmailEin
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail Eingang Server:'
      CaptionOptions.Width = 160
      Control = edt_Passwort_EmailInboxServer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_PWDEmailEinPort: TdxLayoutItem
      Parent = lagrp_PasswordsEmailEin
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail Eingang Port:'
      CaptionOptions.Width = 160
      Control = edt_Passwort_EmailInboxPort
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PWDEmailEinSSL: TdxLayoutItem
      Parent = lagrp_PasswordsEmailEin
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail Eingang Verschl'#252'sselung:'
      Control = edt_Passwort_EmailInboxSSL
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_PWDEmailAusServer: TdxLayoutItem
      Parent = lagrp_PasswordsEmailAus
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail Ausgang Server:'
      CaptionOptions.Width = 160
      Control = edt_Passwort_EmailOutboxServer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_PWDEmailAusPort: TdxLayoutItem
      Parent = lagrp_PasswordsEmailAus
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail Ausgang Port:'
      CaptionOptions.Width = 160
      Control = edt_Passwort_EmailOutboxPort
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PWDEmailAusSSL: TdxLayoutItem
      Parent = lagrp_PasswordsEmailAus
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail Ausgang Verschl'#252'sselung:'
      Control = edt_Passwort_EmailOutboxSSL
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_PWDGrid: TdxLayoutItem
      Parent = lagrp_PasswordsPage
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Passwort'
      CaptionOptions.Visible = False
      Control = grd_Passwort
      ControlOptions.OriginalHeight = 466
      ControlOptions.OriginalWidth = 1164
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lagrp_Serials: TdxLayoutGroup
      Parent = lagrp_PassSerialTab
      AlignHorz = ahCenter
      AlignVert = avClient
      CaptionOptions.ImageIndex = 12
      CaptionOptions.Text = 'Serials'
      ShowBorder = False
      Index = 1
    end
    object lagrp_SRLProgram: TdxLayoutGroup
      Parent = lagrp_Serials
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Programme / Spiele / Sonstiges'
      ItemIndex = 1
      Index = 0
    end
    object laitm_SRLProgBar: TdxLayoutItem
      Parent = lagrp_SRLProgram
      CaptionOptions.Text = 'dxBarDockControl2'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Programm
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1164
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SRLBezeichnung: TdxLayoutItem
      Parent = lagrp_SRLProgramDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      Control = edt_Programs_Bez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SRLProgamm: TdxLayoutItem
      Parent = lagrp_SRLProgramDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Typ:'
      Control = lucbx_Programs_Typ
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SRLProgGrid: TdxLayoutItem
      Parent = lagrp_SRLProgram
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Programs'
      CaptionOptions.Visible = False
      Control = grd_Programs
      ControlOptions.OriginalHeight = 286
      ControlOptions.OriginalWidth = 1164
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lagrp_SRLSerial: TdxLayoutGroup
      Parent = lagrp_Serials
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Serials'
      ItemIndex = 1
      Index = 1
    end
    object laitm_SRLSerialBar: TdxLayoutItem
      Parent = lagrp_SRLSerial
      CaptionOptions.Text = 'dxBarDockControl3'
      CaptionOptions.Visible = False
      Control = brdckCtrl_SerialDetail
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1164
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SRLBenutzer: TdxLayoutItem
      Parent = lagrp_SRLSerialDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Benutzer:'
      Control = edt_SerialsBez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SRLSerial: TdxLayoutItem
      Parent = lagrp_SRLSerialDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Serial:'
      Control = edt_SerialsSerial
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SRLSerialGrid: TdxLayoutItem
      Parent = lagrp_SRLSerial
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grd_SerialDetail
      ControlOptions.OriginalHeight = 203
      ControlOptions.OriginalWidth = 1164
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrp_SRLProgramDetail: TdxLayoutGroup
      Parent = lagrp_SRLProgram
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lagrp_SRLSerialDetail: TdxLayoutGroup
      Parent = lagrp_SRLSerial
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_PasswordsDetailsLeft: TdxLayoutGroup
      Parent = lagrp_PasswordsDetails
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object lagrp_PasswordsDetailsRight: TdxLayoutGroup
      Parent = lagrp_PasswordsDetails
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 1
    end
    object lagrp_PasswordsDetails: TdxLayoutGroup
      Parent = lagrp_PasswordsPage
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lagrp_PasswordsDetails1: TdxLayoutGroup
      Parent = lagrp_PasswordsPage
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lagrp_PasswordsApp: TdxLayoutGroup
      Parent = lagrp_PasswordsDetails1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lagrp_PasswordsEmailEin: TdxLayoutGroup
      Parent = lagrp_PasswordsDetails1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 1
    end
    object lagrp_PasswordsEmailAus: TdxLayoutGroup
      Parent = lagrp_PasswordsDetails1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object laitm_PWDBankingPin: TdxLayoutItem
      Parent = lagrp_PasswordsDetailsRight
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Banking-Pin:'
      Control = edt_Passwort_Banking
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PWDWLAN: TdxLayoutItem
      Parent = lagrp_PasswordsDetailsLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'W-Lan:'
      Control = edt_Passwort_WLAN
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lagrp_PWDSearch: TdxLayoutGroup
      Parent = lagrp_PasswordsPage
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Suche'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object laitm_PWDSearchTyp: TdxLayoutItem
      Parent = lagrp_PWDSearch
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Passwort Typ:'
      Control = cmbbx_SearchPW
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PWDSearchBezeichnung: TdxLayoutItem
      Parent = lagrp_PWDSearch
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      Control = edt_searchPW
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_PasswordsPage: TdxLayoutGroup
      Parent = lagrp_Passwords
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Passwortdetails'
      ItemIndex = 4
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lagrp_Serialssuche
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      Control = edt_SucheSer
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 865
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lagrp_Serialssuche
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Serial Typ:'
      Control = cmbbx_serialsTyp
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 888
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object brmgr_Passwort: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    ImageOptions.UseLargeImagesForLargeIcons = True
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 576
    Top = 360
    PixelsPerInch = 96
    object tb_passwort: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = brdckCtrl_Password
      DockedDockControl = brdckCtrl_Password
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1196
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_PasswortNew'
        end
        item
          Visible = True
          ItemName = 'btn_PasswortSave'
        end
        item
          Visible = True
          ItemName = 'btn_PasswortCancel'
        end
        item
          Visible = True
          ItemName = 'btn_PasswortDelete'
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
    object tb_Serials: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = brdckCtrl_Programm
      DockedDockControl = brdckCtrl_Programm
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1196
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_SerialNew'
        end
        item
          Visible = True
          ItemName = 'btn_SerialSave'
        end
        item
          Visible = True
          ItemName = 'btn_SerialCancel'
        end
        item
          Visible = True
          ItemName = 'btn_SerialDelete'
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
    object tb_SerialsDetail: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = brdckCtrl_SerialDetail
      DockedDockControl = brdckCtrl_SerialDetail
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1196
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_SerialSNew'
        end
        item
          Visible = True
          ItemName = 'btn_SerialSSave'
        end
        item
          Visible = True
          ItemName = 'btn_SerialSCancel'
        end
        item
          Visible = True
          ItemName = 'btn_SerialSDelete'
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
    object btn_PasswortNew: TdxBarLargeButton
      Caption = 'Passwort anlegen'
      Category = 0
      Hint = 'Passwort anlegen'
      Visible = ivAlways
      OnClick = btn_PasswortNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_PasswortDelete: TdxBarLargeButton
      Caption = 'Passwort l'#246'schen'
      Category = 0
      Hint = 'Passwort l'#246'schen'
      Visible = ivAlways
      OnClick = btn_PasswortDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_PasswortCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_PasswortCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_PasswortSave: TdxBarLargeButton
      Caption = 'Passwort speichern'
      Category = 0
      Hint = 'Passwort speichern'
      Visible = ivAlways
      OnClick = btn_PasswortSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_SerialNew: TdxBarLargeButton
      Caption = 'Programm anlegen'
      Category = 0
      Hint = 'Programm anlegen'
      Visible = ivAlways
      OnClick = btn_SerialNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_SerialSave: TdxBarLargeButton
      Caption = 'Programm speichern'
      Category = 0
      Hint = 'Programm speichern'
      Visible = ivAlways
      OnClick = btn_SerialSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_SerialCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_SerialCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_SerialDelete: TdxBarLargeButton
      Caption = 'Programm l'#246'schen'
      Category = 0
      Hint = 'Programm l'#246'schen'
      Visible = ivAlways
      OnClick = btn_SerialDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_SerialSNew: TdxBarLargeButton
      Caption = 'Serial anlegen'
      Category = 0
      Hint = 'Serial anlegen'
      Visible = ivAlways
      OnClick = btn_SerialSNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_SerialSSave: TdxBarLargeButton
      Caption = 'Serial speichern'
      Category = 0
      Hint = 'Serial speichern'
      Visible = ivAlways
      OnClick = btn_SerialSSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_SerialSCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_SerialSCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_SerialSDelete: TdxBarLargeButton
      Caption = 'Serial l'#246'schen'
      Category = 0
      Hint = 'Serial l'#246'schen'
      Visible = ivAlways
      OnClick = btn_SerialSDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
  end
  object qry_Serial: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    AfterScroll = qry_SerialAfterScroll
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID, APP,ID_Benutzer, iD_typ From manager_Serials')
    Left = 137
    Top = 181
  end
  object qry_Serial_keys: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    AfterScroll = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,USer,Serial,ID_serial From manager_Serials_keys')
    Left = 205
    Top = 181
  end
  object ds_Serial_keys: TDataSource
    DataSet = qry_Serial_keys
    Left = 206
    Top = 236
  end
  object ds_Serial: TDataSource
    DataSet = qry_Serial
    Left = 136
    Top = 237
  end
  object qry_PWD: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    AfterScroll = qry_PWDAfterScroll
    Filtered = True
    Filter = 'lower(Bezeichnung) like lower('#39'%jen%'#39')'
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From manager_passwoerter'
      '')
    Left = 84
    Top = 181
  end
  object ds_PWD: TDataSource
    DataSet = qry_PWD
    Left = 84
    Top = 237
  end
end
