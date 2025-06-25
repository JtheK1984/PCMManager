object frm_Terminsuche: Tfrm_Terminsuche
  Left = 0
  Top = 0
  Caption = 'PCM-Manager: Terminsuche'
  ClientHeight = 700
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object lactrl_Adressbook: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 900
    Height = 700
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitWidth = 1269
    ExplicitHeight = 852
    object grd_Adress: TcxGrid
      Left = 12
      Top = 44
      Width = 876
      Height = 612
      TabOrder = 1
      object grdDBTblView_Adress: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdDBTblView_AdressCellDblClick
        DataController.DataSource = ds_KalenderSuche
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
        object grdDBTblView_AdressCaption: TcxGridDBColumn
          Caption = 'Termin'
          DataBinding.FieldName = 'Caption'
          DataBinding.IsNullValueType = True
          Width = 250
        end
        object grdDBTblView_AdressLocation: TcxGridDBColumn
          Caption = 'Ort'
          DataBinding.FieldName = 'Location'
          DataBinding.IsNullValueType = True
          Width = 150
        end
        object grdDBTblView_AdressBeginn_Datum: TcxGridDBColumn
          Caption = 'Von Datum'
          DataBinding.FieldName = 'Beginn_Datum'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 100
        end
        object grdDBTblView_AdressBeginn_Zeit: TcxGridDBColumn
          Caption = 'Von Zeit'
          DataBinding.FieldName = 'Beginn_Zeit'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 100
        end
        object grdDBTblView_AdressEnde_Datum: TcxGridDBColumn
          Caption = 'Bis Datum'
          DataBinding.FieldName = 'Ende_Datum'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_AdressEnde_Zeit: TcxGridDBColumn
          Caption = 'Bis Zeit'
          DataBinding.FieldName = 'Ende_Zeit'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_AdressKalendername: TcxGridDBColumn
          DataBinding.FieldName = 'Kalendername'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_Adresscompleteday: TcxGridDBColumn
          Caption = 'ganzer Tag'
          DataBinding.FieldName = 'completeday'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 100
        end
      end
      object grdLvl_Adress: TcxGridLevel
        GridView = grdDBTblView_Adress
      end
    end
    object btn_Ok: TcxButton
      Left = 681
      Top = 663
      Width = 100
      Height = 25
      Caption = 'Ok'
      TabOrder = 2
      OnClick = btn_OkClick
    end
    object btn_Abort: TcxButton
      Left = 788
      Top = 663
      Width = 100
      Height = 25
      Caption = 'Abbrechen'
      TabOrder = 3
      OnClick = btn_AbortClick
    end
    object edt_suche: TcxButtonEdit
      Left = 59
      Top = 12
      Properties.Buttons = <
        item
          Default = True
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 23
          Glyph.SourceWidth = 23
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
            3B7D262331333B262331303B2623393B2E5265647B66696C6C3A234431314331
            433B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C75652220
            643D224D31382C32336C2D342E332C342E35632D302E372C302E372D312E392C
            302E372D322E362C306C2D362E362D362E36632D302E372D302E372D302E372D
            312E392C302D322E364C392C31344C31382C32337A222F3E0D0A3C7061746820
            636C6173733D225265642220643D224D32372E352C31332E374C32302C32316C
            2D392D396C372E332D372E3563302E372D302E372C312E392D302E372C322E36
            2C306C362E362C362E364332382E322C31312E382C32382E322C31332C32372E
            352C31332E377A222F3E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end>
      Properties.OnButtonClick = edt_SuchePropertiesButtonClick
      Properties.OnChange = edt_SuchePropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      OnKeyDown = edt_sucheKeyDown
      Width = 829
    end
    object lactrl_AdressbookGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lagrp_Adressbook: TdxLayoutGroup
      Parent = lactrl_AdressbookGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lagrp_AdressbookMain: TdxLayoutGroup
      Parent = lagrp_Adressbook
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Suche'
      ShowBorder = False
      Index = 0
    end
    object laitm_AdressbookGrid: TdxLayoutItem
      Parent = lagrp_AdressbookMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Adress
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_AdressbookBtn: TdxLayoutGroup
      Parent = lagrp_AdressbookMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object laitm_AdressbookOk: TdxLayoutItem
      Parent = lagrp_AdressbookBtn
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Ok
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_AdressbookCancel: TdxLayoutItem
      Parent = lagrp_AdressbookBtn
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Abort
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lagrp_AdressbookMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Termin:'
      Control = edt_suche
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object qry_KalenderSuche: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select Caption,Location,Date(START) AS Beginn_Datum,Time(START) ' +
        'AS Beginn_Zeit,Date(FINISH) AS Ende_Datum,Time(Finish) AS Ende_Z' +
        'eit,completeday,'
      'Kalendername'
      'From manager_kalender'
      'Where TYp = 2')
    Left = 632
    Top = 440
  end
  object ds_KalenderSuche: TDataSource
    DataSet = qry_KalenderSuche
    Left = 608
    Top = 560
  end
end
