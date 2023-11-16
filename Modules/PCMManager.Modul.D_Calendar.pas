unit PCMManager.Modul.D_Calendar;

interface

uses
  Winapi.Windows,Winapi.CommCtrl, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerAgendaView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView,
  cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor,
  cxSchedulerTreeListBrowser, cxContainer, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB,
  cxDBData, cxDBLookupComboBox, cxSpinEdit, cxTimeEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxLabel, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxGroupBox,
  cxSplitter, cxPC, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxSchedulerLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPScxCommon, dxPSCore,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxSchedulerDBStorage, dxBar,dateutils,
  cxProgressBar,strutils,cxDateUtils,cxSchedulerICalendar,
  cxExtEditRepositoryItems,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdFTP,System.UITypes, cxMemo, dxmdaset,
  cxImageComboBox, Vcl.ExtCtrls,
  cxCalendar,
  cxRichEdit, cxDBRichEdit, dxGDIPlusClasses, cxImage, Vcl.ComCtrls, Vcl.ToolWin,
  cxBarEditItem, System.ImageList, Vcl.ImgList, cxTL,
  cxTLdxBarBuiltInMenu, cxTreeView, cxInplaceContainer, cxButtonEdit, shellapi,
  cxGridCustomPopupMenu, cxGridPopupMenu, Vcl.OleServer, OutlookXP,
  REST.Types, REST.Client, REST.Authenticator.Basic, Data.Bind.Components,
  Data.Bind.ObjectScope, dxShellDialogs,PCM.Functions, dxSkinWXI;


type
  TPCMDay = record
    DaySA: string;
    DayFR: string;
    DayDO: string;
    DayMI: string;
    DayDI: string;
    DayMO: string;
    DaySO: string;
  end;

type
  TPCMDays = array of TPCMDay;

