unit PCMManager.Modul.D_Calendar;

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
  dxUIAClasses, dxPrinting, cxSchedulerActions, System.Actions, Vcl.ActnList,
  dxActions, dxCore, dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon;
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
  Tfrm_Calendar = class(TForm)
    brpmm_ContextCalender: TdxBarPopupMenu;
    brpmm_EventCalender: TdxBarPopupMenu;
    brpmm_Print: TdxBarPopupMenu;
    brmgr_Kalendar: TdxBarManager;
    btn_TerminNeu: TdxBarButton;
    btn_TerminToday: TdxBarButton;
    btn_Terminchange: TdxBarButton;
    btn_TerminDelete: TdxBarButton;
    schedDBStrg_Kalenderimport: TcxSchedulerDBStorage;
    schedDBStrg_Kalender: TcxSchedulerDBStorage;
    compPrint_Cal: TdxComponentPrinter;
    compPrint_CalLink1: TcxSchedulerReportLink;
    compPrint_CalLink2: TdxGridReportLink;
    idFTP_Cal: TIdFTP;
    pmmbtn_CalNew: TdxBarButton;
    pm_Einnahmen: TcxGridPopupMenu;
    Outlook: TOutlookApplication;
    SaveDialog1: TdxSaveFileDialog;
    sched_Kalender: TcxScheduler;
    cxImageList1: TcxImageList;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    lactrl_KalenderGroup_Root: TdxLayoutGroup;
    lactrl_Kalender: TdxLayoutControl;
    dxLayoutItem2: TdxLayoutItem;
    rstClt_Main: TRESTClient;
    httpBasAut_Main: THTTPBasicAuthenticator;
    rstrsp_Main: TRESTResponse;
    rstreq_main: TRESTRequest;
    RESTClient_jira: TRESTClient;
    httpAuth_Jira: THTTPBasicAuthenticator;
    dxRibbon1: TdxRibbon;
    ActionList1: TActionList;
    dxRibbonTabHome: TdxRibbonTab;
    tb_termin: TdxBar;
    btn_TerminNew: TdxBarLargeButton;
    tb_Navigation: TdxBar;
    btn_NavigationZurueck: TdxBarLargeButton;
    btn_NavigationVor: TdxBarLargeButton;
    dxSchedulerGoToToday: TdxSchedulerGoToToday;
    btn_NavigationHeute: TdxBarLargeButton;
    dxSchedulerGoToDate: TdxSchedulerGoToDate;
    btn_NavigationGehezumDatum: TdxBarLargeButton;
    dxSchedulerNextSevenDays: TdxSchedulerNextSevenDays;
    btn_NavigationNaechste7Tage: TdxBarLargeButton;
    tb_Ansicht: TdxBar;
    btn_AnsichtTag: TdxBarLargeButton;
    btn_AnsichtArbeitswoche: TdxBarLargeButton;
    btn_AnsichtWoche: TdxBarLargeButton;
    btn_AnsichtMonat: TdxBarLargeButton;
    btn_AnsichtZeitleiste: TdxBarLargeButton;
    btn_AnsichtJahr: TdxBarLargeButton;
    btn_AnsichtGantt: TdxBarLargeButton;
    btn_AnsichtAgenda: TdxBarLargeButton;
    dxRibbonTabView: TdxRibbonTab;
    tb_Zeitintervall: TdxBar;
    btn_ZeitintervallZeitintervall: TdxBarSubItem;
    dxSchedulerTimeScale60Minutes: TdxSchedulerTimeScale60Minutes;
    btn_Zeitintervall60Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale30Minutes: TdxSchedulerTimeScale30Minutes;
    btn_Zeitintervall30Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale15Minutes: TdxSchedulerTimeScale15Minutes;
    btn_Zeitintervall15Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale10Minutes: TdxSchedulerTimeScale10Minutes;
    btn_Zeitintervall10Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale6Minutes: TdxSchedulerTimeScale6Minutes;
    btn_Zeitintervall6Minutes: TdxBarLargeButton;
    dxSchedulerTimeScale5Minutes: TdxSchedulerTimeScale5Minutes;
    btn_Zeitintervall5Minutes: TdxBarLargeButton;
    dxSchedulerCompressWeekends: TdxSchedulerCompressWeekends;
    tb_Layout: TdxBar;
    btn_LayoutKomprimiereWochenende: TdxBarLargeButton;
    dxSchedulerWorkTimeOnly: TdxSchedulerWorkTimeOnly;
    btn_LayoutGanzerTag: TdxBarLargeButton;
    dxSchedulerSnapEventsToTimeSlots: TdxSchedulerSnapEventsToTimeSlots;
    btn_LayoutEreignisse: TdxBarLargeButton;
    dxSchedulerDateNavigator: TdxSchedulerDateNavigator;
    btn_LayoutDatumsnavigation: TdxBarLargeButton;
    dxSchedulerShowPrintForm: TdxSchedulerShowPrintForm;
    dxRibbonTabFile: TdxRibbonTab;
    tb_Drucken: TdxBar;
    dxSchedulerShowPrintPreviewForm: TdxSchedulerShowPrintPreviewForm;
    dxSchedulerShowPageSetupForm: TdxSchedulerShowPageSetupForm;
    dxRibbon1Tab1: TdxRibbonTab;
    tb_Filter: TdxBar;
    btn_FilterTerminsuche: TdxBarLargeButton;
    btn_FilterKalender: TdxBarLargeButton;
    btn_AnsichtMaxMin: TdxBarLargeButton;
    btn_FilterRefresh: TdxBarLargeButton;
    tb_ImportExport: TdxBar;
    btn_ImportExportImporttoICAL: TdxBarLargeButton;
    btn_ImportExportExporttoICAL: TdxBarLargeButton;
    btn_ImportExportImporttoOutlook: TdxBarLargeButton;
    btn_ImportExportExporttoOutlook: TdxBarLargeButton;
    btn_DruckeTag: TdxBarLargeButton;
    btn_DruckeWoche: TdxBarLargeButton;
    btn_DruckeMonat: TdxBarLargeButton;
    btn_DruckeJahr: TdxBarLargeButton;
    btn_DruckeAgenda: TdxBarLargeButton;
    dxRibbon1Tab2: TdxRibbonTab;
    procedure btn_TerminNewClick(Sender: TObject);
    procedure btn_AnsichtArbeitswocheClick(Sender: TObject);
    procedure btn_AnsichtWocheClick(Sender: TObject);
    procedure btn_AnsichtMonatClick(Sender: TObject);
    procedure btn_AnsichtJahrClick(Sender: TObject);
    procedure btn_NavigationZurueckClick(Sender: TObject);
    procedure btn_NavigationVorClick(Sender: TObject);
    procedure btn_FilterKalenderClick(Sender: TObject);
    procedure btn_AnsichtMaxMinClick(Sender: TObject);
    procedure btn_DruckeTagClick(Sender: TObject);
    procedure btn_DruckeMonatClick(Sender: TObject);
    procedure btn_DruckeWocheClick(Sender: TObject);
    procedure btn_ImportExportImporttoICALClick(Sender: TObject);
    procedure btn_ImportExportExporttoICALClick(Sender: TObject);
    procedure btn_TerminNeuClick(Sender: TObject);
    procedure btn_TerminchangeClick(Sender: TObject);
    procedure btn_TerminDeleteClick(Sender: TObject);
    procedure sch_KalenderAfterSizingEvent(Sender: TcxCustomScheduler;  AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Accept: Boolean);
    procedure schedDBStrg_KalenderEventModified(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure ssKalenderRemindersAlertReminder(Sender: TcxSchedulerReminders; AReminder: TcxSchedulerReminder; var AHandled: Boolean);
    procedure ssKalenderRemindersDismissReminder(Sender: TcxSchedulerReminders; AReminder: TcxSchedulerReminder; var AHandled: Boolean);
    procedure ssKalenderRemindersOpenEvent(Sender: TcxSchedulerReminders; AEvent: TcxSchedulerControlEvent);
    procedure schedDBStrg_KalenderEventInserted(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure sched_KalenderClick(Sender: TObject);
    procedure sched_KalenderCustomDrawDayHeader(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDayHeaderCellViewInfo; var ADone: Boolean);
    procedure sched_KalenderDblClick(Sender: TObject);
    procedure sched_KalenderBeforeDragEvent(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Allow: Boolean);
    procedure sched_KalenderBeforeSizingEvent(Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent; X, Y: Integer; var Allow: Boolean);
    procedure sched_KalenderCustomDrawEvent(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo; var ADone: Boolean);
    procedure sched_KalenderKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btn_AnsichtAgendaClick(Sender: TObject);
    procedure pmmbtn_CalNewClick(Sender: TObject);
    procedure btn_DruckeJahrClick(Sender: TObject);
    procedure btn_DruckeAgendaClick(Sender: TObject);
    procedure btn_ImportExportImporttoOutlookClick(Sender: TObject);
    procedure btn_FilterRefreshClick(Sender: TObject);
    procedure btn_ImportExportExporttoOutlookClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_AnsichtTagClick(Sender: TObject);
    procedure sched_KalenderGetEventModernStyleHintInfo(Sender: TObject; AEvent: TcxSchedulerControlEvent; AInfo: TcxSchedulerEventModernStyleHintInfo);
    procedure btn_AnsichtZeitleisteClick(Sender: TObject);
    procedure btn_FilterTerminsucheClick(Sender: TObject);
    procedure btn_AnsichtGanttClick(Sender: TObject);
  private
    { Private-Deklarationen }
    defaultLabelColor: integer;
    defaultFontColor: integer;
    iCurrTableview: integer;
    sColordef,sFontcolordef: string;
    iFontColor,iLabelColor: Integer;
//    SaveGridViewAufgaben,SaveGridViewNachrichten,
//    SaveGridViewStundenplan,SaveGridViewStundenplanDetail: TSavedGridView;
    procedure OpenEvent(ID_kalender: Integer; bReminder: Boolean);
//    function GetAttachmentFilename(s: string): string;
  public
    { Public-Deklarationen }
    bol_VollBildCal: boolean;
    iCopyEventId: Integer;
    RecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
    FSearchType : TSearchType;
    FResult: boolEan;
    function GetRecurrence(var Rule, Start:  string) : Ansistring;
    function cxMyGetRecurrenceDescriptionString(ARecurrenceInfo: TcxSchedulerEventRecurrenceInfo; AFullDescription: Boolean = False): string;
    procedure ReadICSAutomatic;
    procedure WriteICSAutomatic;
    procedure RefreshTerminundAUfgaben;
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_Calendar: Tfrm_Calendar;
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
  uwvLoader, PCMManager.Modul.D_Calendar.Terminsuche;
  {$ENdRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
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
procedure Tfrm_Calendar.btn_FilterTerminsucheClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Terminsuche,frm_Terminsuche);
  if frm_Terminsuche.ShowModal = mrok then
  begin
    sched_Kalender.ViewDay.Active := True;
    sched_Kalender.SelectDays(sched_Kalender.SelectedDays[0], sched_Kalender.SelectedDays[0], True);
    sched_Kalender.GoToDate(dm_pcm.iKalenderDate);
    btn_NavigationZurueck.Hint := rs_PCMManager_TagZurueck;
    btn_NavigationVor.Hint := rs_PCMManager_Tagvor;
    btn_AnsichtTag.LargeImageIndex:= 15;
    btn_AnsichtArbeitswoche.LargeImageIndex:= 40;
    btn_AnsichtWoche.LargeImageIndex:= 41;
    btn_AnsichtMonat.LargeImageIndex:= 42;
    btn_AnsichtJahr.LargeImageIndex:= 44;
    btn_AnsichtZeitleiste.LargeImageIndex:= 133;
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
//function Tfrm_Calendar.GetAttachmentFilename(s: string): string;
//begin
//  Result := ExpandFilename(ExtractFilePath(ParamStr(0)) + 'Files\' + s)
//end;
procedure Tfrm_Calendar.RefreshTerminundAUfgaben;
var
  sfilter: String;
begin
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
  if sFilter <> '' then
    dm_PCM.qry_Kalender_Aufgaben.Filter:= sFilter + ' and bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM)
  else
    dm_PCM.qry_Kalender_Aufgaben.Filter:= 'bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;

end;
procedure Tfrm_Calendar.OpenEvent(ID_kalender: Integer; bReminder: Boolean);
var
  schedeventE : TcxSchedulerControlEvent;
  bCompleteDay: boolean;
  iNewId: integer;
begin
  dm_PCM.qry_Kalender_Aufgaben.Locate('ID',ID_kalender,[]);
  try
    schedeventE := TcxSchedulerControlEvent(schedDBStrg_Kalender.GetEventByID(ID_kalender));
  except
    schedeventE:= nil;
  end;
  Application.CreateForm(Tfrm_Calendar_new, frm_Calendar_new);

  if lowercase(dm_PCM.qry_Kalender_Aufgaben.FieldByName('CompleteDay').asString) = lowercase('True') then
    bCompleteDay:= true
  else
    bCompleteDay:= false;



  if frm_Calendar_new.Execute(
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Privat').AsBoolean,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('LabelColor').asInteger,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('FontColor').asInteger,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Location').AsString,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Kalendername').AsString,
    schedDBStrg_Kalender,
    dm_PCM.qry_Kalender_Aufgaben.FieldByName('Typ').asInteger,
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
    frm_Calendar_new:= nil;
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
      if sLink <> '' then
      begin
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
          ShowWaitForm(TForm(Self), PWideChar(rs_PCMManager_TermineImportieren), alist.Count-1, 417, 65);
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
      end;
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
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// TABKalender                                                                //
////////////////////////////////////////////////////////////////////////////////
{$Region TABKalender}
procedure Tfrm_Calendar.btn_TerminNewClick(Sender: TObject);
var
  iNewId: integer;
begin
  Application.CreateForm(Tfrm_Calendar_new, frm_Calendar_new);
  frm_Calendar_new.Execute(false,iLabelColor,iFontColor,'im Büro','manuell',schedDBStrg_Kalender,2, 0, 0, '','',0,0,0,0,false,0,0,0,0,0,0,false,false,0,false,0,0,nil,'','',iNewId);
  frm_Calendar_new := nil;
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.btn_AnsichtTagClick(Sender: TObject);
begin
  sched_Kalender.ViewDay.Active := True;
  sched_Kalender.SelectDays(sched_Kalender.SelectedDays[0], sched_Kalender.SelectedDays[0], True);
  btn_NavigationZurueck.Caption := 'Tag zurück';
  btn_NavigationVor.Caption := 'Tag vor';
  btn_NavigationZurueck.Hint := rs_PCMManager_TagZurueck;
  btn_NavigationVor.Hint := rs_PCMManager_Tagvor;
  btn_AnsichtTag.Down:= true;
  btn_AnsichtArbeitswoche.Down:= false;
  btn_AnsichtWoche.Down:= false;
  btn_AnsichtMonat.Down:= false;
  btn_AnsichtJahr.Down:= false;
  btn_AnsichtZeitleiste.Down:= false;
  btn_AnsichtGantt.Down:= false;
  btn_AnsichtAgenda.Down:= false;
//  dxRibbonTabHome.Groups[1].Visible:= true;
end;
procedure Tfrm_Calendar.btn_AnsichtArbeitswocheClick(Sender: TObject);
begin
  tag := Round(sched_Kalender.SelectedDays.Count / 2);
  sched_Kalender.SelectWorkDays(sched_Kalender.SelectedDays[tag]);
  btn_NavigationZurueck.Caption := 'Arbeitswoche zurück';
  btn_NavigationVor.Caption := 'Arbeitswoche vor';
  btn_NavigationZurueck.Hint := rs_PCMManager_ArbWocheZurueck;
  btn_NavigationVor.Hint := rs_PCMManager_ArbWocheVor;
  btn_AnsichtTag.Down:= false;
  btn_AnsichtArbeitswoche.Down:= true;
  btn_AnsichtWoche.Down:= false;
  btn_AnsichtMonat.Down:= false;
  btn_AnsichtJahr.Down:= false;
  btn_AnsichtZeitleiste.Down:= false;
  btn_AnsichtGantt.Down:= false;
  btn_AnsichtAgenda.Down:= false;
//  dxRibbonTabHome.Groups[1].Visible:= true;
end;
procedure Tfrm_Calendar.btn_AnsichtWocheClick(Sender: TObject);
begin
  sched_Kalender.ViewWeek.Active := True;
  btn_NavigationZurueck.Caption := 'Woche zurück';
  btn_NavigationVor.Caption := 'Woche vor';
  btn_NavigationZurueck.Hint := rs_PCMManager_WocheZurueck;
  btn_NavigationVor.Hint := rs_PCMManager_Wochevor;
  btn_AnsichtTag.Down:= false;
  btn_AnsichtArbeitswoche.Down:= false;
  btn_AnsichtWoche.Down:= true;
  btn_AnsichtMonat.Down:= false;
  btn_AnsichtJahr.Down:= false;
  btn_AnsichtZeitleiste.Down:= false;
  btn_AnsichtGantt.Down:= false;
  btn_AnsichtAgenda.Down:= false;
//  dxRibbonTabHome.Groups[1].Visible:= true;
end;
procedure Tfrm_Calendar.btn_AnsichtMonatClick(Sender: TObject);
begin
  sched_Kalender.GoToDate(sched_Kalender.SelectedDays[0], vmMonth);
  btn_NavigationZurueck.Caption := 'Monat zurück';
  btn_NavigationVor.Caption := 'Monat vor';
  btn_NavigationZurueck.Hint := rs_PCMManager_MonatZurueck;
  btn_NavigationVor.Hint := rs_PCMManager_Monatvor;
  btn_AnsichtTag.Down:= false;
  btn_AnsichtArbeitswoche.Down:= false;
  btn_AnsichtWoche.Down:= false;
  btn_AnsichtMonat.Down:= true;
  btn_AnsichtJahr.Down:= false;
  btn_AnsichtZeitleiste.Down:= false;
  btn_AnsichtGantt.Down:= false;
  btn_AnsichtAgenda.Down:= false;
//  dxRibbonTabHome.Groups[1].Visible:= true;
end;
procedure Tfrm_Calendar.btn_AnsichtJahrClick(Sender: TObject);
begin
  sched_Kalender.ViewYear.Active := True;
  btn_NavigationZurueck.Caption := 'Jahr zurück';
  btn_NavigationVor.Caption := 'Jahr vor';
  btn_NavigationZurueck.Hint := rs_PCMManager_JahrZurueck;
  btn_NavigationVor.Hint := rs_PCMManager_JahrVor;
  btn_AnsichtTag.Down:= false;
  btn_AnsichtArbeitswoche.Down:= false;
  btn_AnsichtWoche.Down:= false;
  btn_AnsichtMonat.Down:= false;
  btn_AnsichtJahr.Down:= true;
  btn_AnsichtZeitleiste.Down:= false;
  btn_AnsichtGantt.Down:= false;
  btn_AnsichtAgenda.Down:= false;
//  dxRibbonTabHome.Groups[1].Visible:= true;
end;
procedure Tfrm_Calendar.btn_AnsichtZeitleisteClick(Sender: TObject);
begin
  sched_Kalender.ViewTimeGrid.Active := True;
  btn_NavigationZurueck.Caption := 'Tag zurück';
  btn_NavigationVor.Caption := 'Tag vor';
  btn_NavigationZurueck.Hint := rs_PCMManager_TagZurueck;
  btn_NavigationVor.Hint := rs_PCMManager_TagVor;
  btn_AnsichtTag.Down:= false;
  btn_AnsichtArbeitswoche.Down:= false;
  btn_AnsichtWoche.Down:= false;
  btn_AnsichtMonat.Down:= false;
  btn_AnsichtJahr.Down:= false;
  btn_AnsichtZeitleiste.Down:= true;
  btn_AnsichtGantt.Down:= false;
  btn_AnsichtAgenda.Down:= false;
//  dxRibbonTabHome.Groups[1].Visible:= true;
end;
procedure Tfrm_Calendar.btn_AnsichtGanttClick(Sender: TObject);
begin
  sched_Kalender.ViewTimeGrid.Active:= true;
  btn_NavigationZurueck.Caption := 'Tag zurück';
  btn_NavigationVor.Caption := 'Tag vor';
  btn_NavigationZurueck.Hint := rs_PCMManager_TagZurueck;
  btn_NavigationVor.Hint := rs_PCMManager_TagVor;
  btn_AnsichtTag.Down:= false;
  btn_AnsichtArbeitswoche.Down:= false;
  btn_AnsichtWoche.Down:= false;
  btn_AnsichtMonat.Down:= false;
  btn_AnsichtJahr.Down:= false;
  btn_AnsichtZeitleiste.Down:= false;
  btn_AnsichtGantt.Down:= true;
  btn_AnsichtAgenda.Down:= false;
//  dxRibbonTabHome.Groups[1].Visible:= true;
end;
procedure Tfrm_Calendar.btn_AnsichtAgendaClick(Sender: TObject);
begin
  sched_Kalender.ViewAgenda.Active := True;
  btn_NavigationZurueck.Caption := 'Tag zurück';
  btn_NavigationVor.Caption := 'Tag vor';
  btn_NavigationZurueck.Hint := rs_PCMManager_TagZurueck;
  btn_NavigationVor.Hint := rs_PCMManager_TagVor;
  btn_AnsichtTag.Down:= false;
  btn_AnsichtArbeitswoche.Down:= false;
  btn_AnsichtWoche.Down:= false;
  btn_AnsichtMonat.Down:= false;
  btn_AnsichtJahr.Down:= false;
  btn_AnsichtZeitleiste.Down:= false;
  btn_AnsichtGantt.Down:= false;
  btn_AnsichtAgenda.Down:= true;
  //  dxRibbonTabHome.Groups[1].Visible:= false;
end;
procedure Tfrm_Calendar.btn_AnsichtMaxMinClick(Sender: TObject);
begin
  if bol_VollBildCal = false then
  begin
    bol_VollBildCal:= true;
    frm_PCM_main.navbr_main.Width:= 0;
    frm_PCM_main.pc_main.properties.HideTabs:= true;
    btn_AnsichtMaxMin.Caption:= rs_PCMManager_normAnsicht;
    btn_AnsichtMaxMin.LargeImageIndex:= 31;
  end
  else begin
    bol_VollBildCal:= false;
    frm_PCM_main.navbr_main.Width:= 200;
    frm_PCM_main.pc_main.properties.HideTabs:= false;
    btn_AnsichtMaxMin.Caption:= rs_PCMManager_maxAnsicht;
    btn_AnsichtMaxMin.LargeImageIndex:= 32;
  end;
end;
procedure Tfrm_Calendar.btn_NavigationZurueckClick(Sender: TObject);
begin
  // Tag
  if btn_AnsichtTag.down then
   sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -1), IncDay(sched_Kalender.DateNavigator.Date, -1), True);
  // Arbeitswoche
  if btn_AnsichtArbeitswoche.down then
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -7), IncDay(sched_Kalender.DateNavigator.Date, -3), True);
  // Woche
  if btn_AnsichtWoche.down then
  begin
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -7), IncDay(sched_Kalender.DateNavigator.Date, -1), True);
    sched_Kalender.ViewWeek.Active := True;
  end;
  // Monat
  if btn_AnsichtMonat.down then
  begin
   sched_Kalender.GoToDate(IncDay(sched_Kalender.SelectedDays[0], -3), vmMonth);
  end;
  // jahr
  if btn_AnsichtJahr.down then
    sched_Kalender.SelectDays(IncYear(sched_Kalender.DateNavigator.Date, -1), IncYear(sched_Kalender.DateNavigator.Date, -1 ), True);
  // Zeitleiste
  if btn_AnsichtZeitleiste.down then
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -1), IncDay(sched_Kalender.DateNavigator.Date, -1), True);
  // Gantt
  if btn_AnsichtGantt.down then
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -1), IncDay(sched_Kalender.DateNavigator.Date, -1), True);
  // Agenda
  if btn_AnsichtAgenda.down then
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -1), IncDay(sched_Kalender.DateNavigator.Date, -1), True);
end;
procedure Tfrm_Calendar.btn_NavigationVorClick(Sender: TObject);
begin
  // Tag
  if btn_AnsichtTag.down then
    //sched_Kalender.DateNavigator.Date := IncDay(sched_Kalender.DateNavigator.Date);
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 1), IncDay(sched_Kalender.DateNavigator.Date, 1), True);
  // Arbeitswoche
  if btn_AnsichtArbeitswoche.down then
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 7), IncDay(sched_Kalender.DateNavigator.Date, 11), True);
  // Woche
  if btn_AnsichtWoche.down then
  begin
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 7), IncDay(sched_Kalender.DateNavigator.Date, 13), True);
    sched_Kalender.ViewWeek.Active := True;
  end;
  // Monat
  if btn_AnsichtMonat.down then
  begin
   sched_Kalender.GoToDate(IncDay(sched_Kalender.SelectedDays[sched_Kalender.SelectedDays.Count-1], 3), vmMonth);
  end;
  // Jahr
  if btn_AnsichtJahr.down then
    sched_Kalender.SelectDays(IncYear(sched_Kalender.DateNavigator.Date, 1), IncYear(sched_Kalender.DateNavigator.Date, 1), True);
  // Zeitleiste
  if btn_AnsichtZeitleiste.down then
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 1), IncDay(sched_Kalender.DateNavigator.Date, 1), True);
  // Gantt
  if btn_AnsichtGantt.down then
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 1), IncDay(sched_Kalender.DateNavigator.Date, 1), True);
  // Agenda
  if btn_AnsichtAgenda.down then
    sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 1), IncDay(sched_Kalender.DateNavigator.Date, 1), True);
