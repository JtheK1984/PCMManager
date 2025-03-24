object frm_FeiertageAktualisieren: Tfrm_FeiertageAktualisieren
  Left = 629
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Feiertage aktualisieren'
  ClientHeight = 220
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object lactrl_FeiertageRefresh: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 345
    Height = 220
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitWidth = 339
    ExplicitHeight = 203
    object dEdt_Von: TcxDateEdit
      Left = 46
      Top = 103
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.WeekNumbers = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 126
    end
    object dEdt_Bis: TcxDateEdit
      Left = 200
      Top = 103
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.WeekNumbers = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 126
    end
    object btn_Abort: TcxButton
      Left = 176
      Top = 137
      Width = 159
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 3
      OnClick = btn_AbortClick
    end
    object btn_OK: TcxButton
      Left = 10
      Top = 137
      Width = 160
      Height = 25
      Caption = 'Ok'
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 2
      OnClick = btn_OKClick
    end
    object lactrl_FeiertageRefreshGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lactrl_FeiertageRefreshHinweis: TdxLayoutGroup
      Parent = lactrl_FeiertageRefreshGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hinweis'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object laitem_FeiertageRefreshGroupHinweis: TdxLayoutLabeledItem
      Parent = lactrl_FeiertageRefreshHinweis
      AlignHorz = ahClient
      AlignVert = avTop
      SizeOptions.Height = 48
      SizeOptions.Width = 295
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 
        'Wenn sich Feiertage in der Vergangenheit ge'#228'ndert haben, m'#252'ssen ' +
        'die Monate nach dem Aktualisieren der Feiertage neu berechnet we' +
        'rden!'
      CaptionOptions.WordWrap = True
      Index = 0
    end
    object lactrl_FeiertageRefreshGroupZeitraum: TdxLayoutGroup
      Parent = lactrl_FeiertageRefreshGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Zeitraum f'#252'r Aktualisierung der Feiertage'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object laitem_FeiertageRefreshGroupVon: TdxLayoutItem
      Parent = lactrl_FeiertageRefreshGroupZeitraum
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'von:'
      Control = dEdt_Von
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitem_FeiertageRefreshGroupBis: TdxLayoutItem
      Parent = lactrl_FeiertageRefreshGroupZeitraum
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'bis:'
      Control = dEdt_Bis
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitem_FeiertageRefreshGroupOk: TdxLayoutItem
      Parent = lactrl_FeiertageRefreshGroupButtons
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_OK'
      CaptionOptions.Visible = False
      Control = btn_OK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitem_FeiertageRefreshGroupCancel: TdxLayoutItem
      Parent = lactrl_FeiertageRefreshGroupButtons
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_Abort'
      CaptionOptions.Visible = False
      Control = btn_Abort
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lactrl_FeiertageRefreshGroupButtons: TdxLayoutGroup
      Parent = lactrl_FeiertageRefreshGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lactrl_FeiertageRefreshGroup: TdxLayoutGroup
      Parent = lactrl_FeiertageRefreshGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
  end
end