type

  TNachrichtenTyp = (ntAntrag, ntNachricht, ntAufgabe, ntTermin);

  TSearchType = (stSubject, stMessage, stSubjectMessage);

  Tfrm_Calendar = class(TForm)
    pc_Kalender: TcxPageControl;
    ts_A_kalender: TcxTabSheet;
    spl_Kalender: TcxSplitter;
    ts_C_Stundenplan: TcxTabSheet;
    grpbx_Stundenplanuebersicht: TcxGroupBox;
    edt_Stundenplan_Klasse: TcxDBTextEdit;
    edt_Stundenplan_Schule: TcxDBTextEdit;
    edt_Stundenplan_Schuljahr: TcxDBTextEdit;
    grd_Stundenplanuebersicht: TcxGrid;
    grdDBTblView_Stundenplanuebersicht: TcxGridDBTableView;
    grdDBTblView_StundenplanuebersichtSchule: TcxGridDBColumn;
    grdDBTblView_StundenplanuebersichtKlasse: TcxGridDBColumn;
    grdDBTblView_StundenplanuebersichtSchuljahr: TcxGridDBColumn;
    grdDBTblView_StundenplanuebersichtID_Benutzer: TcxGridDBColumn;
    grdlvl_Stundenplanuebersicht: TcxGridLevel;
    lbl_Stundenplan_Klasse: TcxLabel;
    lbl_Stundenplan_Schule: TcxLabel;
    lbl_Stundenplan_Schuljahr: TcxLabel;
    grpbx_Schulstunde: TcxGroupBox;
    pnl_Stundenplandetail: TcxGroupBox;
    lbl_Stundenplan_Bis: TcxLabel;
    lbl_Stundenplan_Dienstag: TcxLabel;
    lbl_Stundenplan_Donnerstag: TcxLabel;
    lbl_Stundenplan_Freitag: TcxLabel;
    lbl_Stundenplan_Mittwoch: TcxLabel;
    lbl_Stundenplan_Montag: TcxLabel;
    lbl_Stundenplan_Samstag: TcxLabel;
    lbl_Stundenplan_Von: TcxLabel;
    lucmbbx_Stundenplan_Dienstag: TcxDBLookupComboBox;
    lucmbbx_Stundenplan_Donnerstag: TcxDBLookupComboBox;
    lucmbbx_Stundenplan_Freitag: TcxDBLookupComboBox;
    lucmbbx_Stundenplan_Mittwoch: TcxDBLookupComboBox;
    lucmbbx_Stundenplan_Montag: TcxDBLookupComboBox;
    lucmbbx_Stundenplan_Samstag: TcxDBLookupComboBox;
    tiEdt_Stundenplan_Bis: TcxDBTimeEdit;
    tiEdt_Stundenplan_Von: TcxDBTimeEdit;
    grd_StundenplanFach: TcxGrid;
    grdDBTblView_Stundenplan: TcxGridDBTableView;
    grdDBTblView_StundenplanBegin: TcxGridDBColumn;
    grdDBTblView_StundenplanEnd: TcxGridDBColumn;
    grdDBTblView_StundenplanMontag: TcxGridDBColumn;
    grdDBTblView_StundenplanDienstag: TcxGridDBColumn;
    grdDBTblView_StundenplanMittwoch: TcxGridDBColumn;
    grdDBTblView_StundenplanDonnerstag: TcxGridDBColumn;
    grdDBTblView_StundenplanFreitag: TcxGridDBColumn;
    grdDBTblView_StundenplanSamstag: TcxGridDBColumn;
    grdlvl_Stundenplan: TcxGridLevel;
    brpmm_ContextCalender: TdxBarPopupMenu;
    brpmm_ImportExport: TdxBarPopupMenu;
    brpmm_EventCalender: TdxBarPopupMenu;
    brpmm_Print: TdxBarPopupMenu;
    brmgr_Kalendar: TdxBarManager;
    btn_TagesAnsicht: TdxBarButton;
    btn_WochenAnsicht: TdxBarButton;
    btn_MonatsAnsicht: TdxBarButton;
    btn_CalTerminImport: TdxBarButton;
    btn_TerminExport: TdxBarButton;
    btn_TerminNeu: TdxBarButton;
    btn_TerminToday: TdxBarButton;
    btn_Terminchange: TdxBarButton;
    btn_TerminDelete: TdxBarButton;
    schedDBStrg_Kalenderimport: TcxSchedulerDBStorage;
    qry_Stundenplan: TFDQuery;
    qry_Stundenplan_detail: TFDQuery;
    ds_Stundenplan_detail: TDataSource;
    ds_Stundenplan: TDataSource;
    schedDBStrg_Kalender: TcxSchedulerDBStorage;
    qry_SchulFaecher: TFDQuery;
    dsSchulFaecher: TDataSource;
    comp_EditRepository: TcxEditRepository;
    riEvent: TcxEditRepositoryRichItem;
    compPrint_Cal: TdxComponentPrinter;
    compPrint_CalLink1: TcxSchedulerReportLink;
    compPrint_CalLink2: TdxGridReportLink;
    idFTP_Cal: TIdFTP;
    tb_Calendar: TdxBar;
    tb_stundenplan: TdxBar;
    tb_stundenplanDetail: TdxBar;
    btn_CalNew: TdxBarLargeButton;
    brdckctrl_Kalender: TdxBarDockControl;
    btn_CalMonat: TdxBarLargeButton;
    btn_CalWoche: TdxBarLargeButton;
    btn_CalArbeitswoche: TdxBarLargeButton;
    btn_CalTag: TdxBarLargeButton;
    btn_CalJahr: TdxBarLargeButton;
    btn_CalAgenda: TdxBarLargeButton;
    btn_CalVor: TdxBarLargeButton;
    btn_CalFilter: TdxBarLargeButton;
    btn_CalImport: TdxBarLargeButton;
    btn_CalAnsicht: TdxBarLargeButton;
    btn_CalPrint: TdxBarLargeButton;
    btn_CalZurueck: TdxBarLargeButton;
    btn_CalCompleteday: TdxBarLargeButton;
    brdckctrl_Stundenplan: TdxBarDockControl;
    brdckCtrl_StundenplanFach: TdxBarDockControl;
    btn_StundenplanNew: TdxBarLargeButton;
    btn_StundenplanPrint: TdxBarLargeButton;
    btn_StundenplanDelete: TdxBarLargeButton;
    btn_StundenplanCancel: TdxBarLargeButton;
    btn_StundenplanSave: TdxBarLargeButton;
    btn_StundeNew: TdxBarLargeButton;
    btn_StundeDelete: TdxBarLargeButton;
    btn_StundeCancel: TdxBarLargeButton;
    btn_StundeSave: TdxBarLargeButton;
    ts_B_Aufgaben: TcxTabSheet;
    brdckctrl_Aufgaben: TdxBarDockControl;
    tb_Aufgaben: TdxBar;
    cxGrid1: TcxGrid;
    tvNachrichten: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Label2: TLabel;
    Label5: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label6: TLabel;
    Label8: TLabel;
    edtJiraTicketNr: TcxDBTextEdit;
    btnGoToJira: TcxButton;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5DBTableView1ID: TcxGridDBColumn;
    cxGrid5DBTableView1ID_Adr_Korrespondenz: TcxGridDBColumn;
    cxGrid5DBTableView1Dateiname: TcxGridDBColumn;
    cxGrid5DBTableView1DateinameSave: TcxGridDBColumn;
    cxGrid5Level1: TcxGridLevel;
    cxDBMemo1: TcxDBRichEdit;
    cxSplitter4: TcxSplitter;
    cxGroupBox3: TcxGroupBox;
    cxImage1: TcxImage;
    pnlDetails: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    pAnhaenge: TcxGroupBox;
    Image1: TcxImage;
    lTypeName: TcxLabel;
    cxGroupBox11: TcxGroupBox;
    cxSplitter1: TcxSplitter;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox5: TcxGroupBox;
    btn_NewTask: TdxBarLargeButton;
    btn_ReadJob: TdxBarLargeButton;
    btn_DoneJob: TdxBarLargeButton;
    edSuche: TcxButtonEdit;
    btn_JobUndone: TdxBarLargeButton;
    btn_JobChange: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    cxTreeList1: TcxTreeList;
    cxTreeList1Column1: TcxTreeListColumn;
    brpmm_Aufgaben: TdxBarPopupMenu;
    pmmbtn_CalNew: TdxBarButton;
    pmmbtn_JobNew: TdxBarButton;
    pmmbtn_MessageNew: TdxBarButton;
    tvNachrichtenCaption: TcxGridDBColumn;
    tvNachrichtenLocation: TcxGridDBColumn;
    tvNachrichtenID: TcxGridDBColumn;
    tvNachrichtenID_ADR_Wurzel: TcxGridDBColumn;
    tvNachrichtenID_Ansprechpartner: TcxGridDBColumn;
    tvNachrichtenTyp: TcxGridDBColumn;
    tvNachrichtenGesendetAm: TcxGridDBColumn;
    tvNachrichtenStatus: TcxGridDBColumn;
    cxDBTextEdit4: TcxDBLookupComboBox;
    cbxAns: TcxDBLookupComboBox;
    tvAuf: TcxGridDBTableView;
    tvAufID: TcxGridDBColumn;
    tvAufCaption: TcxGridDBColumn;
    tvAufLocation: TcxGridDBColumn;
    tvAufID_ADR_Wurzel: TcxGridDBColumn;
    tvAufID_Ansprechpartner: TcxGridDBColumn;
    tvAufTyp: TcxGridDBColumn;
    tvAufJira_Ticket: TcxGridDBColumn;
    tvAufID_IC_Prioritaeten: TcxGridDBColumn;
    tvAufID_IC_AufgabenArten: TcxGridDBColumn;
    tvAufGesendetAm: TcxGridDBColumn;
    tvAufAufgabenDauer: TcxGridDBColumn;
    tvAufStatus: TcxGridDBColumn;
    tvAufStartdatum: TcxGridDBColumn;
    tvAufStartZeit: TcxGridDBColumn;
    tvAufEndedatum: TcxGridDBColumn;
    tvAufEndeZeit: TcxGridDBColumn;
    tvAufInTagen: TcxGridDBColumn;
    btn_NewEvent: TdxBarLargeButton;
    btn_NewMessage: TdxBarLargeButton;
    tvNachrichtenJira_Ticket: TcxGridDBColumn;
    tvNachrichtenGelesenAm: TcxGridDBColumn;
    tvAufStart: TcxGridDBColumn;
    tvAufFinish: TcxGridDBColumn;
    cxTreeList1Column2: TcxTreeListColumn;
    btn_JobsDone: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pm_Einnahmen: TcxGridPopupMenu;
    btn_JobsRefresh: TdxBarLargeButton;
    btn_CalImportOutlook: TdxBarButton;
    btn_CalExporttoOutlook: TdxBarButton;
    btn_JobsImportExportAufgaben: TdxBarLargeButton;
    pmmbtn_YearView: TdxBarButton;
    pmmbtn_Agenda: TdxBarButton;
    brpmm_ImportExportAufgaben: TdxBarPopupMenu;
    pmmbtn_JobsImportOutlook: TdxBarButton;
    pmmbtn_JobsExportOutlook: TdxBarButton;
    Outlook: TOutlookApplication;
    rstreq_main: TRESTRequest;
    rstClt_Main: TRESTClient;
    rstrsp_Main: TRESTResponse;
    httpBasAut_Main: THTTPBasicAuthenticator;
    btn_CalRefresh: TdxBarLargeButton;
    pnl_Design: TcxGroupBox;
    qWF_Nachrichten_Anhaenge: TFDQuery;
    qWF_Nachrichten_AnhaengeID: TFDAutoIncField;
    qWF_Nachrichten_AnhaengeID_IC_Nachrichten: TIntegerField;
    dsWF_Nachrichten_Anhaenge: TDataSource;
    SaveDialog1: TdxSaveFileDialog;
    qWF_Nachrichten_AnhaengeDateiname: TStringField;
    qWF_Nachrichten_AnhaengeDateinameSave: TStringField;
    sched_Kalender: TcxScheduler;
    procedure btn_CalNewClick(Sender: TObject);
    procedure btn_CalTagClick(Sender: TObject);
    procedure btn_CalArbeitswocheClick(Sender: TObject);
    procedure btn_CalWocheClick(Sender: TObject);
    procedure btn_CalMonatClick(Sender: TObject);
    procedure btn_CalJahrClick(Sender: TObject);
    procedure btn_CalArbeitszeitClick(Sender: TObject);
    procedure btn_CalZurueckClick(Sender: TObject);
    procedure btn_CalVorClick(Sender: TObject);
    procedure btn_CalFilterClick(Sender: TObject);
    procedure btn_CalAnsichtClick(Sender: TObject);
    procedure btn_TagesAnsichtClick(Sender: TObject);
    procedure btn_MonatsAnsichtClick(Sender: TObject);
    procedure btn_WochenAnsichtClick(Sender: TObject);
    procedure btn_CalTerminImportClick(Sender: TObject);
    procedure btn_TerminExportClick(Sender: TObject);
    procedure btn_TerminNeuClick(Sender: TObject);
    procedure btn_TerminTodayClick(Sender: TObject);
    procedure btn_TerminchangeClick(Sender: TObject);
    procedure btn_TerminDeleteClick(Sender: TObject);
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure qry_StundenplanAfterScroll(DataSet: TDataSet);
    procedure sch_KalenderAfterSizingEvent(Sender: TcxCustomScheduler;  AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Accept: Boolean);
    procedure schedDBStrg_KalenderEventModified(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure ssKalenderRemindersAlertReminder(Sender: TcxSchedulerReminders; AReminder: TcxSchedulerReminder; var AHandled: Boolean);
    procedure ssKalenderRemindersDismissReminder(Sender: TcxSchedulerReminders; AReminder: TcxSchedulerReminder; var AHandled: Boolean);
    procedure ssKalenderRemindersOpenEvent(Sender: TcxSchedulerReminders; AEvent: TcxSchedulerControlEvent);
    procedure schedDBStrg_KalenderEventInserted(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure btn_StundenplanNewClick(Sender: TObject);
    procedure btn_StundenplanSaveClick(Sender: TObject);
    procedure btn_StundenplanCancelClick(Sender: TObject);
    procedure btn_StundenplanDeleteClick(Sender: TObject);
    procedure btn_StundenplanPrintClick(Sender: TObject);
    procedure btn_StundeDeleteClick(Sender: TObject);
    procedure btn_StundeCancelClick(Sender: TObject);
    procedure btn_StundeSaveClick(Sender: TObject);
    procedure btn_StundeNewClick(Sender: TObject);
    procedure sched_KalenderClick(Sender: TObject);
    procedure sched_KalenderCustomDrawDayHeader(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDayHeaderCellViewInfo; var ADone: Boolean);
    procedure sched_KalenderDblClick(Sender: TObject);
    procedure sched_KalenderBeforeDragEvent(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Allow: Boolean);
    procedure sched_KalenderBeforeSizingEvent(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Allow: Boolean);
    procedure sched_KalenderCustomDrawEvent(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo; var ADone: Boolean);
    procedure sched_KalenderKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pc_KalenderClick(Sender: TObject);
    procedure sched_KalenderGetEventHintText(Sender: TObject; AEvent: TcxSchedulerControlEvent; var AText: string);
    procedure grdDBTblView_StundenplanMontagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanDienstagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanBeginCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanMittwochCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanDonnerstagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanFreitagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanSamstagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure sched_KalenderGetEventEditProperties(Sender: TObject;  AEvent: TcxSchedulerControlEvent; var AProperties: TcxCustomEditProperties);
    procedure btn_CalAgendaClick(Sender: TObject);
    procedure btnGoToJiraClick(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edSucheEnter(Sender: TObject);
    procedure edSucheExit(Sender: TObject);
    procedure edSuchePropertiesChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cxTreeList1Click(Sender: TObject);
    procedure pmmbtn_CalNewClick(Sender: TObject);
    procedure btn_NewTaskClick(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure tvAufCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tvAufDblClick(Sender: TObject);
    procedure btn_JobChangeClick(Sender: TObject);
    procedure tvNachrichtenCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;var ADone: Boolean);
    procedure tvNachrichtenDblClick(Sender: TObject);
    procedure btn_NewMessageClick(Sender: TObject);
    procedure btn_NewEventClick(Sender: TObject);
    procedure btn_ReadJobClick(Sender: TObject);
    procedure btn_DoneJobClick(Sender: TObject);
    procedure btn_JobsDoneClick(Sender: TObject);
    procedure btn_JobUndoneClick(Sender: TObject);
    procedure btn_JobsRefreshClick(Sender: TObject);
    procedure pmmbtn_YearViewClick(Sender: TObject);
    procedure pmmbtn_AgendaClick(Sender: TObject);
    procedure btn_CalImportOutlookClick(Sender: TObject);
    procedure pmmbtn_JobsImportOutlookClick(Sender: TObject);
    function GetRecurrenceInfoOutlook(AArt,AInterval,ADayOfWeeks,AAnzahlWiederholung:integer;AWiederholungStart,AWiederholungEnde,AInstanz:string): string;
    procedure btn_CalRefreshClick(Sender: TObject);
    procedure btn_CalExporttoOutlookClick(Sender: TObject);
    procedure pmmbtn_JobsExportOutlookClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure tvAufFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure qWF_Nachrichten_AnhaengeAfterScroll(DataSet: TDataSet);
    procedure tvNachrichtenFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private-Deklarationen }
//    rep : TDmReports;
    FKalenderDateButton : Boolean;
    defaultLabelColor: integer;
    defaultFontColor: integer;
    iCurrTableview: integer;
    sColordef,sFontcolordef: string;
    SaveGridViewAufgaben,SaveGridViewNachrichten,
    SaveGridViewStundenplan,SaveGridViewStundenplanDetail: TSavedGridView;
    procedure SetGridViews(Show:boolean);
    procedure OpenEvent(ID_kalender: Integer; bReminder: Boolean);
    procedure AddOutlookEvents(AuserPriv,AuserGes: string);
    procedure AddOutlookToDo(AuserPriv,AuserGes: string);
    procedure GetOutlookEvents(AUser: string);
    procedure GetOutlookToDo(AUser: string);
//    procedure AddAndGet;
    procedure NachrichtenAnhaengeLaden(ID_IC_Nachrichten: Integer);
    procedure OpenAttachement;
    procedure saveAttachement;
    function GetAttachmentFilename(s: string): string;
  public
    { Public-Deklarationen }

    bol_allday: boolean;
    bol_VollBildCal: boolean;
    iCopyEventId: Integer;
    iTag,iActiveTab: integer;
    RecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
    FSearchType : TSearchType;
    FResult: boolEan;
    function SearchTypeToStr(ASearchType : TSearchType) : String;
    function copyEvent : boolean;
    function GetRecurrence(var Rule, Start:  string) : Ansistring;
    function cxMyGetRecurrenceDescriptionString(ARecurrenceInfo: TcxSchedulerEventRecurrenceInfo; AFullDescription: Boolean = False): string;
    procedure SearchBoxSetStyle();
    procedure pasteEvent(iEventId : integer);
    procedure OpenData;
    procedure InitializeRights;
    procedure SetButtons;
    procedure ReadICSAutomatic;
    procedure WriteICSAutomatic;
    procedure RefreshCalender;
    procedure SearchDoSearch(ASearchString : String);
    procedure RefreshTerminundAUfgaben;
    procedure Execute(ATag,AActiveTab: integer);

  end;


var
  frm_Calendar: Tfrm_Calendar;


implementation

{$R *.dfm}

uses  PCM.Main,
      PCMManager.Modul.D_Calandar.Neu,
      PCMManager.Modul.D_Calendar.Filter,
      PCMManager.Modul.D_Calendar.Import,
      PCM.Functions.Synch.Wait,
      PCMManager.Helper.Calendar.Ical,
      PCM.Data;

function Tfrm_Calendar.GetRecurrenceInfoOutlook(AArt,AInterval,ADayOfWeeks,AAnzahlWiederholung:integer;AWiederholungStart,AWiederholungEnde,AInstanz:string): string;
var
  iTage: integer;
  idow: integer;
  arrDays: TPCMDays;
  iJahr,iMonat,iTag,iStunde,iMinute,iSekunde,iMSekunde: Word;
  dtWiederholungEnde: TDateTime;
begin
  Result:= '';
  dtWiederholungEnde:= StrToDateTime(AWiederholungEnde);
  DecodeDate(dtWiederholungEnde,iJahr,iMonat,iTag);
  DecodeTime(dtWiederholungEnde,iStunde,iMinute,iSekunde,iMSekunde);
  if iStunde = 0 then
    iStunde := 23;
  if iMinute = 0 then
    iMinute := 59;
  if iSekunde = 0 then
    iSekunde:= 59;
  case AArt of
  0:
    begin
      Result:= 'RRULE:FREQ=DAILY';
      // Prüfen auf Interval
      if AInterval > 1 then
        Result:= Result + ';INTERVAL=' + IntToStr(AInterval);
      // Prüfen auf Ende
      if AWiederholungEnde <> '31.12.4500 23:59:00' then
        Result:= Result + ';COUNT=' + IntToStr(AAnzahlWiederholung) + ';UNTIL=' +  IntToStr(iJahr) + IntToStr(iMonat) + IntToStr(iTag) + 'T' + IntToStr(iStunde) + IntToStr(iMinute) + IntToStr(iSekunde) + 'Z';
    end;
  1:
    begin
      idow:= ADayOfWeeks;
      if ADayOfWeeks = 62 then
      begin
        ADayOfWeeks:= 61;

      end;
      if ADayOfWeeks = 62 then
      begin
        Result:= 'FREQ=DAILY;INTERVAL=1';
      end
      else begin
        SetLength(arrDays,Length(arrDays) + 1);
        Result:= 'FREQ=WEEKLY';
        if AInterval > 1 then
          Result:= Result + ';INTERVAL=' + IntToStr(AInterval);
        // Prüfen auf Ende
        if AWiederholungEnde <> '31.12.4500 23:59:00' then
          Result:= Result + ';COUNT=' + IntToStr(AAnzahlWiederholung) + ';UNTIL=' +  IntToStr(iJahr) + IntToStr(iMonat) + IntToStr(iTag) + 'T' + IntToStr(iStunde) + IntToStr(iMinute) + IntToStr(iSekunde) + 'Z';

        Result:= Result + ';BYDAY=';
        ADayOfWeeks:= idow;
        // Prüfung auf Samstag
        if ADayOfWeeks>= 64 then
        begin
          iTage := ADayOfWeeks - 64;
          arrDays[High(arrDays)].DaySA:= 'SA';
        end
        else
        begin
          itage:= ADayOfWeeks;
          arrDays[High(arrDays)].DaySA:= '';
        end;
        // Prüfung auf Freitag
        if itage >=32 then
        begin
          itage := itage - 32;
          arrDays[High(arrDays)].DayFR:= 'FR';
        end
        else
        begin
          arrDays[High(arrDays)].DayFR:= '';
        end;
        // Prüfung auf Donnerstag
        if itage >=16 then
        begin
          itage := itage - 16;
          arrDays[High(arrDays)].DayDO:= 'TH';
        end
        else
        begin
          arrDays[High(arrDays)].DayDO:= '';
        end;
        // Prüfung auf Mittwoch
        if itage >=8 then
        begin
          itage := itage - 8;
          arrDays[High(arrDays)].DayMI:= 'WE';
        end
        else
        begin
          arrDays[High(arrDays)].DayMI:= '';
        end;
        // Prüfung auf Dienstag
        if itage >= 4 then
        begin
          itage := itage - 4;
          arrDays[High(arrDays)].DayDI:= 'TU';
        end
        else
        begin
          arrDays[High(arrDays)].DayDI:= '';
        end;
        // Prüfung auf Montag
        if itage >= 2 then
        begin
          itage := itage - 2;
          arrDays[High(arrDays)].DayMO:= 'MO';
        end
        else
        begin
//                itage:= ADayOfWeeks;
          arrDays[High(arrDays)].DayMO:= '';
        end;
        // Prüfung auf Sonntag
        if itage >= 1 then
        begin
//          itage := itage - 1;
          arrDays[High(arrDays)].DaySO:= 'SU';
        end
        else
        begin
//                itage:= ADayOfWeeks;
          arrDays[High(arrDays)].DaySO:= '';
        end;
        if arrDays[High(arrDays)].DaySO <> '' then
          Result:= Result +'SU,';
        if arrDays[High(arrDays)].DayMO <> '' then
          Result:= Result +'MO,';
        if arrDays[High(arrDays)].DayDI <> '' then
          Result:= Result +'TU,';
        if arrDays[High(arrDays)].DayMI <> '' then
          Result:= Result +'WE,';
        if arrDays[High(arrDays)].DayDO <> '' then
          Result:= Result +'TH,';
        if arrDays[High(arrDays)].DayFR <> '' then
          Result:= Result +'FR,';
        if arrDays[High(arrDays)].DaySA <> '' then
          Result:= Result +'SA,';
        Result:= Copy(Result,1,Length(Result) -1);
      end;
    end;
  2:
  begin
    SetLength(arrDays,Length(arrDays) + 1);
    Result:= 'FREQ=MONTHLY';
    if AInterval > 1 then
      Result:= Result + ';INTERVAL=' + IntToStr(AInterval);
    // Prüfen auf Ende
    if AWiederholungEnde <> '31.12.4500 23:59:00' then
      Result:= Result + ';COUNT=' + IntToStr(AAnzahlWiederholung) + ';UNTIL=' +  IntToStr(iJahr) + IntToStr(iMonat) + IntToStr(iTag) + 'T' + IntToStr(iStunde) + IntToStr(iMinute) + IntToStr(iSekunde) + 'Z';
    Result:= Result + ';BYMONTHDAY=' + IntToStr(StrToInt(Copy(AWiederholungStart,1,2)));
  end;
  3:
  begin
    SetLength(arrDays,Length(arrDays) + 1);
    Result:= 'FREQ=MONTHLY';
    if AInterval > 1 then
      Result:= Result + ';INTERVAL=' + IntToStr(AInterval);
    // Prüfen auf Ende
    if AWiederholungEnde <> '31.12.4500 23:59:00' then
      Result:= Result + ';COUNT=' + IntToStr(AAnzahlWiederholung) + ';UNTIL=' +  IntToStr(iJahr) + IntToStr(iMonat) + IntToStr(iTag) + 'T' + IntToStr(iStunde) + IntToStr(iMinute) + IntToStr(iSekunde) + 'Z';


    // Prüfung auf Samstag
    if ADayOfWeeks <>  127 then
    begin
      Result:= Result + ';BYDAY=';
      if ADayOfWeeks>= 64 then
      begin
        iTage := ADayOfWeeks - 64;
        arrDays[High(arrDays)].DaySA:= 'SA';
      end
      else
      begin
        itage:= ADayOfWeeks;
        arrDays[High(arrDays)].DaySA:= '';
      end;
      // Prüfung auf Freitag
      if itage >=32 then
      begin
        itage := itage - 32;
        arrDays[High(arrDays)].DayFR:= 'FR';
      end
      else
      begin
        arrDays[High(arrDays)].DayFR:= '';
      end;
      // Prüfung auf Donnerstag
      if itage >=16 then
      begin
        itage := itage - 16;
        arrDays[High(arrDays)].DayDO:= 'TH';
      end
      else
      begin
        arrDays[High(arrDays)].DayDO:= '';
      end;
      // Prüfung auf Mittwoch
      if itage >=8 then
      begin
        itage := itage - 8;
        arrDays[High(arrDays)].DayMI:= 'WE';
      end
      else
      begin
        arrDays[High(arrDays)].DayMI:= '';
      end;
      // Prüfung auf Dienstag
      if itage >= 4 then
      begin
        itage := itage - 4;
        arrDays[High(arrDays)].DayDI:= 'TU';
      end
      else
      begin
        arrDays[High(arrDays)].DayDI:= '';
      end;
      // Prüfung auf Montag
      if itage >= 2 then
      begin
        itage := itage - 2;
        arrDays[High(arrDays)].DayMO:= 'MO';
      end
      else
      begin
  //                itage:= ADayOfWeeks;
        arrDays[High(arrDays)].DayMO:= '';
      end;
      // Prüfung auf Sonntag
      if itage >= 1 then
      begin
//        itage := itage - 1;
        arrDays[High(arrDays)].DaySO:= 'SU';
      end
      else
      begin
  //                itage:= ADayOfWeeks;
        arrDays[High(arrDays)].DaySO:= '';
      end;
      if arrDays[High(arrDays)].DaySO <> '' then
        Result:= Result +'SU,';
      if arrDays[High(arrDays)].DayMO <> '' then
        Result:= Result +'MO,';
      if arrDays[High(arrDays)].DayDI <> '' then
        Result:= Result +'TU,';
      if arrDays[High(arrDays)].DayMI <> '' then
        Result:= Result +'WE,';
      if arrDays[High(arrDays)].DayDO <> '' then
        Result:= Result +'TH,';
      if arrDays[High(arrDays)].DayFR <> '' then
        Result:= Result +'FR,';
      if arrDays[High(arrDays)].DaySA <> '' then
        Result:= Result +'SA,';
      Result:= Copy(Result,1,Length(Result) -1);
    end;
    if AInstanz = '5' then
      Result:= Result + ';BYSETPOS=-1'
    else
      Result:= Result + ';BYSETPOS=' + AInstanz;
  end;
  5:
  begin
    SetLength(arrDays,Length(arrDays) + 1);
    Result:= 'FREQ=YEARLY';
//    if AInterval > 1 then
//      Result:= Result + ';INTERVAL=' + IntToStr(AInterval);
    // Prüfen auf Ende
    if AWiederholungEnde <> '31.12.4500 23:59:00' then
      Result:= Result + ';COUNT=' + IntToStr(AAnzahlWiederholung) + ';UNTIL=' +  IntToStr(iJahr) + IntToStr(iMonat) + IntToStr(iTag) + 'T' + IntToStr(iStunde) + IntToStr(iMinute) + IntToStr(iSekunde) + 'Z';
    Result:= Result + ';BYMONTH=' + IntToStr(StrToInt(Copy(AWiederholungStart,4,2))) + ';BYMONTHDAY=' + IntToStr(StrToInt(Copy(AWiederholungStart,1,2)));
  end;
  6:
  begin
    SetLength(arrDays,Length(arrDays) + 1);
    Result:= 'FREQ=YEARLY';
//    if AInterval > 1 then
//      Result:= Result + ';INTERVAL=' + IntToStr(AInterval);
    // Prüfen auf Ende
    if AWiederholungEnde <> '31.12.4500 23:59:00' then
      Result:= Result + ';COUNT=' + IntToStr(AAnzahlWiederholung) + ';UNTIL=' +  IntToStr(iJahr) + IntToStr(iMonat) + IntToStr(iTag) + 'T' + IntToStr(iStunde) + IntToStr(iMinute) + IntToStr(iSekunde) + 'Z';
    Result:= Result + ';BYMONTH=' + IntToStr(StrToInt(Copy(AWiederholungStart,4,2))) + ';BYMONTHDAY=' + IntToStr(StrToInt(Copy(AWiederholungStart,1,2)));
  end;
  end;
end;
procedure Tfrm_Calendar.GetOutlookEvents(AUser: string);
const
  olFolderCalendars = $00000009;
var
  ASnot,asmem: Ansistring;
  sDateBegin, sDateEnd:string;
  sTagBegin, sMonatBegin, sJahrBegin: String;
  sTagEnd, sMonatEnd, sJahrEnd: String;

  sStundeBegin, sMinuteBegin, sSekundeBegin: String;
  sStundeEnd, sMinuteEnd, sSekundeEnd: String;
  asBeschreibung: Ansistring;
  sReminder: string;
  sReminderDate: string;
  iReminderMinutes: integer;
  iOptions:integer;
  sGanzerTag:string;
  sErinnerung: string;
  iErinnerungVor: integer;
  sFontColor: string;
  asRecurrence: Ansistring;
  datTimTermin,dtNow: TDateTime;
//  strlstICal: TStringList;
	iID_Kontakt,iEventtpye: integer;
  swiederholungtext: String;
  DTSTART,DTEND,DESCRIPTION,location,Rule,SUMMARY: string;

  objOwner,olvarTermine,Termin, olvarNameSpace: olevariant;
  i,iTag: integer;
begin
  dm_PCM.qry_work.sql.text:= 'SELECT Adresse_Firma FROM manager_kalender_optionen Where ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_work.Open;
  iID_Kontakt:= dm_PCM.qry_work.FieldByName('Adresse_Firma').AsInteger;
  dm_PCM.qry_work.CLose;
  asRecurrence:='';
  sErinnerung:= 'true';
  iErinnerungVor:= 0;
  iTag:= 0;
  try
    Outlook.connect;
  except
    on e: system.sysutils.Exception do
    begin
        Writelog(PCM_Logname,'Kontakte: Verbindung mit Outlook kann nicht hergestellt werden. Grund: ' + e.Message, 2);
      exit;
    end;
  end;
  Writelog(PCM_Logname, 'Kontakte: Namespace ermitteln', 0);
  try
    olvarNameSpace := Outlook.GetNameSpace('MAPI');
//    olvarNameSpace.Logon('Outlook','NhJh2084+2',True,False);
  except
    on e: system.sysutils.Exception do
    begin
      Writelog(PCM_Logname,'Kontakte: Namespace konnt nicht ermittelt werden. Grund: ' + e.Message, 2);
      exit;
    end;
  end;
  Writelog(PCM_Logname, 'Kontakte: ContactsRoot ermitteln: ' + Auser, 0);
  try
    objOwner := olvarNameSpace.CreateRecipient(AUser);
    olvarTermine := olvarNameSpace.GetSharedDefaultFolder(objOwner,olFolderCalendars);
    ShowWaitForm(TForm(Self), PWideChar('Termine aus Outlook importieren'), olvarTermine.items.count, ClientWidth, Height);
    for i := 1 to olvarTermine.items.count do
    begin
      Termin:= olvarTermine.items.item[i];
      SUMMARY:=  Termin.Subject;
      if SUMMARY = 'Ticketanfrage Di Blasi - falls heute zu wenig Zeit' then ShowMessage('2');

      WaitFormStep;
      Rule:='';
      DTSTART:=  DateTimeToStr(Termin.Start);
      DTEND:= DateTimeToStr(Termin.END);
      DESCRIPTION:= Termin.Body;
      location:= Termin.Location;
      if Integer(Termin.IsRecurring) = -1 then
        Rule:= GetRecurrenceInfoOutlook(Integer(Termin.GetRecurrencePattern.RecurrenceType),
                                               Integer(Termin.GetRecurrencePattern.Interval),
                                               Integer(Termin.GetRecurrencePattern.DayOfWeekMask),
                                               Integer(Termin.GetRecurrencePattern.Occurrences),
                                               Termin.GetRecurrencePattern.PatternStartDate,
                                               Termin.GetRecurrencePattern.PatternEndDate,
                                               Termin.GetRecurrencePattern.instance);

      if Length(DTSTART) < 12 then
      begin
        sJahrBegin:=Copy(DTSTART,7,4);
        sMonatBegin:=Copy(DTSTART,4,2);
        sTagBegin:=Copy(DTSTART,1,2);
        sJahrEnd:= Copy(DTEND,7,4);
        sMonatEnd:=Copy(DTEND,4,2);
        sTagEnd:=Copy(DTEND,1,2);
        if sErinnerung = 'true' then
        begin
          sReminder:= 'true';
          sReminderDate:= DateTimeToStr(IncMinute(StrToDateTime(sTagBegin +'.' + sMonatBegin + '.' + sJahrBegin + ' 00:00:00'),iErinnerungVor *-1));
          sReminderDate:= Copy(sReminderDate,7,4) + '-' + Copy(sReminderDate,4,2) + '-' + Copy(sReminderDate,1,2) + ' ' + Copy(sReminderDate,12,8);
//            iReminderMinutes:= iErinnerungVor;
//            sStundeBegin:=
//            sMinuteBegin
//            sSekundeBegin
//            iOptions:= 6;
          if Length(sReminderDate) < 12 then
            datTimTermin := EncodeDateTime(StrToInt(sJahrBegin),StrToInt(sMonatBegin),StrToInt(sTagBegin),0,0,0,0)
          else
            datTimTermin := EncodeDateTime(StrToInt(sJahrBegin),StrToInt(sMonatBegin),StrToInt(sTagBegin),StrToInt(sStundeBegin),StrToInt(sMinuteBegin),StrToInt(sSekundeBegin),0);
          dtNow:= now();
          if datTimTermin < dtNow then
          begin
            sReminder:= 'false';
            sReminderDate:= 'NULL';
//              iReminderMinutes:= 0;
//              iOptions:= 2;
          end;
        end
        else begin
          sReminder:= 'false';
          sReminderDate:= 'NULL';
//            iReminderMinutes:= 0;
//            iOptions:= 2;
        end;
        sDateBegin:= sJahrBegin + '-' + sMonatBegin + '-' + sTagBegin + ' 00:00:00';
        sDateEnd:= sJahrEnd + '-' + sMonatEnd + '-' + sTagEnd + ' 00:00:00';
        sGanzerTag:= 'true';
      end
      else begin
        sJahrBegin:=Copy(DTSTART,7,4);
        sMonatBegin:=Copy(DTSTART,4,2);
        sTagBegin:=Copy(DTSTART,1,2);
        sJahrEnd:= Copy(DTEND,7,4);
        sMonatEnd:=Copy(DTEND,4,2);
        sTagEnd:=Copy(DTEND,1,2);

        sStundeBegin:= Copy(DTSTART,12,2);
        sMinuteBegin:= Copy(DTSTART,15,2);
        sSekundeBegin:= Copy(DTSTART,18,2);
        sStundeEnd:= Copy(DTEND,12,2);
        sMinuteEnd:= Copy(DTEND,15,2);
        sSekundeEnd:= Copy(DTEND,18,2);
        sDateBegin:= sJahrBegin + '-' + sMonatBegin + '-' + sTagBegin + ' ' + sStundeBegin + ':' + sMinuteBegin + ':' + sSekundeBegin;
        sDateEnd:= sJahrEnd + '-' + sMonatEnd + '-' + sTagEnd + ' ' + sStundeEnd + ':' + sMinuteEnd + ':' + sSekundeEnd;
      end;
      if sErinnerung = 'true' then
      begin
        sReminder:= 'true';
        sReminderDate:= DateTimeToStr(IncMinute(StrToDateTime(
        sTagBegin +'.' + sMonatBegin + '.' + sJahrBegin + ' '
        + sStundeBegin + ':' + sMinuteBegin + ':' + sSekundeBegin),iErinnerungVor *-1));
        sReminderDate:= Copy(sReminderDate,7,4) + '-' + Copy(sReminderDate,4,2) + '-'
        + Copy(sReminderDate,1,2) + ' ' + Copy(sReminderDate,12,8);
//          iReminderMinutes:= iErinnerungVor;
//          iOptions:= 6;

        if Length(sReminderDate) < 12 then
          datTimTermin := EncodeDateTime(StrToInt(sJahrBegin),StrToInt(sMonatBegin),StrToInt(sTagBegin),0,0,0,0)
        else
          datTimTermin := EncodeDateTime(StrToInt(sJahrBegin),StrToInt(sMonatBegin),StrToInt(sTagBegin),StrToInt(sStundeBegin),StrToInt(sMinuteBegin),StrToInt(sSekundeBegin),0);
        dtNow:= now();
        if datTimTermin < dtNow then
        begin
          sReminder:= 'false';
          sReminderDate:= 'NULL';
          iReminderMinutes:= 0;
          iOptions:= 2;
        end
        else begin
          sReminder:= 'false';
          sReminderDate:= 'NULL';
          iReminderMinutes:= 0;
          iOptions:= 2;
        end;
        sGanzerTag:= 'false';
//
        asBeschreibung := AnsiString(ReplaceStr(ReplaceStr(String(DESCRIPTION),String(ASnot),String(slinebreak)),String(asmem),','));
        if Length(asBeschreibung) < 4 then
          asBeschreibung:= '-';

        if Location = '97725\, Elfershausen\, Adolf-Kolping-Str. 11' then
        begin
          Location:= 'im Büro'
        end
        else begin
          if (Location = '\, \, ') or (Location = 'ohne Angabe') then
          begin
            Location:= 'sonstiges';
          end;
        end;
        if Location = 'beim Kunden' then
        begin
          sColordef := IntToStr(12566527);
          sFontcolordef := sFontColor;
        end;
        iEventtpye:= 0;
        if Rule <> '' then
        begin
          iEventtpye:= 1;

          asRecurrence:= GetRecurrence(Rule,sDateBegin);
          swiederholungtext:=Rule; //String(asRecurrence);
          sReminder:= 'true';
          iOptions:= 6;
          sReminderDate:= sDateBegin;
        end
        else begin
          asRecurrence:='';
          swiederholungtext:='';
        end;
        if sReminderDate = 'NULL' then
        begin
          dm_PCM.qry_work.SQL.Text:='Insert into manager_Kalender (ID_IC_Aufgabenarten,ID_IC_Prioritaeten, Aufgabenstatus,ID_ADR_Wurzel,ID_Ansprechpartner,Typ,EventType,Caption,Location,Message,'
          + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
          + 'ReminderMinutesBeforeStart,ID_Benutzer,Kalendername,CompleteDay,wiederholung_text,LabelColor,FontColor) Values ' +
          '(4,1,0,:ID_ADR_Wurzel,:ID_Ansprechpartner,2,:Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
          + 'NULL,0,:ID,:Kalender,:ganzerTag,:wiederholung_text,:LabelColor,:FontColor)';
        end
        else begin
          dm_PCM.qry_work.SQL.Text:='Insert into manager_Kalender (ID_IC_Prioritaeten,ID_IC_Aufgabenarten,Aufgabenstatus,ID_ADR_Wurzel,ID_Ansprechpartner,Typ,EventType,Caption,Location,Message,'
          + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
          + 'ReminderMinutesBeforeStart,ID_Benutzer,Kalendername,CompleteDay,wiederholung_text,LabelColor,FontColor) Values ' +
          '(4,1,0,:ID_ADR_Wurzel,:ID_Ansprechpartner,2,:Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
          + ':ReminderDate,:ReminderMinutes,:ID,:Kalender,:ganzerTag,:wiederholung_text,:LabelColor,:FontColor)';
          dm_PCM.qry_work.ParamByName('ReminderDate').AsString:= sReminderDate;
          dm_PCM.qry_work.ParamByName('ReminderMinutes').AsInteger:= iReminderMinutes;
        end;
        dm_PCM.qry_work.ParamByName('ID_ADR_Wurzel').ASinteger:= iID_Kontakt;
        dm_PCM.qry_work.ParamByName('ID_Ansprechpartner').ASinteger:= iID_Kontakt;
        dm_PCM.qry_work.ParamByName('Eventtype').ASinteger:= iEventtpye;
        dm_PCM.qry_work.ParamByName('SUMMARY').AsString:= SUMMARY;
        dm_PCM.qry_work.ParamByName('Location').AsString:= StringReplace(String(Location),'\','',[rfIgnoreCase,rfReplaceAll]);
        dm_PCM.qry_work.ParamByName('Beschreibung').AsString:= String(asBeschreibung);
        dm_PCM.qry_work.ParamByName('DateBegin').AsString:= sDateBegin;
        dm_PCM.qry_work.ParamByName('DateEnd').AsString:= sDateEnd;
        dm_PCM.qry_work.ParamByName('Options').AsInteger:= iOptions;
        dm_PCM.qry_work.ParamByName('Reminder').AsString:= sReminder;
        dm_PCM.qry_work.ParamByName('RecurrenceInfo').AsAnsiString:= asRecurrence;
        dm_PCM.qry_work.ParamByName('LabelColor').AsString:= IntToStr(8421631);
        dm_PCM.qry_work.ParamByName('FontColor').AsString:= IntToStr(0);
        dm_PCM.qry_work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
        dm_PCM.qry_work.ParamByName('Kalender').AsString:= Auser;
        dm_PCM.qry_work.ParamByName('ganzerTag').AsString:= sGanzerTag;
        dm_PCM.qry_work.ParamByName('wiederholung_text').AsString:= swiederholungtext;
        dm_PCM.qry_work.ExecSQL;
        dm_PCM.qry_work.close;
      end;
    end;
  except
    on e: system.sysutils.Exception do
    begin
      Writelog(PCM_Logname, 'Termine konnten importiert werden. Grund: ' + e.Message, 2);
      exit;
    end;
  end;
  CloseWaitForm;
  Outlook.Disconnect;
end;
procedure Tfrm_Calendar.GetOutlookToDo(AUser: string);
const
  olFolderCalendars = $0000000D;
var
  ASnot,asmem: Ansistring;
  sDateBegin, sDateEnd:string;
  sTagBegin, sMonatBegin, sJahrBegin: String;
  sTagEnd, sMonatEnd, sJahrEnd: String;

  sStundeBegin, sMinuteBegin, sSekundeBegin: String;
  sStundeEnd, sMinuteEnd, sSekundeEnd: String;
  asBeschreibung: Ansistring;
  sReminder: string;
  sReminderDate: string;
  iReminderMinutes: integer;
  iOptions:integer;
//  sGanzerTag:string;
  sErinnerung: string;
  asRecurrence: Ansistring;
//  datTimTermin,dtNow: TDateTime;
//  strlstICal: TStringList;
	iID_Kontakt,iEventtpye: integer;
//  swiederholungtext: String;
  DTSTART,
//  DTEND,
  DESCRIPTION,
//  SUBJECT,
  location,
//  Rule,
  SUMMARY: string;

  objOwner,olvarTermine,Termin, olvarNameSpace: olevariant;
//  iFolders,
  i,
//  iDayOfWeeks,
  iTag: integer;
//  sFreg,test: String;
//  arrDays: TDays;
begin
  dm_PCM.qry_work.sql.text:= 'SELECT Adresse_Firma FROM manager_kalender_optionen Where ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_work.Open;
  iID_Kontakt:= dm_PCM.qry_work.FieldByName('Adresse_Firma').AsInteger;
  dm_PCM.qry_work.CLose;
  asRecurrence:='';
  sErinnerung:= 'true';
  iTag:= 0;
  try
    Outlook.connect;
  except
    on e: system.sysutils.Exception do
    begin
        Writelog(PCM_Logname,'Kontakte: Verbindung mit Outlook kann nicht hergestellt werden. Grund: ' + e.Message, 2);
      exit;
    end;
  end;
  Writelog(PCM_Logname, 'Kontakte: Namespace ermitteln', 0);
  try
    olvarNameSpace := Outlook.GetNameSpace('MAPI');
//    olvarNameSpace.Logon('Outlook','NhJh2084+2',True,False);
  except
    on e: system.sysutils.Exception do
    begin
      Writelog(PCM_Logname,'Kontakte: Namespace konnt nicht ermittelt werden. Grund: ' + e.Message, 2);
      exit;
    end;
  end;
  Writelog(PCM_Logname, 'Kontakte: ContactsRoot ermitteln: ' + AUser, 0);
  try
    objOwner := olvarNameSpace.CreateRecipient(AUser);
    olvarTermine := olvarNameSpace.GetSharedDefaultFolder(objOwner,olFolderCalendars);
    ShowWaitForm(TForm(Self), PWideChar('Termine aus Outlook importieren'), olvarTermine.items.count, ClientWidth, Height);
    for i := 1 to olvarTermine.items.count do
    begin
      Termin:= olvarTermine.items.item[i];
      SUMMARY:=  Termin.Subject;
      if Termin.Categories = 'PCM_Aufgabe' then
      begin
        WaitFormStep;
      end
      else
      begin
        SUMMARY:=  Termin.Subject;
        DESCRIPTION:= Termin.body;
        DTSTART:= DateTimeToStr(Termin.DueDate);
        sJahrBegin:=Copy(DTSTART,7,4);
        sMonatBegin:=Copy(DTSTART,4,2);
        sTagBegin:=Copy(DTSTART,1,2);
        sJahrEnd:= sJahrBegin;
        sMonatEnd:=sMonatBegin;
        sTagEnd:=sTagBegin;
        sStundeBegin:= '09';
        sMinuteBegin:= '00';
        sSekundeBegin:= '00';
        sStundeEnd:= '18';
        sMinuteEnd:= '00';
        sSekundeEnd:= '00';
        sDateBegin:= sJahrBegin + '-' + sMonatBegin + '-' + sTagBegin + ' ' + sStundeBegin + ':' + sMinuteBegin + ':' + sSekundeBegin;
        sDateEnd:= sJahrEnd + '-' + sMonatEnd + '-' + sTagEnd + ' ' + sStundeEnd + ':' + sMinuteEnd + ':' + sSekundeEnd;
        sReminderDate:= DateTimeToStr(Termin.ReminderTime);
        iOptions:= 6;
        if sReminderDate <> '01.01.4501' then
        begin
          sErinnerung := 'true';
        end
        else
        begin
          sErinnerung := 'false';
          sReminderDate := 'NULL';
        end;
        if sErinnerung = 'true' then
        begin
          sReminder:= 'true';
          sReminderDate:= Copy(sReminderDate,7,4) + '-' + Copy(sReminderDate,4,2) + '-' + Copy(sReminderDate,1,2) + ' ' + Copy(sReminderDate,12,8);
          iReminderMinutes:= 0;
          iOptions:= 6;
        end;
          asBeschreibung := AnsiString(ReplaceStr(ReplaceStr(String(DESCRIPTION),String(ASnot),String(slinebreak)),String(asmem),','));
        if Length(asBeschreibung) < 4 then
          asBeschreibung:= '-';
        Location:= 'im Büro';
        iEventtpye:= 0;
        if sReminderDate = 'NULL' then
        begin
          dm_PCM.qry_Work.SQL.Text:='Insert into manager_Kalender (Zeitformat,Erledigungsgrad,AufgabenDauer,Gesendetam,ID_IC_AufgabenArten,ID_IC_Prioritaeten,Aufgabenstatus,ID_ADR_Wurzel,ID_Ansprechpartner,Typ,EventType,Caption,Location,Message,'
          + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
          + 'ReminderMinutesBeforeStart,ID_Benutzer,Kalendername,CompleteDay,LabelColor,FontColor) Values ' +
          '(0,0,540,Now();5,:ID_IC_Prioritaeten,0,:ID_ADR_Wurzel,:ID_Ansprechpartner,1,:Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
          + 'NULL,0,:ID,:Kalender,:ganzerTag,:LabelColor,:FontColor,:ID_IC_Prioritaeten)';
        end
        else begin
          dm_PCM.qry_Work.SQL.Text:='Insert into manager_Kalender (Zeitformat,Erledigungsgrad,AufgabenDauer,Gesendetam,ID_IC_AufgabenArten,ID_IC_Prioritaeten,Aufgabenstatus,ID_ADR_Wurzel,ID_Ansprechpartner,Typ,EventType,Caption,Location,Message,'
          + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
          + 'ReminderMinutesBeforeStart,ID_Benutzer,Kalendername,CompleteDay,LabelColor,FontColor) Values ' +
          '(0,0,540,Now(),5,:ID_IC_Prioritaeten,0,:ID_ADR_Wurzel,:ID_Ansprechpartner,1,:Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
          + ':ReminderDate,:ReminderMinutes,:ID,:Kalender,:ganzerTag,:LabelColor,:FontColor)';
          dm_PCM.qry_Work.ParamByName('ReminderDate').AsString:= sReminderDate;
          dm_PCM.qry_Work.ParamByName('ReminderMinutes').AsInteger:= iReminderMinutes;
        end;
        dm_PCM.qry_Work.ParamByName('ID_ADR_Wurzel').ASinteger:= iID_Kontakt;
        dm_PCM.qry_Work.ParamByName('ID_Ansprechpartner').ASinteger:= iID_Kontakt;
        dm_PCM.qry_Work.ParamByName('Eventtype').ASinteger:= 0;
        dm_PCM.qry_Work.ParamByName('SUMMARY').AsString:= SUMMARY;
        dm_PCM.qry_Work.ParamByName('Location').AsString:= StringReplace(String(Location),'\','',[rfIgnoreCase,rfReplaceAll]);
        dm_PCM.qry_Work.ParamByName('Beschreibung').AsString:= String(asBeschreibung);
        dm_PCM.qry_Work.ParamByName('DateBegin').AsString:= sDateBegin;
        dm_PCM.qry_Work.ParamByName('DateEnd').AsString:= sDateEnd;
        dm_PCM.qry_Work.ParamByName('Options').AsInteger:= iOptions;
        dm_PCM.qry_Work.ParamByName('Reminder').AsString:= sReminder;
        dm_PCM.qry_Work.ParamByName('RecurrenceInfo').AsAnsiString:= asRecurrence;
        dm_PCM.qry_Work.ParamByName('LabelColor').AsString:= IntToStr(8421631);
        dm_PCM.qry_Work.ParamByName('FontColor').AsString:= IntToStr(0);
        dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
        dm_PCM.qry_Work.ParamByName('Kalender').AsString:= Auser;
        dm_PCM.qry_Work.ParamByName('ganzerTag').AsString:= 'false';
        dm_PCM.qry_Work.ParamByName('ID_IC_Prioritaeten').AsInteger:=  Integer(Termin.Importance) +1;
        dm_PCM.qry_Work.ExecSQL;
      end;
    end;
  except
    on e: system.sysutils.Exception do
    begin
      Writelog(PCM_Logname, 'Aufgaben konnten importiert werden. Grund: ' + e.Message, 2);
      exit;
    end;
  end;
  CloseWaitForm;
  Outlook.Disconnect;
end;
procedure Tfrm_Calendar.RefreshTerminundAUfgaben;
var
  sfilter: String;
begin
  dm_PCM.qry_Kalender_Aufgaben.Filter:= '';
  dm_PCM.qry_work.sql.text:= 'Select COUNT(*) AS AufgabenTermine , ('+
                      'Select COUNT(*) From manager_kalender Where gelesenam is null and bearbeitetam is NULL AND Typ IN (0) and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM) +' ) AS Nachrichten ' +
                      'From manager_Kalender ' +
                      'Where ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM) +' and  gelesenam is null and bearbeitetam is NULL AND Typ IN (1,2)';
  dm_PCM.qry_work.open;
  cxTreeList1.Items[2].Values[1]:= dm_PCM.qry_work.Fieldbyname('Nachrichten').asInteger;
  cxTreeList1.Items[1].Values[1]:= dm_PCM.qry_work.Fieldbyname('AufgabenTermine').asInteger;
  dm_PCM.qry_work.close;

  sFilter:= '';
  case iCurrTableView of
  1:
    begin
      sfilter:= 'Typ <> 0';
    end;
  2:
    begin
      sFilter:= 'Typ = 0';
    end;
  end;
  dm_PCM.qry_Kalender_Kalender.Refresh;
  dm_PCM.qry_Kalender_Aufgaben.refresh;
  if sFilter <> '' then
    dm_PCM.qry_Kalender_Aufgaben.Filter:= sFilter + ' and bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM)
  else
    dm_PCM.qry_Kalender_Aufgaben.Filter:= 'bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;

end;
procedure Tfrm_Calendar.SearchDoSearch(ASearchString : String);
var
  sSearchQuery : String;
begin
  SearchBoxSetStyle();
//  qWF_Nachrichten.Filtered := False;
  if ASearchString = '' then  exit;
    sSearchQuery := 'Message LIKE ' + quotedStr('%' + ASearchString + '%') +
                    ' OR ' + 'Caption LIKE ' + quotedStr('%' + ASearchString + '%') +
                    ' OR ' + 'Location LIKE ' + quotedStr('%' + ASearchString + '%') +
                    ' OR ' + 'Kalendername LIKE ' + quotedStr('%' + ASearchString + '%');

  dm_PCM.qry_Kalender_Aufgaben.Filter := sSearchQuery;
  dm_PCM.qry_Kalender_Aufgaben.Filtered := True;
end;
procedure Tfrm_Calendar.edSuchePropertiesChange(Sender: TObject);
begin
  SearchDoSearch(edSuche.Text);
end;
procedure Tfrm_Calendar.pmmbtn_CalNewClick(Sender: TObject);
var
  iNewId : Integer;
begin
  Application.CreateForm(TfNeu, fNeu);
  fNeu.Execute(schedDBStrg_Kalender,2, 0, 0, '','',0,StrToDateTime(DateToStr(StrToDate(Copy(DateToStr(Date()),1,10))) + ' ' + '08:30:00'),StrToDateTime(DateToStr(StrToDate(Copy(DateToStr(Date()),1,10))) + ' ' + '08:30:00'),0,false,0,0,0,0,0,0,false,false,15,false,0,0,nil,'','',iNewId);
  fNeu := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.SearchBoxSetStyle();
begin
  if (edSuche.Text = SearchTypeToStr(stSubject)) OR
     (edSuche.Text = SearchTypeToStr(stMessage)) OR
     (edSuche.Text = SearchTypeToStr(stSubjectMessage)) then
  begin
    edSuche.Text := SearchTypeToStr(FSearchType);
    edSuche.Style.Font.Color := clGray;
    edSuche.Style.Font.Style := [fsItalic];
  end
  else
  begin
    edSuche.Style.Font.Color := clBlack;
    edSuche.Style.Font.Style := [];
  end;
end;
function Tfrm_Calendar.SearchTypeToStr(ASearchType : TSearchType) : String;
begin
  case ASearchType of
    stSubject:
      result := 'Betreff';
    stMessage:
      result := 'Nachricht';
    stSubjectMessage:
      result := 'Nachricht und Betreff';
  end;
end;
procedure Tfrm_Calendar.OpenData;
//var I:integer;
begin
  dm_PCM.qry_Kalender_Benutzer.Open;
//  qry_BenutzerRes.Open;
  dm_PCM.qry_Kalender_Kalender.Open;
  qry_Stundenplan.Open;
  qry_Stundenplan_detail.Open;
  qry_SchulFaecher.Open;
  qry_SchulFaecher.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  qry_Stundenplan.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  qry_Stundenplan.Filtered:= true;
  dm_PCM.qry_KalenderAufgaben_Arten.open;
  dm_PCM.qry_KalenderAufgaben_Prio.Open;
  dm_PCM.qry_Kalender_Ansprechpartner.Open;
  dm_PCM.qry_Config_Firmen.Open;
  dm_PCM.qry_Kalender_Aufgaben.open;
  dm_PCM.qry_Kalender_Aufgaben.Filter:= 'bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.OpenAttachement;
var
  f: string;
begin
  // Anhang öffnen
  f := qWF_Nachrichten_AnhaengeDateinameSave.AsString;

  if f <> '' then
  begin
    f := GetAttachmentFilename(f);
    Screen.Cursor := crHourglass;
    ShellExecute(self.WindowHandle,'open', PWideChar(f) ,nil,nil, SW_SHOWNORMAL);
    Screen.Cursor := crDefault;
  end;
end;
function Tfrm_Calendar.GetAttachmentFilename(s: string): string;
begin
  Result := ExpandFilename(ExtractFilePath(ParamStr(0)) + 'Files\' + s)
end;

procedure Tfrm_Calendar.cxButton1Click(Sender: TObject);
begin
  saveAttachement;
end;
procedure Tfrm_Calendar.cxButton2Click(Sender: TObject);
begin
  OpenAttachement;
end;
procedure Tfrm_Calendar.saveAttachement;
var
  f: string;
begin
  f := qWF_Nachrichten_AnhaengeDateinameSave.AsString;
  if f <> '' then
  begin
    SaveDialog1.FileName := qWF_Nachrichten_AnhaengeDateiname.AsString;
    if SaveDialog1.Execute then
    begin
      Screen.Cursor := crHourglass;
      f := GetAttachmentFilename(f);
      CopyFile(PChar(f), PChar(SaveDialog1.FileName), False);
      Screen.Cursor := crDefault;
    end;
  end;
end;
procedure Tfrm_Calendar.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edSuche.Clear;
  edSuche.SetFocus;
end;
function Tfrm_Calendar.cxMyGetRecurrenceDescriptionString(ARecurrenceInfo: TcxSchedulerEventRecurrenceInfo; AFullDescription: Boolean = False): string;
const
  Weeks: array[1..5] of string = ('ersten', 'zweiten', 'dritten', 'vierten', 'letzten');
  Days: array[cxdtEveryDay..cxdtWeekEndDay] of string = ('Tag', 'Wochentag', 'Wochenend-Tag');
  EveryDays: array[Boolean] of string = ('alle %d Tage', 'jeden Tag');
  EveryMonths1: array[Boolean] of string = ('Tag %d jedes %d Monats', 'Tag %d jeden Monats');
  EveryMonths2: array[Boolean] of string = ('den %s %s jedes %d Monats', 'den %s %s jeden Monats');

  procedure GetDateParts(out ADayStr, AWeekStr: string);
  begin
    with ARecurrenceInfo do
    begin
      if DayNumber in [1..5] then AWeekStr := Weeks[DayNumber] else AWeekStr := '';
      if DayType in [cxdtEveryDay..cxdtWeekEndDay] then
        ADayStr := Days[DayType]
      else
        ADayStr := FormatSettings.LongDayNames[Ord(DayType) - Ord(cxdtSunday) + 1];
    end;
  end;

  function OccurDaysToString: string;
  var
    ADay: TDay;
    ACount, ASaveCount: Integer;
  begin
    Result := '';
    ACount := 0;
    for ADay := Low(TDay) to High(TDay) do
      if ADay in ARecurrenceInfo.OccurDays then Inc(ACount);
    ASaveCount := ACount;
    for ADay := Low(TDay) to High(TDay) do
      if ADay in ARecurrenceInfo.OccurDays then
        if ASaveCount = 1 then
        begin
          Result := FormatSettings.LongDayNames[Ord(ADay) + 1];
          Exit;
        end
        else
        begin
          Dec(ACount);
          if ACount > 1 then
            Result := Result + FormatSettings.LongDayNames[Ord(ADay) + 1] + ', '
          else if ACount = 1 then
            Result := Result + FormatSettings.LongDayNames[Ord(ADay) + 1] + ' '
          else
            Result := Result + 'und ' + FormatSettings.LongDayNames[Ord(ADay) + 1];
        end;
  end;

  function GetTimeBounds(APattern: TcxSchedulerEvent): string;
  begin
    if APattern.AllDayEvent and (APattern.Duration = 1) then Exit;
    Result := '';
    {
    Result := ' from ' + FormatDateTime('t', APattern.Start - ARecurrenceInfo.DisplayTimeBias);
    if APattern.Duration < 1 then
      Result := Result + ' to ' + FormatDateTime('t', APattern.Finish - ARecurrenceInfo.DisplayTimeBias)
    else
      Result := Result + ' for ' + cxMinutesToTextProc(Round(APattern.Duration / MinuteToTime));
      }
  end;

  function GetDateBounds(APattern: TcxSchedulerEvent): string;
  begin
    Result := ' ab dem ' + FormatDateTime('ddddd', ARecurrenceInfo.Start);
    if ARecurrenceInfo.Count >= 0 then
      Result := Result + ' bis ' + FormatDateTime('ddddd', ARecurrenceInfo.GetEndDate);
  end;

var
  ADayStr, AWeekStr, AMonthStr: string;
  APattern: TcxSchedulerEvent;
begin
  Result := '';
  if not Assigned(ARecurrenceInfo) or not ARecurrenceInfo.Event.IsRecurring then Exit;
  with ARecurrenceInfo do
  begin
    case Recurrence of
      cxreDaily:
        if DayType = cxdtWeekDay then
          Result := 'jeden Wochentag'
        else
          Result := Format(EveryDays[Periodicity = 1], [Periodicity]);
      cxreWeekly:
        if Periodicity = 1 then
          Result := 'jeden ' + OccurDaysToString
        else
          Result := Format('alle %d Wochen am %s', [Periodicity, OccurDaysToString]);
      cxreMonthly:
        if DayType = cxdtDay then
          Result := Format(EveryMonths1[Periodicity = 1], [DayNumber, Periodicity])
        else
        begin
          GetDateParts(ADayStr, AWeekStr);
          Result := Format(EveryMonths2[Periodicity = 1], [AWeekStr, ADayStr, Periodicity]);
        end;
      cxreYearly:
        begin
          if Periodicity in [1..12] then
            AMonthStr := FormatSettings.LongMonthNames[Periodicity]
          else
            AMonthStr := '';
          if DayType = cxdtDay then
            Result := Format('jeden %d. %s', [DayNumber, AMonthStr])
          else
          begin
            GetDateParts(ADayStr, AWeekStr);
            Result := Format('alle %s %s of %s', [AWeekStr, ADayStr, AMonthStr]);
          end;
        end;
    end;
    if Event.EventType = etPattern then
      APattern := Event
    else
    begin
      APattern := Event.Pattern;
      if APattern = nil then
        APattern := Event;
    end;
    if AFullDescription then
      Result := 'Findet ' + Result + GetDateBounds(APattern) + GetTimeBounds(APattern) + ' statt.'
    else
      Result := Result + GetTimeBounds(APattern);
  end;
end;
procedure Tfrm_Calendar.cxTreeList1Click(Sender: TObject);
var
  selectedNode: TcxTreeListNode;
  sItem: string;
  view: TcxGridDBTableView;
begin
  view := TcxGridDBTableView.Create(SELF);
  if cxTreeList1.SelectionCount > 0 then
  begin
    selectedNode := cxTreeList1.FocusedNode;
    if selectedNode = nil then
      exit;
   sItem:= selectedNode.Values[0];
   if (sItem = 'Alle') or (sItem = 'Nachrichten') then
   begin
     view := tvNachrichten;
     if (sItem = 'Alle') then
     begin
      iCurrTableview:= 0;
//      dm_PCM.qry_Kalender_Aufgaben.Filtered:= false;
     end
     else
     begin
        iCurrTableview:= 2;
//        dm_PCM.qry_Kalender_Aufgaben.Filter:= 'Typ =0';
//        dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;
     end;
   end
   else begin
     view := tvAuf;
     iCurrTableview:= 1;
//     dm_PCM.qry_Kalender_Aufgaben.Filter:= 'Typ <> 0';
//     dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;
   end;
  end;

  RefreshTerminundAUfgaben;
  cxGrid1.BeginUpdate();
  view.BeginUpdate();
  cxGrid1Level1.GridView := view;
  view.EndUpdate;
  cxGrid1.EndUpdate;
end;
procedure Tfrm_Calendar.pmmbtn_YearViewClick(Sender: TObject);
begin
  compPrint_Cal.PreviewOptions.Caption := 'Terminkalender - Jahresansicht';
  compPrint_CalLink1.PrintStyles.Yearly.Active := True;
  compPrint_CalLink1.Preview(True);
end;
procedure Tfrm_Calendar.pmmbtn_AgendaClick(Sender: TObject);
begin
  compPrint_Cal.PreviewOptions.Caption := 'Terminkalender - Agendaansicht';
  compPrint_CalLink1.PrintStyles.Agenda.Active := True;
  compPrint_CalLink1.Preview(True);
end;
procedure Tfrm_Calendar.btn_CalImportOutlookClick(Sender: TObject);
var
  sKal: String;
begin

  dm_PCM.qry_Work.sql.text:= 'Select Account_Geschaeftlich From manager_kalender_optionen Where ID_Benutzer =:ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID_benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  sKal:= dm_PCM.qry_Work.FieldByName('Account_Geschaeftlich').asString;
  dm_PCM.qry_Work.Close;
  dm_PCM.qry_work.SQL.Text:= 'Delete from manager_kalender Where Typ = 2 and Kalendername = :Kalendername';
  dm_PCM.qry_work.ParamByName('Kalendername').AsString:=sKal;
  dm_PCM.qry_work.execsql;
  GetOutlookEvents(sKal);
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.btn_JobUndoneClick(Sender: TObject);
begin
  dm_PCM.qry_Work.SQL.Text :=
    'UPDATE manager_kalender SET BearbeitetAm = NULL ' +
      'WHERE ID = ' + IntToStr(dm_PCM.qry_Kalender_Aufgaben.Fieldbyname('ID').AsInteger);
  dm_PCM.qry_Work.Execute;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.btn_JobsDoneClick(Sender: TObject);
begin
  if btn_JobsDone.tag = 0 then
  begin
    btn_JobsDone.tag:= 1;
    btn_JobsDone.Caption:= 'aktuelle Aufgaben';
    btn_JobsDone.largeimageindex:= 124;
    btn_JobUndone.enabled:= true;
    dm_PCM.qry_Kalender_Aufgaben.Filter:= 'bearbeitetam <> null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;
  end
  else begin
    btn_JobsDone.tag:= 0;
    btn_JobsDone.Caption:= 'bearbeitete Aufgaben';
    btn_JobsDone.largeimageindex:= 123;
    btn_JobUndone.enabled:= false;
    dm_PCM.qry_Kalender_Aufgaben.Filter:= 'bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;
  end;
end;
procedure Tfrm_Calendar.dxBarLargeButton12Click(Sender: TObject);
begin
  if bol_VollBildCal = false then
  begin
    bol_VollBildCal:= true;
    frm_PCM_main.navbr_main.Width:= 0;
    frm_PCM_main.pcmain.properties.HideTabs:= true;
    pc_kalender.properties.HideTabs:= true;
    btn_CalAnsicht.Caption:= 'norm. Ansicht';
    btn_CalAnsicht.LargeImageIndex:= 31;
    cxTreeList1.Height:= 107;
  end
  else begin
    bol_VollBildCal:= false;
    frm_PCM_main.navbr_main.Width:= 200;
    frm_PCM_main.pcmain.properties.HideTabs:= false;
    pc_kalender.properties.HideTabs:= false;
    btn_CalAnsicht.Caption:= 'max. Ansicht';
    btn_CalAnsicht.LargeImageIndex:= 32;
    cxTreeList1.Height:= 107;
  end;
end;
procedure Tfrm_Calendar.btn_CalRefreshClick(Sender: TObject);
begin
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.btn_NewEventClick(Sender: TObject);
var
  iNewId : Integer;
begin
  Application.CreateForm(TfNeu, fNeu);
  fNeu.Execute(schedDBStrg_Kalender,2, 0, 0, '','',0,0,0,0,false,0,0,0,0,0,0,false,false,0,false,0,0,nil,'','',iNewId);
  fNeu := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.btn_NewMessageClick(Sender: TObject);
var
  iNewId : Integer;
begin
  Application.CreateForm(TfNeu, fNeu);
  fNeu.Execute(schedDBStrg_Kalender,0, 0, 0, '','',0,0,0,0,false,0,0,0,0,0,0,false,false,0,false,0,0,nil,'','',iNewId);
  fNeu := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.btn_JobsRefreshClick(Sender: TObject);
begin
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.btn_NewTaskClick(Sender: TObject);
var
  iNewId : Integer;
begin
  Application.CreateForm(TfNeu, fNeu);
  fNeu.Execute(schedDBStrg_Kalender,1, 0, 0, '','',0,0,0,0,false,0,0,0,0,0,0,false,false,0,false,0,0,nil,'','',iNewId);
  fNeu := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.btn_ReadJobClick(Sender: TObject);
var
//  ID,
  iCount, iRecCount: Integer;
  view : TcxGridTableView;
  col : TcxGridColumn;
  AMessageIds : Array of Integer;
begin
  // Entsprechend der Ansicht View auswählen um selektiete Datensätze zu wählen
  view := TcxGridTableView(cxGrid1.ActiveView);
  if view = tvAuf then
    col := tvAufID
  else if view = tvNachrichten then
    col := tvNachrichtenID
  else
    exit;

  // kein Eintrag?
  if (dm_PCM.qry_Kalender_Aufgaben.RecordCount > 0) then //and (qWF_NachrichtenTyp.Value = 2) then
  begin
    iRecCount := view.Controller.SelectedRowCount;
    for iCount := 0 to iRecCount - 1 do
    begin
      SetLength(AMessageIds, Length(AMessageIds)+1);
      AMessageIds[High(AMessageIds)] := view.Controller.SelectedRows[iCount].Values[col.Index];
    end;
  end;

//  ID := dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').asInteger;


  for iCount := 0 to High(AMessageIds) do
  begin
    dm_PCM.qry_Work.SQL.Text := 'UPDATE manager_kalender ' + 'SET GelesenAm = NOW() WHERE ID = :ID_IC';
    dm_PCM.qry_Work.ParamByName('ID_IC').AsInteger := AMessageIds[iCount];
    dm_PCM.qry_Work.Execute;
  end;



  RefreshTerminundAUfgaben;


//  dmIC_Main.qCustom.SQL.Text :=
//    'UPDATE IC_Nachrichten SET GelesenAm = NOW() ' +
//    'WHERE ID = ' + IntToStr(qWF_NachrichtenID.Value);
//  dmIC_Main.qCustom.Execute;
//  LastID_WF_Nachrichten := 1;
//  RefreshMessages();
 // NachrichtToolbarAnpassen();
end;
procedure Tfrm_Calendar.btn_DoneJobClick(Sender: TObject);
var
  ID: Integer;
  iCount,iRecCount: Integer;
  view : TcxGridTableView;
  col : TcxGridColumn;
  AMessageIds : Array of Integer;
  sMsgBoxMessage: String;
begin
  iRecCount:=0;
  // Entsprechend der Ansicht View auswählen um selektiete Datensätze zu wählen
  view := TcxGridTableView(cxGrid1.ActiveView);
  if view = tvauf then
    col := tvAufID
  else if view = tvNachrichten then
    col := tvNachrichtenID
  else
    exit;

  // kein Eintrag?
  if (dm_PCM.qry_Kalender_Aufgaben.RecordCount > 0) then //and (qWF_NachrichtenTyp.Value = 2) then
  begin
    iRecCount := view.Controller.SelectedRowCount;
    for iCount := 0 to iRecCount - 1 do
    begin
      SetLength(AMessageIds, Length(AMessageIds)+1);
      AMessageIds[High(AMessageIds)] := view.Controller.SelectedRows[iCount].Values[col.Index];
    end;
  end;

  if iRecCount > 1 then
  begin
    sMsgBoxMessage := 'Einträge sind noch nicht als gelesen markiert. '#13#10
      + 'Möchten Sie die ' + IntToStr(iRecCount) + ' Einträge wirklich als Bearbeitet markieren?';
  end
  else
  begin
    sMsgBoxMessage := 'Der Eintrag ist noch nicht als gelesen markiert. '#13#10
      + 'Möchten Sie ihn wirklich als Bearbeitet markieren?';
  end;

  if dm_PCM.qry_Kalender_Aufgaben.FieldByName('GelesenAm').IsNull then
    if Application.MessageBox(PWideChar(sMsgBoxMessage),
      'Als Bearbeitet markieren', MB_YESNO or MB_ICONQUESTION) = IDNO then
      Exit;

  ID := dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').asInteger;

  cxGrid1Level1.GridView.DataController.GotoNext;
  if dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').asInteger = ID then
    cxGrid1Level1.GridView.DataController.GotoPrev;

  for iCount := 0 to High(AMessageIds) do
  begin
    dm_PCM.qry_Work.SQL.Text := 'UPDATE manager_kalender SET GelesenAm = IF(GelesenAm IS NULL, NOW(), GelesenAm), BearbeitetAm = NOW() WHERE ID = :ID_IC';
    dm_PCM.qry_Work.ParamByName('ID_IC').AsInteger := AMessageIds[iCount];
    dm_PCM.qry_Work.Execute;
  end;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.edSucheEnter(Sender: TObject);
begin
  if (edSuche.Text = SearchTypeToStr(stSubject)) OR
     (edSuche.Text = SearchTypeToStr(stMessage)) OR
     (edSuche.Text = SearchTypeToStr(stSubjectMessage)) then
        edSuche.Text := '';
end;
procedure Tfrm_Calendar.edSucheExit(Sender: TObject);
begin
  edSuche.Properties.OnChange := nil;
  //if edSuche.Text = '' then edSuche.Text := SearchTypeToStr(FSearchType);
  SearchBoxSetStyle();
  edSuche.Properties.OnChange := edSuchePropertiesChange;
end;
procedure Tfrm_Calendar.Execute(ATag,AActiveTab: integer);
begin
  iTag:= ATag;
  iActiveTab:= AActiveTab;
  case AActiveTab of
  1: pc_Kalender.ActivePage:= ts_A_kalender;
  2: pc_Kalender.ActivePage:= ts_C_Stundenplan;
  3: pc_Kalender.ActivePage:= ts_B_Aufgaben;
  end;
end;
function Tfrm_Calendar.copyEvent : boolean;
var
  AEvent: TcxSchedulerControlEvent;
begin
  result := False;
  if sched_Kalender.SelectedEventCount > 0 then
  begin
    AEvent := sched_Kalender.SelectedEvents[0];
    if Assigned(AEvent) then
    begin
      if dm_PCM.ikalender > 1 then
      begin
        iCopyEventId := AEvent.ID;
        result := true;
      end;
    end;
  end;
end;
procedure Tfrm_Calendar.btnGoToJiraClick(Sender: TObject);
var
  sURL: string;
begin
  if edtJiraTicketNr.Text <> '' then
  begin
    sURL := frm_PCM_main.FOptions.Jira_Basic_URL + edtJiraTicketNr.EditValue;
    ShellExecute(self.WindowHandle,'open', PWideChar(sURL) ,nil,nil, SW_SHOWNORMAL);
  end;
end;
procedure Tfrm_Calendar.btn_CalAgendaClick(Sender: TObject);
begin
  btn_CalTag.LargeImageIndex:= 39;
  btn_CalArbeitswoche.LargeImageIndex:= 40;
  btn_CalWoche.LargeImageIndex:= 41;
  btn_CalMonat.LargeImageIndex:= 42;
  btn_CalJahr.LargeImageIndex:= 44;
  sched_Kalender.ViewAgenda.Active := True;
end;
procedure Tfrm_Calendar.FormDestroy(Sender: TObject);
begin
  SetGridViews(False);
end;

procedure Tfrm_Calendar.FormPaint(Sender: TObject);
begin
 pc_kalender.Align:= alClient;
  OpenData;
//  AddAndGet;
  InitializeRights;
  SetButtons;
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

  defaultLabelColor:= 13083265;
  defaultFontColor:= 0;
  FormResize(Self);
  if (iTag = 4) and (iActiveTab = 1) then
  begin
    Application.ProcessMessages;
    sched_Kalender.SelectDays(Date, Date, True);
    Application.ProcessMessages;
    dm_PCM.qry_Kalender_Benutzer.SQL.Text:= 'Select ID, CONCAT(Nachname, ' + QuotedStr(', ') + ' ,Vorname) as Name '+'From Benutzer Where ID = :ID';
    dm_PCM.qry_Kalender_Benutzer.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_Kalender_Benutzer.Open;
    Application.ProcessMessages;
//    grdDBTblView_KalenderRessource.DataController.SelectRows(grdDBTblView_KalenderRessource.DataController.GetRowIndexByRecordIndex(
//    grdDBTblView_KalenderRessource.DataController.FindRecordIndexByKey(dm_PCM.iIDBenutzerPCM), True),
//    grdDBTblView_KalenderRessource.DataController.GetRowIndexByRecordIndex(
//    grdDBTblView_KalenderRessource.DataController.FindRecordIndexByKey(dm_PCM.iIDBenutzerPCM), True));
    Application.ProcessMessages;
    dm_PCM.qry_Kalender_Kalender.SQL.Text:=  'Select ID,EventType,Caption,Location,Message,Start,' +
                          'Finish,Options,CompleteDay,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'+
                          'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,ID_kontakte From manager_Kalender ' +
                          'Where Typ = 2 and ID_Benutzer = :ID';;
    dm_PCM.qry_Kalender_Kalender.ParamByName('ID').asBlob:= AnsiString(IntToStr(dm_PCM.iIDBenutzerPCM));
    dm_PCM.qry_Kalender_Kalender.Open;
//    qry_BenutzerRes.Filter:= 'ID = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
//    qry_BenutzerRes.Filtered:= true;
//    qry_BenutzerRes.Open;
    try
      Application.ProcessMessages;
      ReadICSAutomatic;
      Application.ProcessMessages;
      WriteICSAutomatic;
    except
    end;
    Application.ProcessMessages;
    btn_CalArbeitswocheClick(Self);
    btn_CalArbeitswoche.LargeImageIndex:= 16;
    btn_CalTag.LargeImageIndex:= 39;
    btn_CalWoche.LargeImageIndex:= 41;
    btn_CalMonat.LargeImageIndex:= 42;
    btn_CalJahr.LargeImageIndex:= 44;
    schedDBStrg_Kalender.Reminders.Active:= true;
    pc_Kalender.ActivePage:= ts_A_kalender;
  end
  else begin
    if iActiveTab = 2 then
      pc_Kalender.ActivePage:= ts_C_Stundenplan
    else
      pc_Kalender.ActivePage:= ts_B_Aufgaben;
  end;
//  tvauf.DataController.Filter.Active:= false;
//  tvauf.DataController.Filter.Root.Clear;
//  tvauf.DataController.Filter.BeginUpdate;
//  tvauf.DataController.Filter.AddItem(AItemlist, tvAufStatus,foNotEqual,'Bearbeitet','Bearbeitet');
//  tvauf.DataController.Filter.EndUpdate;
//  tvauf.DataController.Filter.Active:= true;
  SetGridViews(True);
end;

procedure Tfrm_Calendar.FormResize(Sender: TObject);
begin
  cxTreeList1Column1.Width:= cxtreelist1.Width - (8 + cxTreeList1Column2.Width) ;
end;
procedure Tfrm_Calendar.FormShow(Sender: TObject);
//var
//  AItemList: TcxFilterCriteriaItemList;
begin
  pc_kalender.Align:= alClient;
  OpenData;
//  AddAndGet;
  InitializeRights;
  SetButtons;
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
  dm_PCM.qry_Work.SQL.Text:=  'Delete FROM manager_kalender ' +
                            'WHERE Date(start) < Date(Now()) and (Kalendername like ''Müll %'' or Kalendername like ''Feiertage %'')' ;
  dm_PCM.qry_Work.ExecSQL;

  defaultLabelColor:= 13083265;
  defaultFontColor:= 0;
  FormResize(Self);
  if (iTag = 4) and (iActiveTab = 1) then
  begin
    Application.ProcessMessages;
    sched_Kalender.SelectDays(Date, Date, True);
    Application.ProcessMessages;
    dm_PCM.qry_Kalender_Benutzer.SQL.Text:= 'Select ID, CONCAT(Nachname, ' + QuotedStr(', ') + ' ,Vorname) as Name '+'From Benutzer Where ID = :ID';
    dm_PCM.qry_Kalender_Benutzer.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_Kalender_Benutzer.Open;
    Application.ProcessMessages;
//    grdDBTblView_KalenderRessource.DataController.SelectRows(grdDBTblView_KalenderRessource.DataController.GetRowIndexByRecordIndex(
//    grdDBTblView_KalenderRessource.DataController.FindRecordIndexByKey(dm_PCM.iIDBenutzerPCM), True),
//    grdDBTblView_KalenderRessource.DataController.GetRowIndexByRecordIndex(
//    grdDBTblView_KalenderRessource.DataController.FindRecordIndexByKey(dm_PCM.iIDBenutzerPCM), True));
    Application.ProcessMessages;
    dm_PCM.qry_Kalender_Kalender.SQL.Text:=  'Select ID,EventType,Caption,Location,Message,Start,' +
                          'Finish,Options,CompleteDay,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'+
                          'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,ID_kontakte From manager_Kalender ' +
                          'Where Typ = 2 and bearbeitetam is null and ID_Benutzer = :ID';;
    dm_PCM.qry_Kalender_Kalender.ParamByName('ID').asBlob:= AnsiString(IntToStr(dm_PCM.iIDBenutzerPCM));
    dm_PCM.qry_Kalender_Kalender.Open;
    try
      Application.ProcessMessages;
      ReadICSAutomatic;
      Application.ProcessMessages;
      WriteICSAutomatic;
    except
    end;
    Application.ProcessMessages;
    btn_CalArbeitswocheClick(Self);
    btn_CalArbeitswoche.LargeImageIndex:= 16;
    btn_CalTag.LargeImageIndex:= 39;
    btn_CalWoche.LargeImageIndex:= 41;
    btn_CalMonat.LargeImageIndex:= 42;
    btn_CalJahr.LargeImageIndex:= 44;
    schedDBStrg_Kalender.Reminders.Active:= true;
    pc_Kalender.ActivePage:= ts_A_kalender;
  end
  else begin
    if iActiveTab = 2 then
      pc_Kalender.ActivePage:= ts_C_Stundenplan
    else
      pc_Kalender.ActivePage:= ts_B_Aufgaben;
  end;
//  tvauf.DataController.Filter.Active:= false;
//  tvauf.DataController.Filter.Root.Clear;
//  tvauf.DataController.Filter.BeginUpdate;
//  tvauf.DataController.Filter.AddItem(AItemlist, tvAufStatus,foNotEqual,'Bearbeitet','Bearbeitet');
//  tvauf.DataController.Filter.EndUpdate;
//  tvauf.DataController.Filter.Active:= true;
  SetGridViews(True);
end;
procedure Tfrm_Calendar.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewAufgaben := TSavedGridView.Create(GV_Aufgaben,dm_PCM.iIDBenutzerPCM, tvAuf);
    SaveGridViewAufgaben.LoadView;
    SaveGridViewNachrichten := TSavedGridView.Create(GV_Nachrichten,dm_PCM.iIDBenutzerPCM, tvNachrichten);
    SaveGridViewNachrichten.LoadView;


    SaveGridViewStundenplan := TSavedGridView.Create(GV_StundenplanBes,dm_PCM.iIDBenutzerPCM, grdDBTblView_Stundenplan);
    SaveGridViewStundenplan.LoadView;
    SaveGridViewStundenplanDetail := TSavedGridView.Create(GV_StundenplanDet,dm_PCM.iIDBenutzerPCM, grdDBTblView_Stundenplanuebersicht);
    SaveGridViewStundenplanDetail.LoadView;
  end
  else begin
    SaveGridViewAufgaben.SaveView(0);
    SaveGridViewAufgaben.Free;
    SaveGridViewNachrichten.SaveView(0);
    SaveGridViewNachrichten.Free;
    SaveGridViewStundenplan.SaveView(0);
    SaveGridViewStundenplan.Free;
    SaveGridViewStundenplanDetail.SaveView(0);
    SaveGridViewStundenplanDetail.Free;
  end;
end;
procedure Tfrm_Calendar.pasteEvent(iEventId : integer);
var
  i : integer;
begin
  if iCopyEventId > 0 then
  begin
    sched_Kalender.BeginUpdate;
    schedDBStrg_Kalender.BeginUpdate;
//    ssReminder.BeginUpdate;
    try
      dm_PCM.qry_Kalender_Kalender.Locate('ID',iCopyEventId,[]);
//      FindKey([iCopyEventId]);
      dm_PCM.qry_work.SQL.Text := 'SELECT * FROM manager_Kalender';
      dm_PCM.qry_work.Open;
      dm_PCM.qry_work.Insert;

      for I := 0 to dm_PCM.qry_Kalender_Kalender.FieldCount - 1 do
      begin
        if (dm_PCM.qry_Kalender_Kalender.Fields[i].FieldName <> 'ID') AND (dm_PCM.qry_Kalender_Kalender.Fields[i].FieldKind = fkData) then
          dm_PCM.qry_work.FieldValues[dm_PCM.qry_Kalender_Kalender.Fields[i].FieldName] :=
            dm_PCM.qry_Kalender_Kalender.FieldValues[dm_PCM.qry_Kalender_Kalender.Fields[i].FieldName];
      end;

      dm_PCM.qry_work.FieldValues['Start'] := sched_Kalender.SelStart;
      dm_PCM.qry_work.FieldValues['Finish'] := sched_Kalender.SelFinish;
      // RecurrenceInformation nicht übernehmen
      dm_PCM.qry_work.FieldValues['EventType'] := 0;
      dm_PCM.qry_work.FieldValues['RecurrenceInfo'] := null;

      dm_PCM.qry_work.Post;
      RefreshTerminundAUfgaben;

    finally
      //ssReminder.EndUpdate;
      schedDBStrg_Kalender.EndUpdate ;
      sched_Kalender.EndUpdate;
    end;
    RefreshTerminundAUfgaben;
  end;
end;
function Tfrm_Calendar.GetRecurrence(var Rule, Start:  string) : Ansistring;
  procedure Check1(ACheckBox: boolean; var AOccurDays: TDays; var DayOfweek);
  begin
    if ACheckBox then
      Include(AOccurDays, TDay(DayOfweek ));
  end;
var
  ARecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
  sFreq,sVar: string;
  strlstliste: TStringList;
  i: Integer;
  iJahr,iMonat,iTag: dword;
  irecCount: Integer;
  irecDayNumber: Integer;
  daytyprecDayType: TcxDayType;
  dattimrecFinish: TDateTime;
  daysrecOccurDays: TDays;
  recPeriodicity: Integer;
  recuRecurrence: TcxRecurrence;
  datTimrecStart: TDateTime;
  irecYearPeriodicity: Integer;
  sDate, srecBYDAY: string;
  daysAOccurDays: TDays;
  imyPosition : Integer;
  bDayOfWeek1,bDayOfWeek2,bDayOfWeek3,bDayOfWeek4,
  bDayOfWeek5,bDayOfWeek6,bDayOfWeek7: boolean;
//  iEventtpye: integer;
  iDayOfWeek1,iDayOfWeek2,iDayOfWeek3,iDayOfWeek4,
  iDayOfWeek5,iDayOfWeek6,iDayOfWeek7: integer;
begin
//  iEventtpye:= 1;
  Result:= '';
  FillChar(ARecurrenceInfo, SizeOf(ARecurrenceInfo), 0);
//  sline:= Rule;
  strlstliste := TStringList.Create();
  strlstliste.Delimiter := ';';
  strlstliste.StrictDelimiter := True;
  strlstliste.DelimitedText := Rule;
  iJahr:= StrToInt(Copy(Start,1,4));
  iMonat:= StrToInt(Copy(Start,6,2));
  iTag:= StrToInt(Copy(Start,9,2));

  irecCount:= -1;
  irecDayNumber:= 1;
  daytyprecDayType:= cxdtEveryDay;
  dattimrecFinish:= StrToDate('29.12.1899');
  daysrecOccurDays:= [dThursday];
  recPeriodicity:= 1;
  recuRecurrence:= cxreDaily;
  datTimrecStart:= EncodeDate(iJahr,iMonat,iTag);
  irecYearPeriodicity:= 1;

  for I := 0 to strlstliste.count - 1  do
  begin
    sVar := strlstliste.Strings[i];
    if Copy(sVar,1,5) = 'FREQ='  then
    begin
      sFreq:=  StringReplace(sVar,'FREQ=','',[rfIgnoreCase,rfReplaceAll]);
    end;

    if Copy(sVar,1,9) = 'INTERVAL='  then
    begin
      recPeriodicity:=  StrToInt(StringReplace(sVar,'INTERVAL=','',[rfIgnoreCase,rfReplaceAll]));
    end;

    if Copy(sVar,1,6) = 'UNTIL='  then
    begin
      sDate:= StringReplace(sVar,'UNTIL=','',[rfIgnoreCase,rfReplaceAll]);
      iJahr:= StrToInt(Copy(Start,1,4));
      iMonat:= StrToInt(Copy(Start,6,2));
      iTag:= StrToInt(Copy(Start,9,2));
      dattimrecFinish:= EncodeDate(iJahr,iMonat,iTag);
    end;

    if Copy(sVar,1,6) = 'COUNT='  then
    begin
      irecCount:=  StrToInt(StringReplace(sVar,'COUNT=','',[rfIgnoreCase,rfReplaceAll]));
    end;

    if Copy(sVar,1,6) = 'BYDAY='  then
    begin
      srecBYDAY:=  StringReplace(sVar,'BYDAY==','',[rfIgnoreCase,rfReplaceAll]);
      imyPosition := Pos('SU', srecBYDAY);
      if imyPosition > 0 then
      begin
        bDayOfWeek1 := true
      end
      else begin
        bDayOfWeek1:= false;
      end;

      imyPosition := Pos('MO', srecBYDAY);
      if imyPosition > 0 then
        bDayOfWeek2:= true
      else
        bDayOfWeek2:= false;

      imyPosition := Pos('TU', srecBYDAY);
      if imyPosition > 0 then
        bDayOfWeek3:= true
      else
        bDayOfWeek3:= false;

      imyPosition := Pos('WE', srecBYDAY);
      if imyPosition > 0 then
        bDayOfWeek4:= true
      else
        bDayOfWeek4:= false;

      imyPosition := Pos('TH', srecBYDAY);
      if imyPosition > 0 then
        bDayOfWeek5:= true
      else
        bDayOfWeek5:= false;

      imyPosition := Pos('FR', srecBYDAY);
      if imyPosition > 0 then
        bDayOfWeek6:= true
      else
        bDayOfWeek6:= false;

      imyPosition := Pos('SA', srecBYDAY);
      if imyPosition > 0 then
        bDayOfWeek7:= true
      else
        bDayOfWeek7:= false;

      iDayOfWeek1:= 0;
      iDayOfWeek2:= 1;
      iDayOfWeek3:= 2;
      iDayOfWeek4:= 3;
      iDayOfWeek5:= 4;
      iDayOfWeek6:= 5;
      iDayOfWeek7:= 6;
      daysAOccurDays := [];
      Check1(bDayOfWeek1, daysAOccurDays,iDayOfWeek1);
      Check1(bDayOfWeek2, daysAOccurDays,iDayOfWeek2);
      Check1(bDayOfWeek3, daysAOccurDays,iDayOfWeek3);
      Check1(bDayOfWeek4, daysAOccurDays,iDayOfWeek4);
      Check1(bDayOfWeek5, daysAOccurDays,iDayOfWeek5);
      Check1(bDayOfWeek6, daysAOccurDays,iDayOfWeek6);
      Check1(bDayOfWeek7, daysAOccurDays,iDayOfWeek7);
      daysrecOccurDays := daysAOccurDays;
    end;
  end;

  case AnsiIndexStr(sFreq, ['DAILY', 'WEEKLY','MONTHLY','YEARLY']) of
    0:
    begin
      recuRecurrence:= cxreDaily;
    end;
    1:
    begin
      recuRecurrence:= cxreWeekly;
    end;

    2:
    begin
      recuRecurrence:= cxreMonthly;
    end;

    3:
    begin
      recuRecurrence:= cxreYearly;
    end;
  end;

  with ARecurrenceInfo do
  begin
    Count := irecCount;
    DayNumber := irecDayNumber;
    DayType := daytyprecDayType;
    Finish := dattimrecFinish;
    OccurDays := daysrecOccurDays;
    Periodicity := recPeriodicity;
    Recurrence := recuRecurrence;
    Start := datTimrecStart;
    YearPeriodicity := irecYearPeriodicity;
  end;
  RecurrenceInfo:= ARecurrenceInfo;
  Result := cxRecurrenceInfoDataToString(ARecurrenceInfo);
end;
procedure Tfrm_Calendar.OpenEvent(ID_kalender: Integer; bReminder: Boolean);
var
  schedeventE : TcxSchedulerControlEvent;
  bCompleteDay: boolean;
  iNewId: integer;
begin
//  if bReminder = False then
//  begin
  dm_PCM.qry_Kalender_Aufgaben.Locate('ID',ID_kalender,[]);
  try
    schedeventE := TcxSchedulerControlEvent(schedDBStrg_Kalender.GetEventByID(ID_kalender));
  except
    schedeventE:= nil;
  end;
  Application.CreateForm(TfNeu, fNeu);

  if dm_PCM.qry_Kalender_Aufgaben.FieldByName('CompleteDay').asString = 'true' then
    bCompleteDay:= true
  else
    bCompleteDay:= false;



  if fneu.Execute(schedDBStrg_Kalender,dm_PCM.qry_Kalender_Aufgaben.FieldByName('Typ').asInteger,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_Adr_Wurzel').AsInteger,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_Ansprechpartner').AsInteger,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Caption').AsString,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Message').AsString,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').AsInteger,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Start').AsDateTime,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Finish').AsDateTime,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Aufgabenstatus').AsInteger,
    False,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_IC_Prioritaeten').AsInteger,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_IC_AufgabenArten').AsInteger,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Aufgabendauer').AsInteger,
    0,
    0,
    0,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Reminder').asBoolean,
    bCompleteday,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ReminderMinutesBeforeStart').AsInteger,
    false,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Zeitformat').AsInteger,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Erledigungsgrad').AsInteger,
    schedeventE,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Jira_Ticket').AsString,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('wiederholung_text').AsString,
    iNewId) then
  begin
    RefreshTerminundAUfgaben;
    fNeu:= nil;
  end;

