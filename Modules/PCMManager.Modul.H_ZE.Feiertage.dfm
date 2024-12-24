object frm_Feiertage: Tfrm_Feiertage
  Left = 0
  Top = 0
  Caption = 'PCM - Zeiterfassung: Feiertage'
  ClientHeight = 900
  ClientWidth = 1600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object grpbx_Feiertage: TcxGroupBox
    Left = 0
    Top = 63
    Align = alClient
    Caption = 'Feiertage'
    TabOrder = 0
    Height = 837
    Width = 1600
    object grd_Feiertage: TcxGrid
      Left = 3
      Top = 17
      Width = 1594
      Height = 811
      Align = alClient
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
      object grdDBTblView_Feiertage: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_FT
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
        object grdDBTblView_FeiertageJahr: TcxGridDBColumn
          DataBinding.FieldName = 'Jahr'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 80
        end
        object grdDBTblView_FeiertageMonat: TcxGridDBColumn
          DataBinding.FieldName = 'Monat'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 80
        end
        object grdDBTblView_FeiertageTag: TcxGridDBColumn
          DataBinding.FieldName = 'Tag'
          DataBinding.IsNullValueType = True
          SortIndex = 2
          SortOrder = soAscending
          Width = 80
        end
        object grdDBTblView_FeiertageKategorie: TcxGridDBColumn
          DataBinding.FieldName = 'Kategorie'
          DataBinding.IsNullValueType = True
        end
        object grdDBTblView_FeiertageBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 200
        end
      end
      object grdlvl_Feiertage: TcxGridLevel
        GridView = grdDBTblView_Feiertage
      end
    end
  end
  object brdckCtrl_Feiertage: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1600
    Height = 63
    Align = dalTop
    BarManager = brmgr_Feiertage
  end
  object brmgr_Feiertage: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 400
    Top = 313
    PixelsPerInch = 96
    object tb_Feiertage: TdxBar
      Caption = 'tb_Feiertage'
      CaptionButtons = <>
      DockControl = brdckCtrl_Feiertage
      DockedDockControl = brdckCtrl_Feiertage
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 125
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_FeiertageNew'
        end
        item
          Visible = True
          ItemName = 'btn_FeiertageDelete'
        end
        item
          Visible = True
          ItemName = 'btn_FeiertageWrite'
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
    object btn_FeiertageNew: TdxBarLargeButton
      Caption = 'Feiertage anlegen'
      Category = 0
      Hint = 'Feiertage anlegen'
      Visible = ivAlways
      OnClick = btn_FeiertageNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_FeiertageWrite: TdxBarLargeButton
      Caption = 'Feiertage eintragen'
      Category = 0
      Hint = 'Feiertage eintragen'
      Visible = ivAlways
      OnClick = btn_FeiertageWriteClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_FeiertageDelete: TdxBarLargeButton
      Caption = 'Feiertage l'#246'schen'
      Category = 0
      Hint = 'Feiertage l'#246'schen'
      Visible = ivAlways
      OnClick = btn_FeiertageDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
  end
  object qry_FT1: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'SELECT ID,Jahr,Monat,Tag,Bezeichnung, uebertragen,Datum, ID_Benu' +
        'tzer, Kategorie'
      'FROM manager_Feiertage'
      'ORDER by Datum asc')
    Left = 224
    Top = 72
  end
  object ds_FT: TDataSource
    DataSet = qry_FT1
    Left = 224
    Top = 136
  end
end
