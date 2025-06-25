unit PCMManager.Modul.D_Aufgaben;

interface

uses
  {$Region Uses}
  Winapi.Windows,
  Winapi.CommCtrl,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  dxBarBuiltInMenu,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  System.IOUtils,
  Vcl.Menus,
  cxStyles,
  cxEdit,
  cxScheduler,
  cxSchedulerStorage,
  cxSchedulerCustomControls,
  cxSchedulerCustomResourceView,
  cxSchedulerDayView,
  cxSchedulerAgendaView,
  cxSchedulerDateNavigator,
  cxSchedulerHolidays,
  cxSchedulerTimeGridView,
  cxSchedulerUtils,
  cxSchedulerWeekView,
  cxSchedulerYearView,
  cxSchedulerGanttView,
  cxSchedulerRecurrence,
  cxSchedulerRibbonStyleEventEditor,
  cxSchedulerTreeListBrowser,
  cxContainer,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  dxDateRanges,
  dxScrollbarAnnotations,
  Data.DB,
  cxDBData,
  cxDBLookupComboBox,
  cxSpinEdit,
  cxTimeEdit,
  cxDBEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxLabel,
  cxTextEdit,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid, Vcl.StdCtrls,
  cxButtons,
  cxGroupBox,
  cxSplitter,
  cxPC,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  dxPSGlbl,
  dxPSUtl,
  dxPSEngn,
  dxPrnPg,
  dxBkgnd,
  dxWrap,
  dxPrnDev,
  dxPSCompsProvider,
  dxPSFillPatterns,
  dxPSEdgePatterns,
  dxPSPDFExportCore,
  dxPSPDFExport,
  cxDrawTextUtils,
  dxPSPrVwStd,
  dxPSPrVwAdv,
  dxPSPrVwRibbon,
  dxPScxPageControlProducer,
  dxPScxSchedulerLnk,
  dxPScxGridLnk,
  dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers,
  dxPScxExtEditorProducers,
  dxPScxCommon,
  dxPSCore,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  cxSchedulerDBStorage,
  dxBar,
  dateutils,
  cxProgressBar,
  strutils,
  cxDateUtils,
  cxSchedulerICalendar,
  cxExtEditRepositoryItems,
  IdBaseComponent,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdExplicitTLSClientServerBase,
  IdFTP,
  System.UITypes,
  cxMemo,
  dxmdaset,
  cxImageComboBox,
  Vcl.ExtCtrls,
  cxCalendar,
  system.JSON,
  cxRichEdit,
  cxDBRichEdit,
  dxGDIPlusClasses,
  cxImage,
  Vcl.ComCtrls,
  Vcl.ToolWin,
  cxBarEditItem,
  System.ImageList,
  Vcl.ImgList,
  cxTL,
  cxTLdxBarBuiltInMenu,
  cxTreeView,
  cxInplaceContainer,
  cxButtonEdit,
  shellapi,
  cxGridCustomPopupMenu,
  cxGridPopupMenu,
  Vcl.OleServer,
  OutlookXP,
  REST.Types,
  REST.Client,
  REST.Authenticator.Basic,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  dxShellDialogs,
  PCM.Functions,
  dxSkinWXI,
  cxGeometry,
  cxVariants,
  dxCustomData,
  cxCustomCanvas,
  dxCoreGraphics,
  dxChartCore,
  dxChartData,
  dxChartLegend,
  dxChartSimpleDiagram,
  dxChartXYDiagram,
  dxChartXYSeriesLineView,
  dxChartXYSeriesAreaView,
  dxChartMarkers,
  dxChartXYSeriesBarView,
  dxChartDBData,
  dxCoreClasses,
  dxChartControl,
  dxStatusBar,
  cxImageList,
  dxLayoutContainer,
  dxLayoutLookAndFeels,
  dxLayoutControl,
  dxLayoutcxEditAdapters,
  PCM.Browser,
  dxLayoutControlAdapters,
  dxUIAClasses, dxCore, dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon;
  {$EndRegion Uses}
