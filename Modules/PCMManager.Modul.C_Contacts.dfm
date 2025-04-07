object frm_Contact: Tfrm_Contact
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PCM - Manager: Kontakte'
  ClientHeight = 900
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
    Height = 837
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 4
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    ExplicitWidth = 1594
    ExplicitHeight = 820
    object cmbbx_KontaktSucheArt: TcxComboBox
      Left = 88
      Top = 131
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object edt_KontaktSucheAbteilung: TcxTextEdit
      Left = 781
      Top = 104
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object edt_KontaktSucheFirma: TcxTextEdit
      Left = 781
      Top = 77
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object edt_KontaktSucheFunktion: TcxTextEdit
      Left = 781
      Top = 131
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object edt_KontaktSucheNachname: TcxTextEdit
      Left = 88
      Top = 77
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object edt_KontaktSucheOrt: TcxTextEdit
      Left = 439
      Top = 131
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object edt_KontaktSuchePLZ: TcxTextEdit
      Left = 439
      Top = 104
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object edt_KontaktSucheStrasse: TcxTextEdit
      Left = 439
      Top = 77
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object edt_KontaktSucheVorname: TcxTextEdit
      Left = 88
      Top = 104
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object cmbbx_Anrede: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_Email2: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'E_Mail_Privat1'
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
      Width = 262
    end
    object edt_KontaktGeburtsname: TcxDBTextEdit
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_KontaktHandy: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Handy_privat'
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
      TabOrder = 31
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 262
    end
    object edt_KontaktNachname: TcxDBTextEdit
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_KontaktName: TcxDBTextEdit
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_KontaktOrt: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Ort_Privat'
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
      TabOrder = 25
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 185
    end
    object edt_KontaktPLZ: TcxDBTextEdit
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 69
    end
    object edt_KontaktStrasse: TcxDBTextEdit
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
    end
    object edt_KontaktTelefon1: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Telefon_Privat'
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
      TabOrder = 27
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 262
    end
    object edt_KontaktTelefon2: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Telefon_Privat1'
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
      TabOrder = 29
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 262
    end
    object edt_KontaktZusatz: TcxDBTextEdit
      Left = 10000
      Top = 10000
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
      Visible = False
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
      TabOrder = 41
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
      TabOrder = 44
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
      TabOrder = 43
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
      TabOrder = 47
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
      TabOrder = 45
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
      TabOrder = 40
      Visible = False
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
      TabOrder = 62
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 1064
    end
    object edt_KontaktGeschaeftlichEMail: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'E_Mail_Ges'
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
      TabOrder = 69
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 1037
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
      TabOrder = 51
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 912
    end
    object edt_KontaktGeschaeftlichInternet: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Internet_Ges'
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
      TabOrder = 60
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 885
    end
    object edt_KontaktGeschaeftlichOrt: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Ort_Ges'
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
      TabOrder = 54
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 810
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
      TabOrder = 53
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
      TabOrder = 52
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 912
    end
    object edt_KontaktGeschaeftlichTelefonZentrale: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Zentrale_Ges'
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
      Width = 885
    end
    object edt_KontaktGeschaeftlichTelefonDurchwahl: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Telefon_Ges'
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
      TabOrder = 64
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 1037
    end
    object btn_MapPrivate: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.ImageIndex = 85
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 26
      Visible = False
      OnClick = btn_MapPrivateClick
    end
    object edt_Email1: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'E_Mail_Privat'
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
      TabOrder = 33
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 262
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
      TabOrder = 49
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 97
      Width = 1162
    end
    object btn_Mail1Private: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'btn_Mail1Private'
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 34
      Visible = False
      OnClick = btn_KontaktEmail1SendClick
    end
    object btn_Mail2Private: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'cxButton1'
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 36
      Visible = False
      OnClick = btn_KontaktEmail2SendClick
    end
    object grd_Suche: TcxGrid
      Left = 19
      Top = 227
      Width = 1558
      Height = 587
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
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
      Left = 162
      Top = 194
      Width = 137
      Height = 27
      Caption = 'Filter l'#246'schen'
      OptionsImage.ImageIndex = 24
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_ClearFilterClick
    end
    object btn_kontaktsuchen: TcxButton
      Left = 19
      Top = 194
      Width = 137
      Height = 27
      Caption = 'Kontakt suchen'
      OptionsImage.ImageIndex = 25
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 13
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
      TabOrder = 70
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
      TabOrder = 71
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
      TabOrder = 72
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 1123
    end
    object edt_KontaktInternet: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Internet_Privat'
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
      TabOrder = 37
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 262
    end
    object btn_WebPrivate: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.ImageIndex = 75
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 38
      TabStop = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_KontaktPrivOpenWebsiteClick
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
      TabOrder = 63
      Visible = False
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
      TabOrder = 46
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
      TabOrder = 48
      Visible = False
    end
    object btn_WebBusiness: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.ImageIndex = 75
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 61
      TabStop = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_KontaktGesOpenWebsiteClick
    end
    object btn_MapBusiness: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.ImageIndex = 85
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 55
      Visible = False
      OnClick = btn_MapBusinessClick
    end
    object btn_MailBusiness: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'cxButton1'
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 68
      Visible = False
      OnClick = btn_KontaktGeschaeftlichSendMailClick
    end
    object edt_GeschaeftlichHandy: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Handy_Ges'
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
      TabOrder = 66
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 1037
    end
    object cmbbx_KontaktArt: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
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
      TabOrder = 39
      Visible = False
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
      TabOrder = 42
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 895
    end
    object edt_KontakteGeburtsort: TcxDBTextEdit
      Left = 10000
      Top = 10000
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
      Visible = False
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
      TabOrder = 73
      Visible = False
      Height = 773
      Width = 1568
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
      TabOrder = 50
      Visible = False
      Height = 156
      Width = 156
    end
    object edt_KontaktGeschaeftlichEMailZentrale: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'E_Mail_Zentral'
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
      Width = 885
    end
    object btn_MailGesZentral: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'btn_MailGesZentral'
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 59
      Visible = False
      OnClick = btn_KontaktGeschaeftlichSendMailClick
    end
    object cmbbx_KontaktAnrede: TcxComboBox
      Left = 88
      Top = 158
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object btn_Tel1: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000097048597300000EC100000EC101B8916BED00000016744558745469
        746C650050686F6E653B486F6D6550686F6E653B8259023B0000003B49444154
        785EE5D3A11100200C43511664296426EA761FD33B06C8A506F1ED3369176095
        03F6293A59402717601A78FD09E457983F24C59FC9EA02DA54E9A1CC2A3E4F00
        00000049454E44AE426082}
      OptionsImage.ImageIndex = 85
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 28
      Visible = False
      OnClick = btn_Tel1Click
    end
    object btn_Tel2: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000097048597300000EC100000EC101B8916BED00000016744558745469
        746C650050686F6E653B486F6D6550686F6E653B8259023B0000003B49444154
        785EE5D3A11100200C43511664296426EA761FD33B06C8A506F1ED3369176095
        03F6293A59402717601A78FD09E457983F24C59FC9EA02DA54E9A1CC2A3E4F00
        00000049454E44AE426082}
      OptionsImage.ImageIndex = 85
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 30
      Visible = False
      OnClick = btn_Tel2Click
    end
    object btn_Handy: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000097048597300000EC100000EC101B8916BED00000016744558745469
        746C650050686F6E653B486F6D6550686F6E653B8259023B0000003B49444154
        785EE5D3A11100200C43511664296426EA761FD33B06C8A506F1ED3369176095
        03F6293A59402717601A78FD09E457983F24C59FC9EA02DA54E9A1CC2A3E4F00
        00000049454E44AE426082}
      OptionsImage.ImageIndex = 85
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 32
      Visible = False
      OnClick = btn_HandyClick
    end
    object btn_KontaktGeschaeftlichTelefonZentrale: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000097048597300000EC100000EC101B8916BED00000016744558745469
        746C650050686F6E653B486F6D6550686F6E653B8259023B0000003B49444154
        785EE5D3A11100200C43511664296426EA761FD33B06C8A506F1ED3369176095
        03F6293A59402717601A78FD09E457983F24C59FC9EA02DA54E9A1CC2A3E4F00
        00000049454E44AE426082}
      OptionsImage.ImageIndex = 85
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 57
      Visible = False
      OnClick = btn_KontaktGeschaeftlichTelefonZentraleClick
    end
    object btn_KontaktGeschaeftlichTelefondurchwahl: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000097048597300000EC100000EC101B8916BED00000016744558745469
        746C650050686F6E653B486F6D6550686F6E653B8259023B0000003B49444154
        785EE5D3A11100200C43511664296426EA761FD33B06C8A506F1ED3369176095
        03F6293A59402717601A78FD09E457983F24C59FC9EA02DA54E9A1CC2A3E4F00
        00000049454E44AE426082}
      OptionsImage.ImageIndex = 85
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 65
      Visible = False
      OnClick = btn_KontaktGeschaeftlichTelefondurchwahlClick
    end
    object btn_KontaktGeschaeftlichHandy: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        61000000097048597300000EC100000EC101B8916BED00000016744558745469
        746C650050686F6E653B486F6D6550686F6E653B8259023B0000003B49444154
        785EE5D3A11100200C43511664296426EA761FD33B06C8A506F1ED3369176095
        03F6293A59402717601A78FD09E457983F24C59FC9EA02DA54E9A1CC2A3E4F00
        00000049454E44AE426082}
      OptionsImage.ImageIndex = 85
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 67
      Visible = False
      OnClick = btn_KontaktGeschaeftlichHandyClick
    end
    object edt_KontaktSucheStrasseGes: TcxTextEdit
      Left = 1161
      Top = 77
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object edt_KontaktSuchePLZGes: TcxTextEdit
      Left = 1161
      Top = 104
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object edt_KontaktSucheOrtGes: TcxTextEdit
      Left = 1161
      Top = 131
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 21
      Width = 234
    end
    object cmbbx_KontaktGeburtsland: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
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
      Visible = False
      OnExit = btn_KontaktSaveClick
      Height = 21
      Width = 289
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
      AlignHorz = ahLeft
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
      AlignHorz = ahLeft
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
      AlignHorz = ahLeft
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
      AlignHorz = ahLeft
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
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Geburtsland:'
      Control = cmbbx_KontaktGeburtsland
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_HandyPrivatText: TdxLayoutItem
      Parent = lagrp_KontaktPersonalHandy
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Handy:'
      Control = edt_KontaktHandy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 262
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Telefon2Text: TdxLayoutItem
      Parent = lagrp_KontaktPersonalTelefon2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Telefon 2:'
      Control = edt_KontaktTelefon2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 262
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Telefon1Text: TdxLayoutItem
      Parent = lagrp_KontaktPersonalTelefon1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Telefon 1:'
      Control = edt_KontaktTelefon1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 262
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_MapPrivat: TdxLayoutItem
      Parent = lagrp_KontaktPersonalAdress
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_MapPrivate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_OrtPrivat: TdxLayoutItem
      Parent = lagrp_KontaktPersonalAdress
      AlignHorz = ahClient
      AlignVert = avClient
      Control = edt_KontaktOrt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PLZPrivat: TdxLayoutItem
      Parent = lagrp_KontaktPersonalAdress
      AlignHorz = ahLeft
      AlignVert = avClient
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
      AlignHorz = ahLeft
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
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Stra'#223'e:'
      Control = edt_KontaktStrasse
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object laitm_Mail1PrivatBtn: TdxLayoutItem
      Parent = lagrp_KontaktPersonalEmail1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Mail1Private
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_Mail2PrivatBtn: TdxLayoutItem
      Parent = lagrp_KontaktPersonalEmail2
      AlignHorz = ahRight
      AlignVert = avClient
      SizeOptions.MaxHeight = 21
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Mail2Private
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_WebPrivatText: TdxLayoutItem
      Parent = lagrp_KontaktPersonalWeb
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Internet:'
      Control = edt_KontaktInternet
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 262
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Mail1PrivatText: TdxLayoutItem
      Parent = lagrp_KontaktPersonalEmail1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'E-Mail 1:'
      Control = edt_Email1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 262
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_Mail2PrivatText: TdxLayoutItem
      Parent = lagrp_KontaktPersonalEmail2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail 2:'
      Control = edt_Email2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 262
      ControlOptions.ShowBorder = False
      Index = 0
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
    object laitm_WebPrivatBtn: TdxLayoutItem
      Parent = lagrp_KontaktPersonalWeb
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_WebPrivate
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
      Parent = lagrp_MailBusiness
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'E-Mail:'
      Control = edt_KontaktGeschaeftlichEMail
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 1
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
      Parent = lagrp_GesWeb
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Internet:'
      Control = edt_KontaktGeschaeftlichInternet
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_OrtBusiness: TdxLayoutItem
      Parent = lagrp_GesAdress
      AlignHorz = ahClient
      AlignVert = avClient
      Control = edt_KontaktGeschaeftlichOrt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 457
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_PLZBusiness: TdxLayoutItem
      Parent = lagrp_GesAdress
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Plz - Ort:'
      Control = edt_KontaktGeschaeftlichPLZ
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_TelefonDurchwahlText: TdxLayoutItem
      Parent = lagrp_TelefonDurchwahl
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Telefon Durchwahl:'
      Control = edt_KontaktGeschaeftlichTelefonDurchwahl
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_TelefonZentraleText: TdxLayoutItem
      Parent = lagrp_TelefonZentraleText
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Telefon Zentrale:'
      Control = edt_KontaktGeschaeftlichTelefonZentrale
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
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
    object laitm_WebBusinessBtn: TdxLayoutItem
      Parent = lagrp_GesWeb
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_WebBusiness
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_MailBusinessBtn: TdxLayoutItem
      Parent = lagrp_MailBusiness
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_MailBusiness
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_MapBusiness: TdxLayoutItem
      Parent = lagrp_GesAdress
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_MapBusiness
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
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
      Parent = lagrp_HandyBusiness
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Handy:'
      Control = edt_GeschaeftlichHandy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 1041
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_KontaktPersonalEmail2: TdxLayoutGroup
      Parent = lagrp_KontaktPersonal
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
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
    object lagrp_GesWeb: TdxLayoutGroup
      Parent = lagrp_GeswithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object lagrp_MailBusiness: TdxLayoutGroup
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
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
      AlignHorz = ahLeft
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
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object lagrp_KontaktPersonalEmail1: TdxLayoutGroup
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object lagrp_KontaktPersonal: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 3
    end
    object lagrp_KontaktPersonalWeb: TdxLayoutGroup
      Parent = lagrp_KontaktPersonal
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 11
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
      ShowBorder = False
      Index = 1
    end
    object lagrp_GeswithPic: TdxLayoutGroup
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_GesAdress: TdxLayoutGroup
      Parent = lagrp_GeswithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
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
      Parent = lagrp_GesMailzentral
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail Zentrale:'
      Control = edt_KontaktGeschaeftlichEMailZentrale
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_GesMailzentral: TdxLayoutGroup
      Parent = lagrp_GeswithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object laitm_MailBusinessZentralBtn: TdxLayoutItem
      Parent = lagrp_GesMailzentral
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_MailGesZentral
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
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
    object lagrp_KontaktPersonalTelefon1: TdxLayoutGroup
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object laitm_Telefon1Btn: TdxLayoutItem
      Parent = lagrp_KontaktPersonalTelefon1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Tel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_KontaktPersonalTelefon2: TdxLayoutGroup
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object lagrp_KontaktPersonalHandy: TdxLayoutGroup
      Parent = lagrp_KontaktPersonal
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object itm_Telefon2Btn: TdxLayoutItem
      Parent = lagrp_KontaktPersonalTelefon2
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Tel2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_HandyPrivatBtn: TdxLayoutItem
      Parent = lagrp_KontaktPersonalHandy
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Handy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_TelefonDurchwahl: TdxLayoutGroup
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lagrp_HandyBusiness: TdxLayoutGroup
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object lagrp_TelefonZentraleText: TdxLayoutGroup
      Parent = lagrp_GeswithoutPic
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object laitm_TelefonZentraleBtn: TdxLayoutItem
      Parent = lagrp_TelefonZentraleText
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_KontaktGeschaeftlichTelefonZentrale
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_TelefonDurchwahlBtn: TdxLayoutItem
      Parent = lagrp_TelefonDurchwahl
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_KontaktGeschaeftlichTelefondurchwahl
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_HandyBusinessBtn: TdxLayoutItem
      Parent = lagrp_HandyBusiness
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_KontaktGeschaeftlichHandy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
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
