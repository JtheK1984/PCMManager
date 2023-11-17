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
  object pnl_Design: TcxGroupBox
    Left = 0
    Top = 63
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 4
    Height = 750
    Width = 1240
    object grpbx_Mail: TcxGroupBox
      Left = 253
      Top = 3
      Align = alClient
      PanelStyle.Active = True
      TabOrder = 0
      Height = 724
      Width = 984
      object grd_Mail: TcxGrid
        Left = 3
        Top = 3
        Width = 978
        Height = 203
        Align = alClient
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = cxcbsNone
        TabOrder = 0
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
      object grpbx_MailVorschau: TcxGroupBox
        Left = 3
        Top = 211
        Align = alBottom
        PanelStyle.Active = True
        TabOrder = 1
        Visible = False
        Height = 510
        Width = 978
        object webbwr_Mail: TWebBrowser
          Left = 3
          Top = 3
          Width = 972
          Height = 504
          Align = alClient
          TabOrder = 0
          ControlData = {
            4C00000076640000173400000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 3
        Top = 206
        Width = 978
        Height = 5
        Cursor = crVSplit
        AlignSplitter = salBottom
        Control = grpbx_MailVorschau
      end
    end
    object grpbx_Postfach: TcxGroupBox
      Left = 3
      Top = 3
      Align = alLeft
      PanelStyle.Active = True
      TabOrder = 1
      Height = 724
      Width = 250
      object trlst_EmailFolder: TcxTreeList
        Left = 3
        Top = 3
        Width = 244
        Height = 718
        BorderStyle = cxcbsNone
        Align = alClient
        Bands = <
          item
          end>
        Navigator.Buttons.CustomButtons = <>
        OptionsBehavior.Sorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsData.Deleting = False
        ScrollbarAnnotations.CustomAnnotations = <>
        TabOrder = 0
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
    end
    object stbr_user: TdxStatusBar
      Left = 3
      Top = 727
      Width = 1234
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 728
    Top = 376
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
