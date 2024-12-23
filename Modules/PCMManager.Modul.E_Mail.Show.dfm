object frm_PCM_MailShow: Tfrm_PCM_MailShow
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'frm_PCM_MailShow'
  ClientHeight = 790
  ClientWidth = 1122
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  TextHeight = 13
  object grpbx_Email: TcxGroupBox
    Left = 0
    Top = 63
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 4
    Height = 727
    Width = 1122
    object grpbx_Detail: TcxGroupBox
      Left = 3
      Top = 3
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 0
      Height = 79
      Width = 1116
      object grpbx_EmailValues: TcxGroupBox
        Left = 51
        Top = 3
        Align = alClient
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 73
        Width = 1062
        object lbl_Betreff: TcxLabel
          Left = 3
          Top = 54
          Align = alTop
          Transparent = True
        end
        object lbl_CC: TcxLabel
          Left = 3
          Top = 37
          Align = alTop
          Transparent = True
        end
        object lbl_AN: TcxLabel
          Left = 3
          Top = 20
          Align = alTop
          Transparent = True
        end
        object lbl_Von: TcxLabel
          Left = 3
          Top = 3
          Align = alTop
          Transparent = True
        end
      end
      object grpbx_EmailLabel: TcxGroupBox
        Left = 3
        Top = 3
        Align = alLeft
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Height = 73
        Width = 48
        object lbl_BetreffLabel: TcxLabel
          Left = 3
          Top = 54
          Align = alTop
          Caption = 'Betreff:'
          Transparent = True
        end
        object lbl_CCLabel: TcxLabel
          Left = 3
          Top = 37
          Align = alTop
          Caption = 'CC:'
          Transparent = True
        end
        object lbl_AnLabel: TcxLabel
          Left = 3
          Top = 20
          Align = alTop
          Caption = 'An:'
          Transparent = True
        end
        object lbl_VonLabel: TcxLabel
          Left = 3
          Top = 3
          Align = alTop
          Caption = 'Von:'
          Transparent = True
        end
      end
    end
    object lstVw_Mail: TcxListView
      Left = 3
      Top = 82
      Width = 1116
      Height = 41
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alTop
      Columns = <>
      HideSelection = False
      Items.ItemData = {
        051C0200000D00000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
        00000100000000000000FFFFFFFF00000000FFFFFFFF00000000047300640073
        0064000000000002000000FFFFFFFF00000000FFFFFFFF000000000473006400
        7300640000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000033730064
        0073006400730064006A006B0067006A00680067006A006B006800670068006B
        006A0067006800670068006A0067006A00680067006A0068006B006C0067006A
        0068006B006C0067006A006B0068006C0067006C006B006A006B0067006C006A
        00680000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000478006300
        7800630000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000004780063
        007800630000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000047800
        63007800630000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000478
        0063007800630000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000000005
        7800630078006300630000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0000
        0000057800630078006300780000000000FFFFFFFFFFFFFFFF00000000FFFFFF
        FF00000000057800630078006300780000000000FFFFFFFFFFFFFFFF00000000
        FFFFFFFF00000000057800630078006300780000000000FFFFFFFFFFFFFFFF00
        000000FFFFFFFF0000000006780063007800630078006300}
      ParentFont = False
      PopupMenu = brpmm_Mail
      SmallImages = imglst_16x16_1
      Style.BorderStyle = cbsNone
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      ViewStyle = vsList
      OnDblClick = lstVw_MailDblClick
    end
    object webbwr_Mail: TWebBrowser
      Left = 3
      Top = 123
      Width = 1116
      Height = 601
      Align = alClient
      TabOrder = 2
      ControlData = {
        4C000000587300001D3E00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
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
    Left = 320
    Top = 240
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      63
      0)
    object tb_Mail: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 962
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Answer'
        end
        item
          Visible = True
          ItemName = 'btn_AnswerAll'
        end
        item
          Visible = True
          ItemName = 'btn_Sendto'
        end
        item
          Visible = True
          ItemName = 'btn_close'
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
    object btn_Answer: TdxBarLargeButton
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
    object btn_Sendto: TdxBarLargeButton
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
    object btn_AnswerAll: TdxBarLargeButton
      Caption = 'allen Antworten'
      Category = 0
      Hint = 'allen Antworten'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 52
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_close: TdxBarLargeButton
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_closeClick
      AutoGrayScale = False
      LargeImageIndex = 23
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Open: TdxBarButton
      Caption = #214'ffnen'
      Category = 1
      Visible = ivAlways
      ImageIndex = 26
      OnClick = btn_OpenClick
    end
  end
  object dlgSave_Anhang: TSaveDialog
    Filter = 'Alle Dateien|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'dcsdgdsfgsdg'
    Left = 607
    Top = 240
  end
  object DataSource1: TDataSource
    DataSet = memData_Anhaenge
    Left = 200
    Top = 327
  end
  object memData_Anhaenge: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 200
    Top = 271
    object memData_AnhaengeFilename: TStringField
      FieldName = 'Filename'
      Size = 150
    end
    object memData_AnhaengeFullname: TStringField
      FieldName = 'Fullname'
      Size = 150
    end
    object memData_AnhaengeIcon: TIntegerField
      FieldName = 'Icon'
    end
  end
  object imglst_16x16_1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 5833080
  end
  object brpmm_Mail: TdxBarPopupMenu
    BarManager = brmgr_Email
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btn_Open'
      end>
    UseOwnFont = False
    Left = 584
    Top = 362
    PixelsPerInch = 96
  end
end
