unit PCM.Main;

interface

uses
  {$Region Uses}
  cxBarEditItem,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomCanvas,
  cxCustomPivotGrid,
  cxDBPivotGrid,
  cxEdit,
  cxGeometry,
  cxGraphics,
  cxGridChartView,
  cxGroupBox,
  cxLabel,
  cxLocalization,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxPC,
  cxPivotGridChartConnection,
  cxSplitter,
  cxVariants,
  DateUtils,
  dxBar,
  dxBarBuiltInMenu,
  dxBarExtItems,
  dxChartControl,
  dxChartCore,
  dxChartData,
  dxChartDBData,
  dxChartLegend,
  dxChartMarkers,
  dxChartSimpleDiagram,
  dxChartXYDiagram,
  dxChartXYSeriesAreaView,
  dxChartXYSeriesBarView,
  dxChartXYSeriesLineView,
  dxCoreClasses,
  dxCoreGraphics,
  dxCustomData,
  dxNavBar,
  dxNavBarBase,
  dxNavBarCollns,
  dxNavBarStyles,
  FireDAC.Phys.ADS,
  FireDAC.Phys.ADSDef,
  FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase,
  FireDAC.Stan.Param,
  inifiles,
  NTTranslator,
  shellapi,
  Strutils,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  SYSTEM.uitypes,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.Themes,
  Winapi.Messages,
  Winapi.Windows, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  dxUIAClasses, dxChartPalette, cxImageList;
  {$EndRegion Uses}
