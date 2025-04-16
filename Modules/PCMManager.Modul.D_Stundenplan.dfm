object frm_Stundenplan: Tfrm_Stundenplan
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'frm_Stundenplan'
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
    object edt_Stundenplan_Klasse: TcxDBTextEdit
      Left = 1771
      Top = 111
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
      TabOrder = 2
      OnExit = btn_StundenplanSaveClick
      Width = 50
    end
    object edt_Stundenplan_Schule: TcxDBTextEdit
      Left = 59
      Top = 111
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
      TabOrder = 1
      OnExit = btn_StundenplanSaveClick
      Width = 1667
    end
    object edt_Stundenplan_Schuljahr: TcxDBTextEdit
      Left = 1880
      Top = 111
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
      TabOrder = 3
      OnExit = btn_StundenplanSaveClick
      Width = 100
    end
    object grd_Stundenplanuebersicht: TcxGrid
      Left = 19
      Top = 136
      Width = 1961
      Height = 81
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      TabStop = False
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
      Left = 19
      Top = 42
      Width = 1961
      Height = 63
      Align = dalNone
      BarManager = brmgr_Kalendar
    end
    object lucmbbx_Stundenplan_Dienstag: TcxDBLookupComboBox
      Left = 486
      Top = 353
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
      TabOrder = 9
      OnExit = btn_StundeSaveClick
      Width = 290
    end
    object lucmbbx_Stundenplan_Donnerstag: TcxDBLookupComboBox
      Left = 1079
      Top = 353
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
      TabOrder = 11
      OnExit = btn_StundeSaveClick
      Width = 290
    end
    object lucmbbx_Stundenplan_Freitag: TcxDBLookupComboBox
      Left = 1375
      Top = 353
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
      TabOrder = 12
      OnExit = btn_StundeSaveClick
      Width = 291
    end
    object lucmbbx_Stundenplan_Mittwoch: TcxDBLookupComboBox
      Left = 782
      Top = 353
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
      TabOrder = 10
      OnExit = btn_StundeSaveClick
      Width = 291
    end
    object lucmbbx_Stundenplan_Montag: TcxDBLookupComboBox
      Left = 189
      Top = 353
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
      TabOrder = 8
      OnExit = btn_StundeSaveClick
      Width = 291
    end
    object lucmbbx_Stundenplan_Samstag: TcxDBLookupComboBox
      Left = 1672
      Top = 353
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
      TabOrder = 13
      OnExit = btn_StundeSaveClick
      Width = 290
    end
    object tiEdt_Stundenplan_Bis: TcxDBTimeEdit
      Left = 113
      Top = 353
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
      TabOrder = 7
      OnExit = btn_StundeSaveClick
      Width = 70
    end
    object tiEdt_Stundenplan_Von: TcxDBTimeEdit
      Left = 37
      Top = 353
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
      TabOrder = 6
      OnExit = btn_StundeSaveClick
      Width = 70
    end
    object grd_StundenplanFach: TcxGrid
      Left = 28
      Top = 387
      Width = 1943
      Height = 525
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      TabStop = False
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
      Left = 28
      Top = 255
      Width = 1943
      Height = 63
      Align = dalNone
      BarManager = brmgr_Kalendar
    end
    object lactrl_KalenderGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lagrp_Stundenplan: TdxLayoutGroup
      Parent = lactrl_KalenderGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 14
      CaptionOptions.Text = 'Stundenplan'
      ShowBorder = False
      Index = 0
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
  object pm_Einnahmen: TcxGridPopupMenu
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
      end>
    Left = 1080
    Top = 464
  end
  object SaveDialog1: TdxSaveFileDialog
    Left = 365
    Top = 608
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