end;
procedure Tfrm_Calendar.btn_TerminchangeClick(Sender: TObject);
begin
  if (sched_Kalender.SelectedEventCount = 1)  then //and not Assigned(fNeu)
  begin
   if dm_PCM.ikalender >= 2 then
     OpenEvent(sched_Kalender.SelectedEvents[0].ID, sched_Kalender.SelectedEvents[0].Reminder);
  end;
end;
procedure Tfrm_Calendar.btn_TerminDeleteClick(Sender: TObject);
var
  ibuttonSelected : Integer;
begin
  if sched_Kalender.SelectedEventCount > 0 then
  begin
    ibuttonSelected := MessageDlg('Möchten sie den Termin wirklich löschen?',mtWarning, mbYesNo, 0);
    if ibuttonSelected = mrYes then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Termin ' + sched_Kalender.SelectedEvents[0].Caption + ' von  '  +
                                                        DateTimeToStr(sched_Kalender.SelectedEvents[0].Start) + ' bis ' +
                                                        DateTimeToStr(sched_Kalender.SelectedEvents[0].Finish) + ' wurde gelöscht';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
      dm_PCM.qry_work.SQL.Text:='Delete From manager_Kalender Where ID = :ID';
      dm_PCM.qry_work.ParamByName('ID').AsInteger:= sched_Kalender.SelectedEvents[0].ID;
      dm_PCM.qry_work.ExecSQL;
      RefreshTerminundAUfgaben;
    end;
    if ibuttonSelected = mrCancel then
      exit;
  end;

