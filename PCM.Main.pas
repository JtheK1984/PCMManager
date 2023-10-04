unit PCM.Main;

interface

uses
  SYSTEM.uitypes,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxStyles, cxClasses, System.ImageList,
  Vcl.ImgList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxDBLookupComboBox, cxCheckBox, cxContainer, dxBarBuiltInMenu, cxDropDownEdit,
  cxCalendar, cxDBEdit, Vcl.Buttons, cxPC, cxLookupEdit,
  cxDBLookupEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ExtCtrls, dxNavBarCollns,
  dxNavBarBase, dxNavBar, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerAgendaView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerRecurrence,
  cxSchedulerRibbonStyleEventEditor, cxSchedulerTreeListBrowser, cxSplitter,
  cxProgressBar, cxButtons, dxGDIPlusClasses, cxCurrencyEdit, Vcl.DBCtrls,
  cxImage, cxColorComboBox, cxDBColorComboBox,
  Vcl.Mask,
  dxNavBarStyles, cxSchedulerDBStorage, cxLocalization,
  cxExtEditRepositoryItems, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Strutils, DateUtils,shellapi,
  IdExplicitTLSClientServerBase, IdFTP, dxScreenTip, dxCustomHint, cxHint,
  cxImageComboBox, cxGridCustomPopupMenu, cxGridPopupMenu, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxCommon, dxPSCore,IdIMAP4,IDpop3,idsmtp,IdMessage, IdMessageClient, idAttachment,IdText,NetEncoding,inifiles,
  dxmdaset,cxSchedulerICalendar,cxdateutils, VCL.imaging.jpeg,VCL.imaging.pngimage,cxGroupBox,
  dxSkinsCore, dxSkinMetropolisDark, cxMemo, cxListView, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue,  Vcl.Themes, cxLabel, dxBar, dxRibbon,
  dxRibbonMiniToolbar, dxStatusBar, cxRadioGroup, cxImageList, dxCore,
  dxSkinsForm,
  FireDAC.Phys.ADSDef, FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Phys.ADS,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, cxGeometry, cxVariants, dxCustomData,
  cxCustomCanvas, dxCoreGraphics, dxChartCore, dxChartData, dxChartLegend,
  dxChartSimpleDiagram, dxChartXYDiagram, dxChartXYSeriesLineView,
  dxChartXYSeriesAreaView, dxChartMarkers, dxChartXYSeriesBarView,
  dxChartDBData, dxCoreClasses, dxChartControl, VCLTee.TeeDBCrossTab,
  cxGridChartView, cxPivotGridChartConnection, cxCustomPivotGrid, cxDBPivotGrid,
  PCM.Functions,
  PCM.Functions.ChangePW,
  PCM.Functions.Appinfo,
  PCM.Benutzerverwaltung,
  PCMManager.Modul.B_Config,
  PCMManager.Modul.C_Contacts,
  PCMManager.Modul.D_Calendar,
  PCMManager.Modul.E_Mail,
  PCMManager.Modul.F_Passwort,
  PCMManager.Modul.G_Finanzen, dxSkinWXI;
type
  TIC_Options = record
    StundenProArbeitstag: Double;
    Jira_Basic_URL: String;
    AdressSelf, AdressGes: integer;
    EVENTS,TODO:String;
  end;

type
  TcxSchedulerAccess = class (TcxScheduler);
  TcxSchedulerClipboardControllerAccess = class (TcxSchedulerClipboardController);
  TcxPageControlPropertiesAccess = class(TcxPageControlProperties);