type
  {$Region Types}
  TdxBarControlAccess = class(TdxBarControl);
  TdxBarAccess = class(TdxBar);
  TdxBarManagerAccess = class(TdxBarManager);
  TMethod = procedure of object;
  TModuleType = (mtForm, mtEvent);
  TModule = class(TCollectionItem)
  protected
    FFormClass: TFormClass;
    FInstance: Pointer;
    FEvent: TMethod;
    FType: TModuleType;
    FRight: Integer;
    FModuleName: String;
    FImageIndex: Integer;
    procedure SetFormClass(Value: TFormClass);
    procedure SetEvent(Value: TMethod);
  public
    property FormClass: TFormClass read FFormClass write SetFormClass;
    property Instance: Pointer read FInstance write FInstance;
    property Event: TMethod read FEvent write SetEvent;
    property Typ: TModuleType read FType;
    property Right: Integer read FRight write FRight;
    property ModuleName: String read FModuleName write FModuleName;
    property ImageIndex: Integer read FImageIndex write FImageIndex;
  end;
  TIC_Options = record
    StundenProArbeitstag: Double;
    Jira_Basic_URL: String;
    AdressSelf, AdressGes: integer;
    EVENTS,TODO:String;
  end;

  Tfrm_PCM_Main = class(TForm)
    brstc_OpenModule: TdxBarStatic;
    brstc_User: TdxBarStatic;
    btn_CloseModul: TdxBarLargeButton;
    btn_Modulleiste: TdxBarLargeButton;
    btn_RefreshRights: TdxBarLargeButton;
    chartctrl_Adresses: TdxChartControl;
    chartctrl_AdressesChart: TdxChartSimpleDiagram;
    chartctrl_AdressesSeries: TdxChartSimpleSeries;
    chartctrl_Birthday: TdxChartControl;
    chartctrl_BirthdayChart: TdxChartSimpleDiagram;
    chartctrl_BirthdaySeries: TdxChartSimpleSeries;
    chartctrl_Cal: TdxChartControl;
    chartctrl_CalCategories: TdxChartControl;
    chartctrl_CalCategoriesChart: TdxChartSimpleDiagram;
    chartctrl_CalCategoriesSeries: TdxChartSimpleSeries;
    chartctrl_Calchart: TdxChartSimpleDiagram;
    chartctrl_CalSeries: TdxChartSimpleSeries;
    chartctrl_Contact: TdxChartControl;
    chartctrl_ContactChart: TdxChartSimpleDiagram;
    chartctrl_ContactSeries: TdxChartSimpleSeries;
    chartctrl_Finance: TdxChartControl;
    chartctrl_FinanceChart: TdxChartXYDiagram;
    chartctrl_FinanceSeries1: TdxChartXYSeries;
    chartctrl_FinanceSeries2: TdxChartXYSeries;
    chartctrl_PWDCategories: TdxChartControl;
    chartctrl_PWDCategoriesChart: TdxChartSimpleDiagram;
    chartctrl_PWDCategoriesSeries: TdxChartSimpleSeries;
    chartctrl_PWDSerials: TdxChartControl;
    chartctrl_PWDSerialsChart: TdxChartSimpleDiagram;
    chartctrl_PWDSerialsSeries: TdxChartSimpleSeries;
    chartctrl_SerialsCategories: TdxChartControl;
    chartctrl_SerialsCategoriesChart: TdxChartSimpleDiagram;
    chartctrl_SerialsCategoriesSeries: TdxChartSimpleSeries;
    chartctrl_ToDo: TdxChartControl;
    chartctrl_ToDoChart: TdxChartSimpleDiagram;
    chartctrl_ToDoSeries: TdxChartSimpleSeries;
    brmgr_Main: TdxBarManager;
    tb_Main: TdxBar;
    iAbmelden: TdxNavBarItem;
    iAufgaben: TdxNavBarItem;
    iAusgaben: TdxNavBarItem;
    iBeenden: TdxNavBarItem;
    iBelege: TdxNavBarItem;
    iBenutzerverwaltung: TdxNavBarItem;
    iDesign: TdxNavBarItem;
    iEinnahmen: TdxNavBarItem;
    iEMails: TdxNavBarItem;
    iGutscheine: TdxNavBarItem;
    iHandbuch: TdxNavBarItem;
    iInfo: TdxNavBarItem;
    iKalender: TdxNavBarItem;
    iKonfiguration: TdxNavBarItem;
    iKontakte: TdxNavBarItem;
    imglst_Icons: TImageList;
    iMonatsuebersicht: TdxNavBarItem;
    iPasswoerter: TdxNavBarItem;
    iSerials: TdxNavBarItem;
    iSprache: TdxNavBarItem;
    iStundenplan: TdxNavBarItem;
    iSysteminfo: TdxNavBarItem;
    lafCtrl_Main: TcxLookAndFeelController;
    lbl_AusFixDiff: TcxLabel;
    lbl_AusFixDiffSum: TcxLabel;
    lbl_AusFixIst: TcxLabel;
    lbl_AusFixIstSum: TcxLabel;
    lbl_AusFixSoll: TcxLabel;
    lbl_AusFixSollSum: TcxLabel;
    lbl_AusvarDiff: TcxLabel;
    lbl_AusvarDiffSum: TcxLabel;
    lbl_AusvarIst: TcxLabel;
    lbl_AusvarIstSum: TcxLabel;
    lbl_AusVarSoll: TcxLabel;
    lbl_AusVarSollSum: TcxLabel;
    lbl_DiffSum: TcxLabel;
    lbl_EinDiff: TcxLabel;
    lbl_EinDiffSum: TcxLabel;
    lbl_EinIst: TcxLabel;
    lbl_EinIstSum: TcxLabel;
    lbl_EinSoll: TcxLabel;
    lbl_EinSollSum: TcxLabel;
    lbl_IstSum: TcxLabel;
    lbl_SollSum: TcxLabel;
    loc_Lang: TcxLocalizer;
    navbr_main: TdxNavBar;
    navbrgrp_Finanzen: TdxNavBarGroup;
    navbrgrp_Info: TdxNavBarGroup;
    navbrgrp_Kalender: TdxNavBarGroup;
    navbrgrp_Kontake: TdxNavBarGroup;
    navbrgrp_Optionen: TdxNavBarGroup;
    navbrgrp_Passwort: TdxNavBarGroup;
    navbrgrp_Programm: TdxNavBarGroup;
    navbrit_ChangePW: TdxNavBarItem;
    navbrit_Verfuegung: TdxNavBarItem;
    navbrStyleIt_main: TdxNavBarStyleItem;
    pc_main: TcxPageControl;
    grpbx_Design: TcxGroupBox;
    ppm_Main: TPopupMenu;
    ppmbtn_Abmelden: TMenuItem;
    ppmbtn_Aufgaben: TMenuItem;
    ppmbtn_Ausgaben: TMenuItem;
    ppmbtn_Beenden: TMenuItem;
    ppmbtn_Benutzer: TMenuItem;
    ppmbtn_Contacts: TMenuItem;
    ppmbtn_Design: TMenuItem;
    ppmbtn_Einnahmen: TMenuItem;
    ppmbtn_Email: TMenuItem;
    ppmbtn_Handbuch: TMenuItem;
    ppmbtn_Info: TMenuItem;
    ppmbtn_kalender: TMenuItem;
    ppmbtn_Konfiguration: TMenuItem;
    ppmbtn_Monatsuebersicht: TMenuItem;
    ppmbtn_Passwoerter: TMenuItem;
    ppmbtn_Serials: TMenuItem;
    ppmbtn_Sprache: TMenuItem;
    ppmbtn_Stundenplan: TMenuItem;
    ppmbtn_Systeminfo: TMenuItem;
    ppmbtn_Trenn1: TMenuItem;
    ppmbtn_Trenn2: TMenuItem;
    ppmbtn_Trenn3: TMenuItem;
    ppmbtn_Trenn4: TMenuItem;
    ppmbtn_Trenn5: TMenuItem;
    ppmbtn_Trenn6: TMenuItem;
    trayic_Main: TTrayIcon;
    ts_Dashboard: TcxTabSheet;
    iZeiterfassung: TdxNavBarItem;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lagrp_Dashboard: TdxLayoutGroup;
    lagrp_Kontakte: TdxLayoutGroup;
    lagrp_AufgabenTermine: TdxLayoutGroup;
    lagrp_Passwords: TdxLayoutGroup;
    lagrp_Finance: TdxLayoutGroup;
    lagrp_Geburtsstage: TdxLayoutGroup;
    lagrp_KontakteKontakte: TdxLayoutGroup;
    lagrp_KontakteAdressen: TdxLayoutGroup;
    itm_Geburtstage: TdxLayoutItem;
    itm_KontakteKontakte: TdxLayoutItem;
    itm_KontakteAdressen: TdxLayoutItem;
    lagrp_Aufgaben: TdxLayoutGroup;
    lagrp_Kalenderkategorien: TdxLayoutGroup;
    lagrp_KalenderKalender: TdxLayoutGroup;
    itm_Aufgaben: TdxLayoutItem;
    itm_Kalenderkategorien: TdxLayoutItem;
    itm_KalenderKalender: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutLabeledItem3: TdxLayoutLabeledItem;
    dxLayoutLabeledItem4: TdxLayoutLabeledItem;
    dxLayoutLabeledItem5: TdxLayoutLabeledItem;
    dxLayoutLabeledItem6: TdxLayoutLabeledItem;
    splt_Geburtstage: TdxLayoutSplitterItem;
    splt_Kontakte: TdxLayoutSplitterItem;
    splt_Aufgaben: TdxLayoutSplitterItem;
    splt_Kalender: TdxLayoutSplitterItem;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutLabeledItem7: TdxLayoutLabeledItem;
    dxLayoutLabeledItem8: TdxLayoutLabeledItem;
    dxLayoutLabeledItem9: TdxLayoutLabeledItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutLabeledItem10: TdxLayoutLabeledItem;
    dxLayoutLabeledItem11: TdxLayoutLabeledItem;
    dxLayoutLabeledItem12: TdxLayoutLabeledItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutSeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutSplitterItem3: TdxLayoutSplitterItem;
    dxLayoutSeparatorItem4: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem5: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem6: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem7: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem8: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem9: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem10: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem11: TdxLayoutSeparatorItem;
    dxLayoutSeparatorItem12: TdxLayoutSeparatorItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    ppmbtn_Belege: TMenuItem;
    ppmbtn_Gutscheine: TMenuItem;
    cxImageList1: TcxImageList;
    procedure btn_CloseModulClick(Sender: TObject);
    procedure btn_ModulleisteClick(Sender: TObject);
    procedure btn_RefreshRightsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure iSpracheClick(Sender: TObject);
    procedure NavBarClick(Sender: TObject);
    procedure pc_mainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure ppmbtn_AbmeldenClick(Sender: TObject);
    procedure ppmbtn_AufgabenClick(Sender: TObject);
    procedure ppmbtn_AusgabenClick(Sender: TObject);
    procedure ppmbtn_BeendenClick(Sender: TObject);
    procedure ppmbtn_BenutzerClick(Sender: TObject);
    procedure ppmbtn_ContactsClick(Sender: TObject);
    procedure ppmbtn_DesignClick(Sender: TObject);
    procedure ppmbtn_EinnahmenClick(Sender: TObject);
    procedure ppmbtn_EmailClick(Sender: TObject);
    procedure ppmbtn_HandbuchClick(Sender: TObject);
    procedure ppmbtn_InfoClick(Sender: TObject);
    procedure ppmbtn_kalenderClick(Sender: TObject);
    procedure ppmbtn_KonfigurationClick(Sender: TObject);
    procedure ppmbtn_MonatsuebersichtClick(Sender: TObject);
    procedure ppmbtn_PasswoerterClick(Sender: TObject);
    procedure ppmbtn_SerialsClick(Sender: TObject);
    procedure ppmbtn_SpracheClick(Sender: TObject);
    procedure ppmbtn_StundenplanClick(Sender: TObject);
    procedure ppmbtn_SysteminfoClick(Sender: TObject);
    procedure ppmbtn_GutscheineClick(Sender: TObject);
    procedure ppmbtn_BelegeClick(Sender: TObject);
  private
    { Private-Deklarationen }

  public
    { Public-Deklarationen }
    FOptions: TIC_Options;
    bAbmelden: Boolean;
    Modules: TCollection;
    procedure LoadData;
    procedure CloseModules;
    procedure Abmelden;
    function CurrentModule: TForm;
    procedure RegisterNavBarItems;
  end;
  {$EndRegion Types}