end;
procedure Tfrm_Calendar.ReadICSAutomatic;
var
//  strWrtStream: TStreamWriter;
//  flWRTstream: TFileStream;
  aData : riCalItem;
  ASnot,asmem: Ansistring;
  i: integer;
  sDateBegin, sDateEnd:string;
  sTagBegin, sMonatBegin, sJahrBegin: String;
  sTagEnd, sMonatEnd, sJahrEnd: String;

  sStundeBegin, sMinuteBegin, sSekundeBegin: String;
  sStundeEnd, sMinuteEnd, sSekundeEnd: String;
  asBeschreibung: Ansistring;
  sReminder: string;
  sReminderDate: string;
  iReminderMinutes: integer;
  iOptions:integer;
  sGanzerTag:string;
  aData1: TiCalPackage;
  aList : TStringList;
//  aitem : riCalItem;

  sFile,sBenutzer,sPasswort,sLink,sKalender,sErinnerung: string;
  iErinnerungVor: integer;
  sColor,sFontColor: string;
  asRecurrence: Ansistring;
  datTimTermin,dtNow: TDateTime;
  strlstICal: TStringList;
	iEventtpye: integer;
  swiederholungtext: String;
begin
  aData:= nil;
  asRecurrence:='';
  dm_PCM.qry_work.SQL.Text:= 'Select ID, Kalender,Link,Benutzer,Passwort, Erinnerung, ErinnerungVor,LabelColor,Fontcolor,ID_Benutzer ' +
                   'From manager_kalender_konfiguration Where ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_work.open;
  while not dm_PCM.qry_work.eof do
  begin
    try
      sFile:= GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\'+ dm_PCM.qry_work.FieldByName('Kalender').asString + '.ics';
      sBenutzer:= dm_PCM.qry_work.FieldByName('Benutzer').asString;
      sPasswort:= dm_PCM.qry_work.FieldByName('Passwort').asString;
      sLink:=dm_PCM.qry_work.FieldByName('Link').AsString;
      sKalender:= dm_PCM.qry_work.FieldByName('Kalender').asString;
      sErinnerung:= dm_PCM.qry_work.FieldByName('Erinnerung').AsString;
      iErinnerungVor:= dm_PCM.qry_work.FieldByName('ErinnerungVor').AsInteger;
      sColor := dm_PCM.qry_work.FieldByName('LabelColor').AsString;
      sFontColor := dm_PCM.qry_work.FieldByName('FontColor').AsString;
      rstclt_main.BaseURL:= sLink;
      HTTPBasAut_Main.username:= sBenutzer;
      HTTPBasAut_Main.Password:= sPasswort;
      rstreq_main.Execute;
      strlstICal:= TStringList.Create;
      strlstICal.Text:= rstRsp_main.Content;
      strlstICal.SaveToFile(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\'+ dm_PCM.qry_work.FieldByName('Kalender').asString + '.ics',TEncoding.UTF8);
      strlstICal.Free;
      ASnot:='\n';
      asmem:= '\,';
      aData1 := TiCalPackage.Create(sFile,frm_Calendar);
//      aList := TStringList.Create;
      aList := aData1.iCalList;
      schedDBStrg_Kalender.BeginUpdate;
      if aList.Count > 0 then
      begin
        dm_PCM.qry_work1.SQL.Text:= 'Delete From manager_Kalender where Kalendername = :Kalender and ID_Benutzer = :ID_Benutzer';
        dm_PCM.qry_work1.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
        dm_PCM.qry_work1.ParamByName('Kalender').AsString:= sKalender;
        dm_PCM.qry_work1.ExecSQL;
        dm_PCM.qry_work1.close;
        ShowWaitForm(TForm(Self), PWideChar('Termine importieren'), alist.Count-1, ClientWidth, Height);
        Application.ProcessMessages;
        Screen.Cursor:= crHourGlass;
        Application.ProcessMessages;
        for i := 0 to alist.Count -1 do begin
          aData := riCalItem.create;
          aData := alist.Objects[i] as riCalItem;
          if Length(aData.DTSTART) < 9 then
          begin
            sJahrBegin:= Copy(aData.DTSTART,Length(aData.DTSTART) - 8,4);
            sMonatBegin:=Copy(aData.DTSTART,Length(aData.DTSTART) - 3,2);
            sTagBegin:=Copy(aData.DTSTART,Length(aData.DTSTART) - 1,2);
            if aData.DTEND = '' then
            begin
              sJahrEnd:= Copy(DateToStr(aData.DTStartd + 1), 7,4);
              sMonatEnd:=Copy(DateToStr(aData.DTStartd + 1), 4,2);
              sTagEnd:=Copy(DateToStr(aData.DTStartd + 1), 1,2);
            end
            else begin
              sJahrEnd:= Copy(aData.DTEND,1,4);
              sMonatEnd:=Copy(aData.DTEND,5,2);
              sTagEnd:=Copy(aData.DTEND,7,2);
            end;

            if sErinnerung = 'true' then
            begin
              sReminder:= 'true';
              sReminderDate:= DateTimeToStr(IncMinute(StrToDateTime(
              sTagBegin +'.' + sMonatBegin + '.' + sJahrBegin + ' 00:00:00'),iErinnerungVor *-1));
              sReminderDate:= Copy(sReminderDate,7,4) + '-' + Copy(sReminderDate,4,2) + '-'
              + Copy(sReminderDate,1,2) + ' ' + Copy(sReminderDate,12,8);
              iReminderMinutes:= iErinnerungVor;
              iOptions:= 6;
              datTimTermin := EncodeDateTime(StrToInt(sJahrBegin),StrToInt(sMonatBegin),
                 StrToInt(sTagBegin),StrToInt(sStundeBegin),StrToInt(sMinuteBegin),
                 StrToInt(sSekundeBegin),0);
              dtNow:= now();
              if datTimTermin < dtNow then
              begin
                sReminder:= 'false';
                sReminderDate:= 'NULL';
                iReminderMinutes:= 0;
                iOptions:= 2;
              end;
            end
            else begin
              sReminder:= 'false';
              sReminderDate:= 'NULL';
              iReminderMinutes:= 0;
              iOptions:= 2;
            end;

            sDateBegin:= sJahrBegin + '-' + sMonatBegin + '-' + sTagBegin + ' 00:00:00';
            sDateEnd:= sJahrEnd + '-' + sMonatEnd + '-' + sTagEnd + ' 00:00:00';
            sGanzerTag:= 'true';
          end
          else begin
            sJahrBegin:=Copy(aData.DTSTART,Length(aData.DTSTART) - 15,4);
            sMonatBegin:=Copy(aData.DTSTART,Length(aData.DTSTART) - 10,2);
            sTagBegin:=Copy(aData.DTSTART,Length(aData.DTSTART) - 8,2);
            sJahrEnd:= Copy(aData.DTEND,Length(aData.DTEND) - 15,4);
            sMonatEnd:=Copy(aData.DTEND,Length(aData.DTEND) - 10,2);
            sTagEnd:=Copy(aData.DTEND,Length(aData.DTEND) - 8,2);
            sStundeBegin:= Copy(aData.DTSTART,Length(aData.DTSTART) - 5,2);
            sMinuteBegin:= Copy(aData.DTSTART,Length(aData.DTSTART) - 3,2);
            sSekundeBegin:= Copy(aData.DTSTART,Length(aData.DTSTART) - 1,2);
            sStundeEnd:= Copy(aData.DTEND,Length(aData.DTEND) - 5,2);
            sMinuteEnd:= Copy(aData.DTEND,Length(aData.DTEND) - 3,2);
            sSekundeEnd:= Copy(aData.DTEND,Length(aData.DTEND) - 1,2);
            sDateBegin:= sJahrBegin + '-' + sMonatBegin + '-' + sTagBegin + ' ' + sStundeBegin + ':' +
            sMinuteBegin + ':' + sSekundeBegin;
            sDateEnd:= sJahrEnd + '-' + sMonatEnd + '-' + sTagEnd + ' ' + sStundeEnd + ':' +
            sMinuteEnd + ':' + sSekundeEnd;

            if sErinnerung = 'true' then
            begin
              sReminder:= 'true';
              sReminderDate:= DateTimeToStr(IncMinute(StrToDateTime(
              sTagBegin +'.' + sMonatBegin + '.' + sJahrBegin + ' '
              + sStundeBegin + ':' + sMinuteBegin + ':' + sSekundeBegin),iErinnerungVor *-1));
              sReminderDate:= Copy(sReminderDate,7,4) + '-' + Copy(sReminderDate,4,2) + '-'
              + Copy(sReminderDate,1,2) + ' ' + Copy(sReminderDate,12,8);
              iReminderMinutes:= iErinnerungVor;
              iOptions:= 6;

              datTimTermin := EncodeDateTime(StrToInt(sJahrBegin),StrToInt(sMonatBegin),
                 StrToInt(sTagBegin),StrToInt(sStundeBegin),StrToInt(sMinuteBegin),
                 StrToInt(sSekundeBegin),0);
              dtNow:= now();
              if datTimTermin < dtNow then
              begin
                sReminder:= 'false';
                sReminderDate:= 'NULL';
                iReminderMinutes:= 0;
                iOptions:= 2;
              end;

            end
            else begin
              sReminder:= 'false';
              sReminderDate:= 'NULL';
              iReminderMinutes:= 0;
              iOptions:= 2;
            end;
            sGanzerTag:= 'false';
          end;
          asBeschreibung := AnsiString(ReplaceStr(ReplaceStr(String(aData.DESCRIPTION),String(ASnot),String(slinebreak)),String(asmem),','));
          if Length(asBeschreibung) < 4 then
            asBeschreibung:= '-';

          if aData.Location = '97725\, Elfershausen\, Adolf-Kolping-Str. 11' then
          begin
            aData.Location:= 'im Büro'
          end
          else begin
            if (aData.Location = '\, \, ') or (aData.Location = 'ohne Angabe') then
            begin
              aData.Location:= 'sonstiges';
            end
            else begin
              aData.Location:= 'beim Kunden';
            end;
          end;
          if aData.Location = 'beim Kunden' then
          begin
            sColordef := IntToStr(12566527);
            sFontcolordef := sFontColor;
          end
          else begin
            sColordef := sColor;
            sFontcolordef := sFontColor;

            case AnsiIndexStr(String(aData.SUMMARY), ['Biomüll', 'Restmüll','Papier','Gelber Sack','Giftmobil']) of
              // BioMüll
              0:
              begin
                sFontcolordef:= IntToStr(clWhite);
                sColordef := IntToStr(944838);
              end;
              // RestMüll
              1:
              begin
                sFontcolordef:= IntToStr(clWhite);
                sColordef := IntToStr(5658199);
              end;
              // Papier
              2:
              begin
                sFontcolordef:= IntToStr(clWhite);
                sColordef := IntToStr(13214474);
              end;
              // Gelber Sack
              3:
              begin
                sFontcolordef:= IntToStr(clBlack);
                sColordef := IntToStr(56831);
              end;
              // Giftmobil
              4:
              begin
                sFontcolordef:= IntToStr(clWhite);
                sColordef := IntToStr(7679146);
              end;
            end;
          end;

          iEventtpye:= 0;
          if AData.Rule <> '' then
          begin
            iEventtpye:= 1;
            asRecurrence:= GetRecurrence(AData.Rule,sDateBegin);
            swiederholungtext:= AData.Rule;//String(asRecurrence);
            sReminder:= 'true';
            iOptions:= 6;
            sReminderDate:= sDateBegin;
          end;
          if sReminderDate = 'NULL' then
          begin
            dm_PCM.qry_work1.SQL.Text:='Insert into manager_Kalender (EventType,Caption,Location,Message,'
            + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
            + 'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,Kalendername,CompleteDay,wiederholung_text) Values ('
            + ':Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
            + 'NULL,0,:Color,:FontColor,:ID,:Kalender,:ganzerTag,:wiederholung_text)';
          end
          else begin
            dm_PCM.qry_work1.SQL.Text:='Insert into manager_Kalender (EventType,Caption,Location,Message,'
            + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
            + 'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,Kalendername,CompleteDay,wiederholung_text) Values ('
            + ':Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
            + ':ReminderDate,:ReminderMinutes,:Color,:FontColor,:ID,:Kalender,:ganzerTag,:wiederholung_text)';
            dm_PCM.qry_work1.ParamByName('ReminderDate').AsString:= sReminderDate;
            dm_PCM.qry_work1.ParamByName('ReminderMinutes').AsInteger:= iReminderMinutes;
          end;
          dm_PCM.qry_work1.ParamByName('Eventtype').ASinteger:= iEventtpye;
          dm_PCM.qry_work1.ParamByName('SUMMARY').AsAnsiString:= aData.SUMMARY;
          dm_PCM.qry_work1.ParamByName('Location').AsString:= StringReplace(String(aData.Location),'\','',[rfIgnoreCase,rfReplaceAll]);
          dm_PCM.qry_work1.ParamByName('Beschreibung').AsString:= String(asBeschreibung);
          dm_PCM.qry_work1.ParamByName('DateBegin').AsString:= sDateBegin;
          dm_PCM.qry_work1.ParamByName('DateEnd').AsString:= sDateEnd;
          dm_PCM.qry_work1.ParamByName('Options').AsInteger:= iOptions;
          dm_PCM.qry_work1.ParamByName('Reminder').AsString:= sReminder;
          dm_PCM.qry_work1.ParamByName('RecurrenceInfo').AsAnsiString:= asRecurrence;
          dm_PCM.qry_work1.ParamByName('Color').AsString:= IntToStr(16777215);
          dm_PCM.qry_work1.ParamByName('FontColor').AsString:= IntToStr(16777215);
          dm_PCM.qry_work1.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
          dm_PCM.qry_work1.ParamByName('Kalender').AsString:= sKalender;
          dm_PCM.qry_work1.ParamByName('ganzerTag').AsString:= sGanzerTag;
          dm_PCM.qry_work1.ParamByName('wiederholung_text').AsString:= swiederholungtext;
          dm_PCM.qry_work1.ExecSQL;
          dm_PCM.qry_work1.close;

          WaitFormStep;
          Application.ProcessMessages;
        end;
        Screen.Cursor:= crDefault;
        Application.ProcessMessages;
      end;
      aData.Free;
      dm_PCM.qry_work.SQL.Text:=  'SELECT MAX(ID) as ID FROM manager_kalender ' +
                        'GROUP BY EventType,Caption,Location,Message,Start,Finish,Options,CompleteDay,' +
                        'Parent_ID,RecurrenceIndex,Reminder,ReminderDate,ReminderMinutesBeforeStart,'+
                        'LabelColor,FontColor,ID_Benutzer,Kalendername ' +
                        'Having Count(ID) > 1';
      dm_PCM.qry_work.open;
      while not dm_PCM.qry_work.Eof do
      begin
        dm_PCM.qry_work1.SQL.Text:= 'DELETE FROM Manager_kalender WHERE ID = :ID';
        dm_PCM.qry_work1.ParamByName('ID').AsInteger:= dm_PCM.qry_work.FieldByName('ID').AsInteger;
        dm_PCM.qry_work1.ExecSQL;
        dm_PCM.qry_work.Next;
      end;
      dm_PCM.qry_work.Close;
      RefreshTerminundAUfgaben;
      schedDBStrg_Kalender.FullRefresh;
      schedDBStrg_Kalender.EndUpdate;
    except
      on e:system.sysutils.Exception do
      begin
//        MessageDlg('Fehler:'+e.Message, mtError, [mbOk], 0);;
      end;
    end;
    dm_PCM.qry_work.Next;
  end;
  dm_PCM.qry_work.close;
  CloseWaitForm;
//  frm_PCM_Functions.free;
end;
procedure Tfrm_Calendar.sch_KalenderAfterSizingEvent(Sender: TcxCustomScheduler;AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Accept: Boolean);
var
  sDateBegin, sDateEnd: string;
begin
  // Begindatum ermittlen
  sDateBegin:= Copy(DateTimeToStr(sched_Kalender.SelectedEvents[0].Start),7,4) + '-'
  + Copy(DateTimeToStr(sched_Kalender.SelectedEvents[0].Start),4,2) + '-'
  + Copy(DateTimeToStr(sched_Kalender.SelectedEvents[0].Start),1,2) + ' '
  + Copy(DateTimeToStr(sched_Kalender.SelectedEvents[0].Start),12,8);
  // Enddatum ermittlen
  sDateEnd:= Copy(DateTimeToStr(sched_Kalender.SelectedEvents[0].Finish),7,4) + '-'
  + Copy(DateTimeToStr(sched_Kalender.SelectedEvents[0].Finish),4,2) + '-'
  + Copy(DateTimeToStr(sched_Kalender.SelectedEvents[0].Finish),1,2) + ' '
  + Copy(DateTimeToStr(sched_Kalender.SelectedEvents[0].Finish),12,8);
  dm_PCM.qry_work.close;
  dm_PCM.qry_work.SQL.Text:= 'Update manager_Kalender Set Start = :Begin, Finish = :End WHERE ID = :ID';
  dm_PCM.qry_work.ParamByName('Begin').AsString:= sDateBegin;
  dm_PCM.qry_work.ParamByName('End').AsString:= sDateEnd;
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= sched_Kalender.SelectedEvents[0].ID;
  dm_PCM.qry_work.ExecSQL;
  dm_PCM.qry_work.Close;

end;
procedure Tfrm_Calendar.sched_KalenderBeforeDragEvent(Sender: TcxCustomScheduler;AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Allow: Boolean);
begin
  iCopyEventId := 0;
  if (dm_PCM.iKalender > 1) AND (AEvent.RecurrenceIndex < 0)  then
  begin
    if (GetKeyState(VK_LCONTROL) < 0) OR (GetKeyState(VK_RCONTROL) < 0) then
      Allow := False
    else
    begin
      iCopyEventId := AEvent.ID;
      Allow := True;
    end;
  end
  else
    Allow := False;
end;
procedure Tfrm_Calendar.sched_KalenderBeforeSizingEvent( Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Allow: Boolean);
begin
  if dm_PCM.iKalender > 1 then
  begin
    Allow := true;
  end
  else begin
    Allow := false;
  end;
end;
procedure Tfrm_Calendar.sched_KalenderClick(Sender: TObject);
var
  vwHitTest: TcxSchedulerViewHitTest;
begin
  vwHitTest := sched_Kalender.CurrentView.HitTest;
  if vwHitTest.HitAtEvent then
  begin
    sched_Kalender.SelectEvent(vwHitTest.Event);
  end;
end;
procedure Tfrm_Calendar.sched_KalenderCustomDrawDayHeader(Sender: TObject;  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDayHeaderCellViewInfo;  var ADone: Boolean);
begin
  AViewInfo.DisplayText:= StringReplace(AViewInfo.DisplayText, '/ ', '. ', [rfReplaceAll, rfIgnoreCase]);
end;
procedure Tfrm_Calendar.sched_KalenderCustomDrawEvent(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo; var ADone: Boolean);
begin
  dm_PCM.qry_work.Close;
  dm_PCM.qry_work.SQL.Text := 'SELECT LabelColor,FontColor from manager_Kalender WHERE ID = ' + intToStr(AViewInfo.Event.ID);
  dm_PCM.qry_work.Open;
  if dm_PCM.qry_work.FieldByName('LabelColor').AsString <> '' then
  begin
    ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('FontColor').asInteger;
    ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('LabelColor').AsInteger;
  end
  else begin
    ACanvas.Font.Color := defaultFontColor;
    ACanvas.Brush.Color := defaultLabelColor;
  end;
  dm_PCM.qry_work.Close;
end;
procedure Tfrm_Calendar.sched_KalenderDblClick(Sender: TObject);
begin
  if dm_PCM.iKalender >= 2 then
  begin
    if sched_Kalender.SelectedEventCount > 0 then
    begin
      btn_TerminchangeClick(Sender);
    end;
  end;
end;
procedure Tfrm_Calendar.sched_KalenderGetEventEditProperties(Sender: TObject; AEvent: TcxSchedulerControlEvent; var AProperties: TcxCustomEditProperties);
begin
  AProperties := riEvent.Properties;
end;
procedure Tfrm_Calendar.sched_KalenderGetEventHintText(Sender: TObject; AEvent: TcxSchedulerControlEvent; var AText: string);
var
  i: integer;
  sBegin: string;
  sFinish: string;
  sBetreff: string;
  slocation: string;
  sMessage: string;
  sKalender: string;
  sName: string;
  sStrasse: string;
  sOrt: string;
  sTelefon: string;
  sMobil: string;
  sEmail: string;
begin
  i:= AEvent.ID;
  if i > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= 'SELECT mgr_cal.Caption, mgr_cal.Location, ' +
                        'mgr_cal.Message, mgr_cal.Start, ' +
                        'mgr_cal.Finish, mgr_cal.Options,mgr_cal.Reminder, ' +
                        'mgr_cal.ReminderDate, ' +
                        'mgr_cal.ReminderMinutesBeforeStart,mgr_cal.LabelColor, mgr_cal.CompleteDay, mgr_cal.Kalendername, ' +
                        'mgr_con.Vorname, mgr_con.Nachname, ' +
                        'IF(mgr_con.Strasse_Privat = '''',mgr_con.Strasse_Ges,mgr_con.Strasse_Privat) AS Strasse, ' +
                        'IF(mgr_con.PLZ_Privat = '''',mgr_con.PLZ_Ges,mgr_con.PLZ_Privat) AS PLZ, ' +
                        'IF(mgr_con.Ort_Privat = '''',mgr_con.Ort_Ges,mgr_con.Ort_Privat) AS Ort, ' +
                        'IF(mgr_con.Telefon_Privat = '''',mgr_con.Telefon_Ges,mgr_con.Telefon_Privat) AS Telefon, ' +
                        'IF(mgr_con.Handy_privat = '''',mgr_con.Handy_ges,mgr_con.Handy_privat) AS Handy, ' +
                        'IF(mgr_con.E_Mail_Privat = '''',mgr_con.E_Mail_ges,mgr_con.E_Mail_Privat) AS Mail ' +
                        'FROM manager_Kalender mgr_cal ' +
                        'LEFT OUTER JOIN manager_Kontakte mgr_con ON  mgr_con.ID = mgr_cal.ID_Kontakte ' +
                        'WHERE mgr_cal.ID = :ID';

    dm_PCM.qry_work.ParamByName('ID').AsInteger:= i;
    dm_PCM.qry_work.Open;
    sBegin:= Copy(dm_PCM.qry_work.FieldByName('Start').AsString,12,5);
    if sBegin = '' then
      sBegin := '00:00';
    sFinish:= Copy(dm_PCM.qry_work.FieldByName('Finish').AsString,12,5);
    if sFinish = '' then
      sFinish := '00:00';
    sBetreff:= dm_PCM.qry_work.FieldByName('Caption').AsString;
    slocation:= dm_PCM.qry_work.FieldByName('Location').AsString;
    sMessage:= dm_PCM.qry_work.FieldByName('Message').AsString;
    sKalender:= dm_PCM.qry_work.FieldByName('Kalendername').AsString;
    sName:= dm_PCM.qry_work.FieldByName('Vorname').AsString + ' ' + dm_PCM.qry_work.FieldByName('Nachname').AsString;
    sStrasse:= dm_PCM.qry_work.FieldByName('Strasse').AsString;
    sOrt:= dm_PCM.qry_work.FieldByName('PLZ').AsString + ' '+ dm_PCM.qry_work.FieldByName('Ort').AsString;
    sTelefon:= dm_PCM.qry_work.FieldByName('Telefon').AsString;
    sMobil:= dm_PCM.qry_work.FieldByName('Handy').AsString;
    sEmail:=dm_PCM.qry_work.FieldByName('Mail').AsString;

    dm_PCM.qry_work.close;

    AText :=  'Zeit: ' + sBegin + ' bis ' + sFinish + Slinebreak
              + 'Kalender: ' + sKalender + Slinebreak
              + 'Betreff: ' + sBetreff + Slinebreak
              + '___________________________________________' + slinebreak
              + slinebreak + sMessage + slinebreak
              + slinebreak
              + 'Kontakt: ' + Slinebreak + sName + slinebreak
              + sStrasse + slinebreak + sOrt + Slinebreak
              + 'Tel: ' +sTelefon + Slinebreak
              + 'Handy: ' + sMobil + Slinebreak
              + 'E-Mail: ' + sEmail + Slinebreak;
  end;

end;
procedure Tfrm_Calendar.sched_KalenderKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
  if (Key = 67) and (ssCtrl in Shift) then
  begin
    copyEvent();
    Key := 0;
  end;

  if (Key = 86) and (ssCtrl in Shift) then
  begin
    Key := 0;
    pasteEvent(iCopyEventId);
  end;
  if (Key = 46) and (dm_PCM.iKalender > 2) then
  begin
    btn_TerminDeleteClick(Sender);
  end;
end;
procedure Tfrm_Calendar.WriteICSAutomatic;
var
  sFilename : string;
  sCurrTimeStamp: string;
  stest: string;
  strlstICS,strlstListe: TStringList;
  i: integer;
begin
  dm_PCM.qry_work1.SQL.Text:= 'Select ID,url,user,passwort,kalendername,ID_Benutzer From manager_kalender_Konfiguration_ftp Where ID_Benutzer = :ID_Benutzer ';;
  dm_PCM.qry_work1.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_work1.open;
  sFilename:=  GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\'+ dm_PCM.qry_work1.FieldByName('kalendername').asString + '.ics';
  strlstICS:=TStringList.Create;
  try
    if FileExists(sFilename) then
      DeleteFile(sFilename);
    strlstICS.Add('BEGIN:VCALENDAR');
    strlstICS.Add('VERSION:2.0');
    strlstICS.Add('PRODID:-//PCM//PC-MAnager//EN');
    strlstICS.Add('BEGIN:VTIMEZONE');
    strlstICS.Add('TZID:Mitteleuropäische Zeit');
    strlstICS.Add('BEGIN:STANDARD');
    strlstICS.Add('DTSTART:16011005T030000');
    strlstICS.Add('RRULE:FREQ=YEARLY;BYDAY=-1SU;BYMONTH=10');
    strlstICS.Add('TZOFFSETFROM:+0200');
    strlstICS.Add('TZOFFSETTO:+0100');
    strlstICS.Add('END:STANDARD');
    strlstICS.Add('BEGIN:DAYLIGHT');
    strlstICS.Add('DTSTART:16010305T020000');
    strlstICS.Add('RRULE:FREQ=YEARLY;BYDAY=-1SU;BYMONTH=3');
    strlstICS.Add('TZOFFSETFROM:+0100');
    strlstICS.Add('TZOFFSETTO:+0200');
    strlstICS.Add('END:DAYLIGHT');
    strlstICS.Add('END:VTIMEZONE');
    strlstICS.Add('CALSCALE:GREGORIAN');
    sCurrTimeStamp :=   Copy(DateTimeToStr(Now),7,4) + Copy(DateTimeToStr(Now),4,2) + Copy(DateTimeToStr(Now),1,2) + 'T' +
    Copy(DateTimeToStr(Now),12,2) + Copy(DateTimeToStr(Now),15,2) + Copy(DateTimeToStr(Now),18,2) + 'Z';
    dm_PCM.qry_work.SQL.Text:= 'Select  ID, Start, Finish, Caption, Location, Message, Completeday, Reminder,ReminderMinutesBeforeStart,FontColor,Labelcolor  From manager_Kalender where ID_Benutzer=:ID';;
    dm_PCM.qry_work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.open;
    dm_PCM.qry_work.First;
    while not dm_PCM.qry_work.EOF do begin
      strlstICS.Add('BEGIN:VEVENT');
      strlstICS.Add('DTSTAMP:'+ sCurrTimeStamp);
      if dm_PCM.qry_work.FieldByName('Completeday').AsString = 'false' then
      begin
        strlstICS.Add('DTSTART;TZID=Europe/Berlin:'
        + Copy(dm_PCM.qry_work.FieldbyName('Start').asString,7,4)
        + Copy(dm_PCM.qry_work.FieldbyName('Start').asString,4,2)
        + Copy(dm_PCM.qry_work.FieldbyName('Start').asString,1,2)
        + 'T'
        + Copy(dm_PCM.qry_work.FieldbyName('Start').asString,12,2)
        + Copy(dm_PCM.qry_work.FieldbyName('Start').asString,15,2)
        + Copy(dm_PCM.qry_work.FieldbyName('Start').asString,18,2));

        strlstICS.Add('DTEND;TZID=Europe/Berlin:'
        + Copy(dm_PCM.qry_work.FieldbyName('Finish').asString,7,4)
        + Copy(dm_PCM.qry_work.FieldbyName('Finish').asString,4,2)
        + Copy(dm_PCM.qry_work.FieldbyName('Finish').asString,1,2)
        + 'T'
        + Copy(dm_PCM.qry_work.FieldbyName('Finish').asString,12,2)
        + Copy(dm_PCM.qry_work.FieldbyName('Finish').asString,15,2)
        + Copy(dm_PCM.qry_work.FieldbyName('Finish').asString,18,2));
        strlstICS.Add('SUMMARY:'+ dm_PCM.qry_work.FieldByName('Caption').asString);
        strlstListe:=TStringList.Create;
        strlstListe.Text := dm_PCM.qry_work.FieldByName('Message').AsString;
        stest:= '';
        for i := 0 to strlstListe.Count-1 do
        begin
          stest:= stest + '\n' + strlstListe[i] ;
        end;
        strlstListe.Clear;
        strlstListe.free;
        strlstICS.Add('DESCRIPTION:'+ stest);
        strlstICS.Add('UID:'+ dm_PCM.qry_work.FieldByName('ID').asString + '-' + dm_PCM.qry_work.FieldByName('ID').asString);
        strlstICS.Add('LOCATION:'+ dm_PCM.qry_work.FieldByName('Location').asstring);
      end
      else begin
        strlstICS.Add('DTSTAMP:'+ sCurrTimeStamp);
        strlstICS.Add('DTSTART;VALUE=DATE:'
        + Copy(dm_PCM.qry_work.FieldbyName('Start').asString,7,4)
        + Copy(dm_PCM.qry_work.FieldbyName('Start').asString,4,2)
        + Copy(dm_PCM.qry_work.FieldbyName('Start').asString,1,2));
        strlstICS.Add('DTEND;VALUE=DATE:'
        + Copy(dm_PCM.qry_work.FieldbyName('Finish').asString,7,4)
        + Copy(dm_PCM.qry_work.FieldbyName('Finish').asString,4,2)
        + Copy(dm_PCM.qry_work.FieldbyName('Finish').asString,1,2));
        strlstICS.Add('SUMMARY:'+ dm_PCM.qry_work.FieldByName('Caption').asString);
        strlstListe:=TStringList.Create;
        strlstListe.Text := dm_PCM.qry_work.FieldByName('Message').AsString;
        stest:= '';
        for i := 0 to strlstListe.Count-1 do
        begin
          stest:= stest + '\n' + strlstListe[i] ;
        end;
        strlstListe.Clear;
        strlstICS.Add('DESCRIPTION:'+ stest);
        strlstICS.Add('UID:'+ dm_PCM.qry_work.FieldByName('ID').asString + '-' + dm_PCM.qry_work.FieldByName('ID').asString);
      end;
      if dm_PCM.qry_work.FieldbyName('Reminder').asString = 'true' then
      begin
        strlstICS.Add('BEGIN:VALARM');
        strlstICS.Add('TRIGGER:-PT'+dm_PCM.qry_work.FieldbyName('ReminderMinutesBeforeStart').asString+'M');
        strlstICS.Add('ACTION:DISPLAY');
        strlstICS.Add('DESCRIPTION:Reminder');
        strlstICS.Add('END:VALARM');

      end;
      strlstICS.Add('END:VEVENT');
      dm_PCM.qry_work.Next;
    end;
    strlstICS.Add('END:VCALENDAR');
    strlstICS.SaveToFile(sFilename,TEncoding.UTF8);
    strlstICS.SaveToFile(Copy(sFilename,1,Length(sFilename) -4 )+ '_Android.ics',TEncoding.UTF8);


    cxSchedulerICalendarexport(schedDBStrg_Kalender,Copy(sFilename,1,Length(sFilename) -4 )+ '_Android.ics' );
    strlstICS.LoadFromFile(Copy(sFilename,1,Length(sFilename) -4 )+ '_Android.ics');
    strlstICS.SaveToFile(Copy(sFilename,1,Length(sFilename) -4 )+ '_Android.ics',TEncoding.UTF8);
    strlstICS.SaveToFile(sFilename,TEncoding.UTF8);


    strlstICS.free;
    if dm_PCM.qry_work1.RecordCount > 0  then
    begin
      if idFTP_Cal.Connected then
        idFTP_Cal.Disconnect;
      if idFTP_Cal.connected = false then
      begin
        idFTP_Cal.Host := dm_PCM.qry_work1.FieldByName('url').AsString;
        idFTP_Cal.Username := dm_PCM.qry_work1.FieldByName('User').AsString;
        idFTP_Cal.password := dm_PCM.qry_work1.FieldByName('Passwort').AsString;
        try
          idFTP_Cal.connect;
          idFTP_Cal.Put(sFilename);
          idFTP_Cal.Put(Copy(sFilename,1,Length(sFilename) -4 )+ '_Android.ics');
          idFTP_Cal.Disconnect;
        except
        end;
      end;
    end;
  except
  end;
  dm_PCM.qry_work1.close;
end;
procedure Tfrm_Calendar.btn_TerminExportClick(Sender: TObject);
begin
  ReadICSAutomatic;
  Application.ProcessMessages;
  WriteICSAutomatic;
end;
procedure Tfrm_Calendar.btn_CalTerminImportClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Import,frm_PCM_Import);
  if frm_PCM_Import.Execute(True,dm_PCM.iIDBenutzerPCM) then
    RefreshTerminundAUfgaben;
  frm_PCM_Import.Free;
end;
procedure Tfrm_Calendar.btn_TerminNeuClick(Sender: TObject);
var
  iNewId: integer;
begin
  Application.CreateForm(TfNeu, fNeu);
  fNeu.Execute(schedDBStrg_Kalender,2, 0, 0, '','',0,sched_Kalender.SelStart,sched_Kalender.SelFinish,0,false,0,0,0,0,0,0,false,false,15,false,0,0,nil,'','',iNewId);
  fNeu := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.RefreshCalender;
begin
  dm_PCM.qry_Kalender_Kalender.SQL.Text:=  'Select ID,EventType,Caption,Location,Message,Start,' +
                        'Finish,Options,Completeday,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'+
                        'ReminderMinutesBeforeStart,LabelColor,Fontcolor, ID_Benutzer,ID_kontakte From manager_Kalender ' +
                        'Where ID_Benutzer = :ID';
  dm_PCM.qry_Kalender_Kalender.ParamByName('ID').AsInteger := dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Kalender_Kalender.open;
end;
procedure Tfrm_Calendar.btn_TerminTodayClick(Sender: TObject);
begin
  sched_Kalender.SelectDays(Date, Date, True);
end;
procedure Tfrm_Calendar.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  SetButtons;
end;

procedure Tfrm_Calendar.qry_StundenplanAfterScroll(DataSet: TDataSet);
var
  iID_Stundenplan: integer;
begin
  Setbuttons;
  iID_Stundenplan:= qry_Stundenplan.FieldByName('ID').AsInteger;
  qry_Stundenplan_detail.Filter:= 'ID_Stundenplan = ' + IntToStr(iID_Stundenplan);
  qry_Stundenplan_detail.Filtered:= true;
end;
procedure Tfrm_Calendar.qWF_Nachrichten_AnhaengeAfterScroll(DataSet: TDataSet);
  function GetFileNameInfo(const FileName: string; out TypeName: string): HICON;
  var
    FileInfo: TSHFileInfo;
    ImageList: HIMAGELIST;
    Flags: Cardinal;
  begin
    FillChar(FileInfo, SizeOf(FileInfo), #0);
    Flags := SHGFI_SHELLICONSIZE or SHGFI_TYPENAME;
    ImageList := SHGetFileInfo(PChar(FileName), 0, FileInfo, SizeOf(FileInfo),
      Flags or SHGFI_SYSICONINDEX);
    TypeName := FileInfo.szTypeName;
    if ImageList <> 0 then
      Result := ImageList_ExtractIcon(0, ImageList, FileInfo.iIcon)
    else
      Result := 0;
  end;

var
  f: string;
  Icon: TIcon;
  tn: string;
begin

  if not qWF_Nachrichten_Anhaenge.ControlsDisabled then
  begin
    f := qWF_Nachrichten_AnhaengeDateinameSave.AsString;
    if f <> '' then
    begin
      f := GetAttachmentFilename(f);
      Icon := TIcon.Create;
      Icon.Handle := GetFileNameInfo(f, tn);
      lTypeName.Caption := tn;
      Image1.Picture.Assign(Icon);
      Icon.Free;
    end
    else
    begin
      Image1.Picture.Assign(nil);
      lTypeName.Caption := '';
    end;
  end;
end;

procedure Tfrm_Calendar.pc_KalenderClick(Sender: TObject);
begin
  if pc_Kalender.Properties.ActivePage = ts_A_kalender then
  begin
    Application.ProcessMessages;
    sched_Kalender.SelectDays(Date, Date, True);
    Application.ProcessMessages;
    dm_PCM.qry_Kalender_Benutzer.SQL.Text:= 'Select ID, CONCAT(Nachname, ' + QuotedStr(', ') + ' ,Vorname) as Name '+'From Benutzer Where ID = :ID';
    dm_PCM.qry_Kalender_Benutzer.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_Kalender_Benutzer.Open;
    Application.ProcessMessages;
    Application.ProcessMessages;
    dm_PCM.qry_Kalender_Kalender.SQL.Text:=  'Select ID,EventType,Caption,Location,Message,Start,' +
                          'Finish,Options,CompleteDay,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'+
                          'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,ID_kontakte From manager_Kalender ' +
                          'Where Typ = 2 and ID_Benutzer = :ID';;
    dm_PCM.qry_Kalender_Kalender.ParamByName('ID').asBlob:= AnsiStrIng(IntToStr(dm_PCM.iIDBenutzerPCM));
    dm_PCM.qry_Kalender_Kalender.Open;
    try
      Application.ProcessMessages;
      ReadICSAutomatic;
      Application.ProcessMessages;
      WriteICSAutomatic;
    except
    end;
    Application.ProcessMessages;
    btn_CalArbeitswocheClick(Self);
    btn_CalArbeitswoche.LargeImageIndex:= 16;
    btn_CalTag.LargeImageIndex:= 39;
    btn_CalWoche.LargeImageIndex:= 41;
    btn_CalMonat.LargeImageIndex:= 42;
    btn_CalJahr.LargeImageIndex:= 44;
    schedDBStrg_Kalender.Reminders.Active:= true;
  end;
  FormResize(Self);
end;
procedure Tfrm_Calendar.btn_CalAnsichtClick(Sender: TObject);
begin
  if bol_VollBildCal = false then
  begin
    bol_VollBildCal:= true;
    frm_PCM_main.navbr_main.Width:= 0;
    frm_PCM_main.pcmain.properties.HideTabs:= true;
    pc_kalender.properties.HideTabs:= true;
    btn_CalAnsicht.Caption:= 'norm. Ansicht';
    btn_CalAnsicht.LargeImageIndex:= 31;
//    nbk_main.Left:= 0;
//    nbk_main.Width:= dm_PCM.clientWidth;
  end
  else begin
    bol_VollBildCal:= false;
    frm_PCM_main.navbr_main.Width:= 200;
    frm_PCM_main.pcmain.properties.HideTabs:= false;
    pc_kalender.properties.HideTabs:= false;
    btn_CalAnsicht.Caption:= 'max. Ansicht';
    btn_CalAnsicht.LargeImageIndex:= 32;
//    nbk_Main.Left:= 200;
//    nbk_main.Width:= dm_PCM.ClientWidth - 200;
  end;
end;
procedure Tfrm_Calendar.btn_CalArbeitswocheClick(Sender: TObject);
begin
  FKalenderDateButton := True;
  tag := Round(sched_Kalender.SelectedDays.Count / 2);
  sched_Kalender.SelectWorkDays(sched_Kalender.SelectedDays[tag]);
  btn_CalZurueck.Hint := 'Eine Arbeitswoche zurück springen';
  btn_CalVor.Hint := 'Eine Arbeitswoche vor springen';
  btn_CalTag.LargeImageIndex:= 39;
  btn_CalArbeitswoche.LargeImageIndex:= 16;
  btn_CalWoche.LargeImageIndex:= 41;
  btn_CalMonat.LargeImageIndex:= 42;
  btn_CalJahr.LargeImageIndex:= 44;
end;
procedure Tfrm_Calendar.btn_CalArbeitszeitClick(Sender: TObject);
begin
  if (btn_CalArbeitswoche.LargeImageIndex = 16) or (btn_CalTag.LargeImageIndex = 15) then
  begin
    if bol_allday then
    begin
      sched_Kalender.ViewDay.WorkTimeOnly := true;
      btn_CalCompleteday.LargeImageIndex:= 21;
      bol_allday:= false;
    end
    else begin
      sched_Kalender.ViewDay.WorkTimeOnly := false;
      btn_CalCompleteday.LargeImageIndex:= 45;
      bol_allday:= true;
    end;
  end;
end;
procedure Tfrm_Calendar.btn_CalExporttoOutlookClick(Sender: TObject);
var
  sKalPriv,sKalGes: String;
begin
  dm_PCM.qry_Work.sql.text:= 'Select Account_Privat,Account_Geschaeftlich From manager_kalender_optionen Where ID_Benutzer =:ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID_benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  sKalPriv:= dm_PCM.qry_Work.FieldByName('Account_Privat').asString;
  sKalGes:= dm_PCM.qry_Work.FieldByName('Account_Geschaeftlich').asString;
  dm_PCM.qry_Work.Close;
  AddOutlookEvents(sKalPriv,sKalGes);
end;
//procedure Tfrm_Calendar.AddAndGet;
//var
//  sKalPriv,sKalGes: String;
//begin
////  try
////    dm_PCM.qry_Work.sql.text:= 'Select Account_Privat,Account_Geschaeftlich From manager_kalender_optionen Where ID_Benutzer =:ID_Benutzer';
////    dm_PCM.qry_Work.ParamByName('ID_benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
////    dm_PCM.qry_Work.Open;
////    sKalPriv:= dm_PCM.qry_Work.FieldByName('Account_Privat').asString;
////    sKalGes:= dm_PCM.qry_Work.FieldByName('Account_Geschaeftlich').asString;
////    dm_PCM.qry_Work.Close;
////    AddOutlookEvents(sKalPriv,sKalGes);
////    AddOutlookToDo(sKalPriv,sKalGes);
////
////    dm_PCM.qry_work.SQL.Text:= 'Delete from manager_kalender Where Typ = 2 and Kalendername = :Kalendername';
////    dm_PCM.qry_work.ParamByName('Kalendername').AsString:=sKalGes;
////    dm_PCM.qry_work.execsql;
////    GetOutlookEvents(sKalGes);
////
////    dm_PCM.qry_work.SQL.Text:= 'Delete from manager_kalender Where Typ = 1 and Kalendername = :Kalendername';
////    dm_PCM.qry_work.ParamByName('Kalendername').AsString:= sKalPriv;
////    dm_PCM.qry_work.execsql;
////    GetOutlookToDO(sKalPriv);
////
////  except
////
////  end;
////  RefreshTerminundAUfgaben;
//
//
//end;

procedure Tfrm_Calendar.AddOutlookEvents(AuserPriv,AuserGes: String);
const
  olFolderCalendars = $00000009;
var
  // Outlook : OleVariant;
  NameSpace: olevariant;
  Termin: olevariant;
  CalendarsRoot,objOwner: olevariant;
  CalendarsFolder: olevariant;
  OutlookCalendar: olevariant;
//  SubFolderName: string;
//  iPosition: integer;
//  Found: boolean;
//  Counter: integer;
//  TestCalendarFolder,
  Appointments: olevariant;
  i, iCOunt: integer;
  sDatum: string;
  dBefore, dAfter: TDate;
  sTermine, sTerminArt: string;
  bImport: boolean;
//  sID_Benutzer,APath: string;
begin
//  Atyp:= True;
  Writelog(PCM_Logname, 'Termine alle: Mit Outlook verbinden', 0);
  try
    Outlook.connect;
  except
    on e: System.sysutils.Exception do
    begin
      Writelog(PCM_Logname,'Termine alle: Verbindung mit Outlook kann nicht hergestellt werden.Grund: ' + e.Message, 2);
      exit;
    end;
  end;
  Writelog(PCM_Logname, 'Termine alle: Namespace ermitteln', 0);
  try
    NameSpace := Outlook.GetNameSpace('MAPI');
  except
    on e: System.sysutils.Exception do
    begin
      Writelog(PCM_Logname, 'Termine alle: Namespace konnt nicht ermittelt werden. Grund: ' + e.Message, 2);
      exit;
    end;
  end;
  Writelog(PCM_Logname, 'Termine alle: CalendarsRoot ermitteln: ' + AuserPriv, 0);
  try
    objOwner := NameSpace.CreateRecipient(AuserPriv);
    CalendarsRoot := NameSpace.GetSharedDefaultFolder(objOwner,olFolderCalendars);
  except
    on e: System.sysutils.Exception do
    begin
      Writelog(PCM_Logname,'Termine alle: CalendarsRoot konnte nicht ermittelt werden. Grund: ' +  e.Message, 2);
      exit;
    end;
  end;
  CalendarsFolder := CalendarsRoot;
  Appointments := CalendarsFolder.Items;
  Appointments.IncludeRecurrences := True;
//  if ATyp then
//  begin
//    APath:= AuserPriv;
//    while APath <> '' do
//    begin
//      iPosition := Pos('\', APath);
//      if iPosition > 0 then
//      begin
//        SubFolderName := copy(APath, 1, iPosition - 1);
//        APath := copy(APath, iPosition + 1, Length(APath));
//      end
//      else
//      begin
//        SubFolderName := APath;
//        APath := '';
//      end;
//      if SubFolderName = '' then
//        Break;
//      Found := false;
//      for Counter := 1 to CalendarsFolder.Folders.Count do
//      begin
//        TestCalendarFolder := CalendarsRoot.Folders.Item(Counter);
//        if LowerCase(TestCalendarFolder.Name) = LowerCase(SubFolderName) then
//        begin
//          CalendarsFolder := TestCalendarFolder;
//          Found := True;
//          Break;
//        end;
//      end;
//      if not Found then
//        CalendarsFolder := CalendarsFolder.Folders.Add(SubFolderName);
//    end;
//  end;
  i := 1;
  ShowWaitForm(TForm(Self), PWideChar('Termine aus Outlook löschen'), CalendarsFolder.Items.Count, frm_PCM_main.ClientWidth, frm_PCM_main.Height);
  for iCOunt := 1 to CalendarsFolder.Items.Count do
  begin
    Application.ProcessMessages;
    WaitFormStep;
    Termin := CalendarsFolder.Items.Item(i);
    if Termin.Categories = 'PCM_Termin' then
    begin
      Termin.delete;
    end
    else
    begin
      i := i + 1;
    end;
  end;
  CloseWaitForm;
  sDatum := DateToStr(Now());
  dBefore := Now() - 365;
  dAfter := Now() + 365;
  dm_PCM.qry_Work.sql.Text := 'SELECT mgr_ben.Benutzer as Mitarbeiter,' +
                       'mgr_cal.Caption AS Betreff,mgr_cal.Message as Nachricht, ' +
                       'Cast(mgr_cal.Start as date) as StartDatum, Cast(mgr_cal.Finish as date) as EndeDatum, ' +
                       'Cast(mgr_cal.Start as time) as StartZeit, Cast(mgr_cal.Finish as time) as EndeZeit, ' +
                       'mgr_cal.Reminder as Erinnerung, mgr_cal.ReminderMinutesBeforeStart as MinutenVorTermin, ' +
                       'mgr_cal.Location as Aufgabenort ' + 'From manager_kalender mgr_cal  ' +
                       'LEFT OUTER JOIN benutzer mgr_ben ON mgr_cal.ID_Benutzer = mgr_ben.ID ' +
                       'Where mgr_cal.Start >= :Von ' +
                       'and mgr_cal.Start <= :Bis ' +
                       'and mgr_cal.Start <= :Bis ' +
                       ' and Kalendername <> ' + QuotedStr(AUserPriv);
  dm_PCM.qry_Work.ParamByName('Von').AsDate:= dBefore;
  dm_PCM.qry_Work.ParamByName('Bis').AsDate:= dAfter;

  dm_PCM.qry_Work.sql.Text := dm_PCM.qry_Work.sql.Text + ' and mgr_Cal.ID_Benutzer IN ( ' + IntToStr(dm_PCM.iIDBenutzerPCM) + ') order by StartDatum asc';
  dm_PCM.qry_Work.Open;
  ShowWaitForm(TForm(Self), PWideChar('Termine importieren'), dm_PCM.qry_Work.RecordCount, frm_PCM_main.ClientWidth, frm_PCM_main.Height);
  while not dm_PCM.qry_Work.eof do
  begin
//    Inc(i2);
    WaitFormStep;
    sTermine := dm_PCM.qry_Work.FieldByName('AufgabenOrt').AsString;
    sTerminArt := dm_PCM.qry_Work.FieldByName('AufgabenOrt').AsString;
    bImport := True;
    OutlookCalendar := CalendarsFolder.Items.Add;
    if dm_PCM.qry_Work.FieldByName('StartZeit').AsString = dm_PCM.qry_Work.FieldByName('EndeZeit').AsString then
    begin
      OutlookCalendar.Subject :=  dm_PCM.qry_Work.FieldByName('Betreff').AsString;
      OutlookCalendar.AllDayEvent := 'true';
      OutlookCalendar.body := '';
    end
    else
    begin
      OutlookCalendar.Subject :=  dm_PCM.qry_Work.FieldByName('Betreff').AsString;
      OutlookCalendar.AllDayEvent := 'false';
      OutlookCalendar.body := dm_PCM.qry_Work.FieldByName('Nachricht').AsString;
    end;
    if bImport = True then
    begin
      OutlookCalendar.Start := dm_PCM.qry_Work.FieldByName('StartDatum').AsString + ' ' + dm_PCM.qry_Work.FieldByName('StartZeit').AsString;
      OutlookCalendar.End := dm_PCM.qry_Work.FieldByName('EndeDatum').AsString + ' ' + dm_PCM.qry_Work.FieldByName('EndeZeit').AsString;
      OutlookCalendar.Location := sTerminArt;
      OutlookCalendar.Categories := 'PCM_Termin';
      if dm_PCM.qry_Work.FieldByName('Erinnerung').AsString = 'true' then
        OutlookCalendar.Reminderset := True
      else
        OutlookCalendar.Reminderset := false;
      OutlookCalendar.Save;
    end;
    dm_PCM.qry_Work.next;
    CloseWaitForm;
  end;
  dm_PCM.qry_Work.close;
  Application.ProcessMessages;
  Outlook.Disconnect;
end;
// Aufgaben importieren
procedure Tfrm_Calendar.AddOutlookTODO(AuserPriv,AuserGes: String);
var
  aMapi: Variant;
  aTask: Variant;
  aTaskItem: Variant;
  objOwner,Task: olevariant;
  strSubject, strBody: String;
  tdtTermin, tdtFaellig: TDateTime;
  iCOunt: integer;
//  dtBefore: TDateTime;
//  dtAfter: TDateTime;
//  filter: String;
//  sDatum: string;
//  sID_ADressen: String;
  i: integer;
begin
  Writelog(PCM_Logname, 'Aufgaben: Mit Outlook verbinden', 0);
  try
    Outlook.connect;
  except
    on e: System.sysutils.Exception do
    begin
      Writelog(PCM_Logname,'Aufgaben: Verbindung mit Outlook kann nicht hergestellt werden. Grund: ' + e.Message, 2);
      exit;
    end;
  end;
  Writelog(PCM_Logname, 'Aufgaben: Namespace ermitteln', 0);
  try
    aMapi := Outlook.GetNameSpace('MAPI');
  except
    on e: System.sysutils.Exception do
    begin
      Writelog(PCM_Logname,'Aufgaben: Namespace konnt nicht ermittelt werden. Grund: ' + e.Message, 2);
      exit;
    end;
  end;
  Writelog(PCM_Logname, 'Aufgaben: CalendarsRoot ermitteln: ' + AUserPriv, 0);
  try
    objOwner := aMapi.CreateRecipient(AUserPriv);
    aTask := aMapi.GetSharedDefaultFolder(objOwner,$0000000D);
  except
    on e: System.sysutils.Exception do
    begin
      Writelog(PCM_Logname,'Aufgaben: CalendarsRoot konnte nicht ermittelt werden. Grund: ' + e.Message, 2);
      exit;
    end;
  end;

  i := 1;
  ShowWaitForm(TForm(Self), PWideChar('Aufgaben aus Outlook löschen'), aTask.Items.Count, frm_PCM_main.ClientWidth, frm_PCM_main.Height);
  for iCOunt := 1 to aTask.Items.Count do
  begin
    Application.ProcessMessages;
    WaitFormStep;
    Task := aTask.Items.Item(i);
    if Task.Categories = 'PCM_Aufgabe' then
    begin
      Task.delete;
    end
    else
    begin
      i := i + 1;
    end;
  end;
  CloseWaitform;

  dm_PCM.qry_Work.sql.clear;
  dm_PCM.qry_Work.sql.Text := 'Select icn.caption AS Betreff,icn.Message as Nachricht, ' +
              'Date(icn.start) as StartDatum, Date(icn.Finish) as EndeDatum, ' +
              'Time(icn.start) as StartZeit, Time(icn.Finish) as EndeZeit, ' +
              'icn.Reminder as Erinnerung, icn.ReminderMinutesBeforeStart as MinutenVorTermin, ' +
              'fa.Firma as Kunde_Firma, fa.Strasse_ges as Kunde_strasse, fa.PLZ_ges as Kunde_PLZ, fa.ort_ges as Kunde_ort, ' +
              'Concat(ansp.Nachname,'','',ansp.Vorname) as Kunde_Ansprechpartner, ' +
              'ansp.Telefon_Ges as kunde_telefon1, ' +
              'ifnull(ansp.Handy_Ges,ansp.Handy_privat) as Kunde_mobil, ' +
              'ifnull(ansp.e_mail_ges,ansp.E_Mail_Ges) as Kunde_Email ' +
              'from manager_kalender icn ' +
              'Left Outer Join manager_kontakte fa ON fa.ID = icn.id_adr_Wurzel ' +
              'Left Outer Join manager_kontakte ansp ON ansp.ID = icn.ID_Ansprechpartner ' +
              'where icn.TYP = 1 and icn.BearbeitetAm is NULL and Date(start)  >= Date(:Begin) ' +
              'and Date(start) <= Date(:End) and Kalendername  <> ' + QuotedStr(AuserPriv);
  dm_PCM.qry_Work.ParamByName('Begin').AsDateTime:= Now() - 365;
  dm_PCM.qry_Work.ParamByName('End').AsDateTime:= Now() + 365;
  dm_PCM.qry_Work.sql.Text := dm_PCM.qry_Work.sql.Text + ' and icn.ID_benutzer IN ( ' + IntToStr(dm_PCM.iIDBenutzerPCM) + ') order by StartDatum asc';

  ShowWaitForm(TForm(Self), PWideChar('Aufgaben importieren'), dm_PCM.qry_work.RecordCount, frm_PCM_main.ClientWidth, frm_PCM_main.Height);

  dm_PCM.qry_Work.Open;
  while not dm_PCM.qry_Work.eof do
  begin
    strSubject := dm_PCM.qry_Work.FieldByName('Betreff').AsString;
    strBody := dm_PCM.qry_Work.FieldByName('Nachricht').AsString + sLineBreak  + sLineBreak + sLineBreak + 'Kunde: ' + sLineBreak +
      dm_PCM.qry_Work.FieldByName('Kunde_Firma').AsString + sLineBreak +
      dm_PCM.qry_Work.FieldByName('Kunde_Strasse').AsString + sLineBreak +
      dm_PCM.qry_Work.FieldByName('Kunde_PLZ').AsString + ' ' +
      dm_PCM.qry_Work.FieldByName('Kunde_Ort').AsString + sLineBreak + sLineBreak + 'Ansprechpartner: ' + sLineBreak + dm_PCM.qry_Work.FieldByName
      ('Kunde_Ansprechpartner').AsString + sLineBreak +  dm_PCM.qry_Work.FieldByName('Kunde_Telefon1').AsString + sLineBreak +
      dm_PCM.qry_Work.FieldByName('Kunde_mobil').AsString + sLineBreak + dm_PCM.qry_Work.FieldByName('Kunde_Email').AsString;

    tdtTermin := StrToDateTime(dm_PCM.qry_Work.FieldByName('StartDatum').AsString +' ' + dm_PCM.qry_Work.FieldByName('StartZeit').AsString);
    tdtFaellig := StrToDateTime(dm_PCM.qry_Work.FieldByName('EndeDatum').AsString +' ' + dm_PCM.qry_Work.FieldByName('EndeZeit').AsString);
    aTaskItem := aTask.Items.Add($00000003);
    aTaskItem.Subject := strSubject;
    aTaskItem.body := strBody;
    aTaskItem.StartDate := tdtTermin;
    aTaskItem.DueDate := tdtFaellig;
    aTaskItem.Categories := 'PCM_Aufgabe';
    aTaskItem.Save;
    WaitFormstep;
    dm_PCM.qry_Work.next;
  end;
  CloseWaitForm;
  Outlook.Disconnect;
end;

procedure Tfrm_Calendar.btn_CalFilterClick(Sender: TObject);
var
  sKalenderFilter: string;
begin
  if btn_CalFilter.LargeImageIndex = 46 then
  begin
    btn_CalFilter.LargeImageIndex:= 38;
    dm_PCM.qry_Kalender_Kalender.sql.Text:= 'Select ID,EventType,Caption,Location,Message,Start,' +
                         'Finish,Options,Completeday,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'+
                         'ReminderMinutesBeforeStart,LabelColor,Fontcolor, ID_Benutzer,ID_kontakte From manager_Kalender ' +
                         'Where ID_Benutzer = :ID';
    dm_PCM.qry_Kalender_Kalender.ParamByName('ID').AsBlob:= AnsiString(IntToStr(dm_PCM.iIDBenutzerPCM));
    dm_PCM.qry_Kalender_Kalender.Open;
  end
  else begin

    Application.CreateForm(Tfrm_PCM_KalenderFilter,frm_PCM_KalenderFilter);
    if not frm_PCM_KalenderFilter.Execute(True,dm_PCM.iIDBenutzerPCM,sKalenderFilter) then
    begin
      btn_CalFilter.LargeImageIndex := 38;
    end;
    frm_PCM_KalenderFilter.free;
    if sKalenderFilter <> '' then
    begin
      dm_PCM.qry_Kalender_Kalender.sql.Text:= 'Select ID,EventType,Caption,Location,Message,Start,' +
                                  'Finish,Options,Completeday,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'+
                                  'ReminderMinutesBeforeStart,LabelColor,Fontcolor, ID_Benutzer,ID_kontakte From manager_Kalender ' +
                                  'Where ID_Benutzer = :ID and Kalendername = :Kalender';
      dm_PCM.qry_Kalender_Kalender.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_Kalender_Kalender.ParamByName('Kalender').asString:= sKalenderFilter;
      dm_PCM.qry_Kalender_Kalender.Open;
      btn_CalFilter.LargeImageIndex:= 46;
    end;
  end;
end;
procedure Tfrm_Calendar.btn_CalJahrClick(Sender: TObject);
begin
  FKalenderDateButton := True;
  sched_Kalender.ViewYear.Active := True;
  btn_CalZurueck.Hint := 'Ein Jahr zurück springen';
  btn_CalVor.Hint := 'Ein Jahr vor springen';
  btn_CalTag.LargeImageIndex:= 39;
  btn_CalArbeitswoche.LargeImageIndex:= 40;
  btn_CalWoche.LargeImageIndex:= 41;
  btn_CalMonat.LargeImageIndex:= 42;
  btn_CalJahr.LargeImageIndex:= 19;
end;
procedure Tfrm_Calendar.btn_CalMonatClick(Sender: TObject);
begin
  FKalenderDateButton := True;
  sched_Kalender.GoToDate(sched_Kalender.SelectedDays[0], vmMonth);
  btn_CalZurueck.Hint := 'Einen Monat zurück springen';
  btn_CalVor.Hint := 'Einen Monat vor springen';
  btn_CalTag.LargeImageIndex:= 39;
  btn_CalArbeitswoche.LargeImageIndex:= 40;
  btn_CalWoche.LargeImageIndex:= 41;
  btn_CalMonat.LargeImageIndex:= 18;
  btn_CalJahr.LargeImageIndex:= 44;
end;
procedure Tfrm_Calendar.btn_CalNewClick(Sender: TObject);
var
  iNewId: integer;
begin
  Application.CreateForm(TfNeu, fNeu);
  fNeu.Execute(schedDBStrg_Kalender,2, 0, 0, '','',0,0,0,0,false,0,0,0,0,0,0,false,false,0,false,0,0,nil,'','',iNewId);
  fNeu := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.btn_CalTagClick(Sender: TObject);
begin
  FKalenderDateButton := True;
  sched_Kalender.ViewDay.Active := True;
  sched_Kalender.SelectDays(sched_Kalender.SelectedDays[0], sched_Kalender.SelectedDays[0], True);
  btn_CalZurueck.Hint := 'Einen Tag zurück springen';
  btn_CalVor.Hint := 'Einen Tag vor springen';
  btn_CalTag.LargeImageIndex:= 15;
  btn_CalArbeitswoche.LargeImageIndex:= 40;
  btn_CalWoche.LargeImageIndex:= 41;
  btn_CalMonat.LargeImageIndex:= 42;
  btn_CalJahr.LargeImageIndex:= 44;

end;
procedure Tfrm_Calendar.btn_CalVorClick(Sender: TObject);
begin
  FKalenderDateButton := True;
  if btn_CalTag.LargeImageIndex = 15 then
    //sched_Kalender.DateNavigator.Date := IncDay(sched_Kalender.DateNavigator.Date);
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 1), IncDay(sched_Kalender.DateNavigator.Date, 1), True);
  if btn_CalArbeitswoche.LargeImageIndex = 16 then
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 7), IncDay(sched_Kalender.DateNavigator.Date, 11), True);
  if btn_CalWoche.LargeImageIndex = 17 then
  begin
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 7), IncDay(sched_Kalender.DateNavigator.Date, 13), True);
    sched_Kalender.ViewWeek.Active := True;
  end;
  if btn_CalMonat.LargeImageIndex = 18 then
  begin
   sched_Kalender.GoToDate(IncDay(sched_Kalender.SelectedDays[sched_Kalender.SelectedDays.Count-1], 3), vmMonth);
   FKalenderDateButton := True;
  end;

  if btn_CalJahr.LargeImageIndex = 19 then
    sched_Kalender.SelectDays(IncYear(sched_Kalender.DateNavigator.Date, 1), IncYear(sched_Kalender.DateNavigator.Date, 1), True);

