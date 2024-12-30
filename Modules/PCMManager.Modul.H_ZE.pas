unit PCMManager.Modul.H_ZE;

interface

uses
  {$Region Uses}
  cxBarEditItem,
  cxButtons,
  cxCalendar,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDateUtils,
  cxDBData,
  cxDBEdit,
  cxDBLookupComboBox,
  cxDBLookupEdit,
  cxDrawTextUtils,
  cxDropDownEdit,
  cxEdit,
  cxExtEditRepositoryItems,
  cxFilter,
  cxGraphics,
  cxGrid,
  cxGridCustomTableView,
  cxGridCustomView,
  cxGridDBTableView,
  cxGridLevel,
  cxGridTableView,
  cxGroupBox,
  cxImageComboBox,
  cxImageList,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxLookupEdit,
  cxMaskEdit,
  cxNavigator,
  cxPC,
  cxScheduler,
  cxSchedulerAgendaView,
  cxSchedulerCustomControls,
  cxSchedulerCustomResourceView,
  cxSchedulerDateNavigator,
  cxSchedulerDayView,
  cxSchedulerDBStorage,
  cxSchedulerGanttView,
  cxSchedulerHolidays,
  cxSchedulerRecurrence,
  cxSchedulerRibbonStyleEventEditor,
  cxSchedulerStorage,
  cxSchedulerTimeGridView,
  cxSchedulerTreeListBrowser,
  cxSchedulerUtils,
  cxSchedulerWeekView,
  cxSchedulerYearView,
  cxSpinEdit,
  cxStyles,
  cxTextEdit,
  cxTimeEdit,
  Data.DB,
  dxBar,
  dxBarBuiltInMenu,
  dxBarExtItems,
  dxBkgnd,
  dxCore,
  dxDateRanges,
  dxPrnDev,
  dxPrnPg,
  dxPSCompsProvider,
  dxPSCore,
  dxPScxCommon,
  dxPScxEditorProducers,
  dxPScxExtEditorProducers,
  dxPScxGridLayoutViewLnk,
  dxPScxGridLnk,
  dxPScxPageControlProducer,
  dxPScxSchedulerLnk,
  dxPSEdgePatterns,
  dxPSEngn,
  dxPSFillPatterns,
  dxPSGlbl,
  dxPSPDFExport,
  dxPSPDFExportCore,
  dxPSPrVwAdv,
  dxPSPrVwRibbon,
  dxPSPrVwStd,
  dxPSUtl,
  dxRibbon,
  dxRibbonCustomizationForm,
  dxRibbonSkins,
  dxScrollbarAnnotations,
  dxStatusBar,
  dxWrap,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.UI,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  System.Classes,
  system.DateUtils,
  System.ImageList,
  System.SysUtils,
  system.UITypes,
  System.Variants,
  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_ZE = class(TForm)
    brmgr_Main: TdxBarManager;
    tb_Ansicht: TdxBar;
    ribTab_1View: TdxRibbonTab;
    rib: TdxRibbon;
    tb_FilterMonatJahr: TdxBar;
    cbx_FilterMonth: TcxBarEditItem;
    cbx_FilterYear: TcxBarEditItem;
    tb_FilterVonBis: TdxBar;
    dedt_Von: TcxBarEditItem;
    dedt_Bis: TcxBarEditItem;
    btn_ViewCal: TdxBarLargeButton;
    btn_ViewGrid: TdxBarLargeButton;
    btn_FilterMonthYear: TdxBarLargeButton;
    btn_FilterFromTo: TdxBarLargeButton;
    imglst_32x32: TcxImageList;
    brstat_monat: TdxBarStatic;
    brstat_Jahr: TdxBarStatic;
    brstat_Von: TdxBarStatic;
    brstat_Bis: TdxBarStatic;
    tb_Edit: TdxBar;
    btn_DataNew: TdxBarLargeButton;
    schedDBStrg_Kalender: TcxSchedulerDBStorage;
    tb_kalender: TdxBar;
    btn_View: TdxBarLargeButton;
    btn_CalVor: TdxBarLargeButton;
    btn_CalZurueck: TdxBarLargeButton;
    ppm_Views: TdxBarPopupMenu;
    ppmbtn_ViewTag: TdxBarButton;
    ppmbtn_ViewArbeitswoche: TdxBarButton;
    ppmbtn_ViewWoche: TdxBarButton;
    ppmbtn_ViewMonat: TdxBarButton;
    ppmbtn_ViewJahr: TdxBarButton;
    ppmbtn_ViewAgenda: TdxBarButton;
    ppmbtn_ViewPlanung: TdxBarButton;
    ppmbtn_ViewGanzertag: TdxBarButton;
    qry_Buchungen: TFDQuery;
    ds_Buchungen: TDataSource;
    tb_Optionen: TdxBar;
    btn_user: TdxBarLargeButton;
    btn_Feiertage: TdxBarLargeButton;
    btn_DataNext: TdxBarLargeButton;
    btn_DataPrev: TdxBarLargeButton;
    tb_Drucken: TdxBar;
    btn_Printview: TdxBarLargeButton;
    tb_DruckeGrid: TdxBar;
    btn_print: TdxBarLargeButton;
    ribTab_2Edit: TdxRibbonTab;
    ribTab_3View: TdxRibbonTab;
    ribTab_4Print: TdxRibbonTab;
    ribTab_5Config: TdxRibbonTab;
    ds_Fehltag: TDataSource;
    qry_Fehltag: TFDQuery;
    pc_Ze: TcxPageControl;
    ts_Grid: TcxTabSheet;
    grd_Booking: TcxGrid;
    grdDBTblView_Booking: TcxGridDBTableView;
    grdDBTblViewCol_BookingID: TcxGridDBColumn;
    grdDBTblViewCol_BookingTag: TcxGridDBColumn;
    grdDBTblViewCol_BookingDatum: TcxGridDBColumn;
    grdDBTblViewCol_BookingKommen: TcxGridDBColumn;
    grdDBTblViewCol_BookingGehen: TcxGridDBColumn;
    grdDBTblViewCol_BookingPause1Beginn: TcxGridDBColumn;
    grdDBTblViewCol_BookingPause1Ende: TcxGridDBColumn;
    grdDBTblViewCol_BookingPause2Begin: TcxGridDBColumn;
    grdDBTblViewCol_BookingPause2Ende: TcxGridDBColumn;
    grdDBTblViewCol_BookingSollstunden: TcxGridDBColumn;
    grdDBTblViewCol_BookingMehrarbeit: TcxGridDBColumn;
    grdDBTblViewCol_BookingFeiertag: TcxGridDBColumn;
    grdDBTblViewCol_BookingFehltag: TcxGridDBColumn;
    grdLvl_Booking: TcxGridLevel;
    ts_Kalender: TcxTabSheet;
    sched_Kalender: TcxScheduler;
    tb_Monatswerte: TdxBar;
    btn_Calc: TdxBarLargeButton;
    btn_Monthview: TdxBarLargeButton;
    btn_Fehltage: TdxBarLargeButton;
    btn_Online: TdxBarLargeButton;
    ts_Online: TcxTabSheet;
    grpbx_Booking: TcxGroupBox;
    btn_BookingWorkBegin: TcxButton;
    btn_BookingWorkEnd: TcxButton;
    btn_BookingBreakEnd: TcxButton;
    btn_BookingBreakBegin: TcxButton;
    stbr_ZE: TdxStatusBar;
    Timer1: TTimer;
    tb_fehltage: TdxBar;
    btn_FehltagSet: TdxBarLargeButton;
    grdDBTblView_BookingBuchungsart: TcxGridDBColumn;
    cmbbx_Bookingtype: TcxComboBox;
    ppm_printScheduler: TdxBarPopupMenu;
    ppmbtn_PrintTagesansicht: TdxBarButton;
    ppmbtn_PrintWochenansicht: TdxBarButton;
    ppmbtn_PrintMonatsansicht: TdxBarButton;
    ppmbtn_PrintJahresansicht: TdxBarButton;
    ppmbtn_PrintAgenda: TdxBarButton;
    imglst_16x16: TcxImageList;
    comp_EditRepository: TcxEditRepository;
    riEvent: TcxEditRepositoryRichItem;
    comp_PrintCal: TdxComponentPrinter;
    comp_PrintCalLink1: TcxSchedulerReportLink;
    comp_PrintCalLink2: TdxGridReportLink;
    ppm_Calc: TdxBarPopupMenu;
    ppmbtn_CalcDay: TdxBarButton;
    ppmbtn_CalcMonth: TdxBarButton;
    ppmbtn_CalcYear: TdxBarButton;
    ppmbtn_CalcAll: TdxBarButton;
    ppm_Reports: TdxBarPopupMenu;
    ppmbtn_ReportMonth: TdxBarButton;
    ppmbtn_ReportYear: TdxBarButton;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_ViewCalClick(Sender: TObject);
    procedure btn_ViewGridClick(Sender: TObject);
    procedure sched_KalenderCustomDrawEvent(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo; var ADone: Boolean);
    procedure btn_CalZurueckClick(Sender: TObject);
    procedure ppmbtn_ViewTagClick(Sender: TObject);
    procedure ppmbtn_ViewArbeitswocheClick(Sender: TObject);
    procedure ppmbtn_ViewWocheClick(Sender: TObject);
    procedure ppmbtn_ViewMonatClick(Sender: TObject);
    procedure ppmbtn_ViewJahrClick(Sender: TObject);
    procedure ppmbtn_ViewAgendaClick(Sender: TObject);
    procedure ppmbtn_ViewPlanungClick(Sender: TObject);
    procedure ppmbtn_ViewGanzertagClick(Sender: TObject);
    procedure btn_CalVorClick(Sender: TObject);
    procedure btn_DataNewClick(Sender: TObject);
    procedure btn_DataPrevClick(Sender: TObject);
    procedure btn_DataNextClick(Sender: TObject);
    procedure btn_FilterMonthYearClick(Sender: TObject);
    procedure btn_FilterFromToClick(Sender: TObject);
    procedure btn_userClick(Sender: TObject);
    procedure btn_FeiertageClick(Sender: TObject);
    procedure grdDBTblView_BookingCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btn_OnlineClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btn_BookingWorkBeginClick(Sender: TObject);
    procedure btn_BookingWorkEndClick(Sender: TObject);
    procedure btn_BookingBreakBeginClick(Sender: TObject);
    procedure btn_BookingBreakEndClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btn_MonthviewClick(Sender: TObject);
    procedure btn_FehltagSetClick(Sender: TObject);
    procedure btn_printClick(Sender: TObject);
    procedure btn_FehltageClick(Sender: TObject);
    procedure sched_KalenderGetEventModernStyleHintInfo(Sender: TObject; AEvent: TcxSchedulerControlEvent; AInfo: TcxSchedulerEventModernStyleHintInfo);
    procedure ppmbtn_PrintTagesansichtClick(Sender: TObject);
    procedure ppmbtn_PrintWochenansichtClick(Sender: TObject);
    procedure ppmbtn_PrintMonatsansichtClick(Sender: TObject);
    procedure ppmbtn_PrintJahresansichtClick(Sender: TObject);
    procedure ppmbtn_PrintAgendaClick(Sender: TObject);
    procedure ppmbtn_CalcDayClick(Sender: TObject);
    procedure ppmbtn_CalcMonthClick(Sender: TObject);
    procedure ppmbtn_CalcYearClick(Sender: TObject);
    procedure ppmbtn_CalcAllClick(Sender: TObject);
    procedure ppmbtn_ReportMonthClick(Sender: TObject);
    procedure ppmbtn_ReportYearClick(Sender: TObject);
  private
    { Private-Deklarationen }
    defaultLabelColor: integer;
    defaultFontColor: integer;
    iView: Integer;
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  frm_ZE: Tfrm_ZE;