var
  {$Region var}
  frm_PCM_Main: Tfrm_PCM_Main;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Benutzerverwaltung,
  PCM.Data,
  PCM.Design,
  PCM.Functions,
  PCM.Functions.Appinfo,
  PCM.Functions.ChangePW,
  PCM.Functions.Languages,
  PCM.Functions.Login,
  PCM.Functions.Synch.Wait,
  PCM.Handbuch,
  PCM.Helper,
  PCM.SQL,
  PCM.Manager.Strings,
  PCMManager.Modul.B_Config,
  PCMManager.Modul.C_Contacts,
  PCMManager.Modul.D_Aufgaben,
  PCMManager.Modul.D_Calendar,
  PCMManager.Modul.D_Stundenplan,
  PCMManager.Modul.E_Mail,
  PCMManager.Modul.F_Passwort,
  PCMManager.Modul.G_Finanzen,
  PCM.splash;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_PCM_Main.CurrentModule: TForm;
begin
  if pc_Main.ControlCount > 0 then
    Result := TForm(pc_Main.ActivePage.Controls[0])
  else
    Result := nil;
end;
procedure TModule.SetFormClass(Value: TFormClass);
begin
  if Value <> FFormClass then
  begin
    FFormClass := Value;
    FType := mtForm;
  end;
end;
procedure TModule.SetEvent(Value: TMethod);
begin
  if @Value <> @FEvent then
  begin
    FEvent := Value;
    FType := mtEvent;
  end;
end;
procedure Tfrm_PCM_Main.Abmelden;
begin
  bAbmelden := True;
  dm_PCM.bLogin := false;
  dm_PCM.bStyle:= false;
  Hide;
  Show;
end;
procedure Tfrm_PCM_Main.CloseModules;
var
  iPage: Integer;
begin
  for iPage := pc_Main.PageCount - 1 downto 1 do
  begin
    try
      TForm(pc_Main.Pages[iPage].Controls[0]).Close;
      TForm(pc_Main.Pages[iPage].Controls[0]).Free;
    except
    end;
    pc_Main.Pages[iPage].Free;
  end;