end;
procedure Tfrm_Calendar.btn_CalWocheClick(Sender: TObject);
begin
  FKalenderDateButton := True;
  sched_Kalender.ViewWeek.Active := True;
  btn_CalZurueck.Hint := 'Eine Woche zurück springen';
  btn_CalVor.Hint := 'Eine Woche vor springen';
  btn_CalTag.LargeImageIndex:= 39;
  btn_CalArbeitswoche.LargeImageIndex:= 40;
  btn_CalWoche.LargeImageIndex:= 17;
  btn_CalMonat.LargeImageIndex:= 42;
  btn_CalJahr.LargeImageIndex:= 44;
end;
procedure Tfrm_Calendar.btn_CalZurueckClick(Sender: TObject);
begin
  FKalenderDateButton := True;
  if btn_CalTag.LargeImageIndex = 15 then
   //sched_Kalender.DateNavigator.Date := IncDay(sched_Kalender.DateNavigator.Date, -1);
   sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -1), IncDay(sched_Kalender.DateNavigator.Date, -1), True);
  if btn_CalArbeitswoche.LargeImageIndex = 16 then
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -7), IncDay(sched_Kalender.DateNavigator.Date, -3), True);

  if btn_CalWoche.LargeImageIndex = 17 then
  begin
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -7), IncDay(sched_Kalender.DateNavigator.Date, -1), True);
    sched_Kalender.ViewWeek.Active := True;
  end;

  if btn_CalMonat.LargeImageIndex = 18 then
  begin
   sched_Kalender.GoToDate(IncDay(sched_Kalender.SelectedDays[0], -3), vmMonth);
   FKalenderDateButton := True;
  end;

  if btn_CalJahr.LargeImageIndex = 19 then
    sched_Kalender.SelectDays(IncYear(sched_Kalender.DateNavigator.Date, -1), IncYear(sched_Kalender.DateNavigator.Date, -1 ), True);