implementation

{$R *.dfm}

uses
  {$Region Uses}
  PCM.Browser.FullScreen,
  PCM.Calculate,
  PCM.Data,
  PCM.Functions.Synch.Wait,
  PCM.Main,
  PCMManager.Modul.G_Finanzen.Filter.Date,
  PCMManager.Modul.H_ZE.Booking,
  PCMManager.Modul.H_ZE.ChooseMonth,
  PCMManager.Modul.H_ZE.Fehltage,
  PCMManager.Modul.H_ZE.Fehltage.Edit,
  PCMManager.Modul.H_ZE.Feiertage,
  PCMManager.Modul.H_ZE.Monatswerte,
  PCM.Reports,
  PCM.Strings,
  PCMManager.Modul.C_Contacts;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Toolbar                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Toolbar}
// ZE - Ansicht
procedure Tfrm_ZE.btn_OnlineClick(Sender: TObject);
begin
  tb_FilterMonatJahr.Visible:= false;
  tb_FilterVonBis.Visible:= false;
  tb_Monatswerte.Visible:= true;
  ribTab_2Edit.Visible:=  false;
  ribTab_3View.Visible:= false;
  tb_Drucken.Visible:= false;
  tb_DruckeGrid.Visible:= true;
  tb_fehltage.Visible:= true;
  pc_Ze.ActivePage:= ts_Online;