end;
procedure Tfrm_Calendar.btn_FilterKalenderClick(Sender: TObject);
var
  sKalenderFilter: string;
begin
  if btn_FilterKalender.tag = 1 then
  begin
    btn_FilterKalender.tag:= 0;
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
      btn_FilterKalender.tag:= 0;
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
    end;
    btn_FilterKalender.tag:= 1;
  end;
end;
procedure Tfrm_Calendar.btn_FilterRefreshClick(Sender: TObject);
begin
  RefreshTerminundAUfgaben;
end;
procedure Tfrm_Calendar.btn_DruckeTagClick(Sender: TObject);
begin
  compPrint_Cal.PreviewOptions.Caption := rs_PCMManager_KalenderTag;
  compPrint_CalLink1.PrintStyles.Daily.Active := True;
  compPrint_CalLink1.Preview(True);
end;
procedure Tfrm_Calendar.btn_DruckeWocheClick(Sender: TObject);
begin
  compPrint_Cal.PreviewOptions.Caption := rs_PCMManager_KalenderWoche;
  compPrint_CalLink1.PrintStyles. Weekly.Active := True;
  compPrint_CalLink1.Preview(True);
end;
procedure Tfrm_Calendar.btn_DruckeMonatClick(Sender: TObject);
begin
  compPrint_Cal.PreviewOptions.Caption := rs_PCMManager_KalenderMonat;
  compPrint_CalLink1.PrintStyles.Monthly.Active := True;
  compPrint_CalLink1.Preview(True);