end;
procedure Tfrm_Calendar.btn_StundeCancelClick(Sender: TObject);
begin
  qry_Stundenplan_detail.Cancel;
end;
procedure Tfrm_Calendar.btn_StundeDeleteClick(Sender: TObject);
begin
  if qry_Stundenplan_detail.FieldByName('ID').AsInteger > 0 then
  begin
    qry_Stundenplan_detail.Delete;
  end
end;
procedure Tfrm_Calendar.btn_StundeNewClick(Sender: TObject);
begin
   if qry_Stundenplan_detail.State in [dsInsert, dsedit] then
    qry_Stundenplan_detail.Post;
  qry_Stundenplan_detail.Append;
  qry_Stundenplan_detail.Insert;

  qry_Stundenplan_detail.FieldByName('Montag').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('Dienstag').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('Mittwoch').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('Donnerstag').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('Freitag').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('Samstag').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('ID_Stundenplan').AsInteger:= qry_Stundenplan.FieldByName('ID').AsInteger;

  if not tiEdt_Stundenplan_Von.enabled then
  begin
    tiEdt_Stundenplan_Von.enabled:= true;
    tiEdt_Stundenplan_Bis.enabled:= true;
    lucmbbx_Stundenplan_Montag.enabled:= true;
    lucmbbx_Stundenplan_Dienstag.enabled:= true;
    lucmbbx_Stundenplan_Mittwoch.enabled:= true;
    lucmbbx_Stundenplan_Donnerstag.enabled:= true;
    lucmbbx_Stundenplan_Freitag.enabled:= true;
    lucmbbx_Stundenplan_Samstag.enabled:= true;
  end;
  tiEdt_Stundenplan_Von.SetFocus;