end;
procedure Tfrm_ZE.btn_ViewGridClick(Sender: TObject);
begin
  tb_FilterMonatJahr.Visible:= true;
  tb_FilterVonBis.Visible:= true;
  tb_Monatswerte.Visible:= true;
  ribTab_3View.Visible:= false;
  ribTab_2Edit.Visible:=  true;
  ribTab_4Print.Visible:= true;
  tb_Drucken.Visible:= false;
  tb_DruckeGrid.Visible:= true;
  tb_fehltage.Visible:= false;
  pc_Ze.ActivePage:= ts_Grid;
end;
procedure Tfrm_ZE.btn_ViewCalClick(Sender: TObject);
begin
  tb_FilterMonatJahr.Visible:= false;
  tb_FilterVonBis.Visible:= false;
  tb_Monatswerte.Visible:= true;
  ribTab_3View.Visible:= true;
  ribTab_2Edit.Visible:= false;
  ribTab_4Print.Visible:= true;
  rib.ActiveTab:= ribTab_3View;
  tb_Drucken.Visible:= true;
  tb_DruckeGrid.Visible:= false;
  tb_fehltage.Visible:= false;
  pc_Ze.ActivePage:= ts_Kalender;
end;
// ZE - Filter Monat
procedure Tfrm_ZE.btn_FilterMonthYearClick(Sender: TObject);
var
  dVon,dBis:  TDate;
begin
  dVon:= StartOfAMonth(StrToInt(cbx_FilterYear.EditValue),cbx_FilterMonth.itemindex+1);
  dBis:= EndOfAMonth(StrToInt(cbx_FilterYear.EditValue),cbx_FilterMonth.itemindex+1);
  qry_Buchungen.SQL.Text:= 'Select * From manager_buchungen Where Datum between :Von and :Bis';
  qry_Buchungen.ParamByName('Von').AsDate:= dvon;
  qry_Buchungen.ParamByName('Bis').AsDate:= dbis;
  qry_Buchungen.open;
end;
// ZE - Filter Von Bis
procedure Tfrm_ZE.btn_FilterFromToClick(Sender: TObject);
var
  dVon,dBis:  TDate;
begin
  dVon:= StrToDate(dedt_von.EditValue);
  dBis:= StrToDate(dedt_bis.EditValue);
  qry_Buchungen.SQL.Text:= 'Select * From manager_buchungen Where Datum between :Von and :Bis';
  qry_Buchungen.ParamByName('Von').AsDate:= dvon;
  qry_Buchungen.ParamByName('Bis').AsDate:= dbis;
  qry_Buchungen.open;
end;
// ZE - Monatswerte
procedure Tfrm_ZE.btn_MonthviewClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_monatswerte,frm_monatswerte);
  frm_monatswerte.ShowModal;
end;
// ZE - Fehltage
procedure Tfrm_ZE.btn_FehltagSetClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Fehltageeintragen,frm_Fehltageeintragen);
  frm_Fehltageeintragen.ShowModal;
end;
// Edit
procedure Tfrm_ZE.btn_DataNewClick(Sender: TObject);
var
  iMonat,iJahr: integer;
  wJahr,wMonat,wTag: word;
  iHour,iMinutes,iSec,iMSec:word;
  iBjahr, iBMonat, iBTag: word;
  iAnzahl: integer;
  iDoW: Integer;
  sDayname: string;
  tSollstunden: TTime;
  dBDate: TDate;