end;
procedure Tfrm_PCM_Main.LoadData;
  procedure GetUserName;
  begin
    dm_PCM.qry_Work.SQL.Text:= 'Select Benutzer from Benutzer Where ID = :ID';
    dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_Work.Open;
    brstc_User.Caption:= dm_PCM.qry_Work.FieldByName('Benutzer').AsString;

    dm_PCM.qry_Work.Close;
  end;
  procedure UpdateCalEvents;
  var
    iAnzahl: integer;
  begin
    dm_PCM.qry_Work.SQL.Text:=  'UPDATE manager_kalender ' +
                                'SET START = TIMESTAMPADD(Year, Year(NOW()) - Year(START) , START), ' +
                                'Finish = TIMESTAMPADD(Year, Year(NOW()) - Year(Finish) , Finish), ' +
                                'Reminderdate  = TIMESTAMPADD(Year, Year(NOW()) - Year(Reminderdate) , Reminderdate) ' +
                                'WHERE Kalendername = ''Geburtstag''';
    dm_PCM.qry_Work.ExecSQL;
    dm_PCM.qry_Work.SQL.Text:=  'UPDATE manager_kalender ' +
                                'SET START = TIMESTAMPADD(Year, Year(NOW()) - Year(START)+1 , START), ' +
                                'Finish = TIMESTAMPADD(Year, Year(NOW()) - Year(Finish)+1 , Finish), ' +
                                'Reminderdate  = TIMESTAMPADD(Year, Year(NOW()) - Year(Reminderdate) , Reminderdate) ' +
                                 'WHERE Date(start) < Date(Now()) and Kalendername = ''Geburtstag''';
    dm_PCM.qry_Work.ExecSQL;
    dm_PCM.qry_Work.SQL.Text:=  'UPDATE manager_kalender ' +
                                'SET Bearbeitetam = Now() ' +
                                'WHERE Date(start) < Date(Now()) and (Kalendername = ''Müll'' or Kalendername like ''Feiertage %'')' ;
    dm_PCM.qry_Work.ExecSQL;
    dm_PCM.qry_Work.sql.text:= 'Select Count(*) as Anzahl From manager_kalender_optionen where ID_Benutzer = :ID_Benutzer';
    dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_Work.Open;
    iAnzahl:= dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
    dm_PCM.qry_Work.Close;

    if iAnzahl = 0 then
    begin
      dm_PCM.qry_Work.sql.text:=  'Insert into manager_kalender_optionen (StundenProArbeitstag, Standard_Faelligkeit_Aufgaben_In_Tagen,ID_benutzer) Values ' +
                                  '(8,3,:ID_Benutzer)';
      dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_Work.Execsql;
    end;
  end;
  procedure GetCalOptions;
  begin
    dm_PCM.qry_Work.sql.text:= 'Select StundenProArbeitstag, Jira_Basic_URL,Adresse_Eigene,Adresse_Firma,Account_Privat,Account_Geschaeftlich From manager_kalender_optionen';
    dm_PCM.qry_Work.Open;
    FOptions.StundenProArbeitstag := dm_PCM.qry_Work.FieldByName('StundenProArbeitstag').AsFloat;
    FOptions.Jira_Basic_URL := dm_PCM.qry_Work.FieldByName('Jira_Basic_URL').AsString;
    FOptions.AdressSelf := dm_PCM.qry_Work.FieldByName('Adresse_Eigene').asInteger;
    FOptions.AdressGes := dm_PCM.qry_Work.FieldByName('Adresse_Firma').asInteger;
    FOptions.EVENTS :=dm_PCM.qry_Work.FieldByName('Account_Privat').asString;
    FOptions.TODO :=dm_PCM.qry_Work.FieldByName('Account_Geschaeftlich').asString;
    dm_PCM.qry_Work.Close;
  end;
  procedure SetCharts;
  var
    iZaehler: integer;
    dEinnahmeSoll, dEinnahmeIst: Double;
    dKostenVarSoll, dKostenVarIst: Double;
    dKostenFixSoll, dKostenFixIst: Double;
    ADataBinding :TdxChartSimpleSeriesDBDataBinding;
    ADataBinding1 :TdxChartXYSeriesDBDataBinding;
  begin

    ADataBinding := chartctrl_BirthdaySeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
    ADataBinding.DataSource := dm_PCM.ds_ChartGeburtstage;
    ADataBinding := chartctrl_ContactSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
    ADataBinding.DataSource := dm_PCM.ds_ChartKontaktart;
    ADataBinding := chartctrl_AdressesSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
    ADataBinding.DataSource := dm_PCM.ds_ChartAdressen;

    ADataBinding := chartctrl_ToDoSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
    ADataBinding.DataSource := dm_PCM.ds_ChartAufgabe;
    ADataBinding := chartctrl_CalSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
    ADataBinding.DataSource := dm_PCM.ds_ChartKalender;
    ADataBinding := chartctrl_CalCategoriesSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
    ADataBinding.DataSource := dm_PCM.ds_ChartKategorie;

    ADataBinding := chartctrl_PWDSerialsSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
    ADataBinding.DataSource := dm_PCM.ds_ChartPWDSerials;
    ADataBinding := chartctrl_PWDCategoriesSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
    ADataBinding.DataSource := dm_PCM.ds_ChartPWD_Kategorie;
    ADataBinding := chartctrl_SerialsCategoriesSeries.DataBinding as TdxChartSimpleSeriesDBDataBinding;
    ADataBinding.DataSource := dm_PCM.ds_ChartSerialKategorie;

    ADataBinding1 := chartctrl_FinanceSeries1.DataBinding as TdxChartXYSeriesDBDataBinding;
    ADataBinding1.DataSource := dm_PCM.ds_ChartFinance;
    ADataBinding1 := chartctrl_FinanceSeries2.DataBinding as TdxChartXYSeriesDBDataBinding;
    ADataBinding1.DataSource := dm_PCM.ds_ChartFinance;

    dEinnahmeSoll:=0;
    dEinnahmeIst:=0;
    dKostenVarSoll:=0;
    dKostenVarIst:=0;
    dKostenFixSoll:=0;
    dKostenFixIst:=0;
    if dm_PCM.qry_ChartGeburtstage.Active then
    begin
      dm_PCM.qry_ChartGeburtstage.Refresh;
    end
    else begin
      dm_PCM.qry_ChartGeburtstage.Open;
      dm_PCM.qry_ChartGeburtstage.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      dm_PCM.qry_ChartGeburtstage.Filtered:= true;
    end;

    if dm_PCM.qry_ChartKontaktart.Active then
    begin
      dm_PCM.qry_ChartKontaktart.Refresh;
    end
    else begin
      dm_PCM.qry_ChartKontaktart.Open;
      dm_PCM.qry_ChartKontaktart.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      dm_PCM.qry_ChartKontaktart.Filtered:= true;
    end;

    if dm_PCM.qry_ChartAdressen.Active then
    begin
      dm_PCM.qry_ChartAdressen.Refresh;
    end
    else begin
      dm_PCM.qry_ChartAdressen.Open;
      dm_PCM.qry_ChartAdressen.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      dm_PCM.qry_ChartAdressen.Filtered:= true;
    end;

    if dm_PCM.qry_ChartKalender.Active then
    begin
      dm_PCM.qry_ChartKalender.Refresh;
    end
    else begin
      dm_PCM.qry_ChartKalender.Open;
      dm_PCM.qry_ChartKalender.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      dm_PCM.qry_ChartKalender.Filtered:= true;
    end;

    if dm_PCM.qry_ChartKategorie.Active then
    begin
      dm_PCM.qry_ChartKategorie.Refresh;
    end
    else begin
      dm_PCM.qry_ChartKategorie.open;
    end;

    if dm_PCM.qry_ChartAufgabe.Active  then
    begin
      dm_PCM.qry_ChartAufgabe.Refresh;
    end
    else begin
      dm_PCM.qry_ChartAufgabe.open;
      dm_PCM.qry_ChartAufgabe.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      dm_PCM.qry_ChartAufgabe.Filtered:= true;
    end;

    if dm_PCM.qry_ChartFinance.Active then
    begin
      dm_PCM.qry_ChartFinance.Refresh;
    end
    else begin
      dm_PCM.qry_ChartFinance.Open;
      dm_PCM.qry_ChartFinance.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      dm_PCM.qry_ChartFinance.Filtered:= true;
    end;

    if dm_PCM.qry_ChartPWDSerials.Active then
    begin
      dm_PCM.qry_ChartPWDSerials.Refresh;
    end
    else begin
      dm_PCM.qry_ChartPWDSerials.Open;
      dm_PCM.qry_ChartPWDSerials.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      dm_PCM.qry_ChartPWDSerials.Filtered:= true;
    end;

    if dm_PCM.qry_ChartPWD_Kategorie.Active  then
    begin
      dm_PCM.qry_ChartPWD_Kategorie.Refresh;
    end
    else begin
      dm_PCM.qry_ChartPWD_Kategorie.Open;
      dm_PCM.qry_ChartPWD_Kategorie.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      dm_PCM.qry_ChartPWD_Kategorie.Filtered:= true;
    end;

    if dm_PCM.qry_ChartSerialKategorie.Active then
    begin
      dm_PCM.qry_ChartSerialKategorie.Refresh;
    end
    else begin
      dm_PCM.qry_ChartSerialKategorie.Open;
      dm_PCM.qry_ChartSerialKategorie.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      dm_PCM.qry_ChartSerialKategorie.Filtered:= true;
    end;

    if dm_PCM.qry_ChartFinance.Active then
    begin
      dm_PCM.qry_ChartFinance.Refresh;
    end
    else begin
      dm_PCM.qry_ChartFinance.Open;
    end;

    dm_PCM.qry_ChartFinance.First;
    iZaehler:= 0;
    while not dm_PCM.qry_ChartFinance.eof do
    begin
      iZaehler:= iZaehler + 1;
      case iZaehler of
      1:
        begin
         dEinnahmeSoll:= dm_PCM.qry_ChartFinance.FieldByName('Soll').Asfloat;
         dEinnahmeIst:= dm_PCM.qry_ChartFinance.FieldByName('Ist').Asfloat;
        end;
      2:
        begin
          dKostenFixSoll:= dm_PCM.qry_ChartFinance.FieldByName('Soll').Asfloat;
          dKostenFixIst:= dm_PCM.qry_ChartFinance.FieldByName('Ist').Asfloat;
        end;
      3:
        begin
          dKostenVarSoll:= dm_PCM.qry_ChartFinance.FieldByName('Soll').Asfloat;
          dKostenVarIst:= dm_PCM.qry_ChartFinance.FieldByName('Ist').Asfloat;
        end;
      end;
      dm_PCM.qry_ChartFinance.Next;
    end;
    // SOLL
    lbl_EinSoll.caption:= Format('%.2f €',[dEinnahmeSoll]);
    lbl_EinIst.caption:= Format('%.2f €',[dEinnahmeIst]);
    lbl_EinDiff.caption:= Format('%.2f €',[dEinnahmeSoll-dEinnahmeIst]);
    // FIXKOSTEN
    lbl_AusFixSoll.caption:= Format('%.2f €',[dKostenFixSoll]);
    lbl_AusFixIst.caption:= Format('%.2f €',[dKostenFixIst]);
    lbl_AusFixDiff.caption:= Format('%.2f €',[dKostenFixSoll-dKostenFixIst]);
    // varKosten
    lbl_AusVarSoll.caption:= Format('%.2f €',[dKostenvarSoll]);
    lbl_AusvarIst.caption:= Format('%.2f €',[dKostenVarIst]);
    lbl_AusvarDiff.caption:= Format('%.2f €',[dKostenvarSoll-dKostenVarIst]);

    //Summen Soll
    lbl_EinSollSum.caption:= Format('%.2f €',[dEinnahmeSoll]);
    lbl_EinIstSum.caption:= Format('%.2f €',[dEinnahmeIst]);
    lbl_EinDiffSum.caption:= Format('%.2f €',[dEinnahmeSoll-dEinnahmeIst]);
    //Summen Fixkosten
    lbl_AusFixSollSum.caption:= Format('%.2f €',[dKostenFixSoll]);
    lbl_AusFixIstSum.caption:= Format('%.2f €',[dKostenFixIst]);
    lbl_AusFixDiffSum.caption:= Format('%.2f €',[dKostenFixSoll-dKostenFixIst]);
    // varKosten
    lbl_AusVarSollSum.caption:= Format('%.2f €',[dKostenvarSoll]);
    lbl_AusvarIstSum.caption:= Format('%.2f €',[dKostenVarIst]);
    lbl_AusvarDiffSum.caption:= Format('%.2f €',[dKostenvarSoll-dKostenVarIst]);
    //SUMME
    lbl_SollSum.caption:= Format('%.2f €',[dEinnahmeSoll - dKostenFixSoll - dKostenvarSoll]);
    lbl_IstSum.caption:= Format('%.2f €',[dEinnahmeist - dKostenFixIst - dKostenvarIst]);
    lbl_DiffSUm.caption:= Format('%.2f €',[(dEinnahmeSoll - dEinnahmeist) - (dKostenFixSoll - dKostenFixIst) -  (dKostenvarSoll - dKostenvarIst)]);
    dm_PCM.qry_Kalender_Aufgaben.Filter:= '';
    dm_PCM.qry_work.sql.text:= 'Select COUNT(*) AS AufgabenTermine , ('+
                               'Select COUNT(*) From manager_kalender Where gelesenam is null and bearbeitetam is NULL AND Typ IN (0) and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM) +' ) AS Nachrichten ' +
                                'From manager_Kalender ' +
                                'Where ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM) +' and  gelesenam is null and bearbeitetam is NULL AND Typ IN (1,2)';
    dm_PCM.qry_work.open;
    trayIC_Main.Hint:= PCM_Programmname + slinebreak + slinebreak +
    dm_PCM.qry_work.Fieldbyname('AufgabenTermine').asString + ' ungelesene Aufgaben und Termine' + slinebreak +
    dm_PCM.qry_work.Fieldbyname('Nachrichten').asString + ' ungelesene Nachrichten';
    dm_PCM.qry_work.close;
  end;