end;
procedure Tfrm_Calendar.btn_StundenplanCancelClick(Sender: TObject);
begin
  qry_Stundenplan.Cancel;
end;
procedure Tfrm_Calendar.btn_StundenplanDeleteClick(Sender: TObject);
begin
  if qry_Stundenplan.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= 'Delete From manager_Stundenplan_Detail Where ID_Stundenplan = :ID';;
    dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_Stundenplan.FieldByName('ID').Asinteger;
    dm_PCM.qry_work.ExecSQL;
    qry_Stundenplan.Delete;
    qry_Stundenplan_detail.Refresh;
  end

end;
procedure Tfrm_Calendar.btn_StundenplanNewClick(Sender: TObject);
begin
   if qry_Stundenplan.State in [dsInsert, dsedit] then
    qry_Stundenplan.Post;
  qry_Stundenplan.Append;
  qry_Stundenplan.Insert;
  qry_Stundenplan.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  qry_Stundenplan_detail.Filter:= 'ID_Stundenplan = ' + qry_Stundenplan.FieldByName('ID').AsString;
  qry_Stundenplan_detail.Filtered:= true;
  if not edt_Stundenplan_Schule.Enabled then
  begin
    edt_Stundenplan_Schule.Enabled:= true;
    edt_Stundenplan_Klasse.Enabled:= true;
    edt_Stundenplan_Schuljahr.Enabled:= true;
    btn_StundenplanPrint.Enabled:= true;
  end;
  edt_Stundenplan_Schule.SetFocus;

end;
procedure Tfrm_Calendar.btn_StundenplanPrintClick(Sender: TObject);
begin
//
end;
procedure Tfrm_Calendar.btn_StundenplanSaveClick(Sender: TObject);
begin
  if qry_Stundenplan.State in [dsInsert, dsEdit] then
  begin
    edt_Stundenplan_schule.PostEditValue;
    edt_Stundenplan_Klasse.PostEditValue;
    edt_Stundenplan_schuljahr.PostEditValue;
    qry_Stundenplan.Post;
  end;
end;
procedure Tfrm_Calendar.btn_StundeSaveClick(Sender: TObject);
begin
  if qry_Stundenplan_detail.State in [dsInsert, dsEdit] then
  begin
    qry_Stundenplan_detail.Post;
  end;
end;
procedure Tfrm_Calendar.pmmbtn_JobsExportOutlookClick(Sender: TObject);
var
  sKalPriv,sKalGes: String;
begin
  dm_PCM.qry_Work.sql.text:= 'Select Account_Privat,Account_Geschaeftlich From manager_kalender_optionen Where ID_Benutzer =:ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID_benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  sKalPriv:= dm_PCM.qry_Work.FieldByName('Account_Privat').asString;
  sKalGes:= dm_PCM.qry_Work.FieldByName('Account_Geschaeftlich').asString;
  dm_PCM.qry_Work.Close;
  AddOutlookToDO(sKalPriv,sKalGes);
end;

procedure Tfrm_Calendar.pmmbtn_JobsImportOutlookClick(Sender: TObject);
var
  sKalPriv,sKalGes: String;
begin
  dm_PCM.qry_Work.sql.text:= 'Select Account_Privat,Account_Geschaeftlich From manager_kalender_optionen Where ID_Benutzer =:ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID_benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  sKalPriv:= dm_PCM.qry_Work.FieldByName('Account_Privat').asString;
  sKalGes:= dm_PCM.qry_Work.FieldByName('Account_Geschaeftlich').asString;

  dm_PCM.qry_work.SQL.Text:= 'Delete from manager_kalender Where Typ = 1 and Kalendername = :Kalendername';
  dm_PCM.qry_work.ParamByName('Kalendername').AsString:= sKalPriv;
  dm_PCM.qry_work.execsql;

  GetOutlookToDO(sKalPriv);
  RefreshTerminundAUfgaben;//