begin
  grdDBTblView_Booking.DataController.DataSource:= nil;
  Application.CreateForm(Tfrm_ChooseDate,frm_ChooseDate);
  frm_ChooseDate.Execute(True,iMonat,iJahr);
  dm_PCM.qry_Work.SQL.Text:= 'SELECT COUNT(*) as Anzahl From manager_feiertage Where Jahr = :Jahr';
  dm_PCM.qry_Work.ParamByName('jahr').asInteger:= iJahr;
  dm_PCM.qry_Work.open;
  iAnzahl:=dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
  dm_PCM.qry_Work.Close;
  if iAnzahl = 0  then
  begin
    MessageDlg('Bitte erst Feiertage für das Jahr ' + IntToStr(iJahr) + ' eintragen ',mtwarning,[mbok],0);
    exit;
  end;
  tSollstunden:= GetPersonalSollStunden;
  DecodeTime(tSollstunden,iHour,iMinutes,iSec,iMSec);

  if iMonat = 13 then
    wTag:= DaysInAYear(iJahr)
  else
    DecodeDate(EndOfAMonth(iJahr,iMonat),wJahr,wMonat,wTag);
  ShowWaitForm(TForm(Self), PWideChar('Daten werden erstellt'),wTag ,417, 65);
  dm_PCM.qry_Work.Prepare;
  for var i := 0 to wTag -1 do
  begin
    dm_PCM.qry_Work.SQL.Text:= 'Insert into manager_buchungen ' +
                               '(Datum, Tag, Kommen, Gehen,Pause1Beginn,Pause1Ende,Pause2Beginn,Pause2Ende,Sollstunden,SollstundenI,Arbeitszeit,ArbeitszeitI,Feiertag,Fehltag,Mehrarbeit,MehrarbeitI,PausenI,FeiertagI,Buchungsart) ' +
                               'Values ' +
                               '(:Datum, :Tag, :Kommen, :Gehen, :Pause1Beginn, :Pause1Ende, :Pause2Beginn, :Pause2Ende, :Sollstunden, :SollstundenI, :Arbeitszeit, :ArbeitszeitI, :Feiertag, :Fehltag,:Mehrarbeit,:MehrarbeitI,0,0,-1)';
    if iMonat = 13 then
    begin
      dBDate:= IncDay(EncodeDate(iJahr,1,1),i);
    end
    else begin
      dBDate:= IncDay(EncodeDate(iJahr,iMonat,1),i);
    end;
    dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dBDate;
    DecodeDate(dBDate,iBjahr, iBMonat, iBTag);
    dm_PCM.qry_Work1.SQL.Text:= 'SELECT COUNT(*) as Kat From manager_feiertage Where Jahr = :Jahr AND Monat = :Monat AND Tag = :Tag';
    dm_PCM.qry_Work1.ParamByName('jahr').asInteger:= iBjahr;
    dm_PCM.qry_Work1.ParamByName('monat').asInteger:= iBMonat;
    dm_PCM.qry_Work1.ParamByName('Tag').asInteger:= iBTag;
    dm_PCM.qry_Work1.Prepare;
    dm_PCM.qry_Work1.open;
    iAnzahl:=dm_PCM.qry_Work1.FieldByName('Kat').AsInteger;
    dm_PCM.qry_Work1.Close;
    dm_PCM.qry_Work1.UnPrepare;
    if iAnzahl = 0  then
    begin
      dm_PCM.qry_Work.ParamByName('Feiertag').AsInteger:= 0;
    end
    else begin
      dm_PCM.qry_Work1.SQL.Text:= 'SELECT Kategorie From manager_feiertage Where Jahr = :Jahr AND Monat = :Monat AND Tag = :Tag';
      dm_PCM.qry_Work1.ParamByName('jahr').asInteger:= iBJahr;
      dm_PCM.qry_Work1.ParamByName('monat').asInteger:= iBMonat;
      dm_PCM.qry_Work1.ParamByName('Tag').asInteger:= iBTag;
      dm_PCM.qry_Work1.Prepare;
      dm_PCM.qry_Work1.open;
      iAnzahl:=dm_PCM.qry_Work1.FieldByName('Kategorie').AsInteger;
      dm_PCM.qry_Work1.Close;
      dm_PCM.qry_Work1.UnPrepare;
      dm_PCM.qry_Work.ParamByName('Feiertag').AsInteger:= iAnzahl;
    end;
    iDoW:= DayOfTheWeek(dBDate);
    WaitFormStep;
    Case iDoW of
    1:
      begin
        sDayName:= 'Mo.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= tSollstunden;
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= iHour * 60 + iMinutes;
      end;
    2:
      begin
        sDayName:= 'Di.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= tSollstunden;
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= iHour * 60 + iMinutes;
      end;
    3:
      begin
        sDayName:= 'Mi.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= tSollstunden;
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= iHour * 60 + iMinutes;
      end;
    4:
      begin
        sDayName:= 'Do.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= tSollstunden;
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= iHour * 60 + iMinutes;
      end;
    5:
      begin
        sDayName:= 'Fr.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= tSollstunden;
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= iHour * 60 + iMinutes;
      end;
    6:
      begin
        sDayName:= 'Sa.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= StrToTime('00:00');
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= 0;
      end;
    7:
      begin
        sDayName:= 'So.';
        dm_PCM.qry_Work.ParamByName('Sollstunden').AsDateTime:= StrToTime('00:00');
        dm_PCM.qry_Work.ParamByName('SollstundenI').asInteger:= 0;
      end;
    End;
    dm_PCM.qry_Work.ParamByName('Tag').AsString:= sDayname;
    dm_PCM.qry_Work.ParamByName('Kommen').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Gehen').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Pause1Beginn').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Pause1Ende').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Pause2Beginn').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Pause2Ende').AsDateTime:= StrToTime('00:00');
    dm_PCM.qry_Work.ParamByName('Arbeitszeit').AsString := '00:00';
    dm_PCM.qry_Work.ParamByName('ArbeitszeitI').AsInteger := 0;
    dm_PCM.qry_Work.ParamByName('Mehrarbeit').AsString := '00:00';
    dm_PCM.qry_Work.ParamByName('MehrarbeitI').AsInteger := 0;
    dm_PCM.qry_Work.ParamByName('Fehltag').AsString := ' ';


    dm_PCM.qry_Work2.sql.Text:= 'Select Count(*) as Anzahl From manager_buchungen Where Datum = :Datum';
    dm_PCM.qry_Work2.ParamByName('Datum').AsDate:= dBDate;
    dm_PCM.qry_Work2.Prepare;
    dm_PCM.qry_Work2.open;
    iAnzahl:= dm_PCM.qry_Work2.FieldByName('Anzahl').AsInteger;
    dm_PCM.qry_Work2.Close;
    dm_PCM.qry_Work2.UnPrepare;

    if iAnzahl = 0  then
    begin
      dm_PCM.qry_Work.Unprepare;
      dm_PCM.qry_Work.ExecSQL;
      dm_PCM.qry_Work.Unprepare
    end;
    qry_Buchungen.SQL.Text:= 'Select * From manager_buchungen Where Datum between :Von and :Bis';
    if iMonat = 13 then
    begin
      qry_Buchungen.ParamByName('Von').AsDate:= StartOfAMonth(iJahr,1);
      qry_Buchungen.ParamByName('Bis').AsDate:= EndOfAMonth(iJahr,12);
    end
    else begin
      qry_Buchungen.ParamByName('Von').AsDate:= StartOfAMonth(iJahr,iMonat);
      qry_Buchungen.ParamByName('Bis').AsDate:= EndOfAMonth(iJahr,iMonat);
    end;
    qry_Buchungen.open;
  end;
  CloseWaitForm;
  dm_PCM.qry_Work.UnPrepare;
  grdDBTblView_Booking.DataController.DataSource:= ds_Buchungen;
end;
procedure Tfrm_ZE.btn_DataPrevClick(Sender: TObject);
begin
  qry_Buchungen.Prior;
end;
procedure Tfrm_ZE.btn_DataNextClick(Sender: TObject);
begin
  qry_Buchungen.Next;
end;
// View - Popup
procedure Tfrm_ZE.ppmbtn_ViewTagClick(Sender: TObject);
begin
  iView:= 1;
  sched_Kalender.ViewDay.Active := True;
  sched_Kalender.SelectDays(sched_Kalender.SelectedDays[0], sched_Kalender.SelectedDays[0], True);
  btn_CalZurueck.Hint := rs_PCMManager_TagZurueck;
  btn_CalVor.Hint := rs_PCMManager_Tagvor;
end;
procedure Tfrm_ZE.ppmbtn_ViewArbeitswocheClick(Sender: TObject);
var
  iTag: integer;
begin
  iView:= 2;
  iTag := Round(sched_Kalender.SelectedDays.Count / 2);
  sched_Kalender.SelectWorkDays(sched_Kalender.SelectedDays[iTag]);
  btn_CalZurueck.Hint := rs_PCMManager_ArbWocheZurueck;
  btn_CalVor.Hint := rs_PCMManager_ArbWocheVor;
end;
procedure Tfrm_ZE.ppmbtn_ViewWocheClick(Sender: TObject);
begin
  iView:= 3;
  sched_Kalender.ViewWeek.Active := True;
  btn_CalZurueck.Hint := rs_PCMManager_WocheZurueck;
  btn_CalVor.Hint := rs_PCMManager_Wochevor;
