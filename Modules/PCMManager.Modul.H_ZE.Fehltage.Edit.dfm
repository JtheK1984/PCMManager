object frm_Fehltageeintragen: Tfrm_Fehltageeintragen
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'PCM - Zeiterfassung: Fehltage eintragen'
  ClientHeight = 526
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object grpbx_Detail: TcxGroupBox
    Left = 0
    Top = 458
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 0
    Height = 68
    Width = 480
    object brdckCtrl_Fehltage: TdxBarDockControl
      Left = 3
      Top = 3
      Width = 474
      Height = 63
      Align = dalTop
      BarManager = brmgr_Fehltage
    end
    object grpbx_FT: TcxGroupBox
      Left = 3
      Top = 66
      Align = alTop
      PanelStyle.Active = True
      Style.BorderStyle = ebs3D
      TabOrder = 1
      Height = 167
      Width = 474
      object lbl_FTVon: TcxLabel
        Left = 3
        Top = 3
        Align = alTop
        Caption = 'Zeitraum Von:'
        Transparent = True
      end
      object dedt_Von: TcxDateEdit
        Left = 3
        Top = 22
        Align = alTop
        TabOrder = 1
        Width = 468
      end
      object lbl_FTBis: TcxLabel
        Left = 3
        Top = 43
        Align = alTop
        Caption = 'Zeitraum Bis:'
        Transparent = True
      end
      object dedt_Bis: TcxDateEdit
        Left = 3
        Top = 62
        Align = alTop
        TabOrder = 3
        ExplicitTop = 64
        Width = 468
      end
      object lbl_FTFT: TcxLabel
        Left = 3
        Top = 83
        Align = alTop
        Caption = 'Fehltag:'
        Transparent = True
      end
      object cmbbx_Fehltage: TcxComboBox
        Left = 3
        Top = 102
        Align = alTop
        Properties.DropDownListStyle = lsEditFixedList
        TabOrder = 5
        ExplicitTop = 106
        Width = 468
      end
      object btn_FTSave: TcxButton
        Left = 2
        Top = 134
        Width = 205
        Height = 25
        Caption = 'Speichern'
        OptionsImage.ImageIndex = 56
        OptionsImage.Images = dm_PCM.imglst_16x16
        TabOrder = 6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btn_FTSaveClick
      end
      object btn_FTCancel: TcxButton
        Left = 269
        Top = 134
        Width = 205
        Height = 25
        Caption = 'Abbrechen'
        OptionsImage.ImageIndex = 57
        OptionsImage.Images = dm_PCM.imglst_16x16
        TabOrder = 7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btn_FTCancelClick
      end
    end
  end
  object grd_Booking: TcxGrid
    Left = 0
    Top = 0
    Width = 480
    Height = 458
    Align = alTop
    TabOrder = 1
    object grdDBTblView_Booking: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = ds_FT
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 16
      object grdDBTblView_BookingVon: TcxGridDBColumn
        DataBinding.FieldName = 'Von'
        DataBinding.IsNullValueType = True
      end
      object grdDBTblView_BookingBis: TcxGridDBColumn
        DataBinding.FieldName = 'Bis'
        DataBinding.IsNullValueType = True
      end
      object grdDBTblView_BookingKuerzel: TcxGridDBColumn
        DataBinding.FieldName = 'Kuerzel'
        DataBinding.IsNullValueType = True
        Width = 60
      end
      object grdDBTblView_BookingBeschreibung: TcxGridDBColumn
        DataBinding.FieldName = 'Beschreibung'
        DataBinding.IsNullValueType = True
        Width = 200
      end
      object grdDBTblView_BookingTage: TcxGridDBColumn
        DataBinding.FieldName = 'Tage'
        DataBinding.IsNullValueType = True
        Width = 50
      end
    end
    object grdLvl_Booking: TcxGridLevel
      GridView = grdDBTblView_Booking
    end
  end
  object brmgr_Fehltage: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
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
    UseSystemFont = True
    Left = 200
    Top = 352
    PixelsPerInch = 96
    object tb_Fehltage: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = brdckCtrl_Fehltage
      DockedDockControl = brdckCtrl_Fehltage
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 460
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_FTNEw'
        end
        item
          Visible = True
          ItemName = 'btn_FTDelete'
        end
        item
          Visible = True
          ItemName = 'btn_FTClose'
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
    object btn_FTNEw: TdxBarLargeButton
      Caption = 'Neu'
      Category = 0
      Hint = 'Neu'
      Visible = ivAlways
      OnClick = btn_FTNEwClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 60
    end
    object btn_FTDelete: TdxBarLargeButton
      Caption = 'L'#246'schen'
      Category = 0
      Hint = 'L'#246'schen'
      Visible = ivAlways
      OnClick = btn_FTDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 60
    end
    object btn_FTClose: TdxBarLargeButton
      Align = iaRight
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_FTCloseClick
      AutoGrayScale = False
      LargeImageIndex = 23
      Width = 60
    end
  end
  object qry_FT: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From manager_Fehltage ')
    Left = 200
    Top = 240
  end
  object ds_FT: TDataSource
    DataSet = qry_FT
    Left = 264
    Top = 240
  end
end