begin
  GetUserName;
  UpdateCalEvents;
  GetCalOptions;
  SetCharts;
end;
procedure Tfrm_PCM_Main.RegisterNavBarItems;
  procedure RegisterForm(SideBarItemName: string; FormClass: TFormClass; Instance: Pointer; Right: Integer);
  var
    NewModule: TModule;
    Item: TdxNavBarItem;
  begin
    Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(SideBarItemName).index];
    if Assigned(Item) then
    begin
      NewModule := TModule(Modules.Add);
      Item.Tag := NewModule.ID;
      NewModule.FormClass := FormClass;
      NewModule.Instance := Instance;
      NewModule.Right := Right;
      NewModule.ModuleName := SideBarItemName;
      NewModule.ImageIndex := Item.SmallImageIndex;
    end;
  end;
  procedure RegisterEvent(SideBarItemName: string; Event: TMethod);
  var
    NewModule: TModule;
    Item: TdxNavBarItem;
  begin
    Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(SideBarItemName).index];
    if Assigned(Item) then
    begin
      NewModule := TModule(Modules.Add);
      Item.Tag := NewModule.ID;
      NewModule.Event := Event;
      NewModule.ModuleName := SideBarItemName;
    end
  end;
begin
  Modules.Clear;
  RegisterForm('iBenutzerverwaltung', Tfrm_PCM_User, @frm_PCM_User, 1);
  RegisterForm('iKonfiguration', Tfrm_config, @frm_config, 1);
  RegisterForm('iDesign', Tfrm_PCM_Design, @frm_PCM_Design, 1);
  RegisterForm('iKontakte',Tfrm_Contact, @frm_Contact, 1);
  RegisterForm('iKalender',Tfrm_Calendar, @frm_Calendar, 1);
  RegisterForm('iAufgaben',Tfrm_Aufgaben, @frm_Aufgaben, 1);
  RegisterForm('iStundenplan',Tfrm_Stundenplan, @frm_Stundenplan, 1);
  RegisterForm('iEMails',Tfrm_mail, @frm_mail, 1);
  RegisterForm('iPasswoerter',Tfrm_password, @frm_password, 1);
  RegisterForm('iSerials',Tfrm_password, @frm_password, 1);
  RegisterForm('iMonatsuebersicht',Tfrm_finanzen, @frm_finanzen, 1);
  RegisterForm('iEinnahmen',Tfrm_finanzen, @frm_finanzen, 1);
  RegisterForm('iAusgaben',Tfrm_finanzen, @frm_finanzen, 1);
  RegisterForm('iBelege',Tfrm_finanzen, @frm_finanzen, 1);
  RegisterForm('iGutscheine',Tfrm_finanzen, @frm_finanzen, 1);
  RegisterForm('iSysteminfo',Tfrm_PCM_System, @frm_PCM_System, 1);
  RegisterForm('iInfo',Tfrm_PCM_InfoApp, @frm_PCM_InfoApp, 1);
  RegisterForm('iHandbuch',Tfrm_PCM_Handbuch, @frm_PCM_Handbuch, 1);
  RegisterEvent('iAbmelden', Abmelden);
  RegisterEvent('iBeenden', Close);
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Toolbar                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Toolbar}
procedure Tfrm_PCM_Main.btn_CloseModulClick(Sender: TObject);
begin
  if pc_Main.PageCount > 1 then
  begin
    if pc_Main.PageCount = 2 then
      brstc_OpenModule.Caption := 'Dashboard';
    if pc_Main.ActivePage <> ts_Dashboard  then
    begin
      TForm(pc_Main.ActivePage.Controls[0]).Close;
      TForm(pc_Main.ActivePage.Controls[0]).Free;
      pc_Main.ActivePage.Free;
    end;
  end;
