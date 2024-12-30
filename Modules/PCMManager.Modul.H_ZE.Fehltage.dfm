object frm_Fehltage: Tfrm_Fehltage
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'PCM - Zeiterfassung: Fehltage'
  ClientHeight = 900
  ClientWidth = 1600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object brdckCtrl_FT: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1600
    Height = 58
    Align = dalTop
    BarManager = brmgr_Config
  end
  object grpbx_Feiertage: TcxGroupBox
    Left = 0
    Top = 58
    Align = alClient
    Caption = 'Fehltage'
    TabOrder = 1
    ExplicitTop = 63
    ExplicitHeight = 837
    Height = 842
    Width = 1600
    object grd_Feiertage: TcxGrid
      Left = 2
      Top = 180
      Width = 1596
      Height = 660
      Align = alClient
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
      ExplicitLeft = 3
      ExplicitTop = 177
      ExplicitWidth = 1594
      ExplicitHeight = 651
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
        object grdDBTblView_FeiertageKuerzel: TcxGridDBColumn
          Caption = 'K'#252'rzel'
          DataBinding.FieldName = 'Kuerzel'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_FeiertageBeschreibung: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          DataBinding.IsNullValueType = True
          Width = 300
        end
        object grdDBTblView_FeiertageTyp: TcxGridDBColumn
          Caption = 'Fehltagstyp'
          DataBinding.FieldName = 'Typ'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'Urlaub'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Krankheit'
              Value = 2
            end>
          Width = 300
        end
        object grdDBTblView_FeiertageFaktor: TcxGridDBColumn
          Caption = 'Gutschrift'
          DataBinding.FieldName = 'Faktor'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'keine Gutschrift'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Gutschrift ganzer Tag'
              Value = 1
            end
            item
              Description = 'Gutschrift halber Tag'
              Value = 2
            end>
          Width = 300
        end
        object grdDBTblView_FeiertageBezahlt: TcxGridDBColumn
          Caption = 'Sollstunden'
          DataBinding.FieldName = 'Bezahlt'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'keine Sollzeitgutschrift'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Sollzeitgutschrift'
              Value = 1
            end>
          Width = 300
        end
        object grdDBTblView_FeiertageColor: TcxGridDBColumn
          Caption = 'Termin'
          DataBinding.FieldName = 'Color'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.ColorBoxWidth = 66
          Properties.CustomColors = <>
          Properties.NamingConvention = cxncHTML4
          Width = 70
        end
        object grdDBTblView_FeiertageColorFont: TcxGridDBColumn
          Caption = 'Schrift'
          DataBinding.FieldName = 'ColorFont'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.ColorBoxWidth = 66
          Properties.CustomColors = <>
          Properties.NamingConvention = cxncHTML4
          Width = 70
        end
      end
      object grdlvl_Feiertage: TcxGridLevel
        GridView = grdDBTblView_Feiertage
      end
    end
    object grpbx_FTDetail: TcxGroupBox
      Left = 2
      Top = 20
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 0
      Height = 160
      Width = 1596
      object lbl_FTKuerzel: TcxLabel
        AlignWithMargins = True
        Left = 4
        Top = 2
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 2
        Margins.Bottom = 0
        Align = alTop
        Caption = 'K'#252'rzel:'
        Transparent = True
      end
      object edt_FTKuerzel: TcxDBTextEdit
        AlignWithMargins = True
        Left = 5
        Top = 24
        Align = alTop
        DataBinding.DataField = 'Kuerzel'
        DataBinding.DataSource = ds_FT
        TabOrder = 0
        ExplicitLeft = 6
        ExplicitTop = 25
        ExplicitWidth = 1582
        Width = 1586
      end
      object lbl_FTDesc: TcxLabel
        AlignWithMargins = True
        Left = 4
        Top = 48
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 2
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Beschreibung:'
        Transparent = True
      end
      object edt_FTDesc: TcxDBTextEdit
        AlignWithMargins = True
        Left = 5
        Top = 70
        Align = alTop
        DataBinding.DataField = 'Beschreibung'
        DataBinding.DataSource = ds_FT
        TabOrder = 1
        ExplicitLeft = 6
        ExplicitTop = 73
        ExplicitWidth = 1582
        Width = 1586
      end
      object lbl_FTTyp: TcxLabel
        Left = 6
        Top = 102
        Caption = 'Fehltagstyp:'
        Transparent = True
      end
      object lbl_FTGutschrift: TcxLabel
        Left = 223
        Top = 102
        Caption = 'Gutschrift:'
        Transparent = True
      end
      object lbl_FTSoll: TcxLabel
        Left = 443
        Top = 102
        Caption = 'Sollstunden:'
        Transparent = True
      end
      object imgcmbbx_FTSoll: TcxDBImageComboBox
        Left = 443
        Top = 127
        DataBinding.DataField = 'Bezahlt'
        DataBinding.DataSource = ds_FT
        Properties.Items = <
          item
            Description = 'keine Sollzeitgutschrift'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Sollzeitgutschrift'
            Value = 1
          end>
        TabOrder = 4
        Width = 210
      end
      object imgcmbbx_FTGutschrift: TcxDBImageComboBox
        Left = 223
        Top = 127
        DataBinding.DataField = 'Faktor'
        DataBinding.DataSource = ds_FT
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'keine Gutschrift'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = 'Gutschrift ganzer Tag'
            Value = 1
          end
          item
            Description = 'Gutschrift halber Tag'
            Value = 2
          end>
        TabOrder = 3
        Width = 214
      end
      object imgcmbbx_FTTyp: TcxDBImageComboBox
        Left = 6
        Top = 127
        DataBinding.DataField = 'Typ'
        DataBinding.DataSource = ds_FT
        Properties.Alignment.Horz = taLeftJustify
        Properties.Items = <
          item
            Description = 'Urlaub'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Krankheit'
            Value = 2
          end>
        TabOrder = 2
        Width = 210
      end
      object lbl_FTColEvent: TcxLabel
        Left = 659
        Top = 102
        Caption = 'Farbe Fehltag:'
        Transparent = True
      end
      object colcmbbx_FTEvent: TcxDBColorComboBox
        Left = 659
        Top = 127
        DataBinding.DataField = 'Color'
        DataBinding.DataSource = ds_FT
        Properties.AllowSelectColor = True
        Properties.ColorBoxWidth = 170
        Properties.CustomColors = <>
        Properties.DefaultDescription = 'Keine Farbe gew'#228'hlt'
        Properties.NamingConvention = cxncHTML4
        TabOrder = 11
        Width = 210
      end
      object colcmbbx_FTFont: TcxDBColorComboBox
        Left = 875
        Top = 127
        DataBinding.DataField = 'ColorFont'
        DataBinding.DataSource = ds_FT
        Properties.AllowSelectColor = True
        Properties.ColorBoxWidth = 170
        Properties.CustomColors = <>
        Properties.NamingConvention = cxncHTML4
        TabOrder = 12
        Width = 210
      end
      object lbl_FTColFont: TcxLabel
        Left = 875
        Top = 102
        Caption = 'Farbe Schrift:'
        Transparent = True
      end
    end
  end
  object qry_FT1: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT *'
      'FROM manager_Fehltag'
      'Where ID > 1'
      '')
    Left = 224
    Top = 72
  end
  object ds_FT: TDataSource
    DataSet = qry_FT1
    Left = 224
    Top = 136
  end
  object brmgr_Config: TdxBarManager
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
    ImageOptions.LargeImages = frm_ZE.imglst_32x32
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
      DockControl = brdckCtrl_FT
      DockedDockControl = brdckCtrl_FT
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 125
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_FTNew'
        end
        item
          Visible = True
          ItemName = 'btn_FTSave'
        end
        item
          Visible = True
          ItemName = 'btn_FTCancel'
        end
        item
          Visible = True
          ItemName = 'btn_FTDelete'
        end
        item
          Visible = True
          ItemName = 'btn_FTClose'
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
    object btn_FTNew: TdxBarLargeButton
      Caption = 'Fehltag anlegen'
      Category = 0
      Hint = 'Fehltag anlegen'
      Visible = ivAlways
      OnClick = btn_FTNewClick
      AutoGrayScale = False
      LargeImageIndex = 1
      Width = 125
    end
    object btn_FTSave: TdxBarLargeButton
      Caption = 'Fehltag speichern'
      Category = 0
      Hint = 'Fehltag speichern'
      Visible = ivAlways
      OnClick = btn_FTSaveClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 125
    end
    object btn_FTDelete: TdxBarLargeButton
      Caption = 'Fehltag l'#246'schen'
      Category = 0
      Hint = 'Fehltag l'#246'schen'
      Visible = ivAlways
      OnClick = btn_FTDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 4
      Width = 125
    end
    object btn_FTCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_FTCancelClick
      AutoGrayScale = False
      LargeImageIndex = 14
      Width = 125
    end
    object btn_FTClose: TdxBarLargeButton
      Align = iaRight
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_FTCloseClick
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 125
    end
  end
end
