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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object grpbx_Email: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    TabOrder = 4
    ExplicitTop = 58
    ExplicitWidth = 1116
    ExplicitHeight = 715
    Height = 790
    Width = 1122
  end
  object lactrl_Mail: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1122
    Height = 790
    Align = alClient
    TabOrder = 5
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitLeft = 416
    ExplicitTop = 288
    ExplicitWidth = 698
    ExplicitHeight = 250
    object lbl_Betreff: TcxLabel
      Left = 53
      Top = 134
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Transparent = True
    end
    object lbl_CC: TcxLabel
      Left = 53
      Top = 114
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Transparent = True
    end
    object lbl_AN: TcxLabel
      Left = 53
      Top = 94
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Transparent = True
    end
    object lbl_Von: TcxLabel
      Left = 53
      Top = 74
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Transparent = True
    end
    object lstVw_Mail: TcxListView
      Left = 10
      Top = 154
      Width = 1102
      Height = 87
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Columns = <
        item
          Width = 100
        end>
      HideSelection = False
      IconOptions.Arrangement = iaLeft
      IconOptions.AutoArrange = True
      Items.ItemData = {
        05360200000E00000001000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
        00000100000001000000FFFFFFFF00000000FFFFFFFF00000000047300640073
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
        000000FFFFFFFF000000000678006300780063007800630000000000FFFFFFFF
        FFFFFFFF00000000FFFFFFFF0000000000}
      ParentFont = False
      PopupMenu = brpmm_Mail
      SmallImages = imglst_16x16_1
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 6
      ViewStyle = vsSmallIcon
      OnDblClick = lstVw_MailDblClick
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 10
      Top = 10
      Width = 1102
      Height = 58
      Align = dalNone
      BarManager = brmgr_Email
    end
    object cxLabel1: TcxLabel
      Left = 1012
      Top = 94
      AutoSize = False
      Caption = 'cxLabel1'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Transparent = True
      Height = 13
      Width = 100
    end
    object pnl_browser: TcxGroupBox
      Left = 10
      Top = 247
      PanelStyle.Active = True
      Style.TransparentBorder = False
      TabOrder = 7
      Height = 533
      Width = 1102
    end
    object lactrl_MailGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lagrpl_MailBar: TdxLayoutItem
      Parent = lagrpl_Mail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1118
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrpl_Mail: TdxLayoutGroup
      Parent = lactrl_MailGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object lagrpl_MailHeader: TdxLayoutGroup
      Parent = lagrpl_Mail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 1
    end
    object laitm_MailBetreff: TdxLayoutItem
      Parent = lagrpl_MailHeader
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Betreff:'
      Control = lbl_Betreff
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_MailCC: TdxLayoutItem
      Parent = lagrpl_MailHeader
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'CC:'
      Control = lbl_CC
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_MailAn: TdxLayoutItem
      Parent = lagrpl_MailANDatum
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'An:'
      Control = lbl_AN
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_MailVon: TdxLayoutItem
      Parent = lagrpl_MailHeader
      AlignHorz = ahClient
      CaptionOptions.Text = 'Von:'
      Control = lbl_Von
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Anhang: TdxLayoutItem
      Parent = lagrpl_Mail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lstVw_Mail
      ControlOptions.OriginalHeight = 87
      ControlOptions.OriginalWidth = 1112
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrpl_MailANDatum: TdxLayoutGroup
      Parent = lagrpl_MailHeader
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object laitm_MailDatum: TdxLayoutItem
      Parent = lagrpl_MailANDatum
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_Mail: TdxLayoutItem
      Parent = lagrpl_Mail
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_browser
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
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
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 320
    Top = 240
    PixelsPerInch = 96
    object tb_Mail: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
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
    object ppmbtn_Open: TdxBarButton
      Caption = #214'ffnen'
      Category = 1
      Visible = ivAlways
      ImageIndex = 26
      OnClick = ppmbtn_OpenClick
    end
    object ppmbtn_Preview: TdxBarButton
      Caption = 'Vorschau'
      Category = 1
      Hint = 'Vorschau'
      Visible = ivAlways
      ImageIndex = 75
    end
    object ppmbtn_Save: TdxBarButton
      Caption = 'Speichern unter'
      Category = 1
      Hint = 'Speichern unter'
      Visible = ivAlways
      ImageIndex = 27
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
        ItemName = 'ppmbtn_Preview'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_Open'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_Save'
      end>
    UseOwnFont = False
    Left = 584
    Top = 362
    PixelsPerInch = 96
  end
end