end;
procedure Tfrm_PCM_Main.btn_ModulleisteClick(Sender: TObject);
begin
  navbr_main.Visible := not navbr_main.Visible;
  if navbr_main.Visible then
    btn_Modulleiste.Caption := rs_PCM_Modulliste_verstecken
  else
    btn_Modulleiste.Caption := rs_PCM_Modulliste_anzeigen;
end;
procedure Tfrm_PCM_Main.btn_RefreshRightsClick(Sender: TObject);
var
  Item: TdxNavBarItem;
  Module: TModule;
begin
  btn_RefreshRights.Enabled := False;
  try
    if pc_Main.PageCount > 1 then
    begin
      Module := TModule(Modules.FindItemID(pc_Main.ActivePage.Tag));
      if Module.Typ = mtForm then
      begin
        Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(Module.ModuleName).index];
        TForm(pc_Main.ActivePage.Controls[0]).Close;
        TForm(pc_Main.ActivePage.Controls[0]).Free;
        pc_Main.ActivePage.Free;
        NavBarClick(Item);
      end;
    end;
  finally
    btn_RefreshRights.Enabled := True;
  end;
end;
procedure Tfrm_PCM_Main.pc_mainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  brstc_OpenModule.Caption := NewPage.Caption;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Navbarfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Navbarfunktionen}
procedure Tfrm_PCM_Main.iSpracheClick(Sender: TObject);
var
  ifINI: TIniFile;
begin
  Application.CreateForm(Tfrm_PCM_Language,frm_PCM_Language);
  frm_PCM_Language.Position:= poScreenCenter;
  frm_PCM_Language.ShowModal;
  ifINI := TIniFile.Create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  try
    ifINI.WriteString(PCM_Logname, 'Language', dm_PCm.sLocale);
  finally
    ifINI.Free;
  end;
end;
procedure Tfrm_PCM_Main.NavBarClick(Sender: TObject);
var
  Module: TModule;
  fTabForm: TForm;
  iPageIndex: Integer;

  function TabExist(sTabName: String): Integer;
  var
    iCount: Integer;
  begin
    Result := -1;
    for iCount := 0 to pc_Main.PageCount -1 do
    begin
      if pc_Main.Pages[iCount].Name = sTabName then
      begin
        Result := iCount;
        Break;
      end;
    end;
  end;

  function CreateNewTabSheet(sTabName: String): Integer;
  var
    tshNew: TcxTabSheet;
  begin
    tshNew := TcxTabSheet.Create(pc_Main);
    tshNew.PageControl := pc_Main;
    tshNew.Name := sTabName;
    pc_Main.ActivePage := tshNew;
    Result := pc_Main.ActivePageIndex;
  end;
var
  sModul,sModulCaption: String;
