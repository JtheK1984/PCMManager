unit PCM.Main;

interface

uses
  {$Region Uses}
  SYSTEM.uitypes, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ImgList, Vcl.Menus, NTTranslator, Strutils, DateUtils,shellapi, Vcl.Themes,
  FireDAC.Phys.ADSDef, FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Phys.ADS,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, cxGeometry, cxVariants, dxCustomData,
  cxCustomCanvas, dxCoreGraphics, dxChartCore, dxChartData, dxChartLegend,
  dxChartSimpleDiagram, dxChartXYDiagram, dxChartXYSeriesLineView,
  dxChartXYSeriesAreaView, dxChartMarkers, dxChartXYSeriesBarView,
  dxChartDBData, dxCoreClasses, dxChartControl, VCLTee.TeeDBCrossTab,
  cxGridChartView, cxPivotGridChartConnection, cxCustomPivotGrid, cxDBPivotGrid,
  dxSkinWXI, dxBarExtItems, cxBarEditItem,
  cxSplitter, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxEdit, cxClasses, System.ImageList, cxContainer, dxBarBuiltInMenu,
  Vcl.ExtCtrls, cxPC, dxNavBarCollns, dxNavBarBase, dxNavBar, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxBar, cxLocalization, cxLabel, cxGroupBox, dxNavBarStyles,inifiles;
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
    grpbx_FinanzenUebersicht: TcxGroupBox;
    grpbx_FinanzenUebersicht_Left: TcxGroupBox;
    grpbx_FinanzenUebersicht_middle: TcxGroupBox;
    grpbx_FinanzenUebersicht_Right: TcxGroupBox;
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
    iJira: TdxNavBarItem;
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
    lbl_AusFixDiffLabel: TcxLabel;
    lbl_AusFixDiffSum: TcxLabel;
    lbl_AusFixDiffSumLabel: TcxLabel;
    lbl_AusFixIst: TcxLabel;
    lbl_AusFixIstLabel: TcxLabel;
    lbl_AusFixIstSum: TcxLabel;
    lbl_AusFixIstSumLabel: TcxLabel;
    lbl_AusFixSoll: TcxLabel;
    lbl_AusFixSollLabel: TcxLabel;
    lbl_AusFixSollSum: TcxLabel;
    lbl_AusFixSollSumLabel: TcxLabel;
    lbl_AusvarDiff: TcxLabel;
    lbl_AusVarDiffLabel: TcxLabel;
    lbl_AusvarDiffSum: TcxLabel;
    lbl_AusvarDiffSumLabel: TcxLabel;
    lbl_AusvarIst: TcxLabel;
    lbl_AusVarIstLabel: TcxLabel;
    lbl_AusvarIstSum: TcxLabel;
    lbl_AusvarIstSumLabel: TcxLabel;
    lbl_AusVarSoll: TcxLabel;
    lbl_AusVarSollLabel: TcxLabel;
    lbl_AusVarSollSum: TcxLabel;
    lbl_AusVarSollSumLabel: TcxLabel;
    lbl_DiffSum: TcxLabel;
    lbl_EinDiff: TcxLabel;
    lbl_EinDiffLabel: TcxLabel;
    lbl_EinDiffSum: TcxLabel;
    lbl_EinDiffSumLabel: TcxLabel;
    lbl_EinIst: TcxLabel;
    lbl_EinIstLabel: TcxLabel;
    lbl_EinIstSum: TcxLabel;
    lbl_EinIstSumLabel: TcxLabel;
    lbl_EinSoll: TcxLabel;
    lbl_EinSollLabel: TcxLabel;
    lbl_EinSollSum: TcxLabel;
    lbl_EinSollSumLabel: TcxLabel;
    lbl_IstSum: TcxLabel;
    lbl_IstSumLabel: TcxLabel;
    lbl_SollDiff: TcxLabel;
    lbl_SollSum: TcxLabel;
    lbl_SollSumLabel: TcxLabel;
    loc_Lang: TcxLocalizer;
    Menuezurueck: TdxBarButton;
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
    pc_Chart: TcxPageControl;
    pc_main: TcxPageControl;
    pnl_CalToDOMiddle: TcxGroupBox;
    pnl_CalToDORight: TcxGroupBox;
    pnl_CalToDOtop: TcxGroupBox;
    pnl_chartBottom: TcxGroupBox;
    pnl_Contactmiddle: TcxGroupBox;
    pnl_Contactright: TcxGroupBox;
    pnl_ContactTop: TcxGroupBox;
    pnl_DashboardCalToDO: TcxGroupBox;
    pnl_DashboardContacts: TcxGroupBox;
    pnl_DashboardPWDSerial: TcxGroupBox;
    grpbx_Design: TcxGroupBox;
    pnl_EinDiff: TcxGroupBox;
    pnl_EinIst: TcxGroupBox;
    pnl_EinSoll: TcxGroupBox;
    pnl_FixDiff: TcxGroupBox;
    pnl_FixIst: TcxGroupBox;
    pnl_FixSoll: TcxGroupBox;
    pnl_GesDiff: TcxGroupBox;
    pnl_GesIst: TcxGroupBox;
    pnl_GesSoll: TcxGroupBox;
    pnl_PWDSerialmiddle: TcxGroupBox;
    pnl_PWDSerialright: TcxGroupBox;
    pnl_PWDSerialTop: TcxGroupBox;
    pnl_TrennDiff: TPanel;
    pnl_TrennIst: TPanel;
    pnl_TrennSoll: TPanel;
    pnl_VarIDiff: TcxGroupBox;
    pnl_VarISoll: TcxGroupBox;
    pnl_VarISt: TcxGroupBox;
    pnl_VerfDiff: TcxGroupBox;
    pnl_VerfEinDiff: TcxGroupBox;
    pnl_VerfEinIst: TcxGroupBox;
    pnl_VerfEinSoll: TcxGroupBox;
    pnl_VerffixDiff: TcxGroupBox;
    pnl_VerffixIst: TcxGroupBox;
    pnl_VerffixSoll: TcxGroupBox;
    pnl_VerfIst: TcxGroupBox;
    pnl_VerfSoll: TcxGroupBox;
    pnl_VerfvarDiff: TcxGroupBox;
    pnl_VerfvarIst: TcxGroupBox;
    pnl_VerfvarSoll: TcxGroupBox;
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
    spl_ChartCalToDoLeft: TcxSplitter;
    spl_ChartCalToDoMain: TcxSplitter;
    spl_ChartContactsLeft: TcxSplitter;
    spl_ChartContactsMain: TcxSplitter;
    spl_ChartPWDSerialLeft: TcxSplitter;
    spl_ChartPWDSerialMain: TcxSplitter;
    trayic_Main: TTrayIcon;
    ts_A_ContactChart: TcxTabSheet;
    ts_B_Cal_TodoChart: TcxTabSheet;
    ts_C_PasswortChart: TcxTabSheet;
    ts_Dashboard: TcxTabSheet;
    ts_E_FinanceChart: TcxTabSheet;
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
  private
    { Private-Deklarationen }
    Modules: TCollection;
    procedure LoadData;
    procedure CloseModules;
    procedure Abmelden;
    function CurrentModule: TForm;
  public
    { Public-Deklarationen }
    FOptions: TIC_Options;
    bAbmelden: Boolean;
  end;
  {$EndRegion Types}
