object frm_Calendar: Tfrm_Calendar
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frm_Calendar'
  ClientHeight = 940
  ClientWidth = 1688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  WindowState = wsMaximized
  OnDestroy = FormDestroy
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object pnl_Design: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 940
    Width = 1688
    object pc_Kalender: TcxPageControl
      Left = 2
      Top = 2
      Width = 1684
      Height = 940
      Align = alTop
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Properties.ActivePage = ts_A_kalender
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea]
      Properties.TabSlants.Kind = skCutCorner
      Properties.TabWidth = 100
      OnClick = pc_KalenderClick
      ClientRectBottom = 940
      ClientRectRight = 1684
      ClientRectTop = 25
      object ts_A_kalender: TcxTabSheet
        Caption = 'Kalender'
        ImageIndex = 10
        object spl_Kalender: TcxSplitter
          Left = 0
          Top = 58
          Width = 8
          Height = 857
          HotZoneClassName = 'TcxSimpleStyle'
          HotZone.ArrowColor = clGrayText
          HotZone.ArrowHighlightColor = clGrayText
          HotZone.LightColor = clGrayText
          HotZone.ShadowColor = clGrayText
          HotZone.DotsColor = clGrayText
          HotZone.DotsShadowColor = clGrayText
          Color = clBlack
          ParentColor = False
          Visible = False
        end
        object brdckctrl_Kalender: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 1684
          Height = 58
          Align = dalTop
          BarManager = brmgr_Kalendar
        end
        object sched_Kalender: TcxScheduler
          Left = 8
          Top = 58
          Width = 1676
          Height = 857
          DateNavigator.RowCount = 6
          ViewDay.Active = True
          ViewDay.AlwaysShowEventTime = True
          ViewDay.TimeRulerMinutes = True
          ViewDay.WorkTimeOnly = True
          OnCustomDrawDayHeader = sched_KalenderCustomDrawDayHeader
          OnCustomDrawEvent = sched_KalenderCustomDrawEvent
          Align = alClient
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
          OptionsView.Style = svsClassic
          OptionsView.WorkStart = 0.291666666666666700
          OptionsView.WorkFinish = 0.833333333333333400
          ResourceNavigator.Buttons.First.Visible = False
          ResourceNavigator.Buttons.Last.Visible = False
          ResourceNavigator.Buttons.ShowFewerResources.Visible = False
          ResourceNavigator.Buttons.ShowMoreResources.Visible = False
          ResourceNavigator.ShowButtons = False
          ResourceNavigator.Visibility = snvNever
          Storage = schedDBStrg_Kalender
          TabOrder = 2
          OnBeforeDragEvent = sched_KalenderBeforeDragEvent
          OnBeforeSizingEvent = sched_KalenderBeforeSizingEvent
          OnClick = sched_KalenderClick
          OnDblClick = sched_KalenderDblClick
          OnGetEventEditProperties = sched_KalenderGetEventEditProperties
          OnGetEventHintText = sched_KalenderGetEventHintText
          OnKeyDown = sched_KalenderKeyDown
          Selection = 7
          Splitters = {
            950000007E0000008406000083000000F705000001000000FC05000058030000}
          StoredClientBounds = {01000000010000008B06000058030000}
        end
      end
      object ts_B_Aufgaben: TcxTabSheet
        Caption = 'Aufgaben'
        ImageIndex = 58
        object cxTreeList1: TcxTreeList
          Left = 0
          Top = 0
          Width = 1684
          Height = 107
          Align = alTop
          Bands = <
            item
            end>
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          TabOrder = 1
          OnClick = cxTreeList1Click
          ExplicitWidth = 1676
          Data = {
            00000500200100000F00000044617461436F6E74726F6C6C6572310200000012
            000000546378537472696E6756616C7565547970651200000054637853747269
            6E6756616C75655479706503000000445855464D5400000400000041006C006C
            00650001445855464D5400001400000041007500660067006100620065006E00
            200075006E00640020005400650072006D0069006E0065000001000000300044
            5855464D5400000B0000004E006100630068007200690063006800740065006E
            00000100000030000300000000000000080A0200000002000000FFFFFFFFFFFF
            FFFFFFFFFFFF0100000008080400000004000000FFFFFFFFFFFFFFFFFFFFFFFF
            02000000080A0300000003000000FFFFFFFFFFFFFFFFFFFFFFFF1A0803000000}
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
            SortOrder = soAscending
            SortIndex = 0
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
          Left = 0
          Top = 107
          Width = 1684
          Height = 58
          Align = dalTop
          BarManager = brmgr_Kalendar
        end
        object cxGroupBox5: TcxGroupBox
          Left = 0
          Top = 165
          Align = alClient
          PanelStyle.Active = True
          Style.BorderStyle = ebsNone
          TabOrder = 0
          ExplicitWidth = 1674
          ExplicitHeight = 736
          Height = 750
          Width = 1684
          object cxGrid1: TcxGrid
            Left = 2
            Top = 32
            Width = 1680
            Height = 388
            Align = alClient
            TabOrder = 1
            LookAndFeel.NativeStyle = False
            ExplicitWidth = 1672
            ExplicitHeight = 384
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
              Styles.Selection = cxStyle1
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
          object cxSplitter1: TcxSplitter
            Left = 2
            Top = 420
            Width = 1680
            Height = 8
            HotZoneClassName = 'TcxSimpleStyle'
            AlignSplitter = salBottom
            Control = pnlDetails
            ExplicitTop = 416
            ExplicitWidth = 8
          end
          object pnlDetails: TcxGroupBox
            Left = 2
            Top = 428
            Align = alBottom
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 2
            ExplicitTop = 424
            ExplicitWidth = 1668
            Height = 320
            Width = 1680
            object cxGroupBox8: TcxGroupBox
              Left = 2
              Top = 2
              Align = alTop
              PanelStyle.Active = True
              Style.BorderStyle = ebsNone
              TabOrder = 0
              ExplicitWidth = 1662
              Height = 62
              Width = 1676
              object Label2: TLabel
                Left = 0
                Top = 8
                Width = 38
                Height = 13
                Caption = 'Betreff:'
              end
              object Label5: TLabel
                Left = 540
                Top = 8
                Width = 85
                Height = 13
                Caption = 'Ansprechpartner:'
              end
              object Label6: TLabel
                Left = 0
                Top = 37
                Width = 43
                Height = 13
                Caption = 'Adresse:'
              end
              object Label8: TLabel
                Left = 540
                Top = 35
                Width = 71
                Height = 13
                Caption = 'Jira Ticket-Nr.:'
              end
              object cxDBTextEdit6: TcxDBTextEdit
                Left = 76
                Top = 5
                TabStop = False
                DataBinding.DataField = 'Caption'
                DataBinding.DataSource = dm_PCM.ds_Kalender_Aufgaben
                ParentFont = False
                Properties.ReadOnly = True
                Style.TransparentBorder = True
                TabOrder = 1
                Width = 441
              end
              object btnGoToJira: TcxButton
                Left = 1045
                Top = 32
                Width = 25
                Height = 21
                OptionsImage.ImageIndex = 47
                OptionsImage.Images = dm_PCM.imglst_16x16
                TabOrder = 0
                OnClick = btnGoToJiraClick
              end
              object edtJiraTicketNr: TcxDBTextEdit
                Left = 629
                Top = 32
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
                Style.LookAndFeel.NativeStyle = False
                Style.TransparentBorder = True
                Style.IsFontAssigned = True
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 4
                Width = 410
              end
              object cxDBTextEdit4: TcxDBLookupComboBox
                Left = 76
                Top = 34
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
                Style.LookAndFeel.NativeStyle = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 3
                Width = 441
              end
              object cbxAns: TcxDBLookupComboBox
                Left = 629
                Top = 5
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
                Style.TransparentBorder = True
                TabOrder = 2
                Width = 441
              end
            end
            object cxDBMemo1: TcxDBRichEdit
              Left = 2
              Top = 64
              Align = alClient
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
              Style.IsFontAssigned = True
              TabOrder = 1
              ExplicitWidth = 1475
              ExplicitHeight = 252
              Height = 254
              Width = 1486
            end
            object cxSplitter4: TcxSplitter
              Left = 1488
              Top = 64
              Width = 8
              Height = 254
              HotZoneClassName = 'TcxSimpleStyle'
              Control = pAnhaenge
              ExplicitLeft = 1480
            end
            object pAnhaenge: TcxGroupBox
              Left = 1496
              Top = 64
              Align = alRight
              PanelStyle.Active = True
              Style.BorderStyle = ebsNone
              TabOrder = 3
              ExplicitLeft = 1488
              ExplicitHeight = 252
              Height = 254
              Width = 182
              object cxGrid5: TcxGrid
                Left = 2
                Top = 2
                Width = 178
                Height = 208
                Align = alClient
                TabOrder = 0
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
              object cxGroupBox11: TcxGroupBox
                Left = 2
                Top = 210
                Align = alBottom
                PanelStyle.Active = True
                Style.BorderStyle = ebsNone
                TabOrder = 1
                ExplicitWidth = 176
                Height = 42
                Width = 178
                object lTypeName: TcxLabel
                  Left = 34
                  Top = 2
                  Align = alLeft
                  AutoSize = False
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -8
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Properties.WordWrap = True
                  Transparent = True
                  Height = 38
                  Width = 90
                end
                object Image1: TcxImage
                  Left = 2
                  Top = 2
                  Align = alLeft
                  AutoSize = True
                  Properties.FitMode = ifmNormal
                  Properties.GraphicTransparency = gtTransparent
                  Style.BorderStyle = ebsNone
                  TabOrder = 1
                  Transparent = True
                  ExplicitHeight = 36
                  Height = 38
                  Width = 32
                end
                object cxButton1: TcxButton
                  AlignWithMargins = True
                  Left = 153
                  Top = 8
                  Width = 23
                  Height = 26
                  Margins.Left = 0
                  Margins.Top = 6
                  Margins.Right = 0
                  Margins.Bottom = 6
                  Align = alRight
                  OptionsImage.ImageIndex = 27
                  OptionsImage.Images = dm_PCM.imglst_16x16
                  PaintStyle = bpsGlyph
                  TabOrder = 2
                  OnClick = cxButton1Click
                end
                object cxButton2: TcxButton
                  AlignWithMargins = True
                  Left = 130
                  Top = 8
                  Width = 23
                  Height = 26
                  Margins.Left = 0
                  Margins.Top = 6
                  Margins.Right = 0
                  Margins.Bottom = 6
                  Align = alRight
                  LookAndFeel.NativeStyle = False
                  OptionsImage.ImageIndex = 26
                  OptionsImage.Images = dm_PCM.imglst_16x16
                  PaintStyle = bpsGlyph
                  TabOrder = 3
                  OnClick = cxButton2Click
                end
              end
            end
          end
          object cxGroupBox3: TcxGroupBox
            Left = 2
            Top = 2
            Align = alTop
            PanelStyle.Active = True
            Style.BorderStyle = ebsFlat
            TabOrder = 0
            ExplicitWidth = 1668
            Height = 30
            Width = 1680
            object cxImage1: TcxImage
              Left = 2
              Top = 2
              Align = alLeft
              AutoSize = True
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
              Style.BorderStyle = ebsNone
              Style.HotTrack = True
              StyleFocused.BorderStyle = ebsNone
              StyleHot.BorderStyle = ebsNone
              TabOrder = 0
              Transparent = True
            end
            object edSuche: TcxButtonEdit
              Left = 22
              Top = 2
              Align = alClient
              AutoSize = False
              Properties.Buttons = <
                item
                  Default = True
                  ImageIndex = 6
                  Kind = bkGlyph
                end>
              Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
              Properties.OnChange = edSuchePropertiesChange
              Style.ButtonStyle = btsFlat
              TabOrder = 1
              OnEnter = edSucheEnter
              OnExit = edSucheExit
              ExplicitWidth = 1642
              ExplicitHeight = 24
              Height = 26
              Width = 1656
            end
          end
        end
      end
      object ts_C_Stundenplan: TcxTabSheet
        Caption = 'Stundenplan'
        ImageIndex = 14
        object grpbx_Stundenplanuebersicht: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = 'Stundenplan'#252'bersicht'
          TabOrder = 0
          Height = 201
          Width = 1684
          object edt_Stundenplan_Klasse: TcxDBTextEdit
            Left = 838
            Top = 87
            DataBinding.DataField = 'Klasse'
            DataBinding.DataSource = ds_Stundenplan
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            OnExit = btn_StundenplanSaveClick
            Width = 50
          end
          object edt_Stundenplan_Schule: TcxDBTextEdit
            Left = 49
            Top = 87
            DataBinding.DataField = 'Schule'
            DataBinding.DataSource = ds_Stundenplan
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            OnExit = btn_StundenplanSaveClick
            Width = 728
          end
          object edt_Stundenplan_Schuljahr: TcxDBTextEdit
            Left = 964
            Top = 87
            DataBinding.DataField = 'Schuljahr'
            DataBinding.DataSource = ds_Stundenplan
            ParentFont = False
            Style.BorderStyle = ebsFlat
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 2
            OnExit = btn_StundenplanSaveClick
            Width = 100
          end
          object grd_Stundenplanuebersicht: TcxGrid
            Left = 2
            Top = 118
            Width = 1680
            Height = 81
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
            TabOrder = 3
            TabStop = False
            LockedStateImageOptions.Effect = lsieDark
            ExplicitWidth = 1672
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
          object lbl_Stundenplan_Klasse: TcxLabel
            Left = 798
            Top = 88
            Caption = 'Klasse:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object lbl_Stundenplan_Schule: TcxLabel
            Left = 8
            Top = 90
            Caption = 'Schule:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object lbl_Stundenplan_Schuljahr: TcxLabel
            Left = 910
            Top = 88
            Caption = 'Schuljahr:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Transparent = True
          end
          object brdckctrl_Stundenplan: TdxBarDockControl
            Left = 2
            Top = 18
            Width = 1680
            Height = 58
            Align = dalTop
            BarManager = brmgr_Kalendar
          end
        end
        object grpbx_Schulstunde: TcxGroupBox
          Left = 0
          Top = 201
          Align = alClient
          Caption = 'Stundenplan'
          TabOrder = 1
          Height = 714
          Width = 1684
          object pnl_Stundenplandetail: TcxGroupBox
            Left = 2
            Top = 76
            Align = alTop
            PanelStyle.Active = True
            TabOrder = 0
            ExplicitTop = 81
            ExplicitWidth = 1670
            Height = 60
            Width = 1680
            object lbl_Stundenplan_Bis: TcxLabel
              Left = 82
              Top = 8
              Caption = 'Ende:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Stundenplan_Dienstag: TcxLabel
              Left = 300
              Top = 8
              Caption = 'Dienstag:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Stundenplan_Donnerstag: TcxLabel
              Left = 588
              Top = 8
              Caption = 'Donnerstag:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Stundenplan_Freitag: TcxLabel
              Left = 732
              Top = 8
              Caption = 'Freitag:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Stundenplan_Mittwoch: TcxLabel
              Left = 444
              Top = 8
              Caption = 'Mittwoch:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Stundenplan_Montag: TcxLabel
              Left = 158
              Top = 8
              Caption = 'Montag:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Stundenplan_Samstag: TcxLabel
              Left = 876
              Top = 8
              Caption = 'Samstag:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lbl_Stundenplan_Von: TcxLabel
              Left = 8
              Top = 8
              Caption = 'Beginn:'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Transparent = True
            end
            object lucmbbx_Stundenplan_Dienstag: TcxDBLookupComboBox
              Left = 300
              Top = 27
              DataBinding.DataField = 'Dienstag'
              DataBinding.DataSource = ds_Stundenplan_detail
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dsSchulFaecher
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              OnExit = btn_StundeSaveClick
              Width = 130
            end
            object lucmbbx_Stundenplan_Donnerstag: TcxDBLookupComboBox
              Left = 588
              Top = 27
              DataBinding.DataField = 'Donnerstag'
              DataBinding.DataSource = ds_Stundenplan_detail
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dsSchulFaecher
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 5
              OnExit = btn_StundeSaveClick
              Width = 130
            end
            object lucmbbx_Stundenplan_Freitag: TcxDBLookupComboBox
              Left = 732
              Top = 27
              DataBinding.DataField = 'Freitag'
              DataBinding.DataSource = ds_Stundenplan_detail
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dsSchulFaecher
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 6
              OnExit = btn_StundeSaveClick
              Width = 130
            end
            object lucmbbx_Stundenplan_Mittwoch: TcxDBLookupComboBox
              Left = 444
              Top = 27
              DataBinding.DataField = 'Mittwoch'
              DataBinding.DataSource = ds_Stundenplan_detail
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dsSchulFaecher
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 4
              OnExit = btn_StundeSaveClick
              Width = 130
            end
            object lucmbbx_Stundenplan_Montag: TcxDBLookupComboBox
              Left = 158
              Top = 27
              DataBinding.DataField = 'Montag'
              DataBinding.DataSource = ds_Stundenplan_detail
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dsSchulFaecher
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 2
              OnExit = btn_StundeSaveClick
              Width = 130
            end
            object lucmbbx_Stundenplan_Samstag: TcxDBLookupComboBox
              Left = 876
              Top = 27
              DataBinding.DataField = 'Samstag'
              DataBinding.DataSource = ds_Stundenplan_detail
              ParentFont = False
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dsSchulFaecher
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 7
              OnExit = btn_StundeSaveClick
              Width = 130
            end
            object tiEdt_Stundenplan_Bis: TcxDBTimeEdit
              Left = 82
              Top = 27
              DataBinding.DataField = 'End'
              DataBinding.DataSource = ds_Stundenplan_detail
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              OnExit = btn_StundeSaveClick
              Width = 70
            end
            object tiEdt_Stundenplan_Von: TcxDBTimeEdit
              Left = 8
              Top = 27
              DataBinding.DataField = 'Begin'
              DataBinding.DataSource = ds_Stundenplan_detail
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnExit = btn_StundeSaveClick
              Width = 70
            end
          end
          object grd_StundenplanFach: TcxGrid
            Left = 2
            Top = 136
            Width = 1680
            Height = 576
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
            TabOrder = 1
            TabStop = False
            LockedStateImageOptions.Effect = lsieDark
            ExplicitWidth = 1672
            ExplicitHeight = 572
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
            Left = 2
            Top = 18
            Width = 1680
            Height = 58
            Align = dalTop
            BarManager = brmgr_Kalendar
          end
        end
      end
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseF10ForMenu = False
    UseSystemFont = True
    Left = 1205
    Top = 347
    PixelsPerInch = 96
    object tb_Calendar: TdxBar
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
          ItemName = 'dxBarLargeButton12'
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
      Caption = 'Neuer Termin'
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
      Caption = '&Monat'
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
      Caption = '&Woche'
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
      Caption = '&Arbeitswoche'
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
      Caption = '&Tag'
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
      Caption = '&Jahr'
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
      Caption = 'Ag&enda'
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
      Caption = '&Ganzer Tag'
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
      Caption = '&Zur'#252'ck'
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
      Caption = '&Vor'
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
      Caption = '&Filter'
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
      Caption = '&Drucken'
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
      Caption = '&Import/Export'
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
      Caption = '&max. Ansicht'
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
      Caption = 'Stunde a&nlegen'
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
      Caption = 'Stunde &l'#246'schen'
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
      Caption = '&Abbrechen'
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
    object dxBarLargeButton12: TdxBarLargeButton
      Align = iaRight
      Caption = '&max. Ansicht'
      Category = 0
      Hint = 'max. Ansicht'
      Visible = ivNever
      OnClick = dxBarLargeButton12Click
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
      Caption = '&Import/Export'
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
  object comp_EditRepository: TcxEditRepository
    Left = 1067
    Top = 88
    PixelsPerInch = 96
    object riEvent: TcxEditRepositoryRichItem
    end
  end
  object compPrint_Cal: TdxComponentPrinter
    CurrentLink = compPrint_CalLink1
    PreviewOptions.WindowState = wsMaximized
    Version = 0
    Left = 1067
    Top = 152
    PixelsPerInch = 96
    object compPrint_CalLink1: TcxSchedulerReportLink
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
      ReportDocument.CreationDate = 45246.574747627320000000
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 744
    Top = 440
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11556864
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
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
end
