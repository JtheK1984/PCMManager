object fAdressSuche: TfAdressSuche
  Left = 333
  Top = 189
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Adresse suchen'
  ClientHeight = 614
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 900
    Height = 614
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object cxGrid1: TcxGrid
      Left = 10
      Top = 229
      Width = 880
      Height = 375
      TabOrder = 8
      LookAndFeel.NativeStyle = False
      object tvAdressen: TcxGridDBTableView
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
        OnCellDblClick = tvAdressenCellDblClick
        DataController.DataSource = dm_PCM.ds_KalenderAufgabe_AdressSuche
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Filter.Active = True
        DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.GridLines = glVertical
        OptionsView.Indicator = True
        object tvAdressenName: TcxGridDBColumn
          Tag = 299140304
          DataBinding.FieldName = 'Firma'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
        end
        object tvAdressenStrasse: TcxGridDBColumn
          Tag = 298893800
          Caption = 'Stra'#223'e'
          DataBinding.FieldName = 'Strasse_Ges'
          DataBinding.IsNullValueType = True
          Width = 200
        end
        object tvAdressenplz: TcxGridDBColumn
          Tag = 298895624
          Caption = 'PLZ'
          DataBinding.FieldName = 'PLZ_Ges'
          DataBinding.IsNullValueType = True
          Width = 60
        end
        object tvAdressenOrt: TcxGridDBColumn
          Tag = 298896472
          DataBinding.FieldName = 'Ort_Ges'
          DataBinding.IsNullValueType = True
          Width = 200
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvAdressen
      end
    end
    object teName: TcxTextEdit
      Left = 97
      Top = 136
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 346
    end
    object teStrasse: TcxTextEdit
      Left = 97
      Top = 161
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 346
    end
    object tePLZ: TcxTextEdit
      Left = 531
      Top = 136
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 350
    end
    object teOrt: TcxTextEdit
      Left = 531
      Top = 161
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 350
    end
    object bAdressenZeigen: TcxButton
      Left = 10
      Top = 195
      Width = 225
      Height = 28
      Hint = 
        'Holt die Datens'#228'tze, die im Grid angezeigt werden, neu aus der D' +
        'atenbank.'
      Caption = 'Suche aktualisieren'
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 25
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = bAdressenZeigenClick
    end
    object bFilterLoeschen: TcxButton
      Left = 241
      Top = 195
      Width = 225
      Height = 28
      Hint = 
        'Holt die Datens'#228'tze, die im Grid angezeigt werden, neu aus der D' +
        'atenbank.'
      Caption = 'Filter l'#246'schen'
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 24
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = bFilterLoeschenClick
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 10
      Top = 10
      Width = 880
      Height = 63
      Align = dalNone
      BarManager = dxBarManager1
    end
    object chkbx_Privat: TcxCheckBox
      Left = 19
      Top = 111
      Caption = 'Private Adresse'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Filter-Kriterien'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Name enth'#228'lt:'
      Control = teName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'PLZ beginnt mit:'
      Control = tePLZ
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Stra'#223'e enth'#228'lt:'
      Control = teStrasse
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ort enth'#228'lt:'
      Control = teOrt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'bAdressenZeigen'
      CaptionOptions.Visible = False
      Control = bAdressenZeigen
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 225
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'bFilterLoeschen'
      CaptionOptions.Visible = False
      Control = bFilterLoeschen
      ControlOptions.OriginalHeight = 28
      ControlOptions.OriginalWidth = 225
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lCount: TdxLayoutLabeledItem
      Parent = dxLayoutGroup5
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'Es wurden xxx Adressen gefunden!'
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 504
      ControlOptions.OriginalWidth = 946
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 946
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkbx_Privat
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 84
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Filter-Kriterien'
      ItemIndex = 1
      Index = 1
    end
  end
  object qAdressSuche1: TFDQuery
    Connection = dm_PCM.con_PCM
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand]
    ResourceOptions.MacroCreate = False
    ResourceOptions.MacroExpand = False
    SQL.Strings = (
      '')
    Left = 672
    Top = 312
  end
  object dxBarManager1: TdxBarManager
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
    ImageOptions.Images = dm_PCM.imglst_16x16
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseFullReset = True
    UseSystemFont = True
    Left = 472
    Top = 312
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 986
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnOK'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
    object btnOK: TdxBarLargeButton
      Caption = #220'bernehmen'
      Category = 0
      Hint = #220'bernehmen'
      Visible = ivAlways
      OnClick = btnOKClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = ToolButton2Click
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
  end
end
