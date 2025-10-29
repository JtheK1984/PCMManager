object frm_Aufgaben: Tfrm_Aufgaben
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frm_Aufgaben'
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
    Top = 132
    Width = 1999
    Height = 808
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    object trlst_Aufgaben: TcxTreeList
      Left = 10
      Top = 10
      Width = 1979
      Height = 107
      Bands = <
        item
        end>
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
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
    object cxGrid1: TcxGrid
      Left = 10
      Top = 173
      Width = 1979
      Height = 301
      TabOrder = 3
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
        object tvNachrichtenAdresse: TcxGridDBColumn
          DataBinding.FieldName = 'Adresse'
          Width = 250
        end
        object tvNachrichtenAsnprechpartner: TcxGridDBColumn
          DataBinding.FieldName = 'Asnprechpartner'
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
      Left = 58
      Top = 480
      TabStop = False
      DataBinding.DataField = 'Caption'
      DataBinding.DataSource = dm_PCM.ds_Kalender_Aufgaben
      ParentFont = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 893
    end
    object cbxAns: TcxDBLookupComboBox
      Left = 1047
      Top = 480
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
      TabOrder = 6
      Width = 942
    end
    object cxDBMemo1: TcxDBRichEdit
      Left = 10
      Top = 546
      DataBinding.DataField = 'Message'
      DataBinding.DataSource = dm_PCM.ds_Kalender_Aufgaben
      ParentFont = False
      Properties.AutoURLDetect = True
      Properties.PlainText = True
      Properties.ScrollBars = ssVertical
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Courier New'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Height = 252
      Width = 1797
    end
    object cxGrid5: TcxGrid
      Left = 1813
      Top = 546
      Width = 176
      Height = 214
      TabOrder = 9
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
      Left = 1813
      Top = 766
      Properties.FitMode = ifmNormal
      Properties.GraphicTransparency = gtTransparent
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Transparent = True
      Height = 32
      Width = 32
    end
    object btn_AttachementSave: TcxButton
      AlignWithMargins = True
      Left = 1966
      Top = 766
      Width = 23
      Height = 24
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      OptionsImage.ImageIndex = 27
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 12
      OnClick = btn_AttachementSaveClick
    end
    object btn_AttachementOpen: TcxButton
      AlignWithMargins = True
      Left = 1937
      Top = 766
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
      TabOrder = 11
      OnClick = btn_AttachementOpenClick
    end
    object img_search: TcxImage
      Left = 19
      Top = 140
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
      TabOrder = 1
      Transparent = True
      Height = 24
      Width = 24
    end
    object edt_Suche: TcxButtonEdit
      Left = 49
      Top = 140
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
      TabOrder = 2
      OnEnter = edt_SucheEnter
      OnExit = edt_SucheExit
      Height = 24
      Width = 1931
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 58
      Top = 507
      DataBinding.DataField = 'Adresse'
      DataBinding.DataSource = dm_PCM.ds_Kalender_Aufgaben
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 893
    end
    object edtJiraTicketNr: TcxDBButtonEdit
      Left = 1047
      Top = 505
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 47
          Kind = bkGlyph
        end>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 942
    end
    object lactrl_KalenderGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lagrp_Aufgaben: TdxLayoutGroup
      Parent = lactrl_KalenderGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 58
      CaptionOptions.Text = 'Aufgaben'
      ItemIndex = 3
      ShowBorder = False
      Index = 0
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
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = lagrp_Aufgaben
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Top = -6
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
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 24
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
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Jira-Ticketnr.:'
      Control = edtJiraTicketNr
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
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
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
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
    object lTypeName: TdxLayoutLabeledItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      Index = 1
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Adresse:'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = lagrp_Aufgaben
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      AllowCloseOnClick = True
      Index = 1
    end
    object dxLayoutSplitterItem2: TdxLayoutSplitterItem
      Parent = lagrp_Aufgaben
      AlignVert = avBottom
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      AllowCloseOnClick = True
      Index = 5
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1999
    Height = 132
    BarManager = brmgr_Kalendar
    Style = rsOffice365
    ColorSchemeName = 'Colorful'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Aufgaben'
      Groups = <
        item
          Caption = 'Aufgaben'
          ToolbarName = 'tb_Aufgaben'
        end
        item
          ToolbarName = 'tb_Filter'
        end
        item
          Caption = 'Ansicht'
          ToolbarName = 'tb_Ansicht'
        end>
      Index = 0
    end
    object dxRibbon1Tab4: TdxRibbonTab
      Caption = 'Import / Export'
      Groups = <
        item
          ToolbarName = 'tb_ImportExport'
        end>
      Index = 1
    end
  end
  object brpmm_ContextCalender: TdxBarPopupMenu
    BarManager = brmgr_Kalendar
    ItemLinks = <>
    UseOwnFont = False
    Left = 1208
    Top = 456
    PixelsPerInch = 96
  end
  object brpmm_EventCalender: TdxBarPopupMenu
    BarManager = brmgr_Kalendar
    ItemLinks = <>
    UseOwnFont = False
    Left = 1208
    Top = 560
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
    UseF10ForMenu = False
    UseSystemFont = True
    Left = 1205
    Top = 347
    PixelsPerInch = 96
    object tb_Aufgaben: TdxBar
      Caption = 'Aufgaben'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 2011
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
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tb_Filter: TdxBar
      Caption = 'Filter'
      CaptionButtons = <>
      DockedLeft = 382
      DockedTop = 0
      FloatLeft = 2011
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
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
          ItemName = 'btn_JobsRefresh'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tb_ImportExport: TdxBar
      Caption = 'Import / Export'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 2011
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'pmmbtn_JobsImportOutlook'
        end
        item
          Visible = True
          ItemName = 'pmmbtn_JobsExportOutlook'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tb_Ansicht: TdxBar
      Caption = 'Ansicht'
      CaptionButtons = <>
      DockedLeft = 645
      DockedTop = 0
      FloatLeft = 2011
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_taskMinMax'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_MonatsAnsicht: TdxBarButton
      Caption = 'Monatsansicht'
      Category = 0
      Visible = ivAlways
      ImageIndex = 67
    end
    object btn_NewMessage: TdxBarLargeButton
      Caption = 'Neue &Nachricht'
      Category = 0
      Hint = 'Neue Nachricht'
      Visible = ivAlways
      OnClick = btn_NewMessageClick
      LargeImageIndex = 129
    end
    object btn_NewTask: TdxBarLargeButton
      Caption = 'Neue &Aufgabe'
      Category = 0
      Hint = 'Neue Aufgabe'
      Visible = ivAlways
      OnClick = btn_NewTaskClick
      LargeImageIndex = 128
    end
    object btn_NewEvent: TdxBarLargeButton
      Caption = 'Neuer &Termin'
      Category = 0
      Hint = 'Neuer Termin'
      Visible = ivAlways
      OnClick = btn_NewEventClick
      LargeImageIndex = 127
    end
    object btn_JobChange: TdxBarLargeButton
      Caption = 'Eintrag &'#228'ndern'
      Category = 0
      Hint = 'Eintrag '#228'ndern'
      Visible = ivAlways
      OnClick = btn_JobChangeClick
      LargeImageIndex = 125
    end
    object btn_ReadJob: TdxBarLargeButton
      Caption = 'Eintrag &gelesen'
      Category = 0
      Hint = 'Eintrag gelesen'
      Visible = ivAlways
      OnClick = btn_ReadJobClick
      LargeImageIndex = 126
    end
    object btn_DoneJob: TdxBarLargeButton
      Caption = 'Eintrag &bearbeitet'
      Category = 0
      Hint = 'Eintrag bearbeitet'
      Visible = ivAlways
      OnClick = btn_DoneJobClick
      LargeImageIndex = 123
    end
    object btn_JobUndone: TdxBarLargeButton
      Caption = 'Unbearbeitet'
      Category = 0
      Enabled = False
      Hint = 'Unbearbeitet'
      Visible = ivAlways
      OnClick = btn_JobUndoneClick
      LargeImageIndex = 124
    end
    object btn_JobsDone: TdxBarLargeButton
      Caption = 'bearbeitete Aufgaben'
      Category = 0
      Hint = 'bearbeitete Aufgaben'
      Visible = ivAlways
      OnClick = btn_JobsDoneClick
      LargeImageIndex = 123
    end
    object btn_JobsRefresh: TdxBarLargeButton
      Caption = 'Aufgaben &aktualisieren'
      Category = 0
      Hint = 'Aufgaben aktualisieren'
      Visible = ivAlways
      OnClick = btn_JobsRefreshClick
      LargeImageIndex = 6
    end
    object btn_taskMinMax: TdxBarLargeButton
      Caption = '&max. Ansicht'
      Category = 0
      Hint = 'max. Ansicht'
      Visible = ivAlways
      OnClick = btn_taskMinMaxClick
      LargeImageIndex = 32
    end
    object pmmbtn_JobsImportOutlook: TdxBarLargeButton
      Caption = 'Import Outlook'
      Category = 0
      Hint = 'Import Outlook'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
        7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
        37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
        373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
        233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
        696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
        74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
        643D224F75746C6F6F6B496D706F7274223E0D0A09093C706F6C79676F6E2063
        6C6173733D22477265656E2220706F696E74733D2233322C342032342C342032
        342C302031362C362032342C31322032342C382033322C38202623393B222F3E
        0D0A09093C7061746820636C6173733D22426C75652220643D224D32352C3134
        48313456384C302C31322E325632386C31342C34762D3668313163302E352C30
        2C312D302E352C312D315631354332362C31342E352C32352E352C31342C3235
        2C31347A204D392E322C32322E3943382E362C32332E362C372E392C32342C37
        2C323420202623393B2623393B632D302E392C302D312E362D302E342D322E32
        2D312E3143342E332C32322E322C342C32312E332C342C32302E3163302D312E
        322C302E332D322E322C302E382D3343352E342C31362E342C362E312C31362C
        372E312C313663302E392C302C312E362C302E342C322E312C312E3120202623
        393B2623393B63302E352C302E372C302E382C312E372C302E382C322E384331
        302C32312E322C392E372C32322E322C392E322C32322E397A204D31342C3136
        68396C2D362C346C2D332D325631367A204D32342C3234483134762D346C332C
        326C372D342E365632347A204D382E342C31372E3920202623393B2623393B63
        302E332C302E352C302E352C312E322C302E352C322E3163302C302E392D302E
        322C312E362D302E352C322E31632D302E332C302E352D302E382C302E382D31
        2E342C302E38632D302E362C302D312D302E332D312E342D302E3853352E312C
        32302E392C352E312C323020202623393B2623393B63302D302E392C302E322D
        312E362C302E352D322E3143362C31372E342C362E352C31372E312C372C3137
        2E3143372E362C31372E312C382E312C31372E342C382E342C31372E397A222F
        3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OnClick = pmmbtn_JobsImportOutlookClick
    end
    object pmmbtn_JobsExportOutlook: TdxBarLargeButton
      Caption = 'Export Outlook'
      Category = 0
      Hint = 'Export Outlook'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
        7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
        37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
        373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
        233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
        696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
        74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
        643D224F75746C6F6F6B4578706F7274223E0D0A09093C706F6C79676F6E2063
        6C6173733D22477265656E2220706F696E74733D2231362C342032342C342032
        342C302033322C362032342C31322032342C382031362C38202623393B222F3E
        0D0A09093C7061746820636C6173733D22426C75652220643D224D32352C3134
        48313456384C302C31322E325632386C31342C34762D3668313163302E352C30
        2C312D302E352C312D315631354332362C31342E352C32352E352C31342C3235
        2C31347A204D392E322C32322E3943382E362C32332E362C372E392C32342C37
        2C323420202623393B2623393B632D302E392C302D312E362D302E342D322E32
        2D312E3143342E332C32322E322C342C32312E332C342C32302E3163302D312E
        322C302E332D322E322C302E382D3343352E342C31362E342C362E312C31362C
        372E312C313663302E392C302C312E362C302E342C322E312C312E3120202623
        393B2623393B63302E352C302E372C302E382C312E372C302E382C322E384331
        302C32312E322C392E372C32322E322C392E322C32322E397A204D31342C3136
        68396C2D362C346C2D332D325631367A204D32342C3234483134762D346C332C
        326C372D342E365632347A204D382E342C31372E3920202623393B2623393B63
        302E332C302E352C302E352C312E322C302E352C322E3163302C302E392D302E
        322C312E362D302E352C322E31632D302E332C302E352D302E382C302E382D31
        2E342C302E38632D302E362C302D312D302E332D312E342D302E3853352E312C
        32302E392C352E312C323020202623393B2623393B63302D302E392C302E322D
        312E362C302E352D322E3143362C31372E342C362E352C31372E312C372C3137
        2E3143372E362C31372E312C382E312C31372E342C382E342C31372E397A222F
        3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OnClick = pmmbtn_JobsExportOutlookClick
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'bearbeitete Aufgaben'
      Category = 0
      Hint = 'bearbeitete Aufgaben'
      Visible = ivAlways
      LargeImageIndex = 123
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Aufgaben &aktualisieren'
      Category = 0
      Hint = 'Aufgaben aktualisieren'
      Visible = ivAlways
      LargeImageIndex = 6
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
  end
  object qry_Stundenplan: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID,Schule,Klasse,Schuljahr,ID_Benutzer From manager_Stund' +
        'enplan')
    Left = 287
    Top = 456
  end
  object qry_Stundenplan_detail: TFDQuery
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
  object qry_SchulFaecher: TFDQuery
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
      ReportDocument.CreationDate = 45763.598948518520000000
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
    ItemLinks = <>
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
  object schedDBStrg_Kalender: TcxSchedulerDBStorage
    Reminders.Active = False
    Reminders.ReminderWindowLookAndFeel.NativeStyle = False
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
end