end;
procedure Tfrm_ZE.ppmbtn_ViewMonatClick(Sender: TObject);
begin
  iView:= 4;
  sched_Kalender.GoToDate(sched_Kalender.SelectedDays[0], vmMonth);
  btn_CalZurueck.Hint := rs_PCMManager_MonatZurueck;
  btn_CalVor.Hint := rs_PCMManager_Monatvor;
end;
procedure Tfrm_ZE.ppmbtn_ViewJahrClick(Sender: TObject);
begin
  iView:= 5;
  sched_Kalender.ViewYear.Active := True;
  btn_CalZurueck.Hint := rs_PCMManager_JahrZurueck;
  btn_CalVor.Hint := rs_PCMManager_JahrVor;
end;
procedure Tfrm_ZE.ppmbtn_ViewAgendaClick(Sender: TObject);
begin
  iView:= 6;
  sched_Kalender.ViewAgenda.Active := True;
end;
procedure Tfrm_ZE.ppmbtn_ViewPlanungClick(Sender: TObject);
begin
  iView:= 7;
  sched_Kalender.ViewTimegrid.Active := True;
  btn_CalZurueck.Hint := rs_PCMManager_JahrZurueck;
  btn_CalVor.Hint := rs_PCMManager_JahrVor;
end;
procedure Tfrm_ZE.ppmbtn_ViewGanzertagClick(Sender: TObject);
begin
  iView:= 1;
  if ppmbtn_ViewGanzertag.Tag = 0  then
  begin
    ppmbtn_ViewGanzertag.Tag:= 1;
    sched_Kalender.ViewDay.WorkTimeOnly := true
  end
  else begin
    ppmbtn_ViewGanzertag.Tag:= 0;
    sched_Kalender.ViewDay.WorkTimeOnly := false;
  end;
end;
// View
procedure Tfrm_ZE.btn_CalZurueckClick(Sender: TObject);
begin
  case iView of
  1,6,7: sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -1), IncDay(sched_Kalender.DateNavigator.Date, -1), True); // Tag
  2: sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -7), IncDay(sched_Kalender.DateNavigator.Date, -3), True); // Arbeitswoche
  3:
    begin
      sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, -7), IncDay(sched_Kalender.DateNavigator.Date, -1), True);
      sched_Kalender.ViewWeek.Active := True;
    end; // Woche
  4: sched_Kalender.GoToDate(IncDay(sched_Kalender.SelectedDays[0], -3), vmMonth); // Monat
  5: sched_Kalender.SelectDays(IncYear(sched_Kalender.DateNavigator.Date, -1), IncYear(sched_Kalender.DateNavigator.Date, -1 ), True); // Jahr
  end;

end;
procedure Tfrm_ZE.btn_CalVorClick(Sender: TObject);
begin
  case iView of
  1,6,7: sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 1), IncDay(sched_Kalender.DateNavigator.Date, 1), True); // Tag
  2: sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 7), IncDay(sched_Kalender.DateNavigator.Date, 11), True); // Arbeitswoche
  3:
    begin
      sched_Kalender.SelectDays(IncDay(sched_Kalender.DateNavigator.Date, 7), IncDay(sched_Kalender.DateNavigator.Date, 13), True);
      sched_Kalender.ViewWeek.Active := True;
      end; // Woche
  4: sched_Kalender.GoToDate(IncDay(sched_Kalender.SelectedDays[sched_Kalender.SelectedDays.Count-1], 3), vmMonth); // Monat
  5: sched_Kalender.SelectDays(IncYear(sched_Kalender.DateNavigator.Date, 1), IncYear(sched_Kalender.DateNavigator.Date, 1 ), True); // Jahr
  end;
end;
// Print
procedure Tfrm_ZE.btn_printClick(Sender: TObject);
begin
  Drucke_PCM_ZE_Monatsbericht(cbx_FilterMonth.itemindex+1,cbx_FilterYear.EditValue);
end;
procedure Tfrm_ZE.ppmbtn_PrintTagesansichtClick(Sender: TObject);
begin
  comp_PrintCal.PreviewOptions.Caption := rs_PCMManager_KalenderTag;
  comp_PrintCalLink1.PrintStyles.Daily.Active := True;
  comp_PrintCalLink1.Preview(True);
end;
procedure Tfrm_ZE.ppmbtn_PrintWochenansichtClick(Sender: TObject);
begin
  comp_PrintCal.PreviewOptions.Caption := rs_PCMManager_KalenderWoche;
  comp_PrintCalLink1.PrintStyles. Weekly.Active := True;
  comp_PrintCalLink1.Preview(True);
end;
procedure Tfrm_ZE.ppmbtn_PrintMonatsansichtClick(Sender: TObject);
begin
  comp_PrintCal.PreviewOptions.Caption := rs_PCMManager_KalenderMonat;
  comp_PrintCalLink1.PrintStyles.Monthly.Active := True;
  comp_PrintCalLink1.Preview(True);
end;
procedure Tfrm_ZE.ppmbtn_PrintJahresansichtClick(Sender: TObject);
begin
  comp_PrintCal.PreviewOptions.Caption := rs_PCMManager_Kalenderjahr;
  comp_PrintCalLink1.PrintStyles.Yearly.Active := True;
  comp_PrintCalLink1.Preview(True);
end;
procedure Tfrm_ZE.ppmbtn_PrintAgendaClick(Sender: TObject);
begin
  comp_PrintCal.PreviewOptions.Caption := rs_PCMManager_Kalenderagenda;
  comp_PrintCalLink1.PrintStyles.Agenda.Active := True;
  comp_PrintCalLink1.Preview(True);
end;
procedure Tfrm_ZE.ppmbtn_ReportMonthClick(Sender: TObject);
var
  iMonat, iJahr: integer;
begin
  Application.CreateForm(Tfrm_PCManagerChooseDate,frm_PCManagerChooseDate);
  frm_PCManagerChooseDate.Execute(True,iMonat,iJahr);
  Drucke_PCM_ZE_Monatsbericht(iMonat,IntToStr(iJahr));
end;
procedure Tfrm_ZE.ppmbtn_ReportYearClick(Sender: TObject);
var
  iJahr: integer;
begin
  Application.CreateForm(Tfrm_PCManagerChooseDate,frm_PCManagerChooseDate);
  frm_PCManagerChooseDate.Execute(True,True,iJahr);
  Drucke_PCM_ZE_Jahresbericht(IntToStr(iJahr));
end;
// Config
procedure Tfrm_ZE.btn_userClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Contact,frm_Contact);
  frm_Contact.ShowModal;
