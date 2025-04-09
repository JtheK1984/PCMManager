object frm_Calendar: Tfrm_Calendar
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frm_Calendar'
  ClientHeight = 940
  ClientWidth = 1999
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object lactrl_Kalender: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1999
    Height = 940
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    ExplicitWidth = 1070
    object brdckctrl_Kalender: TdxBarDockControl
      Left = 19
      Top = 45
      Width = 1957
      Height = 63
      Align = dalNone
      BarManager = brmgr_Kalendar
    end
    object sched_Kalender: TcxScheduler
      Left = 19
      Top = 114
      Width = 1957
      Height = 803
      DateNavigator.RowCount = 6
      ViewDay.Active = True
      ViewDay.AlwaysShowEventTime = True
      ViewDay.TimeRulerMinutes = True
      ViewDay.WorkTimeOnly = True
      OnCustomDrawDayHeader = sched_KalenderCustomDrawDayHeader
      OnCustomDrawEvent = sched_KalenderCustomDrawEvent
      ContentPopupMenu.PopupMenu = brpmm_ContextCalender
      ContentPopupMenu.UseBuiltInPopupMenu = False
      ControlBox.Visible = False
      EventOperations.Deleting = False
      EventOperations.DialogEditing = False
      EventOperations.DialogShowing = False
      EventOperations.InplaceEditing = False
      EventOperations.MovingBetweenResources = False
      EventPopupMenu.PopupMenu = brpmm_EventCalender
      EventPopupMenu.UseBuiltInPopupMenu = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      OptionsView.DayBorderColor = clActiveBorder
      OptionsView.EventBorderColor = cl3DDkShadow
      OptionsView.GroupingKind = gkByResource
      OptionsView.ResourcesPerPage = 5
      OptionsView.WorkStart = 0.291666666666666700
      OptionsView.WorkFinish = 0.833333333333333400
      ResourceNavigator.Buttons.First.Visible = False
      ResourceNavigator.Buttons.Last.Visible = False
      ResourceNavigator.Buttons.ShowFewerResources.Visible = False
      ResourceNavigator.Buttons.ShowMoreResources.Visible = False
      ResourceNavigator.ShowButtons = False
      ResourceNavigator.Visibility = snvNever
      Storage = schedDBStrg_Kalender
      TabOrder = 1
      OnBeforeDragEvent = sched_KalenderBeforeDragEvent
      OnBeforeSizingEvent = sched_KalenderBeforeSizingEvent
      OnClick = sched_KalenderClick
      OnDblClick = sched_KalenderDblClick
      OnGetEventModernStyleHintInfo = sched_KalenderGetEventModernStyleHintInfo
      OnKeyDown = sched_KalenderKeyDown
      Selection = 7
      Splitters = {
        950000007E000000840600008300000010070000010000001507000022030000}
      StoredClientBounds = {0100000001000000A407000022030000}
    end
    object trlst_Aufgaben: TcxTreeList
      Left = 10000
      Top = 10000
      Width = 1022
      Height = 107
      Bands = <
        item
        end>
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 2
      Visible = False
      OnClick = trlst_AufgabenClick
      Data = {
        00000500430100000F00000044617461436F6E74726F6C6C6572310200000012
        000000546378537472696E6756616C7565547970651200000054637853747269
        6E6756616C75655479706504000000445855464D5400000400000041006C006C
        00650001445855464D540000070000005400650072006D0069006E0065000001
        0000003000445855464D5400000800000041007500660067006100620065006E
        0000010000003000445855464D5400000B0000004E0061006300680072006900
        63006800740065006E00000100000030000400000000000000080A0200000002
        000000FFFFFFFFFFFFFFFFFFFFFFFF0100000008080400000004000000FFFFFF
        FFFFFFFFFFFFFFFFFF0200000008080300000003000000FFFFFFFFFFFFFFFFFF
        FFFFFF03000000080A0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF1A0804
        000000}
      object cxTreeList1Column1: TcxTreeListColumn
        Caption.Text = 'Aufgaben'
        Options.Sizing = False
        Options.VertSizing = False
        Options.Editing = False
        Options.TabStop = False
        Width = 801
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxTreeList1Column2: TcxTreeListColumn
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object brdckctrl_Aufgaben: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1022
      Height = 117
      Align = dalNone
      BarManager = brmgr_Kalendar
      Visible = False
    end
    object cxGrid1: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1022
      Height = 299
      TabOrder = 6
      Visible = False
      LookAndFeel.NativeStyle = False
      object tvNachrichten: TcxGridDBTableView
        OnDblClick = tvNachrichtenDblClick
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = tvNachrichtenCustomDrawCell
        OnFocusedRecordChanged = tvNachrichtenFocusedRecordChanged
        DataController.DataSource = dm_PCM.ds_Kalender_Aufgaben
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Filter.Active = True
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object tvNachrichtenID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object tvNachrichtenTyp: TcxGridDBColumn
          DataBinding.FieldName = 'Typ'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'Aufgabe'
              ImageIndex = 2
              Value = 1
            end
            item
              Description = 'Nachricht'
              ImageIndex = 1
              Value = 0
            end
            item
              Description = 'Termin'
              ImageIndex = 3
              Value = 2
            end>
          Width = 86
        end
        object tvNachrichtenStatus: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          Width = 86
        end
        object tvNachrichtenCaption: TcxGridDBColumn
          Caption = 'Betreff'
          DataBinding.FieldName = 'Caption'
          Width = 250
        end
        object tvNachrichtenID_ADR_Wurzel: TcxGridDBColumn
          Caption = 'Adresse'
          DataBinding.FieldName = 'ID_Ansprechpartner'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = dm_PCM.ds_Config_Firmen
          Width = 250
        end
        object tvNachrichtenID_Ansprechpartner: TcxGridDBColumn
          Caption = 'Ansprechpartner'
          DataBinding.FieldName = 'ID_Ansprechpartner'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = dm_PCM.ds_Config_Ansprechpartner
          Width = 250
        end
        object tvNachrichtenLocation: TcxGridDBColumn
          DataBinding.FieldName = 'Location'
          Width = 200
        end
        object tvNachrichtenGesendetAm: TcxGridDBColumn
          DataBinding.FieldName = 'GesendetAm'
          SortIndex = 0
          SortOrder = soDescending
        end
        object tvNachrichtenGelesenAm: TcxGridDBColumn
          DataBinding.FieldName = 'GelesenAm'
        end
        object tvNachrichtenJira_Ticket: TcxGridDBColumn
          DataBinding.FieldName = 'Jira_Ticket'
          Visible = False
        end
      end
      object tvAuf: TcxGridDBTableView
        OnDblClick = tvAufDblClick
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = tvAufCustomDrawCell
        OnFocusedRecordChanged = tvAufFocusedRecordChanged
        DataController.DataSource = dm_PCM.ds_Kalender_Aufgaben
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object tvAufID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object tvAufStatus: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          Options.Sorting = False
          Width = 70
        end
        object tvAufTyp: TcxGridDBColumn
          DataBinding.FieldName = 'Typ'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'Nachricht'
              ImageIndex = 1
              Value = 0
            end
            item
              Description = 'Aufgabe'
              ImageIndex = 2
              Value = 1
            end
            item
              Description = 'Termin'
              ImageIndex = 3
              Value = 2
            end>
          Options.Sorting = False
          Width = 86
        end
        object tvAufStartdatum: TcxGridDBColumn
          Caption = 'Start Datum'
          DataBinding.FieldName = 'Startdatum'
          Options.Sorting = False
          Width = 80
        end
        object tvAufStartZeit: TcxGridDBColumn
          Caption = 'Start Uhrzeit'
          DataBinding.FieldName = 'StartZeit'
          Options.Sorting = False
          Width = 80
        end
        object tvAufEndedatum: TcxGridDBColumn
          Caption = 'Ende Datum'
          DataBinding.FieldName = 'Endedatum'
          SortIndex = 0
          SortOrder = soAscending
          Width = 80
        end
        object tvAufEndeZeit: TcxGridDBColumn
          Caption = 'Ende Uhrzeit'
          DataBinding.FieldName = 'EndeZeit'
          SortIndex = 1
          SortOrder = soAscending
          Width = 80
        end
        object tvAufInTagen: TcxGridDBColumn
          Caption = 'In Tagen'
          DataBinding.FieldName = 'InTagen'
          Options.Sorting = False
          Width = 60
        end
        object tvAufID_IC_AufgabenArten: TcxGridDBColumn
          Caption = 'Art'
          DataBinding.FieldName = 'ID_IC_AufgabenArten'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dm_PCM.ds_KalenderAufgaben_Arten
          Options.Sorting = False
          Width = 100
        end
        object tvAufCaption: TcxGridDBColumn
          Caption = 'Betreff'
          DataBinding.FieldName = 'Caption'
          Options.Sorting = False
          Width = 250
        end
        object tvAufID_ADR_Wurzel: TcxGridDBColumn
          Caption = 'Adresse'
          DataBinding.FieldName = 'ID_Ansprechpartner'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = dm_PCM.ds_Config_Firmen
          Options.Sorting = False
          Width = 200
        end
        object tvAufID_Ansprechpartner: TcxGridDBColumn
          Caption = 'Ansprechpartner'
          DataBinding.FieldName = 'ID_Ansprechpartner'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = dm_PCM.ds_Kalender_Ansprechpartner
          Options.Sorting = False
          Width = 200
        end
        object tvAufAufgabenDauer: TcxGridDBColumn
          Caption = 'Dauer'
          DataBinding.FieldName = 'AufgabenDauer'
          Options.Sorting = False
          Width = 60
        end
        object tvAufID_IC_Prioritaeten: TcxGridDBColumn
          Caption = 'Priorit'#228't'
          DataBinding.FieldName = 'ID_IC_Prioritaeten'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dm_PCM.ds_KalenderAufgaben_Prio
          Options.Sorting = False
          Width = 100
        end
        object tvAufLocation: TcxGridDBColumn
          Caption = 'Ort'
          DataBinding.FieldName = 'Location'
          Options.Sorting = False
          Width = 100
        end
        object tvAufJira_Ticket: TcxGridDBColumn
          Caption = 'Jira Ticket'
          DataBinding.FieldName = 'Jira_Ticket'
          Visible = False
          Width = 200
        end
        object tvAufGesendetAm: TcxGridDBColumn
          Caption = 'Gesendet am'
          DataBinding.FieldName = 'GesendetAm'
          Visible = False
          Width = 120
        end
        object tvAufStart: TcxGridDBColumn
          DataBinding.FieldName = 'Start'
          Visible = False
          VisibleForCustomization = False
        end
        object tvAufFinish: TcxGridDBColumn
          DataBinding.FieldName = 'Finish'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvNachrichten
      end
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabStop = False
      DataBinding.DataField = 'Caption'
      DataBinding.DataSource = dm_PCM.ds_Kalender_Aufgaben
      ParentFont = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Visible = False
      Width = 437
    end
    object btn_GoToJira: TcxButton
      Left = 10000
      Top = 10000
      Width = 25
      Height = 21
      OptionsImage.ImageIndex = 47
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 11
      Visible = False
      OnClick = btn_GoToJiraClick
    end
    object edtJiraTicketNr: TcxDBTextEdit
      Left = 10000
      Top = 10000
      TabStop = False
      DataBinding.DataField = 'Jira_Ticket'
      DataBinding.DataSource = dm_PCM.ds_Kalender_Aufgaben
      ParentFont = False
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Visible = False
      Width = 410
    end
    object cxDBTextEdit4: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      TabStop = False
      DataBinding.DataField = 'ID_Ansprechpartner'
      DataBinding.DataSource = dm_PCM.ds_Kalender_Aufgaben
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListSource = dm_PCM.ds_Kalender_Ansprechpartner
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Visible = False
      Width = 437
    end
    object cbxAns: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      TabStop = False
      DataBinding.DataField = 'ID_Ansprechpartner'
      DataBinding.DataSource = dm_PCM.ds_Kalender_Aufgaben
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListSource = dm_PCM.ds_Kalender_Ansprechpartner
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Visible = False
      Width = 441
    end
    object cxDBMemo1: TcxDBRichEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Message'
      DataBinding.DataSource = dm_PCM.ds_Kalender_Aufgaben
      ParentFont = False
      Properties.AutoURLDetect = True
      Properties.PlainText = True
      Properties.ScrollBars = ssVertical
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 12
      Visible = False
      Height = 239
      Width = 840
    end
    object cxGrid5: TcxGrid
      Left = 10000
      Top = 10000
      Width = 176
      Height = 201
      TabOrder = 13
      Visible = False
      LookAndFeel.NativeStyle = False
      object cxGrid5DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsWF_Nachrichten_Anhaenge
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object cxGrid5DBTableView1ID: TcxGridDBColumn
          Tag = 314104256
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object cxGrid5DBTableView1ID_Adr_Korrespondenz: TcxGridDBColumn
          Tag = 313686204
          DataBinding.FieldName = 'ID_WF_Nachrichten'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object cxGrid5DBTableView1Dateiname: TcxGridDBColumn
          Tag = 315388828
          DataBinding.FieldName = 'Dateiname'
          SortIndex = 0
          SortOrder = soAscending
          Width = 139
        end
        object cxGrid5DBTableView1DateinameSave: TcxGridDBColumn
          Tag = 315389660
          DataBinding.FieldName = 'DateinameSave'
          Visible = False
        end
      end
      object cxGrid5Level1: TcxGridLevel
        GridView = cxGrid5DBTableView1
      end
    end
    object Image1: TcxImage
      Left = 10000
      Top = 10000
      Properties.FitMode = ifmNormal
      Properties.GraphicTransparency = gtTransparent
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Transparent = True
      Visible = False
      Height = 32
      Width = 32
    end
    object btn_AttachementSave: TcxButton
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Width = 23
      Height = 24
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      OptionsImage.ImageIndex = 27
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 16
      Visible = False
      OnClick = btn_AttachementSaveClick
    end
    object btn_AttachementOpen: TcxButton
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Width = 23
      Height = 24
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 26
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 15
      Visible = False
      OnClick = btn_AttachementOpenClick
    end
    object img_search: TcxImage
      Left = 10000
      Top = 10000
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
        0000001008060000001FF3FF61000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000F249444154384FAD913B0E01611485514A1422
        9158C08CA15348547A56A0B1825984D882566509A8D5742A4A5A0B9028F94E72
        88F889479CE4CBCCBDE73E2677327F5514451D58C0114EB0847ED268655DF25A
        140E6107BD38A9157916A00B6B983024E7D2501468F32E8AE3B25337C5493D8F
        B782D4A95098FAEC9EC340784DD83B0C8579D4673B7C2A6ACE7E0D85A983151C
        3ED5BB01BA76D76120BC2A1C5EFE0DCC3EAC7530A76ED2F5F1E630702A942653
        30015DBBE9F475B39ACF306A8F37155BA1BC2985BD1BC401063052CC8013CCDC
        F2B9B4D9CD1A227E1A32BB1BF0B721535B9FEB61C8D6E9EFA4CD6A6E8F37A50B
        8742777EE5CEC36F0000000049454E44AE426082}
      Properties.ShowFocusRect = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      StyleFocused.BorderStyle = ebsNone
      StyleHot.BorderStyle = ebsNone
      TabOrder = 4
      Transparent = True
      Visible = False
      Height = 16
      Width = 18
    end
    object edt_Suche: TcxButtonEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 6
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_SuchePropertiesButtonClick
      Properties.OnChange = edt_SuchePropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Visible = False
      OnEnter = edt_SucheEnter
      OnExit = edt_SucheExit
      Height = 24
      Width = 976
    end
    object edt_Stundenplan_Klasse: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Klasse'
      DataBinding.DataSource = ds_Stundenplan
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
      OnExit = btn_StundenplanSaveClick
      Width = 50
    end
    object edt_Stundenplan_Schule: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Schule'
      DataBinding.DataSource = ds_Stundenplan
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
      Visible = False
      OnExit = btn_StundenplanSaveClick
      Width = 706
    end
    object edt_Stundenplan_Schuljahr: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Schuljahr'
      DataBinding.DataSource = ds_Stundenplan
      ParentFont = False
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
      OnExit = btn_StundenplanSaveClick
      Width = 100
    end
    object grd_Stundenplanuebersicht: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1000
      Height = 81
      BorderStyle = cxcbsNone
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
      LookAndFeel.NativeStyle = False
      object grdDBTblView_Stundenplanuebersicht: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Stundenplan
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
        object grdDBTblView_StundenplanuebersichtSchule: TcxGridDBColumn
          DataBinding.FieldName = 'Schule'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 450
        end
        object grdDBTblView_StundenplanuebersichtKlasse: TcxGridDBColumn
          DataBinding.FieldName = 'Klasse'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_StundenplanuebersichtSchuljahr: TcxGridDBColumn
          DataBinding.FieldName = 'Schuljahr'
          DataBinding.IsNullValueType = True
          Width = 150
        end
        object grdDBTblView_StundenplanuebersichtID_Benutzer: TcxGridDBColumn
          Caption = 'Benutzer'
          DataBinding.FieldName = 'ID_Benutzer'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Benutzer'
            end>
          Visible = False
          VisibleForCustomization = False
          Width = 250
        end
      end
      object grdlvl_Stundenplanuebersicht: TcxGridLevel
        GridView = grdDBTblView_Stundenplanuebersicht
      end
    end
    object brdckctrl_Stundenplan: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1000
      Height = 63
      Align = dalNone
      BarManager = brmgr_Kalendar
      Visible = False
    end
    object lucmbbx_Stundenplan_Dienstag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Dienstag'
      DataBinding.DataSource = ds_Stundenplan_detail
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dsSchulFaecher
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 26
      Visible = False
      OnExit = btn_StundeSaveClick
      Width = 129
    end
    object lucmbbx_Stundenplan_Donnerstag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Donnerstag'
      DataBinding.DataSource = ds_Stundenplan_detail
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dsSchulFaecher
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
      OnExit = btn_StundeSaveClick
      Width = 129
    end
    object lucmbbx_Stundenplan_Freitag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Freitag'
      DataBinding.DataSource = ds_Stundenplan_detail
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dsSchulFaecher
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
      OnExit = btn_StundeSaveClick
      Width = 129
    end
    object lucmbbx_Stundenplan_Mittwoch: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Mittwoch'
      DataBinding.DataSource = ds_Stundenplan_detail
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dsSchulFaecher
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 27
      Visible = False
      OnExit = btn_StundeSaveClick
      Width = 129
    end
    object lucmbbx_Stundenplan_Montag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Montag'
      DataBinding.DataSource = ds_Stundenplan_detail
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dsSchulFaecher
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
      OnExit = btn_StundeSaveClick
      Width = 129
    end
    object lucmbbx_Stundenplan_Samstag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Samstag'
      DataBinding.DataSource = ds_Stundenplan_detail
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dsSchulFaecher
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
      OnExit = btn_StundeSaveClick
      Width = 129
    end
    object tiEdt_Stundenplan_Bis: TcxDBTimeEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'End'
      DataBinding.DataSource = ds_Stundenplan_detail
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
      OnExit = btn_StundeSaveClick
      Width = 70
    end
    object tiEdt_Stundenplan_Von: TcxDBTimeEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Begin'
      DataBinding.DataSource = ds_Stundenplan_detail
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
      OnExit = btn_StundeSaveClick
      Width = 70
    end
    object grd_StundenplanFach: TcxGrid
      Left = 10000
      Top = 10000
      Width = 978
      Height = 467
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 31
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      LookAndFeel.NativeStyle = False
      object grdDBTblView_Stundenplan: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Stundenplan_detail
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
        object grdDBTblView_StundenplanBegin: TcxGridDBColumn
          Caption = 'Beginn'
          DataBinding.FieldName = 'Begin'
          DataBinding.IsNullValueType = True
          OnCustomDrawCell = grdDBTblView_StundenplanBeginCustomDrawCell
          SortIndex = 0
          SortOrder = soAscending
          Width = 70
        end
        object grdDBTblView_StundenplanEnd: TcxGridDBColumn
          Caption = 'Ende'
          DataBinding.FieldName = 'End'
          DataBinding.IsNullValueType = True
          OnCustomDrawCell = grdDBTblView_StundenplanBeginCustomDrawCell
          Width = 70
        end
        object grdDBTblView_StundenplanMontag: TcxGridDBColumn
          DataBinding.FieldName = 'Montag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dsSchulFaecher
          OnCustomDrawCell = grdDBTblView_StundenplanMontagCustomDrawCell
          Width = 145
        end
        object grdDBTblView_StundenplanDienstag: TcxGridDBColumn
          DataBinding.FieldName = 'Dienstag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dsSchulFaecher
          OnCustomDrawCell = grdDBTblView_StundenplanDienstagCustomDrawCell
          Width = 145
        end
        object grdDBTblView_StundenplanMittwoch: TcxGridDBColumn
          DataBinding.FieldName = 'Mittwoch'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dsSchulFaecher
          OnCustomDrawCell = grdDBTblView_StundenplanMittwochCustomDrawCell
          Width = 145
        end
        object grdDBTblView_StundenplanDonnerstag: TcxGridDBColumn
          DataBinding.FieldName = 'Donnerstag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dsSchulFaecher
          OnCustomDrawCell = grdDBTblView_StundenplanDonnerstagCustomDrawCell
          Width = 145
        end
        object grdDBTblView_StundenplanFreitag: TcxGridDBColumn
          DataBinding.FieldName = 'Freitag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dsSchulFaecher
          OnCustomDrawCell = grdDBTblView_StundenplanFreitagCustomDrawCell
          Width = 145
        end
        object grdDBTblView_StundenplanSamstag: TcxGridDBColumn
          DataBinding.FieldName = 'Samstag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dsSchulFaecher
          OnCustomDrawCell = grdDBTblView_StundenplanSamstagCustomDrawCell
          Width = 145
        end
      end
      object grdlvl_Stundenplan: TcxGridLevel
        GridView = grdDBTblView_Stundenplan
      end
    end
    object brdckCtrl_StundenplanFach: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 978
      Height = 63
      Align = dalNone
      BarManager = brmgr_Kalendar
      Visible = False
    end
    object lactrl_KalenderGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lagrp_KalenderTab: TdxLayoutGroup
      Parent = lactrl_KalenderGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lagrp_Kalender: TdxLayoutGroup
      Parent = lagrp_KalenderTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 10
      CaptionOptions.Text = 'Kalender'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lagrp_Kalender
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckctrl_Kalender'
      CaptionOptions.Visible = False
      Control = brdckctrl_Kalender
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1056
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lagrp_Kalender
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'sched_Kalender'
      CaptionOptions.Visible = False
      Control = sched_Kalender
      ControlOptions.OriginalHeight = 783
      ControlOptions.OriginalWidth = 1056
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_Aufgaben: TdxLayoutGroup
      Parent = lagrp_KalenderTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 58
      CaptionOptions.Text = 'Aufgaben'
      ItemIndex = 5
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lagrp_Aufgaben
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'trlst_Aufgaben'
      CaptionOptions.Visible = False
      Control = trlst_Aufgaben
      ControlOptions.OriginalHeight = 107
      ControlOptions.OriginalWidth = 1056
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lagrp_Aufgaben
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Top = -6
      CaptionOptions.Text = 'brdckctrl_Aufgaben'
      CaptionOptions.Visible = False
      Control = brdckctrl_Aufgaben
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 117
      ControlOptions.OriginalWidth = 1056
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = lagrp_Aufgaben
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Top = -6
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'img_search'
      CaptionOptions.Visible = False
      Control = img_search
      ControlOptions.OriginalHeight = 16
      ControlOptions.OriginalWidth = 18
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'edt_Suche'
      CaptionOptions.Visible = False
      Control = edt_Suche
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 1024
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = lagrp_Aufgaben
      AlignHorz = ahClient
      AlignVert = avClient
      Offsets.Top = -6
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 315
      ControlOptions.OriginalWidth = 1050
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Betreff:'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ansprechpartner:'
      Control = cbxAns
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Adresse:'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 390
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'btn_GoToJira'
      CaptionOptions.Visible = False
      Control = btn_GoToJira
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBMemo1'
      CaptionOptions.Visible = False
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 252
      ControlOptions.OriginalWidth = 1389
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid5'
      CaptionOptions.Visible = False
      Control = cxGrid5
      ControlOptions.OriginalHeight = 204
      ControlOptions.OriginalWidth = 176
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Image1'
      CaptionOptions.Visible = False
      Control = Image1
      ControlOptions.OriginalHeight = 32
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btn_AttachementOpen
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 23
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'btn_AttachementSave'
      CaptionOptions.Visible = False
      Control = btn_AttachementSave
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 23
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lagrp_Stundenplan: TdxLayoutGroup
      Parent = lagrp_KalenderTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 14
      CaptionOptions.Text = 'Stundenplan'
      Index = 2
    end
    object dxLayoutGroup23: TdxLayoutGroup
      Parent = lagrp_Stundenplan
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Stundenplan'#252'bersicht'
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup23
      CaptionOptions.Text = 'brdckctrl_Stundenplan'
      CaptionOptions.Visible = False
      Control = brdckctrl_Stundenplan
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1050
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Schule:'
      Control = edt_Stundenplan_Schule
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 640
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Klasse:'
      Control = edt_Stundenplan_Klasse
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Schuljahr:'
      Control = edt_Stundenplan_Schuljahr
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'grd_Stundenplanuebersicht'
      CaptionOptions.Visible = False
      Control = grd_Stundenplanuebersicht
      ControlOptions.OriginalHeight = 81
      ControlOptions.OriginalWidth = 1050
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup28: TdxLayoutGroup
      Parent = dxLayoutGroup23
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Stundenplan'
      Index = 3
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_StundenplanFach'
      CaptionOptions.Visible = False
      Control = brdckCtrl_StundenplanFach
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1050
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup29: TdxLayoutGroup
      Parent = dxLayoutGroup28
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'tiEdt_Stundenplan_Von'
      CaptionOptions.Visible = False
      Control = tiEdt_Stundenplan_Von
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ende:'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = tiEdt_Stundenplan_Bis
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lucmbbx_Stundenplan_Montag
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Dienstag:'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lucmbbx_Stundenplan_Dienstag
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Mittwoch:'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lucmbbx_Stundenplan_Mittwoch
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lucmbbx_Stundenplan_Donnerstag
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Freitag:'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lucmbbx_Stundenplan_Freitag
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Samstag:'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = lucmbbx_Stundenplan_Samstag
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_StundenplanFach'
      CaptionOptions.Visible = False
      Control = grd_StundenplanFach
      ControlOptions.OriginalHeight = 552
      ControlOptions.OriginalWidth = 1050
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      Control = edtJiraTicketNr
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 359
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lagrp_Aufgaben
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = lagrp_Aufgaben
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup23
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup23
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup29
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Beginn:'
      Index = 0
    end
    object dxLayoutLabeledItem2: TdxLayoutLabeledItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ende:'
      Index = 0
    end
    object dxLayoutLabeledItem3: TdxLayoutLabeledItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Montag:'
      Index = 0
    end
    object dxLayoutLabeledItem4: TdxLayoutLabeledItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Dienstag:'
      Index = 0
    end
    object dxLayoutLabeledItem5: TdxLayoutLabeledItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Mittwoch'
      Index = 0
    end
    object dxLayoutLabeledItem6: TdxLayoutLabeledItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Donnerstag:'
      Index = 0
    end
    object dxLayoutLabeledItem7: TdxLayoutLabeledItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Freitag:'
      Index = 0
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup29
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup29
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup29
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup29
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup29
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup29
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup29
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 7
    end
    object dxLayoutLabeledItem8: TdxLayoutLabeledItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Samstag:'
      Index = 0
    end
    object lTypeName: TdxLayoutLabeledItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      Index = 1
    end
  end
  object brpmm_ContextCalender: TdxBarPopupMenu
    BarManager = brmgr_Kalendar
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_TerminNeu'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btn_TerminToday'
      end>
    UseOwnFont = False
    Left = 1208
    Top = 456
    PixelsPerInch = 96
  end
  object brpmm_ImportExport: TdxBarPopupMenu
    BarManager = brmgr_Kalendar
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_CalTerminImport'
      end
      item
        Visible = True
        ItemName = 'btn_TerminExport'
      end
      item
        Visible = True
        ItemName = 'btn_CalImportOutlook'
      end
      item
        Visible = True
        ItemName = 'btn_CalExporttoOutlook'
      end>
    UseOwnFont = False
    Left = 1205
    Top = 507
    PixelsPerInch = 96
  end
  object brpmm_EventCalender: TdxBarPopupMenu
    BarManager = brmgr_Kalendar
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_Terminchange'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'btn_TerminDelete'
      end>
    UseOwnFont = False
    Left = 1208
    Top = 560
    PixelsPerInch = 96
  end
  object brpmm_Print: TdxBarPopupMenu
    BarManager = brmgr_Kalendar
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_TagesAnsicht'
      end
      item
        Visible = True
        ItemName = 'btn_WochenAnsicht'
      end
      item
        Visible = True
        ItemName = 'btn_MonatsAnsicht'
      end
      item
        Visible = True
        ItemName = 'pmmbtn_YearView'
      end
      item
        Visible = True
        ItemName = 'pmmbtn_Agenda'
      end
      item
        Visible = True
        ItemName = 'dxBarButton1'
      end>
    UseOwnFont = False
    Left = 1213
    Top = 667
    PixelsPerInch = 96
  end
  object brmgr_Kalendar: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'pmPrint'
      'pmImportexport'
      'pmContextCalendar'
      'pmEventCalendar'
      'PopupMenu1'
      'PopupMenu2')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
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
    UseF10ForMenu = False
    UseSystemFont = True
    Left = 1205
    Top = 347
    PixelsPerInch = 96
    object tb_Calendar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Agenda'
      CaptionButtons = <>
      DockControl = brdckctrl_Kalender
      DockedDockControl = brdckctrl_Kalender
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_CalNew'
        end
        item
          Visible = True
          ItemName = 'btn_CalTag'
        end
        item
          Visible = True
          ItemName = 'btn_CalArbeitswoche'
        end
        item
          Visible = True
          ItemName = 'btn_CalWoche'
        end
        item
          Visible = True
          ItemName = 'btn_CalMonat'
        end
        item
          Visible = True
          ItemName = 'btn_CalJahr'
        end
        item
          Visible = True
          ItemName = 'btn_CalTimegrid'
        end
        item
          Visible = True
          ItemName = 'btn_CalAgenda'
        end
        item
          Visible = True
          ItemName = 'btn_CalCompleteday'
        end
        item
          Visible = True
          ItemName = 'btn_CalZurueck'
        end
        item
          Visible = True
          ItemName = 'btn_CalVor'
        end
        item
          Visible = True
          ItemName = 'btn_CalFilter'
        end
        item
          Visible = True
          ItemName = 'btn_CalPrint'
        end
        item
          Visible = True
          ItemName = 'btn_CalImport'
        end
        item
          Visible = True
          ItemName = 'btn_CalRefresh'
        end
        item
          Visible = True
          ItemName = 'btn_CalAnsicht'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object tb_stundenplan: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = brdckctrl_Stundenplan
      DockedDockControl = brdckctrl_Stundenplan
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_StundenplanNew'
        end
        item
          Visible = True
          ItemName = 'btn_StundenplanSave'
        end
        item
          Visible = True
          ItemName = 'btn_StundenplanCancel'
        end
        item
          Visible = True
          ItemName = 'btn_StundenplanDelete'
        end
        item
          Visible = True
          ItemName = 'btn_StundenplanPrint'
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
    object tb_stundenplanDetail: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockControl = brdckCtrl_StundenplanFach
      DockedDockControl = brdckCtrl_StundenplanFach
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_StundeNew'
        end
        item
          Visible = True
          ItemName = 'btn_StundeSave'
        end
        item
          Visible = True
          ItemName = 'btn_StundeCancel'
        end
        item
          Visible = True
          ItemName = 'btn_StundeDelete'
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
    object tb_Aufgaben: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = brdckctrl_Aufgaben
      DockedDockControl = brdckctrl_Aufgaben
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 999
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_NewMessage'
        end
        item
          Visible = True
          ItemName = 'btn_NewTask'
        end
        item
          Visible = True
          ItemName = 'btn_NewEvent'
        end
        item
          Visible = True
          ItemName = 'btn_JobChange'
        end
        item
          Visible = True
          ItemName = 'btn_ReadJob'
        end
        item
          Visible = True
          ItemName = 'btn_DoneJob'
        end
        item
          Visible = True
          ItemName = 'btn_JobUndone'
        end
        item
          Visible = True
          ItemName = 'btn_JobsDone'
        end
        item
          Visible = True
          ItemName = 'btn_JobsImportExportAufgaben'
        end
        item
          Visible = True
          ItemName = 'btn_JobsRefresh'
        end
        item
          Visible = True
          ItemName = 'btn_taskMinMax'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_TagesAnsicht: TdxBarButton
      Caption = 'Tagesansicht'
      Category = 0
      Visible = ivAlways
      ImageIndex = 67
      OnClick = btn_TagesAnsichtClick
    end
    object btn_WochenAnsicht: TdxBarButton
      Caption = 'Wochenansicht'
      Category = 0
      Visible = ivAlways
      ImageIndex = 67
      OnClick = btn_WochenAnsichtClick
    end
    object btn_MonatsAnsicht: TdxBarButton
      Caption = 'Monatsansicht'
      Category = 0
      Visible = ivAlways
      ImageIndex = 67
      OnClick = btn_MonatsAnsichtClick
    end
    object btn_CalNew: TdxBarLargeButton
      Caption = '&Neuer Termin'
      Category = 0
      Hint = 'Neuer Termin'
      Visible = ivAlways
      OnClick = btn_CalNewClick
      AutoGrayScale = False
      LargeImageIndex = 13
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalMonat: TdxBarLargeButton
      Caption = 'Monat'
      Category = 0
      Hint = 'Monat'
      Visible = ivAlways
      OnClick = btn_CalMonatClick
      AutoGrayScale = False
      LargeImageIndex = 42
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalWoche: TdxBarLargeButton
      Caption = 'Woche'
      Category = 0
      Hint = 'Woche'
      Visible = ivAlways
      OnClick = btn_CalWocheClick
      AutoGrayScale = False
      LargeImageIndex = 43
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalArbeitswoche: TdxBarLargeButton
      Caption = 'Arbeitswoche'
      Category = 0
      Hint = 'Arbeitswoche'
      Visible = ivAlways
      OnClick = btn_CalArbeitswocheClick
      AutoGrayScale = False
      LargeImageIndex = 40
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalTag: TdxBarLargeButton
      Caption = 'Tag'
      Category = 0
      Hint = 'Tag'
      Visible = ivAlways
      OnClick = btn_CalTagClick
      AutoGrayScale = False
      LargeImageIndex = 39
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalJahr: TdxBarLargeButton
      Caption = 'Jahr'
      Category = 0
      Hint = 'Jahr'
      Visible = ivAlways
      OnClick = btn_CalJahrClick
      AutoGrayScale = False
      LargeImageIndex = 44
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalAgenda: TdxBarLargeButton
      Caption = 'Agenda'
      Category = 0
      Hint = 'Agenda'
      Visible = ivAlways
      OnClick = btn_CalAgendaClick
      AutoGrayScale = False
      LargeImageIndex = 7
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalCompleteday: TdxBarLargeButton
      Caption = 'Ganzer Tag'
      Category = 0
      Hint = 'Ganzer Tag'
      Visible = ivAlways
      OnClick = btn_CalArbeitszeitClick
      AutoGrayScale = False
      LargeImageIndex = 21
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalZurueck: TdxBarLargeButton
      Caption = 'Zur'#252'ck'
      Category = 0
      Hint = 'Zur'#252'ck'
      Visible = ivAlways
      OnClick = btn_CalZurueckClick
      AutoGrayScale = False
      LargeImageIndex = 25
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalVor: TdxBarLargeButton
      Caption = 'Vor'
      Category = 0
      Hint = 'Vor'
      Visible = ivAlways
      OnClick = btn_CalVorClick
      AutoGrayScale = False
      LargeImageIndex = 26
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalFilter: TdxBarLargeButton
      Caption = 'Filter'
      Category = 0
      Hint = 'Filter'
      Visible = ivAlways
      OnClick = btn_CalFilterClick
      AutoGrayScale = False
      LargeImageIndex = 38
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalPrint: TdxBarLargeButton
      Caption = 'Drucken'
      Category = 0
      Hint = 'Drucken'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = brpmm_Print
      AutoGrayScale = False
      LargeImageIndex = 35
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalImport: TdxBarLargeButton
      Caption = 'Import/Export'
      Category = 0
      Hint = 'Import/Export'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = brpmm_ImportExport
      AutoGrayScale = False
      LargeImageIndex = 122
      Width = 90
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_CalAnsicht: TdxBarLargeButton
      Align = iaRight
      Caption = 'max. Ansicht'
      Category = 0
      Hint = 'max. Ansicht'
      Visible = ivAlways
      OnClick = btn_CalAnsichtClick
      AutoGrayScale = False
      LargeImageIndex = 32
      Width = 80
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_StundenplanNew: TdxBarLargeButton
      Caption = 'Plan anlegen'
      Category = 0
      Hint = 'Plan anlegen'
      Visible = ivAlways
      OnClick = btn_StundenplanNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_StundenplanPrint: TdxBarLargeButton
      Caption = 'Plan &drucken'
      Category = 0
      Hint = 'Plan drucken'
      Visible = ivAlways
      OnClick = btn_StundenplanPrintClick
      AutoGrayScale = False
      LargeImageIndex = 35
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_StundenplanDelete: TdxBarLargeButton
      Caption = 'Plan l'#246'schen'
      Category = 0
      Hint = 'Plan l'#246'schen'
      Visible = ivAlways
      OnClick = btn_StundenplanDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_StundenplanCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_StundenplanCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_StundenplanSave: TdxBarLargeButton
      Caption = 'Plan speichern'
      Category = 0
      Hint = 'Plan speichern'
      Visible = ivAlways
      OnClick = btn_StundenplanSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_StundeNew: TdxBarLargeButton
      Caption = 'Stunde anlegen'
      Category = 0
      Hint = 'Stunde anlegen'
      Visible = ivAlways
      OnClick = btn_StundeNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_StundeDelete: TdxBarLargeButton
      Caption = 'Stunde l'#246'schen'
      Category = 0
      Hint = 'Stunde l'#246'schen'
      Visible = ivAlways
      OnClick = btn_StundeDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_StundeCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_StundeCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_StundeSave: TdxBarLargeButton
      Caption = 'Stunde speichern'
      Category = 0
      Hint = 'Stunde speichern'
      Visible = ivAlways
      OnClick = btn_StundeSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_NewTask: TdxBarLargeButton
      Caption = 'Neue Aufgabe'
      Category = 0
      Hint = 'Neue Aufgabe'
      Visible = ivAlways
      DropDownMenu = brpmm_Aufgaben
      OnClick = btn_NewTaskClick
      AutoGrayScale = False
      LargeImageIndex = 128
      Width = 125
    end
    object btn_ReadJob: TdxBarLargeButton
      Caption = 'Gelesen'
      Category = 0
      Hint = 'Gelesen'
      Visible = ivAlways
      OnClick = btn_ReadJobClick
      AutoGrayScale = False
      LargeImageIndex = 126
      Width = 125
    end
    object btn_DoneJob: TdxBarLargeButton
      Caption = 'Bearbeitet'
      Category = 0
      Hint = 'Bearbeitet'
      Visible = ivAlways
      OnClick = btn_DoneJobClick
      AutoGrayScale = False
      LargeImageIndex = 123
      Width = 125
    end
    object btn_JobUndone: TdxBarLargeButton
      Caption = 'Unbearbeitet'
      Category = 0
      Enabled = False
      Hint = 'Unbearbeitet'
      Visible = ivAlways
      OnClick = btn_JobUndoneClick
      AutoGrayScale = False
      LargeImageIndex = 124
      Width = 125
    end
    object btn_JobChange: TdxBarLargeButton
      Caption = #196'ndern'
      Category = 0
      Hint = #196'ndern'
      Visible = ivAlways
      OnClick = btn_JobChangeClick
      AutoGrayScale = False
      LargeImageIndex = 125
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_taskMinMax: TdxBarLargeButton
      Align = iaRight
      Caption = '&max. Ansicht'
      Category = 0
      Hint = 'max. Ansicht'
      Visible = ivNever
      OnClick = btn_taskMinMaxClick
      AutoGrayScale = False
      LargeImageIndex = 32
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_NewEvent: TdxBarLargeButton
      Caption = 'Neuer Termin'
      Category = 0
      Hint = 'Neuer Termin'
      Visible = ivAlways
      OnClick = btn_NewEventClick
      AutoGrayScale = False
      LargeImageIndex = 127
    end
    object btn_NewMessage: TdxBarLargeButton
      Caption = 'Neue Nachricht'
      Category = 0
      Hint = 'Neue Nachricht'
      Visible = ivAlways
      OnClick = btn_NewMessageClick
      AutoGrayScale = False
      LargeImageIndex = 129
    end
    object btn_JobsDone: TdxBarLargeButton
      Caption = 'bearbeitete Aufgaben'
      Category = 0
      Hint = 'bearbeitete Aufgaben'
      Visible = ivAlways
      OnClick = btn_JobsDoneClick
      AutoGrayScale = False
      LargeImageIndex = 123
      Width = 125
    end
    object btn_JobsRefresh: TdxBarLargeButton
      Align = iaRight
      Caption = 'Aktualisieren'
      Category = 0
      Hint = 'Aktualisieren'
      Visible = ivAlways
      OnClick = btn_JobsRefreshClick
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_JobsImportExportAufgaben: TdxBarLargeButton
      Caption = 'Import/Export'
      Category = 0
      Hint = 'Import/Export'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = brpmm_ImportExportAufgaben
      AutoGrayScale = False
      LargeImageIndex = 122
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object pmmbtn_YearView: TdxBarButton
      Caption = 'Jahresansicht'
      Category = 0
      Hint = 'Jahresansicht'
      Visible = ivAlways
      ImageIndex = 67
      OnClick = pmmbtn_YearViewClick
    end
    object pmmbtn_Agenda: TdxBarButton
      Caption = 'Agenda'
      Category = 0
      Hint = 'Agenda'
      Visible = ivAlways
      ImageIndex = 67
      OnClick = pmmbtn_AgendaClick
    end
    object btn_CalRefresh: TdxBarLargeButton
      Caption = 'Aktualisieren'
      Category = 0
      Hint = 'Aktualisieren'
      Visible = ivAlways
      OnClick = btn_CalRefreshClick
      AutoGrayScale = False
      LargeImageIndex = 6
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Align = iaRight
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btn_CalTimegrid: TdxBarLargeButton
      Caption = 'Zeitlinie'
      Category = 0
      Hint = 'Zeitlinie'
      Visible = ivAlways
      OnClick = btn_CalTimegridClick
      AutoGrayScale = False
      LargeImageIndex = 133
      Width = 90
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btn_CalTerminImport: TdxBarButton
      Caption = 'Importieren (ICAL)'
      Category = 1
      Hint = 'Importieren (ICAL)'
      Visible = ivAlways
      ImageIndex = 69
      OnClick = btn_CalTerminImportClick
    end
    object btn_TerminExport: TdxBarButton
      Caption = 'Exportieren (FTP)'
      Category = 1
      Hint = 'Exportieren (FTP)'
      Visible = ivAlways
      ImageIndex = 68
      OnClick = btn_TerminExportClick
    end
    object btn_CalImportOutlook: TdxBarButton
      Caption = 'Importieren (Outlook)'
      Category = 1
      Hint = 'Importieren (Outlook)'
      Visible = ivAlways
      ImageIndex = 69
      OnClick = btn_CalImportOutlookClick
    end
    object btn_CalExporttoOutlook: TdxBarButton
      Caption = 'Exportieren (Outlook)'
      Category = 1
      Hint = 'Exportieren (Outlook)'
      Visible = ivAlways
      ImageIndex = 68
      OnClick = btn_CalExporttoOutlookClick
    end
    object btn_TerminNeu: TdxBarButton
      Caption = 'Termin erstellen'
      Category = 2
      Visible = ivAlways
      ImageIndex = 78
      OnClick = btn_TerminNeuClick
    end
    object btn_TerminToday: TdxBarButton
      Caption = 'Heute'
      Category = 2
      Visible = ivAlways
      ImageIndex = 77
      OnClick = btn_TerminTodayClick
    end
    object btn_Terminchange: TdxBarButton
      Caption = 'Termin '#228'ndern'
      Category = 3
      Visible = ivAlways
      ImageIndex = 74
      OnClick = btn_TerminchangeClick
    end
    object btn_TerminDelete: TdxBarButton
      Caption = 'Termin l'#246'schen'
      Category = 3
      Visible = ivAlways
      ImageIndex = 76
      OnClick = btn_TerminDeleteClick
    end
    object pmmbtn_CalNew: TdxBarButton
      Caption = 'Termin'
      Category = 4
      Visible = ivAlways
      ImageIndex = 72
      OnClick = pmmbtn_CalNewClick
    end
    object pmmbtn_JobNew: TdxBarButton
      Caption = 'Aufgabe'
      Category = 4
      Visible = ivAlways
      ImageIndex = 71
      OnClick = btn_NewTaskClick
    end
    object pmmbtn_MessageNew: TdxBarButton
      Caption = 'Nachricht'
      Category = 4
      Visible = ivAlways
      ImageIndex = 70
      OnClick = btn_NewMessageClick
    end
    object pmmbtn_JobsImportOutlook: TdxBarButton
      Caption = 'Import (Outlook)'
      Category = 5
      Visible = ivAlways
      ImageIndex = 69
      OnClick = pmmbtn_JobsImportOutlookClick
    end
    object pmmbtn_JobsExportOutlook: TdxBarButton
      Caption = 'Export (Outlook)'
      Category = 5
      Visible = ivAlways
      ImageIndex = 68
      OnClick = pmmbtn_JobsExportOutlookClick
    end
  end
  object schedDBStrg_Kalenderimport: TcxSchedulerDBStorage
    Reminders.Active = False
    Reminders.ReminderWindowLookAndFeel.NativeStyle = True
    Resources.Items = <>
    Resources.ResourceID = 'ID'
    Resources.ResourceName = 'Name'
    CustomFields = <
      item
        FieldName = 'KalenderHint'
      end>
    DataSource = dm_PCM.ds_Kalender_Benutzer
    FieldNames.Caption = 'Caption'
    FieldNames.EventType = 'EventType'
    FieldNames.Finish = 'Finish'
    FieldNames.ID = 'ID'
    FieldNames.Location = 'Location'
    FieldNames.Message = 'Message'
    FieldNames.Options = 'Options'
    FieldNames.ParentID = 'Parent_Id'
    FieldNames.RecurrenceIndex = 'RecurrenceIndex'
    FieldNames.RecurrenceInfo = 'RecurrenceInfo'
    FieldNames.ReminderDate = 'ReminderDate'
    FieldNames.ReminderMinutesBeforeStart = 'ReminderMinutesBeforeStart'
    FieldNames.ResourceID = 'ID_Benutzer'
    FieldNames.Start = 'Start'
    Left = 1076
    Top = 404
  end
  object qry_Stundenplan: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    AfterScroll = qry_StundenplanAfterScroll
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID,Schule,Klasse,Schuljahr,ID_Benutzer From manager_Stund' +
        'enplan')
    Left = 287
    Top = 456
  end
  object qry_Stundenplan_detail: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    AfterScroll = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID, Begin, End, Montag,Dienstag, Mittwoch, Donnerstag, Fr' +
        'eitag, Samstag, ID_Stundenplan From manager_Stundenplan_detail'
      'order by id asc')
    Left = 404
    Top = 456
  end
  object ds_Stundenplan_detail: TDataSource
    DataSet = qry_Stundenplan_detail
    Left = 403
    Top = 512
  end
  object ds_Stundenplan: TDataSource
    DataSet = qry_Stundenplan
    Left = 286
    Top = 512
  end
  object schedDBStrg_Kalender: TcxSchedulerDBStorage
    Reminders.Active = False
    Reminders.ReminderWindowLookAndFeel.NativeStyle = False
    Reminders.OnAlertReminder = ssKalenderRemindersAlertReminder
    Reminders.OnDismissReminder = ssKalenderRemindersDismissReminder
    Reminders.OnOpenEvent = ssKalenderRemindersOpenEvent
    Resources.Items = <>
    Resources.DataSource = dm_PCM.ds_Kalender_Benutzer
    Resources.ResourceID = 'ID'
    Resources.ResourceName = 'Name'
    CustomFields = <
      item
        FieldName = 'KalenderHint'
      end>
    DataSource = dm_PCM.ds_Kalender_Kalender
    FieldNames.Caption = 'Caption'
    FieldNames.EventType = 'EventType'
    FieldNames.Finish = 'Finish'
    FieldNames.ID = 'ID'
    FieldNames.LabelColor = 'LabelColor'
    FieldNames.Location = 'Location'
    FieldNames.Message = 'Message'
    FieldNames.Options = 'Options'
    FieldNames.ParentID = 'Parent_Id'
    FieldNames.RecurrenceIndex = 'RecurrenceIndex'
    FieldNames.RecurrenceInfo = 'RecurrenceInfo'
    FieldNames.ReminderDate = 'ReminderDate'
    FieldNames.ReminderMinutesBeforeStart = 'ReminderMinutesBeforeStart'
    FieldNames.ResourceID = 'ID_Benutzer'
    FieldNames.Start = 'Start'
    OnEventInserted = schedDBStrg_KalenderEventInserted
    OnEventModified = schedDBStrg_KalenderEventModified
    Left = 1075
    Top = 346
  end
  object qry_SchulFaecher: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    AfterScroll = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID, Bezeichnung,Farbe,Schriftfarbe, ID_Benutzer'
      'From manager_Stundenplan_Schulfaecher'
      'order by Bezeichnung'
      '')
    Left = 523
    Top = 456
  end
  object dsSchulFaecher: TDataSource
    DataSet = qry_SchulFaecher
    Left = 522
    Top = 512
  end
  object compPrint_Cal: TdxComponentPrinter
    CurrentLink = compPrint_CalLink1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 1067
    Top = 152
    PixelsPerInch = 96
    object compPrint_CalLink1: TcxSchedulerReportLink
      Component = sched_Kalender
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45188.987871122680000000
      PrintRange.TimePrintFrom = 0.291666666666666700
      PrintRange.TimePrintTo = 0.833333333333333400
      PrintStyles.Monthly.Active = True
      SupportedCustomDraw = True
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object compPrint_CalLink2: TdxGridReportLink
      Active = True
      Component = grd_Stundenplanuebersicht
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 45755.339034606480000000
      OptionsSize.AutoWidth = True
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object idFTP_Cal: TIdFTP
    Host = '192.168.178.1'
    Passive = True
    PassiveUseControlHost = True
    ConnectTimeout = 0
    Password = 'Jh2019+1'
    TransferType = ftBinary
    Username = 'Jens'
    UseExtensionDataPort = True
    UseMLIS = False
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    UseHOST = False
    Left = 1339
    Top = 344
  end
  object brpmm_Aufgaben: TdxBarPopupMenu
    BarManager = brmgr_Kalendar
    ItemLinks = <
      item
        Visible = True
        ItemName = 'pmmbtn_CalNew'
      end
      item
        Visible = True
        ItemName = 'pmmbtn_JobNew'
      end
      item
        Visible = True
        ItemName = 'pmmbtn_MessageNew'
      end>
    UseOwnFont = False
    Left = 1210
    Top = 401
    PixelsPerInch = 96
  end
  object pm_Einnahmen: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        PopupMenu = brpmm_Aufgaben
      end>
    Left = 1080
    Top = 464
  end
  object brpmm_ImportExportAufgaben: TdxBarPopupMenu
    BarManager = brmgr_Kalendar
    ItemLinks = <
      item
        Visible = True
        ItemName = 'pmmbtn_JobsImportOutlook'
      end
      item
        Visible = True
        ItemName = 'pmmbtn_JobsExportOutlook'
      end>
    UseOwnFont = False
    Left = 1210
    Top = 617
    PixelsPerInch = 96
  end
  object Outlook: TOutlookApplication
    AutoConnect = False
    ConnectKind = ckRemote
    RemoteMachineName = '127.0.0.1'
    AutoQuit = False
    Left = 1072
    Top = 32
  end
  object rstreq_main: TRESTRequest
    Client = rstClt_Main
    Params = <>
    Response = rstrsp_Main
    SynchronizedEvents = False
    Left = 152
    Top = 288
  end
  object rstClt_Main: TRESTClient
    Authenticator = httpBasAut_Main
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    Params = <>
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 152
    Top = 440
  end
  object rstrsp_Main: TRESTResponse
    ContentType = 'text/html'
    Left = 152
    Top = 336
  end
  object httpBasAut_Main: THTTPBasicAuthenticator
    Left = 152
    Top = 384
  end
  object qWF_Nachrichten_Anhaenge: TFDQuery
    AfterScroll = qWF_Nachrichten_AnhaengeAfterScroll
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'SELECT ina.ID, ina.ID_IC_Nachrichten, ina.Dateiname, ina.Dateina' +
        'meSave '
      
        'FROM manager_Aufgaben_Anhaenge ina WHERE ina.ID_IC_Nachrichten =' +
        ' 0')
    Left = 40
    Top = 520
    object qWF_Nachrichten_AnhaengeID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qWF_Nachrichten_AnhaengeID_IC_Nachrichten: TIntegerField
      FieldName = 'ID_IC_Nachrichten'
      Origin = 'ID_IC_Nachrichten'
    end
    object qWF_Nachrichten_AnhaengeDateiname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Dateiname'
      Origin = 'Dateiname'
      Size = 255
    end
    object qWF_Nachrichten_AnhaengeDateinameSave: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DateinameSave'
      Origin = 'DateinameSave'
      Size = 255
    end
  end
  object dsWF_Nachrichten_Anhaenge: TDataSource
    DataSet = qWF_Nachrichten_Anhaenge
    Left = 160
    Top = 520
  end
  object SaveDialog1: TdxSaveFileDialog
    Left = 365
    Top = 608
  end
  object RESTClient_jira: TRESTClient
    Authenticator = httpAuth_Jira
    BaseURL = 'http://'#39'https://pcm-software.atlassian.net/rest'
    Params = <>
    SynchronizedEvents = False
    Left = 152
    Top = 240
  end
  object httpAuth_Jira: THTTPBasicAuthenticator
    Username = 'Jens.Henske@outlook.com'
    Password = 
      'ATATT3xFfGF0tVpc1MPdKU2d1603BU3gMBJJmOuwcsnC3Q2lLS9rW4bY_pZU5W2K' +
      'QCCTQh_z_SEJ88szd3KTfFmsrQwriV9uqVhxaBbWfxIBIQ2lAFzdPV0Nfm99p6F1' +
      'FgFmjnyx5jJlioraphhrMOFkH_4XOQ6oZNKovYtsk04-Y72oNOzzvSA=C0E898E3'
    Left = 152
    Top = 184
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <>
    Left = 951
    Top = 305
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 29885248
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000004E504C5445000000FF512EFF592CFF5535FF5730FF552FFF582EFF57
          32FF552FFF5731FF5631FF5530FF5631FF5730FF5630FF5630FF5530FF5630FF
          5630FF5530FF5630FF5630FF5630FF5630FF5630FFFFFF711C451F0000001874
          524E5300161718353637385758595A83848586CECFD0D1F2F3F4FEACDEC44400
          000001624B474419EC6EB588000000644944415418196DC1591283201045D12B
          6690C42948C3DBFF4A63515D161F9EC3AD714BA5A435E03E458D459A6F95AB91
          D368BA5800367516E0502701A607EEA50C989EB8B73270A8F30356756620982E
          79E014AB5C9D68A2A9C9132E2CBBD93E0FDCF903A7830C7495B19E8100000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA7930000010049444154388DC58F31
          4B426114869F73F9CE15CCA5C1DF908138180D814B5B636D1104CDA25028D678
          D770302282A62008DA6A6B7468889686B6107F41E05C439E064BEF35AFDE28E8
          59CFFB3EBC07A6602006322D137BB4CDE2064873E0B1865C3D5E2712D8CE4A8E
          776B016B63A73662BB72F1F03451605BA579525E0056065CCCB03EC225464DCE
          EF5E880433FE3DC642DC4B9F78C036B00C2C46054E6795C3E486B590E007FD11
          7F28D07F5FE0FC5F0A26BD20DC0060AC275810113C83ECC9C1C92D801D9657E9
          CB1142615CE085045D9CF650ADF09ACD7F950164FFB4CD5B7609D50A4E7B38ED
          7C9B62CDFA9C9D05E9B8A9C35C10F8765C4DCDCA25E603CBDF3A64A12E6C3700
          00000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000001F249444154388DA5923F
          68535114C67FE7BEA828B5852282A0A2D0526349A8552C080EA238F8B72554EA
          E0A88215D3E68FD4A96F5014797D350E76290A82101A8906D1A5BBA0A009145D
          5488838398A1358328BE771CF2526D5245F42C977B0EDF77EEF7E3C27F96FC6E
          A043D13E7C330178A84948EEE58BBF32D0C1EE7624340E320C5841DB47F41EBE
          494AAEF8695903B531BCDA7116D1CB403BF005E42AB012F462EDA482708970E9
          B6D8F84B0D4EF4CC02076A170A588C48B65406D0D8CE6D58DE2D605FB0F791CC
          148F019886406F508E48AED4CF86CE8F9A8E8D697A2045245266A6B41FF414F0
          01F5D7FC11A2A662474133C0D6A0F50E888B937F5C8FDB14014047073BB0BC0C
          7028683D035600BDC1BE02216F44AE3D2CD7358B1134154B60797381B882729A
          96E81EDE5BBB41E3A09F418FF3DDBCD6D4C0852603448703D2537856974CE4A7
          695DE866EFE62E711EDCC47861200BAC0639DF6CE0CB612C898A933FC7A68DA8
          9BC820A688C79C4E26EFB2BEF39B38F993F8D28B5AFDCB4254DB36B456CF205C
          61F12F60805540059131E65BEE886DFBCD0CDCD15DB4559F234CD5C45A006F3B
          C6448059601DAAD3B4559FEA64BAA7AE0BFD646072C016E02DBEC625E93EF9E5
          7107D54D0D21EA027DE0DF073A9632506EA02458581B6910D7FC134E96AFA130
          C23870BD71FECFF5039449A8DF61106A1F0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000001F349444154388DA5923F
          6853511487BF73F31AC12CBA3888E0604CB45450471111754C06C5380862A54D
          945614454A555A2B8DC10E8936C5D0A405C13F8B2248898B2828BA0A55B1AD75
          6E10419A6A6A91BCBEE3D0F7B44DE2D4DF74EEB9BFFB71CEB9075629F182685E
          DBD5B0C5B218787A4ACA8DCCB147EA5F9825A1B0E6D96949039865A86E946EDB
          66329AD7E3B58F23C37A70A1CC7B8421112E7A79CB0B1695C3461846D9A3C2C3
          4841DB8C8F8EAAC3BC51D2C031D7FA018733752D00A02A91515A516E021B80DF
          800D0404E614AE554ADC79D527B6F7E46F0BA1946E0BA6D8558CCB5DAB893042
          D6AD3000146DA1A59890C1929F6030A5CD7500751833CABBAD37F4F1C40C8162
          5CCEABB0C31876171312FDFC9D9FE1A40EE2F0D1383CAF0308DC16F825CA5160
          32D4AF17E667F832D6C67828A9272C9B2985738003E41ACE607B52372F0A1994
          236E6A1CA8007BDDF34B0C67A7AFC8543D20A63ED663284835DCAF075418029A
          5D5709B83C7D55EE51A37F80767D81D082D2C528F78359FCE6079D2204AC2AB7
          3EF54985B81E02B2C0374664FF4A40429F2C2BFD35860EF232E1C23721648098
          7BFF8611D957330315E29C040658DA812A4A1AA10CF4B0F49D7308BD6C2487BB
          0B2B1709A055D761711DA113F07974E0014D749193AF8D6750ABB8EE0432C05A
          844B14E4ED7FBDABD11F4B8CAAD5B4B8228B0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000010000000100803000000282D0F
          530000006C504C54450000008080AA6D929276899D80809277889980809F7887
          9676899D7B849776899B7B88987986997B879A7986987B879A7A85997B87997A
          85987B86997A86997A87987A86997A869A7A86997A86997B86997A86997A8799
          7A86997A87997A86997A86997A86997A8699FFFFFF010CE7E00000002274524E
          530006070D0E0F10111A1B1C4F505152536B6C6D6EC6C7C8C9CDCFD0D7D8D9DA
          F2F3F43CC9915300000001624B4744232A626C3A000000724944415418198DC1
          091282301004C0C9A11101B9C4106EE6FF8F94DDE20174E31EDBC5E3F8B51697
          F7489532283B72CA9D2B662603D1717AE214163610913954C91E62A783F2DC20
          763AA8073788C802AA620FD1720E38859535844D5C4AEF3F2B07039525AAE185
          8B69FA7DFBD606B7FC017D61086BE97ABE260000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000000A749444154388DEDD0A1
          4E82011486E1E7509C5E80C58D8014ABD761A7B31F92C104741241C8C2B809A0
          CABD78096C6CB2B179280C1860701279DBD9FB9DB3B38F2B9726E3AF99FDD0C8
          39CA78338AD9D9DD46BE6080A59167224B077A81474C153951CFCACED4B3A2C8
          09A6A86275FA01145913DEF1806FA9B74DB5718BA5D0C5C030D6A707A0997768
          491DDC1C98991FAFC6F175BE83638A7C425FB857D2F2119FBF66AFFC8F0D2801
          29CD2983FA560000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA7930000003349444154388D636018
          058C30C6FF550CA71818194C89D477923194C1828181818109C9A8FF445BFB9F
          04B523008CC6C2600000BD1E0E03AB82A8620000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000006624B474400FF00FF00FFA0BDA793000001F249444154388DA5923F
          68535114C67FE7BEA828B5852282A0A2D0526349A8552C080EA238F8B72554EA
          E0A88215D3E68FD4A96F5014797D350E76290A82101A8906D1A5BBA0A009145D
          5488838398A1358328BE771CF2526D5245F42C977B0EDF77EEF7E3C27F96FC6E
          A043D13E7C330178A84948EEE58BBF32D0C1EE7624340E320C5841DB47F41EBE
          494AAEF8695903B531BCDA7116D1CB403BF005E42AB012F462EDA482708970E9
          B6D8F84B0D4EF4CC02076A170A588C48B65406D0D8CE6D58DE2D605FB0F791CC
          148F019886406F508E48AED4CF86CE8F9A8E8D697A2045245266A6B41FF414F0
          01F5D7FC11A2A662474133C0D6A0F50E888B937F5C8FDB14014047073BB0BC0C
          7028683D035600BDC1BE02216F44AE3D2CD7358B1134154B60797381B882729A
          96E81EDE5BBB41E3A09F418FF3DDBCD6D4C0852603448703D2537856974CE4A7
          695DE866EFE62E711EDCC47861200BAC0639DF6CE0CB612C898A933FC7A68DA8
          9BC820A688C79C4E26EFB2BEF39B38F993F8D28B5AFDCB4254DB36B456CF205C
          61F12F60805540059131E65BEE886DFBCD0CDCD15DB4559F234CD5C45A006F3B
          C6448059601DAAD3B4559FEA64BAA7AE0BFD646072C016E02DBEC625E93EF9E5
          7107D54D0D21EA027DE0DF073A9632506EA02458581B6910D7FC134E96AFA130
          C23870BD71FECFF5039449A8DF61106A1F0000000049454E44AE426082}
      end>
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 600
    Top = 216
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
