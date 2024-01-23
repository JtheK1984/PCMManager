object fFeiertageBerechnen: TfFeiertageBerechnen
  Left = 587
  Top = 234
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Feiertage berechnen'
  ClientHeight = 459
  ClientWidth = 422
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
  object grpbx_Design: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 459
    Width = 422
    object Bevel1: TBevel
      Left = 16
      Top = 416
      Width = 394
      Height = 2
      Shape = bsTopLine
    end
    object Bevel2: TBevel
      Left = 16
      Top = 40
      Width = 395
      Height = 2
      Shape = bsTopLine
    end
    object btn_Abort: TcxButton
      Left = 321
      Top = 424
      Width = 90
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 5
      OnClick = btn_AbortClick
    end
    object btn_Berechnen: TcxButton
      Left = 328
      Top = 12
      Width = 84
      Height = 21
      Caption = 'Berechnen'
      OptionsImage.ImageIndex = 9
      TabOrder = 2
      OnClick = btn_BerechnenClick
    end
    object btn_OK: TcxButton
      Left = 120
      Top = 424
      Width = 195
      Height = 25
      Caption = 'Gew'#228'hlte Feiertage '#252'bernehmen'
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 4
      OnClick = btn_OKClick
    end
    object cmbbx_Bundesland: TcxComboBox
      Left = 177
      Top = 12
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
      Style.BorderStyle = ebsFlat
      TabOrder = 1
      Width = 145
    end
    object edt_Jahr: TcxSpinEdit
      Left = 45
      Top = 12
      Style.BorderStyle = ebsFlat
      TabOrder = 0
      Width = 57
    end
    object GridFeiertage: TcxGrid
      Left = 16
      Top = 48
      Width = 395
      Height = 362
      Align = alCustom
      TabOrder = 3
      object tvFeiertage: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsmFeiertage
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
    object Label1: TcxLabel
      Left = 16
      Top = 13
      Caption = 'Jahr:'
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 112
      Top = 13
      Caption = 'Bundesland:'
      Transparent = True
    end
  end
  object dsmFeiertage: TDataSource
    DataSet = memData_Feiertage
    Left = 104
    Top = 352
  end
  object cxStyleRepository1: TcxStyleRepository
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
