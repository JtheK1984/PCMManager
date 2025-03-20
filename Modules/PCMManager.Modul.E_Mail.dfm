object frm_Mail: Tfrm_Mail
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_Mail'
  ClientHeight = 813
  ClientWidth = 1240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1240
    Height = 813
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object dxBarDockControl1: TdxBarDockControl
      Left = 10
      Top = 10
      Width = 1220
      Height = 58
      Align = dalNone
      BarManager = brmgr_Email
    end
    object stbr_user: TdxStatusBar
      Left = 10
      Top = 783
      Width = 1220
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Font.Charset = DEFAULT_CHARSET
          PanelStyle.Font.Color = clWhite
          PanelStyle.Font.Height = -12
          PanelStyle.Font.Name = 'Segoe UI'
          PanelStyle.Font.Style = []
          PanelStyle.ParentFont = False
          Width = 200
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Font.Charset = DEFAULT_CHARSET
          PanelStyle.Font.Color = clWhite
          PanelStyle.Font.Height = -12
          PanelStyle.Font.Name = 'Segoe UI'
          PanelStyle.Font.Style = []
          PanelStyle.ParentFont = False
          Width = 400
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Font.Charset = DEFAULT_CHARSET
          PanelStyle.Font.Color = clWhite
          PanelStyle.Font.Height = -12
          PanelStyle.Font.Name = 'Segoe UI'
          PanelStyle.Font.Style = []
          PanelStyle.ParentFont = False
          Width = 200
        end>
      PaintStyle = stpsUseLookAndFeel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object grd_Mail: TcxGrid
      Left = 266
      Top = 74
      Width = 964
      Height = 426
      BorderStyle = cxcbsNone
      TabOrder = 2
      object grdDBTblView_Mails: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdDBTblView_MailsCellDblClick
        OnCustomDrawCell = grdDBTblView_MailsCustomDrawCell
        DataController.DataSource = ds_Mail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_MailsRecId: TcxGridDBColumn
          DataBinding.FieldName = 'RecId'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object grdDBTblView_MailsVon: TcxGridDBColumn
          DataBinding.FieldName = 'Von'
          DataBinding.IsNullValueType = True
          Width = 300
        end
        object grdDBTblView_MailsBetreff: TcxGridDBColumn
          DataBinding.FieldName = 'Betreff'
          DataBinding.IsNullValueType = True
          Width = 500
        end
        object grdDBTblView_MailsErhalten: TcxGridDBColumn
          DataBinding.FieldName = 'Erhalten'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soDescending
          Width = 130
        end
        object grdDBTblView_MailsGroesse: TcxGridDBColumn
          Caption = 'Gr'#246#223'e'
          DataBinding.FieldName = 'Groesse'
          DataBinding.IsNullValueType = True
          Width = 80
        end
        object grdDBTblView_MailsUID: TcxGridDBColumn
          DataBinding.FieldName = 'UID'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForCustomization = False
          Width = 100
        end
        object grdDBTblView_Mailsread: TcxGridDBColumn
          DataBinding.FieldName = 'readEmail'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForCustomization = False
        end
        object grdDBTblView_MailsID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForCustomization = False
        end
        object grdDBTblView_MailsUIDL: TcxGridDBColumn
          DataBinding.FieldName = 'UIDL'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForCustomization = False
        end
        object grdDBTblView_MailsData: TcxGridDBColumn
          DataBinding.FieldName = 'Data'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForCustomization = False
        end
        object grdDBTblView_MailsfileName: TcxGridDBColumn
          DataBinding.FieldName = 'fileName'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForCustomization = False
          Width = 400
        end
      end
      object grdlvl_mail: TcxGridLevel
        GridView = grdDBTblView_Mails
      end
    end
    object trlst_EmailFolder: TcxTreeList
      Left = 10
      Top = 74
      Width = 250
      Height = 703
      Bands = <
        item
        end>
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.Sorting = False
      OptionsData.CancelOnExit = False
      OptionsData.Editing = False
      OptionsData.Deleting = False
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 1
      Data = {
        00000500F40000000F00000044617461436F6E74726F6C6C6572310200000012
        000000546378537472696E6756616C7565547970651200000054637853747269
        6E6756616C75655479706503000000445855464D540000080000007300640073
        006400730064007300640001445855464D540000040000007300640073006400
        01445855464D5400000500000073006400730064006400010100000000000000
        1208020000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF010000000808
        0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF02000000080A000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFF0A0801000000}
      object cxTreeList1Column1: TcxTreeListColumn
        Caption.Text = 'E-Mail Konten'
        Width = 200
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object cxTreeList1Column2: TcxTreeListColumn
        Width = 47
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object pnl_Browser: TcxGroupBox
      Left = 266
      Top = 513
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = clBtnFace
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 264
      Width = 964
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
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = stbr_user
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 1220
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = trlst_EmailFolder
      ControlOptions.OriginalHeight = 690
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Mail
      ControlOptions.OriginalHeight = 169
      ControlOptions.OriginalWidth = 970
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object grpbx_MailVorschau: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_Browser
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
  end
  object ds_Mail: TDataSource
    DataSet = qry_Mail
    Left = 544
    Top = 176
  end
  object qry_Mail: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * FROM manager_emailsaccount')
    Left = 544
    Top = 120
  end
  object brmgr_Email: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = dm_PCM.imglst_16x16
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    ImageOptions.UseLargeImagesForLargeIcons = True
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 728
    Top = 376
    PixelsPerInch = 96
    object tb_Email: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1256
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Neue E-Mail'
      Category = 0
      Hint = 'Neue E-Mail'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 49
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'E-Mail archivieren'
      Category = 0
      Hint = 'E-Mail archivieren'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 53
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'E-Mail l'#246'schen'
      Category = 0
      Hint = 'E-Mail l'#246'schen'
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
      AutoGrayScale = False
      LargeImageIndex = 50
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'E-Mail verschieben'
      Category = 0
      Hint = 'E-Mail verschieben'
      Visible = ivAlways
      OnClick = dxBarLargeButton4Click
      AutoGrayScale = False
      LargeImageIndex = 55
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'Antworten'
      Category = 0
      Hint = 'Antworten'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 51
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'Weiterleiten'
      Category = 0
      Hint = 'Weiterleiten'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 54
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'Allen antworten'
      Category = 0
      Hint = 'Allen antworten'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 52
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'Als gelesen markieren'
      Category = 0
      Hint = 'Als gelesen markieren'
      Visible = ivAlways
      OnClick = dxBarLargeButton8Click
      AutoGrayScale = False
      LargeImageIndex = 57
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object NeueEMail1: TdxBarButton
      Caption = 'Neue E-Mail'
      Category = 1
      Visible = ivAlways
      ImageIndex = 16
    end
    object EMaillschen1: TdxBarButton
      Caption = 'E-Mail l'#246'schen'
      Category = 1
      Visible = ivAlways
      ImageIndex = 17
    end
    object EMaillschen2: TdxBarButton
      Caption = 'E-Mail verschieben'
      Category = 1
      Visible = ivAlways
      ImageIndex = 59
    end
    object Antworten1: TdxBarButton
      Caption = 'Antworten'
      Category = 1
      Visible = ivAlways
      ImageIndex = 18
    end
    object Antworten2: TdxBarButton
      Caption = 'Allen antworten'
      Category = 1
      Visible = ivAlways
      ImageIndex = 60
    end
    object EMailweiterleiten1: TdxBarButton
      Caption = 'E-Mail weiterleiten'
      Category = 1
      Visible = ivAlways
      ImageIndex = 62
    end
    object Alsgelesenmarkieren1: TdxBarButton
      Caption = 'Als gelesen markieren'
      Category = 1
      Visible = ivAlways
      ImageIndex = 61
    end
  end
  object idImap_Mail: TIdIMAP4
    Password = 'Jh2019+1'
    Port = 993
    Username = 'Jens.Henske@t-online.de'
    Host = 'imap.t-online.de'
    SASLMechanisms = <>
    MilliSecsToWaitToClearBuffer = 10
    Left = 416
    Top = 88
  end
  object pm_Einnahmen: TcxGridPopupMenu
    Grid = grd_Mail
    PopupMenus = <
      item
        GridView = grdDBTblView_Mails
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        PopupMenu = dxBarPopupMenu1
      end>
    Left = 376
    Top = 288
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = brmgr_Email
    ItemLinks = <
      item
        Visible = True
        ItemName = 'NeueEMail1'
      end
      item
        Visible = True
        ItemName = 'EMaillschen1'
      end
      item
        Visible = True
        ItemName = 'EMaillschen2'
      end
      item
        Visible = True
        ItemName = 'Antworten1'
      end
      item
        Visible = True
        ItemName = 'Antworten2'
      end
      item
        Visible = True
        ItemName = 'EMailweiterleiten1'
      end
      item
        Visible = True
        ItemName = 'Alsgelesenmarkieren1'
      end>
    UseOwnFont = False
    Left = 320
    Top = 368
    PixelsPerInch = 96
  end
end