type
  {$Region Type}
  TPCMDay = record
    DaySA: string;
    DayFR: string;
    DayDO: string;
    DayMI: string;
    DayDI: string;
    DayMO: string;
    DaySO: string;
  end;
  TPCMDays = array of TPCMDay;
  TNachrichtenTyp = (ntAntrag, ntNachricht, ntAufgabe, ntTermin);
  TSearchType = (stSubject, stMessage, stSubjectMessage);
  Tfrm_Aufgaben = class(TForm)
    brpmm_ContextCalender: TdxBarPopupMenu;
    brpmm_EventCalender: TdxBarPopupMenu;
    brmgr_Kalendar: TdxBarManager;
    btn_MonatsAnsicht: TdxBarButton;
    qry_Stundenplan: TFDQuery;
    qry_Stundenplan_detail: TFDQuery;
    ds_Stundenplan_detail: TDataSource;
    ds_Stundenplan: TDataSource;
    qry_SchulFaecher: TFDQuery;
    dsSchulFaecher: TDataSource;
    compPrint_Cal: TdxComponentPrinter;
    compPrint_CalLink1: TcxSchedulerReportLink;
    compPrint_CalLink2: TdxGridReportLink;
    idFTP_Cal: TIdFTP;
    cxGrid1: TcxGrid;
    tvNachrichten: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5DBTableView1ID: TcxGridDBColumn;
    cxGrid5DBTableView1ID_Adr_Korrespondenz: TcxGridDBColumn;
    cxGrid5DBTableView1Dateiname: TcxGridDBColumn;
    cxGrid5DBTableView1DateinameSave: TcxGridDBColumn;
    cxGrid5Level1: TcxGridLevel;
    cxDBMemo1: TcxDBRichEdit;
    img_search: TcxImage;
    Image1: TcxImage;
    btn_AttachementSave: TcxButton;
    btn_AttachementOpen: TcxButton;
    edt_Suche: TcxButtonEdit;
    trlst_Aufgaben: TcxTreeList;
    cxTreeList1Column1: TcxTreeListColumn;
    brpmm_Aufgaben: TdxBarPopupMenu;
    pmmbtn_CalNew: TdxBarButton;
    pmmbtn_JobNew: TdxBarButton;
    pmmbtn_MessageNew: TdxBarButton;
    tvNachrichtenCaption: TcxGridDBColumn;
    tvNachrichtenLocation: TcxGridDBColumn;
    tvNachrichtenID: TcxGridDBColumn;
    tvNachrichtenTyp: TcxGridDBColumn;
    tvNachrichtenGesendetAm: TcxGridDBColumn;
    tvNachrichtenStatus: TcxGridDBColumn;
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
    tvNachrichtenJira_Ticket: TcxGridDBColumn;
    tvNachrichtenGelesenAm: TcxGridDBColumn;
    tvAufStart: TcxGridDBColumn;
    tvAufFinish: TcxGridDBColumn;
    cxTreeList1Column2: TcxTreeListColumn;
    pm_Einnahmen: TcxGridPopupMenu;
    brpmm_ImportExportAufgaben: TdxBarPopupMenu;
    Outlook: TOutlookApplication;
    rstreq_main: TRESTRequest;
    rstClt_Main: TRESTClient;
    rstrsp_Main: TRESTResponse;
    httpBasAut_Main: THTTPBasicAuthenticator;
    qWF_Nachrichten_Anhaenge: TFDQuery;
    qWF_Nachrichten_AnhaengeID: TFDAutoIncField;
    qWF_Nachrichten_AnhaengeID_IC_Nachrichten: TIntegerField;
    dsWF_Nachrichten_Anhaenge: TDataSource;
    SaveDialog1: TdxSaveFileDialog;
    qWF_Nachrichten_AnhaengeDateiname: TStringField;
    qWF_Nachrichten_AnhaengeDateinameSave: TStringField;
    RESTClient_jira: TRESTClient;
    httpAuth_Jira: THTTPBasicAuthenticator;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxImageList1: TcxImageList;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    lactrl_KalenderGroup_Root: TdxLayoutGroup;
    lactrl_Kalender: TdxLayoutControl;
    lagrp_Aufgaben: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    lTypeName: TdxLayoutLabeledItem;
    tvNachrichtenAdresse: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    dxLayoutItem33: TdxLayoutItem;
    edtJiraTicketNr: TcxDBButtonEdit;
    tvNachrichtenAsnprechpartner: TcxGridDBColumn;
    schedDBStrg_Kalender: TcxSchedulerDBStorage;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab4: TdxRibbonTab;
    tb_Aufgaben: TdxBar;
    tb_Filter: TdxBar;
    tb_ImportExport: TdxBar;
    btn_NewMessage: TdxBarLargeButton;
    btn_NewTask: TdxBarLargeButton;
    btn_NewEvent: TdxBarLargeButton;
    btn_JobChange: TdxBarLargeButton;
    btn_ReadJob: TdxBarLargeButton;
    btn_DoneJob: TdxBarLargeButton;
    btn_JobUndone: TdxBarLargeButton;
    btn_JobsDone: TdxBarLargeButton;
    btn_JobsRefresh: TdxBarLargeButton;
    tb_Ansicht: TdxBar;
    btn_taskMinMax: TdxBarLargeButton;
    pmmbtn_JobsImportOutlook: TdxBarLargeButton;
    pmmbtn_JobsExportOutlook: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure edt_SuchePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_SucheEnter(Sender: TObject);
    procedure edt_SucheExit(Sender: TObject);
    procedure edt_SuchePropertiesChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure trlst_AufgabenClick(Sender: TObject);
    procedure pmmbtn_CalNewClick(Sender: TObject);
    procedure btn_NewTaskClick(Sender: TObject);
    procedure btn_taskMinMaxClick(Sender: TObject);
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
    procedure pmmbtn_JobsImportOutlookClick(Sender: TObject);
    procedure pmmbtn_JobsExportOutlookClick(Sender: TObject);
    procedure btn_AttachementOpenClick(Sender: TObject);
    procedure tvAufFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure btn_AttachementSaveClick(Sender: TObject);
    procedure qWF_Nachrichten_AnhaengeAfterScroll(DataSet: TDataSet);
    procedure tvNachrichtenFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure schedDBStrg_KalenderEventInserted(Sender: TObject;
      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure schedDBStrg_KalenderEventModified(Sender: TObject;
      AEvent: TcxSchedulerEvent; var AHandled: Boolean);
  private
    { Private-Deklarationen }
//    FKalenderDateButton : Boolean;
    defaultLabelColor: integer;
    defaultFontColor: integer;
    iCurrTableview: integer;
//    sColordef,sFontcolordef: string;
    iFontColor,iLabelColor: Integer;
    SaveGridViewAufgaben,SaveGridViewNachrichten: TSavedGridView;
//    SaveGridViewStundenplan,SaveGridViewStundenplanDetail: TSavedGridView;
    procedure SetGridViews(Show:boolean);
//    procedure OpenEvent(ID_kalender: Integer; bReminder: Boolean);
    procedure NachrichtenAnhaengeLaden(ID_IC_Nachrichten: Integer);
    function GetAttachmentFilename(s: string): string;
  public
    { Public-Deklarationen }
    bol_allday: boolean;
    bol_VollBildCal: boolean;
    iCopyEventId: Integer;
    RecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
    FSearchType : TSearchType;
    FResult: boolEan;
    function SearchTypeToStr(ASearchType : TSearchType) : String;
    function GetRecurrence(var Rule, Start:  string) : Ansistring;
    function cxMyGetRecurrenceDescriptionString(ARecurrenceInfo: TcxSchedulerEventRecurrenceInfo; AFullDescription: Boolean = False): string;
    procedure SearchBoxSetStyle();
    procedure RefreshTerminundAUfgaben;
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_Aufgaben: Tfrm_Aufgaben;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Main,
  PCMManager.Modul.D_Calandar.Neu,
  PCMManager.Modul.D_Calendar.Filter,
  PCMManager.Modul.D_Calendar.Import,
  PCM.Functions.Synch.Wait,
  PCMManager.Helper.Calendar.Ical,
  PCM.Data,
  PCM.Browser.FullScreen,
  PCM.Strings,
  uwvLoader, PCMManager.Modul.D_Calendar.Terminsuche,
  PCMManager.Modul.D_Calendar;
  {$ENdRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_Aufgaben.SearchTypeToStr(ASearchType : TSearchType) : String;
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
procedure Tfrm_Aufgaben.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  sURL: string;
begin
  if edtJiraTicketNr.Text <> '' then
  begin
    sURL := frm_PCM_main.FOptions.Jira_Basic_URL + edtJiraTicketNr.EditValue;
    ShellExecute(self.WindowHandle,'open', PWideChar(sURL) ,nil,nil, SW_SHOWNORMAL);
  end;
end;
//procedure Tfrm_Aufgaben.OpenEvent(ID_kalender: Integer; bReminder: Boolean);
//var
//  schedeventE : TcxSchedulerControlEvent;
//  bCompleteDay: boolean;
//  iNewId: integer;
//begin
//  dm_PCM.qry_Kalender_Aufgaben.Locate('ID',ID_kalender,[]);
//  try
//    schedeventE := TcxSchedulerControlEvent(schedDBStrg_Kalender.GetEventByID(ID_kalender));
//  except
//    schedeventE:= nil;
//  end;
//  Application.CreateForm(Tfrm_Calendar_new, frm_Calendar_new);
//
//  if lowercase(dm_PCM.qry_Kalender_Aufgaben.FieldByName('CompleteDay').asString) = lowercase('True') then
//    bCompleteDay:= true
//  else
//    bCompleteDay:= false;
//
//
//
//  if frm_Calendar_new.Execute(
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Privat').AsBoolean,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('LabelColor').asInteger,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('FontColor').asInteger,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Location').AsString,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Kalendername').AsString,
//    schedDBStrg_Kalender,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Typ').asInteger,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_Adr_Wurzel').AsInteger,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_Ansprechpartner').AsInteger,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Caption').AsString,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Message').AsString,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').AsInteger,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Start').AsDateTime,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Finish').AsDateTime,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Aufgabenstatus').AsInteger,
//    False,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_IC_Prioritaeten').AsInteger,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID_IC_AufgabenArten').AsInteger,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Aufgabendauer').AsInteger,
//    0,
//    0,
//    0,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Reminder').asBoolean,
//    bCompleteday,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('ReminderMinutesBeforeStart').AsInteger,
//    false,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Zeitformat').AsInteger,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Erledigungsgrad').AsInteger,
//    schedeventE,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Jira_Ticket').AsString,
//    dm_PCM.qry_Kalender_Aufgaben.FieldByName('wiederholung_text').AsString,
//
//    iNewId) then
//  begin
//    RefreshTerminundAUfgaben;
//    frm_Calendar_new:= nil;
//  end;
//
//end;
function Tfrm_Aufgaben.cxMyGetRecurrenceDescriptionString(ARecurrenceInfo: TcxSchedulerEventRecurrenceInfo; AFullDescription: Boolean = False): string;
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
function Tfrm_Aufgaben.GetRecurrence(var Rule, Start:  string) : Ansistring;
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
function Tfrm_Aufgaben.GetAttachmentFilename(s: string): string;
begin
  Result := ExpandFilename(ExtractFilePath(ParamStr(0)) + 'Files\' + s)
end;
procedure Tfrm_Aufgaben.NachrichtenAnhaengeLaden(ID_IC_Nachrichten: Integer);
begin
  Image1.Picture.Assign(nil);
  lTypeName.Caption := '';
  qWF_Nachrichten_Anhaenge.Close;
  qWF_Nachrichten_Anhaenge.SQL.Text:= 'SELECT ina.ID, ina.ID_IC_Nachrichten, ina.Dateiname, ina.DateinameSave FROM manager_Aufgaben_Anhaenge ina WHERE ina.ID_IC_Nachrichten = :ID_IC_Nachrichten';
  qWF_Nachrichten_Anhaenge.Params[0].AsInteger := ID_IC_Nachrichten;
  qWF_Nachrichten_Anhaenge.Open;
end;
procedure Tfrm_Aufgaben.qWF_Nachrichten_AnhaengeAfterScroll(DataSet: TDataSet);
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
procedure Tfrm_Aufgaben.RefreshTerminundAUfgaben;
var
  sfilter: String;
begin
  dm_PCM.qry_Kalender_Aufgaben.Filter:= '';
  dm_PCM.qry_work.sql.text:= 'Select COUNT(*) AS AufgabenTermine , ('+
                      'Select COUNT(*) From manager_kalender Where gelesenam is null and bearbeitetam is NULL AND Typ IN (0) and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM) +' ) AS Nachrichten ' +
                      'From manager_Kalender ' +
                      'Where ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM) +' and  gelesenam is null and bearbeitetam is NULL AND Typ IN (1,2)';
  dm_PCM.qry_work.open;
  trlst_Aufgaben.Items[2].Values[1]:= dm_PCM.qry_work.Fieldbyname('Nachrichten').asInteger;
  trlst_Aufgaben.Items[1].Values[1]:= dm_PCM.qry_work.Fieldbyname('AufgabenTermine').asInteger;
  dm_PCM.qry_work.close;

  sFilter:= '';
  case iCurrTableView of
  0:
    sfilter:= 'Typ = 2';
  1:
    sfilter:= 'Typ = 1';
  2:
    sFilter:= 'Typ = 0';
  end;
  dm_PCM.qry_Kalender_Kalender.Refresh;
  dm_PCM.qry_Kalender_Aufgaben.refresh;
  if sFilter <> '' then
    dm_PCM.qry_Kalender_Aufgaben.Filter:= sFilter + ' and bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM)
  else
    dm_PCM.qry_Kalender_Aufgaben.Filter:= 'bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;

end;
procedure Tfrm_Aufgaben.schedDBStrg_KalenderEventInserted(Sender: TObject;
  AEvent: TcxSchedulerEvent; var AHandled: Boolean);
begin
  AHandled:= true;
end;

procedure Tfrm_Aufgaben.schedDBStrg_KalenderEventModified(Sender: TObject;
  AEvent: TcxSchedulerEvent; var AHandled: Boolean);
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

procedure Tfrm_Aufgaben.SearchBoxSetStyle();
begin
  if (edt_Suche.Text = SearchTypeToStr(stSubject)) OR
     (edt_Suche.Text = SearchTypeToStr(stMessage)) OR
     (edt_Suche.Text = SearchTypeToStr(stSubjectMessage)) then
  begin
    edt_Suche.Text := SearchTypeToStr(FSearchType);
    edt_Suche.Style.Font.Color := clGray;
    edt_Suche.Style.Font.Style := [fsItalic];
  end
  else
  begin
    edt_Suche.Style.Font.Color := clBlack;
    edt_Suche.Style.Font.Style := [];
  end;
end;
procedure Tfrm_Aufgaben.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewAufgaben := TSavedGridView.Create(GV_Aufgaben,dm_PCM.iIDBenutzerPCM, tvAuf);
    SaveGridViewAufgaben.LoadView;
    SaveGridViewNachrichten := TSavedGridView.Create(GV_Nachrichten,dm_PCM.iIDBenutzerPCM, tvNachrichten);
    SaveGridViewNachrichten.LoadView;
  end
  else begin
    SaveGridViewAufgaben.SaveView(0);
    SaveGridViewAufgaben.Free;
    SaveGridViewNachrichten.SaveView(0);
    SaveGridViewNachrichten.Free;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// TABAufgaben                                                                //
////////////////////////////////////////////////////////////////////////////////
{$Region TABAufgaben}
procedure Tfrm_Aufgaben.trlst_AufgabenClick(Sender: TObject);
var
  selectedNode: TcxTreeListNode;
  sItem: string;
  view: TcxGridDBTableView;
begin
  view := TcxGridDBTableView.Create(SELF);
  if trlst_Aufgaben.SelectionCount > 0 then
  begin
    selectedNode := trlst_Aufgaben.FocusedNode;
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

     if sItem = 'Aufgaben' then
       iCurrTableview:= 1;
     if sItem = 'Termine' then
        iCurrTableview:= 0;
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
procedure Tfrm_Aufgaben.btn_NewMessageClick(Sender: TObject);
var
  iNewId : Integer;
begin
  Application.CreateForm(Tfrm_Calendar_new, frm_Calendar_new);
  frm_Calendar_new.Execute(false,iLabelColor,iFontColor,'im Büro','manuell',schedDBStrg_Kalender,0, 0, 0, '','',0,0,0,0,false,0,0,0,0,0,0,false,false,0,false,0,0,nil,'','',iNewId);
  frm_Calendar_new := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Aufgaben.btn_NewTaskClick(Sender: TObject);
var
  iNewId : Integer;
begin
  Application.CreateForm(Tfrm_Calendar_new, frm_Calendar_new);
  frm_Calendar_new.Execute(false,iLabelColor,iFontColor,'im Büro','manuell',schedDBStrg_Kalender,1, 0, 0, '','',0,0,0,0,false,0,0,0,0,0,0,false,false,0,false,0,0,nil,'','',iNewId);
  frm_Calendar_new := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Aufgaben.btn_NewEventClick(Sender: TObject);
var
  iNewId : Integer;
begin
  Application.CreateForm(Tfrm_Calendar_new, frm_Calendar_new);
  frm_Calendar_new.Execute(false,iLabelColor,iFontColor,'im Büro','manuell',schedDBStrg_Kalender,2, 0, 0, '','',0,0,0,0,false,0,0,0,0,0,0,false,false,0,false,0,0,nil,'','',iNewId);
  frm_Calendar_new := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Aufgaben.btn_JobChangeClick(Sender: TObject);
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

    Application.CreateForm(Tfrm_Calendar_new, frm_Calendar_new);
    qWF_Nachrichten_Anhaenge.First;
    while not qWF_Nachrichten_Anhaenge.Eof do
    begin
      frm_Calendar_new.AddAnhang(qWF_Nachrichten_AnhaengeDateiname.AsString, GetAttachmentFilename(qWF_Nachrichten_AnhaengeDateinameSave.AsString));
      f := GetAttachmentFilename(qWF_Nachrichten_AnhaengeDateinameSave.AsString);
      if f <> '' then
      begin
        Icon := TIcon.Create;
        Icon.Handle := GetFileNameInfo(f, tn);
        frm_Calendar_new.lTypeName.Caption := tn;
        frm_Calendar_new.Image1.Picture.Assign(Icon);
        Icon.Free;
      end
      else
      begin
        frm_Calendar_new.Image1.Picture.Assign(nil);
        frm_Calendar_new.lTypeName.Caption := '';
      end;
      qWF_Nachrichten_Anhaenge.Next;
    end;
      if frm_Calendar_new.Execute(
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Privat').AsBoolean,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Labelcolor').AsInteger,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('FontColor').AsInteger,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Location').AsString,
      dm_PCM.qry_Kalender_Aufgaben.FieldByName('Kalendername').AsString,
      schedDBStrg_Kalender,dm_PCM.qry_Kalender_Aufgaben.FieldByName('Typ').asInteger,
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
procedure Tfrm_Aufgaben.btn_ReadJobClick(Sender: TObject);
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
procedure Tfrm_Aufgaben.btn_DoneJobClick(Sender: TObject);
var
  ID: Integer;
  iCount,iRecCount: Integer;
  view : TcxGridTableView;
  col : TcxGridColumn;
  AMessageIds : Array of Integer;
  sMsgDlgMessage: String;
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
    sMsgDlgMessage := rs_PCMManager_Eintraegenichterledigt1 + slinebreak
      + rs_PCMManager_Eintraegenichterledigt2 + IntToStr(iRecCount) + rs_PCMManager_Eintraegenichterledigt3;
  end
  else
  begin
    sMsgDlgMessage := rs_PCMManager_Eintragnichterledigt1 + slinebreak
      + rs_PCMManager_Eintragnichterledigt2;
  end;

  if dm_PCM.qry_Kalender_Aufgaben.FieldByName('GelesenAm').IsNull then
    if MessageDlg(sMsgDlgMessage + slinebreak + rs_PCMManager_AlsBearbeitet,mtwarning,[mbYes,mbNo],0) = IDNO then
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
procedure Tfrm_Aufgaben.btn_JobUndoneClick(Sender: TObject);
begin
  dm_PCM.qry_Work.SQL.Text :=
    'UPDATE manager_kalender SET BearbeitetAm = NULL ' +
      'WHERE ID = ' + IntToStr(dm_PCM.qry_Kalender_Aufgaben.Fieldbyname('ID').AsInteger);
  dm_PCM.qry_Work.Execute;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Aufgaben.btn_JobsDoneClick(Sender: TObject);
begin
  if btn_JobsDone.tag = 0 then
  begin
    btn_JobsDone.tag:= 1;
    btn_JobsDone.Caption:= rs_PCMManager_aktAufgaben;
    btn_JobsDone.largeimageindex:= 124;
    btn_JobUndone.enabled:= true;
    dm_PCM.qry_Kalender_Aufgaben.Filter:= 'bearbeitetam <> null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;
  end
  else begin
    btn_JobsDone.tag:= 0;
    btn_JobsDone.Caption:= rs_PCMManager_bearbAufgaben;
    btn_JobsDone.largeimageindex:= 123;
    btn_JobUndone.enabled:= false;
    dm_PCM.qry_Kalender_Aufgaben.Filter:= 'bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;
  end;
end;
procedure Tfrm_Aufgaben.pmmbtn_JobsImportOutlookClick(Sender: TObject);
  procedure GetOutlookToDo(AUser: string);
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
          Writelog(PCM_Logname,rs_PCMManager_Kontakte + rs_PCMManager_KeineVerbindung + e.Message, 2);
        exit;
      end;
    end;
    Writelog(PCM_Logname, rs_PCMManager_Kontakte + rs_PCMManager_Namespace, 0);
    try
      olvarNameSpace := Outlook.GetNameSpace('MAPI');
    except
      on e: system.sysutils.Exception do
      begin
        Writelog(PCM_Logname,rs_PCMManager_Kontakte + rs_PCMManager_NamespaceErmitteln + e.Message, 2);
        exit;
      end;
    end;
    Writelog(PCM_Logname, rs_PCMManager_Kontakte + rs_PCMManager_ContactsRootErmitteln + AUser, 0);
    try
      objOwner := olvarNameSpace.CreateRecipient(AUser);
      olvarTermine := olvarNameSpace.GetSharedDefaultFolder(objOwner,olFolderCalendars);
      ShowWaitForm(TForm(Self), PWideChar(rs_PCMManager_TermineImportieren), olvarTermine.items.count, 417, 65);
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
        Writelog(PCM_Logname, rs_PCMManager_AufgabennichtErmitteln + e.Message, 2);
        exit;
      end;
    end;
    CloseWaitForm;
    Outlook.Disconnect;
  end;
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
procedure Tfrm_Aufgaben.pmmbtn_JobsExportOutlookClick(Sender: TObject);
  procedure AddOutlookTODO(AuserPriv,AuserGes: String);
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
    Writelog(PCM_Logname, rs_PCMManager_Aufgaben + rs_PCMManager_OutlookVerbinden, 0);
    try
      Outlook.connect;
    except
      on e: System.sysutils.Exception do
      begin
        Writelog(PCM_Logname,rs_PCMManager_Aufgaben + rs_PCMManager_KeineVerbindung + e.Message, 2);
        exit;
      end;
    end;
    Writelog(PCM_Logname, rs_PCMManager_Aufgaben + rs_PCMManager_Namespace, 0);
    try
      aMapi := Outlook.GetNameSpace('MAPI');
    except
      on e: System.sysutils.Exception do
      begin
        Writelog(PCM_Logname,rs_PCMManager_Aufgaben + rs_PCMManager_NamespaceErmitteln + e.Message, 2);
        exit;
      end;
    end;
    Writelog(PCM_Logname, rs_PCMManager_Aufgaben + rs_PCMManager_CalendarsRoot + AUserPriv, 0);
    try
      objOwner := aMapi.CreateRecipient(AUserPriv);
      aTask := aMapi.GetSharedDefaultFolder(objOwner,$0000000D);
    except
      on e: System.sysutils.Exception do
      begin
        Writelog(PCM_Logname,rs_PCMManager_Aufgaben + rs_PCMManager_CalendarsRootErmitteln + e.Message, 2);
        exit;
      end;
    end;

    i := 1;
    ShowWaitForm(TForm(Self), PWideChar(rs_PCMManager_AufgabenLoeschen), aTask.Items.Count, 417, 65);
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

    ShowWaitForm(TForm(Self), PWideChar(rs_PCMManager_AufgabenImportieren), dm_PCM.qry_work.RecordCount, 417, 65);

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
procedure Tfrm_Aufgaben.btn_JobsRefreshClick(Sender: TObject);
begin
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Aufgaben.btn_taskMinMaxClick(Sender: TObject);
begin
  if bol_VollBildCal = false then
  begin
    bol_VollBildCal:= true;
    frm_PCM_main.navbr_main.Width:= 0;
    frm_PCM_main.pc_main.properties.HideTabs:= true;
    btn_taskMinMax.Caption:= rs_PCMManager_normAnsicht;
    btn_taskMinMax.LargeImageIndex:= 31;
    trlst_Aufgaben.Height:= 107;
  end
  else begin
    bol_VollBildCal:= false;
    frm_PCM_main.navbr_main.Width:= 200;
    frm_PCM_main.pc_main.properties.HideTabs:= false;
    btn_taskMinMax.Caption:= rs_PCMManager_maxAnsicht;
    btn_taskMinMax.LargeImageIndex:= 32;
    trlst_Aufgaben.Height:= 107;
  end;
end;
procedure Tfrm_Aufgaben.edt_SucheEnter(Sender: TObject);
begin
  if (edt_Suche.Text = SearchTypeToStr(stSubject)) OR
     (edt_Suche.Text = SearchTypeToStr(stMessage)) OR
     (edt_Suche.Text = SearchTypeToStr(stSubjectMessage)) then
        edt_Suche.Text := '';
end;
procedure Tfrm_Aufgaben.edt_SucheExit(Sender: TObject);
begin
  edt_Suche.Properties.OnChange := nil;
  SearchBoxSetStyle();
  edt_Suche.Properties.OnChange := edt_SuchePropertiesChange;
end;
procedure Tfrm_Aufgaben.edt_SuchePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edt_Suche.Clear;
  edt_Suche.SetFocus;
end;
procedure Tfrm_Aufgaben.edt_SuchePropertiesChange(Sender: TObject);
  procedure SearchDoSearch(ASearchString : String);
  var
    sSearchQuery : String;
  begin
    SearchBoxSetStyle();
    if ASearchString = '' then  exit;
      sSearchQuery := 'Message LIKE ' + quotedStr('%' + ASearchString + '%') +
                      ' OR ' + 'Caption LIKE ' + quotedStr('%' + ASearchString + '%') +
                      ' OR ' + 'Location LIKE ' + quotedStr('%' + ASearchString + '%') +
                      ' OR ' + 'Kalendername LIKE ' + quotedStr('%' + ASearchString + '%');

    dm_PCM.qry_Kalender_Aufgaben.Filter := sSearchQuery;
    dm_PCM.qry_Kalender_Aufgaben.Filtered := True;
  end;
begin
  SearchDoSearch(edt_Suche.Text);
end;
procedure Tfrm_Aufgaben.tvAufCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Status: Variant;
  EndeDatum: TDateTime;
begin
  if AViewInfo.Selected then
    Exit;
  Status := AViewInfo.GridRecord.Values[tvaufStatus.Index];
  if not VarIsNull(Status) then
  begin
   if (Status = 'Ungelesen') then
      ACanvas.Font.Style := [fsBold];
  end;
  ACanvas.Canvas.Brush.Style := bsSolid;
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
procedure Tfrm_Aufgaben.tvAufDblClick(Sender: TObject);
var
  HitTest : TcxCustomGridHitTest;
begin
  HitTest := cxGrid1.ActiveView.GetHitTest(cxGrid1.ScreenToClient(Mouse.CursorPos));
  if HitTest is TcxGridRecordCellHitTest then
  begin
    btn_JobChange.Click;
  end;
end;
procedure Tfrm_Aufgaben.tvAufFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  NachrichtenAnhaengeLaden(dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').AsInteger);
end;
procedure Tfrm_Aufgaben.tvNachrichtenCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
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
procedure Tfrm_Aufgaben.tvNachrichtenDblClick(Sender: TObject);
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
procedure Tfrm_Aufgaben.tvNachrichtenFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  NachrichtenAnhaengeLaden(dm_PCM.qry_Kalender_Aufgaben.FieldByName('ID').AsInteger);
end;
procedure Tfrm_Aufgaben.pmmbtn_CalNewClick(Sender: TObject);
var
  iNewId : Integer;
begin
  Application.CreateForm(Tfrm_Calendar_new, frm_Calendar_new);
  frm_Calendar_new.Execute(false,iLabelColor,iFontColor,'im Büro','manuell',schedDBStrg_Kalender,2, 0, 0, '','',0,StrToDateTime(DateToStr(StrToDate(Copy(DateToStr(Date()),1,10))) + ' ' + '08:30:00'),StrToDateTime(DateToStr(StrToDate(Copy(DateToStr(Date()),1,10))) + ' ' + '08:30:00'),0,false,0,0,0,0,0,0,false,false,15,false,0,0,nil,'','',iNewId);
  frm_Calendar_new := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Aufgaben.btn_AttachementOpenClick(Sender: TObject);
  procedure OpenAttachement;
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
begin
  OpenAttachement;
end;
procedure Tfrm_Aufgaben.btn_AttachementSaveClick(Sender: TObject);
  procedure saveAttachement;
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
begin
  saveAttachement;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// TAB Stundenplan                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Stundenplan}

{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Formfunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure Tfrm_Aufgaben.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Aufgaben.FormDestroy(Sender: TObject);
begin
  SetGridViews(False);
end;
procedure Tfrm_Aufgaben.FormResize(Sender: TObject);
begin
  cxTreeList1Column1.Width:= trlst_Aufgaben.Width - (8 + cxTreeList1Column2.Width) ;
end;
procedure Tfrm_Aufgaben.FormShow(Sender: TObject);
  procedure InitializeRights;
  begin
    pmmbtn_CalNew.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_NewMessage.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_NewTask.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_NewEvent.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_JobChange.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_ReadJob.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_DoneJob.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_JobUndone.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_JobsDone.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    pmmbtn_JobsImportOutlook.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    pmmbtn_JobsExportOutlook.Enabled:= dm_PCM.iKalender >= SetReadWrite;
  end;
  procedure OpenData;
  //var I:integer;
  begin
    dm_PCM.qry_Kalender_Kalender.Open;
    dm_PCM.qry_KalenderAufgaben_Arten.open;
    dm_PCM.qry_KalenderAufgaben_Prio.Open;
    dm_PCM.qry_Kalender_Ansprechpartner.Open;
    dm_PCM.qry_Config_Firmen.Open;
    dm_PCM.qry_Kalender_Aufgaben.open;
    dm_PCM.qry_Kalender_Aufgaben.Filter:= 'bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;
    RefreshTerminundAUfgaben;
    tvNachrichtenCaption.Caption:= rs_PCMManager_Betreff;
    tvNachrichtenGelesenAm.Caption:= rs_PCMManager_GelesenAM;
    tvNachrichtenGesendetAm.Caption:= rs_PCMManager_GesendetAm;
    tvNachrichtenAdresse.Caption:= rs_PCMManager_Adresse;
    tvNachrichtenAsnprechpartner.Caption:= rs_PCMManager_Ansprechpartner;
    tvNachrichtenJira_Ticket.Caption:= rs_PCMManager_JiraTicket;
    tvNachrichtenLocation.Caption:= rs_PCMLizenzgenerator_KundeORT;
    tvNachrichtenStatus.Caption:= rs_PCMManager_Status;
    tvNachrichtenTyp.Caption:= rs_PCMManager_Typ;
  end;
begin
  OpenData;
  InitializeRights;
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
  schedDBStrg_Kalender.Reminders.Active:= false;
  defaultLabelColor:= 13083265;
  defaultFontColor:= 0;
  FormResize(Self);
  SetGridViews(True);
end;
{$EndRegion}
end.
