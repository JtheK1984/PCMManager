object frm_FeiertageAktualisieren: Tfrm_FeiertageAktualisieren
  Left = 629
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Feiertage aktualisieren'
  ClientHeight = 176
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object grpbx_DesignMain: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    ExplicitWidth = 324
    ExplicitHeight = 175
    Height = 176
    Width = 328
    object grpbx_Data: TcxGroupBox
      Left = 8
      Top = 79
      Caption = 'Zeitraum f'#252'r Aktualisierung der Feiertage'
      TabOrder = 0
      Height = 57
      Width = 313
      object dEdt_Von: TcxDateEdit
        Left = 40
        Top = 24
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.WeekNumbers = True
        Style.BorderStyle = ebsFlat
        TabOrder = 0
        Width = 105
      end
      object dEdt_Bis: TcxDateEdit
        Left = 184
        Top = 24
        Properties.SaveTime = False
        Properties.ShowTime = False
        Properties.WeekNumbers = True
        Style.BorderStyle = ebsFlat
        TabOrder = 1
        Width = 105
      end
      object lbl_Von: TcxLabel
        Left = 10
        Top = 25
        Caption = 'von:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
      object lbl_Bis: TcxLabel
        Left = 162
        Top = 25
        Caption = 'bis:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Transparent = True
      end
    end
    object grpbx_Hinweis: TcxGroupBox
      Left = 8
      Top = 8
      Caption = 'Hinweis'
      TabOrder = 1
      Height = 65
      Width = 313
      object lbl_Hinweis: TcxLabel
        Left = 10
        Top = 14
        AutoSize = False
        Caption = 
          'Wenn sich Feiertage in der Vergangenheit ge'#228'ndert haben, m'#252'ssen ' +
          'die Monate nach dem Aktualisieren der Feiertage neu berechnet we' +
          'rden!'#13#10
        Properties.WordWrap = True
        Transparent = True
        Height = 48
        Width = 295
      end
    end
    object btn_Abort: TcxButton
      Left = 231
      Top = 142
      Width = 90
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 3
      OnClick = btn_AbortClick
    end
    object btn_OK: TcxButton
      Left = 135
      Top = 142
      Width = 90
      Height = 25
      Caption = 'OK'
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 2
      OnClick = btn_OKClick
    end
  end
end
