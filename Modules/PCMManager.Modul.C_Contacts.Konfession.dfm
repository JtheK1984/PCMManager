object frm_PCM_Konfession: Tfrm_PCM_Konfession
  Left = 565
  Top = 212
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Konfession bearbeiten'
  ClientHeight = 243
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 25
  object grd_Konfession: TcxGrid
    Left = 0
    Top = 58
    Width = 516
    Height = 185
    Align = alClient
    BorderStyle = cxcbsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LockedStateImageOptions.Effect = lsieDark
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object grdDBTblView_Konfession: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dm_PCM.ds_Contact_Konfession
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
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
      OptionsView.GroupByBox = False
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.IndicatorWidth = 14
      object grdDBTblView_KonfessionBezeichnung: TcxGridDBColumn
        Caption = 'Konfession'
        DataBinding.FieldName = 'Bezeichnung'
        DataBinding.IsNullValueType = True
        Width = 494
      end
    end
    object grdLvl_Konfession: TcxGridLevel
      GridView = grdDBTblView_Konfession
    end
  end
  object brmgr_Konfession: TdxBarManager
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
    Left = 288
    Top = 120
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      58
      0)
    object tb_konfession: TdxBar
      Caption = 'tb_konfession'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 610
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_KonfessionNew'
        end
        item
          Visible = True
          ItemName = 'btn_KonfessionSave'
        end
        item
          Visible = True
          ItemName = 'btn_KonfessionCancel'
        end
        item
          Visible = True
          ItemName = 'btn_KonfessionDelete'
        end
        item
          Visible = True
          ItemName = 'btn_KonfessionClose'
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
    object btn_KonfessionNew: TdxBarLargeButton
      Caption = 'Konfession anlegen'
      Category = 0
      Hint = 'Konfession anlegen'
      Visible = ivAlways
      OnClick = btn_KonfessionNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
    end
    object btn_KonfessionSave: TdxBarLargeButton
      Caption = 'Konfession speichern'
      Category = 0
      Hint = 'Konfession speichern'
      Visible = ivAlways
      OnClick = btn_KonfessionSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
    end
    object btn_KonfessionClose: TdxBarLargeButton
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_KonfessionCloseClick
      AutoGrayScale = False
      LargeImageIndex = 23
    end
    object btn_KonfessionCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_KonfessionCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
    end
    object btn_KonfessionDelete: TdxBarLargeButton
      Caption = 'Konfession l'#246'schen'
      Category = 0
      Hint = 'Konfession l'#246'schen'
      Visible = ivAlways
      OnClick = btn_KonfessionDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
    end
  end
end