type
  Tfrm_PCM_Main = class(TForm)
    img_Icons: TImageList;
    loc_Lang: TcxLocalizer;
    lafCtrl_Main: TcxLookAndFeelController;
    navbr_main: TdxNavBar;
    navbrgrp_Optionen: TdxNavBarGroup;
    navbrgrp_Kontake: TdxNavBarGroup;
    navbrgrp_Kalender: TdxNavBarGroup;
    navbrgrp_Passwort: TdxNavBarGroup;
    navbrgrp_Finanzen: TdxNavBarGroup;
    navbrgrp_Info: TdxNavBarGroup;
    navbrgrp_Programm: TdxNavBarGroup;
    navbrit_Kontakte: TdxNavBarItem;
    navbrit_Passwort: TdxNavBarItem;
    navbrit_Systeminfo: TdxNavBarItem;
    navbrit_Beenden: TdxNavBarItem;
    navbrit_Monatsuebersicht: TdxNavBarItem;
    navbrit_Ausgaben: TdxNavBarItem;
    navbrit_Einnahmen: TdxNavBarItem;
    navbrit_Serials: TdxNavBarItem;
    navbrit_Benutzer: TdxNavBarItem;
    navbrit_Konfiguration: TdxNavBarItem;
    navbrit_Programminfo: TdxNavBarItem;
    navbrit_Verfuegung: TdxNavBarItem;
    navbrit_Kalender: TdxNavBarItem;
    navbrit_Stundenplan: TdxNavBarItem;
    navbrit_EMail: TdxNavBarItem;
    navbrit_Abmelden: TdxNavBarItem;
    navbrit_ChangePW: TdxNavBarItem;
    navbrStyleIt_main: TdxNavBarStyleItem;
    pcmain: TcxPageControl;
    navbrit_Belege: TdxNavBarItem;
    navbrit_Gutscheine: TdxNavBarItem;
    navbrit_Aufgaben: TdxNavBarItem;
    td_Dashboard: TcxTabSheet;
    pnl_chartBottom: TcxGroupBox;
    chartctrl_Finance: TdxChartControl;
    chartctrl_FinanceChart: TdxChartXYDiagram;
    chartctrl_FinanceSeries1: TdxChartXYSeries;
    chartctrl_FinanceSeries2: TdxChartXYSeries;
    pc_Chart: TcxPageControl;
    ts_E_FinanceChart: TcxTabSheet;
    ts_B_Cal_TodoChart: TcxTabSheet;
    pnl_DashboardCalToDO: TcxGroupBox;
    pnl_CalToDOMiddle: TcxGroupBox;
    chartctrl_Cal: TdxChartControl;
    chartctrl_Calchart: TdxChartSimpleDiagram;
    chartctrl_CalSeries: TdxChartSimpleSeries;
    pnl_CalToDORight: TcxGroupBox;
    chartctrl_CalCategories: TdxChartControl;
    chartctrl_CalCategoriesChart: TdxChartSimpleDiagram;
    chartctrl_CalCategoriesSeries: TdxChartSimpleSeries;
    pnl_CalToDOtop: TcxGroupBox;
    chartctrl_ToDo: TdxChartControl;
    chartctrl_ToDoChart: TdxChartSimpleDiagram;
    chartctrl_ToDoSeries: TdxChartSimpleSeries;
    spl_ChartCalToDoMain: TcxSplitter;
    spl_ChartCalToDoLeft: TcxSplitter;
    grpbx_FinanzenUebersicht: TcxGroupBox;
    grpbx_FinanzenUebersicht_Left: TcxGroupBox;
    pnl_EinSoll: TcxGroupBox;
    lbl_EinSoll: TcxLabel;
    lbl_EinSollLabel: TcxLabel;
    pnl_FixSoll: TcxGroupBox;
    lbl_AusFixSoll: TcxLabel;
    lbl_AusFixSollLabel: TcxLabel;
    pnl_VarISoll: TcxGroupBox;
    lbl_AusVarSoll: TcxLabel;
    lbl_AusVarSollLabel: TcxLabel;
    pnl_GesSoll: TcxGroupBox;
    pnl_VerfSoll: TcxGroupBox;
    lbl_SollSumLabel: TcxLabel;
    lbl_SollSum: TcxLabel;
    pnl_VerfEinSoll: TcxGroupBox;
    lbl_EinSollSumLabel: TcxLabel;
    lbl_EinSollSum: TcxLabel;
    pnl_VerfvarSoll: TcxGroupBox;
    lbl_AusVarSollSumLabel: TcxLabel;
    lbl_AusVarSollSum: TcxLabel;
    pnl_TrennSoll: TPanel;
    pnl_VerffixSoll: TcxGroupBox;
    lbl_AusFixSollSumLabel: TcxLabel;
    lbl_AusFixSollSum: TcxLabel;
    grpbx_FinanzenUebersicht_Right: TcxGroupBox;
    pnl_EinIst: TcxGroupBox;
    lbl_EinIst: TcxLabel;
    lbl_EinIstLabel: TcxLabel;
    pnl_FixIst: TcxGroupBox;
    lbl_AusFixIst: TcxLabel;
    lbl_AusFixIstLabel: TcxLabel;
    pnl_VarISt: TcxGroupBox;
    lbl_AusvarIst: TcxLabel;
    lbl_AusVarIstLabel: TcxLabel;
    pnl_GesIst: TcxGroupBox;
    pnl_VerfIst: TcxGroupBox;
    lbl_IstSumLabel: TcxLabel;
    lbl_IstSum: TcxLabel;
    pnl_VerfEinIst: TcxGroupBox;
    lbl_EinIstSumLabel: TcxLabel;
    lbl_EinIstSum: TcxLabel;
    pnl_VerfvarIst: TcxGroupBox;
    lbl_AusvarIstSumLabel: TcxLabel;
    lbl_AusvarIstSum: TcxLabel;
    pnl_TrennIst: TPanel;
    pnl_VerffixIst: TcxGroupBox;
    lbl_AusFixIstSumLabel: TcxLabel;
    lbl_AusFixIstSum: TcxLabel;
    grpbx_FinanzenUebersicht_middle: TcxGroupBox;
    pnl_EinDiff: TcxGroupBox;
    lbl_EinDiff: TcxLabel;
    lbl_EinDiffLabel: TcxLabel;
    pnl_FixDiff: TcxGroupBox;
    lbl_AusFixDiff: TcxLabel;
    lbl_AusFixDiffLabel: TcxLabel;
    pnl_VarIDiff: TcxGroupBox;
    lbl_AusvarDiff: TcxLabel;
    lbl_AusVarDiffLabel: TcxLabel;
    pnl_GesDiff: TcxGroupBox;
    pnl_VerfDiff: TcxGroupBox;
    lbl_SollDiff: TcxLabel;
    lbl_DiffSum: TcxLabel;
    pnl_VerfEinDiff: TcxGroupBox;
    lbl_EinDiffSumLabel: TcxLabel;
    lbl_EinDiffSum: TcxLabel;
    pnl_VerfvarDiff: TcxGroupBox;
    lbl_AusvarDiffSumLabel: TcxLabel;
    lbl_AusvarDiffSum: TcxLabel;
    pnl_TrennDiff: TPanel;
    pnl_VerffixDiff: TcxGroupBox;
    lbl_AusFixDiffSumLabel: TcxLabel;
    lbl_AusFixDiffSum: TcxLabel;
    ts_A_ContactChart: TcxTabSheet;
    ts_C_PasswortChart: TcxTabSheet;
    pnl_ContactTop: TcxGroupBox;
    spl_ChartContactsMain: TcxSplitter;
    pnl_Contactmiddle: TcxGroupBox;
    chartctrl_Birthday: TdxChartControl;
    chartctrl_BirthdayChart: TdxChartSimpleDiagram;
    chartctrl_BirthdaySeries: TdxChartSimpleSeries;
    pnl_Contactright: TcxGroupBox;
    chartctrl_Adresses: TdxChartControl;
    chartctrl_AdressesChart: TdxChartSimpleDiagram;
    chartctrl_AdressesSeries: TdxChartSimpleSeries;
    spl_ChartContactsLeft: TcxSplitter;
    pnl_DashboardContacts: TcxGroupBox;
    chartctrl_Contact: TdxChartControl;
    chartctrl_ContactChart: TdxChartSimpleDiagram;
    chartctrl_ContactSeries: TdxChartSimpleSeries;
    pnl_DashboardPWDSerial: TcxGroupBox;
    pnl_PWDSerialmiddle: TcxGroupBox;
    chartctrl_PWDCategories: TdxChartControl;
    chartctrl_PWDCategoriesChart: TdxChartSimpleDiagram;
    chartctrl_PWDCategoriesSeries: TdxChartSimpleSeries;
    pnl_PWDSerialright: TcxGroupBox;
    spl_ChartPWDSerialLeft: TcxSplitter;
    chartctrl_SerialsCategories: TdxChartControl;
    chartctrl_SerialsCategoriesChart: TdxChartSimpleDiagram;
    chartctrl_SerialsCategoriesSeries: TdxChartSimpleSeries;
    pnl_PWDSerialTop: TcxGroupBox;
    chartctrl_PWDSerials: TdxChartControl;
    chartctrl_PWDSerialsChart: TdxChartSimpleDiagram;
    chartctrl_PWDSerialsSeries: TdxChartSimpleSeries;
    spl_ChartPWDSerialMain: TcxSplitter;
    pnl_Design: TcxGroupBox;
    trayic_Main: TTrayIcon;
    ppm_Main: TPopupMenu;
    ppmbtn_Benutzer: TMenuItem;
    ppmbtn_Konfiguration: TMenuItem;
    ppmbtn_Contacts: TMenuItem;
    ppmbtn_kalender: TMenuItem;
    ppmbtn_Aufgaben: TMenuItem;
    ppmbtn_Stundenplan: TMenuItem;
    ppmbtn_Email: TMenuItem;
    ppmbtn_Passwoerter: TMenuItem;
    ppmbtn_Trenn1: TMenuItem;
    ppmbtn_Trenn2: TMenuItem;
    ppmbtn_Trenn3: TMenuItem;
    ppmbtn_Serials: TMenuItem;
    ppmbtn_Trenn4: TMenuItem;
    ppmbtn_Monatsuebersicht: TMenuItem;
    ppmbtn_Einnahmen: TMenuItem;
    ppmbtn_Ausgaben: TMenuItem;
    ppmbtn_Trenn5: TMenuItem;
    ppmbtn_Systeminfo: TMenuItem;
    ppmbtn_Programminfo: TMenuItem;
    ppmbtn_Beenden: TMenuItem;
    ppmbtn_Trenn6: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure navbrit_BenutzerClick(Sender: TObject);
    procedure navbrit_KonfigurationClick(Sender: TObject);
    procedure navbrit_KontakteClick(Sender: TObject);
    procedure navbrit_KalenderClick(Sender: TObject);
    procedure navbrit_StundenplanClick(Sender: TObject);
    procedure navbrit_EMailClick(Sender: TObject);
    procedure navbrit_PasswortClick(Sender: TObject);
    procedure navbrit_SerialsClick(Sender: TObject);
    procedure navbrit_MonatsuebersichtClick(Sender: TObject);
    procedure navbrit_EinnahmenClick(Sender: TObject);
    procedure navbrit_AusgabenClick(Sender: TObject);
    procedure navbrit_VerfuegungClick(Sender: TObject);
    procedure navbrit_ProgramminfoClick(Sender: TObject);
    procedure navbrit_SysteminfoClick(Sender: TObject);
    procedure navbrit_ChangePWClick(Sender: TObject);
    procedure navbrit_AbmeldenClick(Sender: TObject);
    procedure Abmelden;
    procedure navbrit_BeendenClick(Sender: TObject);
    procedure InitializeRights;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pcmainCanCloseEx(Sender: TObject; ATabIndex: Integer; var ACanClose: Boolean);
    procedure navbrit_AufgabenClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure pnl_CalToDOtopDblClick(Sender: TObject);
    procedure pnl_CalToDOMiddleClick(Sender: TObject);
    procedure pnl_CalToDORightDblClick(Sender: TObject);
    procedure ppmbtn_BenutzerClick(Sender: TObject);
    procedure ppmbtn_KonfigurationClick(Sender: TObject);
    procedure ppmbtn_ContactsClick(Sender: TObject);
    procedure ppmbtn_kalenderClick(Sender: TObject);
    procedure ppmbtn_AufgabenClick(Sender: TObject);
    procedure ppmbtn_StundenplanClick(Sender: TObject);
    procedure ppmbtn_EmailClick(Sender: TObject);
    procedure ppmbtn_PasswoerterClick(Sender: TObject);
    procedure ppmbtn_SerialsClick(Sender: TObject);
    procedure ppmbtn_MonatsuebersichtClick(Sender: TObject);
    procedure ppmbtn_EinnahmenClick(Sender: TObject);
    procedure ppmbtn_AusgabenClick(Sender: TObject);
    procedure ppmbtn_SysteminfoClick(Sender: TObject);
    procedure ppmbtn_ProgramminfoClick(Sender: TObject);
    procedure Abmelden1Click(Sender: TObject);
    procedure ppmbtn_BeendenClick(Sender: TObject);
  private
    { Private-Deklarationen }
    FfrmModulBenutzer: array of Tfrm_User;
    FfrmModulConfig: array of Tfrm_config;
    FfrmModulContact: array of Tfrm_contact;
    FfrmModulCalendar: array of Tfrm_Calendar;
    FfrmModulMail: array of Tfrm_Mail;
    FfrmModulPWD: array of Tfrm_password;
    FfrmModulFinanz: array of Tfrm_finanzen;
    FfrmModulSysinfo: array of Tfrm_PCM_System;
    FfrmModulAppinfo: array of Tfrm_PCM_InfoApp;
    FfrmModulChangePW: array of TfrM_PCM_ChangePW;
    procedure LoadSQLs;
    procedure AddTabsheet(APageControl: TcxPAgeCOntrol; ACaption: string;ATag: Integer);
    function CheckTabExist(sTabName: String) : integer;
  public
    { Public-Deklarationen }
    FOptions: TIC_Options;
    bStyle: boolean;
    bAbmelden: Boolean;
    procedure CloseTab(APage: integer);
  end;

