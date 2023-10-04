object frm_PCM_Finanzreport: Tfrm_PCM_Finanzreport
  Left = 0
  Top = 0
  Caption = 'PCM - Manager: Finanz'#252'bersicht'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 15
  object EdgeBrowser: TEdgeBrowser
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    TabOrder = 0
    TabStop = True
    UserDataFolder = '%LOCALAPPDATA%\bds.exe.WebView2'
    ExplicitWidth = 620
    ExplicitHeight = 440
  end
end
