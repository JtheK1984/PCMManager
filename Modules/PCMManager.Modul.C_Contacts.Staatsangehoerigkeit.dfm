object frm_PCM_Staatsangehoerigkeit: Tfrm_PCM_Staatsangehoerigkeit
  Left = 565
  Top = 212
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Staatsangeh'#246'rigkeit bearbeiten'
  ClientHeight = 244
  ClientWidth = 658
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 25
  object grd_Staatsangehoerigkeit: TcxGrid
    Left = 0
    Top = 63
    Width = 658
    Height = 181
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
    ExplicitTop = 0
    ExplicitHeight = 244
    object grdDBTblView_Staatsangehoerigkeit: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeDialog = False
      ScrollbarAnnotations.CustomAnnotations = <>
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
      object grdDBTblView_StaatsangehoerigkeitBezeichnung: TcxGridDBColumn
        Caption = 'Staatsangeh'#246'rigkeit'
        DataBinding.FieldName = 'Bezeichnung'
        DataBinding.IsNullValueType = True
        Width = 632
      end
    end
    object grdlvl_Staatsangehoerigkeit: TcxGridLevel
      GridView = grdDBTblView_Staatsangehoerigkeit
    end
  end
  object brmgr_Staatsangehoerigkeit: TdxBarManager
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
    Left = 392
    Top = 120
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      63
      0)
    object tb_Staatsangehoerigkeit: TdxBar
      Caption = 'tb_Staatsangehoerigkeit'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 830
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_StaatsangehoerigkeitNew'
        end
        item
          Visible = True
          ItemName = 'btn_StaatsangehoerigkeitSave'
        end
        item
          Visible = True
          ItemName = 'btn_StaatsangehoerigkeitCancel'
        end
        item
          Visible = True
          ItemName = 'btn_StaatsangehoerigkeitDelete'
        end
        item
          Visible = True
          ItemName = 'btn_StaatsangehoerigkeitClose'
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
    object btn_StaatsangehoerigkeitNew: TdxBarLargeButton
      Caption = 'Staatsangeh'#246'rigkeit anlegen'
      Category = 0
      Hint = 'Staatsangeh'#246'rigkeit anlegen'
      Visible = ivAlways
      OnClick = btn_StaatsangehoerigkeitNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
    end
    object btn_StaatsangehoerigkeitCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_StaatsangehoerigkeitCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
    end
    object btn_StaatsangehoerigkeitSave: TdxBarLargeButton
      Caption = 'Staatsangeh'#246'rigkeit speichern'
      Category = 0
      Hint = 'Staatsangeh'#246'rigkeit speichern'
      Visible = ivAlways
      OnClick = btn_StaatsangehoerigkeitSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
    end
    object btn_StaatsangehoerigkeitClose: TdxBarLargeButton
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_StaatsangehoerigkeitCloseClick
      AutoGrayScale = False
      LargeImageIndex = 23
    end
    object btn_StaatsangehoerigkeitDelete: TdxBarLargeButton
      Caption = 'Staatsangeh'#246'rigkeit l'#246'schen'
      Category = 0
      Hint = 'Staatsangeh'#246'rigkeit l'#246'schen'
      Visible = ivAlways
      OnClick = btn_StaatsangehoerigkeitDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
    end
  end
end