var
  frm_PCM_Main: Tfrm_PCM_Main;

implementation

{$R *.dfm}

uses  PCM.Benutzerverwaltung,
      PCM.Data,
      PCM.Design,
      PCM.Functions,
      PCM.Functions.Appinfo,
      PCM.Functions.ChangePW,
      PCM.Functions.Languages,
      PCM.Functions.Login,
      PCM.Handbuch,
      PCM.Helper,
      PCM.Functions.Synch.Wait,
			PCM.Strings,
      PCM.SQL,
      PCMManager.Modul.B_Config,
      PCMManager.Modul.C_Contacts,
      PCMManager.Modul.D_Calendar,
      PCMManager.Modul.E_Mail,
      PCMManager.Modul.F_Passwort,
      PCMManager.Modul.G_Finanzen;


////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen }
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
  begin
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
  iniFile: TIniFile;
begin
  Application.CreateForm(Tfrm_Language,frm_Language);
  frm_Language.Position:= poScreenCenter;
  frm_Language.ClientHeight:= 214;
  frm_Language.ShowModal;
  TNtTranslator.SetNew(dm_PCM.slocale,[],'de');
  TNtTranslator.TranslateForms;
  iniFile := TIniFile.Create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  try
    iniFile.WriteString(PCM_Logname, 'Language', dm_PCm.sLocale);
  finally
    iniFile.Free;
  end;
  Caption:= PCM_Programmname;
  trayic_Main.popupmenu:= ppm_Main;
  LoadData;
  btn_RefreshRightsClick(Self);
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
            sModul:= 'Kalender_Aufgaben_Jira_Stundenplan';
            sModulCaption := 'i'  + rs_PCMManager_KalenderStundenplan;
            dm_PCM.iModulTab:= 1;
          end;
        5:
          begin
            sModul:= 'Kalender_Aufgaben_Jira_Stundenplan';
            sModulCaption := 'i'  + rs_PCMManager_KalenderStundenplan;
            dm_PCM.iModulTab:= 2;
          end;
        6:
          begin
            sModul:= 'Kalender_AuKalender_Aufgaben_Jira_Stundenplanfgaben_Stundenplan';
            sModulCaption := 'i'  + rs_PCMManager_KalenderStundenplan;
            dm_PCM.iModulTab:= 4;
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
            ShowWaitForm(TForm(Self), PWideChar('Formular wird geladen'), 1,ClientWidth, Height);
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
  pnl_CalToDOTop.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_CalToDOmiddle.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_CalToDOright.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_CalToDOmiddle.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
  pnl_CalToDORight.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);

  pnl_ContactTop.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_Contactmiddle.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_Contactright.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_Contactmiddle.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
  pnl_ContactRight.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);

  pnl_PWDSerialTop.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_PWDSerialmiddle.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_PWDSerialright.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_PWDSerialmiddle.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
  pnl_PWDSerialright.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);

  grpbx_FinanzenUebersicht_Left.width:= Trunc((grpbx_FinanzenUebersicht.width - 8) / 3);
  grpbx_FinanzenUebersicht_middle.width:= Trunc((grpbx_FinanzenUebersicht.width - 8) / 3);
  grpbx_FinanzenUebersicht_Right.width:= Trunc((grpbx_FinanzenUebersicht.width - 8) / 3);
  BarResize;
