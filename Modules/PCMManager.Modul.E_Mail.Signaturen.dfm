object frm_Signatur: Tfrm_Signatur
  Left = 0
  Top = 0
  Caption = 'PCM-Manager: E-Mail Signaturen'
  ClientHeight = 1050
  ClientWidth = 1800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object lactrl_Signatur: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1800
    Height = 1050
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OnExit = ValueExit
    ExplicitWidth = 1926
    ExplicitHeight = 1093
    object brdckCtrl_Signatur: TdxBarDockControl
      Left = 12
      Top = 9
      Width = 1759
      Height = 63
      Align = dalNone
      BarManager = brmgr_Signatur
    end
    object pnl_browser: TcxGroupBox
      Left = 12
      Top = 721
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 21
      Height = 20
      Width = 1759
    end
    object mem_statement: TSynMemo
      Left = 13
      Top = 749
      Width = 1757
      Height = 300
      SingleLineMode = False
      Constraints.MinWidth = 20
      Color = clWindowFrame
      ActiveLineColor = clGrayText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      TabOrder = 22
      CodeFolding.GutterShapeSize = 11
      CodeFolding.CollapsedLineColor = clGrayText
      CodeFolding.FolderBarLinesColor = clGrayText
      CodeFolding.IndentGuidesColor = clGray
      CodeFolding.IndentGuides = True
      CodeFolding.ShowCollapsedLine = True
      CodeFolding.ShowHintMark = True
      UseCodeFolding = False
      BorderStyle = bsNone
      Gutter.AutoSize = True
      Gutter.Color = clGrayText
      Gutter.BorderColor = clGrayText
      Gutter.Font.Charset = DEFAULT_CHARSET
      Gutter.Font.Color = clWhite
      Gutter.Font.Height = -11
      Gutter.Font.Name = 'Terminal'
      Gutter.Font.Style = []
      Gutter.LeftOffset = 2
      Gutter.ShowLineNumbers = True
      Highlighter = synhl_Html
      Options = [eoAutoIndent, eoAutoSizeMaxScrollWidth, eoDropFiles, eoGroupUndo, eoHideShowScrollbars, eoKeepCaretX, eoShowScrollHint, eoShowSpecialChars, eoTabIndent]
      RightEdge = 0
      SelectedColor.Background = 13737321
      TabWidth = 3
      WantTabs = True
      FontSmoothing = fsmNone
      RemovedKeystrokes = <
        item
          Command = ecDeleteWord
          ShortCut = 16468
        end>
      AddedKeystrokes = <
        item
          Command = ecDeleteWord
          ShortCut = 16430
        end
        item
          Command = ecUpperCaseBlock
          ShortCut = 16469
        end
        item
          Command = ecLowerCaseBlock
          ShortCut = 16460
        end>
    end
    object grd_Signatur: TcxGrid
      Left = 22
      Top = 589
      Width = 1739
      Height = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object tv_Signatur: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Signatur
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
        object tv_SignaturID_Emailkonfiguration: TcxGridDBColumn
          Caption = 'Account'
          DataBinding.FieldName = 'ID_Emailkonfiguration'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'EMail'
            end>
          Properties.ListSource = ds_EmailAccounts
          SortIndex = 0
          SortOrder = soAscending
          Width = 150
        end
        object tv_SignaturGruss: TcxGridDBColumn
          Caption = 'Grussformel'
          DataBinding.FieldName = 'Gruss'
          Width = 150
        end
        object tv_SignaturAbsender: TcxGridDBColumn
          DataBinding.FieldName = 'Absender'
          Width = 150
        end
        object tv_SignaturName: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
          Width = 150
        end
        object tv_SignaturStrase: TcxGridDBColumn
          DataBinding.FieldName = 'Strase'
          Width = 200
        end
        object tv_SignaturPLZ_Ort: TcxGridDBColumn
          Caption = 'PLZ - Ort'
          DataBinding.FieldName = 'PLZ_Ort'
          Width = 200
        end
        object tv_SignaturTelefon: TcxGridDBColumn
          DataBinding.FieldName = 'Telefon'
          Width = 150
        end
        object tv_SignaturMobil: TcxGridDBColumn
          DataBinding.FieldName = 'Mobil'
          Width = 150
        end
        object tv_SignaturEMail: TcxGridDBColumn
          DataBinding.FieldName = 'EMail'
          Width = 150
        end
        object tv_SignaturText: TcxGridDBColumn
          DataBinding.FieldName = 'Text'
          Width = 250
        end
      end
      object grdlvl_Signatur: TcxGridLevel
        GridView = tv_Signatur
      end
    end
    object edt_SignaturGruss: TcxDBTextEdit
      Left = 167
      Top = 142
      DataBinding.DataField = 'Gruss'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      OnExit = ValueExit
      Width = 1382
    end
    object spnedt_SignaturAfterGruss: TcxDBSpinEdit
      Left = 1711
      Top = 142
      AutoSize = False
      DataBinding.DataField = 'LeerzeilenNachGruss'
      DataBinding.DataSource = ds_Signatur
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      OnExit = ValueExit
      Height = 21
      Width = 50
    end
    object spnedt_SignaturAfterAbsender: TcxDBSpinEdit
      Left = 1711
      Top = 170
      DataBinding.DataField = 'LeerzeilenNachName'
      DataBinding.DataSource = ds_Signatur
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      OnExit = ValueExit
      Width = 50
    end
    object edt_SignaturAbsender: TcxDBTextEdit
      Left = 167
      Top = 170
      DataBinding.DataField = 'Absender'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      OnExit = ValueExit
      Width = 1382
    end
    object spnedt_SignaturBeforeGruss: TcxDBSpinEdit
      Left = 1711
      Top = 114
      DataBinding.DataField = 'LeerzeilenVorGruss'
      DataBinding.DataSource = ds_Signatur
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      OnExit = ValueExit
      Width = 50
    end
    object spnedt_SignaturAfterPLZOrt: TcxDBSpinEdit
      Left = 1711
      Top = 361
      DataBinding.DataField = 'LeerzeilenNachAdresse'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      OnExit = ValueExit
      Width = 50
    end
    object edt_SignaturName: TcxDBTextEdit
      Left = 167
      Top = 305
      DataBinding.DataField = 'Name'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      OnExit = ValueExit
      Width = 1594
    end
    object edt_SignaturStrasse: TcxDBTextEdit
      Left = 167
      Top = 333
      DataBinding.DataField = 'Strase'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      OnExit = ValueExit
      Width = 1594
    end
    object edt_SignaturPLZOrt: TcxDBTextEdit
      Left = 167
      Top = 361
      DataBinding.DataField = 'PLZ_Ort'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      OnExit = ValueExit
      Width = 1382
    end
    object spnedt_SignaturAfterEmail: TcxDBSpinEdit
      Left = 1711
      Top = 445
      DataBinding.DataField = 'LeerzeilenNachMail'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      OnExit = ValueExit
      Width = 50
    end
    object edt_SignaturMobil: TcxDBTextEdit
      Left = 167
      Top = 417
      DataBinding.DataField = 'Mobil'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      OnExit = ValueExit
      Width = 1594
    end
    object edt_SignaturTelefon: TcxDBTextEdit
      Left = 167
      Top = 389
      DataBinding.DataField = 'Telefon'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      OnExit = ValueExit
      Width = 1594
    end
    object edt_SignaturMail: TcxDBTextEdit
      Left = 167
      Top = 445
      DataBinding.DataField = 'EMail'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      OnExit = ValueExit
      Width = 1382
    end
    object lucmbbx_SignaturAccount: TcxDBLookupComboBox
      Left = 167
      Top = 114
      AutoSize = False
      DataBinding.DataField = 'ID_Emailkonfiguration'
      DataBinding.DataSource = ds_Signatur
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'EMail'
        end>
      Properties.ListSource = ds_EmailAccounts
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      OnExit = ValueExit
      Height = 21
      Width = 1382
    end
    object spnedt_SignaturWitdh: TcxDBSpinEdit
      Left = 469
      Top = 198
      DataBinding.DataField = 'Breite'
      DataBinding.DataSource = ds_Signatur
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      OnExit = ValueExit
      Width = 1292
    end
    object spnedt_SignaturHeight: TcxDBSpinEdit
      Left = 469
      Top = 226
      DataBinding.DataField = 'Hoehe'
      DataBinding.DataSource = ds_Signatur
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      OnExit = ValueExit
      Width = 1292
    end
    object spnedt_SignaturAfterImage: TcxDBSpinEdit
      Left = 469
      Top = 254
      DataBinding.DataField = 'LeerzeilenNachBild'
      DataBinding.DataSource = ds_Signatur
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      OnExit = ValueExit
      Width = 1292
    end
    object mem_Abschluss: TcxDBMemo
      Left = 167
      Top = 473
      DataBinding.DataField = 'Text'
      DataBinding.DataSource = ds_Signatur
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      OnExit = ValueExit
      Height = 89
      Width = 1594
    end
    object cxDBImage1: TcxDBImage
      Left = 167
      Top = 198
      DataBinding.DataField = 'Bild'
      DataBinding.DataSource = ds_Signatur
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Height = 100
      Width = 140
    end
    object lactrl_SignaturGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lagrp_Signatur: TdxLayoutGroup
      Parent = lactrl_SignaturGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object laitm_SignaturBar: TdxLayoutItem
      Parent = lagrp_Signatur
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Breite:'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Signatur
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 2005
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SignaturHTML: TdxLayoutItem
      Parent = lagrp_Signatur
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = mem_statement
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 700
      Index = 4
    end
    object laitm_SignaturBrowser: TdxLayoutItem
      Parent = lagrp_Signatur
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGroupBox1'
      CaptionOptions.Visible = False
      Control = pnl_browser
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_SignaturSplt: TdxLayoutSplitterItem
      Parent = lagrp_Signatur
      AlignHorz = ahClient
      AlignVert = avTop
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      AllowCloseOnClick = True
      Index = 2
    end
    object laitm_SignaturGrid: TdxLayoutItem
      Parent = lagrp_SignaturDetail
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Top = 20
      Control = grd_Signatur
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrp_SignaturDetailWithGrid: TdxLayoutGroup
      Parent = lagrp_Signatur
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Signaturen'
      Index = 1
    end
    object lagrp_SignaturDetail: TdxLayoutGroup
      Parent = lagrp_SignaturDetailWithGrid
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object laitm_SignaturGruss: TdxLayoutItem
      Parent = lagrp_SignaturGruss
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Gru'#223'formel:'
      Control = edt_SignaturGruss
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SignaturLeerNachGruss: TdxLayoutItem
      Parent = lagrp_SignaturGruss
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Leerzeilen nach Gru'#223'formel:'
      CaptionOptions.Width = 150
      Control = spnedt_SignaturAfterGruss
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SignaturLeernachName: TdxLayoutItem
      Parent = lagrp_SignaturAbsender
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Leerzeilen nach Name:'
      CaptionOptions.Width = 150
      Control = spnedt_SignaturAfterAbsender
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SignaturAbsender: TdxLayoutItem
      Parent = lagrp_SignaturAbsender
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Absender:'
      Control = edt_SignaturAbsender
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SignaturLeerVorGruss: TdxLayoutItem
      Parent = lagrp_SignaturAccount
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Leerzeilen vor Gru'#223'formel:'
      CaptionOptions.Width = 150
      Control = spnedt_SignaturBeforeGruss
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SignaturLeernachBIld: TdxLayoutItem
      Parent = lagrp_SignaturImageSize
      AlignHorz = ahClient
      CaptionOptions.Text = 'Leerzeilen nach Bild:'
      CaptionOptions.Width = 150
      Control = spnedt_SignaturAfterImage
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrp_SignaturImage: TdxLayoutGroup
      Parent = lagrp_SignaturDetailWithOutGridLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object laitm_SignaturLerrnachAdresse: TdxLayoutItem
      Parent = lagrp_SignaturPLZOrt
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Leerzeilen nach Adresse:'
      CaptionOptions.Width = 150
      Control = spnedt_SignaturAfterPLZOrt
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SignaturName: TdxLayoutItem
      Parent = lagrp_SignaturDetailWithOutGridLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Name:'
      Control = edt_SignaturName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object laitm_SignaturStrasse: TdxLayoutItem
      Parent = lagrp_SignaturDetailWithOutGridLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Stra'#223'e:'
      CaptionOptions.Width = 140
      Control = edt_SignaturStrasse
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object laitm_SignaturPLZOrt: TdxLayoutItem
      Parent = lagrp_SignaturPLZOrt
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'PLZ - Ort:'
      Control = edt_SignaturPLZOrt
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SignaturLerrnachKontakt: TdxLayoutItem
      Parent = lagrp_SignaturEmail
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Leerzeilen nach Kontakt:'
      CaptionOptions.Width = 150
      Control = spnedt_SignaturAfterEmail
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SignaturMobil: TdxLayoutItem
      Parent = lagrp_SignaturDetailWithOutGridLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Mobil:'
      Control = edt_SignaturMobil
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object laitm_SignaturTelefon: TdxLayoutItem
      Parent = lagrp_SignaturDetailWithOutGridLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Telefon:'
      Control = edt_SignaturTelefon
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object laitm_SignaturEmail: TdxLayoutItem
      Parent = lagrp_SignaturEmail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail:'
      Control = edt_SignaturMail
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_SignaturDetailWithOutGrid: TdxLayoutGroup
      Parent = lagrp_SignaturDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_SignaturDetailWithOutGridLeft: TdxLayoutGroup
      Parent = lagrp_SignaturDetailWithOutGrid
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object laitm_SignaturAccount: TdxLayoutItem
      Parent = lagrp_SignaturAccount
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mailaccount:'
      Control = lucmbbx_SignaturAccount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 10
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_SignaturImageLoadPandPath: TdxLayoutGroup
      Parent = lagrp_SignaturImage
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object lagrp_SignaturGruss: TdxLayoutGroup
      Parent = lagrp_SignaturDetailWithOutGridLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_SignaturAbsender: TdxLayoutGroup
      Parent = lagrp_SignaturDetailWithOutGridLeft
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lagrp_SignaturAccount: TdxLayoutGroup
      Parent = lagrp_SignaturDetailWithOutGridLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_SignaturImagePath: TdxLayoutGroup
      Parent = lagrp_SignaturImageLoadPandPath
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object laitm_SignaturImageHeight: TdxLayoutItem
      Parent = lagrp_SignaturImageSize
      AlignHorz = ahClient
      CaptionOptions.Text = 'H'#246'he:'
      CaptionOptions.Width = 150
      Control = spnedt_SignaturHeight
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_SignaturImageLoad: TdxLayoutGroup
      Parent = lagrp_SignaturImageLoadPandPath
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_SignaturImageSize: TdxLayoutGroup
      Parent = lagrp_SignaturImageLoad
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lagrp_SignaturPLZOrt: TdxLayoutGroup
      Parent = lagrp_SignaturDetailWithOutGridLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object lagrp_SignaturEmail: TdxLayoutGroup
      Parent = lagrp_SignaturDetailWithOutGridLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object laitm_SignaturAbschluss: TdxLayoutItem
      Parent = lagrp_SignaturDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Abschlussformel:'
      Control = mem_Abschluss
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SignaturPic: TdxLayoutItem
      Parent = lagrp_SignaturImage
      AlignVert = avBottom
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Bild: '#13#10'(per Rechtsklick laden)'
      Control = cxDBImage1
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_SignaturImageWidth: TdxLayoutItem
      Parent = lagrp_SignaturImageSize
      AlignHorz = ahClient
      CaptionOptions.Text = 'Breite:'
      Control = spnedt_SignaturWitdh
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object synhl_Html: TSynHTMLSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    IdentifierAttri.Foreground = 9829869
    KeyAttri.Foreground = 8437759
    SymbolAttri.Foreground = 8437759
    ValueAttri.Foreground = 10921727
    Left = 368
    Top = 336
  end
  object brmgr_Signatur: TdxBarManager
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
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseFullReset = True
    UseSystemFont = True
    Left = 1048
    Top = 624
    PixelsPerInch = 96
    object tb_Signatur: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = brdckCtrl_Signatur
      DockedDockControl = brdckCtrl_Signatur
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 2033
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_New'
        end
        item
          Visible = True
          ItemName = 'btn_Save'
        end
        item
          Visible = True
          ItemName = 'btn_Cancel'
        end
        item
          Visible = True
          ItemName = 'btn_Delete'
        end
        item
          Visible = True
          ItemName = 'btn_Edit'
        end
        item
          Visible = True
          ItemName = 'btn_Close'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_New: TdxBarLargeButton
      Caption = 'Signatur anlegen'
      Category = 0
      Hint = 'Signatur anlegen'
      Visible = ivAlways
      OnClick = btn_NewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
    end
    object btn_Save: TdxBarLargeButton
      Caption = 'Signatur speichern'
      Category = 0
      Hint = 'Signatur speichern'
      Visible = ivAlways
      OnClick = btn_SaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object btn_Edit: TdxBarLargeButton
      Caption = 'HTML Vorschau'
      Category = 0
      Hint = 'HTML Vorschau'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
        796C6520747970653D22746578742F637373223E0D0A092E426C61636B7B6669
        6C6C3A233732373237323B7D0D0A092E59656C6C6F777B66696C6C3A23464642
        3131353B7D0D0A3C2F7374796C653E0D0A3C7061746820636C6173733D22426C
        61636B2220643D224D382C3468313876366832563363302D302E352D302E352D
        312D312D31483743362E352C322C362C322E352C362C337637683256347A222F
        3E0D0A3C7061746820636C6173733D22426C61636B2220643D224D32362C3238
        4838563138483676313163302C302E352C302E352C312C312C3168323063302E
        352C302C312D302E352C312D31563138682D325632387A222F3E0D0A3C706174
        6820636C6173733D2259656C6C6F772220643D224D33312C38483343322E342C
        382C322C382E342C322C3976313063302C302E362C302E342C312C312C316832
        3863302E362C302C312D302E342C312D3156394333322C382E342C33312E362C
        382C33312C387A204D392E382C313848382E33762D332E3148352E350D0A0956
        31384834762D372E3768312E3576332E3168322E38762D332E3168312E355631
        387A204D31362C31312E37682D312E39563138682D312E35762D362E33682D31
        2E39762D312E344831365631312E377A204D32342E352C3138483233762D342E
        3663302D302E352C302D312C302E312D312E366C302C300D0A09632D302E312C
        302E352D302E312C302E382D302E322C314C32312E332C31384832306C2D312E
        362D352E3263302D302E312D302E312D302E352D302E322D312E316C302C3063
        302C302E382C302E312C312E342C302E312C32563138682D312E34762D372E37
        68322E326C312E342C342E360D0A0963302E312C302E342C302E322C302E372C
        302E322C312E316C302C3063302E312D302E342C302E322D302E382C302E332D
        312E316C312E342D342E3668322E315631387A204D33302C3138682D34762D37
        2E3768312E3576362E334833305631387A222F3E0D0A3C2F7376673E0D0A}
      OnClick = btn_EditClick
      AutoGrayScale = False
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
        31353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337
        32373237323B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C
        61636B2220643D224D382C3468313876366832563363302D302E352D302E352D
        312D312D31483743362E352C322C362C322E352C362C337637683256347A222F
        3E0D0A3C7061746820636C6173733D22426C61636B2220643D224D32362C3236
        4838762D384836763963302C302E352C302E352C312C312C3168323063302E35
        2C302C312D302E352C312D31762D39682D325632367A222F3E0D0A3C70617468
        20636C6173733D2259656C6C6F772220643D224D33312C38483343322E342C38
        2C322C382E342C322C3976313063302C302E362C302E342C312C312C31683238
        63302E362C302C312D302E342C312D3156394333322C382E342C33312E362C38
        2C33312C387A204D392E382C313848382E33762D332E3148352E352020262339
        3B5631384834762D372E3768312E3576332E3168322E38762D332E3168312E35
        5631387A204D31362C31312E37682D312E39563138682D312E35762D362E3368
        2D312E39762D312E344831365631312E377A204D32342E352C3138483233762D
        342E3663302D302E352C302D312C302E312D312E36683020202623393B632D30
        2E312C302E352D302E312C302E382D302E322C314C32312E332C31384832306C
        2D312E362D352E3263302D302E312D302E312D302E352D302E322D312E316830
        63302C302E382C302E312C312E342C302E312C32563138682D312E34762D372E
        3768322E326C312E342C342E3620202623393B63302E312C302E342C302E322C
        302E372C302E322C312E31683063302E312D302E342C302E322D302E382C302E
        332D312E316C312E342D342E3668322E315631387A204D33302C3138682D3476
        2D372E3768312E3576362E334833305631387A222F3E0D0A3C2F7376673E0D0A}
      Width = 125
    end
    object btn_Cancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_CancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_Delete: TdxBarLargeButton
      Caption = 'Signatur l'#246'schen'
      Category = 0
      Hint = 'Signatur l'#246'schen'
      Visible = ivAlways
      OnClick = btn_DeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_Close: TdxBarLargeButton
      Align = iaRight
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_CloseClick
      AutoGrayScale = False
      LargeImageIndex = 23
      Width = 125
    end
  end
  object qry_EmailAccounts: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From manager_emailkonfiguration')
    Left = 1112
    Top = 672
  end
  object qry_Signatur: TFDQuery
    Active = True
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    AfterScroll = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From manager_email_signatur')
    Left = 776
    Top = 625
    object qry_SignaturID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object qry_SignaturID_Emailkonfiguration: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Emailkonfiguration'
      Origin = 'ID_Emailkonfiguration'
    end
    object qry_SignaturLeerzeilenVorGruss: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LeerzeilenVorGruss'
      Origin = 'LeerzeilenVorGruss'
    end
    object qry_SignaturGruss: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Gruss'
      Origin = 'Gruss'
      Size = 255
    end
    object qry_SignaturLeerzeilenNachGruss: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LeerzeilenNachGruss'
      Origin = 'LeerzeilenNachGruss'
    end
    object qry_SignaturAbsender: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Absender'
      Origin = 'Absender'
      Size = 255
    end
    object qry_SignaturLeerzeilenNachName: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LeerzeilenNachName'
      Origin = 'LeerzeilenNachName'
    end
    object qry_SignaturHoehe: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Hoehe'
      Origin = 'Hoehe'
    end
    object qry_SignaturBreite: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Breite'
      Origin = 'Breite'
    end
    object qry_SignaturPfadBild: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PfadBild'
      Origin = 'PfadBild'
      Size = 255
    end
    object qry_SignaturLeerzeilenNachBild: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LeerzeilenNachBild'
      Origin = 'LeerzeilenNachBild'
    end
    object qry_SignaturName: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name'
      Origin = '`Name`'
      Size = 255
    end
    object qry_SignaturStrase: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Strase'
      Origin = 'Strase'
      Size = 255
    end
    object qry_SignaturPLZ_Ort: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLZ_Ort'
      Origin = 'PLZ_Ort'
      Size = 255
    end
    object qry_SignaturLeerzeilenNachAdresse: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LeerzeilenNachAdresse'
      Origin = 'LeerzeilenNachAdresse'
    end
    object qry_SignaturTelefon: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon'
      Origin = 'Telefon'
      Size = 255
    end
    object qry_SignaturMobil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Mobil'
      Origin = 'Mobil'
      Size = 255
    end
    object qry_SignaturEMail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMail'
      Origin = 'EMail'
      Size = 255
    end
    object qry_SignaturLeerzeilenNachMail: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'LeerzeilenNachMail'
      Origin = 'LeerzeilenNachMail'
    end
    object qry_SignaturText: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Text'
      Origin = '`Text`'
      BlobType = ftMemo
    end
    object qry_SignaturBild: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Bild'
      Origin = 'Bild'
    end
  end
  object ds_EmailAccounts: TDataSource
    DataSet = qry_EmailAccounts
    Left = 1000
    Top = 736
  end
  object ds_Signatur: TDataSource
    DataSet = qry_Signatur
    Left = 768
    Top = 704
  end
  object opdlg_Signatur: TdxOpenPictureDialog
    Left = 960
    Top = 552
  end
end
