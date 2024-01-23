object frm_PCM_KalenderFilter: Tfrm_PCM_KalenderFilter
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Kalenderfilter'
  ClientHeight = 298
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object grpbx_Design: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 298
    Width = 504
    object btn_Ok: TcxButton
      Left = 3
      Top = 270
      Width = 251
      Height = 25
      Caption = 'Ok'
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_OkClick
    end
    object btn_Cancel: TcxButton
      Left = 262
      Top = 270
      Width = 251
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_CancelClick
    end
    object grd_Stundenplanuebersicht: TcxGrid
      Left = 2
      Top = 2
      Width = 500
      Height = 263
      Align = alTop
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
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Stundenplanuebersicht: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dm_PCM.ds_Kalender_Filter
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
        object grdDBTblView_StundenplanuebersichtKalendername: TcxGridDBColumn
          DataBinding.FieldName = 'Kalendername'
          DataBinding.IsNullValueType = True
          Width = 498
        end
      end
      object grdlvl_Stundenplanuebersicht: TcxGridLevel
        GridView = grdDBTblView_Stundenplanuebersicht
      end
    end
  end
end