var
  frm_PCM_Main: Tfrm_PCM_Main;

implementation

{$R *.dfm}

uses  PCM.Functions.Login,
      PCM.Data;
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////


function Tfrm_PCM_Main.CheckTabExist(sTabName: String) : integer;
var
  iCount: Integer;
begin
  Result := -1;
  for iCount := 0 to pcMain.PageCount -1 do
  begin
    if pcMain.Pages[iCount].Name = sTabName then
    begin
      Result := iCount;
      Break;
    end;
  end;
end;
procedure Tfrm_PCM_Main.CloseTab(APage: integer);
begin
  frm_PCM_ChangePW.Free;
  TcxPageControlPropertiesAccess(pcmain.Properties).DoCloseTab(APage);
end;
procedure Tfrm_PCM_Main.ppmbtn_EmailClick(Sender: TObject);
begin
  navbrit_EMailClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_PasswoerterClick(Sender: TObject);
begin
  navbrit_PasswortClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_EinnahmenClick(Sender: TObject);
begin
  navbrit_EinnahmenClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_AusgabenClick(Sender: TObject);
begin
  navbrit_AusgabenClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.InitializeRights;
begin
  dm_PCM.qry_Work.SQL.Text:=  'SELECT mr.Benutzer,mr.Konfiguration,mr.ma_Kontakte as Kontakte,mr.ma_Kalender as Kalender,mr.ma_Stundenplan as Stundenplan,'+
                              'mr.ma_Email as Email,mr.ma_Password as Password,mr.ma_Serials as Serials,mr.ma_Monatsuebersicht as Monatsuebersicht,'+
                              'mr.ma_Verfuegung as Verfuegung,mr.ma_Einnahmen as Einnahmen,mr.ma_Ausgaben as Ausgaben '+
                              'FROM benutzer mb LEFT OUTER JOIN rechte mr ON mr.ID = mb.ID_rechte WHERE mb.id = :ID';
  dm_PCM.qry_Work.ParamByName('ID').AsInteger := dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  dm_PCM.int_optionenrecht:= dm_PCM.qry_Work.FieldByName('Benutzer').asInteger;
  dm_PCM.iKonfiguration:= dm_PCM.qry_Work.FieldByName('Konfiguration').asInteger;
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
  if (dm_PCM.int_optionenrecht = 0) and (dm_PCM.iKonfiguration = 0) then
  begin
    navbrgrp_Optionen.Visible:= false
  end;

  if (dm_PCM.int_optionenrecht = 0) then
  begin
    navbrit_Benutzer.Visible:= false
  end;
  // Benutzerverwaltung / Lesen
  if dm_PCM.int_optionenrecht = 1 then
  begin
    navbrgrp_Optionen.Visible:= true;
    navbrit_Benutzer.Visible:= true;
  end;
  // Benutzerverwaltung / Ändern
  if dm_PCM.int_optionenrecht = 2 then
  begin
    navbrgrp_Optionen.Visible:= true;
    navbrit_Benutzer.Visible:= true;
  end;
  // Benutzerverwaltung / Vollzugriff
  if dm_PCM.int_optionenrecht = 3 then
  begin
    navbrgrp_Optionen.Visible:= true;
    navbrit_Benutzer.Visible:= true;
  end;

  // Optionen / Kein Recht
  if dm_PCM.iKonfiguration = 0 then
  begin
    navbrit_Konfiguration.Visible:= false;
  end;
  // Optionen / Lesen
  if dm_PCM.iKonfiguration = 1 then
  begin
    navbrit_Konfiguration.Visible:= true;
  end;
  // Optionen / Ändern
  if dm_PCM.iKonfiguration = 2 then
  begin
    navbrit_Konfiguration.Visible:= true;
  end;
  // Optionen / Vollzugriff
  if dm_PCM.iKonfiguration = 3 then
  begin
    navbrit_Konfiguration.Visible:= true;
  end;

  // Kontakte / Kein Recht
  if dm_PCM.iKontakte = 0 then
  begin
    navbrgrp_Kontake.Visible:= false;
  end;
  // Kontakte / Lesen
  if dm_PCM.iKontakte = 1 then
  begin
    navbrgrp_Kontake.Visible:= true;
  end;
    // Kontakte / Ändern
  if dm_PCM.iKontakte = 2 then
  begin
  end;
  // Kontakte / Vollzugriff
  if dm_PCM.iKontakte = 3 then
  begin
    navbrgrp_Kontake.Visible:= true;
  end;

  // Kalender / Stundenplan / Mail
  if (dm_PCM.iKalender = 0) and (dm_PCM.iStundenplan = 0) and (dm_PCM.iEmail = 0) then
  begin
    navbrgrp_Kalender.Visible:= false;
  end;


  // Kalender / Kein Recht
  if dm_PCM.iKalender = 0 then
  begin
    navbrit_Kalender.Visible:= false;
  end;

  // Kalender / Lesen
  if dm_PCM.iKalender = 1 then
  begin
    navbrgrp_Kalender.Visible:= true;
    navbrit_Kalender.Visible:= true;
  end;
  // Kalender / Schreiben
  if dm_PCM.iKalender = 2 then
  begin
    navbrgrp_Kalender.Visible:= true;
    navbrit_Kalender.Visible:= true;
  end;
  // Kalender / Vollzugriff
  if dm_PCM.iKalender = 3 then
  begin
    navbrgrp_Kalender.Visible:= true;
    navbrit_Kalender.Visible:= true;
  end;


  // Stundenplan / Kein Recht
  if dm_PCM.iStundenplan = 0 then
  begin
    navbrit_Stundenplan.Visible:= false;
  end;

  // Stundenplan / Lesen
  if dm_PCM.iStundenplan = 1 then
  begin
    navbrgrp_Kalender.Visible:= true;
    navbrit_Stundenplan.Visible:= true;
  end;
   // Stundenplan / Schreiben
  if dm_PCM.iStundenplan = 2 then
  begin
    navbrgrp_Kalender.Visible:= true;
    navbrit_Stundenplan.Visible:= true;
  end;
  // Stundenplan / Vollzugriff
  if dm_PCM.iStundenplan = 3 then
  begin
    navbrgrp_Kalender.Visible:= true;
    navbrit_Stundenplan.Visible:= true;
  end;

  // Mails / Kein Recht
  if dm_PCM.iEmail = 0 then
  begin
    navbrit_EMail.Visible:= false;
  end;

  // Mails / Lesen
  if dm_PCM.iEmail = 1 then
  begin
    navbrgrp_Kalender.Visible:= true;
    navbrit_EMail.Visible:= true;
  end;

  // Mails / Schreiben
  if dm_PCM.iEmail = 2 then
  begin
    navbrgrp_Kalender.Visible:= true;
    navbrit_EMail.Visible:= true;
  end;

  // Mails / Vollzugriff
  if dm_PCM.iEmail = 3 then
  begin
    navbrgrp_Kalender.Visible:= true;
    navbrit_EMail.Visible:= true;
  end;

  // Passwörter / Serials
  if (dm_PCM.iPassword = 0) and (dm_PCM.iSerials = 0)  then
  begin
    navbrgrp_Passwort.Visible:= false;
  end;

  // Passwort / kein
  if dm_PCM.iPassword = 0 then
  begin
    navbrit_Passwort.Visible:= false;
  end;

  // Passwort / Lesen
  if dm_PCM.iPassword = 1 then
  begin
    navbrit_Passwort.Visible:= true;
    navbrgrp_Passwort.Visible:= true;
  end;

    // Passwort / Schreiben
  if dm_PCM.iPassword = 2 then
  begin
    navbrit_Passwort.Visible:= true;
    navbrgrp_Passwort.Visible:= true;
  end;

  // Passwort / Vollzugriff
  if dm_PCM.iPassword = 3 then
  begin
    navbrit_Passwort.Visible:= true;
    navbrgrp_Passwort.Visible:= true;
  end;

  // Serial / Kein
  if dm_PCM.iSerials = 0 then
  begin
    navbrit_Serials.Visible:= false;
  end;

  // Serials / Lesen
  if dm_PCM.iSerials = 1 then
  begin
    navbrit_Serials.Visible:= true;
    navbrgrp_Passwort.Visible:= true;
  end;

  // Serials / Schreiben
  if dm_PCM.iSerials = 2 then
  begin
    navbrit_Serials.Visible:= true;
    navbrgrp_Passwort.Visible:= true;
  end;

  // Serials / Vollzugriff
  if dm_PCM.iSerials = 3 then
  begin
    navbrit_Serials.Visible:= true;
    navbrgrp_Passwort.Visible:= true;

  end;

  // FINANZEN / Kein Recht
  if dm_PCM.iMonatsuebersicht = 0 then
  begin
    navbrgrp_Finanzen.Visible:= false;
  end;

    // FINANZEN / LeEsen
  if dm_PCM.iMonatsuebersicht = 1 then
  begin
    navbrgrp_Finanzen.Visible:= true;
  end;

  // FINANZEN / Schreiben
  if dm_PCM.iMonatsuebersicht = 2 then
  begin
    navbrgrp_Finanzen.Visible:= true;
   end;
  // FINANZEN / Vollzugriff
  if dm_PCM.iMonatsuebersicht = 2 then
  begin
    navbrgrp_Finanzen.Visible:= true;
  end;
