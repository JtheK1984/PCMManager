object fNeu: TfNeu
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
  object dsHost: TdxDockSite
    Left = 0
    Top = 58
    Width = 920
    Height = 708
    AllowDockClients = []
    Align = alClient
    DockingType = 5
    OriginalWidth = 920
    OriginalHeight = 708
    object dxLayoutDockSite1: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 920
      Height = 708
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
    end
    object dxDockPanel1: TdxDockPanel
      Left = 0
      Top = 0
      Width = 920
      Height = 708
      AllowDock = []
      AllowDockClients = []
      AllowFloating = False
      AutoHide = False
      Caption = 'dxDockPanel1'
      CaptionButtons = []
      CustomCaptionButtons.Buttons = <>
      Dockable = False
      ShowCaption = False
      TabsProperties.CustomButtons.Buttons = <>
      DockingType = 0
      OriginalWidth = 696
      OriginalHeight = 140
      object pDauerFormat: TcxGroupBox
        Left = 350
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
      object ptop: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 268
        Width = 916
        object pAll: TcxGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 139
          Margins.Left = 2
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          PanelStyle.Active = True
          Style.BorderStyle = ebsNone
          TabOrder = 0
          Height = 137
          Width = 907
          object btnEraseFirma: TcxButton
            Left = 416
            Top = 20
            Width = 25
            Height = 21
            LookAndFeel.NativeStyle = False
            OptionsImage.ImageIndex = 35
            OptionsImage.Images = dm_PCM.imglst_16x16
            TabOrder = 2
            OnClick = btnEraseFirmaClick
          end
          object btnGoToJira: TcxButton
            Left = 389
            Top = 61
            Width = 25
            Height = 21
            LookAndFeel.NativeStyle = False
            OptionsImage.ImageIndex = 47
            OptionsImage.Images = dm_PCM.imglst_16x16
            TabOrder = 5
            OnClick = btnGoToJiraClick
          end
          object btnSearchFirma: TcxButton
            Left = 389
            Top = 20
            Width = 25
            Height = 21
            LookAndFeel.NativeStyle = False
            OptionsImage.ImageIndex = 28
            OptionsImage.Images = dm_PCM.imglst_16x16
            TabOrder = 1
            OnClick = btnSearchFirmaClick
          end
          object cbAnsprechpartner: TcxLookupComboBox
            Left = 455
            Top = 20
            Properties.DropDownRows = 20
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'NameVorname'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = dm_PCM.ds_Aufgabe_Ansprechpartner
            EditValue = 0
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Width = 441
          end
          object edtFirma: TcxTextEdit
            Left = 0
            Top = 20
            Properties.ReadOnly = True
            Properties.OnEditValueChanged = edtFirmaPropertiesEditValueChanged
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Width = 383
          end
          object edtJiraTicket: TcxTextEdit
            Left = 0
            Top = 61
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 4
            Width = 383
          end
          object Label18: TcxLabel
            Left = 0
            Top = 47
            Caption = 'Jira Ticket-Nr.:'
            Transparent = True
          end
          object Label2: TcxLabel
            Left = 0
            Top = 88
            Caption = 'Betreff:'
            Transparent = True
          end
          object Label3: TcxLabel
            Left = 0
            Top = 6
            Caption = 'Firma:'
            Transparent = True
          end
          object Label9: TcxLabel
            Left = 455
            Top = 6
            Caption = 'Ansprechpartner:in:'
            Transparent = True
          end
          object teBetreff: TcxTextEdit
            Left = 0
            Top = 102
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 6
            Width = 896
          end
        end
        object chkbx_CompleteDay: TcxCheckBox
          AlignWithMargins = True
          Left = 136
          Top = 118
          Margins.Left = 134
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alTop
          AutoSize = False
          Caption = 'Ganzt'#228'gig'
          Properties.OnChange = chkbx_CompleteDayPropertiesChange
          Style.BorderStyle = ebsFlat
          Style.TransparentBorder = False
          TabOrder = 1
          Transparent = True
          Visible = False
          Height = 21
          Width = 775
        end
        object pnlTop: TcxGroupBox
          Left = 2
          Top = 2
          Align = alTop
          PanelStyle.Active = True
          Style.BorderStyle = ebsNone
          TabOrder = 2
          Height = 116
          Width = 912
          object pnlTopLeft: TcxGroupBox
            Left = 2
            Top = 2
            Align = alLeft
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 0
            Height = 112
            Width = 131
            object btn_DelRecurringEv: TcxButton
              Left = 0
              Top = 87
              Width = 121
              Height = 21
              Caption = 'Serie entfernen'
              Enabled = False
              TabOrder = 0
              TabStop = False
              Visible = False
              OnClick = btn_DelRecurringEvClick
            end
            object btn_SetRecurringEv: TcxButton
              Left = 0
              Top = 59
              Width = 121
              Height = 21
              Caption = 'Serie'
              TabOrder = 1
              Visible = False
              OnClick = btn_SetRecurringEvClick
            end
            object cbTyp: TcxImageComboBox
              Left = 0
              Top = 16
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
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.NativeStyle = False
              Style.ButtonTransparency = ebtNone
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              Width = 121
            end
            object Label11: TcxLabel
              Left = 0
              Top = 0
              Caption = 'Typ:'
              Transparent = True
            end
          end
          object pAufgabeTermin: TcxGroupBox
            Left = 133
            Top = 2
            Align = alClient
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 1
            Height = 112
            Width = 777
            object cbAufgabenArt: TcxLookupComboBox
              Left = 551
              Top = 16
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
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 5
              Width = 213
            end
            object cbAufgabenStatus: TcxImageComboBox
              Left = 222
              Top = 16
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
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 3
              Width = 98
            end
            object cbPrioritaet: TcxLookupComboBox
              Left = 327
              Top = 16
              Properties.DropDownWidth = 200
              Properties.KeyFieldNames = 'ID'
              Properties.ListColumns = <
                item
                  FieldName = 'Bezeichnung'
                end>
              Properties.ListSource = dm_PCM.ds_KalenderAufgaben_Prio
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 4
              Width = 217
            end
            object deStart: TcxDateEdit
              Left = 0
              Top = 16
              EditValue = 38705d
              Properties.DateButtons = [btnClear, btnNow, btnToday]
              Properties.ImmediatePost = True
              Properties.WeekNumbers = True
              Properties.OnEditValueChanged = deStartPropertiesEditValueChanged
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 0
              Width = 81
            end
            object Label10: TcxLabel
              Left = 224
              Top = 0
              Caption = 'Aufgabenstatus:'
              Transparent = True
            end
            object Label6: TcxLabel
              Left = 88
              Top = 0
              Caption = 'um:'
              Transparent = True
            end
            object Label7: TcxLabel
              Left = 327
              Top = 0
              Caption = 'Priorit'#228't:'
              Transparent = True
            end
            object lArt: TcxLabel
              Left = 551
              Top = 0
              Caption = 'Art der Aufgabe:'
              Transparent = True
            end
            object lblDauer: TcxLabel
              Left = 152
              Top = 0
              Caption = 'Dauer (Min.):'
              Transparent = True
            end
            object lFaelligAm: TcxLabel
              Left = 0
              Top = 0
              Caption = 'Beginn am:'
              Transparent = True
            end
            object meDauer: TcxMaskEdit
              Left = 152
              Top = 16
              Properties.Alignment.Horz = taRightJustify
              Properties.MaxLength = 0
              Properties.ValidateOnEnter = False
              Properties.OnEditValueChanged = meDauerPropertiesEditValueChanged
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 2
              Text = '10'
              OnEnter = meDauerEnter
              OnExit = meDauerExit
              OnKeyPress = meDauerKeyPress
              Width = 64
            end
            object teStart: TcxTimeEdit
              Left = 88
              Top = 16
              EditValue = 0.75d
              Properties.ImmediatePost = True
              Properties.TimeFormat = tfHourMin
              Properties.OnEditValueChanged = teStartPropertiesEditValueChanged
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 1
              Width = 57
            end
            object Label14: TcxLabel
              Left = 0
              Top = 43
              Caption = 'Ende am:'
              Transparent = True
            end
            object deEndeAufgabe: TcxDateEdit
              Left = 0
              Top = 61
              EditValue = 38705d
              Properties.DateButtons = [btnClear, btnNow, btnToday]
              Properties.ImmediatePost = True
              Properties.WeekNumbers = True
              Properties.OnEditValueChanged = deEndeAufgabePropertiesEditValueChanged
              Style.BorderStyle = ebsFlat
              TabOrder = 6
              Width = 81
            end
            object teEndeAufgabe: TcxTimeEdit
              Left = 88
              Top = 59
              EditValue = 0.75d
              Properties.ImmediatePost = True
              Properties.TimeFormat = tfHourMin
              Properties.OnEditValueChanged = teEndeAufgabePropertiesEditValueChanged
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 7
              Width = 57
            end
            object cbErledigungsgrad: TcxComboBox
              Left = 152
              Top = 59
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
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 8
              Text = '0%'
              Width = 169
            end
            object Label15: TcxLabel
              Left = 88
              Top = 43
              Caption = 'um:'
              Transparent = True
            end
            object Label17: TcxLabel
              Left = 152
              Top = 43
              Caption = 'Erledigungsgrad:'
              Transparent = True
            end
            object lblAufgabe: TcxLabel
              Left = 327
              Top = 88
              Caption = 'vor der Aufgabe'
              Transparent = True
            end
            object cbReminderAufgabe: TcxCheckBox
              Left = 0
              Top = 88
              AutoSize = False
              Caption = 'an die Aufgabe erinnern:'
              Style.BorderStyle = ebsFlat
              TabOrder = 10
              Transparent = True
              Height = 19
              Width = 145
            end
            object icbReminderAufgabe: TcxImageComboBox
              Left = 152
              Top = 86
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
              Style.BorderStyle = ebsFlat
              Style.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.NativeStyle = False
              TabOrder = 11
              Width = 169
            end
            object cmbbx_Ort: TcxComboBox
              Left = 327
              Top = 59
              AutoSize = False
              Properties.Items.Strings = (
                'im B'#252'ro'
                'beim Kunden'
                'zu Hause'
                'Schule'
                'Kindergarten'
                'Sonstiges'
                'Geburtstag')
              Style.BorderStyle = ebsFlat
              TabOrder = 9
              Text = 'im B'#252'ro'
              Height = 21
              Width = 217
            end
            object lbl_ort: TcxLabel
              Left = 327
              Top = 43
              AutoSize = False
              Caption = 'Ort:'
              Transparent = True
              Height = 17
              Width = 80
            end
          end
        end
      end
      object pnClient: TcxGroupBox
        AlignWithMargins = True
        Left = 2
        Top = 268
        Margins.Left = 2
        Margins.Top = 0
        Margins.Right = 8
        Margins.Bottom = 0
        Align = alClient
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 2
        Height = 436
        Width = 906
        object cxSplitter1: TcxSplitter
          Left = 711
          Top = 2
          Width = 8
          Height = 432
          HotZoneClassName = 'TcxSimpleStyle'
          Control = panel6
        end
        object mNachricht: TcxRichEdit
          Left = 2
          Top = 2
          Align = alClient
          ParentFont = False
          Properties.AutoURLDetect = True
          Properties.PlainText = True
          Properties.ScrollBars = ssVertical
          Properties.OnURLClick = mNachrichtPropertiesURLClick
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Courier New'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 432
          Width = 709
        end
        object panel6: TcxGroupBox
          Left = 719
          Top = 2
          Align = alRight
          PanelStyle.Active = True
          Style.BorderStyle = ebsFlat
          TabOrder = 2
          Height = 432
          Width = 185
          object cxGrid1: TcxGrid
            Left = 2
            Top = 2
            Width = 181
            Height = 386
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
          object pAnhaengeView: TcxGroupBox
            Left = 2
            Top = 388
            Align = alBottom
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            TabOrder = 1
            Height = 42
            Width = 181
            object Image1: TcxImage
              AlignWithMargins = True
              Left = 7
              Top = 4
              Margins.Left = 5
              Margins.Top = 2
              Margins.Right = 0
              Margins.Bottom = 2
              TabStop = False
              Align = alLeft
              AutoSize = True
              Properties.ReadOnly = True
              Style.BorderStyle = ebsNone
              TabOrder = 3
              Transparent = True
              Height = 34
              Width = 32
            end
            object lTypeName: TcxLabel
              AlignWithMargins = True
              Left = 43
              Top = 6
              Margins.Left = 4
              Margins.Top = 4
              Margins.Right = 0
              Margins.Bottom = 15
              Align = alLeft
              AutoSize = False
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -8
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Transparent = True
              Height = 19
              Width = 60
            end
            object btnAnhangOeffnen: TcxButton
              AlignWithMargins = True
              Left = 156
              Top = 8
              Width = 23
              Height = 26
              Margins.Left = 0
              Margins.Top = 6
              Margins.Right = 0
              Margins.Bottom = 6
              Align = alRight
              LookAndFeel.NativeStyle = False
              OptionsImage.ImageIndex = 26
              OptionsImage.Images = dm_PCM.imglst_16x16
              PaintStyle = bpsGlyph
              TabOrder = 2
              OnClick = btnAnhangOeffnenClick
            end
            object btnAnhangLoeschen: TcxButton
              AlignWithMargins = True
              Left = 133
              Top = 8
              Width = 23
              Height = 26
              Margins.Left = 0
              Margins.Top = 6
              Margins.Right = 0
              Margins.Bottom = 6
              Align = alRight
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
              TabOrder = 1
              OnClick = btnAnhangLoeschenClick
            end
            object btnAnhangHinzufuegen: TcxButton
              AlignWithMargins = True
              Left = 110
              Top = 8
              Width = 23
              Height = 26
              Margins.Left = 0
              Margins.Top = 6
              Margins.Right = 0
              Margins.Bottom = 6
              Align = alRight
              OptionsImage.ImageIndex = 73
              OptionsImage.Images = dm_PCM.imglst_16x16
              PaintStyle = bpsGlyph
              TabOrder = 0
              OnClick = btnAnhangHinzufuegenClick
            end
          end
        end
      end
    end
  end
  object stbr_New: TdxStatusBar
    Left = 0
    Top = 766
    Width = 920
    Height = 22
    Color = clBlack
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    PaintStyle = stpsUseLookAndFeel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
  object dxDockingManager1: TdxDockingManager
    AutoHideInterval = 1000
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.AllowFloating = False
    DefaultHorizContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.TabsProperties.CustomButtons.Buttons = <>
    DefaultTabContainerSiteProperties.TabsProperties.TabSlants.Kind = skCutCorner
    DockZonesWidth = 40
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 179
    Top = 272
    PixelsPerInch = 96
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
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseFullReset = True
    UseSystemFont = True
    Left = 336
    Top = 273
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      58
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
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
