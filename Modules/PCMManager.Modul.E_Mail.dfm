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
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object dxBarDockControl1: TdxBarDockControl
      Left = 10
      Top = 10
      Width = 1220
      Height = 63
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
      Top = 79
      Width = 964
      Height = 418
      BorderStyle = cxcbsNone
      TabOrder = 2
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
          Width = 300
        end
        object grdDBTblView_MailsBetreff: TcxGridDBColumn
          DataBinding.FieldName = 'Betreff'
          Width = 500
        end
        object grdDBTblView_MailsErhalten: TcxGridDBColumn
          DataBinding.FieldName = 'Erhalten'
          SortIndex = 0
          SortOrder = soDescending
          Width = 130
        end
        object grdDBTblView_MailsGroesse: TcxGridDBColumn
          Caption = 'Gr'#246#223'e'
          DataBinding.FieldName = 'Groesse'
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
          Visible = False
          VisibleForCustomization = False
        end
        object grdDBTblView_MailsID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          VisibleForCustomization = False
        end
        object grdDBTblView_MailsUIDL: TcxGridDBColumn
          DataBinding.FieldName = 'UIDL'
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
      Top = 79
      Width = 250
      Height = 698
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
      Top = 517
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 7566195
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 260
      Width = 964
    end
    object lactrl_MailGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lagrp_Mail: TdxLayoutGroup
      Parent = lactrl_MailGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
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