end;
procedure Tfrm_ZE.btn_FeiertageClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Feiertage,frm_Feiertage);
  frm_Feiertage.ShowModal;
end;
procedure Tfrm_ZE.btn_FehltageClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Fehltage,frm_Fehltage);
  frm_Fehltage.ShowModal;
end;
{$EndRegion Toolbar}
////////////////////////////////////////////////////////////////////////////////
// Tabfunction                                                                //
////////////////////////////////////////////////////////////////////////////////
{$Region Tabfunction}
// Tab Zeiterfassung Online
procedure Tfrm_ZE.ppmbtn_CalcAllClick(Sender: TObject);
begin
  BerechneMonate;
  qry_Buchungen.Refresh;
end;
procedure Tfrm_ZE.ppmbtn_CalcDayClick(Sender: TObject);
var
  wJahr,wMonat,wTag: word;
begin
  ShowWaitForm(TForm(frm_ZE), PWideChar('Berechne Tag'),1 ,417, 65);
  DecodeDate(Date,wJahr,wMonat,wTag);
  BerechneTage(wTag,wMonat,wJahr);
  BerechneMonat(wMonat,wJahr);
  qry_Buchungen.Refresh;
  CloseWaitForm;
end;
procedure Tfrm_ZE.ppmbtn_CalcMonthClick(Sender: TObject);
var
  wJahr,wMonat,wTag: word;
begin
  ShowWaitForm(TForm(frm_ZE), PWideChar('Berechne Monat'),1 ,417, 65);
  DecodeDate(Date,wJahr,wMonat,wTag);
  BerechneTage(0,wMonat,wJahr);
  BerechneMonat(wMonat,wJahr);
  qry_Buchungen.Refresh;
  CloseWaitForm;
end;
procedure Tfrm_ZE.ppmbtn_CalcYearClick(Sender: TObject);
var
  wJahr,wMonat,wTag: word;
begin
  ShowWaitForm(TForm(frm_ZE), PWideChar('Berechne Jahr'),1 ,417, 65);
  DecodeDate(Date,wJahr,wMonat,wTag);
  BerechneTage(0,0,wJahr);
  BerechneMonat(1,wJahr);
  BerechneMonat(2,wJahr);
  BerechneMonat(3,wJahr);
  BerechneMonat(4,wJahr);
  BerechneMonat(5,wJahr);
  BerechneMonat(6,wJahr);
  BerechneMonat(7,wJahr);
  BerechneMonat(8,wJahr);
  BerechneMonat(9,wJahr);
  BerechneMonat(10,wJahr);
  BerechneMonat(11,wJahr);
  BerechneMonat(12,wJahr);
  qry_Buchungen.Refresh;
  CloseWaitForm;
end;
procedure Tfrm_ZE.btn_BookingWorkBeginClick(Sender: TObject);
var
  sText: String;
  dDate: TDate;
  tTimes: TTime;
  dtNow: TDateTime;
  iStd,iMin,iSec,iMSec: word;
begin
  dtNow:= now;
  dDate:= dtNow;
  DecodeTime(dtNow,iStd,iMin,iSec,iMSec);
  tTimes:= EncodeTime(iStd,iMin,0,0);
  dm_PCM.qry_Work.SQL.Text:= 'Update manager_buchungen Set Kommen = :Kommen,Buchungsart = :BA Where Datum = :Datum';
  dm_PCM.qry_Work.ParamByName('Kommen').AsTime:= tTimes;
  dm_PCM.qry_Work.ParamByName('BA').asInteger:= cmbbx_Bookingtype.ItemIndex;
  dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
  dm_PCM.qry_Work.ExecSQL;
  sText:= 'Letzte Buchung: Kommen am ' + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
  dm_PCM.qry_Work.SQL.Text:= 'Update manager_message Set Text = :Text';
  dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
  dm_PCM.qry_Work.ExecSQL;
  stbr_ZE.Panels[1].Text:= sText;
  qry_Buchungen.Refresh;
end;
procedure Tfrm_ZE.btn_BookingBreakBeginClick(Sender: TObject);
var
  sText: String;
  dDate: TDate;
  tTimes: TTime;
  tp1,tp2: TTime;
  dtNow: TDateTime;
  iStd,iMin,iSec,iMSec: word;
begin
  dtNow:= now;
  dDate:= dtNow;
  DecodeTime(dtNow,iStd,iMin,iSec,iMSec);
  tTimes:= EncodeTime(iStd,iMin,0,0);
  dm_PCM.qry_Work.SQL.Text:= 'Select Pause1Beginn,Pause2Beginn From manager_buchungen Where Datum = :Datum';
  dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
  dm_PCM.qry_Work.open;
  tp1:= dm_PCM.qry_Work.FieldByName('Pause1Beginn').AsDateTime;
  tp2:= dm_PCM.qry_Work.FieldByName('Pause2Beginn').AsDateTime;
  dm_PCM.qry_Work.Close;

  if tp1 = StrToTime('00:00') then
  begin
    dm_PCM.qry_Work.SQL.Text:= 'Update manager_buchungen Set Pause1Beginn = :Pause1Beginn Where Datum = :Datum';
    dm_PCM.qry_Work.ParamByName('Pause1Beginn').AsTime:= tTimes;
    dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
    dm_PCM.qry_Work.ExecSQL;
    sText:= 'Letzte Buchung: 1. Pause Beginn am ' + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
    dm_PCM.qry_Work.SQL.Text:= 'Update manager_message Set Text = :Text';
    dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
    dm_PCM.qry_Work.ExecSQL;
    stbr_ZE.Panels[1].Text:= sText;
  end
  else begin
    if tp2 = StrToTime('00:00') then
    begin
      dm_PCM.qry_Work.SQL.Text:= 'Update manager_buchungen Set Pause2Beginn = :Pause2Beginn Where Datum = :Datum';
      dm_PCM.qry_Work.ParamByName('Pause2Beginn').AsTime:= tTimes;
      dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
      dm_PCM.qry_Work.ExecSQL;
      sText:= 'Letzte Buchung: 2. Pause Beginn am ' + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
      dm_PCM.qry_Work.SQL.Text:= 'Update manager_message Set Text = :Text';
      dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
      dm_PCM.qry_Work.ExecSQL;
      stbr_ZE.Panels[1].Text:= sText;
    end
  end;
  qry_Buchungen.Refresh;