begin
  if navbr_main.Enabled then
  begin
    navbr_main.Enabled := False;
    TRY
      Module := TModule(Modules.FindItemID((Sender AS TdxNavBarItem).Tag));
      if Assigned(Module) then
      begin
        sModul:= Module.ModuleName;
        sModulCaption:= Module.ModuleName;
        case AnsiIndexStr(sModul, ['iBenutzerverwaltung','iKonfiguration','iDesign','iKontakte','iKalender','iAufgaben','iStundenplan','iEMails','iPasswoerter','iSerials','iMonatsuebersicht','iEinnahmen','iAusgaben','iSysteminfo','iInfo','iHandbuch','iJira','iBelege','iGutscheine']) of
        0:
          begin
            sModulCaption := 'i'  + rs_PCM_Benutzerverwaltung;
            dm_PCM.iModulTab:= 1;
          end;
        1:
          begin
            sModulCaption := 'i'  + rs_PCM_Konfiguration ;
            dm_PCM.iModulTab:= 1;
          end;
        2:
          begin
            sModulCaption := 'i'  + rs_PCM_Design;
            dm_PCM.iModulTab:= 1;
          end;
        3:
          begin
            sModulCaption := 'i'  + rs_PCMManager_Kontakt;
            dm_PCM.iModulTab:= 1;
          end;
        4:
          begin
            sModulCaption := 'i' + rs_PCM_Kalender;
            dm_PCM.iModulTab:= 1;
          end;
        5:
          begin
            sModulCaption := 'i' + rs_PCMManager_Aufgaben1;
            dm_PCM.iModulTab:= 1;
          end;
        6:
          begin

            sModulCaption := 'i' + rs_PCMManager_Stundenplan;
            dm_PCM.iModulTab:= 1;
          end;
        7:
          begin
            sModul:= 'Email';
            sModulCaption := 'i'  + rs_PCMManager_EMails;
          end;
        8:
          begin
            sModul:= 'Passwort_Serials';
            sModulCaption := 'i'  + rs_PCMManager_Passwoerter_Serialkeys;
            dm_PCM.iModulTab:= 1;
          end;
        9:
          begin
            sModul:= 'Passwort_Serials';
            sModulCaption := 'i'  + rs_PCMManager_Passwoerter_Serialkeys;
            dm_PCM.iModulTab:= 2;
          end;
        10:
          begin
            sModul:= 'Finanzen';
            sModulCaption := 'i'  + rs_PCMManager_Finanzuebersicht;
            dm_PCM.iModulTab:= 1;
          end;
        11:
          begin
            sModul:= 'Finanzen';
            sModulCaption := 'i'  + rs_PCMManager_Finanzuebersicht;
            dm_PCM.iModulTab:= 2;
          end;
        12:
          begin
            sModul:= 'Finanzen';
            sModulCaption := 'i'  + rs_PCMManager_Finanzuebersicht;
            dm_PCM.iModulTab:= 3;
          end;
        13:
          begin
            sModulCaption := 'i'  + rs_PCM_Systeminformation;
            dm_PCM.iModulTab:= 3;
          end;
        14:
          begin
            sModulCaption := 'i'  + rs_PCM_Programminfo;
            dm_PCM.iModulTab:= 3;
          end;
        15:
          begin
            sModulCaption := 'i'  + rs_PCM_Handbuch;
            dm_PCM.iModulTab:= 3;
          end;
        16:
          begin
            sModul:= 'Kalender_AuKalender_Aufgaben_Jira_Stundenplanfgaben_Stundenplan';
            sModulCaption := 'i'  + rs_PCMManager_KalenderStundenplan;
            dm_PCM.iModulTab:= 3;
          end;
        17:
          begin
            sModul:= 'Finanzen';
            sModulCaption := 'i'  + rs_PCMManager_Finanzuebersicht;
            dm_PCM.iModulTab:= 5;
          end;

        18:
          begin
            sModul:= 'Finanzen';
            sModulCaption := 'i'  + rs_PCMManager_Finanzuebersicht;
            dm_PCM.iModulTab:= 6;
          end;
        end;
        iPageIndex := TabExist('tsh' + sModul);
        if iPageIndex > -1 then
        begin
          pc_Main.ActivePageIndex := iPageIndex;
          fTabForm := CurrentModule;
          if fTabForm <> nil then
            if not fTabForm.Focused then
              if Assigned(fTabForm.OnActivate) then
              begin
                fTabForm.OnActivate(Sender);
                brstc_OpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
              end;
          Exit;
        end;
        if Module.Typ = mtForm then
        begin
          Screen.Cursor := crHourglass;
          try
            ShowWaitForm(TForm(Self), PWideChar(rs_Function_Wait_FormCaption), 1,417, 65);
            Application.ProcessMessages;
            WaitFormStep;
            TForm(Module.Instance^) := Module.FormClass.Create(Nil);
          finally
            Screen.Cursor := crDefault;
          end;
          fTabForm := TForm((Module.Instance)^);
          iPageIndex := CreateNewTabSheet('tsh' + sModul);
          fTabForm.Parent := pc_Main.Pages[iPageIndex];
          pc_Main.Pages[iPageIndex].Caption := Copy(sModulCaption, 2, Length(sModulCaption));
          pc_Main.Pages[iPageIndex].Tag := (Sender AS TdxNavBarItem).Tag;
          pc_Main.Pages[iPageIndex].ImageIndex := Module.ImageIndex;
          pc_Main.Pages[iPageIndex].InsertComponent(fTabForm);
          fTabForm.BorderStyle := bsNone;
          fTabForm.ALign:= AlClient;
          fTabForm.Enabled := True;
          fTabForm.Show;
          CloseWaitform;
          fTabForm.BringToFront;
          brstc_OpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
        end
        else
          if Module.Typ = mtEvent then
          begin
            Module.Event;
          end;
      end
    FINALLY
      navbr_main.Enabled := True;
      Application.ProcessMessages;
    END;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktionen}
procedure Tfrm_PCM_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseModules;
  WriteLog(PCM_Logname,rs_PCM_Beenden,0);
end;
procedure Tfrm_PCM_Main.FormCreate(Sender: TObject);
begin
  Modules := TCollection.Create(TModule);
end;
procedure Tfrm_PCM_Main.FormDestroy(Sender: TObject);
begin
  Modules.Free;
