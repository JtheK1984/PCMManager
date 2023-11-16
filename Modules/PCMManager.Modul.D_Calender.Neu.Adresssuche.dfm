object fAdressSuche: TfAdressSuche
  Left = 333
  Top = 189
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Adresse suchen'
  ClientHeight = 614
  ClientWidth = 946
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
  object pcTyp: TcxPageControl
    Left = 0
    Top = 173
    Width = 946
    Height = 441
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tshAdresssuche
    Properties.CustomButtons.Buttons = <>
    Properties.HotTrack = True
    Properties.Style = 9
    Properties.TabSlants.Kind = skCutCorner
    LookAndFeel.Kind = lfUltraFlat
    ExplicitTop = 168
    ExplicitHeight = 446
    ClientRectBottom = 441
    ClientRectRight = 946
    ClientRectTop = 20
    object tshAdresssuche: TcxTabSheet
      Caption = 'Adressen'
      ImageIndex = 0
      ExplicitHeight = 426
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 173
    Width = 946
    Height = 441
    Align = alClient
    TabOrder = 1
    LookAndFeel.NativeStyle = False
    ExplicitTop = 168
    ExplicitHeight = 446
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
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 63
    Align = alTop
    Caption = 'Filter-Kriterien'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    ExplicitTop = 58
    Height = 71
    Width = 946
    object teName: TcxTextEdit
      Left = 96
      Top = 16
      TabOrder = 0
      Width = 137
    end
    object teStrasse: TcxTextEdit
      Left = 96
      Top = 40
      TabOrder = 1
      Width = 137
    end
    object tePLZ: TcxTextEdit
      Left = 328
      Top = 16
      TabOrder = 2
      Width = 137
    end
    object teOrt: TcxTextEdit
      Left = 328
      Top = 40
      TabOrder = 3
      Width = 137
    end
    object Label63: TcxLabel
      Left = 8
      Top = 20
      Caption = 'Name enth'#228'lt:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object Label64: TcxLabel
      Left = 8
      Top = 44
      Caption = 'Stra'#223'e enth'#228'lt:'
      Transparent = True
    end
    object Label65: TcxLabel
      Left = 240
      Top = 20
      Caption = 'PLZ beginnt mit:'
      Transparent = True
    end
    object Label66: TcxLabel
      Left = 240
      Top = 44
      Caption = 'Ort enth'#228'lt:'
      Transparent = True
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 134
    Align = alTop
    PanelStyle.Active = True
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 7
    ExplicitTop = 129
    Height = 39
    Width = 946
    object bAdressenZeigen: TcxButton
      Left = 8
      Top = 6
      Width = 225
      Height = 28
      Hint = 
        'Holt die Datens'#228'tze, die im Grid angezeigt werden, neu aus der D' +
        'atenbank.'
      Caption = 'Suche aktualisieren'
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 25
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = bAdressenZeigenClick
    end
    object bFilterLoeschen: TcxButton
      Left = 240
      Top = 6
      Width = 225
      Height = 28
      Hint = 
        'Holt die Datens'#228'tze, die im Grid angezeigt werden, neu aus der D' +
        'atenbank.'
      Caption = 'Filter l'#246'schen'
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 24
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = bFilterLoeschenClick
    end
    object lCount: TcxLabel
      Left = 473
      Top = 13
      Caption = 'Es wurden xxx Adressen gefunden!'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseFullReset = True
    UseSystemFont = True
    Left = 472
    Top = 312
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      63
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
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
      Caption = #220'&bernehmen'
      Category = 0
      Hint = #220'bernehmen'
      Visible = ivAlways
      OnClick = btnOKClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = '&Abbrechen'
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