end;
procedure Tfrm_ZE.btn_BookingBreakEndClick(Sender: TObject);
var
  sText: String;
  dDate: TDate;
  tTimes: TTime;
  tp1,tp2: TTime;
  dtNow: TDateTime;
  iStd,iMin,iSec,iMSec: word;
begin
  dtNow:= now;
  dDate:= dtNow;
  DecodeTime(dtNow,iStd,iMin,iSec,iMSec);
  tTimes:= EncodeTime(iStd,iMin,0,0);
  dm_PCM.qry_Work.SQL.Text:= 'Select Pause1Ende,Pause2Ende From manager_buchungen Where Datum = :Datum';
  dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
  dm_PCM.qry_Work.open;
  tp1:= dm_PCM.qry_Work.FieldByName('Pause1Ende').AsDateTime;
  tp2:= dm_PCM.qry_Work.FieldByName('Pause2Ende').AsDateTime;
  dm_PCM.qry_Work.Close;

  if tp1 = StrToTime('00:00') then
  begin
    dm_PCM.qry_Work.SQL.Text:= 'Update manager_buchungen Set Pause1ende = :Pause1ende Where Datum = :Datum';
    dm_PCM.qry_Work.ParamByName('Pause1ende').AsTime:= tTimes;
    dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
    dm_PCM.qry_Work.ExecSQL;
    sText:= 'Letzte Buchung: 1. Pause Ende am ' + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
    dm_PCM.qry_Work.SQL.Text:= 'Update manager_message Set Text = :Text';
    dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
    dm_PCM.qry_Work.ExecSQL;
    stbr_ZE.Panels[1].Text:= sText;
  end
  else begin
    if tp2 = StrToTime('00:00') then
    begin
      dm_PCM.qry_Work.SQL.Text:= 'Update manager_buchungen Set Pause2ende = :Pause2ende Where Datum = :Datum';
      dm_PCM.qry_Work.ParamByName('Pause2ende').AsTime:= tTimes;
      dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
      dm_PCM.qry_Work.ExecSQL;
      sText:= 'Letzte Buchung: 2. Pause Ende am ' + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
      dm_PCM.qry_Work.SQL.Text:= 'Update manager_message Set Text = :Text';
      dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
      dm_PCM.qry_Work.ExecSQL;
      stbr_ZE.Panels[1].Text:= sText;
    end
  end;
  qry_Buchungen.Refresh;
end;
procedure Tfrm_ZE.btn_BookingWorkEndClick(Sender: TObject);
var
  sText: String;
  dDate: TDate;
  tTimes: TTime;
  dtNow: TDateTime;
  iStd,iMin,iSec,iMSec: word;
  iJahr,iMonat,iTag: word;
begin
  dtNow:= now;
  dDate:= dtNow;
  DecodeDate(dDate,iJahr,iMonat,iTag);
  DecodeTime(dtNow,iStd,iMin,iSec,iMSec);
  tTimes:= EncodeTime(iStd,iMin,0,0);
  dm_PCM.qry_Work.SQL.Text:= 'Update manager_buchungen Set Gehen = :Gehen Where Datum = :Datum';
  dm_PCM.qry_Work.ParamByName('Gehen').AsTime:= tTimes;
  dm_PCM.qry_Work.ParamByName('Datum').AsDate:= dDate;
  dm_PCM.qry_Work.ExecSQL;
  sText:= 'Letzte Buchung: Gehen am ' + FormatDateTime('dd.MM.yyyy hh:mm',dtNow);
  dm_PCM.qry_Work.SQL.Text:= 'Update manager_message Set Text = :Text';
  dm_PCM.qry_Work.ParamByName('Text').AsString := sText;
  dm_PCM.qry_Work.ExecSQL;
  stbr_ZE.Panels[1].Text:= sText;
  BerechneTage(iTag,iMonat,iJahr);
  qry_Buchungen.Refresh;
end;
procedure Tfrm_ZE.grdDBTblView_BookingCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
var
  hittest : TcxCustomGridHitTest;
begin
  hittest := grdDBTblView_Booking.GetHitTest(grd_Booking.ScreenToClient(Mouse.CursorPos));
  if hittest.HitTestCode = htCell then
  begin
    if qry_Buchungen.FieldByName('ID').AsInteger > 0 then
    begin
      Application.CreateForm(Tfrm_Booking,frm_Booking);
      frm_Booking.Caption:= 'PCM - Manager: ' + qry_Buchungen.FieldByName('Datum').AsString + ' - ' + qry_Buchungen.FieldByName('Tag').AsString;
      frm_Booking.ShowModal;
    end;
  end;
end;
end;
procedure Tfrm_ZE.sched_KalenderCustomDrawEvent(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo; var ADone: Boolean);
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
procedure Tfrm_ZE.sched_KalenderGetEventModernStyleHintInfo(Sender: TObject; AEvent: TcxSchedulerControlEvent; AInfo: TcxSchedulerEventModernStyleHintInfo);
begin
  AInfo.ShowReminder:= false;
  AInfo.Location:=   AEvent.Message;
end;
procedure Tfrm_ZE.Timer1Timer(Sender: TObject);
var
  tKommen: TTime;
  tGehen: TTime;
  tPause1Beginn: TTime;
  tPause1ende: TTime;
  tPause2Beginn: TTime;
  tPause2ende: TTime;