end;
procedure Tfrm_Calendar.btn_DruckeJahrClick(Sender: TObject);
begin
  compPrint_Cal.PreviewOptions.Caption := rs_PCMManager_Kalenderjahr;
  compPrint_CalLink1.PrintStyles.Yearly.Active := True;
  compPrint_CalLink1.Preview(True);
end;
procedure Tfrm_Calendar.btn_DruckeAgendaClick(Sender: TObject);
begin
  compPrint_Cal.PreviewOptions.Caption := rs_PCMManager_Kalenderagenda;
  compPrint_CalLink1.PrintStyles.Agenda.Active := True;
  compPrint_CalLink1.Preview(True);
end;
procedure Tfrm_Calendar.btn_ImportExportImporttoICALClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Import,frm_PCM_Import);
  if frm_PCM_Import.Execute(True,dm_PCM.iIDBenutzerPCM) then
    RefreshTerminundAUfgaben;
  frm_PCM_Import.Free;
end;
procedure Tfrm_Calendar.btn_ImportExportExporttoICALClick(Sender: TObject);
begin
  ReadICSAutomatic;
  Application.ProcessMessages;
  WriteICSAutomatic;
end;
procedure Tfrm_Calendar.btn_ImportExportImporttoOutlookClick(Sender: TObject);
  function GetRecurrenceInfoOutlook(AArt,AInterval,ADayOfWeeks,AAnzahlWiederholung:integer;AWiederholungStart,AWiederholungEnde,AInstanz:string): string;
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
  procedure GetOutlookEvents(AUser: string);
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
    Writelog(PCM_Logname, rs_PCMManager_Kontakte + rs_PCMManager_ContactsRootErmitteln + Auser, 0);
    try
      objOwner := olvarNameSpace.CreateRecipient(AUser);
      olvarTermine := olvarNameSpace.GetSharedDefaultFolder(objOwner,olFolderCalendars);
      ShowWaitForm(TForm(Self), PWideChar(rs_PCMManager_TermineImportieren), olvarTermine.items.count, 417, 65);
      for i := 1 to olvarTermine.items.count do
      begin
        Termin:= olvarTermine.items.item[i];
        SUMMARY:=  Termin.Subject;
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
        Writelog(PCM_Logname, rs_PCMManager_TerminenichtErmitteln + e.Message, 2);
        exit;
      end;
    end;
    CloseWaitForm;
    Outlook.Disconnect;
  end;
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
procedure Tfrm_Calendar.btn_ImportExportExporttoOutlookClick(Sender: TObject);
  procedure AddOutlookEvents(AuserPriv,AuserGes: String);
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
    Writelog(PCM_Logname, rs_PCMManager_Terminealle + rs_PCMManager_OutlookVerbinden, 0);
    try
      Outlook.connect;
    except
      on e: System.sysutils.Exception do
      begin
        Writelog(PCM_Logname,rs_PCMManager_Terminealle + rs_PCMManager_KeineVerbindung + e.Message, 2);
        exit;
      end;
    end;
    Writelog(PCM_Logname, rs_PCMManager_Terminealle +rs_PCMManager_Namespace, 0);
    try
      NameSpace := Outlook.GetNameSpace('MAPI');
    except
      on e: System.sysutils.Exception do
      begin
        Writelog(PCM_Logname, rs_PCMManager_Terminealle + rs_PCMManager_NamespaceErmitteln + e.Message, 2);
        exit;
      end;
    end;
    Writelog(PCM_Logname, rs_PCMManager_Terminealle + rs_PCMManager_CalendarsRoot + AuserPriv, 0);
    try
      objOwner := NameSpace.CreateRecipient(AuserPriv);
      CalendarsRoot := NameSpace.GetSharedDefaultFolder(objOwner,olFolderCalendars);
    except
      on e: System.sysutils.Exception do
      begin
        Writelog(PCM_Logname,rs_PCMManager_Terminealle + rs_PCMManager_CalendarsRootErmitteln +  e.Message, 2);
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
    ShowWaitForm(TForm(Self), PWideChar(rs_PCMManager_TermineLoeschen), CalendarsFolder.Items.Count, 417, 65);
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
    ShowWaitForm(TForm(Self), PWideChar(rs_PCMManager_TermineImportieren), dm_PCM.qry_Work.RecordCount, 417, 65);
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
procedure Tfrm_Calendar.btn_TerminNeuClick(Sender: TObject);
var
  iNewId: integer;
