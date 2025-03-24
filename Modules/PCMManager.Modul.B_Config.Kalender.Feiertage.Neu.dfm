object fFeiertageBerechnen: TfFeiertageBerechnen
  Left = 587
  Top = 234
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Feiertage berechnen'
  ClientHeight = 459
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object lactrl_FeiertageNew: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 472
    Height = 459
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitWidth = 466
    ExplicitHeight = 442
    object btn_Abort: TcxButton
      Left = 321
      Top = 424
      Width = 141
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 5
      OnClick = btn_AbortClick
    end
    object btn_Berechnen: TcxButton
      Left = 378
      Top = 10
      Width = 84
      Height = 21
      Caption = 'Berechnen'
      OptionsImage.ImageIndex = 9
      TabOrder = 2
      OnClick = btn_BerechnenClick
    end
    object btn_OK: TcxButton
      Left = 10
      Top = 424
      Width = 305
      Height = 25
      Caption = 'Gew'#228'hlte Feiertage '#252'bernehmen'
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 4
      OnClick = btn_OKClick
    end
    object cmbbx_Bundesland: TcxComboBox
      Left = 167
      Top = 10
      AutoSize = False
      Properties.Items.Strings = (
        'Baden-W'#252'rttemberg'
        'Bayern'
        'Berlin'
        'Brandenburg'
        'Bremen'
        'Hamburg'
        'Hessen'
        'Mecklenburg-Vorpommern'
        'Niedersachsen'
        'Nordrhein-Westfalen'
        'Rheinland-Pfalz'
        'Saarland'
        'Sachsen'
        'Sachsen-Anhalt'
        'Schleswig-Holstein'
        'Th'#252'ringen')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 21
      Width = 205
    end
    object edt_Jahr: TcxSpinEdit
      Left = 40
      Top = 10
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 57
    end
    object grd_FT: TcxGrid
      Left = 10
      Top = 37
      Width = 452
      Height = 381
      TabOrder = 3
      object tvFeiertage: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Feiertage
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.FocusCellOnTab = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object tvFeiertageMarked: TcxGridDBColumn
          DataBinding.FieldName = 'Uebernehmen'
          PropertiesClassName = 'TcxCheckBoxProperties'
          MinWidth = 22
          Options.HorzSizing = False
          Options.Moving = False
          Width = 22
          IsCaptionAssigned = True
        end
        object tvFeiertageFT: TcxGridDBColumn
          Caption = 'FT'
          DataBinding.FieldName = 'Typ'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          MinWidth = 35
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Styles.Content = cxStyleFT
          Width = 35
        end
        object tvFeiertageTag: TcxGridDBColumn
          DataBinding.FieldName = 'Tag'
          MinWidth = 50
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 50
        end
        object tvFeiertageMonat: TcxGridDBColumn
          DataBinding.FieldName = 'Monat'
          MinWidth = 50
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 50
        end
        object tvFeiertageKategorie: TcxGridDBColumn
          DataBinding.FieldName = 'Kategorie'
        end
        object tvFeiertageBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          MinWidth = 200
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 200
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = tvFeiertage
      end
    end
    object lactrl_FeiertageNewGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object laitm_FeiertageNewJahr: TdxLayoutItem
      Parent = lagrp_FeiertageNewDetail
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Jahr:'
      Control = edt_Jahr
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_FeiertageNewBundesland: TdxLayoutItem
      Parent = lagrp_FeiertageNewDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bundesland:'
      Control = cmbbx_Bundesland
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_FeiertageNewBerechnen: TdxLayoutItem
      Parent = lagrp_FeiertageNewDetail
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'btn_Berechnen'
      CaptionOptions.Visible = False
      Control = btn_Berechnen
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_FeiertageNewUebernehmen: TdxLayoutItem
      Parent = lagrp_FeiertageNewButtons
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'btn_OK'
      CaptionOptions.Visible = False
      Control = btn_OK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_FeiertageNewAbbrechen: TdxLayoutItem
      Parent = lagrp_FeiertageNewButtons
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'btn_Abort'
      CaptionOptions.Visible = False
      Control = btn_Abort
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_FeiertageNewGrid: TdxLayoutItem
      Parent = lagrp_FeiertageNew
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_FT'
      CaptionOptions.Visible = False
      Control = grd_FT
      ControlOptions.OriginalHeight = 362
      ControlOptions.OriginalWidth = 445
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_FeiertageNewDetail: TdxLayoutGroup
      Parent = lagrp_FeiertageNew
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_FeiertageNew: TdxLayoutGroup
      Parent = lactrl_FeiertageNewGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lagrp_FeiertageNewButtons: TdxLayoutGroup
      Parent = lagrp_FeiertageNew
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  object ds_Feiertage: TDataSource
    DataSet = memData_Feiertage
    Left = 104
    Top = 352
  end
  object stylerep_FT: TcxStyleRepository
    Left = 336
    Top = 112
    PixelsPerInch = 96
    object cxStyleFT: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Symbol'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
  end
  object memData_Feiertage: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 112
    Top = 184
    object memData_FeiertageMonat: TIntegerField
      FieldName = 'Monat'
    end
    object memData_FeiertageTag: TIntegerField
      FieldName = 'Tag'
    end
    object memData_FeiertageJahr: TIntegerField
      FieldName = 'Jahr'
    end
    object memData_FeiertageKategorie: TIntegerField
      FieldName = 'Kategorie'
    end
    object memData_FeiertageBezeichnung: TStringField
      FieldName = 'Bezeichnung'
      Size = 100
    end
    object memData_FeiertageUebernehmen: TBooleanField
      FieldName = 'Uebernehmen'
    end
    object memData_FeiertageTyp: TStringField
      FieldName = 'Typ'
      Size = 10
    end
  end
end