end;
procedure Tfrm_PCM_Main.Abmelden;
begin
  bAbmelden := True;
  dm_PCM.bLogin := false;
  bStyle:= false;
  Hide;
  Show;
end;

procedure Tfrm_PCM_Main.Abmelden1Click(Sender: TObject);
begin
  navbrit_AbmeldenClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.AddTabsheet(APageControl: TcxPAgeControl; ACaption: string;ATag: Integer);
var
  ts_Create: TcxTabSheet;
begin
  ts_Create:= TcxTabSheet.Create(APageControl);
  ts_Create.Caption:= ACaption;
  ts_Create.Name:= 'tshModul_' + IntToStr(ATag);
  ts_Create.Tag:= ATag;
  ts_Create.PageIndex:= ATag;
  ts_Create.PageControl:= APageControl;
end;
procedure Tfrm_PCM_Main.ppmbtn_BeendenClick(Sender: TObject);
begin
  navbrit_BeendenClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.LoadSQLs;
var
  iZaehler: integer;
  dEinnahmeSoll, dEinnahmeIst: Double;
  dKostenVarSoll, dKostenVarIst: Double;
  dKostenFixSoll, dKostenFixIst: Double;
  iAnzahl: integer;
begin
  dEinnahmeSoll:=0;
  dEinnahmeIst:=0;
  dKostenVarSoll:=0;
  dKostenVarIst:=0;
  dKostenFixSoll:=0;
  dKostenFixIst:=0;
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

  dm_PCM.qry_Work.sql.text:= 'Select StundenProArbeitstag, Jira_Basic_URL,Adresse_Eigene,Adresse_Firma,Account_Privat,Account_Geschaeftlich From manager_kalender_optionen';
  dm_PCM.qry_Work.Open;
  FOptions.StundenProArbeitstag := dm_PCM.qry_Work.FieldByName('StundenProArbeitstag').AsFloat;
  FOptions.Jira_Basic_URL := dm_PCM.qry_Work.FieldByName('Jira_Basic_URL').AsString;
  FOptions.AdressSelf := dm_PCM.qry_Work.FieldByName('Adresse_Eigene').asInteger;
  FOptions.AdressGes := dm_PCM.qry_Work.FieldByName('Adresse_Firma').asInteger;
  FOptions.EVENTS :=dm_PCM.qry_Work.FieldByName('Account_Privat').asString;
  FOptions.TODO :=dm_PCM.qry_Work.FieldByName('Account_Geschaeftlich').asString;
  dm_PCM.qry_Work.Close;


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