begin
  Application.CreateForm(Tfrm_Calendar_new, frm_Calendar_new);
  frm_Calendar_new.Execute(false,iLabelColor,iFontColor,'im Büro','manuell',schedDBStrg_Kalender,2, 0, 0, '','',0,sched_Kalender.SelStart,sched_Kalender.SelFinish,0,false,0,0,0,0,0,0,false,false,15,false,0,0,nil,'','',iNewId);
  frm_Calendar_new := nil;
  RefreshTerminundAUfgaben;
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
// Scheduler
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
procedure Tfrm_Calendar.sched_KalenderGetEventModernStyleHintInfo(Sender: TObject; AEvent: TcxSchedulerControlEvent; AInfo: TcxSchedulerEventModernStyleHintInfo);
begin
  dm_PCM.qry_work.SQL.Text:= 'SELECT * FROM manager_kalender where ID = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= AEvent.ID;
  dm_PCM.qry_work.OPen;
  AInfo.ShowReminder:= true;
  AInfo.Location:= dm_PCM.qry_work.FieldByName('Location').AsString;
  dm_PCM.qry_work.Close;
end;
procedure Tfrm_Calendar.sched_KalenderKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
  function copyEvent : boolean;
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
  procedure pasteEvent(iEventId : integer);
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
        dm_PCM.qry_work.FieldValues['Typ'] := 2;
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
procedure Tfrm_Calendar.pmmbtn_CalNewClick(Sender: TObject);
var
  iNewId : Integer;
