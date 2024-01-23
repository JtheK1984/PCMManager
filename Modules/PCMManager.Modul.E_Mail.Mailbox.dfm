object frm_PCM_MailShow_Ordner: Tfrm_PCM_MailShow_Ordner
  Left = 0
  Top = 0
  Margins.Left = 8
  Margins.Bottom = 8
  BorderStyle = bsDialog
  Caption = 'Ordner w'#228'hlen'
  ClientHeight = 163
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object cmbbx_Ordner: TcxComboBox
    AlignWithMargins = True
    Left = 8
    Top = 8
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Align = alTop
    TabOrder = 0
    Width = 604
  end
  object cxButton1: TcxButton
    Left = 8
    Top = 42
    Width = 150
    Height = 25
    Caption = 'Verschieben'
    TabOrder = 1
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 164
    Top = 42
    Width = 150
    Height = 25
    Caption = 'Abbrechen'
    TabOrder = 2
    OnClick = cxButton2Click
  end
end