end;
procedure Tfrm_PCM_Main.ppmbtn_MonatsuebersichtClick(Sender: TObject);
begin
  navbrit_MonatsuebersichtClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_PCM_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WriteLog(PCM_Logname,'Programm beendet',0);
end;
procedure Tfrm_PCM_Main.FormResize(Sender: TObject);
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

end;
procedure Tfrm_PCM_Main.FormShow(Sender: TObject);
var
  iIndex: integer;
begin
  trayIC_Main.Hint:= PCM_Programmname;
  dm_PCM.iDBType:= 0;
  if not dm_PCM.ReadServerAdress then
  begin
    Application.Terminate;
  end
  else begin
      lafCtrl_Main.SkinName:= dm_PCM.sDesign;
    try

      loc_lang.LoadFromFile(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\cxLocalLang.ini');
      loc_lang.LanguageIndex := 1;
    except
      on e:Exception do
      begin
        MessageDlg('Sprachdatei kann nicht geladen werden.', mtWarning, [mbOk], 0);
      end
    end;
    if bStyle then
    begin
      iIndex:= CheckTabExist('tshModul_2');
      if iIndex <> -1 then
      begin
        pcMain.ActivePageIndex:= iIndex;
        Screen.Cursor:= crDefault;
      end
      else begin
        AddTabsheet(pcMain,'Konfiguration',2);
        SetLength(FfrmModulConfig, Length(FfrmModulConfig) +1);
        FfrmModulConfig[High(FfrmModulConfig)] := Tfrm_Config.Create(Self);
        FfrmModulConfig[High(FfrmModulConfig)].BorderStyle := bsNone;
        FfrmModulConfig[High(FfrmModulConfig)].ALign:= ALCLient;
        FfrmModulConfig[High(FfrmModulConfig)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
        FfrmModulConfig[High(FfrmModulConfig)].Show;
        pcMain.ActivePageIndex:= pcMain.PageCount -1;
      end;
    end
    else begin
      dm_PCM.bNewLiceneCheck:= false;
      dm_pcm.CheckLizenzNew;
      if dm_PCm.bNewLiceneCheck = false then
        Application.Terminate;
      if not bAbmelden then
        dm_PCM.bLogin := dm_pcm.Autologin
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
      InitializeRights;
      LoadSQLs;
      FormResize(Self);
      WriteLog(PCM_Logname,'Programm gestartet',0);
      Caption:= PCM_Programmname;
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
      trayIC_Main.PopupMenu:= ppm_main;
      if dm_PCM.bDemo then
        Caption:=PCM_Programmname + ' - Demolizenz gültig bis ' + DateTostr(dm_PCM.dtGueltig);
    end;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_AusgabenClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_8');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
    FfrmModulFinanz[High(FfrmModulFinanz)].Execute(8,3);
  end
  else begin
    AddTabsheet(pcMain,'Finanzübersicht',8);
    SetLength(FfrmModulFinanz, Length(FfrmModulFinanz) +1);
    FfrmModulFinanz[High(FfrmModulFinanz)] := Tfrm_finanzen.Create(Self);
    FfrmModulFinanz[High(FfrmModulFinanz)].BorderStyle := bsNone;
    FfrmModulFinanz[High(FfrmModulFinanz)].ALign:= ALCLient;
    FfrmModulFinanz[High(FfrmModulFinanz)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulFinanz[High(FfrmModulFinanz)].Execute(8,3);
    FfrmModulFinanz[High(FfrmModulFinanz)].Show;
    pcMain.ActivePage.ImageIndex:= 3;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_BeendenClick(Sender: TObject);
begin
  dm_PCM.bclose:= true;
  Application.Terminate;
end;
procedure Tfrm_PCM_Main.navbrit_BenutzerClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_1');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Benutzerverwaltung',1);
    SetLength(FfrmModulBenutzer, Length(FfrmModulBenutzer) +1);
    FfrmModulBenutzer[High(FfrmModulBenutzer)] := Tfrm_User.Create(Self);
    FfrmModulBenutzer[High(FfrmModulBenutzer)].BorderStyle := bsNone;
    FfrmModulBenutzer[High(FfrmModulBenutzer)].ALign:= ALCLient;
    FfrmModulBenutzer[High(FfrmModulBenutzer)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    FfrmModulBenutzer[High(FfrmModulBenutzer)].Show;
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    pcMain.ActivePage.ImageIndex:= 1;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_EinnahmenClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_8');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
    FfrmModulFinanz[High(FfrmModulFinanz)].Execute(8,2);
  end
  else begin
    AddTabsheet(pcMain,'Finanzübersicht',8);
    SetLength(FfrmModulFinanz, Length(FfrmModulFinanz) +1);
    FfrmModulFinanz[High(FfrmModulFinanz)] := Tfrm_finanzen.Create(Self);
    FfrmModulFinanz[High(FfrmModulFinanz)].BorderStyle := bsNone;
    FfrmModulFinanz[High(FfrmModulFinanz)].ALign:= ALCLient;
    FfrmModulFinanz[High(FfrmModulFinanz)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulFinanz[High(FfrmModulFinanz)].Execute(8,2);
    FfrmModulFinanz[High(FfrmModulFinanz)].Show;
    pcMain.ActivePage.ImageIndex:= 3;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_EMailClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_6');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'E-Mails',6);
    SetLength(FfrmModulMail, Length(FfrmModulMail) +1);
    FfrmModulMail[High(FfrmModulMail)] := Tfrm_mail.Create(Self);
    FfrmModulMail[High(FfrmModulMail)].BorderStyle := bsNone;
    FfrmModulMail[High(FfrmModulMail)].ALign:= ALCLient;
    FfrmModulMail[High(FfrmModulMail)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulMail[High(FfrmModulMail)].Execute(dm_PCM.iIDBenutzerPCM);
    FfrmModulMail[High(FfrmModulMail)].Show;
    pcMain.ActivePage.ImageIndex:= 15;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_KalenderClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_4');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
    FfrmModulCalendar[High(FfrmModulCalendar)].Execute(4,1);
  end
  else begin
    AddTabsheet(pcMain,'Kalender / Stundenplan',4);
    SetLength(FfrmModulCalendar, Length(FfrmModulCalendar) +1);
    FfrmModulCalendar[High(FfrmModulCalendar)] := Tfrm_Calendar.Create(Self);
    FfrmModulCalendar[High(FfrmModulCalendar)].BorderStyle := bsNone;
    FfrmModulCalendar[High(FfrmModulCalendar)].ALign:= ALCLient;
    FfrmModulCalendar[High(FfrmModulCalendar)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulCalendar[High(FfrmModulCalendar)].Execute(4,1);
    FfrmModulCalendar[High(FfrmModulCalendar)].Show;
    pcMain.ActivePage.ImageIndex:= 10;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_KonfigurationClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_2');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Konfiguration',2);
    SetLength(FfrmModulConfig, Length(FfrmModulConfig) +1);
    FfrmModulConfig[High(FfrmModulConfig)] := Tfrm_Config.Create(Self);
    FfrmModulConfig[High(FfrmModulConfig)].BorderStyle := bsNone;
    FfrmModulConfig[High(FfrmModulConfig)].ALign:= ALCLient;
    FfrmModulConfig[High(FfrmModulConfig)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    FfrmModulConfig[High(FfrmModulConfig)].Show;
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    pcMain.ActivePage.ImageIndex:= 2;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_KontakteClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_3');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Kontakte',3);
    SetLength(FfrmModulContact, Length(FfrmModulContact) +1);
    FfrmModulContact[High(FfrmModulContact)] := Tfrm_Contact.Create(Self);
    FfrmModulContact[High(FfrmModulContact)].BorderStyle := bsNone;
    FfrmModulContact[High(FfrmModulContact)].ALign:= ALCLient;
    FfrmModulContact[High(FfrmModulContact)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    FfrmModulContact[High(FfrmModulContact)].Show;
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    pcMain.ActivePage.ImageIndex:= 11;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_MonatsuebersichtClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_8');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
    FfrmModulFinanz[High(FfrmModulFinanz)].Execute(8,1);
  end
  else begin
    AddTabsheet(pcMain,'Finanzübersicht',8);
    SetLength(FfrmModulFinanz, Length(FfrmModulFinanz) +1);
    FfrmModulFinanz[High(FfrmModulFinanz)] := Tfrm_finanzen.Create(Self);
    FfrmModulFinanz[High(FfrmModulFinanz)].BorderStyle := bsNone;
    FfrmModulFinanz[High(FfrmModulFinanz)].ALign:= ALCLient;
    FfrmModulFinanz[High(FfrmModulFinanz)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulFinanz[High(FfrmModulFinanz)].Execute(8,1);
    FfrmModulFinanz[High(FfrmModulFinanz)].Show;
    pcMain.ActivePage.ImageIndex:= 3;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_PasswortClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_7');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
    FfrmModulPWD[High(FfrmModulPWD)].Execute(7,1);
  end
  else begin
    AddTabsheet(pcMain,'Passwörter / Serialkeys',7);
    SetLength(FfrmModulPWD, Length(FfrmModulPWD) +1);
    FfrmModulPWD[High(FfrmModulPWD)] := Tfrm_password.Create(Self);
    FfrmModulPWD[High(FfrmModulPWD)].BorderStyle := bsNone;
    FfrmModulPWD[High(FfrmModulPWD)].ALign:= ALCLient;
    FfrmModulPWD[High(FfrmModulPWD)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulPWD[High(FfrmModulPWD)].Execute(7,1);
    FfrmModulPWD[High(FfrmModulPWD)].Show;
    pcMain.ActivePage.ImageIndex:= 9;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_ProgramminfoClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_10');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Programminfo',10);
    SetLength(FfrmModulAppinfo, Length(FfrmModulAppinfo) +1);
    FfrmModulAppinfo[High(FfrmModulAppinfo)] := Tfrm_PCM_InfoApp.Create(Self);
    FfrmModulAppinfo[High(FfrmModulAppinfo)].BorderStyle := bsNone;
    FfrmModulAppinfo[High(FfrmModulAppinfo)].ALign:= ALCLient;
    FfrmModulAppinfo[High(FfrmModulAppinfo)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulAppinfo[High(FfrmModulAppinfo)].Show;
    pcMain.ActivePage.ImageIndex:= 7;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_SerialsClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_7');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
    FfrmModulPWD[High(FfrmModulPWD)].Execute(7,2);
  end
  else begin
    AddTabsheet(pcMain,'Passwörter / Serialkeys',7);
    SetLength(FfrmModulPWD, Length(FfrmModulPWD) +1);
    FfrmModulPWD[High(FfrmModulPWD)] := Tfrm_password.Create(Self);
    FfrmModulPWD[High(FfrmModulPWD)].BorderStyle := bsNone;
    FfrmModulPWD[High(FfrmModulPWD)].ALign:= ALCLient;
    FfrmModulPWD[High(FfrmModulPWD)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulPWD[High(FfrmModulPWD)].Execute(7,2);
    FfrmModulPWD[High(FfrmModulPWD)].Show;
    pcMain.ActivePage.ImageIndex:= 9;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_StundenplanClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_4');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
    FfrmModulCalendar[High(FfrmModulCalendar)].Execute(4,2);
  end
  else begin
    AddTabsheet(pcMain,'Kalender / Stundenplan',4);
    SetLength(FfrmModulCalendar, Length(FfrmModulCalendar) +1);
    FfrmModulCalendar[High(FfrmModulCalendar)] := Tfrm_Calendar.Create(Self);
    FfrmModulCalendar[High(FfrmModulCalendar)].BorderStyle := bsNone;
    FfrmModulCalendar[High(FfrmModulCalendar)].ALign:= ALCLient;
    FfrmModulCalendar[High(FfrmModulCalendar)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulCalendar[High(FfrmModulCalendar)].Execute(4,2);
    FfrmModulCalendar[High(FfrmModulCalendar)].Show;
    pcMain.ActivePage.ImageIndex:= 10;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_SysteminfoClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_9');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Systeminformation',9);
    SetLength(FfrmModulSysinfo, Length(FfrmModulSysinfo) +1);
    FfrmModulSysinfo[High(FfrmModulSysinfo)] := Tfrm_PCM_System.Create(Self);
    FfrmModulSysinfo[High(FfrmModulSysinfo)].BorderStyle := bsNone;
    FfrmModulSysinfo[High(FfrmModulSysinfo)].ALign:= ALCLient;
    FfrmModulSysinfo[High(FfrmModulSysinfo)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulSysinfo[High(FfrmModulSysinfo)].Show;
    pcMain.ActivePage.ImageIndex:= 21;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_VerfuegungClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_8');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
    FfrmModulFinanz[High(FfrmModulFinanz)].Execute(8,4);
  end
  else begin
    AddTabsheet(pcMain,'Finanzübersicht',8);
    SetLength(FfrmModulFinanz, Length(FfrmModulFinanz) +1);
    FfrmModulFinanz[High(FfrmModulFinanz)] := Tfrm_finanzen.Create(Self);
    FfrmModulFinanz[High(FfrmModulFinanz)].BorderStyle := bsNone;
    FfrmModulFinanz[High(FfrmModulFinanz)].ALign:= ALCLient;
    FfrmModulFinanz[High(FfrmModulFinanz)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulFinanz[High(FfrmModulFinanz)].Execute(8,4);
    FfrmModulFinanz[High(FfrmModulFinanz)].Show;
    pcMain.ActivePage.ImageIndex:= 3;
  end;
end;
procedure Tfrm_PCM_Main.navbrit_AufgabenClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_4');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
    FfrmModulCalendar[High(FfrmModulCalendar)].Execute(4,3);
  end
  else begin
    AddTabsheet(pcMain,'Kalender / Stundenplan',4);
    SetLength(FfrmModulCalendar, Length(FfrmModulCalendar) +1);
    FfrmModulCalendar[High(FfrmModulCalendar)] := Tfrm_Calendar.Create(Self);

    FfrmModulCalendar[High(FfrmModulCalendar)].BorderStyle := bsNone;
    FfrmModulCalendar[High(FfrmModulCalendar)].ALign:= ALCLient;
    FfrmModulCalendar[High(FfrmModulCalendar)].Parent := pcMain.Pages[pcMain.PageCount -1 ];
    FfrmModulCalendar[High(FfrmModulCalendar)].Execute(4,3);
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulCalendar[High(FfrmModulCalendar)].Show;
    pcMain.ActivePage.ImageIndex:= 10;
  end;
end;

procedure Tfrm_PCM_Main.navbrit_AbmeldenClick(Sender: TObject);
begin
  Abmelden;
end;
procedure Tfrm_PCM_Main.navbrit_ChangePWClick(Sender: TObject);
var
  iIndex: integer;
begin
  iIndex:= CheckTabExist('tshModul_11');
  if iIndex <> -1 then
  begin
    pcMain.ActivePageIndex:= iIndex;
    Screen.Cursor:= crDefault;
  end
  else begin
    AddTabsheet(pcMain,'Passwort ändern',11);
    SetLength(FfrmModulChangePW, Length(FfrmModulChangePW) +1);
    FfrmModulChangePW[High(FfrmModulChangePW)] := TfrM_PCM_ChangePW.Create(Self);
    FfrmModulChangePW[High(FfrmModulChangePW)].BorderStyle := bsNone;
    FfrmModulChangePW[High(FfrmModulChangePW)].ALign:= ALCLient;
    FfrmModulChangePW[High(FfrmModulChangePW)].Parent :=  pcMain.Pages[pcMain.PageCount -1 ];
    pcMain.ActivePageIndex:= pcMain.PageCount -1;
    FfrmModulChangePW[High(FfrmModulChangePW)].Execute(true);
    FfrmModulChangePW[High(FfrmModulChangePW)].Show;
  end;
end;
procedure Tfrm_PCM_Main.pcmainCanCloseEx(Sender: TObject; ATabIndex: Integer;  var ACanClose: Boolean);
begin
  case pcmain.ActivePage.tag of
  1: frm_User.Free;
  2: frm_Config.Free;
  3:
    begin
      frm_Contact.Free;
      dm_PCM.qry_ChartAdressen.refresh;
      dm_PCM.qry_ChartKontaktart.refresh;
    end;
  4:
    begin
      frm_calendar.Free;
      dm_PCM.qry_ChartKalender.refresh;
      dm_PCM.qry_ChartAufgabe.refresh;
      dm_PCM.qry_ChartKategorie.refresh;
    end;
  5: frm_Mail.Free;
  7: frm_Password.Free;
  8: frm_finanzen.Free;
  9: frm_PCM_System.Free;
  end;
  ACanClose:= true;
  LoadSQLs;
end;

procedure Tfrm_PCM_Main.pnl_CalToDOMiddleClick(Sender: TObject);
begin
  navbrit_KalenderClick(Self);
end;

procedure Tfrm_PCM_Main.pnl_CalToDORightDblClick(Sender: TObject);
begin
  navbrit_KalenderClick(Self);
end;

procedure Tfrm_PCM_Main.pnl_CalToDOtopDblClick(Sender: TObject);
begin
  navbrit_AufgabenClick(Self);
end;

procedure Tfrm_PCM_Main.ppmbtn_BenutzerClick(Sender: TObject);
begin
  navbrit_BenutzerClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_ContactsClick(Sender: TObject);
begin
  navbrit_KontakteClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_kalenderClick(Sender: TObject);
begin
  navbrit_KalenderClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_KonfigurationClick(Sender: TObject);
begin
  navbrit_KonfigurationClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_ProgramminfoClick(Sender: TObject);
begin
  navbrit_ProgramminfoClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_SerialsClick(Sender: TObject);
begin
  navbrit_SerialsClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_SysteminfoClick(Sender: TObject);
begin
  navbrit_SysteminfoClick(Self);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_AufgabenClick(Sender: TObject);
begin
  navbrit_AufgabenClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_StundenplanClick(Sender: TObject);
begin
  navbrit_StundenplanClick(SELF);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

function ForceForegroundWindow(hwnd: THandle): boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWORD;
  ThisThreadID: DWORD;
  timeout: DWORD;
begin
  if IsIconic(hwnd) then
    ShowWindow(hwnd, SW_RESTORE);

  if GetForegroundWindow = hwnd then
    Result := true
  else
  begin
    // Windows 98/2000 doesn't want to foreground a window when some other
    // window has keyboard focus
    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or
      ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
      ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and
      (Win32MinorVersion > 0)))) then
    begin
      // Code from Karl E. Peterson, www.mvps.org/vb/sample.htm
      // Converted to Delphi by Ray Lischner
      // Published in The Delphi Magazine 55, page 16
      Result := false;
      ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow, nil);
      ThisThreadID := GetWindowThreadPRocessId(hwnd, nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, true) then
      begin
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hwnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, false);
        Result := (GetForegroundWindow = hwnd);
      end;
      if not Result then
      begin
        // Code by Daniel P. Stasinski
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0),
          SPIF_SENDCHANGE);
        BringWindowToTop(hwnd); // IE 5.5 related hack
        SetForegroundWindow(hWnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0,
          TObject(timeout), SPIF_SENDCHANGE);
      end;
    end
    else
    begin
      BringWindowToTop(hwnd); // IE 5.5 related hack
      SetForegroundWindow(hwnd);
    end;

    Result := (GetForegroundWindow = hwnd);
  end;
end;

end.