begin
  Application.CreateForm(Tfrm_Calendar_new, frm_Calendar_new);
  frm_Calendar_new.Execute(false,iLabelColor,iFontColor,'im Büro','manuell',schedDBStrg_Kalender,2, 0, 0, '','',0,StrToDateTime(DateToStr(StrToDate(Copy(DateToStr(Date()),1,10))) + ' ' + '08:30:00'),StrToDateTime(DateToStr(StrToDate(Copy(DateToStr(Date()),1,10))) + ' ' + '08:30:00'),0,false,0,0,0,0,0,0,false,false,15,false,0,0,nil,'','',iNewId);
  frm_Calendar_new := nil;
  RefreshTerminundAUfgaben;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Formfunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure Tfrm_Calendar.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Calendar.FormShow(Sender: TObject);
  procedure InitializeRights;
  begin
    btn_TerminNew.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_TerminNeu.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_Terminchange.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_TerminDelete.Enabled:= dm_PCM.iKalender > SetReadWrite;
    pmmbtn_CalNew.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_ImportExportImporttoICAL.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_ImportExportExporttoICAL.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_ImportExportImporttoOutlook.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_ImportExportExporttoOutlook.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_TerminNeu.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_Terminchange.Enabled:= dm_PCM.iKalender >= SetReadWrite;
    btn_TerminDelete.Enabled:= dm_PCM.iKalender > SetReadWrite;
  end;
  procedure OpenData;
  //var I:integer;
  begin
    dm_PCM.qry_Kalender_Benutzer.Open;
  //  qry_BenutzerRes.Open;
    dm_PCM.qry_Kalender_Kalender.Open;
    dm_PCM.qry_KalenderAufgaben_Arten.open;
    dm_PCM.qry_KalenderAufgaben_Prio.Open;
    dm_PCM.qry_Kalender_Ansprechpartner.Open;
    dm_PCM.qry_Config_Firmen.Open;
    dm_PCM.qry_Kalender_Aufgaben.open;
    dm_PCM.qry_Kalender_Aufgaben.Filter:= 'bearbeitetam = null and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_Kalender_Aufgaben.Filtered:= true;
    RefreshTerminundAUfgaben;
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
                        'ReminderMinutesBeforeStart,LabelColor,FontColor,Privat,ID_Benutzer,ID_kontakte From manager_Kalender ' +
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
  btn_AnsichtArbeitswocheClick(Self);
  btn_AnsichtArbeitswoche.down:= true;
  btn_AnsichtTag.down:= false;
  btn_AnsichtWoche.down:= false;
  btn_AnsichtMonat.down:= false;
  btn_AnsichtJahr.down:= false;
  btn_AnsichtZeitleiste.down:= false;
  btn_AnsichtGantt.down:= false;
  schedDBStrg_Kalender.Reminders.Active:= true;
  dm_PCM.qry_work.SQL.Text:= 'Select ID, Kalender,Link,Benutzer,Passwort, Erinnerung, ErinnerungVor,LabelColor,Fontcolor,ID_Benutzer ' +
                             'From manager_kalender_konfiguration Where ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_work.open;
  while not dm_PCM.qry_work.Eof do
  begin
    iFontColor:=dm_PCM.qry_work.FieldByName('Fontcolor').AsInteger;
    iLabelColor:=dm_PCM.qry_work.FieldByName('LabelColor').AsInteger;
    dm_PCM.qry_work.Next;
  end;
  dm_PCM.qry_work.Close;
end;
{$EndRegion}
end.
