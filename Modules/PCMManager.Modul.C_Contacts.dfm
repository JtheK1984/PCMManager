object frm_Contact: Tfrm_Contact
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PCM - Manager: Kontakte'
  ClientHeight = 800
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object lactrl_Contacts: TdxLayoutControl
    Left = 0
    Top = 132
    Width = 1280
    Height = 668
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    ExplicitWidth = 1274
    ExplicitHeight = 651
    object cmbbx_KontaktSucheArt: TcxComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSucheAbteilung: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSucheFirma: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSucheFunktion: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSucheNachname: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
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
      StyleDisabled.TextColor = clBtnShadow
      StyleDisabled.TextStyle = []
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.TextStyle = []
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSucheOrt: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSuchePLZ: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSucheStrasse: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSucheVorname: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object cmbbx_Anrede: TcxDBLookupComboBox
      Left = 98
      Top = 45
      AutoSize = False
      DataBinding.DataField = 'ID_Anrede'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListSource = dm_PCM.ds_Contact_Anrede
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 16
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_KontaktGeburtsname: TcxDBTextEdit
      Left = 98
      Top = 126
      AutoSize = False
      DataBinding.DataField = 'Geburtsname'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 19
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_KontaktNachname: TcxDBTextEdit
      Left = 98
      Top = 99
      AutoSize = False
      DataBinding.DataField = 'Nachname'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clInfoText
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 18
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_KontaktName: TcxDBTextEdit
      Left = 98
      Top = 72
      AutoSize = False
      DataBinding.DataField = 'Vorname'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clInfoText
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 17
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_KontaktPLZ: TcxDBTextEdit
      Left = 98
      Top = 261
      AutoSize = False
      DataBinding.DataField = 'PLZ_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 24
      OnExit = btn_KontaktSaveClick
      Height = 19
      Width = 69
    end
    object edt_KontaktStrasse: TcxDBTextEdit
      Left = 98
      Top = 234
      AutoSize = False
      DataBinding.DataField = 'Strasse_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 23
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_KontaktZusatz: TcxDBTextEdit
      Left = 98
      Top = 207
      AutoSize = False
      DataBinding.DataField = 'Zusatz'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 22
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object dtEdt_KontaktZusatzGeburtsdatum: TcxDBDateEdit
      Left = 669
      Top = 79
      AutoSize = False
      DataBinding.DataField = 'Geburtsdatum'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.ButtonGlyph.SourceDPI = 96
      Properties.ButtonGlyph.SourceHeight = 16
      Properties.ButtonGlyph.SourceWidth = 16
      Properties.ButtonGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
        796C6520747970653D22746578742F637373223E0D0A092E426C75657B66696C
        6C3A233131373744373B7D0D0A092E59656C6C6F777B66696C6C3A2346464231
        31353B7D0D0A092E426C61636B7B66696C6C3A233732373237323B7D0D0A092E
        477265656E7B66696C6C3A233033394332333B7D0D0A092E5265647B66696C6C
        3A234431314331433B7D0D0A092E7374307B6F7061636974793A302E37353B7D
        0D0A092E7374317B6F7061636974793A302E353B7D0D0A3C2F7374796C653E0D
        0A3C672069643D2243616C656E646172223E0D0A093C7061746820636C617373
        3D225265642220643D224D32392C34682D33763363302C302E352D302E352C31
        2D312C31682D34632D302E352C302D312D302E352D312D315634682D38763363
        302C302E352D302E352C312D312C31483743362E352C382C362C372E352C362C
        37563448330D0A090943322E342C342C322C342E342C322C3576356832385635
        4333302C342E342C32392E362C342C32392C347A222F3E0D0A093C6720636C61
        73733D22737431223E0D0A09093C7265637420783D22382220793D2231342220
        636C6173733D22426C61636B222077696474683D223422206865696768743D22
        34222F3E0D0A09093C7265637420783D2231342220793D2232302220636C6173
        733D22426C61636B222077696474683D223422206865696768743D2234222F3E
        0D0A09093C7265637420783D22382220793D2232302220636C6173733D22426C
        61636B222077696474683D223422206865696768743D2234222F3E0D0A09093C
        7265637420783D2232302220793D2231342220636C6173733D22426C61636B22
        2077696474683D223422206865696768743D2234222F3E0D0A09093C72656374
        20783D2231342220793D2231342220636C6173733D22426C61636B2220776964
        74683D223422206865696768743D2234222F3E0D0A09093C7265637420783D22
        32302220793D2232302220636C6173733D22426C61636B222077696474683D22
        3422206865696768743D2234222F3E0D0A093C2F673E0D0A093C706174682063
        6C6173733D22426C61636B2220643D224D32382C313076313848345631304832
        76313963302C302E362C302E342C312C312C3168323663302E362C302C312D30
        2E342C312D315631304832387A222F3E0D0A093C7265637420783D2232322220
        793D22322220636C6173733D22426C61636B222077696474683D223222206865
        696768743D2234222F3E0D0A093C7265637420783D22382220793D2232222063
        6C6173733D22426C61636B222077696474683D223222206865696768743D2234
        222F3E0D0A3C2F673E0D0A3C2F7376673E0D0A}
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 34
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 575
    end
    object lucmbbx_KontaktZusatzFamilienstand: TcxDBLookupComboBox
      Left = 669
      Top = 160
      AutoSize = False
      DataBinding.DataField = 'ID_Familienstand'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dm_PCM.ds_Contact_Familienstand
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 37
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 575
    end
    object lucmbbx_KontaktZusatzGeschlecht: TcxDBLookupComboBox
      Left = 669
      Top = 133
      AutoSize = False
      DataBinding.DataField = 'ID_Geschlecht'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListSource = dm_PCM.ds_Contact_Geschlecht
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 36
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 575
    end
    object lucmbbx_Konfession: TcxDBLookupComboBox
      Left = 669
      Top = 214
      AutoSize = False
      DataBinding.DataField = 'ID_Konfession'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dm_PCM.ds_Contact_Konfession
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 40
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 548
    end
    object lucmbbx_Staatsanghoerigkeit: TcxDBLookupComboBox
      Left = 669
      Top = 187
      AutoSize = False
      DataBinding.DataField = 'ID_Staatsangehoerigkeit'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = dm_PCM.ds_Contact_Staatsangehoerigkeit
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 38
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 548
    end
    object img_Picture: TcxDBImage
      Left = 402
      Top = 79
      TabStop = False
      DataBinding.DataField = 'Bild'
      DataBinding.DataSource = ds_Kontakte
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 33
      Height = 156
      Width = 156
    end
    object edt_KontaktGeschaeftlichAbteilung: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Abteilung_Ges'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 51
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 744
    end
    object edt_KontaktGeschaeftlichFirma: TcxDBTextEdit
      Left = 10000
      Top = 10000
      OnFocusChanged = btn_KontaktSaveClick
      AutoSize = False
      DataBinding.DataField = 'Firma'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 44
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 592
    end
    object edt_KontaktGeschaeftlichPLZ: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'PLZ_Ges'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 46
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 69
    end
    object edt_KontaktGeschaeftlichStrasse: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Strasse_Ges'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 45
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 592
    end
    object mem_Sonstige: TcxDBMemo
      Left = 402
      Top = 276
      DataBinding.DataField = 'Info'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 42
      OnExit = btn_KontaktSaveClick
      Height = 97
      Width = 842
    end
    object grd_Suche: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1240
      Height = 422
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      LookAndFeel.ScrollbarMode = sbmClassic
      object grdDBTblView_Suche: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdDBTblView_KontakteCellDblClick
        DataController.DataSource = ds_Kontakte
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.KeyFieldNames = 'ID'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
              end>
          end>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_SucheID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object grdDBTblView_SucheID_Anrede: TcxGridDBColumn
          Caption = 'Anrede'
          DataBinding.FieldName = 'ID_Anrede'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dm_PCM.ds_Contact_Anrede
          FixedKind = fkLeft
        end
        object grdDBTblView_SucheVorname: TcxGridDBColumn
          DataBinding.FieldName = 'Vorname'
          FixedKind = fkLeft
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
        end
        object grdDBTblView_SucheNachname: TcxGridDBColumn
          DataBinding.FieldName = 'Nachname'
          FixedKind = fkLeft
          SortIndex = 1
          SortOrder = soAscending
          Width = 200
        end
        object grdDBTblView_SucheGeburtsname: TcxGridDBColumn
          DataBinding.FieldName = 'Geburtsname'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheGeburtsland: TcxGridDBColumn
          DataBinding.FieldName = 'Geburtsland'
          DataBinding.IsNullValueType = True
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheZusatz: TcxGridDBColumn
          DataBinding.FieldName = 'Zusatz'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheBild: TcxGridDBColumn
          DataBinding.FieldName = 'Bild'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxPNGImage'
        end
        object grdDBTblView_SucheStrasse_Privat: TcxGridDBColumn
          Caption = 'Strasse Privat'
          DataBinding.FieldName = 'Strasse_Privat'
          Width = 200
        end
        object grdDBTblView_SuchePLZ_Privat: TcxGridDBColumn
          Caption = 'PLZ Privat'
          DataBinding.FieldName = 'PLZ_Privat'
          Width = 90
        end
        object grdDBTblView_SucheOrt_Privat: TcxGridDBColumn
          Caption = 'Ort Privat'
          DataBinding.FieldName = 'Ort_Privat'
          Width = 200
        end
        object grdDBTblView_SucheID_Kontaktart: TcxGridDBColumn
          Caption = 'Kontaktart'
          DataBinding.FieldName = 'ID_Kontaktart'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dm_PCM.ds_Contact_Kontaktart
          Width = 120
        end
        object grdDBTblView_SucheTelefon_Privat: TcxGridDBColumn
          Caption = 'Telefon Privat'
          DataBinding.FieldName = 'Telefon_Privat'
          Width = 150
        end
        object grdDBTblView_SucheTelefon_Privat1: TcxGridDBColumn
          Caption = 'Telefon Privat 1'
          DataBinding.FieldName = 'Telefon_Privat1'
          Visible = False
          Width = 150
        end
        object grdDBTblView_SucheHandy_privat: TcxGridDBColumn
          Caption = 'Mobil Privat'
          DataBinding.FieldName = 'Handy_privat'
          Width = 150
        end
        object grdDBTblView_SucheE_Mail_Privat: TcxGridDBColumn
          Caption = 'E-Mail Privat'
          DataBinding.FieldName = 'E_Mail_Privat'
          Width = 150
        end
        object grdDBTblView_SucheE_Mail_Privat1: TcxGridDBColumn
          Caption = 'E-Mail Privat 1'
          DataBinding.FieldName = 'E_Mail_Privat1'
          Visible = False
          Width = 180
        end
        object grdDBTblView_SucheInternet_Privat: TcxGridDBColumn
          Caption = 'Internet Privat'
          DataBinding.FieldName = 'Internet_Privat'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheGeburtsdatum: TcxGridDBColumn
          DataBinding.FieldName = 'Geburtsdatum'
          Visible = False
          Width = 100
        end
        object grdDBTblView_SucheID_Geschlecht: TcxGridDBColumn
          Caption = 'Geschlecht'
          DataBinding.FieldName = 'ID_Geschlecht'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dm_PCM.ds_Contact_Geschlecht
          Visible = False
          Width = 80
        end
        object grdDBTblView_SucheID_Familienstand: TcxGridDBColumn
          Caption = 'Familienstand'
          DataBinding.FieldName = 'ID_Familienstand'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dm_PCM.ds_Contact_Familienstand
          Visible = False
          Width = 90
        end
        object grdDBTblView_SucheID_Staatsangehoerigkeit: TcxGridDBColumn
          Caption = 'Staatsangehoerigkeit'
          DataBinding.FieldName = 'ID_Staatsangehoerigkeit'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dm_PCM.ds_Contact_Staatsangehoerigkeit
          Visible = False
          Width = 120
        end
        object grdDBTblView_SucheID_Konfession: TcxGridDBColumn
          Caption = 'Konfession'
          DataBinding.FieldName = 'ID_Konfession'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = dm_PCM.ds_Contact_Konfession
          Visible = False
          Width = 80
        end
        object grdDBTblView_SucheInfo: TcxGridDBColumn
          DataBinding.FieldName = 'Info'
          Visible = False
          Width = 100
        end
        object grdDBTblView_SucheFirma: TcxGridDBColumn
          DataBinding.FieldName = 'Firma'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheStrasse_Ges: TcxGridDBColumn
          Caption = 'Strasse Gesch'#228'ftlich'
          DataBinding.FieldName = 'Strasse_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SuchePLZ_Ges: TcxGridDBColumn
          Caption = 'PLZ Gesch'#228'ftlich'
          DataBinding.FieldName = 'PLZ_Ges'
          Visible = False
          Width = 90
        end
        object grdDBTblView_SucheOrt_Ges: TcxGridDBColumn
          Caption = 'Ort Gesch'#228'ftlich'
          DataBinding.FieldName = 'Ort_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheAbteilung_Ges: TcxGridDBColumn
          Caption = 'Abteilung'
          DataBinding.FieldName = 'Abteilung_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheFunktion_Ges: TcxGridDBColumn
          Caption = 'Funktion'
          DataBinding.FieldName = 'Funktion_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheZentrale_Ges: TcxGridDBColumn
          Caption = 'Zentrale'
          DataBinding.FieldName = 'Zentrale_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheTelefon_Ges: TcxGridDBColumn
          Caption = 'Durchwahl'
          DataBinding.FieldName = 'Telefon_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheHandy_Ges: TcxGridDBColumn
          Caption = 'Handy Gesch'#228'ftlich'
          DataBinding.FieldName = 'Handy_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheE_Mail_Ges: TcxGridDBColumn
          Caption = 'E-Mail Gesch'#228'ftlich'
          DataBinding.FieldName = 'E_Mail_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheInternet_Ges: TcxGridDBColumn
          Caption = 'Internet Gesch'#228'ftlich'
          DataBinding.FieldName = 'Internet_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheFacebook: TcxGridDBColumn
          DataBinding.FieldName = 'Facebook'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheSkype: TcxGridDBColumn
          DataBinding.FieldName = 'Skype'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheLive_Messanger: TcxGridDBColumn
          Caption = 'Microsoft Teams'
          DataBinding.FieldName = 'Live_Messanger'
          Visible = False
          Width = 200
        end
      end
      object grdLvl_Suche: TcxGridLevel
        GridView = grdDBTblView_Suche
      end
    end
    object btn_ClearFilter: TcxButton
      Left = 10000
      Top = 10000
      Width = 137
      Height = 27
      Caption = 'Filter l'#246'schen'
      OptionsImage.ImageIndex = 24
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 14
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_ClearFilterClick
    end
    object btn_kontaktsuchen: TcxButton
      Left = 10000
      Top = 10000
      Width = 137
      Height = 27
      Caption = 'Kontakt suchen'
      OptionsImage.ImageIndex = 25
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 13
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_kontaktsuchenClick
    end
    object edt_KontakteSonstigesFacebook: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Facebook'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 56
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 787
    end
    object edt_KontakteSonstigesSkype: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Skype'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 57
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 787
    end
    object edt_KontakteSonstigesTeams: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Live_Messanger'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 58
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 787
    end
    object edt_KontaktGeschaeftlichFunktion: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Funktion_Ges'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 52
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 744
    end
    object btn_EditStaatsangehoerigkeit: TcxButton
      Left = 1223
      Top = 187
      Width = 21
      Height = 21
      Caption = 'btn_EditStaatsangehoerigkeit'
      OptionsImage.ImageIndex = 74
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 39
    end
    object btn_EditKonfession: TcxButton
      Left = 1223
      Top = 214
      Width = 21
      Height = 21
      Caption = 'cxButton3'
      OptionsImage.ImageIndex = 74
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 41
    end
    object cmbbx_KontaktArt: TcxDBLookupComboBox
      Left = 98
      Top = 436
      AutoSize = False
      DataBinding.DataField = 'ID_Kontaktart'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListSource = dm_PCM.ds_Contact_Kontaktart
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 32
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object dtEdt_KontaktZusatzTodestag: TcxDBDateEdit
      Left = 669
      Top = 106
      AutoSize = False
      DataBinding.DataField = 'Todestag'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 35
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 575
    end
    object edt_KontakteGeburtsort: TcxDBTextEdit
      Left = 98
      Top = 153
      AutoSize = False
      DataBinding.DataField = 'Geburtsort'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 20
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object pnl_Browser: TcxGroupBox
      Left = 10000
      Top = 10000
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = clBtnFace
      Style.TransparentBorder = True
      TabOrder = 59
      Visible = False
      Height = 594
      Width = 1244
    end
    object img_PictureGes: TcxDBImage
      Left = 10000
      Top = 10000
      TabStop = False
      DataBinding.DataField = 'Bild'
      DataBinding.DataSource = ds_Kontakte
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 43
      Visible = False
      Height = 156
      Width = 156
    end
    object cmbbx_KontaktAnrede: TcxComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSucheStrasseGes: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
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
      StyleDisabled.TextColor = clBtnShadow
      StyleDisabled.TextStyle = []
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.TextStyle = []
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 10
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSuchePLZGes: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
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
      StyleDisabled.TextColor = clBtnShadow
      StyleDisabled.TextStyle = []
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.TextStyle = []
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 11
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object edt_KontaktSucheOrtGes: TcxTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      ParentFont = False
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
      StyleDisabled.TextColor = clBtnShadow
      StyleDisabled.TextStyle = []
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.TextStyle = []
      StyleReadOnly.LookAndFeel.NativeStyle = False
      TabOrder = 12
      Visible = False
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 150
    end
    object cmbbx_KontaktGeburtsland: TcxDBLookupComboBox
      Left = 98
      Top = 180
      AutoSize = False
      DataBinding.DataField = 'ID_Kontaktart'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListSource = dm_PCM.ds_Contact_Land
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 21
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_KontaktOrt: TcxDBButtonEdit
      Left = 173
      Top = 261
      AutoSize = False
      DataBinding.DataField = 'Ort_Privat'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
            31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
            4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
            3732373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C
            3A233131373744373B7D262331333B262331303B2623393B2E57686974657B66
            696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
            6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
            74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
            7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
            7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
            2E7374337B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C672F
            3E0D0A3C672069643D2247656F506F696E4D617073223E0D0A09093C70617468
            20636C6173733D225265642220643D224D31362C30632D332E332C302D362C32
            2E372D362C3673362C31302C362C313073362D362E372C362D31305331392E33
            2C302C31362C307A204D31362C38632D312E312C302D322D302E392D322D3273
            302E392D322C322D3273322C302E392C322C3220202623393B2623393B533137
            2E312C382C31362C387A222F3E0D0A09093C7061746820636C6173733D22426C
            75652220643D224D32332E342C382E36632D302E382C312E392D322E312C342D
            332E342C352E3776302E355631397631302E326C2D382D38563139762D342E37
            632D312E352D312E392D332E312D342E342D332E372D362E364C342C31327632
            306C382D386C382C386C382D38563420202623393B2623393B4C32332E342C38
            2E367A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktOrtPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 25
      OnExit = btn_KontaktSaveClick
      Height = 19
      Width = 214
    end
    object edt_KontaktTelefon1: TcxDBButtonEdit
      Left = 98
      Top = 286
      DataBinding.DataField = 'Telefon_Privat'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
            3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
            423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
            31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
            3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
            696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
            657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
            74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
            74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
            7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
            2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
            3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
            696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
            696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
            23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
            2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
            6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
            393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
            31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
            6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
            393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
            4646463B7D3C2F7374796C653E0D0A3C672069643D2250686F6E65223E0D0A09
            093C7061746820636C6173733D22426C75652220643D224D32372E372C32332E
            366C2D352E332D352E33632D302E342D302E342D312D302E342D312E342C306C
            2D322E382C322E38632D332E322D312E352D352E382D342E312D372E332D372E
            336C322E382D322E3863302E342D302E342C302E342D312C302D312E34202026
            23393B2623393B4C382E342C342E33632D302E342D302E342D312D302E342D31
            2E352C304C342E332C362E3943342E312C372E322C342C372E342C342C372E37
            43342C31382E392C31332E312C32382C32342E332C323863302E332C302C302E
            352D302E312C302E372D302E336C322E362D322E3620202623393B2623393B43
            32382E312C32342E362C32382E312C32342C32372E372C32332E367A222F3E0D
            0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktTelefon1PropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 26
      OnExit = btn_KontaktSaveClick
      Width = 289
    end
    object edt_Email2: TcxDBButtonEdit
      Left = 98
      Top = 386
      DataBinding.DataField = 'E_Mail_Privat1'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E57686974657B66696C6C3A234646464646
            463B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
            3744373B7D3C2F7374796C653E0D0A3C672069643D224D61696C223E0D0A0909
            3C7265637420793D22342220636C6173733D22426C7565222077696474683D22
            333222206865696768743D223234222F3E0D0A09093C7265637420783D223222
            20793D22362220636C6173733D225768697465222077696474683D2232382220
            6865696768743D223230222F3E0D0A09093C706F6C79676F6E20636C6173733D
            22426C75652220706F696E74733D2233302C382031362C313820322C3820322C
            31302031302E342C313620322C323220322C32342031312E382C31372031362C
            32302032302E322C31372033302C32342033302C32322032312E362C31362033
            302C3130202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_Email2PropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 30
      OnExit = btn_KontaktSaveClick
      Width = 289
    end
    object edt_KontaktTelefon2: TcxDBButtonEdit
      Left = 98
      Top = 311
      DataBinding.DataField = 'Telefon_Privat1'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
            3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
            423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
            31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
            3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
            696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
            657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
            74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
            74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
            7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
            2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
            3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
            696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
            696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
            23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
            2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
            6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
            393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
            31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
            6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
            393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
            4646463B7D3C2F7374796C653E0D0A3C672069643D2250686F6E65223E0D0A09
            093C7061746820636C6173733D22426C75652220643D224D32372E372C32332E
            366C2D352E332D352E33632D302E342D302E342D312D302E342D312E342C306C
            2D322E382C322E38632D332E322D312E352D352E382D342E312D372E332D372E
            336C322E382D322E3863302E342D302E342C302E342D312C302D312E34202026
            23393B2623393B4C382E342C342E33632D302E342D302E342D312D302E342D31
            2E352C304C342E332C362E3943342E312C372E322C342C372E342C342C372E37
            43342C31382E392C31332E312C32382C32342E332C323863302E332C302C302E
            352D302E312C302E372D302E336C322E362D322E3620202623393B2623393B43
            32382E312C32342E362C32382E312C32342C32372E372C32332E367A222F3E0D
            0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktTelefon2PropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 27
      OnExit = btn_KontaktSaveClick
      Width = 289
    end
    object edt_KontaktHandy: TcxDBButtonEdit
      Left = 98
      Top = 336
      DataBinding.DataField = 'Handy_privat'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
            77426F783D22302030203332203332222076657273696F6E3D22312E31222078
            6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
            2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
            2F313939392F786C696E6B2220656E61626C652D6261636B67726F756E643D22
            6E6577203020302033322033322220786D6C3A73706163653D22707265736572
            7665222069643D224C617965725F31223E262331333B262331303B20203C7374
            796C6520747970653D22746578742F637373223E2E426C75657B66696C6C3A23
            3131373744373B7D3C2F7374796C653E0D0A3C7061746820643D224D32332C32
            483943382E342C322C382C322E342C382C3376323663302C302E362C302E342C
            312C312C3168313463302E362C302C312D302E342C312D3156334332342C322E
            342C32332E362C322C32332C327A204D31362C32382020632D312E312C302D32
            2D302E392D322D3263302D312E312C302E392D322C322D3273322C302E392C32
            2C324331382C32372E312C31372E312C32382C31362C32387A204D32322C3232
            48313056346831325632327A222066696C6C3D22233131373744372220636C61
            73733D22426C7565222F3E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktHandyPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 28
      OnExit = btn_KontaktSaveClick
      Width = 289
    end
    object edt_Email1: TcxDBButtonEdit
      Left = 98
      Top = 361
      DataBinding.DataField = 'E_Mail_Privat'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E57686974657B66696C6C3A234646464646
            463B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
            3744373B7D3C2F7374796C653E0D0A3C672069643D224D61696C223E0D0A0909
            3C7265637420793D22342220636C6173733D22426C7565222077696474683D22
            333222206865696768743D223234222F3E0D0A09093C7265637420783D223222
            20793D22362220636C6173733D225768697465222077696474683D2232382220
            6865696768743D223230222F3E0D0A09093C706F6C79676F6E20636C6173733D
            22426C75652220706F696E74733D2233302C382031362C313820322C3820322C
            31302031302E342C313620322C323220322C32342031312E382C31372031362C
            32302032302E322C31372033302C32342033302C32322032312E362C31362033
            302C3130202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_Email1PropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 29
      OnExit = btn_KontaktSaveClick
      Width = 289
    end
    object edt_KontaktInternet: TcxDBButtonEdit
      Left = 98
      Top = 411
      DataBinding.DataField = 'Internet_Privat'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
            3B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A23303339
            4332333B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A
            234646423131353B7D262331333B262331303B2623393B2E426C61636B7B6669
            6C6C3A233732373237323B7D262331333B262331303B2623393B2E5768697465
            7B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E5265
            647B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E73
            74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
            3D22576F726C645F315F223E0D0A09093C7061746820636C6173733D22426C75
            652220643D224D31352E382C32632D372E372C302D31342C362E332D31342C31
            3473362E332C31342C31342C31347331342D362E332C31342D31345332332E36
            2C322C31352E382C327A204D32302E312C31392E31632D302E352C302E312D30
            2E352D302E332D302E312D302E3420202623393B2623393B4332302E312C3138
            2E392C32302E322C31382E382C32302E312C31392E317A204D382E342C31332E
            3363302D302E312C302D302E312C302D302E3243382E342C31332E322C382E34
            2C31332E332C382E342C31332E337A204D32322E312C32312E3963302D302E31
            2D302E312D302E312D302E312D302E3120202623393B2623393B63302E312C30
            2E332D302E312C302E392D302E312C312E32632D302E312C302E342D302E342C
            312E332D302E372C312E3363302C302E322D302E342C302D302E332C302E3263
            2D302E352C302E312D302E382C302E352D302E382C302E3863302C302E312D30
            2E332C312E312D302E342C312E3120202623393B2623393B63302D302E312C30
            2E312D302E322C302E312D302E3363302C302E312D302E312C302E312D302E31
            2C3063302C302E322D302E332C302E382D302E342C302E39632D302E312C302E
            312D302E332C302E332D302E352C302E32632D302E312C302D302E332D302E32
            2D302E332D302E3420202623393B2623393B63302C302E332C302E322C302E36
            2C302E322C302E38632D302E392C302E322D312E382C302E332D322E372C302E
            33632D302E312C302D302E322C302D302E332C3063302E312D302E332C302E31
            2D302E352C302E322D302E3863302E322D302E372C302E322D312E352C302E33
            2D322E3220202623393B2623393B63302E312D302E342C302E332D312E352C30
            2E312D312E39632D302E312D302E322D302E332D302E322D302E352D302E3463
            2D302E362D302E342D302E362D302E372D302E382D312E33632D302E312D302E
            342D302E332D302E352D302E352D302E39632D302E312D302E322D302E322D30
            2E322D302E322D302E3520202623393B2623393B63302D302E322C302E322D30
            2E342C302E322D302E3663302C302D302E312C302E312D302E312C302E316330
            2C302D302E312D302E312D302E312D302E3163302D302E312C302D302E342C30
            2E312D302E3463302D302E322C302E312D302E372C302E332D302E3763302D30
            2E332C302E322D302E332C302E312D302E3520202623393B2623393B63302E33
            2D302E322C302D302E392C302D31632D302E322C302D302E312D302E312D302E
            332D302E3263302C302E312D302E322C302E312D302E322C302E3263302C302E
            312C302E312C302C302E312C302E31632D302E332C302D302E342D302E322D30
            2E362D302E3320202623393B2623393B63302C302E322D302E312D302E322D30
            2E332D302E3363302E312C302E322D302E322D302E322D302E322D302E33632D
            302E312D302E322D302E322D302E332D302E322D302E35632D302E352C302D30
            2E362D302E312D312D302E34632D302E342D302E332D302E372D302E312D312E
            322D302E3320202623393B2623393B632D302E332D302E312D302E372D302E33
            2D302E392D302E35632D302E342D302E332D302E332D302E362D302E352D3163
            2D302E312D302E332D302E372D302E372D302E362D31632D302E362C302D302E
            352D312E332D312E312D312E3363302C302E322C302E362C312E352C302E382C
            3220202623393B2623393B632D302E322D302E342D302E382D302E362D302E39
            2D3163302E352C302D302E322D302E382D302E342D31632D302E322D302E332D
            302E322D302E362D302E372D302E3663302D302E322D302E322D302E342D302E
            322D302E37632D302E312C302D302E322D302E312D302E322D302E3220202623
            393B2623393B63302C302C302E312C302C302E312C3063302D302E312D302E31
            2D302E312C302D302E32632D302E312C302C302C302D302E312C3063302C302C
            302C302C302C302E3143362C392E352C352E392C392E332C352E382C392E3263
            312E312D312E362C322E362D332C342E342D332E3920202623393B2623393B63
            302E312C302E312C302E312C302E332C302E322C302E3363302D302E312C302D
            302E322C302D302E3363302E372D302E342C312E352D302E372C322E342D302E
            3963302E312C302C302E312C302E312C302E322C302E3163302E322C302E312C
            302E342C302E312C302E362C302E3220202623393B2623393B63302E322C302E
            312C302E312C302E312C302E322C302E3463302C302E312C302E312C302E322C
            302E312C302E3363302E312C302C302E312C302C302E322C3063302C302E312D
            302E312C302E312D302E312C304331342C352E372C31342E322C362C31342E34
            2C352E3620202623393B2623393B63302E312D302E322D302E322D302E342D30
            2E312D302E3763302E312D302E322C302E352D302E342C302E352D302E366330
            2C302C302C302C302C3063302D302E312C302D302E322D302E312D302E334331
            352C342C31352E342C342C31352E372C3463302E372C302C312E332C302E312C
            322C302E3220202623393B2623393B63302C302C302C302C302C302E3163302C
            302D302E312C302D302E322C3063302C302C302C302E322C302C302E3163302E
            312C302C302E342C302E322C302E332C302E3463302E312C302C302E312C302E
            312C302E322C302E3163302D302E322C302E332C302E332C302E332C30202026
            23393B2623393B632D302E312C302C302E312C302E312C302E312C302E316330
            2C302E312D302E352C302E332D302E362C302E3363302C302E332C302E382D30
            2E352C302E382C3063302C302C302C302C302E312D302E3163302C302E362D30
            2E382C302E392D312E312C302E39632D302E322C302D302E362C302D302E382C
            3020202623393B2623393B632D302E322C302E312D302E342C302E362D302E37
            2C302E3663302C302E332D302E312C302E332D302E322C302E3463302C302C31
            2E332D312E332C312E332D302E3663302C302D302E312C302E322D302E332C30
            2E3363302C302C302D302E312C302D302E31632D302E312C302E312C302C302E
            312C302C302E3220202623393B2623393B63302E312C302C302E322D302E312C
            302E322D302E3163302C302E312C302C302E322D302E312C302E3263302C302C
            302E312C302C302E312C3063302C302E312D302E312C302E332C302E312C302E
            3363302C302C302C302C302C3063302C302C302C302E312D302E312C302E3163
            302C302C302C302C302C3020202623393B2623393B63302E322C302C302E322C
            302C302E342C3063302C302E332C302C302C302E312C302E32632D302E312C30
            2D302E342C302E332D302E342C302E3363302C302C302D302E312D302E312D30
            2E3163302C302D302E322C302E332D302E322C302E3363302C302C302C302C30
            2D302E3120202623393B2623393B632D302E372C302C302E332D302E352C302E
            332D302E35632D302E352C302D302E322C302E312D302E322D302E3263302C30
            2D302E312C302D302E312C3063302C302E312D302E312C302E322D302E322C30
            2E3263302C302C302D302E312C302D302E31632D302E312C302E312D302E312C
            302E312C302C302E3120202623393B2623393B632D302E312C302E312D302E31
            2C302D302E322C30632D302E312C302E312C302E312C302E342D302E322C302E
            3263302C302E312C302C302C302C302E31632D302E312C302C302D302E312D30
            2E312D302E3163302C302E332D302E362C302E322D302E332C302E37632D302E
            312C302D302E312C302D302E322C3020202623393B2623393B63302C302E312C
            302C302E312C302C302E31632D302E312C302D302E322C302E312D302E332C30
            2E3263302E312C302C302E332C302C302E322C3063302C302E312D302E322C30
            2E312D302E332C302E314331352E332C392C31352E322C392E322C31352C392E
            3163302C302E322C302E312C302E332D302E312C302E3520202623393B262339
            3B63302C302E312C302D302E342C302D302E35632D302E312C302E312D302E33
            2C302E342D302E322C302E3463302C302E322C302E312C302E312C302E312C30
            2E32632D302E322C302C302C302E322C302E312C302E33632D302E312C302D30
            2E312C302D302E312C302E3120202623393B2623393B63302E312C302C302E32
            2C302E312C302E322C302E31632D302E312C302D302E312C302D302E322C3063
            302C302E352D302E392C302E372D302E382C312E3463302C302E332C302E342C
            312C302E312C312E3263302D302E332D302E332D302E342D302E332D302E3763
            2D302E312C302C302C302E312D302E312C302E3120202623393B2623393B632D
            302E312D302E312C302D302E332D302E312D302E35632D302E312D302E312D30
            2E322C302D302E342D302E31632D302E312C302D302E352D302E322D302E352D
            302E32632D302E312C302D302E332C302D302E342C302E3163302E312C302E32
            2C302E322C302C302E312C302E3220202623393B2623393B63302E312C302C30
            2E312C302C302E312C302E31632D302E312C302D302E322D302E312D302E332D
            302E3263302C302E312C302C302E312C302C302E31632D302E312C302D302E31
            2C302D302E322C3063302D302E312C302D302E312C302D302E3163302C302D30
            2E372C302D302E372C3020202623393B2623393B63302C302E322D302E342C30
            2E352D302E352C302E38632D302E312C302E332C302C302E392C302C312E3363
            302E312C302C302E322C302E342C302E342C302E3663302E322C302E312C302E
            372C302E322C302E392C302E3163302E322D302E322C302E322D302E382C302E
            362D302E3820202623393B2623393B63302E342C302C302C302E352C302E312C
            302E39632D302E312C302D302E312D302E312D302E312D302E3163302C302E32
            2D302E312C302E352D302E312C302E3763302E342C302C302E392D302E322C31
            2E312C302E3263302E312C302E322D302E322C302E352D302E312C302E382020
            2623393B2623393B63302C302E322C302E322C302E352C302E342C302E356330
            2E322C302E312C302E322D302E312C302E332D302E3163302E322C302C302E32
            2C302E312C302E342C302E3163302E312C302C302E312C302E322C302E322C30
            2E3263302E312D302E352C302E332D302E372C302E372D302E3920202623393B
            2623393B63302E332D302E312C302E322D302E332C302E312C302E3163302E32
            2C302D302E312C302E352C302E312C302E3563302D302E322C302D302E352C30
            2E332D302E3663302D302E312D302E312C302D302E312D302E3163302E312D30
            2E312C302E352C302E332C302E342C302E3320202623393B2623393B63302C30
            2E312C302E392C302E312C302E392C3063302C302C302E332C302C302E332C30
            63302C302E312C302C302D302E312C302E3163302C302E312C302E332C302E32
            2C302E332C302E31632D302E312C302E332D302E312C302E312D302E332C302E
            3463302E362C302C302E362D302E322C302E372C302E3420202623393B262339
            3B63302E312C302C302C302C302E312C3063302D302E332C302E332D302E312C
            302E332C302E3163302C302C302E352D302E322C302E352C3063302E362C302C
            302E342C302E372C302E372C302E3963302E312C302D302E312C302C302E312C
            3063302C302D302E312C302E332D302E312C302E3320202623393B2623393B63
            302E312C302C302D302E312C302E312D302E3163302C302E312C302C302E312C
            302C302E3163302C302C302C302C302C302E3163302C302C302C302C302C3063
            2D302E322C302D302E312C302D302E312D302E3163302C302D302E352C302E35
            2D302E382C302E3720202623393B2623393B63302E322D302E312C302E332D30
            2E322C302E362D302E3263302C302E332C302C302E312C302C302E3363302E31
            2C302C302D302E332C302E322D302E3363302C302E342C302E342C302E312C30
            2E352C302E3163302C302C302E362D302E332C302E352C302E3163302E322C30
            2C302E312C302E332C302E332C302E3320202623393B2623393B63302E332D30
            2E332C312E322C302E332C312E352C302E354332332E322C32302E372C32322E
            342C32312E312C32322E312C32312E397A204D31372E352C372E336C2D302E31
            2D302E31632D302E312C302D302E342D302E312D302E312D302E326C302E312C
            302E3263302C302C302E312C302C302E312C3020202623393B2623393B433137
            2E342C372E332C31372E342C372E332C31372E352C372E337A204D31372E312C
            362E3263302E312C302C302E342C302E312C302E352C302E3263302C302C302C
            302C302C302E314331372E352C362E352C31372E312C362E332C31372E312C36
            2E327A204D31322E332C31312E3820202623393B2623393B4331322E322C3131
            2E382C31322E322C31312E372C31322E332C31312E384331322E332C31312E37
            2C31322E332C31312E372C31322E332C31312E387A204D31392E362C31382E39
            4331392E362C31382E392C31392E352C31392C31392E362C31382E394C31392E
            362C31382E397A204D31392E352C313920202623393B2623393B4331392E362C
            31392C31392E352C31392E312C31392E352C31394C31392E352C31397A222F3E
            0D0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktInternetPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 31
      OnExit = btn_KontaktSaveClick
      Width = 289
    end
    object edt_KontaktGeschaeftlichEMailZentrale: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'E_Mail_Zentral'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E57686974657B66696C6C3A234646464646
            463B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
            3744373B7D3C2F7374796C653E0D0A3C672069643D224D61696C223E0D0A0909
            3C7265637420793D22342220636C6173733D22426C7565222077696474683D22
            333222206865696768743D223234222F3E0D0A09093C7265637420783D223222
            20793D22362220636C6173733D225768697465222077696474683D2232382220
            6865696768743D223230222F3E0D0A09093C706F6C79676F6E20636C6173733D
            22426C75652220706F696E74733D2233302C382031362C313820322C3820322C
            31302031302E342C313620322C323220322C32342031312E382C31372031362C
            32302032302E322C31372033302C32342033302C32322032312E362C31362033
            302C3130202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 49
      Visible = False
      OnExit = btn_KontaktSaveClick
      Width = 592
    end
    object edt_KontaktGeschaeftlichInternet: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Internet_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
            3B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A23303339
            4332333B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A
            234646423131353B7D262331333B262331303B2623393B2E426C61636B7B6669
            6C6C3A233732373237323B7D262331333B262331303B2623393B2E5768697465
            7B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E5265
            647B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E73
            74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
            3D22576F726C645F315F223E0D0A09093C7061746820636C6173733D22426C75
            652220643D224D31352E382C32632D372E372C302D31342C362E332D31342C31
            3473362E332C31342C31342C31347331342D362E332C31342D31345332332E36
            2C322C31352E382C327A204D32302E312C31392E31632D302E352C302E312D30
            2E352D302E332D302E312D302E3420202623393B2623393B4332302E312C3138
            2E392C32302E322C31382E382C32302E312C31392E317A204D382E342C31332E
            3363302D302E312C302D302E312C302D302E3243382E342C31332E322C382E34
            2C31332E332C382E342C31332E337A204D32322E312C32312E3963302D302E31
            2D302E312D302E312D302E312D302E3120202623393B2623393B63302E312C30
            2E332D302E312C302E392D302E312C312E32632D302E312C302E342D302E342C
            312E332D302E372C312E3363302C302E322D302E342C302D302E332C302E3263
            2D302E352C302E312D302E382C302E352D302E382C302E3863302C302E312D30
            2E332C312E312D302E342C312E3120202623393B2623393B63302D302E312C30
            2E312D302E322C302E312D302E3363302C302E312D302E312C302E312D302E31
            2C3063302C302E322D302E332C302E382D302E342C302E39632D302E312C302E
            312D302E332C302E332D302E352C302E32632D302E312C302D302E332D302E32
            2D302E332D302E3420202623393B2623393B63302C302E332C302E322C302E36
            2C302E322C302E38632D302E392C302E322D312E382C302E332D322E372C302E
            33632D302E312C302D302E322C302D302E332C3063302E312D302E332C302E31
            2D302E352C302E322D302E3863302E322D302E372C302E322D312E352C302E33
            2D322E3220202623393B2623393B63302E312D302E342C302E332D312E352C30
            2E312D312E39632D302E312D302E322D302E332D302E322D302E352D302E3463
            2D302E362D302E342D302E362D302E372D302E382D312E33632D302E312D302E
            342D302E332D302E352D302E352D302E39632D302E312D302E322D302E322D30
            2E322D302E322D302E3520202623393B2623393B63302D302E322C302E322D30
            2E342C302E322D302E3663302C302D302E312C302E312D302E312C302E316330
            2C302D302E312D302E312D302E312D302E3163302D302E312C302D302E342C30
            2E312D302E3463302D302E322C302E312D302E372C302E332D302E3763302D30
            2E332C302E322D302E332C302E312D302E3520202623393B2623393B63302E33
            2D302E322C302D302E392C302D31632D302E322C302D302E312D302E312D302E
            332D302E3263302C302E312D302E322C302E312D302E322C302E3263302C302E
            312C302E312C302C302E312C302E31632D302E332C302D302E342D302E322D30
            2E362D302E3320202623393B2623393B63302C302E322D302E312D302E322D30
            2E332D302E3363302E312C302E322D302E322D302E322D302E322D302E33632D
            302E312D302E322D302E322D302E332D302E322D302E35632D302E352C302D30
            2E362D302E312D312D302E34632D302E342D302E332D302E372D302E312D312E
            322D302E3320202623393B2623393B632D302E332D302E312D302E372D302E33
            2D302E392D302E35632D302E342D302E332D302E332D302E362D302E352D3163
            2D302E312D302E332D302E372D302E372D302E362D31632D302E362C302D302E
            352D312E332D312E312D312E3363302C302E322C302E362C312E352C302E382C
            3220202623393B2623393B632D302E322D302E342D302E382D302E362D302E39
            2D3163302E352C302D302E322D302E382D302E342D31632D302E322D302E332D
            302E322D302E362D302E372D302E3663302D302E322D302E322D302E342D302E
            322D302E37632D302E312C302D302E322D302E312D302E322D302E3220202623
            393B2623393B63302C302C302E312C302C302E312C3063302D302E312D302E31
            2D302E312C302D302E32632D302E312C302C302C302D302E312C3063302C302C
            302C302C302C302E3143362C392E352C352E392C392E332C352E382C392E3263
            312E312D312E362C322E362D332C342E342D332E3920202623393B2623393B63
            302E312C302E312C302E312C302E332C302E322C302E3363302D302E312C302D
            302E322C302D302E3363302E372D302E342C312E352D302E372C322E342D302E
            3963302E312C302C302E312C302E312C302E322C302E3163302E322C302E312C
            302E342C302E312C302E362C302E3220202623393B2623393B63302E322C302E
            312C302E312C302E312C302E322C302E3463302C302E312C302E312C302E322C
            302E312C302E3363302E312C302C302E312C302C302E322C3063302C302E312D
            302E312C302E312D302E312C304331342C352E372C31342E322C362C31342E34
            2C352E3620202623393B2623393B63302E312D302E322D302E322D302E342D30
            2E312D302E3763302E312D302E322C302E352D302E342C302E352D302E366330
            2C302C302C302C302C3063302D302E312C302D302E322D302E312D302E334331
            352C342C31352E342C342C31352E372C3463302E372C302C312E332C302E312C
            322C302E3220202623393B2623393B63302C302C302C302C302C302E3163302C
            302D302E312C302D302E322C3063302C302C302C302E322C302C302E3163302E
            312C302C302E342C302E322C302E332C302E3463302E312C302C302E312C302E
            312C302E322C302E3163302D302E322C302E332C302E332C302E332C30202026
            23393B2623393B632D302E312C302C302E312C302E312C302E312C302E316330
            2C302E312D302E352C302E332D302E362C302E3363302C302E332C302E382D30
            2E352C302E382C3063302C302C302C302C302E312D302E3163302C302E362D30
            2E382C302E392D312E312C302E39632D302E322C302D302E362C302D302E382C
            3020202623393B2623393B632D302E322C302E312D302E342C302E362D302E37
            2C302E3663302C302E332D302E312C302E332D302E322C302E3463302C302C31
            2E332D312E332C312E332D302E3663302C302D302E312C302E322D302E332C30
            2E3363302C302C302D302E312C302D302E31632D302E312C302E312C302C302E
            312C302C302E3220202623393B2623393B63302E312C302C302E322D302E312C
            302E322D302E3163302C302E312C302C302E322D302E312C302E3263302C302C
            302E312C302C302E312C3063302C302E312D302E312C302E332C302E312C302E
            3363302C302C302C302C302C3063302C302C302C302E312D302E312C302E3163
            302C302C302C302C302C3020202623393B2623393B63302E322C302C302E322C
            302C302E342C3063302C302E332C302C302C302E312C302E32632D302E312C30
            2D302E342C302E332D302E342C302E3363302C302C302D302E312D302E312D30
            2E3163302C302D302E322C302E332D302E322C302E3363302C302C302C302C30
            2D302E3120202623393B2623393B632D302E372C302C302E332D302E352C302E
            332D302E35632D302E352C302D302E322C302E312D302E322D302E3263302C30
            2D302E312C302D302E312C3063302C302E312D302E312C302E322D302E322C30
            2E3263302C302C302D302E312C302D302E31632D302E312C302E312D302E312C
            302E312C302C302E3120202623393B2623393B632D302E312C302E312D302E31
            2C302D302E322C30632D302E312C302E312C302E312C302E342D302E322C302E
            3263302C302E312C302C302C302C302E31632D302E312C302C302D302E312D30
            2E312D302E3163302C302E332D302E362C302E322D302E332C302E37632D302E
            312C302D302E312C302D302E322C3020202623393B2623393B63302C302E312C
            302C302E312C302C302E31632D302E312C302D302E322C302E312D302E332C30
            2E3263302E312C302C302E332C302C302E322C3063302C302E312D302E322C30
            2E312D302E332C302E314331352E332C392C31352E322C392E322C31352C392E
            3163302C302E322C302E312C302E332D302E312C302E3520202623393B262339
            3B63302C302E312C302D302E342C302D302E35632D302E312C302E312D302E33
            2C302E342D302E322C302E3463302C302E322C302E312C302E312C302E312C30
            2E32632D302E322C302C302C302E322C302E312C302E33632D302E312C302D30
            2E312C302D302E312C302E3120202623393B2623393B63302E312C302C302E32
            2C302E312C302E322C302E31632D302E312C302D302E312C302D302E322C3063
            302C302E352D302E392C302E372D302E382C312E3463302C302E332C302E342C
            312C302E312C312E3263302D302E332D302E332D302E342D302E332D302E3763
            2D302E312C302C302C302E312D302E312C302E3120202623393B2623393B632D
            302E312D302E312C302D302E332D302E312D302E35632D302E312D302E312D30
            2E322C302D302E342D302E31632D302E312C302D302E352D302E322D302E352D
            302E32632D302E312C302D302E332C302D302E342C302E3163302E312C302E32
            2C302E322C302C302E312C302E3220202623393B2623393B63302E312C302C30
            2E312C302C302E312C302E31632D302E312C302D302E322D302E312D302E332D
            302E3263302C302E312C302C302E312C302C302E31632D302E312C302D302E31
            2C302D302E322C3063302D302E312C302D302E312C302D302E3163302C302D30
            2E372C302D302E372C3020202623393B2623393B63302C302E322D302E342C30
            2E352D302E352C302E38632D302E312C302E332C302C302E392C302C312E3363
            302E312C302C302E322C302E342C302E342C302E3663302E322C302E312C302E
            372C302E322C302E392C302E3163302E322D302E322C302E322D302E382C302E
            362D302E3820202623393B2623393B63302E342C302C302C302E352C302E312C
            302E39632D302E312C302D302E312D302E312D302E312D302E3163302C302E32
            2D302E312C302E352D302E312C302E3763302E342C302C302E392D302E322C31
            2E312C302E3263302E312C302E322D302E322C302E352D302E312C302E382020
            2623393B2623393B63302C302E322C302E322C302E352C302E342C302E356330
            2E322C302E312C302E322D302E312C302E332D302E3163302E322C302C302E32
            2C302E312C302E342C302E3163302E312C302C302E312C302E322C302E322C30
            2E3263302E312D302E352C302E332D302E372C302E372D302E3920202623393B
            2623393B63302E332D302E312C302E322D302E332C302E312C302E3163302E32
            2C302D302E312C302E352C302E312C302E3563302D302E322C302D302E352C30
            2E332D302E3663302D302E312D302E312C302D302E312D302E3163302E312D30
            2E312C302E352C302E332C302E342C302E3320202623393B2623393B63302C30
            2E312C302E392C302E312C302E392C3063302C302C302E332C302C302E332C30
            63302C302E312C302C302D302E312C302E3163302C302E312C302E332C302E32
            2C302E332C302E31632D302E312C302E332D302E312C302E312D302E332C302E
            3463302E362C302C302E362D302E322C302E372C302E3420202623393B262339
            3B63302E312C302C302C302C302E312C3063302D302E332C302E332D302E312C
            302E332C302E3163302C302C302E352D302E322C302E352C3063302E362C302C
            302E342C302E372C302E372C302E3963302E312C302D302E312C302C302E312C
            3063302C302D302E312C302E332D302E312C302E3320202623393B2623393B63
            302E312C302C302D302E312C302E312D302E3163302C302E312C302C302E312C
            302C302E3163302C302C302C302C302C302E3163302C302C302C302C302C3063
            2D302E322C302D302E312C302D302E312D302E3163302C302D302E352C302E35
            2D302E382C302E3720202623393B2623393B63302E322D302E312C302E332D30
            2E322C302E362D302E3263302C302E332C302C302E312C302C302E3363302E31
            2C302C302D302E332C302E322D302E3363302C302E342C302E342C302E312C30
            2E352C302E3163302C302C302E362D302E332C302E352C302E3163302E322C30
            2C302E312C302E332C302E332C302E3320202623393B2623393B63302E332D30
            2E332C312E322C302E332C312E352C302E354332332E322C32302E372C32322E
            342C32312E312C32322E312C32312E397A204D31372E352C372E336C2D302E31
            2D302E31632D302E312C302D302E342D302E312D302E312D302E326C302E312C
            302E3263302C302C302E312C302C302E312C3020202623393B2623393B433137
            2E342C372E332C31372E342C372E332C31372E352C372E337A204D31372E312C
            362E3263302E312C302C302E342C302E312C302E352C302E3263302C302C302C
            302C302C302E314331372E352C362E352C31372E312C362E332C31372E312C36
            2E327A204D31322E332C31312E3820202623393B2623393B4331322E322C3131
            2E382C31322E322C31312E372C31322E332C31312E384331322E332C31312E37
            2C31322E332C31312E372C31322E332C31312E387A204D31392E362C31382E39
            4331392E362C31382E392C31392E352C31392C31392E362C31382E394C31392E
            362C31382E397A204D31392E352C313920202623393B2623393B4331392E362C
            31392C31392E352C31392E312C31392E352C31394C31392E352C31397A222F3E
            0D0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktGeschaeftlichInternetPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 50
      Visible = False
      OnExit = btn_KontaktSaveClick
      Width = 592
    end
    object edt_KontaktGeschaeftlichOrt: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Ort_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
            31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
            4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
            3732373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C
            3A233131373744373B7D262331333B262331303B2623393B2E57686974657B66
            696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
            6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
            74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
            7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
            7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
            2E7374337B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C672F
            3E0D0A3C672069643D2247656F506F696E4D617073223E0D0A09093C70617468
            20636C6173733D225265642220643D224D31362C30632D332E332C302D362C32
            2E372D362C3673362C31302C362C313073362D362E372C362D31305331392E33
            2C302C31362C307A204D31362C38632D312E312C302D322D302E392D322D3273
            302E392D322C322D3273322C302E392C322C3220202623393B2623393B533137
            2E312C382C31362C387A222F3E0D0A09093C7061746820636C6173733D22426C
            75652220643D224D32332E342C382E36632D302E382C312E392D322E312C342D
            332E342C352E3776302E355631397631302E326C2D382D38563139762D342E37
            632D312E352D312E392D332E312D342E342D332E372D362E364C342C31327632
            306C382D386C382C386C382D38563420202623393B2623393B4C32332E342C38
            2E367A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktGeschaeftlichOrtPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 47
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 19
      Width = 517
    end
    object edt_KontaktGeschaeftlichTelefonZentrale: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Zentrale_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
            3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
            423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
            31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
            3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
            696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
            657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
            74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
            74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
            7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
            2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
            3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
            696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
            696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
            23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
            2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
            6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
            393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
            31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
            6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
            393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
            4646463B7D3C2F7374796C653E0D0A3C672069643D2250686F6E65223E0D0A09
            093C7061746820636C6173733D22426C75652220643D224D32372E372C32332E
            366C2D352E332D352E33632D302E342D302E342D312D302E342D312E342C306C
            2D322E382C322E38632D332E322D312E352D352E382D342E312D372E332D372E
            336C322E382D322E3863302E342D302E342C302E342D312C302D312E34202026
            23393B2623393B4C382E342C342E33632D302E342D302E342D312D302E342D31
            2E352C304C342E332C362E3943342E312C372E322C342C372E342C342C372E37
            43342C31382E392C31332E312C32382C32342E332C323863302E332C302C302E
            352D302E312C302E372D302E336C322E362D322E3620202623393B2623393B43
            32382E312C32342E362C32382E312C32342C32372E372C32332E367A222F3E0D
            0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktGeschaeftlichTelefonZentralePropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 48
      Visible = False
      OnExit = btn_KontaktSaveClick
      Width = 592
    end
    object edt_KontaktGeschaeftlichTelefonDurchwahl: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Telefon_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
            3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
            423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
            31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
            3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
            696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
            657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
            74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
            74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
            7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
            2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
            3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
            696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
            696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
            23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
            2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
            6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
            393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
            31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
            6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
            393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
            4646463B7D3C2F7374796C653E0D0A3C672069643D2250686F6E65223E0D0A09
            093C7061746820636C6173733D22426C75652220643D224D32372E372C32332E
            366C2D352E332D352E33632D302E342D302E342D312D302E342D312E342C306C
            2D322E382C322E38632D332E322D312E352D352E382D342E312D372E332D372E
            336C322E382D322E3863302E342D302E342C302E342D312C302D312E34202026
            23393B2623393B4C382E342C342E33632D302E342D302E342D312D302E342D31
            2E352C304C342E332C362E3943342E312C372E322C342C372E342C342C372E37
            43342C31382E392C31332E312C32382C32342E332C323863302E332C302C302E
            352D302E312C302E372D302E336C322E362D322E3620202623393B2623393B43
            32382E312C32342E362C32382E312C32342C32372E372C32332E367A222F3E0D
            0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktGeschaeftlichTelefonDurchwahlPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 53
      Visible = False
      OnExit = btn_KontaktSaveClick
      Width = 744
    end
    object edt_GeschaeftlichHandy: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Handy_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
            77426F783D22302030203332203332222076657273696F6E3D22312E31222078
            6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
            2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
            2F313939392F786C696E6B2220656E61626C652D6261636B67726F756E643D22
            6E6577203020302033322033322220786D6C3A73706163653D22707265736572
            7665222069643D224C617965725F31223E262331333B262331303B20203C7374
            796C6520747970653D22746578742F637373223E2E426C75657B66696C6C3A23
            3131373744373B7D3C2F7374796C653E0D0A3C7061746820643D224D32332C32
            483943382E342C322C382C322E342C382C3376323663302C302E362C302E342C
            312C312C3168313463302E362C302C312D302E342C312D3156334332342C322E
            342C32332E362C322C32332C327A204D31362C32382020632D312E312C302D32
            2D302E392D322D3263302D312E312C302E392D322C322D3273322C302E392C32
            2C324331382C32372E312C31372E312C32382C31362C32387A204D32322C3232
            48313056346831325632327A222066696C6C3D22233131373744372220636C61
            73733D22426C7565222F3E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_GeschaeftlichHandyPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 54
      Visible = False
      OnExit = btn_KontaktSaveClick
      Width = 744
    end
    object edt_KontaktGeschaeftlichEMail: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'E_Mail_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E57686974657B66696C6C3A234646464646
            463B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
            3744373B7D3C2F7374796C653E0D0A3C672069643D224D61696C223E0D0A0909
            3C7265637420793D22342220636C6173733D22426C7565222077696474683D22
            333222206865696768743D223234222F3E0D0A09093C7265637420783D223222
            20793D22362220636C6173733D225768697465222077696474683D2232382220
            6865696768743D223230222F3E0D0A09093C706F6C79676F6E20636C6173733D
            22426C75652220706F696E74733D2233302C382031362C313820322C3820322C
            31302031302E342C313620322C323220322C32342031312E382C31372031362C
            32302032302E322C31372033302C32342033302C32322032312E362C31362033
            302C3130202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 55
      Visible = False
      OnExit = btn_KontaktSaveClick
      Width = 744
    end
    object lagrp_Personal: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lagrp_MitarbeiterInfo: TdxLayoutGroup
      Parent = lagrp_Mitarbeiter
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Kontaktdaten '
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object lagrp_MitarbeiterInfoDetails: TdxLayoutGroup
      Parent = lagrp_Mitarbeiter
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Zus'#228'tzlich Informationen'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object lagrp_Zusatz: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Zusatz'
      Index = 0
    end
    object lagrp_Sonstige: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Sonstiges'
      ItemIndex = 2
      Index = 2
    end
    object lagrp_Business: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Gesch'#228'ftlich'
      Index = 1
    end
    object laitm_Anrede: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Anrede:'
      CaptionOptions.Width = 75
      Control = cmbbx_Anrede
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Vorname: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Vorname:'
      CaptionOptions.Width = 75
      Control = edt_KontaktName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_Geburtsname: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Geburtsname:'
      CaptionOptions.Width = 75
      Control = edt_KontaktGeburtsname
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Nachname: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nachname:'
      CaptionOptions.Width = 75
      Control = edt_KontaktNachname
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_Geburtsland: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Geburtsland:'
      Control = cmbbx_KontaktGeburtsland
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_HandyPrivatText: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Handy:'
      Control = edt_KontaktHandy
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object laitm_Telefon2Text: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Telefon 2:'
      Control = edt_KontaktTelefon2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object laitm_Telefon1Text: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Telefon 1:'
      Control = edt_KontaktTelefon1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object laitm_OrtPrivat: TdxLayoutItem
      Parent = lagrp_KontaktPersonalAdress
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'edt_KontaktOrt'
      CaptionOptions.Visible = False
      Control = edt_KontaktOrt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PLZPrivat: TdxLayoutItem
      Parent = lagrp_KontaktPersonalAdress
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'PLZ- Ort:'
      CaptionOptions.Width = 75
      Control = edt_KontaktPLZ
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Zusatz: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Zusatz:'
      Control = edt_KontaktZusatz
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_StrassePrivat: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Stra'#223'e:'
      Control = edt_KontaktStrasse
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object laitm_WebPrivatText: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Internet:'
      Control = edt_KontaktInternet
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object laitm_Mail1PrivatText: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail 1:'
      Control = edt_Email1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object laitm_Mail2PrivatText: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail 2:'
      Control = edt_Email2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object itm_Geburtsdatum: TdxLayoutItem
      Parent = lagrp_ZusatzwithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Geburtsdatum:'
      Control = dtEdt_KontaktZusatzGeburtsdatum
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Familienstand: TdxLayoutItem
      Parent = lagrp_ZusatzwithoutPic
      AlignHorz = ahClient
      CaptionOptions.Text = 'Familienstand:'
      Control = lucmbbx_KontaktZusatzFamilienstand
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_Geschlecht: TdxLayoutItem
      Parent = lagrp_ZusatzwithoutPic
      AlignHorz = ahClient
      CaptionOptions.Text = 'Geschlecht:'
      Control = lucmbbx_KontaktZusatzGeschlecht
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_Konfession: TdxLayoutItem
      Parent = lagrp_ZusatzKonfession
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Konfession:'
      Control = lucmbbx_Konfession
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Staatsangehoerigkeit: TdxLayoutItem
      Parent = lagrp_ZusatzStaatsangehoerigkeit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Staatsangeh'#246'rigkeit:'
      Control = lucmbbx_Staatsanghoerigkeit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Picture: TdxLayoutItem
      Parent = lagrp_ZusatzwithPic
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Bild:'
      CaptionOptions.Visible = False
      Control = img_Picture
      ControlOptions.OriginalHeight = 150
      ControlOptions.OriginalWidth = 156
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_ZusatzSeperator: TdxLayoutSeparatorItem
      Parent = lagrp_Zusatz
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object laitm_Sonstiges: TdxLayoutItem
      Parent = lagrp_Zusatz
      AlignHorz = ahClient
      AlignVert = avTop
      Control = mem_Sonstige
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 1120
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_Sonstigeslabel: TdxLayoutLabeledItem
      Parent = lagrp_Zusatz
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sonstige Informationen'
      Index = 2
    end
    object laitm_StaatsangehoerigkeitBtn: TdxLayoutItem
      Parent = lagrp_ZusatzStaatsangehoerigkeit
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_EditStaatsangehoerigkeit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_KonfessionBtn: TdxLayoutItem
      Parent = lagrp_ZusatzKonfession
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_EditKonfession
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_PersonalTab: TdxLayoutGroup
      Parent = lagrp_Personal
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      SizeOptions.Height = 800
      ItemIndex = 1
      LayoutDirection = ldTabbed
      Padding.AssignedValues = [lpavTop]
      ShowBorder = False
      TabbedOptions.HotTrack = True
      OnTabChanged = lagrp_PersonalTabTabChanged
      Index = 0
    end
    object lagrp_Suche: TdxLayoutGroup
      Parent = lagrp_PersonalTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 25
      CaptionOptions.Text = 'Suche'
      TabbedOptions.HotTrack = True
      TabbedOptions.MultiLineTabCaptions = True
      TabbedOptions.ShowFrame = True
      Index = 0
    end
    object lagrp_Mitarbeiter: TdxLayoutGroup
      Parent = lagrp_PersonalTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 11
      CaptionOptions.Text = 'Kontakt'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object lagrp_SucheFilter: TdxLayoutGroup
      Parent = lagrp_Suche
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Filterkriterien'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object laitm_SucheErgebnis: TdxLayoutItem
      Parent = lagrp_Suche
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.Height = 570
      Control = grd_Suche
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_Funktion: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Funktion:'
      Control = edt_KontaktGeschaeftlichFunktion
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_SucheFilterLoeschen: TdxLayoutItem
      Parent = lagrp_SucheButtons
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'btn_kontaktDeletefilter'
      CaptionOptions.Visible = False
      Control = btn_ClearFilter
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_SucheFiltersetzen: TdxLayoutItem
      Parent = lagrp_SucheButtons
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'btn_kontaktsuchen'
      CaptionOptions.Visible = False
      Control = btn_kontaktsuchen
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_StrasseBusiness: TdxLayoutItem
      Parent = lagrp_GeswithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Stra'#223'e:'
      Control = edt_KontaktGeschaeftlichStrasse
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_Abteilung: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Abteilung:'
      Control = edt_KontaktGeschaeftlichAbteilung
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_MailBusinessText: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail:'
      Control = edt_KontaktGeschaeftlichEMail
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object laitm_Firma: TdxLayoutItem
      Parent = lagrp_GeswithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Firma:'
      Control = edt_KontaktGeschaeftlichFirma
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_WebBusinessText: TdxLayoutItem
      Parent = lagrp_GeswithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Internet:'
      Control = edt_KontaktGeschaeftlichInternet
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object laitm_OrtBusiness: TdxLayoutItem
      Parent = lagrp_GesAdress
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'edt_KontaktGeschaeftlichEMailZentrale'
      CaptionOptions.Visible = False
      Control = edt_KontaktGeschaeftlichOrt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 134
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PLZBusiness: TdxLayoutItem
      Parent = lagrp_GesAdress
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Plz - Ort:'
      Control = edt_KontaktGeschaeftlichPLZ
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_TelefonDurchwahlText: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Telefon Durchwahl:'
      Control = edt_KontaktGeschaeftlichTelefonDurchwahl
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_TelefonZentraleText: TdxLayoutItem
      Parent = lagrp_GeswithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Telefon Zentrale:'
      Control = edt_KontaktGeschaeftlichTelefonZentrale
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_KontaktartSuche: TdxLayoutItem
      Parent = lagrp_SucheKontakt
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Kontaktart:'
      Control = cmbbx_KontaktSucheArt
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_AbteilungSuche: TdxLayoutItem
      Parent = lagrp_SucheFirma
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 48
      CaptionOptions.Text = 'Abteilung:'
      Control = edt_KontaktSucheAbteilung
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_FirmaSuche: TdxLayoutItem
      Parent = lagrp_SucheFirma
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 48
      CaptionOptions.Text = 'Firma:'
      Control = edt_KontaktSucheFirma
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_FunktionSuche: TdxLayoutItem
      Parent = lagrp_SucheFirma
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 48
      CaptionOptions.Text = 'Funktion:'
      Control = edt_KontaktSucheFunktion
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_NachnameSuche: TdxLayoutItem
      Parent = lagrp_SucheKontakt
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Nachname:'
      Control = edt_KontaktSucheNachname
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_OrtSuche: TdxLayoutItem
      Parent = lagrp_SucheAdressePri
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 48
      CaptionOptions.Text = 'Ort:'
      Control = edt_KontaktSucheOrt
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_PLZSuche: TdxLayoutItem
      Parent = lagrp_SucheAdressePri
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 48
      CaptionOptions.Text = 'Postleitzahl:'
      Control = edt_KontaktSuchePLZ
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_StrasseSuche: TdxLayoutItem
      Parent = lagrp_SucheAdressePri
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 48
      CaptionOptions.Text = 'Strasse:'
      Control = edt_KontaktSucheStrasse
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_VornameSuche: TdxLayoutItem
      Parent = lagrp_SucheKontakt
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Vorname:'
      Control = edt_KontaktSucheVorname
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_Facebook: TdxLayoutItem
      Parent = lagrp_Sonstige
      AlignHorz = ahClient
      CaptionOptions.Text = 'Facebook:'
      Control = edt_KontakteSonstigesFacebook
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Skype: TdxLayoutItem
      Parent = lagrp_Sonstige
      AlignHorz = ahClient
      CaptionOptions.Text = 'Skype:'
      Control = edt_KontakteSonstigesSkype
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_Teams: TdxLayoutItem
      Parent = lagrp_Sonstige
      AlignHorz = ahClient
      CaptionOptions.Text = 'Teams:'
      Control = edt_KontakteSonstigesTeams
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_Kontaktart: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Kontaktart:'
      Control = cmbbx_KontaktArt
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object laitm_HandyBusinessText: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Handy:'
      Control = edt_GeschaeftlichHandy
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lagrp_ZusatzStaatsangehoerigkeit: TdxLayoutGroup
      Parent = lagrp_ZusatzwithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object lagrp_ZusatzKonfession: TdxLayoutGroup
      Parent = lagrp_ZusatzwithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object lagrp_SucheKontakt: TdxLayoutGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lagrp_SucheAdressePri: TdxLayoutGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object lagrp_SucheFirma: TdxLayoutGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object lagrp_SucheButtons: TdxLayoutGroup
      Parent = lagrp_Suche
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object laitm_Todestag: TdxLayoutItem
      Parent = lagrp_ZusatzwithoutPic
      AlignHorz = ahClient
      CaptionOptions.Text = 'Todestag:'
      Control = dtEdt_KontaktZusatzTodestag
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_Geburtsort: TdxLayoutItem
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Geburtsort:'
      Control = edt_KontakteGeburtsort
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_ZusatzwithoutPic: TdxLayoutGroup
      Parent = lagrp_ZusatzwithPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bild'
      ShowBorder = False
      Index = 1
    end
    object lagrp_ZusatzwithPic: TdxLayoutGroup
      Parent = lagrp_Zusatz
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_Browser: TdxLayoutGroup
      Parent = lagrp_PersonalTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Browser'
      LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel2
      Visible = False
      Padding.AssignedValues = [lpavLeft, lpavRight, lpavTop]
      TabbedOptions.Options = [pcoAlwaysShowGoDialogButton, pcoCloseButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
      Index = 2
      Buttons = <
        item
        end>
    end
    object laitm_Browser: TdxLayoutItem
      Parent = lagrp_BrowserDetail
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = pnl_Browser
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_KontaktPersonalAdress: TdxLayoutGroup
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object lagrp_KontaktPersonal: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 11
      ShowBorder = False
      Index = 3
    end
    object laitm_ImageGes: TdxLayoutItem
      Parent = lagrp_GeswithPic
      AlignHorz = ahLeft
      AlignVert = avClient
      Visible = False
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = img_PictureGes
      ControlOptions.OriginalHeight = 156
      ControlOptions.OriginalWidth = 156
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_GeswithoutPic: TdxLayoutGroup
      Parent = lagrp_GeswithPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object lagrp_GeswithPic: TdxLayoutGroup
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_GesAdress: TdxLayoutGroup
      Parent = lagrp_GeswithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lagrp_SucheAdresseGes: TdxLayoutGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahClient
      AlignVert = avTop
      ShowBorder = False
      Index = 3
    end
    object laitm_StrasseGesSuche: TdxLayoutItem
      Parent = lagrp_SucheAdresseGes
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 48
      CaptionOptions.Text = 'Strasse Firma:'
      Control = edt_KontaktSucheStrasseGes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_PLZGesSuche: TdxLayoutItem
      Parent = lagrp_SucheAdresseGes
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 48
      CaptionOptions.Text = 'Postleitzahl Firma:'
      Control = edt_KontaktSuchePLZGes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_OrtGesSuche: TdxLayoutItem
      Parent = lagrp_SucheAdresseGes
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 48
      CaptionOptions.Text = 'Ort Firma:'
      Control = edt_KontaktSucheOrtGes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_MailBusinessZentralText: TdxLayoutItem
      Parent = lagrp_GeswithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail Zentrale:'
      Control = edt_KontaktGeschaeftlichEMailZentrale
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object laitm_AnredeSuche: TdxLayoutItem
      Parent = lagrp_SucheKontakt
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Anrede:'
      Control = cmbbx_KontaktAnrede
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lagrp_BrowserDetail: TdxLayoutGroup
      Parent = lagrp_Browser
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.Bottom = -10
      Padding.Left = -10
      Padding.Right = -10
      Padding.Top = -6
      Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
      Index = 0
      Buttons = <
        item
          Glyph.SourceDPI = 96
          Glyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            6100000011744558745469746C6500436C6F73653B457869743B0519FF850000
            009549444154785EC5D33B0A84401004D0C904F1738385DD4CC4C03B78130F29
            C606A686867A0941161D0B99A0719012073178060D55748B2AADB593FDD19785
            BEE3D182FFF98C17F490402B6635A430B08219BEA02086D6847D33CB60611B54
            E0994024C201346C03BBC40EF302B9B63C8717D8E1103C59C20A26F888707338
            2787956DD0C1EF707305098CF4046376F8905EF8179C6CA903753534AA4B6600
            00000049454E44AE426082}
          OnClick = dxLayoutGroup6Button0Click
        end>
    end
  end
  object btn_WebPrivate: TcxButton
    Left = 0
    Top = 22
    Width = 21
    Height = 21
    OptionsImage.ImageIndex = 75
    OptionsImage.Images = dm_PCM.imglst_16x16
    TabOrder = 1
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1280
    Height = 132
    BarManager = brmgr_Contacts
    Style = rsOffice365
    ColorSchemeName = 'Colorful'
    Contexts = <>
    TabOrder = 2
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Kontakt'
      Groups = <
        item
          Caption = 'Kontakt'
          ToolbarName = 'brmgr_ContactsBar1'
        end
        item
          Caption = 'Navigation'
          ToolbarName = 'brmgr_ContactsBar2'
        end>
      Index = 0
    end
    object dxRibbon1Tab2: TdxRibbonTab
      Caption = 'Felder'
      Groups = <
        item
          Caption = 'Zusatzfelder'
          ToolbarName = 'brmgr_ContactsBar3'
        end>
      Index = 1
    end
    object dxRibbon1Tab3: TdxRibbonTab
      Caption = 'Import / Export'
      Groups = <
        item
          Caption = 'Import / Export'
          ToolbarName = 'brmgr_ContactsBar4'
        end>
      Index = 2
    end
  end
  object ds_Kontakte: TDataSource
    DataSet = qry_Kontakte
    Left = 509
    Top = 344
  end
  object brmgr_Contacts: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'pm_kontakte'
      'pm_KontaktImExport'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
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
    Left = 112
    Top = 488
    PixelsPerInch = 96
    object brmgr_ContactsBar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1309
      FloatTop = 3
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_KontaktNew'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktSave'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktCancel'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktDelete'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object brmgr_ContactsBar2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedLeft = 278
      DockedTop = 0
      FloatLeft = 1309
      FloatTop = 3
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_KontaktFirst'
        end
        item
          Visible = True
          ItemName = 'btn_Kontaktprev'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktNext'
        end
        item
          Visible = True
          ItemName = 'btn_KontaktLast'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object brmgr_ContactsBar3: TdxBar
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1309
      FloatTop = 3
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_addGeburtsname'
        end
        item
          Visible = True
          ItemName = 'btn_addGeburtsort'
        end
        item
          Visible = True
          ItemName = 'btn_addGeburtsland'
        end
        item
          Visible = True
          ItemName = 'btn_addTodestag'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object brmgr_ContactsBar4: TdxBar
      Caption = 'Custom 4'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1309
      FloatTop = 3
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'ppmbtn_VCFImportieren'
        end
        item
          Visible = True
          ItemName = 'ppmbtn_CSVImportiern'
        end
        item
          Visible = True
          ItemName = 'ppmbtn_ExportVCF'
        end
        item
          Visible = True
          ItemName = 'ppmbtn_ExportOutlook'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object TdxBarLargeButton
      Caption = 'Export (Outlook)'
      Category = 0
      Hint = 'Export (Outlook)'
      Visible = ivAlways
      OnClick = ppmbtn_ExportOutlookClick
      LargeImageIndex = 64
    end
    object btn_KontaktNew: TdxBarLargeButton
      Caption = 'Kontakt anlegen'
      Category = 0
      Hint = 'Kontakt anlegen'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
        323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
        46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
        233131373744373B7D262331333B262331303B2623393B2E5265647B66696C6C
        3A234431314331433B7D262331333B262331303B2623393B2E57686974657B66
        696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
        6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
        74307B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
        7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069
        643D2241646446696C65223E0D0A09093C7061746820636C6173733D22426C61
        636B2220643D224D31362C3236483656346831387631346832563363302D302E
        352D302E352D312D312D31483543342E352C322C342C322E352C342C33763234
        63302C302E352C302E352C312C312C316831315632367A222F3E0D0A09093C70
        6F6C79676F6E20636C6173733D22477265656E2220706F696E74733D2233302C
        32342032362C32342032362C32302032322C32302032322C32342031382C3234
        2031382C32382032322C32382032322C33322032362C33322032362C32382033
        302C3238202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OnClick = btn_KontaktNewClick
    end
    object btn_KontaktSave: TdxBarLargeButton
      Caption = 'Kontakt speichern'
      Category = 0
      Hint = 'Kontakt speichern'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D223020302033322033322220656E61626C65
        2D6261636B67726F756E643D226E6577203020302033322033322220786D6C3A
        73706163653D227072657365727665223E262331333B262331303B3C706F6C79
        676F6E2066696C6C3D22233337374142352220706F696E74733D22322C322032
        2C33302033302C33302033302C362032362C3220222F3E0D0A3C726563742078
        3D22362220793D223134222066696C6C3D222346464646464622207769647468
        3D22323022206865696768743D223134222F3E0D0A3C7265637420783D223622
        20793D223222206F7061636974793D22302E36222066696C6C3D222346464646
        46462220656E61626C652D6261636B67726F756E643D226E6577202020202220
        77696474683D22313822206865696768743D223130222F3E0D0A3C7265637420
        783D2232302220793D2232222066696C6C3D2223333737414235222077696474
        683D223222206865696768743D2238222F3E0D0A3C2F7376673E0D0A}
      OnClick = btn_KontaktSaveClick
    end
    object btn_KontaktCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076696577426F783D222D36202D362033322033
        322220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F32303030
        2F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E7733
        2E6F72672F313939392F786C696E6B223E0D0A093C672069643D224C61796572
        5F3122207472616E73666F726D3D227472616E736C617465282D362C202D3629
        22207374796C653D22656E61626C652D6261636B67726F756E643A6E65772030
        2030203332203332223E0D0A09093C672069643D2244656C657465223E0D0A09
        09093C673E0D0A090909093C7061746820643D224D31382E382C2031364C3235
        2E372C20392E314332362E312C20382E372032362E312C20382E312032352E37
        2C20372E374C32342E332C20362E334332332E392C20352E392032332E332C20
        352E392032322E392C20362E334C31362C2031332E324C392E312C20362E3343
        382E372C20352E3920382E312C20352E3920372E372C20362E334C362E332C20
        372E3743352E392C20382E3120352E392C20382E3720362E332C20392E314C31
        332E322C2031364C362E332C2032322E3943352E392C2032332E3320352E392C
        2032332E3920362E332C2032342E334C372E372C2032352E3743382E312C2032
        362E3120382E372C2032362E3120392E312C2032352E374C31362C2031382E38
        4C32322E392C2032352E374332332E332C2032362E312032332E392C2032362E
        312032342E332C2032352E374C32352E372C2032342E334332362E312C203233
        2E392032362E312C2032332E332032352E372C2032322E394C31382E382C2031
        367A222066696C6C3D22233131373744372220636C6173733D22426C7565222F
        3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A093C672069
        643D224C617965725F3122207472616E73666F726D3D227472616E736C617465
        282D362C202D362922207374796C653D22656E61626C652D6261636B67726F75
        6E643A6E657720302030203332203332223E0D0A09093C672069643D2244656C
        657465223E0D0A0909093C673E0D0A090909093C7061746820643D224D31382E
        382C2031364C32352E372C20392E314332362E312C20382E372032362E312C20
        382E312032352E372C20372E374C32342E332C20362E334332332E392C20352E
        392032332E332C20352E392032322E392C20362E334C31362C2031332E324C39
        2E312C20362E3343382E372C20352E3920382E312C20352E3920372E372C2036
        2E334C362E332C20372E3743352E392C20382E3120352E392C20382E3720362E
        332C20392E314C31332E322C2031364C362E332C2032322E3943352E392C2032
        332E3320352E392C2032332E3920362E332C2032342E334C372E372C2032352E
        3743382E312C2032362E3120382E372C2032362E3120392E312C2032352E374C
        31362C2031382E384C32322E392C2032352E374332332E332C2032362E312032
        332E392C2032362E312032342E332C2032352E374C32352E372C2032342E3343
        32362E312C2032332E392032362E312C2032332E332032352E372C2032322E39
        4C31382E382C2031367A222066696C6C3D22233131373744372220636C617373
        3D22426C7565222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F67
        3E0D0A3C2F7376673E0D0A}
      OnClick = btn_KontaktCancelClick
    end
    object btn_KontaktDelete: TdxBarLargeButton
      Caption = 'Kontakt l'#246'schen'
      Category = 0
      Hint = 'Kontakt l'#246'schen'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
        323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
        46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
        233131373744373B7D262331333B262331303B2623393B2E477265656E7B6669
        6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
        696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
        643D2244656C6574654C697374223E0D0A09093C7061746820636C6173733D22
        426C61636B2220643D224D362C323656346831387631332E326C322D32563363
        302D302E362D302E342D312D312D31483543342E342C322C342C322E342C342C
        3376323463302C302E362C302E342C312C312C3168382E326C322D3248367A22
        2F3E0D0A09093C706F6C79676F6E20636C6173733D225265642220706F696E74
        733D2232382C32302032362C31382032322C32322031382C31382031362C3230
        2032302C32342031362C32382031382C33302032322C32362032362C33302032
        382C32382032342C3234202623393B222F3E0D0A093C2F673E0D0A3C2F737667
        3E0D0A}
      OnClick = btn_KontaktDeleteClick
    end
    object btn_KontaktFirst: TdxBarLargeButton
      Caption = '&erster Kontakt'
      Category = 0
      Hint = 'erster Kontakt'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E312220786D6C6E73
        3D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D
        6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939
        392F786C696E6B2220783D223070782220793D22307078222076696577426F78
        3D2230203020333220333222207374796C653D22656E61626C652D6261636B67
        726F756E643A6E6577203020302033322033323B2220786D6C3A73706163653D
        227072657365727665223E262331333B262331303B3C7374796C652074797065
        3D22746578742F637373223E2E426C75657B66696C6C3A233131373744373B7D
        3C2F7374796C653E0D0A3C672069643D224C617965725F31223E0D0A09093C70
        61746820636C6173733D22426C75652220643D224D382E332C31352E36632D30
        2E352D302E332D302E352D302E382C302D312E316C31312E382D372E3356342E
        3663302D302E362D302E342D302E382D302E392D302E354C322E342C31342E35
        632D302E352C302E332D302E352C302E382C302C312E3120202623393B262339
        3B6C31362E382C31302E3363302E352C302E332C302E392C302E312C302E392D
        302E35762D322E364C382E332C31352E367A222F3E0D0A09093C706174682063
        6C6173733D22426C75652220643D224D31322E332C31342E35632D302E352C30
        2E332D302E352C302E382C302C312E316C31362E382C31302E3363302E352C30
        2E332C302E392C302E312C302E392D302E3556342E3763302D302E362D302E34
        2D302E382D302E392D302E354C31322E332C31342E357A222F3E0D0A093C2F67
        3E0D0A3C672069643D224C617965725F32222F3E0D0A3C2F7376673E0D0A}
      OnClick = btn_KontaktFirstClick
    end
    object btn_Kontaktprev: TdxBarLargeButton
      Caption = '&vorheriger Kontakt'
      Category = 0
      Hint = 'vorheriger Kontakt'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
        3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
        423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
        233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
        6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
        696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
        6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
        7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2250
        726576696F7573223E0D0A09093C706F6C79676F6E20636C6173733D22426C75
        652220706F696E74733D2232362C342032362C323820362C3136202623393B22
        2F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OnClick = btn_KontaktprevClick
    end
    object btn_KontaktNext: TdxBarLargeButton
      Caption = '&n'#228'chster Kontakt'
      Category = 0
      Hint = 'n'#228'chster Kontakt'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
        3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
        423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
        233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
        6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
        696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
        6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
        7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D224E
        657874223E0D0A09093C706F6C79676F6E20636C6173733D22426C7565222070
        6F696E74733D22362C3420362C32382032362C3136202623393B222F3E0D0A09
        3C2F673E0D0A3C2F7376673E0D0A}
      OnClick = btn_KontaktNextClick
    end
    object btn_KontaktLast: TdxBarLargeButton
      Caption = '&letzter Kontakt'
      Category = 0
      Hint = 'letzter Kontakt'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E312220786D6C6E73
        3D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D
        6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939
        392F786C696E6B2220783D223070782220793D22307078222076696577426F78
        3D2230203020333220333222207374796C653D22656E61626C652D6261636B67
        726F756E643A6E6577203020302033322033323B2220786D6C3A73706163653D
        227072657365727665223E262331333B262331303B3C7374796C652074797065
        3D22746578742F637373223E2E426C75657B66696C6C3A233131373744373B7D
        3C2F7374796C653E0D0A3C672069643D224C617965725F31223E0D0A09093C70
        61746820636C6173733D22426C75652220643D224D32332E372C31342E346330
        2E352C302E332C302E352C302E382C302C312E316C2D31312E382C372E337632
        2E3663302C302E362C302E342C302E382C302E392C302E356C31362E382D3130
        2E3463302E352D302E332C302E352D302E382C302D312E3120202623393B2623
        393B4C31322E382C342E31632D302E352D302E332D302E392D302E312D302E39
        2C302E3576322E364C32332E372C31342E347A222F3E0D0A09093C7061746820
        636C6173733D22426C75652220643D224D31392E372C31352E3563302E352D30
        2E332C302E352D302E382C302D312E314C322E392C342E3143322E342C332E38
        2C322C342C322C342E367632302E3663302C302E362C302E342C302E382C302E
        392C302E354C31392E372C31352E357A222F3E0D0A093C2F673E0D0A3C672069
        643D224C617965725F32222F3E0D0A3C2F7376673E0D0A}
      OnClick = btn_KontaktLastClick
    end
    object ppmbtn_VCFImportieren: TdxBarLargeButton
      Caption = 'VCF Importieren'
      Category = 0
      Hint = 'VCF Importieren'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
        7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
        37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
        373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
        233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
        696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
        74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
        643D22496D706F7274223E0D0A09093C7061746820636C6173733D22426C6163
        6B2220643D224D31302C31324836563668345631327A204D32322C3137763176
        3963302C302E362D302E342C312D312C314831632D302E362C302D312D302E34
        2D312D31563763302D302E362C302E342D312C312D31683376386831344C3232
        2C31377A204D31382C3138483420202623393B2623393B76366831345631387A
        222F3E0D0A09093C706F6C79676F6E20636C6173733D22477265656E2220706F
        696E74733D2233302C362032322C362032322C322031342C382032322C313420
        32322C31302033302C3130202623393B222F3E0D0A093C2F673E0D0A3C2F7376
        673E0D0A}
      OnClick = ppmbtn_VCFImportierenClick
    end
    object ppmbtn_CSVImportiern: TdxBarLargeButton
      Caption = 'CSV Importieren'
      Category = 0
      Hint = 'CSV Importieren'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
        323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
        3744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C6163
        6B2220643D224D382C3468313876366832563363302D302E352D302E352D312D
        312D31483743362E352C322C362C322E352C362C337637683256347A222F3E0D
        0A3C7061746820636C6173733D22426C61636B2220643D224D32362C32384838
        563138483676313163302C302E352C302E352C312C312C3168323063302E352C
        302C312D302E352C312D31563138682D325632387A222F3E0D0A3C7061746820
        636C6173733D22426C75652220643D224D32392C38682D31682D324838483648
        3543342E342C382C342C382E342C342C3976313063302C302E362C302E342C31
        2C312C31683168326831386832683163302E362C302C312D302E342C312D3156
        394333302C382E342C32392E362C382C32392C387A20202623393B204D31322E
        392C3132632D302E352D302E332D312D302E352D312E362D302E35632D302E37
        2C302D312E322C302E322D312E362C302E3743392E322C31322E362C392C3133
        2E332C392C313463302C302E372C302E322C312E332C302E362C312E3873302E
        392C302E372C312E362C302E3720202623393B63302E362C302C312E322D302E
        322C312E372D302E3576312E36632D302E352C302E332D312E322C302E342D32
        2C302E34632D312E312C302D322D302E332D322E362D31632D302E312D302E31
        2D302E322D302E322D302E322D302E33632D302E352D302E362D302E372D312E
        352D302E372D322E3420202623393B63302D312C302E322D312E382C302E372D
        322E3563302E312D302E322C302E322D302E332C302E342D302E3543392E312C
        31302E342C31302C31302C31312E312C313063302E372C302C312E332C302E31
        2C312E382C302E335631327A204D31392E322C31362E3820202623393B632D30
        2E322C302E332D302E342C302E352D302E362C302E37632D302E332C302E322D
        302E362C302E332D302E392C302E344331372E342C31372E392C31372C31382C
        31362E362C3138632D302E342C302D302E382C302D312E312D302E31632D302E
        342D302E312D302E372D302E322D302E392D302E33762D312E3720202623393B
        63302E332C302E332C302E362C302E352C302E392C302E3663302E332C302E31
        2C302E372C302E322C312C302E3263302E322C302C302E342C302C302E352D30
        2E3163302E322C302C302E332D302E312C302E342D302E3263302E312D302E31
        2C302E322D302E322C302E322D302E3220202623393B63302E312D302E312C30
        2E312D302E322C302E312D302E3363302D302E322C302D302E332D302E312D30
        2E34732D302E322D302E322D302E332D302E33732D302E332D302E322D302E35
        2D302E33732D302E342D302E322D302E362D302E33632D302E362D302E332D31
        2D302E362D312E322D302E3920202623393B732D302E342D302E382D302E342D
        312E3363302D302E342C302E312D302E372C302E322D3163302E312D302E332C
        302E342D302E352C302E362D302E3773302E362D302E332C302E392D302E3463
        302E332D302E312C302E372D302E312C312E312D302E3163302E342C302C302E
        372C302C312C302E3120202623393B63302E332C302C302E362C302E312C302E
        382C302E3276312E36632D302E312D302E312D302E332D302E322D302E342D30
        2E32632D302E312D302E312D302E332D302E312D302E342D302E32632D302E31
        2C302D302E332D302E312D302E342D302E31632D302E312C302D302E332C302D
        302E342C3020202623393B632D302E322C302D302E332C302D302E352C302E31
        632D302E312C302D302E332C302E312D302E342C302E32632D302E312C302E31
        2D302E322C302E312D302E322C302E32632D302E312C302E312D302E312C302E
        322D302E312C302E3363302C302E312C302C302E322C302E312C302E33202026
        23393B63302E312C302E312C302E322C302E322C302E332C302E3363302E312C
        302E312C302E332C302E322C302E342C302E3363302E322C302E312C302E342C
        302E322C302E362C302E3363302E332C302E312C302E352C302E332C302E382C
        302E3463302E322C302E312C302E342C302E332C302E362C302E352020262339
        3B63302E322C302E322C302E332C302E342C302E342C302E3663302E312C302E
        322C302E312C302E352C302E312C302E384331392E352C31362E312C31392E34
        2C31362E352C31392E322C31362E387A204D32362C31332E326C2D312E352C34
        2E37682D312E384C32302E332C31304832326C312E352C352E3520202623393B
        63302E312C302E332C302E312C302E352C302E312C302E38683063302D302E32
        2C302E312D302E352C302E322D302E386C312E352D352E3548323668314C3236
        2C31332E327A222F3E0D0A3C2F7376673E0D0A}
    end
    object ppmbtn_ExportVCF: TdxBarLargeButton
      Caption = 'VCard erstellen'
      Category = 0
      Hint = 'VCard erstellen'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
        3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
        423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
        31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
        3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
        696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
        74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
        2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
        3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
        696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
        696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
        23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
        2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
        6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
        393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
        31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
        6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
        393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
        4646463B7D3C2F7374796C653E0D0A3C672069643D22416464726573735F315F
        223E0D0A09093C6720636C6173733D22737431223E0D0A0909093C7061746820
        636C6173733D22426C61636B2220643D224D32362C3132483136762D32683130
        5631327A204D32362C313448313676326831305631347A204D32362C31384831
        3676326831305631387A222F3E0D0A09093C2F673E0D0A09093C706174682063
        6C6173733D22426C61636B2220643D224D32392C34483143302E342C342C302C
        342E352C302C3576323063302C302E352C302E342C312C312C3168323863302E
        362C302C312D302E352C312D3156354333302C342E352C32392E362C342C3239
        2C347A204D32382C3234483256366832365632347A222F3E0D0A09093C706174
        6820636C6173733D22426C75652220643D224D392C3863312E372C302C332C31
        2E332C332C33732D312E332C332D332C33732D332D312E332D332D3353372E33
        2C382C392C387A204D31322E322C31342E38632D302E392C302E372D322C312E
        322D332E322C312E32732D322E332D302E352D332E322D312E3220202623393B
        2623393B43342C31362E352C342C32322C342C32326831304331342C32322C31
        342C31362E352C31322E322C31342E387A222F3E0D0A093C2F673E0D0A3C2F73
        76673E0D0A}
      OnClick = ppmbtn_ExportVCFClick
    end
    object ppmbtn_ExportOutlook: TdxBarLargeButton
      Caption = 'Export Outlook'
      Category = 0
      Hint = 'Export Outlook'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
        7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
        37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
        373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
        233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
        696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
        74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
        643D224F75746C6F6F6B4578706F7274223E0D0A09093C706F6C79676F6E2063
        6C6173733D22477265656E2220706F696E74733D2231362C342032342C342032
        342C302033322C362032342C31322032342C382031362C38202623393B222F3E
        0D0A09093C7061746820636C6173733D22426C75652220643D224D32352C3134
        48313456384C302C31322E325632386C31342C34762D3668313163302E352C30
        2C312D302E352C312D315631354332362C31342E352C32352E352C31342C3235
        2C31347A204D392E322C32322E3943382E362C32332E362C372E392C32342C37
        2C323420202623393B2623393B632D302E392C302D312E362D302E342D322E32
        2D312E3143342E332C32322E322C342C32312E332C342C32302E3163302D312E
        322C302E332D322E322C302E382D3343352E342C31362E342C362E312C31362C
        372E312C313663302E392C302C312E362C302E342C322E312C312E3120202623
        393B2623393B63302E352C302E372C302E382C312E372C302E382C322E384331
        302C32312E322C392E372C32322E322C392E322C32322E397A204D31342C3136
        68396C2D362C346C2D332D325631367A204D32342C3234483134762D346C332C
        326C372D342E365632347A204D382E342C31372E3920202623393B2623393B63
        302E332C302E352C302E352C312E322C302E352C322E3163302C302E392D302E
        322C312E362D302E352C322E31632D302E332C302E352D302E382C302E382D31
        2E342C302E38632D302E362C302D312D302E332D312E342D302E3853352E312C
        32302E392C352E312C323020202623393B2623393B63302D302E392C302E322D
        312E362C302E352D322E3143362C31372E342C362E352C31372E312C372C3137
        2E3143372E362C31372E312C382E312C31372E342C382E342C31372E397A222F
        3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OnClick = ppmbtn_ExportOutlookClick
    end
    object btn_addGeburtsname: TdxBarLargeButton
      Caption = 'Geburtsname'
      Category = 0
      Hint = 'Geburtsname'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E262331333B262331303B2623393B2E426C75
        657B66696C6C3A233131373744377D262331333B262331303B2623393B2E4772
        65656E7B66696C6C3A233033394332337D262331333B262331303B3C2F737479
        6C653E0D0A3C7061746820636C6173733D22426C75652220643D224D31352C31
        386833762D3363302D302E362C302E342D312C312D316837563563302D302E36
        2D302E342D312D312D31483543342E342C342C342C342E342C342C3576323063
        302C302E362C302E342C312C312C316839762D3720202623393B4331342C3138
        2E342C31342E342C31382C31352C31387A222F3E0D0A3C706F6C79676F6E2063
        6C6173733D22477265656E2220706F696E74733D2232382C32302032342C3230
        2032342C31362032302C31362032302C32302031362C32302031362C32342032
        302C32342032302C32382032342C32382032342C32342032382C323420222F3E
        0D0A3C2F7376673E0D0A}
      OnClick = btn_addGeburtsnameClick
    end
    object btn_addGeburtsort: TdxBarLargeButton
      Caption = 'Geburtsort'
      Category = 0
      Hint = 'Geburtsort'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E262331333B262331303B2623393B2E426C75
        657B66696C6C3A233131373744377D262331333B262331303B2623393B2E4772
        65656E7B66696C6C3A233033394332337D262331333B262331303B3C2F737479
        6C653E0D0A3C7061746820636C6173733D22426C75652220643D224D31352C31
        386833762D3363302D302E362C302E342D312C312D316837563563302D302E36
        2D302E342D312D312D31483543342E342C342C342C342E342C342C3576323063
        302C302E362C302E342C312C312C316839762D3720202623393B4331342C3138
        2E342C31342E342C31382C31352C31387A222F3E0D0A3C706F6C79676F6E2063
        6C6173733D22477265656E2220706F696E74733D2232382C32302032342C3230
        2032342C31362032302C31362032302C32302031362C32302031362C32342032
        302C32342032302C32382032342C32382032342C32342032382C323420222F3E
        0D0A3C2F7376673E0D0A}
      OnClick = btn_addGeburtsortClick
    end
    object btn_addGeburtsland: TdxBarLargeButton
      Caption = 'Geburtsland'
      Category = 0
      Hint = 'Geburtsland'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E262331333B262331303B2623393B2E426C75
        657B66696C6C3A233131373744377D262331333B262331303B2623393B2E4772
        65656E7B66696C6C3A233033394332337D262331333B262331303B3C2F737479
        6C653E0D0A3C7061746820636C6173733D22426C75652220643D224D31352C31
        386833762D3363302D302E362C302E342D312C312D316837563563302D302E36
        2D302E342D312D312D31483543342E342C342C342C342E342C342C3576323063
        302C302E362C302E342C312C312C316839762D3720202623393B4331342C3138
        2E342C31342E342C31382C31352C31387A222F3E0D0A3C706F6C79676F6E2063
        6C6173733D22477265656E2220706F696E74733D2232382C32302032342C3230
        2032342C31362032302C31362032302C32302031362C32302031362C32342032
        302C32342032302C32382032342C32382032342C32342032382C323420222F3E
        0D0A3C2F7376673E0D0A}
      OnClick = btn_addGeburtslandClick
    end
    object btn_addTodestag: TdxBarLargeButton
      Caption = 'Todestag'
      Category = 0
      Hint = 'Todestag'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E262331333B262331303B2623393B2E426C75
        657B66696C6C3A233131373744377D262331333B262331303B2623393B2E4772
        65656E7B66696C6C3A233033394332337D262331333B262331303B3C2F737479
        6C653E0D0A3C7061746820636C6173733D22426C75652220643D224D31352C31
        386833762D3363302D302E362C302E342D312C312D316837563563302D302E36
        2D302E342D312D312D31483543342E342C342C342C342E342C342C3576323063
        302C302E362C302E342C312C312C316839762D3720202623393B4331342C3138
        2E342C31342E342C31382C31352C31387A222F3E0D0A3C706F6C79676F6E2063
        6C6173733D22477265656E2220706F696E74733D2232382C32302032342C3230
        2032342C31362032302C31362032302C32302031362C32302031362C32342032
        302C32342032302C32382032342C32382032342C32342032382C323420222F3E
        0D0A3C2F7376673E0D0A}
      OnClick = btn_addTodestagClick
    end
    object ppmbtn_NachExcelexportieren: TdxBarButton
      Caption = 'Nach Excel exportieren'
      Category = 1
      Visible = ivAlways
      ImageIndex = 63
      OnClick = ppmbtn_NachExcelexportierenClick
    end
    object btn_import: TdxBarButton
      Caption = 'Importieren'
      Category = 2
      Hint = 'Importieren'
      Visible = ivAlways
      ImageIndex = 65
    end
    object btn_Export: TdxBarButton
      Caption = 'Exportieren'
      Category = 2
      Hint = 'Exportieren'
      Visible = ivAlways
      ImageIndex = 66
    end
  end
  object brpmm_Kontakt: TdxBarPopupMenu
    BarManager = brmgr_Contacts
    ItemLinks = <
      item
        Visible = True
        ItemName = 'ppmbtn_NachExcelexportieren'
      end>
    UseOwnFont = False
    Left = 250
    Top = 409
    PixelsPerInch = 96
  end
  object grdpmm_Personal: TcxGridPopupMenu
    Grid = grd_Suche
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        PopupMenu = brpmm_Kontakt
      end>
    Left = 250
    Top = 289
  end
  object brpmm_Contact: TdxBarPopupMenu
    BarManager = brmgr_Contacts
    ItemLinks = <>
    UseOwnFont = False
    Left = 250
    Top = 351
    PixelsPerInch = 96
  end
  object idDecMIMME_Decode: TIdDecoderMIME
    FillChar = '='
    Left = 114
    Top = 343
  end
  object idDecQuotPrint_Decode: TIdDecoderQuotedPrintable
    Left = 114
    Top = 287
  end
  object qry_Kontakte: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    AfterScroll = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * '
      'From Manager_kontakte'
      'order by Vorname, Nachname')
    Left = 504
    Top = 288
    object qry_KontakteID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qry_KontakteID_Anrede: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Anrede'
      Origin = 'ID_Anrede'
    end
    object qry_KontakteVorname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vorname'
      Origin = 'Vorname'
      Size = 128
    end
    object qry_KontakteNachname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nachname'
      Origin = 'Nachname'
      Size = 128
    end
    object qry_KontakteZusatz: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Zusatz'
      Origin = 'Zusatz'
      Size = 128
    end
    object qry_KontakteStrasse_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Strasse_Privat'
      Origin = 'Strasse_Privat'
      Size = 128
    end
    object qry_KontaktePLZ_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLZ_Privat'
      Origin = 'PLZ_Privat'
      Size = 128
    end
    object qry_KontakteOrt_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ort_Privat'
      Origin = 'Ort_Privat'
      Size = 128
    end
    object qry_KontakteTelefon_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat'
      Origin = 'Telefon_Privat'
      Size = 128
    end
    object qry_KontakteTelefon_Privat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat1'
      Origin = 'Telefon_Privat1'
      Size = 128
    end
    object qry_KontakteTelefon_Privat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat2'
      Origin = 'Telefon_Privat2'
      Size = 128
    end
    object qry_KontakteHandy_privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Handy_privat'
      Origin = 'Handy_privat'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat'
      Origin = 'E_Mail_Privat'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat1'
      Origin = 'E_Mail_Privat1'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat2'
      Origin = 'E_Mail_Privat2'
      Size = 128
    end
    object qry_KontakteInternet_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Internet_Privat'
      Origin = 'Internet_Privat'
      Size = 128
    end
    object qry_KontakteID_Kontaktart: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Kontaktart'
      Origin = 'ID_Kontaktart'
    end
    object qry_KontakteBild: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Bild'
      Origin = 'Bild'
    end
    object qry_KontakteGeburtsdatum: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsdatum'
      Origin = 'Geburtsdatum'
    end
    object qry_KontakteID_Geschlecht: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Geschlecht'
      Origin = 'ID_Geschlecht'
    end
    object qry_KontakteID_Familienstand: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Familienstand'
      Origin = 'ID_Familienstand'
    end
    object qry_KontakteID_Staatsangehoerigkeit: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Staatsangehoerigkeit'
      Origin = 'ID_Staatsangehoerigkeit'
    end
    object qry_KontakteID_Konfession: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Konfession'
      Origin = 'ID_Konfession'
    end
    object qry_KontakteInfo: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Info'
      Origin = 'Info'
      BlobType = ftMemo
    end
    object qry_KontakteFirma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Firma'
      Origin = 'Firma'
      Size = 128
    end
    object qry_KontakteStrasse_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Strasse_Ges'
      Origin = 'Strasse_Ges'
      Size = 128
    end
    object qry_KontaktePLZ_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLZ_Ges'
      Origin = 'PLZ_Ges'
      Size = 128
    end
    object qry_KontakteOrt_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ort_Ges'
      Origin = 'Ort_Ges'
      Size = 128
    end
    object qry_KontakteAbteilung_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Abteilung_Ges'
      Origin = 'Abteilung_Ges'
      Size = 128
    end
    object qry_KontakteFunktion_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Funktion_Ges'
      Origin = 'Funktion_Ges'
      Size = 128
    end
    object qry_KontakteZentrale_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Zentrale_Ges'
      Origin = 'Zentrale_Ges'
      Size = 128
    end
    object qry_KontakteTelefon_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Ges'
      Origin = 'Telefon_Ges'
      Size = 128
    end
    object qry_KontakteHandy_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Handy_Ges'
      Origin = 'Handy_Ges'
      Size = 128
    end
    object qry_KontakteE_Mail_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Ges'
      Origin = 'E_Mail_Ges'
      Size = 128
    end
    object qry_KontakteInternet_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Internet_Ges'
      Origin = 'Internet_Ges'
      Size = 128
    end
    object qry_KontakteFacebook: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Facebook'
      Origin = 'Facebook'
      Size = 128
    end
    object qry_KontakteSkype: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Skype'
      Origin = 'Skype'
      Size = 128
    end
    object qry_KontakteICQ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICQ'
      Origin = 'ICQ'
      Size = 128
    end
    object qry_KontakteLive_Messanger: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Live_Messanger'
      Origin = 'Live_Messanger'
      Size = 128
    end
    object qry_KontakteID_Benutzer: TIntegerField
      FieldName = 'ID_Benutzer'
      Origin = 'ID_Benutzer'
      Required = True
    end
    object qry_KontakteGeburtsname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsname'
      Origin = 'Geburtsname'
      Size = 128
    end
    object qry_KontakteSollstunden: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Sollstunden'
      Origin = 'Sollstunden'
    end
    object qry_KontakteColFontWork: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ColFontWork'
      Origin = 'ColFontWork'
    end
    object qry_KontakteColCalWork: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ColCalWork'
      Origin = 'ColCalWork'
    end
    object qry_KontakteColFontBreak: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ColFontBreak'
      Origin = 'ColFontBreak'
    end
    object qry_KontakteUrlaub: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Urlaub'
      Origin = 'Urlaub'
    end
    object qry_KontakteEintritt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Eintritt'
      Origin = 'Eintritt'
    end
    object qry_KontakteColCalBreak: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ColCalBreak'
      Origin = 'ColCalBreak'
    end
    object qry_KontakteID_Zeiterfasser: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Zeiterfasser'
      Origin = 'ID_Zeiterfasser'
    end
    object qry_KontakteTodestag: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Todestag'
      Origin = 'Todestag'
    end
    object qry_KontakteGeburtsort: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsort'
      Origin = 'Geburtsort'
      Size = 255
    end
    object qry_KontakteE_Mail_Zentral: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Zentral'
      Origin = 'E_Mail_Zentral'
      Size = 255
    end
    object qry_KontakteID_Geburtsland: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Geburtsland'
      Origin = 'ID_Geburtsland'
    end
  end
  object idEncQuotPrint_Main: TIdEncoderQuotedPrintable
    Left = 114
    Top = 215
  end
  object dlgFOpen_VCF: TdxOpenFileDialog
    Options = []
    Left = 370
    Top = 255
  end
  object dlgsave_Personal: TdxSaveFileDialog
    Filter = 'Excel (*.xls)|*.xls'
    Left = 373
    Top = 360
  end
  object dlgSave_VCF: TdxSaveFileDialog
    Filter = '*.vcf'
    FilterIndex = 0
    Left = 370
    Top = 303
  end
  object Outlook: TOutlookApplication
    AutoConnect = False
    ConnectKind = ckRemote
    RemoteMachineName = '127.0.0.1'
    AutoQuit = False
    Left = 792
    Top = 456
  end
  object qry_work: TFDQuery
    Connection = dm_PCM.con_PCM
    Left = 592
    Top = 296
  end
end
