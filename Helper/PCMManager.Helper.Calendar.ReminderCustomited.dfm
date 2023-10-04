inherited cxSchedulerReminderFormCustomized: TcxSchedulerReminderFormCustomized
  Caption = 'cxSchedulerReminderFormCustomized'
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited btnDismissAll: TcxButton
      Width = 168
      ExplicitWidth = 168
    end
    inherited btnOpenItem: TcxButton
      Left = 201
      ExplicitLeft = 201
    end
    inherited btnDismiss: TcxButton
      Left = 297
      Width = 133
      ExplicitLeft = 297
      ExplicitWidth = 133
    end
    inherited cbSnoozeTime: TcxComboBox
      ExplicitWidth = 281
      Width = 281
    end
    inherited btnSnooze: TcxButton
      Left = 297
      Width = 133
      ExplicitLeft = 297
      ExplicitWidth = 133
    end
    inherited lbEventCaption: TcxLabel
      AnchorY = 20
    end
    inherited dxLayoutItem3: TdxLayoutItem
      ControlOptions.OriginalWidth = 168
    end
    inherited dxLayoutItem5: TdxLayoutItem
      ControlOptions.OriginalWidth = 133
    end
    inherited dxLayoutItem7: TdxLayoutItem
      ControlOptions.OriginalWidth = 133
    end
  end
  object lblAdresse: TcxLabel [1]
    Left = 9
    Top = 51
    Caption = 'Adresse in OrgAuftrag'
    Visible = False
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutCxLookAndFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
