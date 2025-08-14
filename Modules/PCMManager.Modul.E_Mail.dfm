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
  object lactrl_Mail: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1240
    Height = 813
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object dxBarDockControl1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1204
      Height = 63
      Align = dalNone
      BarManager = brmgr_Email
      Visible = False
    end
    object stbr_user: TdxStatusBar
      Left = 10000
      Top = 10000
      Width = 1204
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
          Width = 350
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Font.Charset = DEFAULT_CHARSET
          PanelStyle.Font.Color = clWhite
          PanelStyle.Font.Height = -12
          PanelStyle.Font.Name = 'Segoe UI'
          PanelStyle.Font.Style = []
          PanelStyle.ParentFont = False
          Width = 350
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          PanelStyle.Font.Charset = DEFAULT_CHARSET
          PanelStyle.Font.Color = clWhite
          PanelStyle.Font.Height = -12
          PanelStyle.Font.Name = 'Segoe UI'
          PanelStyle.Font.Style = []
          PanelStyle.ParentFont = False
          Width = 300
        end>
      PaintStyle = stpsUseLookAndFeel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object grd_Mail: TcxGrid
      Left = 10000
      Top = 10000
      Width = 948
      Height = 408
      BorderStyle = cxcbsNone
      TabOrder = 2
      Visible = False
      object grdDBTblView_Mails: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = grdDBTblView_MailsCellClick
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
        object grdDBTblView_MailsAnhang: TcxGridDBColumn
          DataBinding.FieldName = 'Anhang'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = dm_PCM.imglst_16x16
          Properties.Items = <
            item
              Value = 0
            end
            item
              ImageIndex = 86
              Value = 1
            end>
          Width = 25
          IsCaptionAssigned = True
        end
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
      Left = 10000
      Top = 10000
      Width = 250
      Height = 682
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
        00000500260100000F00000044617461436F6E74726F6C6C6572310400000012
        000000546378537472696E6756616C7565547970651200000054637853747269
        6E6756616C75655479706512000000546378537472696E6756616C7565547970
        6512000000546378537472696E6756616C75655479706503000000445855464D
        5400000800000073006400730064007300640073006400010101445855464D54
        0000040000007300640073006400010101445855464D54000005000000730064
        0073006400640001010101000000000000001208020000000000000000000000
        FFFFFFFFFFFFFFFFFFFFFFFF0100000008080000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFF02000000080A0000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        0A0801000000}
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
      object trlst_EmailFolderColumn3: TcxTreeListColumn
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object trlst_EmailFolderColumn4: TcxTreeListColumn
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object pnl_Browser: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 3
      Visible = False
      Height = 253
      Width = 948
    end
    object cxGroupBox1: TcxGroupBox
      Left = 411
      Top = 373
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 66
      Width = 417
      object ind_wait: TdxActivityIndicator
        AlignWithMargins = True
        Left = 5
        Top = 12
        Width = 42
        Height = 42
        Margins.Top = 10
        Margins.Bottom = 10
        Align = alLeft
        PropertiesClassName = 'TdxActivityIndicatorCircularDotsProperties'
        Properties.AnimationTime = 7500
        Properties.DotSize = 5
      end
      object cxGroupBox2: TcxGroupBox
        Left = 50
        Top = 2
        Align = alClient
        PanelStyle.Active = True
        ParentBackground = False
        ParentColor = False
        Style.BorderStyle = ebsNone
        Style.Color = 7566195
        Style.TransparentBorder = False
        TabOrder = 1
        Transparent = True
        Height = 62
        Width = 365
        object prgbr_Main: TcxProgressBar
          AlignWithMargins = True
          Left = 10
          Top = 33
          Margins.Left = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alBottom
          AutoSize = False
          Position = 100.000000000000000000
          Properties.BarStyle = cxbsAnimation
          Properties.BeginColor = 54056
          Properties.EndColor = 6750054
          Properties.PeakValue = 100.000000000000000000
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.SkinName = ''
          Style.TransparentBorder = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 0
          Height = 19
          Width = 345
        end
        object cxLabel1: TcxLabel
          AlignWithMargins = True
          Left = 10
          Top = 3
          Margins.Left = 10
          Margins.Right = 10
          Align = alTop
          Caption = 'Postf'#228'cher werden eingelesen'
          TabOrder = 1
          Transparent = True
        end
      end
    end
    object lactrl_MailGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lagrp_Mail: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object lagrp_MailDetail: TdxLayoutGroup
      Parent = lagrp_Mail
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object laitm_MailBar: TdxLayoutItem
      Parent = lagrp_Mail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lagrp_Mail
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
    object laitm_MailAccounts: TdxLayoutItem
      Parent = lagrp_MailDetail
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
    object lagrp_MailMails: TdxLayoutGroup
      Parent = lagrp_MailDetail
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lagrp_MailMails
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
      Parent = lagrp_MailMails
      AlignHorz = ahClient
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_Browser
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_Vorschau: TdxLayoutSplitterItem
      Parent = lagrp_MailMails
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lactrl_MailGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.HideTabs = True
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'New Group'
      SizeOptions.Height = 65
      SizeOptions.Width = 417
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxGroupBox1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 66
      ControlOptions.OriginalWidth = 417
      ControlOptions.ShowBorder = False
      Index = 0
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
      'SELECT * FROM manager_emails')
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
          ItemName = 'btn_EmailNew'
        end
        item
          Visible = True
          ItemName = 'btn_EmailDelete'
        end
        item
          Visible = True
          ItemName = 'btn_EmailMove'
        end
        item
          Visible = True
          ItemName = 'btn_EmailAnswer'
        end
        item
          Visible = True
          ItemName = 'btn_EmailAnswerAll'
        end
        item
          Visible = True
          ItemName = 'btn_EmailSendto'
        end
        item
          Visible = True
          ItemName = 'btn_EmailMarkAsRead'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
    object btn_EmailNew: TdxBarLargeButton
      Caption = 'Neue E-Mail'
      Category = 0
      Hint = 'Neue E-Mail'
      Visible = ivAlways
      OnClick = btn_EmailNewClick
      AutoGrayScale = False
      LargeImageIndex = 49
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_EmailDelete: TdxBarLargeButton
      Caption = 'E-Mail l'#246'schen'
      Category = 0
      Hint = 'E-Mail l'#246'schen'
      Visible = ivAlways
      OnClick = btn_EmailDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 50
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_EmailMove: TdxBarLargeButton
      Caption = 'E-Mail verschieben'
      Category = 0
      Hint = 'E-Mail verschieben'
      Visible = ivAlways
      OnClick = btn_EmailMoveClick
      AutoGrayScale = False
      LargeImageIndex = 55
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_EmailAnswer: TdxBarLargeButton
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
    object btn_EmailSendto: TdxBarLargeButton
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
    object btn_EmailAnswerAll: TdxBarLargeButton
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
    object btn_EmailMarkAsRead: TdxBarLargeButton
      Caption = 'Als gelesen markieren'
      Category = 0
      Hint = 'Als gelesen markieren'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 57
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Signaturen'
      Category = 0
      Hint = 'Signaturen'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
      AutoGrayScale = False
      LargeImageIndex = 130
      Width = 125
    end
    object ppmbtn_EmailNew: TdxBarButton
      Caption = 'Neue E-Mail'
      Category = 1
      Visible = ivAlways
      ImageIndex = 16
    end
    object ppmbtn_EmailDelete: TdxBarButton
      Caption = 'E-Mail l'#246'schen'
      Category = 1
      Visible = ivAlways
      ImageIndex = 17
    end
    object ppmbtn_EmailMove: TdxBarButton
      Caption = 'E-Mail verschieben'
      Category = 1
      Visible = ivAlways
      ImageIndex = 59
    end
    object ppmbtn_EmailAnswer: TdxBarButton
      Caption = 'Antworten'
      Category = 1
      Visible = ivAlways
      ImageIndex = 18
    end
    object ppmbtn_EmailAnswerAll: TdxBarButton
      Caption = 'Allen antworten'
      Category = 1
      Visible = ivAlways
      ImageIndex = 60
    end
    object ppmbtn_EmailSendTo: TdxBarButton
      Caption = 'E-Mail weiterleiten'
      Category = 1
      Visible = ivAlways
      ImageIndex = 62
    end
    object ppmbtn_EmailMarkasRead: TdxBarButton
      Caption = 'Als gelesen markieren'
      Category = 1
      Visible = ivAlways
      ImageIndex = 61
    end
  end
  object idImap_Mail: TIdIMAP4
    Port = 993
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
        PopupMenu = ppm_Email
      end>
    Left = 376
    Top = 288
  end
  object ppm_Email: TdxBarPopupMenu
    BarManager = brmgr_Email
    ItemLinks = <
      item
        Visible = True
        ItemName = 'ppmbtn_EmailNew'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_EmailDelete'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_EmailMove'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_EmailAnswer'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_EmailAnswerAll'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_EmailSendTo'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_EmailMarkasRead'
      end>
    UseOwnFont = False
    Left = 320
    Top = 368
    PixelsPerInch = 96
  end
  object IdHTTPServer1: TIdHTTPServer
    Bindings = <>
    DefaultPort = 2132
    Left = 1109
    Top = 120
  end
  object IdSSLIOHandlerSocketIMAP: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':143'
    MaxLineAction = maException
    Port = 143
    DefaultPort = 0
    SSLOptions.Method = sslvTLSv1_2
    SSLOptions.SSLVersions = [sslvTLSv1_2]
    SSLOptions.Mode = sslmClient
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 1029
    Top = 354
  end
  object IdSSLIOHandlerSocketSMTP: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Method = sslvTLSv1_2
    SSLOptions.SSLVersions = [sslvTLSv1_2]
    SSLOptions.Mode = sslmClient
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 264
    Top = 396
  end
  object idImap_MailOauth: TIdIMAP4
    Port = 993
    SASLMechanisms = <>
    MilliSecsToWaitToClearBuffer = 10
    Left = 416
    Top = 152
  end
  object grdDBTblView_MailsCellCTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = grdDBTblView_MailsCellCTimerTimer
    Left = 608
    Top = 392
  end
end