end;
procedure Tfrm_PCM_Main.FormHide(Sender: TObject);
begin
  CloseModules;
end;
procedure Tfrm_PCM_Main.FormKeyPress(Sender: TObject; var Key: Char);
var
  m: TForm;
begin
  m := CurrentModule;
  if m <> nil then
    if not m.Focused then
      if Assigned(m.OnKeyPress) then
        m.OnKeyPress(Sender, Key);
end;
procedure Tfrm_PCM_Main.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  m: TForm;
begin
  m := CurrentModule;
  if m <> nil then
    if not m.Focused then
      if Assigned(m.OnKeyUp) then
        m.OnKeyUp(Sender, Key, Shift);
end;
procedure Tfrm_PCM_Main.FormResize(Sender: TObject);
  procedure BarResize;
  var
    rRect: TRect;
    iTemp, iUsedSpace: Integer;
    BarControl: TdxBarControlAccess;
  begin
    if (brmgr_Main.Bars[0] <> nil) and (brmgr_Main.Bars[0].Control <> nil) then
    begin
      BarControl := TdxBarControlAccess(brmgr_Main.Bars[0].Control);

      iUsedSpace := 0;

      brstc_OpenModule.Width := 0;

      for iTemp := 0 to BarControl.Bar.ItemLinks.Count - 1 do
      begin
        if BarControl.Bar.ItemLinks.Items[iTemp].Item = btn_Modulleiste then
        begin
          Inc(iUsedSpace, 0);
        end
        else
        begin
          if BarControl.Bar.ItemLinks.Items[iTemp].Item <> brstc_OpenModule then
          begin
            Inc(iUsedSpace, BarControl.Bar.ItemLinks.Items[iTemp].ItemRect.Width);
          end;
        end;
      end;

      if BarControl.MarkExists then
      begin
        rRect := BarControl.MarkRect;
        Inc(iUsedSpace, rRect.Right - rRect.Left);
      end;
       brmgr_Main.BeginUpdate;
      Try
        brstc_OpenModule.Width := (brmgr_Main.Bars[0].Control as TdxBarControl).Width -  iUsedSpace - btn_Modulleiste.Width  - 45;
      Finally
        brmgr_Main.EndUpdate();
      End;
    end;
  end;
begin
//  pnl_CalToDOTop.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
//  pnl_CalToDOmiddle.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
//  pnl_CalToDOright.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
//  pnl_CalToDOmiddle.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
//  pnl_CalToDORight.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
//
//  pnl_ContactTop.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
//  pnl_Contactmiddle.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
//  pnl_Contactright.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
//  pnl_Contactmiddle.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
//  pnl_ContactRight.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
//
//  pnl_PWDSerialTop.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
//  pnl_PWDSerialmiddle.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
//  pnl_PWDSerialright.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
//  pnl_PWDSerialmiddle.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
//  pnl_PWDSerialright.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
//
//  grpbx_FinanzenUebersicht_Left.width:= Trunc((grpbx_FinanzenUebersicht.width - 8) / 3);
//  grpbx_FinanzenUebersicht_middle.width:= Trunc((grpbx_FinanzenUebersicht.width - 8) / 3);
//  grpbx_FinanzenUebersicht_Right.width:= Trunc((grpbx_FinanzenUebersicht.width - 8) / 3);
  BarResize;
end;
procedure Tfrm_PCM_Main.FormShow(Sender: TObject);
begin
  lafCtrl_Main.NativeStyle:= false;
  trayIC_Main.Hint:= PCM_Programmname;
  dm_PCM.iDBType:= 0;
  if not ReadServerAdress then
  begin
    Application.Terminate;
  end
  else begin
  	lafCtrl_Main.SkinName:= dm_PCM.sDesign;
    SplashScreen := TSplashScreen.Create(nil);
    SplashScreen.Update;
    SplashScreen.Execute(dm_PCM.bStyle);
    if dm_PCM.bStyle then
    begin
      NavBarClick(iDesign);
    end
    else begin
      WriteLog(PCM_Logname,rs_PCM_Start,0);
    end;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Traymenü                                                                   //
////////////////////////////////////////////////////////////////////////////////
{$Region Traymenü}
procedure Tfrm_PCM_Main.ppmbtn_BenutzerClick(Sender: TObject);
begin
  navbarclick(iBenutzerverwaltung);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_KonfigurationClick(Sender: TObject);
begin
  NavBarClick(iKonfiguration);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_ContactsClick(Sender: TObject);
begin
  navbarclick(ikontakte);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_DesignClick(Sender: TObject);
begin
  NavBarClick(iDesign);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_kalenderClick(Sender: TObject);
begin
  navbarclick(iKalender);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_AufgabenClick(Sender: TObject);
begin
  navbarclick(iAufgaben);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_StundenplanClick(Sender: TObject);
begin
  navbarclick(iStundenplan);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_EmailClick(Sender: TObject);
begin
  navbarclick(iEMails);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_GutscheineClick(Sender: TObject);
begin
  navbarclick(iGutscheine);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_PasswoerterClick(Sender: TObject);
begin
  navbarclick(iPasswoerter);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_SerialsClick(Sender: TObject);
begin
  navbarclick(iSerials);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_MonatsuebersichtClick(Sender: TObject);
begin
  navbarclick(iMonatsuebersicht);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_EinnahmenClick(Sender: TObject);
begin
  navbarclick(iEinnahmen);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_AusgabenClick(Sender: TObject);
begin
  navbarclick(iAusgaben);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_SysteminfoClick(Sender: TObject);
begin
  navbarclick(iSysteminfo);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_InfoClick(Sender: TObject);
begin
  navbarclick(iInfo);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_HandbuchClick(Sender: TObject);
begin
  navbarclick(iHandbuch);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_SpracheClick(Sender: TObject);
begin
  iSpracheClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_AbmeldenClick(Sender: TObject);
begin
  Abmelden
end;
procedure Tfrm_PCM_Main.ppmbtn_BeendenClick(Sender: TObject);
begin
  Close;
end;
procedure Tfrm_PCM_Main.ppmbtn_BelegeClick(Sender: TObject);
begin
  navbarclick(iBelege);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

{$EndRegion}
end.


