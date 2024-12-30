object frm_monatswerte: Tfrm_monatswerte
  Left = 0
  Top = 0
  Caption = 'PCM - Zeiterfassung: Monatswerte'
  ClientHeight = 900
  ClientWidth = 1650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object grpbx_Statistik: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 0
    Height = 75
    Width = 1650
    object grpbx_MonatInfo: TcxGroupBox
      Left = 187
      Top = 2
      Align = alLeft
      Caption = 'Monatsinfo'
      PanelStyle.Active = True
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 71
      Width = 321
      object grpbx_MonatInfoDetail: TcxGroupBox
        Left = 0
        Top = 20
        PanelStyle.Active = True
        TabOrder = 0
        Height = 50
        Width = 321
        object dxBarDockControl1: TdxBarDockControl
          Left = 2
          Top = 2
          Width = 317
          Height = 42
          Align = dalTop
          BarManager = brmgr_MW
        end
      end
    end
    object grpbx_Personal: TcxGroupBox
      Left = 2
      Top = 2
      Align = alLeft
      Caption = 'Zeiterfasser'
      PanelStyle.Active = True
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 71
      Width = 185
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 20
        PanelStyle.Active = True
        TabOrder = 0
        Height = 50
        Width = 185
        object cxLabel5: TcxLabel
          Left = 6
          Top = 4
          Caption = 'Vorname:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 6
          Top = 29
          Caption = 'Nachname:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_name: TcxLabel
          Left = 78
          Top = 4
          Caption = 'wert'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_nachname: TcxLabel
          Left = 78
          Top = 29
          Caption = 'wert'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
    end
    object grpbx_Jahr: TcxGroupBox
      Left = 508
      Top = 2
      Align = alLeft
      Caption = 'Jahr'
      PanelStyle.Active = True
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 71
      Width = 62
      object grpbx_JahrDetail: TcxGroupBox
        Left = 0
        Top = 20
        PanelStyle.Active = True
        TabOrder = 0
        Height = 50
        Width = 62
        object AuswertungsJahr: TcxSpinEdit
          Left = 4
          Top = 4
          ParentFont = False
          Properties.MinValue = 2.000000000000000000
          Properties.UseCtrlIncrement = True
          Properties.OnChange = AuswertungsJahrPropertiesChange
          Style.TextStyle = [fsBold]
          TabOrder = 0
          Value = 2014
          Width = 53
        end
      end
    end
    object grpbx_Stat: TcxGroupBox
      Left = 570
      Top = 2
      Align = alLeft
      Caption = 'Zeiterfasser'
      PanelStyle.Active = True
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 71
      Width = 860
      object cxGroupBox11: TcxGroupBox
        Left = 0
        Top = 20
        PanelStyle.Active = True
        TabOrder = 0
        Height = 50
        Width = 860
        object cxLabel1: TcxLabel
          Left = 6
          Top = 4
          AutoSize = False
          Caption = 'Resturlaub Vorjahr:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 110
        end
        object cxLabel2: TcxLabel
          Left = 6
          Top = 29
          AutoSize = False
          Caption = 'genommener Urlaub:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 123
        end
        object lbl_RulVJ: TcxLabel
          Left = 135
          Top = 4
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '1'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 27
        end
        object lbl_genULGes: TcxLabel
          Left = 135
          Top = 29
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '1'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 27
        end
        object cxLabel7: TcxLabel
          Left = 182
          Top = 4
          AutoSize = False
          Caption = 'geplanter  Urlaub:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 104
        end
        object cxLabel8: TcxLabel
          Left = 182
          Top = 29
          AutoSize = False
          Caption = 'verf'#252'gbarer Urlaub:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 115
        end
        object lbl_geplULGes: TcxLabel
          Left = 303
          Top = 4
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '1'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 27
        end
        object lbl_VerfUL: TcxLabel
          Left = 303
          Top = 29
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '1'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 27
        end
        object lbl_bezKr: TcxLabel
          Left = 615
          Top = 3
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '1'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 27
        end
        object lbl_unbKr: TcxLabel
          Left = 615
          Top = 28
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '1'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 27
        end
        object cxLabel13: TcxLabel
          Left = 511
          Top = 28
          AutoSize = False
          Caption = 'Krank unbezahlt:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 98
        end
        object cxLabel14: TcxLabel
          Left = 511
          Top = 3
          AutoSize = False
          Caption = 'Krank bezahlt:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 84
        end
        object cxLabel15: TcxLabel
          Left = 664
          Top = 28
          AutoSize = False
          Caption = 'HomeOfficetage:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 101
        end
        object cxLabel16: TcxLabel
          Left = 664
          Top = 3
          AutoSize = False
          Caption = 'B'#252'rotage:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 59
        end
        object lbl_HomeOffGes: TcxLabel
          Left = 771
          Top = 27
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '1'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 27
        end
        object lbl_OfficeGes: TcxLabel
          Left = 771
          Top = 3
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '1'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 27
        end
        object cxLabel19: TcxLabel
          Left = 352
          Top = 29
          AutoSize = False
          Caption = 'Feiertage:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 60
        end
        object lbl_FT: TcxLabel
          Left = 462
          Top = 29
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '1'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 27
        end
        object cxLabel21: TcxLabel
          Left = 352
          Top = 4
          AutoSize = False
          Caption = 'Urlaub unbezahlt:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 104
        end
        object lbl_unbUL: TcxLabel
          Left = 462
          Top = 4
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '1'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 27
        end
      end
    end
    object cxButton1: TcxButton
      Left = 1432
      Top = 3
      Width = 100
      Height = 69
      Caption = 'Berechne Monat'
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = frm_ZE.imglst_32x32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 4
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 1538
      Top = 3
      Width = 100
      Height = 69
      Caption = 'Auswertungen'
      DropDownMenu = dxBarPopupMenu1
      Kind = cxbkDropDown
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = frm_ZE.imglst_32x32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 5
    end
  end
  object grpbx_MWDetail: TcxGroupBox
    Left = 0
    Top = 75
    Align = alClient
    Caption = 'Auswertung'
    TabOrder = 1
    Height = 825
    Width = 1650
    object sclbx_MW: TScrollBox
      Left = 2
      Top = 20
      Width = 1646
      Height = 803
      Align = alClient
      BorderStyle = bsNone
      TabOrder = 0
      object grpbx_MWMonat: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        Caption = 'Monatswerte'
        TabOrder = 0
        Height = 803
        Width = 389
        object Bevel2: TBevel
          Left = 196
          Top = 226
          Width = 61
          Height = 247
        end
        object Bevel3: TBevel
          Left = 311
          Top = 226
          Width = 61
          Height = 247
        end
        object Panel13: TPanel
          Left = 17
          Top = 16
          Width = 355
          Height = 16
          Alignment = taLeftJustify
          Caption = 
            '                                                                ' +
            ' hh:mm                        Dezimal'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 0
        end
        object Panel16: TPanel
          Left = 17
          Top = 208
          Width = 355
          Height = 16
          Alignment = taLeftJustify
          Caption = 
            '                                                                ' +
            '       Tage                         hh:mm'
          Color = clSkyBlue
          ParentBackground = False
          TabOrder = 1
        end
        object lbl_T2: TcxLabel
          Left = 198
          Top = 62
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_T6: TcxLabel
          Left = 198
          Top = 158
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_T7: TcxLabel
          Left = 198
          Top = 182
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWIStBrutto: TcxLabel
          Left = 17
          Top = 38
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Iststunden brutto:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 124
        end
        object lbl_T1: TcxLabel
          Left = 198
          Top = 38
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWPausen: TcxLabel
          Left = 17
          Top = 62
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Pausen:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 124
        end
        object lbl_D6: TcxLabel
          Left = 313
          Top = 158
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '0,00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWIstNetto: TcxLabel
          Left = 17
          Top = 86
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Iststunden netto:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 124
        end
        object lbl_T3: TcxLabel
          Left = 198
          Top = 86
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_D3: TcxLabel
          Left = 313
          Top = 86
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '0,00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_D2: TcxLabel
          Left = 313
          Top = 62
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '0,00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_D1: TcxLabel
          Left = 313
          Top = 38
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '0,00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWSoll: TcxLabel
          Left = 17
          Top = 110
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Sollstunden:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 124
        end
        object lbl_T4: TcxLabel
          Left = 198
          Top = 110
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_D4: TcxLabel
          Left = 313
          Top = 110
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '0,00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_D5: TcxLabel
          Left = 313
          Top = 134
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '0,00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_T5: TcxLabel
          Left = 198
          Top = 134
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWGLZ: TcxLabel
          Left = 16
          Top = 134
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Minder/Mehrarbeit:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 124
        end
        object lbl_D7: TcxLabel
          Left = 313
          Top = 182
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '0,00'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWGLZVM: TcxLabel
          Left = 17
          Top = 158
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Gleitzeit'#252'bertrag Vormonat:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 160
        end
        object lbl_MWGLZAkt: TcxLabel
          Left = 17
          Top = 182
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Gleitzeit'#252'bertrag Folgemonat:'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 180
        end
        object lbl_MWULgen: TcxLabel
          Left = 17
          Top = 230
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Urlaub genommen:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 173
        end
        object lbl_TG1: TcxLabel
          Left = 198
          Top = 230
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '0,0'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWULgepl: TcxLabel
          Left = 17
          Top = 254
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Urlaub geplant:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 173
        end
        object lbl_TG2: TcxLabel
          Left = 198
          Top = 254
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '2'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWRestUL: TcxLabel
          Left = 17
          Top = 278
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Resturlaub:'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 173
        end
        object lbl_TG1Dez: TcxLabel
          Left = 313
          Top = 230
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_TG2Dez: TcxLabel
          Left = 313
          Top = 254
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_TG3Dez: TcxLabel
          Left = 313
          Top = 278
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWULunbez: TcxLabel
          Left = 17
          Top = 302
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Urlaub unbezahlt:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 173
        end
        object lbl_FTM: TcxLabel
          Left = 198
          Top = 326
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '0,0'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_FTMDez: TcxLabel
          Left = 313
          Top = 326
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWKrbez: TcxLabel
          Left = 17
          Top = 350
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Krank bezahlt:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 173
        end
        object lbl_MWKrunbez: TcxLabel
          Left = 17
          Top = 374
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Krank unbezahlt:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 173
        end
        object lbl_MWFT: TcxLabel
          Left = 17
          Top = 326
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Feiertage:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 173
        end
        object lbl_ULunb: TcxLabel
          Left = 198
          Top = 302
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '0,0'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_MWBuero: TcxLabel
          Left = 17
          Top = 398
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'B'#252'ro-Tage:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 173
        end
        object lbl_MWHomeoffice: TcxLabel
          Left = 17
          Top = 422
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'HomeOffice-Tage:'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 173
        end
        object lbl_ULunbDez: TcxLabel
          Left = 313
          Top = 302
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_kr: TcxLabel
          Left = 198
          Top = 350
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '5'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_krunb: TcxLabel
          Left = 198
          Top = 374
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '5'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_krunbdez: TcxLabel
          Left = 313
          Top = 374
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_krDez: TcxLabel
          Left = 313
          Top = 350
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_Buero: TcxLabel
          Left = 198
          Top = 398
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '5'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_HO: TcxLabel
          Left = 198
          Top = 422
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '5'
          ParentBiDiMode = False
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_BueroDez: TcxLabel
          Left = 313
          Top = 398
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Visible = False
          Height = 19
          Width = 56
        end
        object lbl_BHOGes: TcxLabel
          Left = 198
          Top = 446
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '5'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 56
        end
        object lbl_HODez: TcxLabel
          Left = 313
          Top = 422
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          Transparent = True
          Visible = False
          Height = 19
          Width = 56
        end
        object lbl_BHOGesDez: TcxLabel
          Left = 313
          Top = 446
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '00:00'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Visible = False
          Height = 19
          Width = 56
        end
        object lbl_MWSumWorkDays: TcxLabel
          Left = 17
          Top = 446
          AutoSize = False
          BiDiMode = bdLeftToRight
          Caption = 'Arbeitstage gesamt:'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 173
        end
        object lbl_TG3: TcxLabel
          Left = 198
          Top = 278
          AutoSize = False
          BiDiMode = bdRightToLeft
          Caption = '5'
          ParentBiDiMode = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Transparent = True
          Height = 19
          Width = 56
        end
      end
      object grpbx_MWtag: TcxGroupBox
        Left = 389
        Top = 0
        Align = alClient
        Caption = 'Tageswerte'
        TabOrder = 1
        Height = 803
        Width = 1257
        object grd_Tag: TcxGrid
          Left = 2
          Top = 20
          Width = 1253
          Height = 781
          Align = alClient
          BorderStyle = cxcbsNone
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          object grd_TagDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataSource = ds_Day
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.ExpandButtonsForEmptyDetails = False
            OptionsView.GridLines = glVertical
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.Indicator = True
            object grd_TagDBTableView1Datum: TcxGridDBColumn
              DataBinding.FieldName = 'Datum'
              DataBinding.IsNullValueType = True
            end
            object grd_TagDBTableView1Tag: TcxGridDBColumn
              DataBinding.FieldName = 'Tag'
              DataBinding.IsNullValueType = True
              Width = 30
            end
            object grd_TagDBTableView1Sollstunden: TcxGridDBColumn
              DataBinding.FieldName = 'Sollstunden'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Width = 70
            end
            object grd_TagDBTableView1Tagesbrutto: TcxGridDBColumn
              DataBinding.FieldName = 'Tagesbrutto'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Width = 70
            end
            object grd_TagDBTableView1Tagesnetto: TcxGridDBColumn
              DataBinding.FieldName = 'Tagesnetto'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Width = 70
            end
            object grd_TagDBTableView1Mehrarbeit: TcxGridDBColumn
              DataBinding.FieldName = 'Mehrarbeit'
              DataBinding.IsNullValueType = True
              Width = 70
            end
            object grd_TagDBTableView1Pause: TcxGridDBColumn
              DataBinding.FieldName = 'Pause'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxTimeEditProperties'
              Properties.TimeFormat = tfHourMin
              Width = 70
            end
            object grd_TagDBTableView1Fehltag: TcxGridDBColumn
              DataBinding.FieldName = 'Fehltag'
              DataBinding.IsNullValueType = True
              Width = 70
            end
            object grd_TagDBTableView1Feiertag: TcxGridDBColumn
              DataBinding.FieldName = 'Feiertag'
              DataBinding.IsNullValueType = True
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.Items = <
                item
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'ganzer Feiertag'
                  Value = 1
                end
                item
                  Description = 'halber Feiertag'
                  Value = 2
                end>
              Width = 100
            end
            object grd_TagDBTableView1BA: TcxGridDBColumn
              Caption = 'Buchungsart'
              DataBinding.FieldName = 'BA'
              DataBinding.IsNullValueType = True
              Width = 100
            end
          end
          object grd_TagDBTableView2: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            OptionsView.Indicator = True
          end
          object tvTageswerte: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.First.Visible = True
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Prior.Visible = True
            Navigator.Buttons.Next.Visible = True
            Navigator.Buttons.NextPage.Visible = True
            Navigator.Buttons.Last.Visible = True
            Navigator.Buttons.Insert.Visible = True
            Navigator.Buttons.Delete.Visible = True
            Navigator.Buttons.Edit.Visible = True
            Navigator.Buttons.Post.Visible = True
            Navigator.Buttons.Cancel.Visible = True
            Navigator.Buttons.Refresh.Visible = True
            Navigator.Buttons.SaveBookmark.Visible = True
            Navigator.Buttons.GotoBookmark.Visible = True
            Navigator.Buttons.Filter.Visible = True
            ScrollbarAnnotations.CustomAnnotations = <>
            DataController.DataModeController.SyncMode = False
            DataController.DetailKeyFieldNames = 'Datum'
            DataController.KeyFieldNames = 'AuftragNr'
            DataController.MasterKeyFieldNames = 'Datum'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsView.GridLines = glVertical
            OptionsView.GroupByBox = False
            OptionsView.HeaderFilterButtonShowMode = fbmButton
            OptionsView.Indicator = True
            object tvTageswerteBuchungsArt: TcxGridDBColumn
              Tag = 6409508
              Caption = 'Art'
              DataBinding.FieldName = 'BuchungsArt'
              DataBinding.IsNullValueType = True
              Width = 29
            end
            object tvTageswerteMe1: TcxGridDBColumn
              Tag = 42559168
              Caption = '1. Buchung'
              DataBinding.FieldName = 'Me1'
              DataBinding.IsNullValueType = True
            end
            object tvTageswerteMe2: TcxGridDBColumn
              Tag = 42600172
              Caption = '2. Buchung'
              DataBinding.FieldName = 'Me2'
              DataBinding.IsNullValueType = True
            end
            object tvTageswerteBSumme: TcxGridDBColumn
              Tag = 42620740
              Caption = 'Summe'
              DataBinding.FieldName = 'BSumme'
              DataBinding.IsNullValueType = True
            end
            object tvTageswerteAuftragNr: TcxGridDBColumn
              Tag = 42624096
              Caption = 'Auftrag-Nr'
              DataBinding.FieldName = 'AuftragNr'
              DataBinding.IsNullValueType = True
            end
            object tvTageswerteTaetigkNr: TcxGridDBColumn
              Tag = 42699484
              Caption = 'Taetigk-Nr'
              DataBinding.FieldName = 'TaetigkNr'
              DataBinding.IsNullValueType = True
            end
            object tvTageswerteKostenstelle: TcxGridDBColumn
              Tag = 42700972
              DataBinding.FieldName = 'Kostenstelle'
              DataBinding.IsNullValueType = True
            end
          end
          object grd_TagLevel1: TcxGridLevel
            GridView = grd_TagDBTableView1
            Options.DetailFrameColor = clWindow
            Options.DetailFrameWidth = 4
          end
        end
      end
    end
  end
  object brmgr_MW: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.LargeImages = imglst_16x16
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseFullReset = True
    UseSystemFont = True
    Left = 472
    Top = 224
    PixelsPerInch = 96
    object tb_MW: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 991
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_01'
        end
        item
          Visible = True
          ItemName = 'btn_02'
        end
        item
          Visible = True
          ItemName = 'btn_03'
        end
        item
          Visible = True
          ItemName = 'btn_04'
        end
        item
          Visible = True
          ItemName = 'btn_05'
        end
        item
          Visible = True
          ItemName = 'btn_06'
        end
        item
          Visible = True
          ItemName = 'btn_07'
        end
        item
          Visible = True
          ItemName = 'btn_08'
        end
        item
          Visible = True
          ItemName = 'btn_09'
        end
        item
          Visible = True
          ItemName = 'btn_10'
        end
        item
          Visible = True
          ItemName = 'btn_11'
        end
        item
          Visible = True
          ItemName = 'btn_12'
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
    object btn_01: TdxBarLargeButton
      Tag = 1
      Caption = '1'
      Category = 0
      Hint = '1'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      LargeImageIndex = 0
      Width = 25
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_02: TdxBarLargeButton
      Tag = 2
      Caption = '2'
      Category = 0
      Hint = '2'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_03: TdxBarLargeButton
      Tag = 3
      Caption = '3'
      Category = 0
      Hint = '3'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_04: TdxBarLargeButton
      Tag = 4
      Caption = '4'
      Category = 0
      Hint = '4'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_05: TdxBarLargeButton
      Tag = 5
      Caption = '5'
      Category = 0
      Hint = '5'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_06: TdxBarLargeButton
      Tag = 6
      Caption = '6'
      Category = 0
      Hint = '6'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_07: TdxBarLargeButton
      Tag = 7
      Caption = '7'
      Category = 0
      Hint = '7'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_08: TdxBarLargeButton
      Tag = 8
      Caption = '8'
      Category = 0
      Hint = '8'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_09: TdxBarLargeButton
      Tag = 9
      Caption = '9'
      Category = 0
      Hint = '9'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_10: TdxBarLargeButton
      Tag = 10
      Caption = '10'
      Category = 0
      Hint = '10'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_11: TdxBarLargeButton
      Tag = 11
      Caption = '11'
      Category = 0
      Hint = '11'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
    end
    object btn_12: TdxBarLargeButton
      Tag = 12
      Caption = '12'
      Category = 0
      Hint = '12'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      LargeImageIndex = 12
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      LargeImageIndex = 15
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object Monatsbericht1: TdxBarButton
      Caption = 'Monatsbericht'
      Category = 1
      Visible = ivAlways
      OnClick = Monatsbericht1Click
    end
    object Monatsbericht2: TdxBarButton
      Caption = 'Jahres'#252'bersicht'
      Category = 1
      Visible = ivAlways
      OnClick = Monatsbericht2Click
    end
  end
  object imglst_16x16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 12058912
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D4507D8040F0D0D241E2F8BBB000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC61050000026C494441
          5478DA95934D4C13511485CFBC99C7D49676A653DA468510103086BF82104537
          A2B1413115D1C450E34258B0D3955BDD890B59991835511274A168C2CAB50B0D
          2E00B1048D12085025D062FF286DE9B433CF420221C48472972FE73BF7E5DC7B
          81FD1527D5160C4A35424869104EEF9305A47ABEAFFA6A09F33E7633A581C6AC
          C785163E5F58AEA7372C7261FF959E762E4163305510313819F790BCE01ADAC0
          087B7EB9FB2217CA2E21CA82501359308D2DEE69602D839CD132EFDBBD6EA366
          4A214A82585F4B63EADD9F0013D21DDB0636174A3742DA6DA099F8178DAD75E5
          8E720961B2049D6AF00DFAD37C81DE1919C7C2A681E412EE329ECEE5BE3A8453
          A05BB0A54EE8B595289DCDE7EA10D07E83D872F0801F5955BF131ACB8E6C6888
          A5913F2F14D0BEAEDB9D9CE3A8F59A1C13DEE6DE7973332A39C2F5B779CF6025
          BB08664B63FAC33262F3C9D791F1F4B3AD26BCD1298C5CEA6D351B2D46382A15
          ACFC0D1D63542B450A3D67BB4E1E31150B583346B01A4CC2F7D23F1D25AA0701
          A83B0CE84DC1AE3B4D153CE26A14529988D5C594CB7E582969F2D42284250832
          87CF0F7EA9BAAE5D58F7E90B3B33E289531B0EFD8CB7F176DD61AF3643D71894
          2A33AAEACB9114A3A04E0E130373882D24EE47263243BB43E6330124C8417D38
          3C99EC90CB8C4A51A505841068621A34D7393413C78F37FED1F0B7CCAD9C9EED
          36D89C427212CB10897BECE9CC723C9046A1C300D14A412D02469FCCA830A27B
          63A2FFDB93ED3D887E5D9FE329F37C7AF83DC97406E99009BE57F3C8A4B447E1
          2F99A9BC0FC67AC270BDB45DD6BD1F5B98EC1267518C0379C35B55D464B8676B
          34249566D1BD97F61FD720E66F1B2C9D580000000049454E44AE426082}
      end>
  end
  object qry_Day: TFDQuery
    Connection = dm_PCM.con_PCM
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    SQL.Strings = (
      'Select Datum, Tag, Sollstunden, '
      'SEC_TO_TIME((ArbeitszeitI + PausenI)*60) as Tagesbrutto,'
      'SEC_TO_TIME(ArbeitszeitI*60) as Tagesnetto,'
      'Mehrarbeit AS Mehrarbeit,'
      'SEC_TO_TIME(PausenI*60) as Pause, Fehltag, Feiertag, '
      
        'if(Buchungsart = -1,'#39#39', if(Buchungsart = 0 , '#39'B'#252'ro'#39','#39'Homeoffice'#39 +
        ')) as BA'
      'from manager_Buchungen')
    Left = 552
    Top = 336
  end
  object ds_Day: TDataSource
    DataSet = qry_Day
    Left = 640
    Top = 336
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = brmgr_MW
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Monatsbericht1'
      end
      item
        Visible = True
        ItemName = 'Monatsbericht2'
      end>
    UseOwnFont = False
    Left = 1320
    Top = 420
    PixelsPerInch = 96
  end
end
