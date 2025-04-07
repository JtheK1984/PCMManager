object frm_Calendar_new: Tfrm_Calendar_new
  Left = 334
  Top = 97
  Caption = 'Neu'
  ClientHeight = 788
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 920
    Height = 788
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object btnEraseFirma: TcxButton
      Left = 426
      Top = 238
      Width = 25
      Height = 21
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 35
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 20
      OnClick = btnEraseFirmaClick
    end
    object btnGoToJira: TcxButton
      Left = 885
      Top = 271
      Width = 25
      Height = 21
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 47
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 23
      OnClick = btnGoToJiraClick
    end
    object btnSearchFirma: TcxButton
      Left = 395
      Top = 238
      Width = 25
      Height = 21
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 28
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 19
      OnClick = btnSearchFirmaClick
    end
    object cbAnsprechpartner: TcxLookupComboBox
      Left = 547
      Top = 238
      Properties.DropDownRows = 20
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'NameVorname'
        end>
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListSource = dm_PCM.ds_Aufgabe_Ansprechpartner
      EditValue = 0
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 21
      Width = 363
    end
    object edtFirma: TcxTextEdit
      Left = 82
      Top = 238
      Properties.ReadOnly = True
      Properties.OnEditValueChanged = edtFirmaPropertiesEditValueChanged
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 18
      Width = 307
    end
    object edtJiraTicket: TcxTextEdit
      Left = 82
      Top = 271
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 22
      Width = 797
    end
    object teBetreff: TcxTextEdit
      Left = 82
      Top = 298
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 24
      Width = 828
    end
    object btn_DelRecurringEv1: TcxButton
      Left = 10
      Top = 151
      Width = 121
      Height = 21
      Caption = 'Serie entfernen'
      TabOrder = 3
      TabStop = False
      OnClick = btn_DelRecurringEv1Click
    end
    object btn_SetRecurringEv1: TcxButton
      Left = 10
      Top = 124
      Width = 121
      Height = 21
      Caption = 'Serie'
      TabOrder = 2
      OnClick = btn_SetRecurringEv1Click
    end
    object cbTyp: TcxImageComboBox
      Left = 10
      Top = 99
      EditValue = '1'
      Properties.Items = <
        item
          Description = 'Nachricht'
          ImageIndex = 1
          Value = 0
        end
        item
          Description = 'Aufgabe'
          ImageIndex = 2
          Value = 1
        end
        item
          Description = 'Termin'
          Value = 2
        end>
      Properties.OnEditValueChanged = cbTypPropertiesEditValueChanged
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      Style.ButtonTransparency = ebtNone
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 121
    end
    object cbAufgabenArt: TcxLookupComboBox
      Left = 668
      Top = 99
      Properties.DropDownRows = 20
      Properties.DropDownWidth = 350
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dm_PCM.ds_KalenderAufgaben_Arten
      Properties.OnCloseUp = cbAufgabenArtPropertiesCloseUp
      EditValue = 0
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 9
      Width = 213
    end
    object cbAufgabenStatus: TcxImageComboBox
      Left = 358
      Top = 99
      Properties.DropDownRows = 10
      Properties.Items = <
        item
          Description = 'In Bearbeitung'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Auf jemanden warten'
          Value = 1
        end
        item
          Description = 'Zur'#252'ckgestellt'
          Value = 2
        end
        item
          Description = 'Vollst'#228'ndig'
          Value = 3
        end>
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 7
      Width = 98
    end
    object cbPrioritaet: TcxLookupComboBox
      Left = 462
      Top = 99
      Properties.DropDownWidth = 200
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dm_PCM.ds_KalenderAufgaben_Prio
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Width = 200
    end
    object deStart: TcxDateEdit
      Left = 137
      Top = 99
      EditValue = 38705d
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.ImmediatePost = True
      Properties.WeekNumbers = True
      Properties.OnEditValueChanged = deStartPropertiesEditValueChanged
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Width = 81
    end
    object meDauer: TcxMaskEdit
      Left = 287
      Top = 99
      Properties.Alignment.Horz = taRightJustify
      Properties.MaxLength = 0
      Properties.ValidateOnEnter = False
      Properties.OnEditValueChanged = meDauerPropertiesEditValueChanged
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Text = '10'
      OnEnter = meDauerEnter
      OnExit = meDauerExit
      OnKeyPress = meDauerKeyPress
      Width = 65
    end
    object teStart: TcxTimeEdit
      Left = 224
      Top = 99
      EditValue = 0.75d
      Properties.ImmediatePost = True
      Properties.TimeFormat = tfHourMin
      Properties.OnEditValueChanged = teStartPropertiesEditValueChanged
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 5
      Width = 57
    end
    object deEndeAufgabe: TcxDateEdit
      Left = 137
      Top = 144
      EditValue = 38705d
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Properties.ImmediatePost = True
      Properties.WeekNumbers = True
      Properties.OnEditValueChanged = deEndeAufgabePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 81
    end
    object teEndeAufgabe: TcxTimeEdit
      Left = 224
      Top = 144
      EditValue = 0.75d
      Properties.ImmediatePost = True
      Properties.TimeFormat = tfHourMin
      Properties.OnEditValueChanged = teEndeAufgabePropertiesEditValueChanged
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 11
      Width = 57
    end
    object cbErledigungsgrad: TcxComboBox
      Left = 287
      Top = 144
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        '0%'
        '10%'
        '20%'
        '30%'
        '40%'
        '50%'
        '60%'
        '70%'
        '80%'
        '90%'
        '100%')
      Properties.OnChange = cbErledigungsgradPropertiesChange
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 12
      Text = '0%'
      Width = 169
    end
    object cbReminderAufgabe: TcxCheckBox
      Left = 137
      Top = 171
      AutoSize = False
      Caption = 'an die Aufgabe erinnern:'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Transparent = True
      Height = 19
      Width = 145
    end
    object icbReminderAufgabe: TcxImageComboBox
      Left = 288
      Top = 171
      EditValue = '1440'
      Properties.Items = <
        item
          Description = '0 Minuten'
          ImageIndex = 0
          Value = '0'
        end
        item
          Description = '5 Minuten'
          Value = '5'
        end
        item
          Description = '10 Minuten'
          Value = '10'
        end
        item
          Description = '15 Minuten'
          Value = '15'
        end
        item
          Description = '20 Minuten'
          Value = '20'
        end
        item
          Description = '30 Minuten'
          Value = '30'
        end
        item
          Description = '1 Stunde'
          Value = '60'
        end
        item
          Description = '2 Stunden'
          Value = '120'
        end
        item
          Description = '3 Stunden'
          Value = '180'
        end
        item
          Description = '4 Stunden'
          Value = '240'
        end
        item
          Description = '5 Stunden'
          Value = '300'
        end
        item
          Description = '6 Stunden'
          Value = '360'
        end
        item
          Description = '7 Stunden'
          Value = '420'
        end
        item
          Description = '8 Stunden'
          Value = '480'
        end
        item
          Description = '9 Stunden'
          Value = '540'
        end
        item
          Description = '10 Stunden'
          Value = '600'
        end
        item
          Description = '11 Stunden'
          Value = '660'
        end
        item
          Description = '12 Stunden'
          Value = '720'
        end
        item
          Description = '18 Stunden'
          Value = '1080'
        end
        item
          Description = '1 Tag'
          Value = '1440'
        end
        item
          Description = '2 Tage'
          Value = '2880'
        end
        item
          Description = '3 Tage'
          Value = '4320'
        end
        item
          Description = '4 Tage'
          Value = '5760'
        end
        item
          Description = '1 Woche'
          Value = '10080'
        end
        item
          Description = '2 Wochen'
          Value = '20160'
        end>
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 16
      Width = 169
    end
    object cmbbx_Ort: TcxComboBox
      Left = 462
      Top = 144
      AutoSize = False
      Properties.Items.Strings = (
        'im B'#252'ro'
        'zu Hause'
        'beim Arzt'
        'beim Kunden'
        'Schule'
        'Kita'
        'M'#252'll'
        'Feiertag'
        'Ferien'
        'Urlaub'
        'Sonstiges'
        'Geburtstag'
        '')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Text = 'im B'#252'ro'
      Height = 21
      Width = 200
    end
    object chkbx_CompleteDay1: TcxCheckBox
      AlignWithMargins = True
      Left = 137
      Top = 196
      Margins.Left = 134
      Margins.Top = 0
      Margins.Bottom = 0
      AutoSize = False
      Caption = 'Ganzt'#228'gig'
      Properties.OnChange = chkbx_CompleteDayPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Transparent = True
      Height = 21
      Width = 638
    end
    object mNachricht: TcxRichEdit
      Left = 10
      Top = 323
      ParentFont = False
      Properties.AutoURLDetect = True
      Properties.PlainText = True
      Properties.ScrollBars = ssVertical
      Properties.OnURLClick = mNachrichtPropertiesURLClick
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Courier New'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 25
      Height = 427
      Width = 709
    end
    object cxGrid1: TcxGrid
      Left = 725
      Top = 323
      Width = 185
      Height = 387
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
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
        DataController.DataSource = dsAnhaenge
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1Dateiname: TcxGridDBColumn
          Tag = 216443580
          Caption = 'Dateiname'
          DataBinding.FieldName = 'FileName'
          SortIndex = 0
          SortOrder = soAscending
          Width = 139
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Image1: TcxImage
      AlignWithMargins = True
      Left = 725
      Top = 716
      Margins.Left = 5
      Margins.Top = 2
      Margins.Right = 0
      Margins.Bottom = 2
      TabStop = False
      Properties.ReadOnly = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 27
      Transparent = True
      Height = 34
      Width = 32
    end
    object lTypeName: TcxLabel
      AlignWithMargins = True
      Left = 763
      Top = 716
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 0
      Margins.Bottom = 15
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -8
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      TabOrder = 28
      Transparent = True
      Height = 19
      Width = 60
    end
    object btnAnhangOeffnen: TcxButton
      AlignWithMargins = True
      Left = 887
      Top = 716
      Width = 23
      Height = 26
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      LookAndFeel.NativeStyle = False
      OptionsImage.ImageIndex = 26
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 31
      OnClick = btnAnhangOeffnenClick
    end
    object btnAnhangLoeschen: TcxButton
      AlignWithMargins = True
      Left = 858
      Top = 716
      Width = 23
      Height = 26
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000774494D4507D8040F0F213ADE950918000000097048597300000B12
        00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000001C2494441
        5478DAED91C14B1B4114C6BF9DDDD9CD6C5C2DAE91A29048ED211A233484204D
        40B11EBCA824378BD053A1603DF4E22D5808824404B1502A3D091582506C7396
        D04BBCF450A8E29F60F1E04565A3EE32D3890DA45B15FD03FA86619837DFEFE3
        BD79C0FF50FEBED0C1EC864BC80CB8426E5413C129E79FDC9FDB2F6E3018D1B4
        64E7E55CBEA85854808B7F58A93CF308D60AF3C2FB7EA403DFBC7A5EF38974A6
        588C82721742AE80D6F4BF90F256F9463443B1ED561C1F37986601B2051280AA
        19B894BE44D5110C18A02B6FD066CA53BF82D11DEA44FF74188BB65DF51BD4FB
        D10DD86D413C686991DB84B7F80A53D11E9CBE1C434F7B108F430CE927518C97
        4A271399CCD38269567D2DA8064324A4E3FC42C81A38ACF79BF83C9E44F6D928
        CAB90486770F70B89EC75822C1BEEEECD4F28E93F61950C314912EA2708F417E
        01542130F9631FE5E823E48686F025D68DA9DE5E6C572A5EDEF3CC6B637C985B
        D8E094CDF07A6BE2CF18FAC3210C0F44D0F13A8BE7B118B6F6F630EB383EEECE
        286A9AFB2B95121F2D8BD7FAFAC43BC370EF0DBF5514673F1E17AB0DE80363EE
        51382C9654D5B90F5CADC305427CE222A54EC3A47AA749E116D132A557F9DF6A
        A08402DA3590950000000049454E44AE426082}
      OptionsImage.ImageIndex = 85
      PaintStyle = bpsGlyph
      TabOrder = 30
      OnClick = btnAnhangLoeschenClick
    end
    object btnAnhangHinzufuegen: TcxButton
      AlignWithMargins = True
      Left = 829
      Top = 716
      Width = 23
      Height = 26
      Margins.Left = 0
      Margins.Top = 6
      Margins.Right = 0
      Margins.Bottom = 6
      OptionsImage.ImageIndex = 73
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 29
      OnClick = btnAnhangHinzufuegenClick
    end
    object stbr_New: TdxStatusBar
      Left = 10
      Top = 756
      Width = 900
      Height = 22
      Color = clBlack
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        end>
      PaintStyle = stpsUseLookAndFeel
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 10
      Top = 10
      Width = 900
      Height = 63
      Align = dalNone
      BarManager = dxBarManager1
    end
    object edt_Kalname: TcxTextEdit
      Left = 668
      Top = 144
      AutoSize = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Text = 'edt_Kalname'
      Height = 19
      Width = 213
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'stbr_New'
      CaptionOptions.Visible = False
      Control = stbr_New
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 920
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 920
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Firma:'#13#10
      Control = edtFirma
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 383
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnSearchFirma
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnEraseFirma
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ansprechpartner:'
      Control = cbAnsprechpartner
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 441
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Jira Ticket-Nr:'
      Control = edtJiraTicket
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 383
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnGoToJira
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 25
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Betreff:'
      Control = teBetreff
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 896
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = mNachricht
      ControlOptions.OriginalHeight = 432
      ControlOptions.OriginalWidth = 709
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 386
      ControlOptions.OriginalWidth = 181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Image1
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 32
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnAnhangHinzufuegen
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 23
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnAnhangLoeschen
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 23
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnAnhangOeffnen
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 23
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lTypeName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object pnlTopLeft: TdxLayoutGroup
      Parent = dxLayoutGroup12
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = pnlTopLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbTyp
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = pnlTopLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Typ:'
      Index = 0
    end
    object btn_SetRecurringEv: TdxLayoutItem
      Parent = pnlTopLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_SetRecurringEv1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object btn_DelRecurringEv: TdxLayoutItem
      Parent = pnlTopLeft
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_DelRecurringEv1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup12
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem2: TdxLayoutLabeledItem
      Parent = itmstart
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Beginn am:'
      Index = 0
    end
    object lbl_Dauer: TdxLayoutLabeledItem
      Parent = itmDauer
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Dauer (Min.):'
      Index = 0
    end
    object Label6: TdxLayoutLabeledItem
      Parent = itmUm
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'um:'
      Index = 0
    end
    object itmstart: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = itmstart
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = deStart
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmUm: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object itmteStart: TdxLayoutItem
      Parent = itmUm
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = teStart
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itmDauer: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = itmDauer
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = meDauer
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 64
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object pAufgabeTermin: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = pAufgabeTermin
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itemAufgabenstatus: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 3
    end
    object label10: TdxLayoutLabeledItem
      Parent = itemAufgabenstatus
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Aufgabenstatus:'
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = itemAufgabenstatus
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbAufgabenStatus
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 98
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 4
    end
    object dxLayoutLabeledItem3: TdxLayoutLabeledItem
      Parent = dxLayoutGroup15
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Priorit'#228't:'
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbPrioritaet
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 5
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbAufgabenArt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 213
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lart: TdxLayoutLabeledItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Art der Aufgabe:'
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = pAufgabeTermin
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 4
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object itmEnde: TdxLayoutGroup
      Parent = dxLayoutGroup17
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object itmUmEnde: TdxLayoutGroup
      Parent = dxLayoutGroup17
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = itmEnde
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = deEndeAufgabe
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 81
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = itmUmEnde
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = teEndeAufgabe
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 57
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem4: TdxLayoutLabeledItem
      Parent = itmEnde
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ende am:'
      Index = 0
    end
    object dxLayoutLabeledItem5: TdxLayoutLabeledItem
      Parent = itmUmEnde
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'um:'
      Index = 0
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup17
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbErledigungsgrad
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem6: TdxLayoutLabeledItem
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Erledigungsgrad:'
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup17
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cmbbx_Ort
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem7: TdxLayoutLabeledItem
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ort:'
      Index = 0
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = pAufgabeTermin
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cbReminderAufgabe
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = icbReminderAufgabe
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lblAufgabe: TdxLayoutLabeledItem
      Parent = dxLayoutGroup20
      CaptionOptions.Text = 'vor der Aufgabe'
      Index = 2
    end
    object chkbx_CompleteDay: TdxLayoutGroup
      Parent = pAufgabeTermin
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = chkbx_CompleteDay
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chkbx_CompleteDay1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 638
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup17
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 4
    end
    object dxLayoutLabeledItem8: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Kalendername:'
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = edt_Kalname
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 213
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object pDauerFormat: TcxGroupBox
    Left = -350
    Top = 75
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 1
    Visible = False
    Height = 56
    Width = 99
    object rbDauerInMinuten: TcxRadioButton
      Left = 6
      Top = 3
      Width = 91
      Height = 17
      Caption = 'Minuten'
      TabOrder = 0
    end
    object rbDauerInStunden: TcxRadioButton
      Tag = 1
      Left = 6
      Top = 20
      Width = 90
      Height = 17
      Caption = 'Stunden'
      TabOrder = 1
    end
    object rbDauerInTagen: TcxRadioButton
      Tag = 2
      Left = 6
      Top = 37
      Width = 90
      Height = 17
      Caption = 'Tagen'
      TabOrder = 2
    end
  end
  object tAnhaenge: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    AfterScroll = tAnhaengeAfterScroll
    Left = 512
    Top = 504
    object tAnhaengeFileName: TWideStringField
      FieldName = 'FileName'
      Size = 255
    end
    object tAnhaengeFullName: TWideStringField
      FieldName = 'FullName'
      Size = 255
    end
    object tAnhaengeDeleteOrigFile: TBooleanField
      FieldName = 'DeleteOrigFile'
    end
  end
  object dsAnhaenge: TDataSource
    DataSet = tAnhaenge
    Left = 512
    Top = 456
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
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseFullReset = True
    UseSystemFont = True
    Left = 336
    Top = 273
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 943
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bSend'
        end
        item
          Visible = True
          ItemName = 'bCancel'
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
    object bSend: TdxBarLargeButton
      Caption = 'Sichern'
      Category = 0
      Hint = 'Sichern'
      Visible = ivAlways
      OnClick = bSendClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
    object bCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = bCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
  end
  object odAnhang: TdxOpenFileDialog
    Filter = 'Alle Dateien (*.*)|*.*'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Title = 'Anhang hinzuf'#252'gen'
    Left = 512
    Top = 400
  end
end