begin
  dm_PCm.qry_Timer.ResourceOptions.SilentMode:=True;
  stbr_ZE.Panels[0].Text:= 'Aktuelles Datum / Uhrzeit: ' + FormatDateTime('dd.MM.yyyy hh:mm:ss',Now);
  dm_PCm.qry_Timer.SQL.Text:= 'Select Kommen, Gehen, Pause1Beginn,Pause1ende,Pause2Beginn,Pause2ende From manager_buchungen Where Datum = :Datum';
  dm_PCm.qry_Timer.ParamByName('Datum').AsDate:= Date;
  dm_PCm.qry_Timer.open;
  tKommen:= dm_PCm.qry_Timer.FieldByName('Kommen').AsDateTime;
  tGehen:=dm_PCm.qry_Timer.FieldByName('Gehen').AsDateTime;
  tPause1Beginn:=dm_PCm.qry_Timer.FieldByName('Pause1Beginn').AsDateTime;
  tPause1ende:=dm_PCm.qry_Timer.FieldByName('Pause1ende').AsDateTime;
  tPause2Beginn:=dm_PCm.qry_Timer.FieldByName('Pause2Beginn').AsDateTime;
  tPause2ende:=dm_PCm.qry_Timer.FieldByName('Pause2ende').AsDateTime;
  dm_PCm.qry_Timer.close;
  // Kommen
  if tKommen <> StrToTime('00:00') then
    btn_BookingWorkBegin.Enabled:= false
  else
    btn_BookingWorkBegin.Enabled:= true;
  // Gehen
  if (tGehen <> StrToTime('00:00')) or (btn_Bookingbreakend.Enabled) then
    btn_BookingWorkEnd.Enabled:= false
  else
    if (tKommen <> StrToTime('00:00')) then
      btn_BookingWorkEnd.Enabled:= true;




  if (tPause1Beginn <> StrToTime('00:00')) and (tPause2Beginn <> StrToTime('00:00'))then
  begin
    if tKommen <> StrToTime('00:00') then
      btn_BookingBreakBegin.Enabled:= false
  end
  else begin
    if (tPause1Beginn <> StrToTime('00:00')) and (tPause1Ende = StrToTime('00:00')) or (tPause2Beginn <> StrToTime('00:00')) and (tPause2Ende = StrToTime('00:00')) then
    begin
      btn_BookingBreakBegin.Enabled:= false;
    end
    else begin
      if (tKommen <> StrToTime('00:00')) and (tGehen = StrToTime('00:00')) then
        btn_BookingBreakBegin.Enabled:= true;
    end;
  end;

  if (tPause1ende <> StrToTime('00:00')) and (tPause2ende <> StrToTime('00:00'))then
  begin
    btn_BookingBreakend.Enabled:= false
  end
  else begin
    if (tPause1ende <> StrToTime('00:00')) and (tPause2Beginn = StrToTime('00:00'))then
    begin
      btn_BookingBreakend.Enabled:= false
    end
    else begin
      if ((tPause2Beginn <> StrToTime('00:00')) and (tPause2Ende = StrToTime('00:00'))) or ((tPause1Beginn <> StrToTime('00:00')) and (tPause1Ende = StrToTime('00:00'))) then
      begin
      if (tKommen <> StrToTime('00:00')) and (tGehen = StrToTime('00:00')) then
          btn_BookingBreakend.Enabled:= true;
      end;
    end;
  end;
  if not btn_BookingWorkEnd.Enabled then
  begin
    btn_BookingBreakBegin.Enabled:= false;
  end;
  dm_PCm.qry_Timer.ResourceOptions.SilentMode:=false;

end;
{$EndRegion Tabfunction}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_ZE.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_ZE.FormResize(Sender: TObject);
var
  iwidth: integer;
  iheight: integer;
begin
  iwidth:= Round((frm_PCM_Main.pc_main.Width - 70) / 2);
  iheight:= Round((frm_PCM_Main.pc_main.Height - 250) / 2);
  btn_BookingWorkBegin.Left:= 20;
  btn_BookingWorkBegin.Top:= 30;
  btn_BookingWorkBegin.Height:= iheight;
  btn_BookingWorkBegin.Width:= iwidth;
  btn_BookingWorkEnd.Left:= btn_BookingWorkBegin.Width + 40;
  btn_BookingWorkEnd.Top:= 30;
  btn_BookingWorkEnd.Height:= iheight;
  btn_BookingWorkEnd.Width:= iwidth;


  btn_BookingBreakBegin.Left:= 20;
  btn_BookingBreakBegin.Top:= btn_BookingWorkBegin.Height + 40;
  btn_BookingBreakBegin.Height:= iheight;
  btn_BookingBreakBegin.Width:= iwidth;
  btn_BookingBreakEnd.Left:= btn_BookingBreakBegin.Width + 40;
  btn_BookingBreakEnd.Top:= btn_BookingWorkBegin.Height + 40;
  btn_BookingBreakEnd.Height:= iheight;
  btn_BookingBreakEnd.Width:= iwidth;

end;
procedure Tfrm_ZE.FormShow(Sender: TObject);
var
  iJahr,iMonat,iTag: Word;
  sMonat: String;
  AProperties: TcxComboBoxProperties;
begin
  rib.ColorSchemeName:= dm_PCM.sDesign;
  rib.Refresh;
  dm_PCM.qry_Kalender_Benutzer.Filter:= 'ID = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  dm_PCM.qry_Kalender_Benutzer.Open;
  dm_PCM.qry_Kalender_Benutzer.Filtered:= True;
  dm_PCM.qry_Kalender_Kalender.Open;
  tb_FilterMonatJahr.Visible:= false;
  tb_FilterVonBis.Visible:= false;
  tb_Monatswerte.Visible:= true;
  ribTab_2Edit.Visible:=  false;
  ribTab_3View.Visible:= false;
//  ribTab_4Print.Visible:= false;
  tb_Drucken.Visible:= false;
  tb_fehltage.Visible:= true;
  pc_Ze.ActivePage:= ts_Online;
  iView:= 1;
  schedDBStrg_Kalender.Reminders.Active:= false;
  defaultLabelColor:= 13083265;
  defaultFontColor:= 0;
  grd_Booking.Align:= alClient;
  grpbx_Booking.Align:= alClient;
  DecodeDate(Now,iJahr,iMonat,iTag);

  case iMonat of
    1: sMonat:= 'Januar';
    2: sMonat:= 'Februar';
    3: sMonat:= 'März';
    4: sMonat:= 'April';
    5: sMonat:= 'Mai';
    6: sMonat:= 'Juni';
    7: sMonat:= 'Juli';
    8: sMonat:= 'August';
    9: sMonat:= 'September';
    10: sMonat:= 'Oktober';
    11: sMonat:= 'November';
    12: sMonat:= 'Dezember';
  end;
  AProperties := TcxComboBoxProperties(cbx_FilterMonth.Properties);
  cbx_FilterMonth.ItemIndex := AProperties.Items.IndexOf(sMonat);
  AProperties := TcxComboBoxProperties(cbx_FilterYear.Properties);
  cbx_FilterYear.ItemIndex := AProperties.Items.IndexOf(IntToStr(iJahr));


  dedt_Von.EditValue:= '01.'+ inttoStr(iMonat) +'.' + inttoStr(iJahr);
  dedt_Bis.EditValue:= DateToStr(EndOfAMonth(iJahr,iMonat));
  qry_Fehltag.open;
  qry_Buchungen.SQL.Text:= 'Select * From manager_buchungen Where Datum between :Von and :Bis';
  qry_Buchungen.ParamByName('Von').AsDate:= StrToDate(dedt_Von.EditValue);
  qry_Buchungen.ParamByName('Bis').AsDate:= StrToDate(dedt_Bis.EditValue);
  qry_Buchungen.open;

end;
{$EndRegion FormFunktionen}
end.
