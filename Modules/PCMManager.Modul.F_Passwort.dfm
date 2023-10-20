object frm_password: Tfrm_password
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_password'
  ClientHeight = 749
  ClientWidth = 1172
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  OnShow = FormShow
  TextHeight = 13
  object pnl_Design: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 749
    Width = 1172
    object pc_passwoerter: TcxPageControl
      Left = 2
      Top = 2
      Width = 1168
      Height = 749
      Align = alTop
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = ts_A_PW
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea]
      Properties.TabSlants.Kind = skCutCorner
      Properties.TabWidth = 100
      OnClick = pc_passwoerterClick
      ClientRectBottom = 745
      ClientRectLeft = 4
      ClientRectRight = 1164
      ClientRectTop = 25
      object ts_A_PW: TcxTabSheet
        Caption = 'Passw'#246'rter'
        ImageIndex = 9
        object grpbx_Passwort: TcxGroupBox
          Left = 0
          Top = 58
          Align = alClient
          Caption = 'Passwortdetails'
          TabOrder = 0
          Height = 662
          Width = 1160
          object grd_Passwort: TcxGrid
            Left = 2
            Top = 194
            Width = 1156
            Height = 466
            Align = alClient
            BevelInner = bvLowered
            BevelKind = bkFlat
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = False
            LockedStateImageOptions.Effect = lsieDark
            object tv_Passwort: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dsPWD
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
            end
            object grdlvl_Passwort: TcxGridLevel
              GridView = tv_Passwort
            end
          end
          object pnl_Passwort: TcxGroupBox
            Left = 2
            Top = 18
            Align = alTop
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 1
            Height = 176
            Width = 1156
            object lbl_Passwort_Benutzer: TcxLabel
              Left = 8
              Top = 38
              Caption = 'Benutzer:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_Bezeichnung: TcxLabel
              Left = 8
              Top = 11
              Caption = 'Bezeichnung:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_Link: TcxLabel
              Left = 554
              Top = 11
              Caption = 'Link:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_Passwort: TcxLabel
              Left = 554
              Top = 38
              Caption = 'Passwort:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_EmailInboxPort: TcxLabel
              Left = 434
              Top = 119
              Caption = 'E-Mail Eingang Port:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_EmailInboxSSL: TcxLabel
              Left = 706
              Top = 119
              Caption = 'E-Mail Eingang Verschl'#252'sselung:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_EmailOutboxPort: TcxLabel
              Left = 434
              Top = 147
              Caption = 'E-Mail Ausgang Port:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_VPN: TcxLabel
              Left = 554
              Top = 65
              Caption = 'VPN Shared Secret:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object btn_Passwort_PasswortShow: TcxButton
              Left = 1040
              Top = 34
              Width = 23
              Height = 23
              OptionsImage.ImageIndex = 23
              OptionsImage.Images = dm_PCM.imglst_16x16
              TabOrder = 23
              TabStop = False
              OnClick = btn_Passwort_PasswortShowClick
            end
            object cbx_PWTyp: TcxDBLookupComboBox
              Left = 130
              Top = 62
              DataBinding.DataField = 'ID_typ'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dm_PCM.ds_PasswortSerial_PWDTyp
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              OnExit = btn_PasswortSaveClick
              Width = 400
            end
            object edt_Passwort_APPPort: TcxDBTextEdit
              Left = 554
              Top = 89
              DataBinding.DataField = 'APP_Port'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              OnExit = btn_PasswortSaveClick
              Width = 100
            end
            object edt_Passwort_APPSSL: TcxDBTextEdit
              Left = 871
              Top = 89
              DataBinding.DataField = 'APP_Verschluesselung'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 8
              OnExit = btn_PasswortSaveClick
              Width = 192
            end
            object edt_Passwort_Benutzer: TcxDBTextEdit
              Left = 130
              Top = 35
              DataBinding.DataField = 'user'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              OnExit = btn_PasswortSaveClick
              Width = 400
            end
            object edt_Passwort_Bezeichnung: TcxDBTextEdit
              Left = 130
              Top = 8
              DataBinding.DataField = 'Bezeichnung'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = btn_PasswortSaveClick
              Width = 400
            end
            object edt_Passwort_EmailInboxPort: TcxDBTextEdit
              Left = 554
              Top = 116
              DataBinding.DataField = 'MAIL_PosteingangsPort'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 10
              OnExit = btn_PasswortSaveClick
              Width = 100
            end
            object edt_Passwort_EmailInboxServer: TcxDBTextEdit
              Left = 130
              Top = 116
              DataBinding.DataField = 'MAIL_Posteingangsserver'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 9
              OnExit = btn_PasswortSaveClick
              Width = 250
            end
            object edt_Passwort_EmailInboxSSL: TcxDBTextEdit
              Left = 871
              Top = 116
              DataBinding.DataField = 'MAIL_PosteingangsVerschluesselung'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 11
              OnExit = btn_PasswortSaveClick
              Width = 192
            end
            object edt_Passwort_EmailOutboxPort: TcxDBTextEdit
              Left = 554
              Top = 143
              DataBinding.DataField = 'MAIL_PostausgangsPort'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 13
              OnExit = btn_PasswortSaveClick
              Width = 100
            end
            object edt_Passwort_EmailOutboxServer: TcxDBTextEdit
              Left = 130
              Top = 143
              DataBinding.DataField = 'MAIL_Postausgangsserver'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 12
              OnExit = btn_PasswortSaveClick
              Width = 250
            end
            object edt_Passwort_EmailOutboxSSL: TcxDBTextEdit
              Left = 871
              Top = 143
              DataBinding.DataField = 'MAIL_PostausgangsVerschluesselung'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 14
              OnExit = btn_PasswortSaveClick
              Width = 192
            end
            object edt_Passwort_Link: TcxDBTextEdit
              Left = 613
              Top = 8
              DataBinding.DataField = 'link'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              OnExit = btn_PasswortSaveClick
              Width = 450
            end
            object edt_Passwort_Passwort: TcxDBTextEdit
              Left = 613
              Top = 35
              DataBinding.DataField = 'password'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Properties.EchoMode = eemPassword
              Properties.PasswordChar = '*'
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              OnExit = btn_PasswortSaveClick
              Width = 427
            end
            object edt_Passwort_VPN: TcxDBTextEdit
              Left = 653
              Top = 62
              DataBinding.DataField = 'VPN_SharedSecret'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              OnExit = btn_PasswortSaveClick
              Width = 410
            end
            object edt_Passwort_VPN_APP: TcxDBTextEdit
              Left = 130
              Top = 89
              DataBinding.DataField = 'APP_IP'
              DataBinding.DataSource = dsPWD
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              OnExit = btn_PasswortSaveClick
              Width = 250
            end
            object lbl_Passwort_EmailOutboxSSL: TcxLabel
              Left = 706
              Top = 146
              Caption = 'E-Mail Ausgang Verschl'#252'sselung:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_PWTyp: TcxLabel
              Left = 8
              Top = 65
              Caption = 'Passwort Typ:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_VPN_APP: TcxLabel
              Left = 8
              Top = 93
              Caption = 'VPN / APP IP-Adresse:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_APPPort: TcxLabel
              Left = 434
              Top = 92
              Caption = 'APP Port:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_APPSSL: TcxLabel
              Left = 706
              Top = 92
              Caption = 'APP Verschl'#252'sselung:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_EmailInboxServer: TcxLabel
              Left = 8
              Top = 119
              Caption = 'E-Mail Eingang Server:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Passwort_EmailOutboxServer: TcxLabel
              Left = 8
              Top = 147
              Caption = 'E-Mail Ausgang Server:'
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
        object dxBarDockControl1: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1160
          Height = 58
          Align = dalTop
          BarManager = brmgr_Passwort
        end
      end
      object ts_B_Serials1: TcxTabSheet
        Caption = 'Serials'
        ImageIndex = 12
        object grpbx_Programs: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = 'Programme / Spiele / Sonstiges'
          TabOrder = 0
          Height = 406
          Width = 1160
          object grd_Programs: TcxGrid
            Left = 2
            Top = 118
            Width = 1156
            Height = 286
            Align = alBottom
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
            TabStop = False
            LockedStateImageOptions.Effect = lsieDark
            object tv_Programs: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dsSerial
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
              DataController.DataSource = dsSerial_keys
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
            Left = 78
            Top = 87
            DataBinding.DataField = 'APP'
            DataBinding.DataSource = dsSerial
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 523
          end
          object lucbx_Programs_Typ: TcxDBLookupComboBox
            Left = 673
            Top = 87
            DataBinding.DataField = 'iD_typ'
            DataBinding.DataSource = dsSerial
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
            Style.IsFontAssigned = True
            TabOrder = 1
            OnExit = btn_SerialSaveClick
            Width = 390
          end
          object lbl_Programs_Bez: TcxLabel
            Left = 8
            Top = 88
            Caption = 'Bezeichnung:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object lbl_Programs_Typ: TcxLabel
            Left = 641
            Top = 88
            Caption = 'Typ:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object dxBarDockControl2: TdxBarDockControl
            Left = 2
            Top = 18
            Width = 1156
            Height = 58
            Align = dalTop
            BarManager = brmgr_Passwort
          end
        end
        object grpbx_Serials: TcxGroupBox
          Left = 0
          Top = 406
          Align = alClient
          Caption = 'Serials'
          TabOrder = 1
          Height = 314
          Width = 1160
          object cxGrid1: TcxGrid
            Left = 2
            Top = 109
            Width = 1156
            Height = 203
            Align = alClient
            BevelInner = bvLowered
            BevelKind = bkFlat
            BorderStyle = cxcbsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = False
            LockedStateImageOptions.Effect = lsieDark
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              FilterBox.CustomizeDialog = False
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dsSerial_keys
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
              object cxGridDBTableView1USer: TcxGridDBColumn
                Caption = 'Benutzer'
                DataBinding.FieldName = 'USer'
                DataBinding.IsNullValueType = True
                SortIndex = 0
                SortOrder = soAscending
                Width = 500
              end
              object cxGridDBTableView1Serial: TcxGridDBColumn
                DataBinding.FieldName = 'Serial'
                DataBinding.IsNullValueType = True
                Width = 500
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object cxGroupBox1: TcxGroupBox
            Left = 2
            Top = 76
            Align = alTop
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 1
            Height = 33
            Width = 1156
            object edt_SerialsBez: TcxDBTextEdit
              Left = 78
              Top = 8
              DataBinding.DataField = 'USer'
              DataBinding.DataSource = dsSerial_keys
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              Width = 523
            end
            object edt_SerialsSerial: TcxDBTextEdit
              Left = 673
              Top = 8
              DataBinding.DataField = 'Serial'
              DataBinding.DataSource = dsSerial_keys
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              OnExit = btn_SerialSSaveClick
              Width = 390
            end
            object Label3: TcxLabel
              Left = 8
              Top = 9
              Caption = 'Benutzer:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object Label4: TcxLabel
              Left = 638
              Top = 9
              Caption = 'Serial:'
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
          object dxBarDockControl3: TdxBarDockControl
            Left = 2
            Top = 18
            Width = 1156
            Height = 58
            Align = dalTop
            BarManager = brmgr_Passwort
          end
        end
      end
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 576
    Top = 360
    PixelsPerInch = 96
    object tb_passwort: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
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
    object dxBarManager1Bar2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
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
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = dxBarDockControl3
      DockedDockControl = dxBarDockControl3
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
      Caption = 'Passwort a&nlegen'
      Category = 0
      Hint = 'Passwort anlegen'
      Visible = ivAlways
      OnClick = btn_PasswortNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_PasswortDelete: TdxBarLargeButton
      Caption = 'Passwort &l'#246'schen'
      Category = 0
      Hint = 'Passwort l'#246'schen'
      Visible = ivAlways
      OnClick = btn_PasswortDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_PasswortCancel: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_PasswortCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_PasswortSave: TdxBarLargeButton
      Caption = 'Passwort &speichern'
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
      Caption = '&Abbrechen'
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
      Caption = 'Serial a&nlegen'
      Category = 0
      Hint = 'Serial anlegen'
      Visible = ivAlways
      OnClick = btn_SerialSNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_SerialSSave: TdxBarLargeButton
      Caption = 'Serial &speichern'
      Category = 0
      Hint = 'Serial speichern'
      Visible = ivAlways
      OnClick = btn_SerialSSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_SerialSCancel: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_SerialSCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_SerialSDelete: TdxBarLargeButton
      Caption = 'Serial &l'#246'schen'
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
  object dsSerial_keys: TDataSource
    DataSet = qry_Serial_keys
    Left = 206
    Top = 236
  end
  object dsSerial: TDataSource
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
    AfterScroll = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID, Bezeichnung,user,password,link,ID_benutzer,'
      'VPN_SharedSecret,'
      'APP_IP,APP_Port,APP_Verschluesselung,'
      
        'MAIL_Posteingangsserver,MAIL_PosteingangsPort,MAIL_PosteingangsV' +
        'erschluesselung,'
      
        'MAIL_Postausgangsserver,MAIL_PostausgangsPort,MAIL_PostausgangsV' +
        'erschluesselung,ID_typ'
      'From manager_passwoerter'
      '')
    Left = 84
    Top = 181
  end
  object dsPWD: TDataSource
    DataSet = qry_PWD
    Left = 84
    Top = 237
  end
end
