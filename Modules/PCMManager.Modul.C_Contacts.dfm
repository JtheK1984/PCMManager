object frm_Contact: Tfrm_Contact
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PCM - Manager: Kontakte'
  ClientHeight = 1032
  ClientWidth = 1600
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
    Top = 63
    Width = 1600
    Height = 969
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    ExplicitTop = 58
    ExplicitWidth = 1594
    ExplicitHeight = 957
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
      Width = 234
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
      Width = 234
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
      Width = 234
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
      Width = 234
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
      Width = 234
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
      Width = 234
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
      Width = 234
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
      Width = 234
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
      Width = 234
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
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Geburtsdatum'
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
      TabOrder = 34
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 895
    end
    object lucmbbx_KontaktZusatzFamilienstand: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 895
    end
    object lucmbbx_KontaktZusatzGeschlecht: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 895
    end
    object lucmbbx_Konfession: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 868
    end
    object lucmbbx_Staatsanghoerigkeit: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 868
    end
    object img_Picture: TcxDBImage
      Left = 10000
      Top = 10000
      TabStop = False
      DataBinding.DataField = 'Bild'
      DataBinding.DataSource = ds_Kontakte
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 33
      Visible = False
      Height = 156
      Width = 156
    end
    object edt_KontaktGeschaeftlichAbteilung: TcxDBTextEdit
      Left = 500
      Top = 241
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
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 1064
    end
    object edt_KontaktGeschaeftlichFirma: TcxDBTextEdit
      Left = 652
      Top = 79
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
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 912
    end
    object edt_KontaktGeschaeftlichPLZ: TcxDBTextEdit
      Left = 652
      Top = 133
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
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 69
    end
    object edt_KontaktGeschaeftlichStrasse: TcxDBTextEdit
      Left = 652
      Top = 106
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
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 912
    end
    object mem_Sonstige: TcxDBMemo
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 97
      Width = 1162
    end
    object grd_Suche: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1558
      Height = 719
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
      Width = 1123
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
      Width = 1123
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
      Width = 1123
    end
    object edt_KontaktGeschaeftlichFunktion: TcxDBTextEdit
      Left = 500
      Top = 268
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
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 1064
    end
    object btn_EditStaatsangehoerigkeit: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'btn_EditStaatsangehoerigkeit'
      OptionsImage.ImageIndex = 74
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 39
      Visible = False
    end
    object btn_EditKonfession: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'cxButton3'
      OptionsImage.ImageIndex = 74
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 41
      Visible = False
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
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 895
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
      Height = 773
      Width = 1568
    end
    object img_PictureGes: TcxDBImage
      Left = 402
      Top = 79
      TabStop = False
      DataBinding.DataField = 'Bild'
      DataBinding.DataSource = ds_Kontakte
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 43
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
      Width = 234
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
      Width = 234
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
      Width = 234
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
      Width = 234
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
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000017744558745469746C6500436F6C6F72697A65724D6170
            3B4D61703B4A3B8C930000098049444154785E9D95797014551EC73F3DD39999
            5C13729200492009930302261C41504B74A9D255505139D62DBCB6CAC53DAC95
            5576852D0F645757B9442E4B58C583A04980C400022A4603A1587260B8120221
            210492C93149663233DDD36FDBD07FB829A296AFEA5BAFA6DEEBFE7C7FDFF77B
            3D92100249923006B51F3C0248080021C85EF49104980A56DE93949210B14D32
            893445091CBCD0D2F3C68297F637000140ABDAB6404880260001B9BFCBC718E8
            0C861A3283462020F8FA50CD9C80C6328496FDE682CC60346AFDDDFDC9631F7F
            3DCC123E5CEAB95CF378F0C95D8B0EAF9BFBAF251BBF7DFDC4B9366FCE13F91A
            20546FA3A87AEF397EEE3031D88012C0D3AFE6F7B9FDCF54D475C607C7C73A72
            A74F8C1A9591136E8B0891CA8A8B213C95710FBD694ECDBB6FF9BA3FDE7A60F9
            6F272518C548B26DB4A4F8D55F6E405103F8BC8AEB4A87A7655A5E6A7CDE04C7
            81DC59B3474C5BF87B34D94A5256322F3F308B43EF6F26216736E3663F7BF3DD
            D3D20FBDFAD894140C13AAEFE71B18DC0312BA9EBB3D69896C3167CD79F0F699
            1933EE4C0E4DC943C8210008C545F19A959CF8BC82F449B9CCFFC70A14771B27
            76ACAA5D5D50F9ABD2E3CD5D800A68BF24010990E5B8A83DE1E1A1F302B698E4
            B0FF837783A796590F463132D1CAB5B335EC5EB1045B44146367DE3FFEF13BC7
            AE0782013320BD79388B1F0A903074230312607EFEC109A367E5657CFEE40BCF
            867CF75D13A5DB3F44D33484D205FDA7507A8FA076D573F75DE10C8B90703537
            7074FB0612B26EC23175FAC35B9FBEF919C00A98FF7AFB6909E0FB599709301B
            920C0D3640D07447CCD6D4DC69C9F6B1D37862E55A14BFC28A8573A93FB607C5
            7504DFD573F85B5DC83E3F53B304C1A1828ACA2F58F1C11F381DDB4C5856E88B
            7FBED731C93061324CE842FEF796432F1E3AD2A000E6211320A0E5581373A44B
            672E72B1FA0453674E67DE53F7F2E1EAADAC5FBE9BA3BBAFF1DEC61EFE5BD10F
            4265CAE430A624C5E13FD6C6E9BA56DA1D1653F2626BE9E2B5C9B70241187A6D
            C3FE17A7E5A42E3F79A6058C146E780BBA5DFD87DCCEAB8C9E3881C8B8307A5B
            2A71D65590971D8AAFDDCBE91A1F73FE944343B399D0D848A29252C8CECBE037
            53B33871A48E49A9B7322373516866A6A3E4992D63EE01825FDBB0F7E59BA7A4
            BF3065C2488480A17A40006AF5C5CED5A7F67EA2E90D4744581BC9633B983849
            9037299C47E72530669446F1FA2AD2D264221253B1060F4378BCD8642F592166
            761FDC8364F33073C2C3F2B048FBB66D9F14BD77C72DE3964ECE1E8180817E1A
            AA0704A0AC3D507FF24CED9937AA0B36E2EF2DC77BAD0EFFD51E7C9DFDB89D6E
            5213BDCC9D6B63FA5DE958AC3ADCED457577D0D7D549B41C42C3F936AA2F7D85
            473463D732EDD6B8EAFB5346D9B9D2EB470042882113304CE05F5A747A7DE5D1
            A69686B22A945617BE0ECF005CF1A97AEC51D72BB745A2B9FBF1EBF0DE8E0E2E
            77DAE8BA1CE8EE74F6E3ECEEE052472DD109661A9A2A69EFE9A3D9D58FD0049A
            F6E30600C4D61D5FBE92F3E4AB236B2AACB45F720FC0FD3E8590B8481D9EA2C3
            BFAFDC83DAA757AEC39B9C361A2ECBD873175CF6B8555C3AB0C9791E9FDC4AD3
            E5269CAE3E02010D4D80F613099856BEBD6FD998D1894F38D24693BEE8698E9E
            30E3EC50098DBB5EB9C51A3910BBD2E7D42B77D2D86EE3D405C87EF405A64CBD
            63BCE233899E1E1F5D3AB4DBE3C4D3E347515494804000625002F2E06B68B104
            2F9B3A319146E741CCB17D38163FC5A92DDBF1DB60725AC440EC7AE5B8F4CA1B
            9D219C3CAB60FEF512BA2DC3490C379138DC21B5379F4592A0BB55222A3C0B93
            594632CEDF380286BA8626DD2102138DDDA574782BB1C78772FBDF5FA155CE65
            E7C632CE559DA7FD4A1BF52D16AA6ABD98EE5E82293A898F8E5DE342A7CAA30F
            FC0DEDCA78CA0BFCD099C58CDCA7305943B005A920A41F6D42C9F87302012693
            19B3594236BBB047453371D1F38C7CEC75AAAE8DA2A8D445E599009639CF63D6
            E1DFD4F7E0564DE41F6FA7AE2B82C54FAE61C5D2CF98337305F123B2405689B0
            D603A0096DC8233036083404926422C2164BBC3D93CBDE045CAA202A732A23C7
            E552F65D8B6ED0843F2053DED083C7273009098F2628AE76929A998C90030464
            33B24525DC7A066FE018424C1FBA070C494697122A879168CFE5AA924E8FCF82
            5B51E94322CC6AE1D0790FA830605593D0F168228010923E9B30CB56CC16B09A
            15860537D3AFC335E1871FDC82A17A401AE8010D12EC3339D33B8E8B5D56DA7B
            FD68804022DC222369329AA4C3341D8C444068BA40689AAE004812201165EBD6
            E14750026EDCBE4E840442E32712D0340482B3BD93E8F5A8787C7E00DCA84C1E
            612631C2C66D8E08CAEABAD02450558100A3BA01E9408D90A01EDC4A057DBE73
            78150F6AC03FB0260C078624F9864DA8415B97174D000200D2E38219650FA6A5
            D5454E720CC1E66EBEAAEBC32B420804401501340D4C805B371D63BB4A4F7F39
            FEC0757852E4FD0881710D8D406FDC032080800608014864E9F0F4E81076141D
            61EBFB856D8B9F7E2C2E23258DA0A0AFA9BD720167772CAEFE2854C00FD82D6E
            9440AD0E77EB7085A461F73136663EF98565EC2DF9EC5D4001C48D7A004DD3B8
            CE16684046AC8D8C981076EE2A67EDBAB72A2B0F6F282C2EDC51D9D8709594E8
            1938E23CC445ECC6117F8284C84B58AD7D84065DC0AB9C4209F84936E03B0ACA
            D8FC4EFE4735E55B56193E05206EDC84C6172B332698CCD850F28BBE65EDDA0D
            C7EBAB77EF07AE94EC5CBDBF64D78EE38D8D6DA4C52C2425663C6E259FE0A042
            46471FC6ABEEA55F694187EB26E7F1F1A7656CDABCBDF0D4B16D6F03BD80FAA3
            4700920E0E21EB7B78E137BCB57E53457D4D5129D001F8006B49FEAA624910B8
            6BF6BC698EC445288A444DF30EBA5D8D7895F103B1A746EBB1EB956FD8F49F92
            BAAAFC2D4027E031E0E2C65F424DA08BCCB810BD721DFED6E6F2FAEAA202A009
            68015A8DB9A978E7AA827D259F1EB9D0D44A46E44232E2E7E353351223E6901A
            396F20F6B7376EDD67C0AF022E8CF887FC3B16424320D85938002FABAF29FC10
            68002E01D78C175D337E5F28D9F9E607073F2BFAA6B1C5C9F8B847B82F6715A9
            FA997FFC3D7CC3BBFBEBAB3FD964986F37AA5706018DCC2108885EFACF3D62DD
            3B9F0BC7C487BE001600B701D98003180D2419B303C836D617CE5EB8F4CB35DB
            CAC5AE03E7C59ACDFB44DA84874B8159C6BE5820D4609886322003F6E756EE11
            E939F34B80E9C018603810030C03EC40B8310F03628CF514E096071E5956FA97
            978AC4D89B16140039C65A186001CC065C1ACA80C9D81866B8B50C7A602849C6
            CBAD86B12863B602E69F7AFE7FE689AF60A1D1F9C10000000049454E44AE4260
            82}
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
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001D744558745469746C650050686F6E653B4D6F62696C65
            3B43656C6C50686F6E653BCD5C0E9B000002EB49444154785EA5964D8B1C5514
            869F5BDD5DAD628C8A08E242518906C409662271236E5CB977E1CE8522FA0FE2
            2F7025CCA2133F4240C485E0D68D04C485041C61543486D62888E24020F64C64
            A6BBEE39AFC5C18D4D0D74DF7AE9B369FA3EE7E1DC3E540D25B19CCDCD33E9E4
            C6F3A7D3603049A40DA0A62C0BA16FE5F6E6D59D2FB6B7B7BF164B19D29D41AA
            AAF38F3E7662F3AEE3F720122549A8DE9BDD3CF3CBF4DA047816C8AB0A8C206D
            1C3B7637EE02F47F70829D6FAEB0981F02508F6FE3D4E9B32C0F53C09D2D03D2
            53C15C4360001A9944579260E3E9B321022011A2E2A8A80E26B0AA409284DC39
            FEC84952AA3A2CE21311D0D55D7266D7AF222998EB0880C0DD91E0C4930F5192
            6BDFFF1A0C44642D0149B81B315A1725710F06920A0450D8BB0BEB25E0885201
            73A24A05E27CA10012EE19732F9E80B90703950A5834EF21108C320149981B9E
            CB271067DD9054BE05D9855999402EDD02490861D902602ADD020B46D0A4D505
            A6D3290F3FFECC7F00B5E594C4B28291730EE6CA02FBFBFB4C7FFE8D7BEF7B80
            3BACC7169833DB0B5630D7DA82DC34FCF1E72EF9FE190F2E9CF1309148AC1221
            E659FCBE3B63B765B4ACC22DB0CC3F870D376E2DA812AD4445DDD6B04A512911
            9120BBA216D999B7E522CE9A6524950B5876B209A0851B60AC1ACBDE47C0630B
            B279F91A5A3082553E0173B27BF19FB0FF15944DA0BF0072CC0CEBB786C1A0F4
            0ADC32EEC2FBBC0FF4BB02C3F2829DCB5728893C07A34C8010E0E6779F76809D
            A69993DB0AC868CCA8AD545547B1CA9F865D59CC0F78E3D59779FDB55700B8F0
            DE2526EF7F4C3DBEBD9B55FE42D22D909B79347FEE859700B8FCD9476C4D2E31
            1CD674A6700D9B0423736739290D38FFEE45BEFCFC135282C9858BF19D77FC76
            5055485AAC2B2097FD902A4E258765896A30646BF221EF6C7D403419D60C4775
            082C374F15B8EC4740EB08D8C1ADBFDFC2F576AAAA278E164D00E4DC447524CB
            FDA7C383BD7380AD23D0DCF8EBFA57C08BC018489445C01CD8033A0DFF0511EC
            718FFFDC32660000000049454E44AE426082}
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
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001E744558745469746C65004C65747465723B652D6D6169
            6C3B656D61696C3B6D61696C1A9193DA000000AE49444154785EEDD6B109C340
            0C85E16C76AD9BAC2470A6F20ADEC3E03114074444D2FC16CF218D8A5709F4BE
            E38ABB9BBBFF351F830634A001F7C7328EAC47FCEAC4DE41801D0AD4EC04F0C8
            0B335F01883DEFDD670106886AB915008010CA0B004014CB050022B85C073082
            CB750023B89C017CB244D05C00D0C91241730180771A089E0B00BC533B399F8B
            002ECFE49C10554096EBB1CA5BB041819A8D00D3AF9EE4D83BF597EC3B0D6840
            039E36D3EC54622E2CFC0000000049454E44AE426082}
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
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001D744558745469746C650050686F6E653B4D6F62696C65
            3B43656C6C50686F6E653BCD5C0E9B000002EB49444154785EA5964D8B1C5514
            869F5BDD5DAD628C8A08E242518906C409662271236E5CB977E1CE8522FA0FE2
            2F7025CCA2133F4240C485E0D68D04C485041C61543486D62888E24020F64C64
            A6BBEE39AFC5C18D4D0D74DF7AE9B369FA3EE7E1DC3E540D25B19CCDCD33E9E4
            C6F3A7D3603049A40DA0A62C0BA16FE5F6E6D59D2FB6B7B7BF164B19D29D41AA
            AAF38F3E7662F3AEE3F720122549A8DE9BDD3CF3CBF4DA047816C8AB0A8C206D
            1C3B7637EE02F47F70829D6FAEB0981F02508F6FE3D4E9B32C0F53C09D2D03D2
            53C15C4360001A9944579260E3E9B321022011A2E2A8A80E26B0AA409284DC39
            FEC84952AA3A2CE21311D0D55D7266D7AF222998EB0880C0DD91E0C4930F5192
            6BDFFF1A0C44642D0149B81B315A1725710F06920A0450D8BB0BEB25E0885201
            73A24A05E27CA10012EE19732F9E80B90703950A5834EF21108C320149981B9E
            CB271067DD9054BE05D9855999402EDD02490861D902602ADD020B46D0A4D505
            A6D3290F3FFECC7F00B5E594C4B28291730EE6CA02FBFBFB4C7FFE8D7BEF7B80
            3BACC7169833DB0B5630D7DA82DC34FCF1E72EF9FE190F2E9CF1309148AC1221
            E659FCBE3B63B765B4ACC22DB0CC3F870D376E2DA812AD4445DDD6B04A512911
            9120BBA216D999B7E522CE9A6524950B5876B209A0851B60AC1ACBDE47C0630B
            B279F91A5A3082553E0173B27BF19FB0FF15944DA0BF0072CC0CEBB786C1A0F4
            0ADC32EEC2FBBC0FF4BB02C3F2829DCB5728893C07A34C8010E0E6779F76809D
            A69993DB0AC868CCA8AD545547B1CA9F865D59CC0F78E3D59779FDB55700B8F0
            DE2526EF7F4C3DBEBD9B55FE42D22D909B79347FEE859700B8FCD9476C4D2E31
            1CD674A6700D9B0423736739290D38FFEE45BEFCFC135282C9858BF19D77FC76
            5055485AAC2B2097FD902A4E258765896A30646BF221EF6C7D403419D60C4775
            082C374F15B8EC4740EB08D8C1ADBFDFC2F576AAAA278E164D00E4DC447524CB
            FDA7C383BD7380AD23D0DCF8EBFA57C08BC018489445C01CD8033A0DFF0511EC
            718FFFDC32660000000049454E44AE426082}
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
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001D744558745469746C650050686F6E653B4D6F62696C65
            3B43656C6C50686F6E653BCD5C0E9B000002EB49444154785EA5964D8B1C5514
            869F5BDD5DAD628C8A08E242518906C409662271236E5CB977E1CE8522FA0FE2
            2F7025CCA2133F4240C485E0D68D04C485041C61543486D62888E24020F64C64
            A6BBEE39AFC5C18D4D0D74DF7AE9B369FA3EE7E1DC3E540D25B19CCDCD33E9E4
            C6F3A7D3603049A40DA0A62C0BA16FE5F6E6D59D2FB6B7B7BF164B19D29D41AA
            AAF38F3E7662F3AEE3F720122549A8DE9BDD3CF3CBF4DA047816C8AB0A8C206D
            1C3B7637EE02F47F70829D6FAEB0981F02508F6FE3D4E9B32C0F53C09D2D03D2
            53C15C4360001A9944579260E3E9B321022011A2E2A8A80E26B0AA409284DC39
            FEC84952AA3A2CE21311D0D55D7266D7AF222998EB0880C0DD91E0C4930F5192
            6BDFFF1A0C44642D0149B81B315A1725710F06920A0450D8BB0BEB25E0885201
            73A24A05E27CA10012EE19732F9E80B90703950A5834EF21108C320149981B9E
            CB271067DD9054BE05D9855999402EDD02490861D902602ADD020B46D0A4D505
            A6D3290F3FFECC7F00B5E594C4B28291730EE6CA02FBFBFB4C7FFE8D7BEF7B80
            3BACC7169833DB0B5630D7DA82DC34FCF1E72EF9FE190F2E9CF1309148AC1221
            E659FCBE3B63B765B4ACC22DB0CC3F870D376E2DA812AD4445DDD6B04A512911
            9120BBA216D999B7E522CE9A6524950B5876B209A0851B60AC1ACBDE47C0630B
            B279F91A5A3082553E0173B27BF19FB0FF15944DA0BF0072CC0CEBB786C1A0F4
            0ADC32EEC2FBBC0FF4BB02C3F2829DCB5728893C07A34C8010E0E6779F76809D
            A69993DB0AC868CCA8AD545547B1CA9F865D59CC0F78E3D59779FDB55700B8F0
            DE2526EF7F4C3DBEBD9B55FE42D22D909B79347FEE859700B8FCD9476C4D2E31
            1CD674A6700D9B0423736739290D38FFEE45BEFCFC135282C9858BF19D77FC76
            5055485AAC2B2097FD902A4E258765896A30646BF221EF6C7D403419D60C4775
            082C374F15B8EC4740EB08D8C1ADBFDFC2F576AAAA278E164D00E4DC447524CB
            FDA7C383BD7380AD23D0DCF8EBFA57C08BC018489445C01CD8033A0DFF0511EC
            718FFFDC32660000000049454E44AE426082}
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
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001E744558745469746C65004C65747465723B652D6D6169
            6C3B656D61696C3B6D61696C1A9193DA000000AE49444154785EEDD6B109C340
            0C85E16C76AD9BAC2470A6F20ADEC3E03114074444D2FC16CF218D8A5709F4BE
            E38ABB9BBBFF351F830634A001F7C7328EAC47FCEAC4DE41801D0AD4EC04F0C8
            0B335F01883DEFDD670106886AB915008010CA0B004014CB050022B85C073082
            CB750023B89C017CB244D05C00D0C91241730180771A089E0B00BC533B399F8B
            002ECFE49C10554096EBB1CA5BB041819A8D00D3AF9EE4D83BF597EC3B0D6840
            039E36D3EC54622E2CFC0000000049454E44AE426082}
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
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F400000013744558745469746C65005765623B576F726C643B4579650744383A
            00000ACC49444154785E9595697054D79DC57F6FE9D7BBD4122DB516D4124848
            960D884D0204028C07B3C82C019330E0095E2655D8717966CAE5D871F0120757
            ECC92405196383877866EC783CB693716CE238312160CB100C1688D5460BDA41
            A0ADD56AF5EBEEB74D4F9754A58AF0D4CCA977EA7F3FBCF7CEB9E77F1761CBD3
            1F20DB24646904235E8760B4224A22D2FF501650EC413CBE65BCF0C03704BE06
            3BDF386919864924F409BA1643762D4D56135D3752D4B4644DF23F9F5B078065
            598C410E6B713295CBE4E7B4B3746E29C505F3914425498982B44DA3A27B0460
            941360EDFA9B2A6B6CFCC7F37BAC8F4F1CA2333417352E611816A669E255646E
            8A077FFA1D7EF1F1F7A8EFDC4D5DEBE31CB9F230E3C4A4BFFD8745AE777EFFD8
            FA370E3E7E60E7BE7B4E3FFAD2A3DDCFBDF5A1F5FCAF1ABA7FF44EFDE9A77F79
            E2170FFDE3931BD66C9EEF01644004849DFFFAF77CEB476FB17EE7FBDCF5E47B
            6C79F620C058026344DCB4B290A2228BABE1B344B5416E9FFA524ABC7A45D0FE
            CA6F36ECA859937FC5E91FFCCDB4E9F607EEFFE6CAD9DBBF5191971F384CCD82
            2979957382B30BF223F77BBD1DEF55AE286E3EF0DBBB77542D2DB003E2AEFB76
            0BB7068FE1547A1148A9723388FDF10B0C443AB12C8395A5AF0A80F8C37DCBA6
            6CFFBBD99FFBB3BD2F95DF3A25503CAD9060CE2CBCCA1C8AFDEBB877D94F989F
            EB65DE641FD5150BB963F53F5158764FE04648F9E7079F5CF0F9533F5F5E0CC8
            CF6C7F499C5572068FA399AF839830625898AC9BFE7A2AF267F72FADF2E7B88E
            E54FCE9E595C12C4E3F213746DC56F5B499AA3189BECC1B4044420CD26312DDD
            C99C402605C105B87D53F16765CD9852EAAB7B6EDFF2F980F4C4D6BDA2694958
            5F9380F0EF27D6B17DC10702207E77D7DCC2E2D28CCF4BCB0AFD7E7F26769B8B
            69BE7B51A40C34CD02D18928DA180FACD4435433387CF94BFAAE1DA0BC048E1E
            6DE9FFF4B0BAF0E8DB47DA007DF3CEF7AD7777AD9FB00B84312E5A93E75EB5A5
            F8587171EE8CBCBC008AAC909FB6846CD77C1004B024A2310BC59E31411C2C2C
            0BBEBA7E8D3397F610C836F8E4C4240606A65F38F65F2FD7B49C39340C988035
            611B8E5669F1DABC47DC698E1999FE340CD348D12D17118E8E904858290F365B
            3A8231EA7EFC8A1EAD69628819A59339F2458482D2CD44CE774D9FBDF2BE4792
            065E043460421F6440ACAECDF18AB2F04820373D252C1A3A3D0316B9361159F1
            60B32785015380B8612058C2F8996301861E4391A1BEA1199B6B31375A5FC0E9
            98CDB052F4484965ED2BCDA73E1C04525E2718B8AD3AA3D6E992B3154542D775
            FAFB05DABB4B28CDCBC58D134333100581E4330129035898A68D612D135DD9C8
            486F1D4B2B4BE8BCD6CE475FFD6E52EED4E1DAE653BC0518374D40B059AB1D2E
            1B9AAE230A22E72E88E4976DA46B4827E833104546C585B10A58630652F19B49
            5E8DC824B418933C03185282404060DD9A022E5E685955F736EF00C24D13300D
            6356EF7517CD4D328A4D44964D34DDA0A537824791712A12E2A8AE200813666F
            9916AA66A6DE0FF51EA7E4361BA1E1AB842351AEF70ED2D4D1390790000146FF
            31DE405F8F273F9CA8C1E95B84C3E7C2EDB5134F1898169CED0A5192E5C66DB7
            A5521893B7183B526124A6D19C141FD17462911E545D273C32C270244A3C1E47
            8D2572C68EE89BB540B02C7B5A7951132D5D0954FB0A24494CB9B400C3B438DF
            1D26C3ADE073DA702B52CA886198C96A8125205826E50137920051772DFE4C95
            A86B9890B39F1EA99D2E9FCD0B37A40906C65C8546EE180E85FA718817514706
            8846E344A21A5135413CAEA7D2B81E8ED1D813A6A12B4457FF083601DC92806F
            E84BB23A0FE13FF71A997FFE29B90DBF858FFE8074F8339CE75AC90D7B593873
            4D02708CBFAC5E5B5D088004D88B2AEFDFA66B37264DCA54198A0630850C482D
            AC54C1B0527DC6B24C4AB33CE4A729387AEA496B7C970057C9CE900904036417
            E69333B510FFE41C3233BCB8F50452571BC6F90661BA4FEC3D7A25E91674C07A
            BF79682C01CC443C7E4ED5CA88AA1A46BC9D989A6024DC46B8FB4D06DA5F27DC
            7F2595CAB44C17E99286726A3F797D4729BAA588D6A89B7D071B79E8871FB261
            C71B2CDEFA1A5B1EFF3D4F1CB8CCDB67211AB88D052BAAC56555D35EDCBF6EEA
            1B15015700B003E237B73F810038E66CFAF1B68C9CE001877718997614A19949
            99066565362449A2A559273F6713D30A2A48AB7F99D2420F5FF43879F7483B9A
            A510D1247443C4A6D8B13B9DA86A143512C13235F2B233F1283AAB674894D2C6
            F143F5C75FF8AC7B4B6B28DE0B2444C0683FFDDE47D191D88028E53262CE4337
            14A614ABC4CC6E62461733672A5414E948F5AF90A6C478E53338DEE6E4AE8D1B
            0994CEA5FAF6253CFCD87DDCBD6D2D0B17CC6151F57CE6CC9F47565E90EB619D
            CA454B38D15BC09BED454CAD28ABDE51E17F06F000B204086AA8DBCC2A5EEC90
            24C712AFBB1F9FFB0CA2E32A5155251A8B91E92C21DD9011CE7CCE077D33A8AA
            5EC2F2DB17D27143A5B367800D1B6AC80C4C225018E0DF5EFD25E1C1C1A4E972
            7CBE346EF487906599B5AB6AC0EEE3C8158B12B16B96438F1DBED817EB110113
            4834D5FDCBDE7028DC686A0AA661233434C2F0708CA1A12819AEA9844F9FE78F
            EA3C366C5C4B55D54C7273FD5C1B08E3712A44A33A0E8F9393C7EB19E81BA0B1
            B189C3870E939B93CD9429412EB774245B9A41C5CC5BF8ABD52B39E9BD432CCB
            CA780070CA008011B9D13474A3E9B3AD084B3E7604AB32A56818CDBA82650998
            9AC4D92691AA55CB292B2D42511CC892903419C161B771ADFD3A3F7B712FA150
            085DD3D00D9DE6A409C5AE90E67531148E627728208A040BF299B9B0860B7D6D
            B5D0FA3DF1DE9FFDC91A4BA1E3D49B9743DD17BFDDD2EEEF0BF7DD42BABD0853
            B748244C3A5DAB58BAB8125194B1045267BF2C8AC4620912099D8C742F713546
            221E434BC4C9CBCB49563D751AA6799C6886050888361BF36657F095B8D46377
            66D84449147960F7510B308058F3D19F7FDA73E9486D4B7BD95797CE05714985
            785C3279792A27EABB8825CCA4A09632551CCCA27F30CC606888A5CB6A282CC8
            438BC7989C145FBF7103FDA1106D6D9D54DC3A0D5D33481D6AAACE89D31D84C3
            7D07E3EAA02A4A9240928CC200D4EE86772F5EFADDF3CBAF76BB9F3959D7DB7F
            ECD4096E2919E0F0B1F3745F1D2412891355E32C993F03B068E9E8666858A576
            ED3ABEFFD4F7D9BC751B23719DCB8DADA81195D5772E428D25888CC4B8DA13E2
            833F34F4349F7DE7796044D8B1B78E31ECFB6ECD98131190018733CD959E532E
            AEAA5DB1E9DB19DEA9E5BD43E519772D9F2E0427FB906591CEEEEBEC7BFD2036
            59223B6B12BE742F03834374765D4BAD8987EEDF4CC1E45CE2718DB68E01DEFB
            B021F445DD9BF7F4B41F3B0584841977BFCC5FE2FCAF1E1200619C11057001BE
            C9532BA7CF5DB27DD7FCB9E56595B3F2F17AEC44222A478FD773E9722BD7AEF7
            E1CF4CA7744A01358BE6E17239523BE9CFF59DC916367ED9D2F0EB47AF779C3C
            03848084C0FF8EF18948A3463C8ADD9DBDE08E87BF3329B76C6B71913FB3B830
            8374AF03B747419125D498C650586520A4D2D8DA47534BCF607F4FD37F5C3CF1
            DA7E5D8BF600C340A27AED6E93FF23C627A200E9C06497C73FBBF2F6077FB07C
            E38F3FB9F35B7BAEACDAB63FB2E69E57AD3BFF7A6F64D9C69F5CA9AE7DF6D3E9
            0BEE7BCAE1CA9807148C7EA700C2E2F57B58B46E378265595FAF2ADC34A0F1AD
            B1034EC0353AB68D5D70800EC40115888E8E75C000C64491F9FFC3028C71222A
            300488E392B246698EBD3BCA09B3FD6F1383D781A33001EA0000000049454E44
            AE426082}
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
      Left = 652
      Top = 185
      DataBinding.DataField = 'E_Mail_Zentral'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001E744558745469746C65004C65747465723B652D6D6169
            6C3B656D61696C3B6D61696C1A9193DA000000AE49444154785EEDD6B109C340
            0C85E16C76AD9BAC2470A6F20ADEC3E03114074444D2FC16CF218D8A5709F4BE
            E38ABB9BBBFF351F830634A001F7C7328EAC47FCEAC4DE41801D0AD4EC04F0C8
            0B335F01883DEFDD670106886AB915008010CA0B004014CB050022B85C073082
            CB750023B89C017CB244D05C00D0C91241730180771A089E0B00BC533B399F8B
            002ECFE49C10554096EBB1CA5BB041819A8D00D3AF9EE4D83BF597EC3B0D6840
            039E36D3EC54622E2CFC0000000049454E44AE426082}
          Kind = bkGlyph
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 49
      OnExit = btn_KontaktSaveClick
      Width = 912
    end
    object edt_KontaktGeschaeftlichInternet: TcxDBButtonEdit
      Left = 652
      Top = 210
      DataBinding.DataField = 'Internet_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F400000013744558745469746C65005765623B576F726C643B4579650744383A
            00000ACC49444154785E9595697054D79DC57F6FE9D7BBD4122DB516D4124848
            960D884D0204028C07B3C82C019330E0095E2655D8717966CAE5D871F0120757
            ECC92405196383877866EC783CB693716CE238312160CB100C1688D5460BDA41
            A0ADD56AF5EBEEB74D4F9754A58AF0D4CCA977EA7F3FBCF7CEB9E77F1761CBD3
            1F20DB24646904235E8760B4224A22D2FF501650EC413CBE65BCF0C03704BE06
            3BDF386919864924F409BA1643762D4D56135D3752D4B4644DF23F9F5B078065
            598C410E6B713295CBE4E7B4B3746E29C505F3914425498982B44DA3A27B0460
            941360EDFA9B2A6B6CFCC7F37BAC8F4F1CA2333417352E611816A669E255646E
            8A077FFA1D7EF1F1F7A8EFDC4D5DEBE31CB9F230E3C4A4BFFD8745AE777EFFD8
            FA370E3E7E60E7BE7B4E3FFAD2A3DDCFBDF5A1F5FCAF1ABA7FF44EFDE9A77F79
            E2170FFDE3931BD66C9EEF01644004849DFFFAF77CEB476FB17EE7FBDCF5E47B
            6C79F620C058026344DCB4B290A2228BABE1B344B5416E9FFA524ABC7A45D0FE
            CA6F36ECA859937FC5E91FFCCDB4E9F607EEFFE6CAD9DBBF5191971F384CCD82
            2979957382B30BF223F77BBD1DEF55AE286E3EF0DBBB77542D2DB003E2AEFB76
            0BB7068FE1547A1148A9723388FDF10B0C443AB12C8395A5AF0A80F8C37DCBA6
            6CFFBBD99FFBB3BD2F95DF3A25503CAD9060CE2CBCCA1C8AFDEBB877D94F989F
            EB65DE641FD5150BB963F53F5158764FE04648F9E7079F5CF0F9533F5F5E0CC8
            CF6C7F499C5572068FA399AF839830625898AC9BFE7A2AF267F72FADF2E7B88E
            E54FCE9E595C12C4E3F213746DC56F5B499AA3189BECC1B4044420CD26312DDD
            C99C402605C105B87D53F16765CD9852EAAB7B6EDFF2F980F4C4D6BDA2694958
            5F9380F0EF27D6B17DC10702207E77D7DCC2E2D28CCF4BCB0AFD7E7F26769B8B
            69BE7B51A40C34CD02D18928DA180FACD4435433387CF94BFAAE1DA0BC048E1E
            6DE9FFF4B0BAF0E8DB47DA007DF3CEF7AD7777AD9FB00B84312E5A93E75EB5A5
            F8587171EE8CBCBC008AAC909FB6846CD77C1004B024A2310BC59E31411C2C2C
            0BBEBA7E8D3397F610C836F8E4C4240606A65F38F65F2FD7B49C39340C988035
            611B8E5669F1DABC47DC698E1999FE340CD348D12D17118E8E904858290F365B
            3A8231EA7EFC8A1EAD69628819A59339F2458482D2CD44CE774D9FBDF2BE4792
            065E043460421F6440ACAECDF18AB2F04820373D252C1A3A3D0316B9361159F1
            60B32785015380B8612058C2F8996301861E4391A1BEA1199B6B31375A5FC0E9
            98CDB052F4484965ED2BCDA73E1C04525E2718B8AD3AA3D6E992B3154542D775
            FAFB05DABB4B28CDCBC58D134333100581E4330129035898A68D612D135DD9C8
            486F1D4B2B4BE8BCD6CE475FFD6E52EED4E1DAE653BC0518374D40B059AB1D2E
            1B9AAE230A22E72E88E4976DA46B4827E833104546C585B10A58630652F19B49
            5E8DC824B418933C03185282404060DD9A022E5E685955F736EF00C24D13300D
            6356EF7517CD4D328A4D44964D34DDA0A537824791712A12E2A8AE200813666F
            9916AA66A6DE0FF51EA7E4361BA1E1AB842351AEF70ED2D4D1390790000146FF
            31DE405F8F273F9CA8C1E95B84C3E7C2EDB5134F1898169CED0A5192E5C66DB7
            A5521893B7183B526124A6D19C141FD17462911E545D273C32C270244A3C1E47
            8D2572C68EE89BB540B02C7B5A7951132D5D0954FB0A24494CB9B400C3B438DF
            1D26C3ADE073DA702B52CA886198C96A8125205826E50137920051772DFE4C95
            A86B9890B39F1EA99D2E9FCD0B37A40906C65C8546EE180E85FA718817514706
            8846E344A21A5135413CAEA7D2B81E8ED1D813A6A12B4457FF083601DC92806F
            E84BB23A0FE13FF71A997FFE29B90DBF858FFE8074F8339CE75AC90D7B593873
            4D02708CBFAC5E5B5D088004D88B2AEFDFA66B37264DCA54198A0630850C482D
            AC54C1B0527DC6B24C4AB33CE4A729387AEA496B7C970057C9CE900904036417
            E69333B510FFE41C3233BCB8F50452571BC6F90661BA4FEC3D7A25E91674C07A
            BF79682C01CC443C7E4ED5CA88AA1A46BC9D989A6024DC46B8FB4D06DA5F27DC
            7F2595CAB44C17E99286726A3F797D4729BAA588D6A89B7D071B79E8871FB261
            C71B2CDEFA1A5B1EFF3D4F1CB8CCDB67211AB88D052BAAC56555D35EDCBF6EEA
            1B15015700B003E237B73F810038E66CFAF1B68C9CE001877718997614A19949
            99066565362449A2A559273F6713D30A2A48AB7F99D2420F5FF43879F7483B9A
            A510D1247443C4A6D8B13B9DA86A143512C13235F2B233F1283AAB674894D2C6
            F143F5C75FF8AC7B4B6B28DE0B2444C0683FFDDE47D191D88028E53262CE4337
            14A614ABC4CC6E62461733672A5414E948F5AF90A6C478E53338DEE6E4AE8D1B
            0994CEA5FAF6253CFCD87DDCBD6D2D0B17CC6151F57CE6CC9F47565E90EB619D
            CA454B38D15BC09BED454CAD28ABDE51E17F06F000B204086AA8DBCC2A5EEC90
            24C712AFBB1F9FFB0CA2E32A5155251A8B91E92C21DD9011CE7CCE077D33A8AA
            5EC2F2DB17D27143A5B367800D1B6AC80C4C225018E0DF5EFD25E1C1C1A4E972
            7CBE346EF487906599B5AB6AC0EEE3C8158B12B16B96438F1DBED817EB110113
            4834D5FDCBDE7028DC686A0AA661233434C2F0708CA1A12819AEA9844F9FE78F
            EA3C366C5C4B55D54C7273FD5C1B08E3712A44A33A0E8F9393C7EB19E81BA0B1
            B189C3870E939B93CD9429412EB774245B9A41C5CC5BF8ABD52B39E9BD432CCB
            CA780070CA008011B9D13474A3E9B3AD084B3E7604AB32A56818CDBA82650998
            9AC4D92691AA55CB292B2D42511CC892903419C161B771ADFD3A3F7B712FA150
            085DD3D00D9DE6A409C5AE90E67531148E627728208A040BF299B9B0860B7D6D
            B5D0FA3DF1DE9FFDC91A4BA1E3D49B9743DD17BFDDD2EEEF0BF7DD42BABD0853
            B748244C3A5DAB58BAB8125194B1045267BF2C8AC4620912099D8C742F713546
            221E434BC4C9CBCB49563D751AA6799C6886050888361BF36657F095B8D46377
            66D84449147960F7510B308058F3D19F7FDA73E9486D4B7BD95797CE05714985
            785C3279792A27EABB8825CCA4A09632551CCCA27F30CC606888A5CB6A282CC8
            438BC7989C145FBF7103FDA1106D6D9D54DC3A0D5D33481D6AAACE89D31D84C3
            7D07E3EAA02A4A9240928CC200D4EE86772F5EFADDF3CBAF76BB9F3959D7DB7F
            ECD4096E2919E0F0B1F3745F1D2412891355E32C993F03B068E9E8666858A576
            ED3ABEFFD4F7D9BC751B23719DCB8DADA81195D5772E428D25888CC4B8DA13E2
            833F34F4349F7DE7796044D8B1B78E31ECFB6ECD98131190018733CD959E532E
            AEAA5DB1E9DB19DEA9E5BD43E519772D9F2E0427FB906591CEEEEBEC7BFD2036
            59223B6B12BE742F03834374765D4BAD8987EEDF4CC1E45CE2718DB68E01DEFB
            B021F445DD9BF7F4B41F3B0584841977BFCC5FE2FCAF1E1200619C11057001BE
            C9532BA7CF5DB27DD7FCB9E56595B3F2F17AEC44222A478FD773E9722BD7AEF7
            E1CF4CA7744A01358BE6E17239523BE9CFF59DC916367ED9D2F0EB47AF779C3C
            03848084C0FF8EF18948A3463C8ADD9DBDE08E87BF3329B76C6B71913FB3B830
            8374AF03B747419125D498C650586520A4D2D8DA47534BCF607F4FD37F5C3CF1
            DA7E5D8BF600C340A27AED6E93FF23C627A200E9C06497C73FBBF2F6077FB07C
            E38F3FB9F35B7BAEACDAB63FB2E69E57AD3BFF7A6F64D9C69F5CA9AE7DF6D3E9
            0BEE7BCAE1CA9807148C7EA700C2E2F57B58B46E378265595FAF2ADC34A0F1AD
            B1034EC0353AB68D5D70800EC40115888E8E75C000C64491F9FFC3028C71222A
            300488E392B246698EBD3BCA09B3FD6F1383D781A33001EA0000000049454E44
            AE426082}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktGeschaeftlichInternetPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 50
      OnExit = btn_KontaktSaveClick
      Width = 912
    end
    object edt_KontaktGeschaeftlichOrt: TcxDBButtonEdit
      Left = 727
      Top = 133
      AutoSize = False
      DataBinding.DataField = 'Ort_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C00000017744558745469746C6500436F6C6F72697A65724D6170
            3B4D61703B4A3B8C930000098049444154785E9D95797014551EC73F3DD39999
            5C13729200492009930302261C41504B74A9D255505139D62DBCB6CAC53DAC95
            5576852D0F645757B9442E4B58C583A04980C400022A4603A1587260B8120221
            210492C93149663233DDD36FDBD07FB829A296AFEA5BAFA6DEEBFE7C7FDFF77B
            3D92100249923006B51F3C0248080021C85EF49104980A56DE93949210B14D32
            893445091CBCD0D2F3C68297F637000140ABDAB6404880260001B9BFCBC718E8
            0C861A3283462020F8FA50CD9C80C6328496FDE682CC60346AFDDDFDC9631F7F
            3DCC123E5CEAB95CF378F0C95D8B0EAF9BFBAF251BBF7DFDC4B9366FCE13F91A
            20546FA3A87AEF397EEE3031D88012C0D3AFE6F7B9FDCF54D475C607C7C73A72
            A74F8C1A9591136E8B0891CA8A8B213C95710FBD694ECDBB6FF9BA3FDE7A60F9
            6F272518C548B26DB4A4F8D55F6E405103F8BC8AEB4A87A7655A5E6A7CDE04C7
            81DC59B3474C5BF87B34D94A5256322F3F308B43EF6F26216736E3663F7BF3DD
            D3D20FBDFAD894140C13AAEFE71B18DC0312BA9EBB3D69896C3167CD79F0F699
            1933EE4C0E4DC943C8210008C545F19A959CF8BC82F449B9CCFFC70A14771B27
            76ACAA5D5D50F9ABD2E3CD5D800A68BF24010990E5B8A83DE1E1A1F302B698E4
            B0FF837783A796590F463132D1CAB5B335EC5EB1045B44146367DE3FFEF13BC7
            AE0782013320BD79388B1F0A903074230312607EFEC109A367E5657CFEE40BCF
            867CF75D13A5DB3F44D33484D205FDA7507A8FA076D573F75DE10C8B90703537
            7074FB0612B26EC23175FAC35B9FBEF919C00A98FF7AFB6909E0FB599709301B
            920C0D3640D07447CCD6D4DC69C9F6B1D37862E55A14BFC28A8573A93FB607C5
            7504DFD573F85B5DC83E3F53B304C1A1828ACA2F58F1C11F381DDB4C5856E88B
            7FBED731C93061324CE842FEF796432F1E3AD2A000E6211320A0E5581373A44B
            672E72B1FA0453674E67DE53F7F2E1EAADAC5FBE9BA3BBAFF1DEC61EFE5BD10F
            4265CAE430A624C5E13FD6C6E9BA56DA1D1653F2626BE9E2B5C9B70241187A6D
            C3FE17A7E5A42E3F79A6058C146E780BBA5DFD87DCCEAB8C9E3881C8B8307A5B
            2A71D65590971D8AAFDDCBE91A1F73FE944343B399D0D848A29252C8CECBE037
            53B33871A48E49A9B7322373516866A6A3E4992D63EE01825FDBB0F7E59BA7A4
            BF3065C2488480A17A40006AF5C5CED5A7F67EA2E90D4744581BC9633B983849
            9037299C47E72530669446F1FA2AD2D264221253B1060F4378BCD8642F592166
            761FDC8364F33073C2C3F2B048FBB66D9F14BD77C72DE3964ECE1E8180817E1A
            AA0704A0AC3D507FF24CED9937AA0B36E2EF2DC77BAD0EFFD51E7C9DFDB89D6E
            5213BDCC9D6B63FA5DE958AC3ADCED457577D0D7D549B41C42C3F936AA2F7D85
            473463D732EDD6B8EAFB5346D9B9D2EB470042882113304CE05F5A747A7DE5D1
            A69686B22A945617BE0ECF005CF1A97AEC51D72BB745A2B9FBF1EBF0DE8E0E2E
            77DAE8BA1CE8EE74F6E3ECEEE052472DD109661A9A2A69EFE9A3D9D58FD0049A
            F6E30600C4D61D5FBE92F3E4AB236B2AACB45F720FC0FD3E8590B8481D9EA2C3
            BFAFDC83DAA757AEC39B9C361A2ECBD873175CF6B8555C3AB0C9791E9FDC4AD3
            E5269CAE3E02010D4D80F613099856BEBD6FD998D1894F38D24693BEE8698E9E
            30E3EC50098DBB5EB9C51A3910BBD2E7D42B77D2D86EE3D405C87EF405A64CBD
            63BCE233899E1E1F5D3AB4DBE3C4D3E347515494804000625002F2E06B68B104
            2F9B3A319146E741CCB17D38163FC5A92DDBF1DB60725AC440EC7AE5B8F4CA1B
            9D219C3CAB60FEF512BA2DC3490C379138DC21B5379F4592A0BB55222A3C0B93
            594632CEDF380286BA8626DD2102138DDDA574782BB1C78772FBDF5FA155CE65
            E7C632CE559DA7FD4A1BF52D16AA6ABD98EE5E82293A898F8E5DE342A7CAA30F
            FC0DEDCA78CA0BFCD099C58CDCA7305943B005A920A41F6D42C9F87302012693
            19B3594236BBB047453371D1F38C7CEC75AAAE8DA2A8D445E599009639CF63D6
            E1DFD4F7E0564DE41F6FA7AE2B82C54FAE61C5D2CF98337305F123B2405689B0
            D603A0096DC8233036083404926422C2164BBC3D93CBDE045CAA202A732A23C7
            E552F65D8B6ED0843F2053DED083C7273009098F2628AE76929A998C90030464
            33B24525DC7A066FE018424C1FBA070C494697122A879168CFE5AA924E8FCF82
            5B51E94322CC6AE1D0790FA830605593D0F168228010923E9B30CB56CC16B09A
            15860537D3AFC335E1871FDC82A17A401AE8010D12EC3339D33B8E8B5D56DA7B
            FD68804022DC222369329AA4C3341D8C444068BA40689AAE004812201165EBD6
            E14750026EDCBE4E840442E32712D0340482B3BD93E8F5A8787C7E00DCA84C1E
            612631C2C66D8E08CAEABAD02450558100A3BA01E9408D90A01EDC4A057DBE73
            78150F6AC03FB0260C078624F9864DA8415B97174D000200D2E38219650FA6A5
            D5454E720CC1E66EBEAAEBC32B420804401501340D4C805B371D63BB4A4F7F39
            FEC0757852E4FD0881710D8D406FDC032080800608014864E9F0F4E81076141D
            61EBFB856D8B9F7E2C2E23258DA0A0AFA9BD720167772CAEFE2854C00FD82D6E
            9440AD0E77EB7085A461F73136663EF98565EC2DF9EC5D4001C48D7A004DD3B8
            CE16684046AC8D8C981076EE2A67EDBAB72A2B0F6F282C2EDC51D9D8709594E8
            1938E23CC445ECC6117F8284C84B58AD7D84065DC0AB9C4209F84936E03B0ACA
            D8FC4EFE4735E55B56193E05206EDC84C6172B332698CCD850F28BBE65EDDA0D
            C7EBAB77EF07AE94EC5CBDBF64D78EE38D8D6DA4C52C2425663C6E259FE0A042
            46471FC6ABEEA55F694187EB26E7F1F1A7656CDABCBDF0D4B16D6F03BD80FAA3
            4700920E0E21EB7B78E137BCB57E53457D4D5129D001F8006B49FEAA624910B8
            6BF6BC698EC445288A444DF30EBA5D8D7895F103B1A746EBB1EB956FD8F49F92
            BAAAFC2D4027E031E0E2C65F424DA08BCCB810BD721DFED6E6F2FAEAA202A009
            68015A8DB9A978E7AA827D259F1EB9D0D44A46E44232E2E7E353351223E6901A
            396F20F6B7376EDD67C0AF022E8CF887FC3B16424320D85938002FABAF29FC10
            68002E01D78C175D337E5F28D9F9E607073F2BFAA6B1C5C9F8B847B82F6715A9
            FA997FFC3D7CC3BBFBEBAB3FD964986F37AA5706018DCC2108885EFACF3D62DD
            3B9F0BC7C487BE001600B701D98003180D2419B303C836D617CE5EB8F4CB35DB
            CAC5AE03E7C59ACDFB44DA84874B8159C6BE5820D4609886322003F6E756EE11
            E939F34B80E9C018603810030C03EC40B8310F03628CF514E096071E5956FA97
            978AC4D89B16140039C65A186001CC065C1ACA80C9D81866B8B50C7A602849C6
            CBAD86B12863B602E69F7AFE7FE689AF60A1D1F9C10000000049454E44AE4260
            82}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktGeschaeftlichOrtPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 47
      OnExit = btn_KontaktSaveClick
      Height = 19
      Width = 837
    end
    object edt_KontaktGeschaeftlichTelefonZentrale: TcxDBButtonEdit
      Left = 652
      Top = 160
      DataBinding.DataField = 'Zentrale_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001D744558745469746C650050686F6E653B4D6F62696C65
            3B43656C6C50686F6E653BCD5C0E9B000002EB49444154785EA5964D8B1C5514
            869F5BDD5DAD628C8A08E242518906C409662271236E5CB977E1CE8522FA0FE2
            2F7025CCA2133F4240C485E0D68D04C485041C61543486D62888E24020F64C64
            A6BBEE39AFC5C18D4D0D74DF7AE9B369FA3EE7E1DC3E540D25B19CCDCD33E9E4
            C6F3A7D3603049A40DA0A62C0BA16FE5F6E6D59D2FB6B7B7BF164B19D29D41AA
            AAF38F3E7662F3AEE3F720122549A8DE9BDD3CF3CBF4DA047816C8AB0A8C206D
            1C3B7637EE02F47F70829D6FAEB0981F02508F6FE3D4E9B32C0F53C09D2D03D2
            53C15C4360001A9944579260E3E9B321022011A2E2A8A80E26B0AA409284DC39
            FEC84952AA3A2CE21311D0D55D7266D7AF222998EB0880C0DD91E0C4930F5192
            6BDFFF1A0C44642D0149B81B315A1725710F06920A0450D8BB0BEB25E0885201
            73A24A05E27CA10012EE19732F9E80B90703950A5834EF21108C320149981B9E
            CB271067DD9054BE05D9855999402EDD02490861D902602ADD020B46D0A4D505
            A6D3290F3FFECC7F00B5E594C4B28291730EE6CA02FBFBFB4C7FFE8D7BEF7B80
            3BACC7169833DB0B5630D7DA82DC34FCF1E72EF9FE190F2E9CF1309148AC1221
            E659FCBE3B63B765B4ACC22DB0CC3F870D376E2DA812AD4445DDD6B04A512911
            9120BBA216D999B7E522CE9A6524950B5876B209A0851B60AC1ACBDE47C0630B
            B279F91A5A3082553E0173B27BF19FB0FF15944DA0BF0072CC0CEBB786C1A0F4
            0ADC32EEC2FBBC0FF4BB02C3F2829DCB5728893C07A34C8010E0E6779F76809D
            A69993DB0AC868CCA8AD545547B1CA9F865D59CC0F78E3D59779FDB55700B8F0
            DE2526EF7F4C3DBEBD9B55FE42D22D909B79347FEE859700B8FCD9476C4D2E31
            1CD674A6700D9B0423736739290D38FFEE45BEFCFC135282C9858BF19D77FC76
            5055485AAC2B2097FD902A4E258765896A30646BF221EF6C7D403419D60C4775
            082C374F15B8EC4740EB08D8C1ADBFDFC2F576AAAA278E164D00E4DC447524CB
            FDA7C383BD7380AD23D0DCF8EBFA57C08BC018489445C01CD8033A0DFF0511EC
            718FFFDC32660000000049454E44AE426082}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktGeschaeftlichTelefonZentralePropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 48
      OnExit = btn_KontaktSaveClick
      Width = 912
    end
    object edt_KontaktGeschaeftlichTelefonDurchwahl: TcxDBButtonEdit
      Left = 500
      Top = 295
      DataBinding.DataField = 'Telefon_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001D744558745469746C650050686F6E653B4D6F62696C65
            3B43656C6C50686F6E653BCD5C0E9B000002EB49444154785EA5964D8B1C5514
            869F5BDD5DAD628C8A08E242518906C409662271236E5CB977E1CE8522FA0FE2
            2F7025CCA2133F4240C485E0D68D04C485041C61543486D62888E24020F64C64
            A6BBEE39AFC5C18D4D0D74DF7AE9B369FA3EE7E1DC3E540D25B19CCDCD33E9E4
            C6F3A7D3603049A40DA0A62C0BA16FE5F6E6D59D2FB6B7B7BF164B19D29D41AA
            AAF38F3E7662F3AEE3F720122549A8DE9BDD3CF3CBF4DA047816C8AB0A8C206D
            1C3B7637EE02F47F70829D6FAEB0981F02508F6FE3D4E9B32C0F53C09D2D03D2
            53C15C4360001A9944579260E3E9B321022011A2E2A8A80E26B0AA409284DC39
            FEC84952AA3A2CE21311D0D55D7266D7AF222998EB0880C0DD91E0C4930F5192
            6BDFFF1A0C44642D0149B81B315A1725710F06920A0450D8BB0BEB25E0885201
            73A24A05E27CA10012EE19732F9E80B90703950A5834EF21108C320149981B9E
            CB271067DD9054BE05D9855999402EDD02490861D902602ADD020B46D0A4D505
            A6D3290F3FFECC7F00B5E594C4B28291730EE6CA02FBFBFB4C7FFE8D7BEF7B80
            3BACC7169833DB0B5630D7DA82DC34FCF1E72EF9FE190F2E9CF1309148AC1221
            E659FCBE3B63B765B4ACC22DB0CC3F870D376E2DA812AD4445DDD6B04A512911
            9120BBA216D999B7E522CE9A6524950B5876B209A0851B60AC1ACBDE47C0630B
            B279F91A5A3082553E0173B27BF19FB0FF15944DA0BF0072CC0CEBB786C1A0F4
            0ADC32EEC2FBBC0FF4BB02C3F2829DCB5728893C07A34C8010E0E6779F76809D
            A69993DB0AC868CCA8AD545547B1CA9F865D59CC0F78E3D59779FDB55700B8F0
            DE2526EF7F4C3DBEBD9B55FE42D22D909B79347FEE859700B8FCD9476C4D2E31
            1CD674A6700D9B0423736739290D38FFEE45BEFCFC135282C9858BF19D77FC76
            5055485AAC2B2097FD902A4E258765896A30646BF221EF6C7D403419D60C4775
            082C374F15B8EC4740EB08D8C1ADBFDFC2F576AAAA278E164D00E4DC447524CB
            FDA7C383BD7380AD23D0DCF8EBFA57C08BC018489445C01CD8033A0DFF0511EC
            718FFFDC32660000000049454E44AE426082}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_KontaktGeschaeftlichTelefonDurchwahlPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 53
      OnExit = btn_KontaktSaveClick
      Width = 1064
    end
    object edt_GeschaeftlichHandy: TcxDBButtonEdit
      Left = 500
      Top = 320
      DataBinding.DataField = 'Handy_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001D744558745469746C650050686F6E653B4D6F62696C65
            3B43656C6C50686F6E653BCD5C0E9B000002EB49444154785EA5964D8B1C5514
            869F5BDD5DAD628C8A08E242518906C409662271236E5CB977E1CE8522FA0FE2
            2F7025CCA2133F4240C485E0D68D04C485041C61543486D62888E24020F64C64
            A6BBEE39AFC5C18D4D0D74DF7AE9B369FA3EE7E1DC3E540D25B19CCDCD33E9E4
            C6F3A7D3603049A40DA0A62C0BA16FE5F6E6D59D2FB6B7B7BF164B19D29D41AA
            AAF38F3E7662F3AEE3F720122549A8DE9BDD3CF3CBF4DA047816C8AB0A8C206D
            1C3B7637EE02F47F70829D6FAEB0981F02508F6FE3D4E9B32C0F53C09D2D03D2
            53C15C4360001A9944579260E3E9B321022011A2E2A8A80E26B0AA409284DC39
            FEC84952AA3A2CE21311D0D55D7266D7AF222998EB0880C0DD91E0C4930F5192
            6BDFFF1A0C44642D0149B81B315A1725710F06920A0450D8BB0BEB25E0885201
            73A24A05E27CA10012EE19732F9E80B90703950A5834EF21108C320149981B9E
            CB271067DD9054BE05D9855999402EDD02490861D902602ADD020B46D0A4D505
            A6D3290F3FFECC7F00B5E594C4B28291730EE6CA02FBFBFB4C7FFE8D7BEF7B80
            3BACC7169833DB0B5630D7DA82DC34FCF1E72EF9FE190F2E9CF1309148AC1221
            E659FCBE3B63B765B4ACC22DB0CC3F870D376E2DA812AD4445DDD6B04A512911
            9120BBA216D999B7E522CE9A6524950B5876B209A0851B60AC1ACBDE47C0630B
            B279F91A5A3082553E0173B27BF19FB0FF15944DA0BF0072CC0CEBB786C1A0F4
            0ADC32EEC2FBBC0FF4BB02C3F2829DCB5728893C07A34C8010E0E6779F76809D
            A69993DB0AC868CCA8AD545547B1CA9F865D59CC0F78E3D59779FDB55700B8F0
            DE2526EF7F4C3DBEBD9B55FE42D22D909B79347FEE859700B8FCD9476C4D2E31
            1CD674A6700D9B0423736739290D38FFEE45BEFCFC135282C9858BF19D77FC76
            5055485AAC2B2097FD902A4E258765896A30646BF221EF6C7D403419D60C4775
            082C374F15B8EC4740EB08D8C1ADBFDFC2F576AAAA278E164D00E4DC447524CB
            FDA7C383BD7380AD23D0DCF8EBFA57C08BC018489445C01CD8033A0DFF0511EC
            718FFFDC32660000000049454E44AE426082}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_GeschaeftlichHandyPropertiesButtonClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 54
      OnExit = btn_KontaktSaveClick
      Width = 1064
    end
    object edt_KontaktGeschaeftlichEMail: TcxDBButtonEdit
      Left = 500
      Top = 345
      DataBinding.DataField = 'E_Mail_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 17
          Glyph.SourceWidth = 17
          Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000001974455874536F6674776172650041646F626520496D616765526561
            647971C9653C0000001E744558745469746C65004C65747465723B652D6D6169
            6C3B656D61696C3B6D61696C1A9193DA000000AE49444154785EEDD6B109C340
            0C85E16C76AD9BAC2470A6F20ADEC3E03114074444D2FC16CF218D8A5709F4BE
            E38ABB9BBBFF351F830634A001F7C7328EAC47FCEAC4DE41801D0AD4EC04F0C8
            0B335F01883DEFDD670106886AB915008010CA0B004014CB050022B85C073082
            CB750023B89C017CB244D05C00D0C91241730180771A089E0B00BC533B399F8B
            002ECFE49C10554096EBB1CA5BB041819A8D00D3AF9EE4D83BF597EC3B0D6840
            039E36D3EC54622E2CFC0000000049454E44AE426082}
          Kind = bkGlyph
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 55
      OnExit = btn_KontaktSaveClick
      Width = 1064
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
      ItemIndex = 1
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
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object lagrp_SucheFilter: TdxLayoutGroup
      Parent = lagrp_Suche
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Filterkriterien'
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lagrp_SucheAdressePri: TdxLayoutGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object lagrp_SucheFirma: TdxLayoutGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahLeft
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
      AlignHorz = ahLeft
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
      ControlOptions.OriginalWidth = 234
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
    TabOrder = 5
    TabStop = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
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
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 112
    Top = 488
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      63
      0)
    object brmgrContactsBar1: TdxBar
      Caption = 'tb_Contacts'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1133
      FloatTop = 2
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
        end
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
        end
        item
          Visible = True
          ItemName = 'btn_KontaktImport'
        end
        item
          Visible = True
          ItemName = 'btn_AddFields'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_KontaktNew: TdxBarLargeButton
      Caption = 'Kontakt anlegen'
      Category = 0
      Hint = 'Kontakt anlegen'
      Visible = ivAlways
      OnClick = btn_KontaktNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktNext: TdxBarLargeButton
      Caption = '&n'#228'chster Kontakt'
      Category = 0
      Hint = 'n'#228'chster Kontakt'
      Visible = ivAlways
      OnClick = btn_KontaktNextClick
      AutoGrayScale = False
      LargeImageIndex = 26
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Kontaktprev: TdxBarLargeButton
      Caption = '&vorheriger Kontakt'
      Category = 0
      Hint = 'vorheriger Kontakt'
      Visible = ivAlways
      OnClick = btn_KontaktprevClick
      AutoGrayScale = False
      LargeImageIndex = 25
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktFirst: TdxBarLargeButton
      Caption = '&erster Kontakt'
      Category = 0
      Hint = 'erster Kontakt'
      Visible = ivAlways
      OnClick = btn_KontaktFirstClick
      AutoGrayScale = False
      LargeImageIndex = 33
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktDelete: TdxBarLargeButton
      Caption = 'Kontakt l'#246'schen'
      Category = 0
      Hint = 'Kontakt l'#246'schen'
      Visible = ivAlways
      OnClick = btn_KontaktDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_KontaktCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktSave: TdxBarLargeButton
      Caption = 'Kontakt speichern'
      Category = 0
      Hint = 'Kontakt speichern'
      Visible = ivAlways
      OnClick = btn_KontaktSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktLast: TdxBarLargeButton
      Caption = '&letzter Kontakt'
      Category = 0
      Hint = 'letzter Kontakt'
      Visible = ivAlways
      OnClick = btn_KontaktLastClick
      AutoGrayScale = False
      LargeImageIndex = 37
      Width = 115
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_KontaktImport: TdxBarLargeButton
      Caption = 'Kontakt im/exportieren'
      Category = 0
      Hint = 'Kontakt im/exportieren'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = brpmm_Contact
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 130
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_AddFields: TdxBarLargeButton
      Caption = 'Felder hinzuf'#252'gen'
      Category = 0
      Hint = 'Felder hinzuf'#252'gen'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = brpmm_Fields
      AutoGrayScale = False
      LargeImageIndex = 125
    end
    object ppmbtn_ExportOutlook: TdxBarLargeButton
      Caption = 'Export (Outlook)'
      Category = 0
      Hint = 'Export (Outlook)'
      Visible = ivAlways
      OnClick = ppmbtn_ExportOutlookClick
      LargeImageIndex = 64
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
    object ppmbtn_VCFImportieren: TdxBarButton
      Caption = 'VCF Importieren'
      Category = 3
      Visible = ivAlways
      ImageIndex = 64
      OnClick = ppmbtn_VCFImportierenClick
    end
    object ppmbtn_CSVImportiern: TdxBarButton
      Caption = 'CSV Importieren'
      Category = 3
      Visible = ivAlways
      ImageIndex = 63
    end
    object ppmbtn_ExportVCF: TdxBarButton
      Caption = 'VCard erstellen'
      Category = 3
      Hint = 'VCard erstellen'
      Visible = ivAlways
      ImageIndex = 64
      OnClick = ppmbtn_ExportVCFClick
    end
    object btn_addGeburtsname: TdxBarButton
      Caption = 'Geburtsname '
      Category = 3
      Visible = ivAlways
      OnClick = btn_addGeburtsnameClick
    end
    object btn_addGeburtsort: TdxBarButton
      Caption = 'Geburtsort'
      Category = 3
      Visible = ivAlways
      OnClick = btn_addGeburtsortClick
    end
    object btn_addGeburtsland: TdxBarButton
      Caption = 'Geburtsland'
      Category = 3
      Visible = ivAlways
      OnClick = btn_addGeburtslandClick
    end
    object btn_addTodestag: TdxBarButton
      Caption = 'Todestag'
      Category = 3
      Visible = ivAlways
      OnClick = btn_addTodestagClick
    end
  end
  object brpmm_Kontakt: TdxBarPopupMenu
    BarManager = brmgr_Contacts
    ItemLinks = <
      item
        Visible = True
        ItemName = 'ppmbtn_NachExcelexportieren'
      end
      item
        Visible = True
        ItemName = 'ppmbtn_ExportVCF'
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
  object brpmm_Fields: TdxBarPopupMenu
    BarManager = brmgr_Contacts
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
    UseOwnFont = False
    Left = 552
    Top = 546
    PixelsPerInch = 96
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
