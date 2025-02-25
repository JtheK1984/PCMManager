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
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1172
    Height = 749
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    object grd_Passwort: TcxGrid
      Left = 31
      Top = 302
      Width = 1106
      Height = 409
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
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
    object btn_Passwort_PasswortShow: TcxButton
      Left = 1114
      Top = 148
      Width = 23
      Height = 23
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 5
      TabStop = False
      OnClick = btn_Passwort_PasswortShowClick
    end
    object cbx_PWTyp: TcxDBLookupComboBox
      Left = 195
      Top = 198
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
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 3
      OnExit = btn_PasswortSaveClick
      Width = 429
    end
    object edt_Passwort_APPPort: TcxDBTextEdit
      Left = 654
      Top = 227
      DataBinding.DataField = 'APP_Port'
      DataBinding.DataSource = dsPWD
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
      Width = 125
    end
    object edt_Passwort_APPSSL: TcxDBTextEdit
      Left = 949
      Top = 227
      DataBinding.DataField = 'APP_Verschluesselung'
      DataBinding.DataSource = dsPWD
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
      Width = 188
    end
    object edt_Passwort_Benutzer: TcxDBTextEdit
      Left = 195
      Top = 173
      DataBinding.DataField = 'user'
      DataBinding.DataSource = dsPWD
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
      OnExit = btn_PasswortSaveClick
      Width = 429
    end
    object edt_Passwort_Bezeichnung: TcxDBTextEdit
      Left = 195
      Top = 148
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = dsPWD
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 1
      OnExit = btn_PasswortSaveClick
      Width = 429
    end
    object edt_Passwort_EmailInboxPort: TcxDBTextEdit
      Left = 654
      Top = 252
      DataBinding.DataField = 'MAIL_PosteingangsPort'
      DataBinding.DataSource = dsPWD
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
      Width = 125
    end
    object edt_Passwort_EmailInboxServer: TcxDBTextEdit
      Left = 195
      Top = 252
      DataBinding.DataField = 'MAIL_Posteingangsserver'
      DataBinding.DataSource = dsPWD
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
      Width = 289
    end
    object edt_Passwort_EmailInboxSSL: TcxDBTextEdit
      Left = 949
      Top = 252
      DataBinding.DataField = 'MAIL_PosteingangsVerschluesselung'
      DataBinding.DataSource = dsPWD
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
      Width = 188
    end
    object edt_Passwort_EmailOutboxPort: TcxDBTextEdit
      Left = 654
      Top = 277
      DataBinding.DataField = 'MAIL_PostausgangsPort'
      DataBinding.DataSource = dsPWD
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
      Width = 125
    end
    object edt_Passwort_EmailOutboxServer: TcxDBTextEdit
      Left = 195
      Top = 277
      DataBinding.DataField = 'MAIL_Postausgangsserver'
      DataBinding.DataSource = dsPWD
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
      Width = 289
    end
    object edt_Passwort_EmailOutboxSSL: TcxDBTextEdit
      Left = 949
      Top = 277
      DataBinding.DataField = 'MAIL_PostausgangsVerschluesselung'
      DataBinding.DataSource = dsPWD
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
      Width = 188
    end
    object edt_Passwort_Link: TcxDBTextEdit
      Left = 729
      Top = 177
      DataBinding.DataField = 'link'
      DataBinding.DataSource = dsPWD
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
      Width = 408
    end
    object edt_Passwort_Passwort: TcxDBTextEdit
      Left = 729
      Top = 148
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
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 4
      OnExit = btn_PasswortSaveClick
      Width = 379
    end
    object edt_Passwort_VPN: TcxDBTextEdit
      Left = 729
      Top = 202
      DataBinding.DataField = 'VPN_SharedSecret'
      DataBinding.DataSource = dsPWD
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 7
      OnExit = btn_PasswortSaveClick
      Width = 408
    end
    object edt_Passwort_VPN_APP: TcxDBTextEdit
      Left = 195
      Top = 227
      DataBinding.DataField = 'APP_IP'
      DataBinding.DataSource = dsPWD
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 8
      OnExit = btn_PasswortSaveClick
      Width = 289
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 22
      Top = 48
      Width = 1124
      Height = 63
      Align = dalNone
      BarManager = brmgr_Passwort
    end
    object grd_Programs: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1106
      Height = 234
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      TabStop = False
      Visible = False
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
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'APP'
      DataBinding.DataSource = dsSerial
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
      Visible = False
      Width = 507
    end
    object lucbx_Programs_Typ: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
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
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 20
      Visible = False
      OnExit = btn_SerialSaveClick
      Width = 497
    end
    object dxBarDockControl2: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1106
      Height = 63
      Align = dalNone
      BarManager = brmgr_Passwort
      Visible = False
    end
    object cxGrid1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1106
      Height = 161
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      TabStop = False
      Visible = False
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
    object edt_SerialsBez: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'USer'
      DataBinding.DataSource = dsSerial_keys
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
      Width = 502
    end
    object edt_SerialsSerial: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Serial'
      DataBinding.DataSource = dsSerial_keys
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
      OnExit = btn_SerialSSaveClick
      Width = 494
    end
    object dxBarDockControl3: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1106
      Height = 63
      Align = dalNone
      BarManager = brmgr_Passwort
      Visible = False
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
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 9
      CaptionOptions.Text = 'Passw'#246'rter'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1168
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Passwortdetails'
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      Control = edt_Passwort_Bezeichnung
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'Link:'
      Control = edt_Passwort_Link
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 375
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Benutzer:'
      Control = edt_Passwort_Benutzer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Passwort:'
      Control = edt_Passwort_Passwort
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 346
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'btn_Passwort_PasswortShow'
      CaptionOptions.Visible = False
      Control = btn_Passwort_PasswortShow
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 23
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Passwort Typ:'
      Control = cbx_PWTyp
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'VPN Shared Secret:'
      Control = edt_Passwort_VPN
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 375
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'VPN / APP IP-Adresse:'
      CaptionOptions.Width = 160
      Control = edt_Passwort_VPN_APP
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'APP Port:'
      CaptionOptions.Width = 160
      Control = edt_Passwort_APPPort
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'APP Verschl'#252'sselung:'
      CaptionOptions.Width = 160
      Control = edt_Passwort_APPSSL
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup19
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
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup19
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
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail Eingang Verschl'#252'sselung:'
      CaptionOptions.Width = 160
      Control = edt_Passwort_EmailInboxSSL
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup20
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
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup20
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
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail Ausgang Verschl'#252'sselung:'
      CaptionOptions.Width = 160
      Control = edt_Passwort_EmailOutboxSSL
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 157
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Passwort'
      CaptionOptions.Visible = False
      Control = grd_Passwort
      ControlOptions.OriginalHeight = 466
      ControlOptions.OriginalWidth = 1164
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 12
      CaptionOptions.Text = 'Serials'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Programme / Spiele / Sonstiges'
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'dxBarDockControl2'
      CaptionOptions.Visible = False
      Control = dxBarDockControl2
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1164
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      Control = edt_Programs_Bez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Typ:'
      Control = lucbx_Programs_Typ
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Programs'
      CaptionOptions.Visible = False
      Control = grd_Programs
      ControlOptions.OriginalHeight = 286
      ControlOptions.OriginalWidth = 1164
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Serials'
      ItemIndex = 2
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'dxBarDockControl3'
      CaptionOptions.Visible = False
      Control = dxBarDockControl3
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1164
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Benutzer:'
      Control = edt_SerialsBez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Serial:'
      Control = edt_SerialsSerial
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 203
      ControlOptions.OriginalWidth = 1164
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup21
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
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
    Style = bmsUseLookAndFeel
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