end;
procedure Tfrm_Calendar.InitializeRights;
begin
 // Kalender / Kein Recht
  if dm_PCM.iKalender = 0 then
  begin
    ts_A_kalender.TabVisible:= False;
  end;

  // Kalender / Lesen
  if dm_PCM.iKalender = 1 then
  begin
    ts_A_kalender.TabVisible:= true;
    // Toolbar
    btn_CalNew.Enabled:= false;
    btn_CalTerminImport.Enabled:= false;
    btn_TerminNeu.Enabled:= false;
    btn_Terminchange.Enabled:= false;
    btn_TerminDelete.Enabled:= false;
   end;
  // Kalender / Schreiben
  if dm_PCM.iKalender = 2 then
  begin
    ts_A_kalender.TabVisible:= true;
    // Toolbar
    btn_CalNew.Enabled:= true;
    btn_CalTerminImport.Enabled:= true;
    btn_TerminNeu.Enabled:= true;
    btn_Terminchange.Enabled:= true;
    btn_TerminDelete.Enabled:= false;
  end;
  // Kalender / Vollzugriff
  if dm_PCM.iKalender = 3 then
  begin
    ts_A_kalender.TabVisible:= true;
    // Toolbar
    btn_CalNew.Enabled:= true;
    btn_CalTerminImport.Enabled:= true;
    btn_TerminNeu.Enabled:= true;
    btn_Terminchange.Enabled:= true;
    btn_TerminDelete.Enabled:= true;
  end;


  // Stundenplan / Kein Recht
  if dm_PCM.iStundenplan = 0 then
  begin
    ts_C_Stundenplan.TabVisible:= false;
  end;

  // Stundenplan / Lesen
  if dm_PCM.iStundenplan = 1 then
  begin
    ts_C_Stundenplan.TabVisible:= true;
    // Toolbar
    btn_StundenplanNew.Enabled:= false;
    btn_StundenplanSave.Enabled:= false;
    btn_StundenplanCancel.Enabled:= false;
    btn_StundenplanDelete.Enabled:= false;
    btn_StundeNew.Enabled:= false;
    btn_StundeSave.Enabled:= false;
    btn_StundeCancel.Enabled:= false;
    btn_StundeDelete.Enabled:= false;
    // Editfelder
    edt_Stundenplan_Schule.Enabled:= false;
    edt_Stundenplan_Klasse.Enabled:= false;
    edt_Stundenplan_Schuljahr.Enabled:= false;
    tiEdt_Stundenplan_Von.Enabled:= false;
    tiEdt_Stundenplan_Bis.Enabled:= false;
    lucmbbx_Stundenplan_Montag.Enabled:= false;
    lucmbbx_Stundenplan_Dienstag.Enabled:= false;
    lucmbbx_Stundenplan_Mittwoch.Enabled:= false;
    lucmbbx_Stundenplan_Donnerstag.Enabled:= false;
    lucmbbx_Stundenplan_Freitag.Enabled:= false;
    lucmbbx_Stundenplan_Samstag.Enabled:= false;
  end;
   // Stundenplan / Schreiben
  if dm_PCM.iStundenplan = 2 then
  begin
    ts_c_Stundenplan.TabVisible:= true;
    // Toolbar
    btn_StundenplanNew.Enabled:= true;
    btn_StundenplanSave.Enabled:= true;
    btn_StundenplanCancel.Enabled:= true;
    btn_StundenplanDelete.Enabled:= false;
    btn_StundeNew.Enabled:= true;
    btn_StundeSave.Enabled:= true;
    btn_StundeCancel.Enabled:= true;
    btn_StundeDelete.Enabled:= false;
    // Editfelder
    edt_Stundenplan_Schule.Enabled:= true;
    edt_Stundenplan_Klasse.Enabled:= true;
    edt_Stundenplan_Schuljahr.Enabled:= true;
    tiEdt_Stundenplan_Von.Enabled:= true;
    tiEdt_Stundenplan_Bis.Enabled:= true;
    lucmbbx_Stundenplan_Montag.Enabled:= true;
    lucmbbx_Stundenplan_Dienstag.Enabled:= true;
    lucmbbx_Stundenplan_Mittwoch.Enabled:= true;
    lucmbbx_Stundenplan_Donnerstag.Enabled:= true;
    lucmbbx_Stundenplan_Freitag.Enabled:= true;
    lucmbbx_Stundenplan_Samstag.Enabled:= true;
  end;
  // Stundenplan / Vollzugriff
  if dm_PCM.iStundenplan = 3 then
  begin
    ts_c_Stundenplan.TabVisible:= true;
    // Toolbar
    btn_StundenplanNew.Enabled:= true;
    btn_StundenplanSave.Enabled:= true;
    btn_StundenplanCancel.Enabled:= true;
    btn_StundenplanDelete.Enabled:= true;
    btn_StundeNew.Enabled:= true;
    btn_StundeSave.Enabled:= true;
    btn_StundeCancel.Enabled:= true;
    btn_StundeDelete.Enabled:= true;
    // Editfelder
    edt_Stundenplan_Schule.Enabled:= true;
    edt_Stundenplan_Klasse.Enabled:= true;
    edt_Stundenplan_Schuljahr.Enabled:= true;
    tiEdt_Stundenplan_Von.Enabled:= true;
    tiEdt_Stundenplan_Bis.Enabled:= true;
    lucmbbx_Stundenplan_Montag.Enabled:= true;
    lucmbbx_Stundenplan_Dienstag.Enabled:= true;
    lucmbbx_Stundenplan_Mittwoch.Enabled:= true;
    lucmbbx_Stundenplan_Donnerstag.Enabled:= true;
    lucmbbx_Stundenplan_Freitag.Enabled:= true;
    lucmbbx_Stundenplan_Samstag.Enabled:= true;
  end;
end;
procedure Tfrm_Calendar.NachrichtenAnhaengeLaden(ID_IC_Nachrichten: Integer);
begin
  Image1.Picture.Assign(nil);
  lTypeName.Caption := '';
  qWF_Nachrichten_Anhaenge.Close;
  qWF_Nachrichten_Anhaenge.SQL.Text:= 'SELECT ina.ID, ina.ID_IC_Nachrichten, ina.Dateiname, ina.DateinameSave FROM manager_Aufgaben_Anhaenge ina WHERE ina.ID_IC_Nachrichten = :ID_IC_Nachrichten';
  qWF_Nachrichten_Anhaenge.Params[0].AsInteger := ID_IC_Nachrichten;
  qWF_Nachrichten_Anhaenge.Open;
end;

procedure Tfrm_Calendar.btn_MonatsAnsichtClick(Sender: TObject);
begin
  compPrint_Cal.PreviewOptions.Caption := 'Terminkalender - Monatsansicht';
  compPrint_CalLink1.PrintStyles.Monthly.Active := True;
  compPrint_CalLink1.Preview(True);
end;
procedure Tfrm_Calendar.btn_TagesAnsichtClick(Sender: TObject);
begin
  compPrint_Cal.PreviewOptions.Caption := 'Terminkalender - Tagesansicht';
  compPrint_CalLink1.PrintStyles.Daily.Active := True;
  compPrint_CalLink1.Preview(True);
end;
procedure Tfrm_Calendar.btn_WochenAnsichtClick(Sender: TObject);
begin
  compPrint_Cal.PreviewOptions.Caption := 'Terminkalender - Wochenansicht';
  compPrint_CalLink1.PrintStyles. Weekly.Active := True;
  compPrint_CalLink1.Preview(True);
end;
procedure Tfrm_Calendar.SetButtons;
begin
  // AD_Stundenplan
  if dm_PCM.iStundenplan >= 2 then
  begin
    // Stundenplan
    btn_StundenplanSave.Enabled := qry_Stundenplan.State in [dsInsert, dsEdit];
    btn_StundenplanCancel.Enabled := qry_Stundenplan.State in [dsInsert, dsEdit];
    //Schulstunden
    btn_StundeSave.Enabled := qry_Stundenplan_detail.State in [dsInsert, dsEdit];
    btn_StundeCancel.Enabled := qry_Stundenplan_detail.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iStundenplan = 3 then
  begin
    // Stundenplan
    btn_StundenplanDelete.Enabled := (not qry_Stundenplan.Eof) and not (qry_Stundenplan.State in [dsInsert, dsEdit]);
    //Schulstunden
    btn_StundeDelete.Enabled := (not qry_Stundenplan_detail.Eof) and not (qry_Stundenplan_detail.State in [dsInsert, dsEdit]);
  end;
  if qry_Stundenplan.RecordCount = 0  then
  begin
    edt_Stundenplan_Schule.Enabled:= false;
    edt_Stundenplan_Klasse.Enabled:= false;
    edt_Stundenplan_Schuljahr.Enabled:= false;
    btn_StundenplanPrint.Enabled:= false;
  end
  else begin
    if dm_PCM.iStundenplan >= 2  then
    begin
      edt_Stundenplan_Schule.Enabled:= true;
      edt_Stundenplan_Klasse.Enabled:= true;
      edt_Stundenplan_Schuljahr.Enabled:= true;
      btn_StundenplanPrint.Enabled:= true;
    end;
  end;
  if qry_Stundenplan_detail.RecordCount = 0 then
  begin
    tiEdt_Stundenplan_Von.enabled:= false;
    tiEdt_Stundenplan_Bis.enabled:= false;
    lucmbbx_Stundenplan_Montag.enabled:= false;
    lucmbbx_Stundenplan_Dienstag.enabled:= false;
    lucmbbx_Stundenplan_Mittwoch.enabled:= false;
    lucmbbx_Stundenplan_Donnerstag.enabled:= false;
    lucmbbx_Stundenplan_Freitag.enabled:= false;
    lucmbbx_Stundenplan_Samstag.enabled:= false;
    if qry_Stundenplan.RecordCount = 0  then
    begin
      btn_StundeNew.enabled:= false
    end
    else begin
      if dm_PCM.iStundenplan >= 2  then
      begin
        btn_StundeNew.enabled:= true;
      end;
    end;
  end
  else begin
    if qry_Stundenplan.RecordCount = 0  then
    begin
      tiEdt_Stundenplan_Von.enabled:= false;
      tiEdt_Stundenplan_Bis.enabled:= false;
      lucmbbx_Stundenplan_Montag.enabled:= false;
      lucmbbx_Stundenplan_Dienstag.enabled:= false;
      lucmbbx_Stundenplan_Mittwoch.enabled:= false;
      lucmbbx_Stundenplan_Donnerstag.enabled:= false;
      lucmbbx_Stundenplan_Freitag.enabled:= false;
      lucmbbx_Stundenplan_Samstag.enabled:= false;
      btn_StundeNew.enabled:= false;
    end
    else begin
      if dm_PCM.iStundenplan >= 2  then
      begin
        tiEdt_Stundenplan_Von.enabled:= true;
        tiEdt_Stundenplan_Bis.enabled:= true;
        lucmbbx_Stundenplan_Montag.enabled:= true;
        lucmbbx_Stundenplan_Dienstag.enabled:= true;
        lucmbbx_Stundenplan_Mittwoch.enabled:= true;
        lucmbbx_Stundenplan_Donnerstag.enabled:= true;
        lucmbbx_Stundenplan_Freitag.enabled:= true;
        lucmbbx_Stundenplan_Samstag.enabled:= true;
        btn_StundeNew.Enabled:= true;
      end;
    end;
  end;
end;
procedure Tfrm_Calendar.schedDBStrg_KalenderEventInserted(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
begin
  AHandled:= true;
end;
procedure Tfrm_Calendar.schedDBStrg_KalenderEventModified(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
var
  ARecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
  iEventID : Integer;
  i, iRecIndex : integer;
  sReminder1: string;
begin
  iEventID:= 0;
  if (Assigned(AEvent.Pattern)) AND (AEvent.IsRecurring) then
  begin
    iRecIndex := AEvent.recurrenceIndex;
    // Prüfen ob für diesen RecurrenceIndex bereits ein eintrag bestehe...
    if AEvent.ID = null then
    //if 1 = 1 then
    begin
      iEventID := AEvent.ParentID;
      // Es besteht noch kein eignes Ereignis -> anlegen
//      dm_PCM.qry_Kalender_Kalender.FindKey([iEventID]);
      dm_PCM.qry_Kalender_Kalender.Locate('ID',iEventID,[]);
      dm_PCM.qry_work.SQL.Text := 'SELECT * FROM Manager_kalender';
      dm_PCM.qry_work.Open;
      dm_PCM.qry_work.Insert;

      for I := 0 to dm_PCM.qry_Kalender_Kalender.FieldCount - 1 do
      begin
        if (dm_PCM.qry_Kalender_Kalender.Fields[i].FieldName <> 'ID') AND (dm_PCM.qry_Kalender_Kalender.Fields[i].FieldKind = fkData) then
          dm_PCM.qry_work.FieldValues[dm_PCM.qry_Kalender_Kalender.Fields[i].FieldName] :=
            dm_PCM.qry_Kalender_Kalender.FieldValues[dm_PCM.qry_Kalender_Kalender.Fields[i].FieldName];
      end;

      dm_PCM.qry_work.FieldValues['ReminderDate'] := IncMinute(AEvent.Start,-dm_PCM.qry_Kalender_KalenderReminderMinutesBeforeStart.Value);
      dm_PCM.qry_work.FieldValues['Start'] := AEvent.Start;
      dm_PCM.qry_work.FieldValues['Finish'] := AEvent.Finish;

      // RecurrenceInformation nicht übernehmen
      dm_PCM.qry_work.FieldValues['RecurrenceInfo'] := null;
      dm_PCM.qry_work.FieldValues['EventType'] := etCustom;
      dm_PCM.qry_work.FieldValues['Parent_Id'] := iEventID;
      dm_PCM.qry_work.FieldValues['RecurrenceIndex'] := iRecIndex;

      dm_PCM.qry_work.Post;
      RefreshTerminundAUfgaben;
      AHandled := True;

    end
    else
    begin
      // Ereignis besteht bereits -> updaten

//      dm_PCM.qry_Kalender_Kalender.FindKey([iEventID]);
      dm_PCM.qry_Kalender_Kalender.Locate('ID',iEventID,[]);
      dm_PCM.qry_Kalender_Kalender.Edit;

      dm_PCM.qry_Kalender_KalenderStart.AsDateTime := AEvent.Start;
      dm_PCM.qry_Kalender_KalenderFinish.AsDateTime := AEvent.Finish;
      dm_PCM.qry_Kalender_KalenderReminder.Asstring := BoolToStr(AEvent.Reminder);
      dm_PCM.qry_Kalender_KalenderReminderDate.AsDateTime := IncMinute(AEvent.Start,- dm_PCM.qry_Kalender_KalenderReminderMinutesBeforeStart.Value);

      if dm_PCM.qry_Kalender_KalenderReminder.AsBoolean then
        dm_PCM.qry_Kalender_KalenderOptions.Value := omEnabled or omReminder
      else
        dm_PCM.qry_Kalender_KalenderOptions.Value := omEnabled;

      dm_PCM.qry_Kalender_Kalender.Post;
      AHandled := True;
    end;
  end
  else
  begin
    if (AEvent.ID <> null) AND (AEvent.ID <> -1) then
    begin
      RefreshTerminundAUfgaben;
      iEventID := AEvent.ID;
//      dm_PCM.qry_Kalender_Kalender.FindKey([iEventID]);
      dm_PCM.qry_Kalender_Kalender.Locate('ID',iEventID,[]);
      dm_PCM.qry_Kalender_Kalender.Edit;
      dm_PCM.qry_Kalender_KalenderStart.AsDateTime := AEvent.Start;
      dm_PCM.qry_Kalender_KalenderFinish.AsDateTime := AEvent.Finish;
      dm_PCM.qry_Kalender_KalenderReminderMinutesBeforeStart.Value := AEvent.ReminderMinutesBeforeStart;
      dm_PCM.qry_Kalender_KalenderReminderDate.AsDateTime := AEvent.ReminderDate;
      dm_PCM.qry_Kalender_KalenderRecurrenceIndex.Value := -1;


      sReminder1 := BoolToStr(AEvent.Reminder);
      if sReminder1 = '0' then
        dm_PCM.qry_Kalender_KalenderReminder.Asstring := 'false'
      else
        dm_PCM.qry_Kalender_KalenderReminder.Asstring := 'true';

      if dm_PCM.qry_Kalender_KalenderReminder.AsBoolean then
        dm_PCM.qry_Kalender_KalenderOptions.Value := omEnabled or omReminder
      else
        dm_PCM.qry_Kalender_KalenderOptions.Value := omEnabled;

      FillChar(ARecurrenceInfo, SizeOf(ARecurrenceInfo), 0);
      with ARecurrenceInfo do
      begin
        Count := AEvent.RecurrenceInfo.Count;
        DayNumber := AEvent.RecurrenceInfo.DayNumber;
        DayType := AEvent.RecurrenceInfo.DayType;
        Finish := AEvent.RecurrenceInfo.Finish;
        OccurDays := AEvent.RecurrenceInfo.OccurDays;
        Periodicity := AEvent.RecurrenceInfo.Periodicity;
        Recurrence := AEvent.RecurrenceInfo.Recurrence;
        Start := AEvent.RecurrenceInfo.Start;
        YearPeriodicity := AEvent.RecurrenceInfo.YearPeriodicity;
        DismissDate := Trunc(AEvent.RecurrenceInfo.DismissDate);
      end;
      dm_PCM.qry_Kalender_KalenderRecurrenceInfo.AsAnsiString := cxRecurrenceInfoDataToString(ARecurrenceInfo);
      dm_PCM.qry_Kalender_Kalender.Post;
    end;
    RefreshTerminundAUfgaben;
    if AEvent.ID = -1 then
      AHandled := False
    else
      AHandled := True;
  end;

  dm_PCM.qry_Kalender_Kalender.Close;
  dm_PCM.qry_Kalender_Kalender.Open();

end;
procedure Tfrm_Calendar.ssKalenderRemindersAlertReminder(  Sender: TcxSchedulerReminders; AReminder: TcxSchedulerReminder;  var AHandled: Boolean);
begin
  AHandled := not (AReminder.ResourceID = dm_PCM.iIDBenutzerPCM);
end;
procedure Tfrm_Calendar.ssKalenderRemindersDismissReminder(Sender: TcxSchedulerReminders; AReminder: TcxSchedulerReminder;  var AHandled: Boolean);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_kalender SET Reminder = ' + QuotedStr('false') + ' WHere ID = ' + IntToStr(AReminder.Event.id);
  dm_PCM.qry_work.ExecSQL;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.ssKalenderRemindersOpenEvent(Sender: TcxSchedulerReminders; AEvent: TcxSchedulerControlEvent);
begin
  OpenEvent(AEvent.ID,true);
end;
procedure Tfrm_Calendar.btn_JobChangeClick(Sender: TObject);
  function GetFileNameInfo(const FileName: string; out TypeName: string): HICON;
  var
    FileInfo: TSHFileInfo;
    ImageList: HIMAGELIST;
    Flags: Cardinal;
  begin
    FillChar(FileInfo, SizeOf(FileInfo), #0);
    Flags := SHGFI_SHELLICONSIZE or SHGFI_TYPENAME;
    ImageList := SHGetFileInfo(PChar(FileName), 0, FileInfo, SizeOf(FileInfo),
      Flags or SHGFI_SYSICONINDEX);
    TypeName := FileInfo.szTypeName;
    if ImageList <> 0 then
      Result := ImageList_ExtractIcon(0, ImageList, FileInfo.iIcon)
    else
      Result := 0;
  end;
var
  iID_IC_NAchrichten: integer;
  event : TcxSchedulerControlEvent;
  iNewId: integer;
  bCompleteDay: Boolean;
  f: string;
  Icon: TIcon;
  tn: string;
begin
  iID_IC_NAchrichten:= dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').asInteger;
  if dm_PCM.qry_Kalender_Aufgaben.FieldByName('Typ').asInteger = 2 then
    event := TcxSchedulerControlEvent(schedDBStrg_Kalender.GetEventByID(iID_IC_NAchrichten))
  else
    event := nil;
    if dm_PCM.qry_Kalender_Aufgaben.FieldByName('CompleteDay').asString = 'true' then
      bCompleteDay:= true
    else
      bCompleteDay:= false;

    Application.CreateForm(TfNeu, fNeu);
    qWF_Nachrichten_Anhaenge.First;
    while not qWF_Nachrichten_Anhaenge.Eof do
    begin
      fNeu.AddAnhang(qWF_Nachrichten_AnhaengeDateiname.AsString, GetAttachmentFilename(qWF_Nachrichten_AnhaengeDateinameSave.AsString));
      f := GetAttachmentFilename(qWF_Nachrichten_AnhaengeDateinameSave.AsString);
      if f <> '' then
      begin
        Icon := TIcon.Create;
        Icon.Handle := GetFileNameInfo(f, tn);
        fNeu.lTypeName.Caption := tn;
        fNeu.Image1.Picture.Assign(Icon);
        Icon.Free;
      end
      else
      begin
        fNeu.Image1.Picture.Assign(nil);
        fNeu.lTypeName.Caption := '';
      end;
      qWF_Nachrichten_Anhaenge.Next;
    end;
      if fNeu.Execute(schedDBStrg_Kalender,dm_PCM.qry_Kalender_Aufgaben.FieldByName('Typ').asInteger,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_Adr_Wurzel').AsInteger,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_Ansprechpartner').AsInteger,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Caption').AsString,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Message').AsString,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').AsInteger,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Start').AsDateTime,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Finish').AsDateTime,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Aufgabenstatus').AsInteger,
      False,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_IC_Prioritaeten').AsInteger,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_IC_AufgabenArten').AsInteger,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Aufgabendauer').AsInteger,
      0,
      0,
      0,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Reminder').asBoolean,
      bCompleteday,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('ReminderMinutesBeforeStart').AsInteger,
      false,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Zeitformat').AsInteger,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Erledigungsgrad').AsInteger,
      event,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Jira_Ticket').AsString,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('wiederholung_text').AsString,
      iNewId) then
      begin
        RefreshTerminundAUfgaben;
      end;
end;
procedure Tfrm_Calendar.tvAufCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Status: Variant;

  EndeDatum: TDateTime;
//  StartDatum: TDateTime;
//  Typ: Integer;
//  InTagen: Integer;
begin
  // Wenn alle Benutzer ausgewählt sind, nicht markieren
  if AViewInfo.Selected then
    Exit;

  // Status und An
  Status := AViewInfo.GridRecord.Values[tvaufStatus.Index];

  if not VarIsNull(Status) then
  begin
   if (Status = 'Ungelesen') then
      ACanvas.Font.Style := [fsBold];
  end;

  ACanvas.Canvas.Brush.Style := bsSolid;

//  Typ := AViewInfo.GridRecord.Values[tvAufTyp.Index];
//  InTagen := AViewInfo.GridRecord.Values[tvAufInTagen.Index];


  {  if InTagen < 0 then
    begin
      // Rot
      ACanvas.Canvas.Brush.Color := RGB(255, 191, 191);
      ACanvas.Canvas.Font.Color := clBlack;
    end else
    begin
      if InTagen = 1 then
      begin
        // Gruen
        ACanvas.Canvas.Brush.Color := RGB(220, 255, 210);
        ACanvas.Canvas.Font.Color := clBlack;
      end else
      if InTagen = 0 then
      begin
        // Gelb
        ACanvas.Canvas.Brush.Color := RGB(255, 255, 191);
        ACanvas.Canvas.Font.Color := clBlack;
      end;
    end; }
  if not VarIsNull(AViewInfo.GridRecord.Values[tvAufInTagen.Index]) then
  begin
    // EndeDatum
    EndeDatum := VarToDateTime(AViewInfo.GridRecord.Values[tvAufFinish.Index]);
    if EndeDatum <= Now then
    begin
      // Rot
      ACanvas.Canvas.Brush.Color := RGB(255, 187, 187);
      ACanvas.Canvas.Font.Color := clBlack;
    end
    else if Trunc(EndeDatum) = Date then
    begin
      // Gelb
      ACanvas.Canvas.Brush.Color := RGB(255, 255, 196);
      ACanvas.Canvas.Font.Color := clBlack;
    end else if Trunc(EndeDatum) = Date + 1 then
    begin
      // Gruen
      ACanvas.Canvas.Brush.Color := RGB(204, 255, 210);
      ACanvas.Canvas.Font.Color := clBlack;
    end;


    ACanvas.Canvas.FillRect(AViewInfo.Bounds);
  end;


end;
procedure Tfrm_Calendar.tvAufDblClick(Sender: TObject);
var
  HitTest : TcxCustomGridHitTest;
begin
  HitTest := cxGrid1.ActiveView.GetHitTest(cxGrid1.ScreenToClient(Mouse.CursorPos));
  if HitTest is TcxGridRecordCellHitTest then
  begin
    btn_JobChange.Click;
  end;
end;
procedure Tfrm_Calendar.tvAufFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  NachrichtenAnhaengeLaden(dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').AsInteger);
end;

procedure Tfrm_Calendar.tvNachrichtenCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Status: Variant;
//  An: Integer;
begin
  if AViewInfo.Selected then
    Exit;

  Status := AViewInfo.GridRecord.Values[tvNachrichtenStatus.Index];
  if not VarIsNull(Status) then
  begin
     if (Status = 'Ungelesen') then
      ACanvas.Font.Style := [fsBold];
  end;
end;
procedure Tfrm_Calendar.tvNachrichtenDblClick(Sender: TObject);
var
  HitTest : TcxCustomGridHitTest;
begin
  HitTest := cxGrid1.ActiveView.GetHitTest(cxGrid1.ScreenToClient(Mouse.CursorPos));
  if HitTest is TcxGridRecordCellHitTest then
  begin
    Screen.Cursor := crHourGlass;
    btn_JobChange.Click;
  end;
end;
procedure Tfrm_Calendar.tvNachrichtenFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  NachrichtenAnhaengeLaden(dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').AsInteger);
end;

procedure Tfrm_Calendar.grdDBTblView_StundenplanBeginCustomDrawCell(  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:= 'Select Farbe, Schriftfarbe from manager_stundenplan_konfiguration';
    dm_PCM.qry_work.open;
    ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
    ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Calendar.grdDBTblView_StundenplanDienstagCustomDrawCell(  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:= 'Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[3];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Calendar.grdDBTblView_StundenplanDonnerstagCustomDrawCell(  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:='Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[5];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Calendar.grdDBTblView_StundenplanFreitagCustomDrawCell(  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:= 'Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[6];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Calendar.grdDBTblView_StundenplanMittwochCustomDrawCell( Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 try
    dm_PCM.qry_work.sql.text:='Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[4];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Calendar.grdDBTblView_StundenplanMontagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:= 'Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[2];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Calendar.grdDBTblView_StundenplanSamstagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:= 'Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[7];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;

end.