end;
procedure Tfrm_PCM_Main.FormShow(Sender: TObject);
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
  procedure RegisterNavBarItems;
  begin
    Modules.Clear;
    RegisterForm('iBenutzerverwaltung', Tfrm_User, @frm_User, 1);
    RegisterForm('iKonfiguration', Tfrm_config, @frm_config, 1);
    RegisterForm('iDesign', Tfrm_Design, @frm_Design, 1);
    RegisterForm('iKontakte',Tfrm_Contact, @frm_Contact, 1);
    RegisterForm('iKalender',Tfrm_Calendar, @frm_Calendar, 1);
    RegisterForm('iAufgaben',Tfrm_Calendar, @frm_Calendar, 1);
    RegisterForm('iJira',Tfrm_Calendar, @frm_Calendar, 1);
    RegisterForm('iStundenplan',Tfrm_Calendar, @frm_Calendar, 1);
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
    RegisterForm('iHandbuch',Tfrm_Handbuch, @frm_Handbuch, 1);
    RegisterEvent('iAbmelden', Abmelden);
    RegisterEvent('iBeenden', Close);
  end;
  procedure InitializeRights;
  begin
    dm_PCM.qry_Work.SQL.Text:=  ASSQL_GetAllRights[dm_PCM.iDBType];
    dm_PCM.qry_Work.ParamByName('ID').AsInteger := dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_Work.Open;
    dm_PCM.iBenutzer:= dm_PCM.qry_Work.FieldByName('Benutzer').asInteger;
    dm_PCM.iKonfiguration:= dm_PCM.qry_Work.FieldByName('Konfiguration').asInteger;
    dm_PCM.iDesign:= dm_PCM.qry_Work.FieldByName('Design').asInteger;
    dm_PCM.iKontakte:= dm_PCM.qry_Work.FieldByName('Kontakte').asInteger;
    dm_PCM.iKalender:= dm_PCM.qry_Work.FieldByName('Kalender').asInteger;
    dm_PCM.iStundenplan:= dm_PCM.qry_Work.FieldByName('Stundenplan').asInteger;
    dm_PCM.iEmail:= dm_PCM.qry_Work.FieldByName('Email').asInteger;
    dm_PCM.iPassword:= dm_PCM.qry_Work.FieldByName('Password').asInteger;
    dm_PCM.iSerials:= dm_PCM.qry_Work.FieldByName('Serials').asInteger;
    dm_PCM.iMonatsuebersicht:= dm_PCM.qry_Work.FieldByName('Monatsuebersicht').asInteger;
    dm_PCM.iVerfuegung:= dm_PCM.qry_Work.FieldByName('Verfuegung').asInteger;
    dm_PCM.iEinnahmen:= dm_PCM.qry_Work.FieldByName('Einnahmen').asInteger;
    dm_PCM.iAusgaben:= dm_PCM.qry_Work.FieldByName('Ausgaben').asInteger;
    dm_PCM.qry_Work.Close;

    // Benutzerverwaltung / Kein Recht
    if (dm_PCM.iBenutzer = 0) and (dm_PCM.iKonfiguration = 0) and (dm_PCM.iDesign = 0) then
    begin
      navbrgrp_Optionen.Visible:= false;
      iBenutzerverwaltung.Visible:= false;
      iKonfiguration.Visible:= false;
    end;

    // Benutzerverwaltung / Lesen / Ändern / Vollzugriff
    case dm_PCM.iBenutzer of
    0: iBenutzerverwaltung.Visible:= false;
    1,2,3:
      begin
        navbrgrp_Optionen.Visible:= true;
        iBenutzerverwaltung.Visible:= true;
      end;
    end;

    // Optionen / Lesen / Ändern / Vollzugriff
    case dm_PCM.iKonfiguration of
    0: iKonfiguration.Visible:= false;
    1,2,3:
      begin
        navbrgrp_Optionen.Visible:= true;
        iKonfiguration.Visible:= true;
      end;
    end;

    // Kontakte / Kein Recht
    case dm_PCM.iKontakte of
    0: navbrgrp_Kontake.Visible:= false;
    // Kontakte / Lesen / Ändern / Vollzugriff
    1,2,3: navbrgrp_Kontake.Visible:= true;
    end;

    // Kalender / Stundenplan / Mail
    if (dm_PCM.iKalender = 0) and (dm_PCM.iStundenplan = 0) and (dm_PCM.iEmail = 0) then
    begin
      navbrgrp_Kalender.Visible:= false;
      iKalender.Visible:= false;
      iAufgaben.Visible:= false;
      iStundenplan.Visible:= false;
    end;
    // Kalender / Kein Recht
    case dm_PCM.iKalender of
    0: iKalender.Visible:= false;
    // Kalender / Lesen / Schreiben / Vollzugriff
    1,2,3:
      begin
        navbrgrp_Kalender.Visible:= true;
        iKalender.Visible:= true;
      end;
    end;

    // Stundenplan / Kein Recht
    case dm_PCM.iStundenplan of
    0: iStundenplan.Visible:= false;
    // Stundenplan / Lesen / Schreiben / Vollzugriff
    1,2,3:
      begin
        navbrgrp_Kalender.Visible:= true;
        iStundenplan.Visible:= true;
      end;
    end;

    // Mails / Kein Recht
    case dm_PCM.iEmail of
    0: iEMails.Visible:= false;
    // Mails / Lesen / Schreiben / Vollzugriff
    1,2,3:
      begin
        navbrgrp_Kalender.Visible:= true;
        iEMails.Visible:= true;
      end;
    end;

    // Passwörter / Serials
    if (dm_PCM.iPassword = 0) and (dm_PCM.iSerials = 0)  then
    begin
      navbrgrp_Passwort.Visible:= false;
      iPasswoerter.Visible:= false;
      iSerials.Visible:= false;
    end;

    // Passwort / kein Recht
    case dm_PCM.iPassword of
    0: iPasswoerter.Visible:= false;
    // Passwort / Lesen / Schreiben / Vollzugriff
    1,2,3:
      begin
        iPasswoerter.Visible:= true;
        navbrgrp_Passwort.Visible:= true;
      end;
    end;

    // Serial / Kein Recht
    case dm_PCM.iSerials of
    0: iSerials.Visible:= false;
    // Serials / Lesen / Schreiben / Vollzugriff
    1,2,3:
      begin
        iSerials.Visible:= true;
        navbrgrp_Passwort.Visible:= true;
      end;
    end;

    // Finanzen / Kein Recht
    case dm_PCM.iMonatsuebersicht of
    0: navbrgrp_Finanzen.Visible:= false;
    // Finanzen / Lesen / Schreiben / Vollzugriff
    1,2,3:  navbrgrp_Finanzen.Visible:= true;
    end;
  end;
  procedure LoadLanguageIni;
  begin
    try
      loc_lang.LoadFromFile(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\cxLocalLang.ini');
      loc_lang.LanguageIndex := 1;
    except
      on e:Exception do
      begin
        MessageDlg(rs_PCM_Sprachdatei, mtWarning, [mbOk], 0);
      end
    end;
  end;
  procedure CheckClientLicence;
  begin
    dm_PCM.bNewLiceneCheck:= false;
    CheckLizenzNew;
    if dm_PCm.bNewLiceneCheck = false then
    begin
      CheckLizenzNew;
      if dm_PCm.bNewLiceneCheck = false then
        Application.Terminate;
    end;
  end;
  procedure CheckLogin;
  begin
    if not bAbmelden then
      dm_PCM.bLogin := Autologin
    else
      dm_PCM.bLogin := false;
    if not dm_PCM.bLogin then
    begin
      Application.CreateForm(Tfrm_PCM_Login, frm_PCM_Login);
      dm_PCM.bLogin := frm_pcm_login.Login_User;
      frm_PCM_Login.Free;
    end;
    if not dm_PCM.bLogin then
      Application.Terminate;
    bAbmelden:= False;
  end;
  procedure SetTrayMenu;
  begin
    Caption:= PCM_Programmname;
    trayIC_Main.PopupMenu:= ppm_main;
    if dm_PCM.bDemo then
      Caption:=PCM_Programmname + rs_PCM_Demolizenz + DateTostr(dm_PCM.dtGueltig);
  end;
begin
  {$ifdef WIn32}
  iSprache.Visible:= false;
  ppmbtn_Sprache.Visible:= false;
  {$endif}
  lafCtrl_Main.NativeStyle:= false;
  trayIC_Main.Hint:= PCM_Programmname;
  dm_PCM.iDBType:= 0;
  if not ReadServerAdress then
  begin
    Application.Terminate;
  end
  else begin
  	lafCtrl_Main.SkinName:= dm_PCM.sDesign;
    LoadLanguageIni;
    if dm_PCM.bStyle then
    begin
      NavBarClick(iDesign);
    end
    else begin
      CheckClientLicence;
      CheckLogin;
      InitializeRights;
      LoadData;
      WriteLog(PCM_Logname,rs_PCM_Start,0);
      SetTrayMenu;
      RegisterNavBarItems;
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
  navbarclick(iSprache);
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
{$EndRegion}
end.


