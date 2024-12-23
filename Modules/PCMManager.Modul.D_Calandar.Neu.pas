unit PCMManager.Modul.D_Calandar.Neu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, cxMemo, cxTextEdit, cxControls,strutils,
  cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, StdCtrls, ExtCtrls,
  cxLookAndFeelPainters, cxButtons, cxCalendar, cxCheckComboBox, cxCheckBox,
  ComCtrls, ToolWin, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxImageComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGrid, dxmdaset, cxSpinEdit, cxTimeEdit, Menus,
  cxRadioGroup, Math, cxSchedulerStorage,
  cxDateUtils, cxLookAndFeels,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, dxCore, dxSkinsCore,
  cxSchedulerRecurrence, Vcl.DBCtrls, cxRichEdit,
  Vcl.StdActns, Vcl.ActnList, Vcl.ImgList, cxPC, dxDockControl, dxDockPanel,
  cxSplitter, dxDateRanges, dxScrollbarAnnotations, cxGridCustomView,
  cxNavigator, dxBar, cxGroupBox, cxLabel, cxImage,
  System.ImageList, dxStatusBar,cxSchedulerDBStorage,
  DateUtils, CommCtrl,  ShellApi, dxShellDialogs,
  PCMManager.Helper.Calendar.Neu.Wiederholung, System.uitypes;

type
  Tfrm_Calendar_new = class(TForm)
    deStart: TcxDateEdit;
    tAnhaenge: TdxMemData;
    dsAnhaenge: TDataSource;
    tAnhaengeFileName: TWideStringField;
    tAnhaengeFullName: TWideStringField;
    teStart: TcxTimeEdit;
    cbAufgabenStatus: TcxImageComboBox;
    cbTyp: TcxImageComboBox;
    cbAufgabenArt: TcxLookupComboBox;
    cbPrioritaet: TcxLookupComboBox;
    meDauer: TcxMaskEdit;
    cbAnsprechpartner: TcxLookupComboBox;
    deEndeAufgabe: TcxDateEdit;
    teEndeAufgabe: TcxTimeEdit;
    cbErledigungsgrad: TcxComboBox;
    rbDauerInMinuten: TcxRadioButton;
    rbDauerInStunden: TcxRadioButton;
    rbDauerInTagen: TcxRadioButton;
    tAnhaengeDeleteOrigFile: TBooleanField;
    btnSearchFirma: TcxButton;
    edtFirma: TcxTextEdit;
    btnEraseFirma: TcxButton;
    cbReminderAufgabe: TcxCheckBox;
    icbReminderAufgabe: TcxImageComboBox;
    mNachricht: TcxRichEdit;
    dxDockingManager1: TdxDockingManager;
    dsHost: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxDockPanel1: TdxDockPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1Dateiname: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    edtJiraTicket: TcxTextEdit;
    btnGoToJira: TcxButton;
    teBetreff: TcxTextEdit;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    bSend: TdxBarLargeButton;
    bCancel: TdxBarLargeButton;
    ptop: TcxGroupBox;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label17: TcxLabel;
    lblAufgabe: TcxLabel;
    lFaelligAm: TcxLabel;
    Label6: TcxLabel;
    Label10: TcxLabel;
    Label7: TcxLabel;
    lArt: TcxLabel;
    lblDauer: TcxLabel;
    Label18: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label9: TcxLabel;
    lTypeName: TcxLabel;
    Label11: TcxLabel;
    panel6: TcxGroupBox;
    pAnhaengeView: TcxGroupBox;
    Image1: TcxImage;
    btnAnhangOeffnen: TcxButton;
    btnAnhangLoeschen: TcxButton;
    btnAnhangHinzufuegen: TcxButton;
    pAll: TcxGroupBox;
    pAufgabeTermin: TcxGroupBox;
    pDauerFormat: TcxGroupBox;
    cmbbx_Ort: TcxComboBox;
    lbl_ort: TcxLabel;
    btn_SetRecurringEv: TcxButton;
    btn_DelRecurringEv: TcxButton;
    chkbx_CompleteDay: TcxCheckBox;
    stbr_New: TdxStatusBar;
    odAnhang: TdxOpenFileDialog;
    pnClient: TcxGroupBox;
    pnlTopLeft: TcxGroupBox;
    pnlTop: TcxGroupBox;
    procedure bSendClick(Sender: TObject);
    procedure btnAnhangHinzufuegenClick(Sender: TObject);
    procedure btnAnhangLoeschenClick(Sender: TObject);
    procedure btnAnhangOeffnenClick(Sender: TObject);
    procedure cbTypPropertiesEditValueChanged(Sender: TObject);
    procedure cbAufgabenArtPropertiesCloseUp(Sender: TObject);
    procedure meDauerPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure meDauerEnter(Sender: TObject);
    procedure pDauerFormat1Exit(Sender: TObject);
    procedure meDauerExit(Sender: TObject);
    procedure meDauerKeyPress(Sender: TObject; var Key: Char);
    procedure bCancelClick(Sender: TObject);
    procedure cbErledigungsgradPropertiesChange(Sender: TObject);
    procedure deEndeAufgabePropertiesEditValueChanged(Sender: TObject);
    procedure deStartPropertiesEditValueChanged(Sender: TObject);
    procedure btnAnhangDokumentClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchFirmaClick(Sender: TObject);
    procedure btnEraseFirmaClick(Sender: TObject);
    procedure edtFirmaPropertiesEditValueChanged(Sender: TObject);
    procedure icbReminderAufgabePropertiesEditValueChanged(Sender: TObject);
    procedure cxRichEdit1PropertiesURLClick(Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
    procedure mNachrichtPropertiesURLClick(Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
    procedure btnGoToJiraClick(Sender: TObject);
    procedure teStartPropertiesEditValueChanged(Sender: TObject);
    procedure teEndeAufgabePropertiesEditValueChanged(Sender: TObject);
    procedure chkbx_CompleteDayPropertiesChange(Sender: TObject);
    procedure btn_SetRecurringEvClick(Sender: TObject);
    procedure btn_DelRecurringEvClick(Sender: TObject);
    procedure tAnhaengeAfterScroll(DataSet: TDataSet);

  private
    { Private-Deklarationen }
    //LastTyp: Integer;
    AEvent: TcxSchedulerControlEvent;
    FIdNachricht : Integer;
    FErledigungsgrad : double;
    FFirstTyp: integer;
    FID_Original_Absender_ID: Integer;
    function dauerUmrechnenVonMinute(iFormat : integer; iDauer : double) : double;
    function dauerUmrechnenInMinute(iFormat : integer; iDauer : double) : double;
    procedure loescheTempDoks();
    procedure SetStandardFaelligkeitAufgabe;
  public
    { Public-Deklarationen }
    // 6.0.1.15 - AM
    FID_Adr_Wurzel: Integer;
    FFirma: string;
    FID_Vorgaenge: Integer;
    FID_Auftrag: Integer;
    FID_Projekt: Integer;
    iCountEvent: Integer;
    AssKalenderStorage:TcxSchedulerDBStorage;

    function Execute(AKalenderStorage:TcxSchedulerDBStorage;Typ : integer; ID_Adr_Wurzel, ID_Ansprechpartner: integer;
      Betreff, Nachricht: string; ID_WF_Nachrichten_Ursprung: Integer; Start, Faellig:
      TDateTime; Status2: Integer; Rueckfrage: Boolean; ID_WF_Prioritaeten,
      ID_WF_AufgabenArten: Integer; Dauer: Integer; OrtTyp, ID_Firma,
      ID_Adr_Firmen_Adressen: Integer; Reminder, GanzerTag: Boolean; ReminderBeforeStart:
      Integer; PrivaterTermin : Boolean; Zeitformat : integer; Erledigungsgrad : double;
      Event: TcxSchedulerControlEvent; Jira_Ticket, Wiederholung: String;
      var NewId : Integer;
      bStandardFaelligkeitAufgabe: Boolean = False; bCallFromReminder: Boolean = False): Boolean;
    procedure AddAnhang(FileName, FullName: string; bDelete : boolean = False);
    procedure ZeigeWiederholungsInfo();
    function minutesBetweenEx(Date1, Date2 : TDateTime) : integer;
    function cxMyGetRecurrenceDescriptionString(ARecurrenceInfo: TcxSchedulerEventRecurrenceInfo; AFullDescription: Boolean = False): string;
    function cxMyGetRecurrenceFreqString(ARecurrenceInfo: TcxSchedulerEventRecurrenceInfo; AFullDescription: Boolean = False): string;
    procedure TypAenderung;
  end;

var
  frm_Calendar_new: Tfrm_Calendar_new;

const
  ntAufgabe = 1;
  ntNachricht = 0;
  ntTermin = 2;

implementation

uses  PCMManager.Modul.D_Calender.Neu.Adresssuche,
      PCM.Data,
      PCM.Strings;


{$R *.dfm}

function Tfrm_Calendar_new.cxMyGetRecurrenceDescriptionString(ARecurrenceInfo: TcxSchedulerEventRecurrenceInfo; AFullDescription: Boolean = False): string;
const
  Weeks: array[1..5] of string = (rs_PCM_ersten, rs_PCM_zweiten, rs_PCM_dritten, rs_PCM_vierten, rs_PCM_letzten);
  Days: array[cxdtEveryDay..cxdtWeekEndDay] of string = (rs_PCM_Tag, rs_PCM_Wochentag, rs_PCM_Wochenend_Tag);
  EveryDays: array[Boolean] of string = (rs_PCMManager_alleTage, rs_PCMManager_jedenTag);
  EveryMonths1: array[Boolean] of string = (rs_PCMManager_TagjedesMonats, rs_PCMManager_TagjedenMonats);
  EveryMonths2: array[Boolean] of string = (rs_PCMManager_denjedesMonats, rs_PCMManager_denjedenMonats);

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
function Tfrm_Calendar_new.cxMyGetRecurrenceFreqString(ARecurrenceInfo: TcxSchedulerEventRecurrenceInfo; AFullDescription: Boolean = False): string;
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
          Result := UPPERCASE(Copy(FormatSettings.LongDayNames[Ord(ADay) + 1],1,2));
          Exit;
        end
        else
        begin
          Dec(ACount);
          if ACount > 1 then
            Result := Result + UPPERCASE(Copy(FormatSettings.LongDayNames[Ord(ADay) + 1],1,2)) + ','
          else if ACount = 1 then
            Result := Result + UPPERCASE(Copy(FormatSettings.LongDayNames[Ord(ADay) + 1],1,2)) + ','
          else
            Result := Result + UPPERCASE(Copy(FormatSettings.LongDayNames[Ord(ADay) + 1],1,2));
        end;
  end;

  function GetTimeBounds(APattern: TcxSchedulerEvent): string;
  begin
    if APattern.AllDayEvent and (APattern.Duration = 1) then Exit;
    Result := '';
  end;

  function GetDateBounds(APattern: TcxSchedulerEvent): string;
  begin
    Result := ' ab dem ' + FormatDateTime('ddddd', ARecurrenceInfo.Start);
    if ARecurrenceInfo.Count >= 0 then
      Result := Result + ' bis ' + FormatDateTime('ddddd', ARecurrenceInfo.GetEndDate);
  end;

var
  ADayStr, AWeekStr, AMonthStr: string;
//  APattern: TcxSchedulerEvent;
  iCount: integer;
  sDays: string;
  sBysetPos: string;
begin
  Result := '';
  if not Assigned(ARecurrenceInfo) or not ARecurrenceInfo.Event.IsRecurring then Exit;
  with ARecurrenceInfo do
  begin
    case Recurrence of
      cxreDaily:
        if DayType = cxdtWeekDay then
        begin
          Result := 'FREQ=WEEKLY';
          iCount:= ARecurrenceInfo.Count;
          if iCount > 0 then
            Result := Result + ';COUNT=' + IntToStr(iCount);
          if iCount = 0 then
          begin
            Result := Result + ';COUNT=' + IntToStr(iCountEvent);
          end;
          Result := Result + ';BYDAY=' + OccurDaysToString;
        end
        else
        begin
          Result := 'FREQ=DAILY';
          iCount:= ARecurrenceInfo.Count;
          if iCount > 0 then
            Result := Result + ';COUNT=' + IntToStr(iCount);
          if iCount = 0 then
            Result := Result + ';COUNT=' + IntToStr(iCountEvent);
          if Periodicity > 1 then
            Result := Result + ';INTERVAL=' + IntToStr(Periodicity);
        end;
      cxreWeekly:
        if Periodicity = 1 then
        begin
          Result := 'FREQ=WEEKLY';
          iCount:= ARecurrenceInfo.Count;
          if iCount > 0 then
            Result := Result + ';COUNT=' + IntToStr(iCount);
          if iCount = 0 then
            Result := Result + ';COUNT=' + IntToStr(iCountevent);
          Result := Result + ';BYDAY=' + OccurDaysToString;
          Result := StringReplace(Result,'SO','SU',[rfReplaceAll]);
          Result := StringReplace(Result,'DI','TU',[rfReplaceAll]);
          Result := StringReplace(Result,'MI','WE',[rfReplaceAll]);
          Result := StringReplace(Result,'DO','TH',[rfReplaceAll]);
        end
        else
        begin
          Result := 'FREQ=WEEKLY';
          iCount:= ARecurrenceInfo.Count;
          if iCount > 0 then
            Result := Result + ';COUNT=' + IntToStr(iCount);
          if iCount = 0 then
            Result := Result + ';COUNT=' + IntToStr(iCountEvent);
          Result := Result + ';INTERVAL='+ IntToStr(Periodicity) +';BYDAY=' + OccurDaysToString;
          Result := StringReplace(Result,'SO','SU',[rfReplaceAll]);
          Result := StringReplace(Result,'DI','TU',[rfReplaceAll]);
          Result := StringReplace(Result,'MI','WE',[rfReplaceAll]);
          Result := StringReplace(Result,'DO','TH',[rfReplaceAll]);
        end;
      cxreMonthly:
        if DayType = cxdtDay then
        begin
          iCount:= ARecurrenceInfo.Count;
          Result := 'FREQ=MONTHLY';
          if iCount > 0 then
            Result := Result + ';COUNT=' + IntToStr(iCount);
          if iCount = 0 then
            Result := Result + ';COUNT=' + IntToStr(iCountEvent);
          Result := Result  +';BYMONTHDAY=' + IntToStr(DayNumber);
        end
        else
        begin
          GetDateParts(ADayStr, AWeekStr);
          Result := Format(EveryMonths2[Periodicity = 1], [AWeekStr, ADayStr, Periodicity]);
          Case IndexStr(AWeekStr, ['ersten', 'zweiten', 'dritten', 'vierten','letzten']) of
          0: sBysetPos :='1';
          1: sBysetPos :='2';
          2: sBysetPos :='3';
          3: sBysetPos :='4';
          4: sBysetPos :='-1';
          end;
          Case IndexStr(ADayStr, ['Montag', 'Dienstag', 'Mittwoch', 'Donnerstag','Freitag','Samstag','Sonntag']) of
          0: sDays :='MO';
          1: sDays :='TU';
          2: sDays :='WE';
          3: sDays :='TH';
          4: sDays :='FR';
          5: sDays :='SA';
          6: sDays :='SU';
          end;
          iCount:= ARecurrenceInfo.Count;
          Result := 'FREQ=MONTHLY';
          if icount = 0 then
            Result := Result + ';COUNT=' + IntToStr(iCountEvent);
          if icount > 0 then
            Result := Result + ';COUNT=' + IntToStr(icount);
          if Periodicity > 1  then
            Result := Result + ';INTERVAL=' + IntToStr(Periodicity);
          Result := Result + ';BYDAY=' + sDays + ';BYSETPOS=' + sBysetPos;
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
//    if Event.EventType = etPattern then
//      APattern := Event
//    else
//    begin
//      APattern := Event.Pattern;
//      if APattern = nil then
//        APattern := Event;
//    end;
  end;
end;
function Tfrm_Calendar_new.minutesBetweenEx(Date1, Date2 : TDateTime) : integer;
begin
  result := Trunc (0.5 + (Date2 - Date1)*1440);
end;

procedure Tfrm_Calendar_new.ZeigeWiederholungsInfo();
begin
  stbr_New.Panels[0].Text:=cxMyGetRecurrenceDescriptionString(AEvent.RecurrenceInfo, true);
  btn_DelRecurringEv.Enabled := True;
end;
procedure Tfrm_Calendar_new.TypAenderung;
var
  Typ: integer;
//  dtBis : TDateTime;
begin
  Typ := cbTyp.EditValue;
  pAufgabeTermin.Visible := Typ in [ntAufgabe,ntTermin];
  if (Typ = ntAufgabe) or (Typ = ntTermin) then
  begin
    pTop.Height:= Round(268 * dm_PCM.iScale);
    pnlTop.Height:= Round(132 * dm_PCM.iScale);
    chkbx_CompleteDay.Visible:= False;
    btn_SetRecurringEv.Visible:= False;
    btn_DelRecurringEv.Visible:= False;
    if (Typ = ntTermin) then
    begin
      chkbx_CompleteDay.Visible:= true;
      btn_SetRecurringEv.Visible:= true;
      btn_DelRecurringEv.Visible:= true;
    end;

  end
  else
  begin
//    pAll.Top := 50;//pAufgabeTermin.Top + pAufgabeTermin.Height + 4;
    pnlTop.Height:= Round(48 * dm_PCM.iScale);
  end;
  //pTop.Height := pAll.Top + pAll.Height + 8;

  case Typ of
    ntNachricht:
      begin
        Caption := rs_PCMManager_Nachrichtbearbeiten;
      end;
    ntAufgabe:
      begin
        Caption := rs_PCMManager_Aufgabebearbeiten;
        lArt.Caption := rs_PCMManager_artderAufgabe;
        cbReminderAufgabe.Caption:= rs_PCMManager_anAufgabeerinnern;
        Label10.Caption:= rs_PCMManager_Aufgabenstatus;
        lblAufgabe.Caption:= rs_PCMManager_vorAufgabe;
      end;
    ntTermin:
      begin
        Caption := rs_PCMManager_Terminbearbeiten;
        lArt.Caption := rs_PCMManager_ArtTermin;
        cbReminderAufgabe.Caption:= rs_PCMManager_anTerminerinnern;
        Label10.Caption:= rs_PCMManager_Terminstatus;
        lblAufgabe.Caption:= rs_PCMManager_vorTermin;
      end;
  end;

  // 5.9.6.4
  // Bei einem wechsel von Nachricht auf Termin gegebenenfalls das Ende-Datum anpassen

  if deEndeAufgabe.Date = EncodeDate(2005,12,19) then
  begin
    deEndeAufgabe.Date := deStart.Date;
    teEndeAufgabe.Time := IncMinute(teStart.Time,60);
  end;
  // Zeitformat auf Minunten ändern
end;

function Tfrm_Calendar_new.Execute(AKalenderStorage:TcxSchedulerDBStorage;Typ : Integer; ID_Adr_Wurzel, ID_Ansprechpartner: integer;Betreff, Nachricht: string; ID_WF_Nachrichten_Ursprung: Integer;Start, Faellig: TDateTime; Status2: Integer; Rueckfrage: Boolean; ID_WF_Prioritaeten,ID_WF_AufgabenArten, Dauer, OrtTyp, ID_Firma, ID_Adr_Firmen_Adressen: Integer;Reminder, GanzerTag : Boolean; ReminderBeforeStart: Integer; PrivaterTermin : Boolean;Zeitformat : integer; Erledigungsgrad : double;Event: TcxSchedulerControlEvent; Jira_Ticket, Wiederholung: String;var NewId : Integer;bStandardFaelligkeitAufgabe: Boolean = False; bCallFromReminder: Boolean = False): Boolean;
  function WFAddAttachment(AttachmentName: string; FilePath: string; ID_WF_Nachrichten: Integer): Boolean; stdcall;
  var
    fn: string;
    path: string;
  begin
    Result:= false;
    // Dateiname im System
    fn := IntToStr(ID_WF_Nachrichten) + '_' + AttachmentName;
   // Pfad für Dateiname
    path := ExpandFileName(ExtractFilePath(ParamStr(0)) + 'Files\');
    // Verzeichnisse erstellen
    // Temporäre Datei kopieren
    if CopyFile(PChar(FilePath), PChar(Path + fn), False) then
    begin
      dm_PCM.qry_work1.SQL.Text := 'INSERT INTO manager_aufgaben_anhaenge '
    + '(ID_IC_Nachrichten, Dateiname, DateinameSave) '
    + 'VALUES(:ID_IC_Nachrichten, :AttachmentName, :Filename)';
      dm_PCM.qry_work1.ParamByName('ID_IC_Nachrichten').asInteger := ID_WF_Nachrichten;
      dm_PCM.qry_work1.ParamByName('AttachmentName').asString := AttachmentName;
      dm_PCM.qry_work1.ParamByName('Filename').asString := fn;
      dm_PCM.qry_work1.Execute;
      Result := True;
    end;
  end;
  function GetAdressID(AFirma:String): integer;
  begin
    Result:= -1;
    dm_PCM.qry_work1.SQL.Text:= 'SELECT ID From manager_Kontakte Where Firma = :Firma';
    dm_PCM.qry_work1.ParamByName('Firma').AsString:= AFirma;
    dm_PCM.qry_work1.open;
    if dm_PCM.qry_work1.RecordCount > 0 then
      Result:= dm_PCM.qry_work1.FieldByName('ID').AsInteger;
    dm_PCM.qry_work1.Close;
  end;
var
  ID,ipos, options,  iRecurrenceIndex, iEventType, iParentId,ReminderMinutes : Integer;
  Ende, reminderDate, dEndeAm: TDateTime;
  ARecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
  sReminder,sRecurrenceInfo ,sWiederholungText: String;
  DateBegin, DateEnd:string;
  TagBegin, MonatBegin, JahrBegin: String;
  TagEnd, MonatEnd, JahrEnd: String;
  sganzerTag,TimeBegin, TimeEnd,sWiederHolungCount: String;
  sPushMessage: string;
begin
  ipos:= Pos('COUNT=',Wiederholung);
  if ipos > 0 then
  begin
    sWiederHolungCount:= Copy(Wiederholung,ipos + 6,Length(Wiederholung));
    ipos:= Pos(';',sWiederHolungCount);
    sWiederHolungCount:= Copy(sWiederHolungCount,1,ipos-1);
    iCountEvent:= StrToInt(sWiederHolungCount);
  end
  else
  begin
    iCountEvent:= 0;
  end;



  ID := -1;
  tAnhaenge.AfterScroll:= nil;
  AssKalenderStorage:= AKalenderStorage;
  cmbbx_Ort.ItemIndex:= 0;
  dm_PCM.qry_Optionen.Open;
  dm_PCM.qry_Optionen.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  dm_PCM.qry_Optionen.Filtered:= true;
  FID_Adr_Wurzel := 0;
  FID_Vorgaenge := 0;
  FID_Auftrag := 0;
  FID_Projekt := 0;
  FID_Original_Absender_ID := dm_PCM.iIDBenutzerPCM;
  edtJiraTicket.EditValue := Jira_Ticket;
  FIdNachricht:= ID_WF_Nachrichten_Ursprung;
  if Faellig = 0 then Faellig := RecodeMinute(IncHour(Now, 1), 0);
  deEndeAufgabe.Date := DateOf(Faellig);
  teEndeAufgabe.Time := TimeOf(Faellig);
  FErledigungsgrad := Erledigungsgrad;
  if ID_Adr_Wurzel > 0 then
  begin
    FID_Adr_Wurzel := ID_Adr_Wurzel;
    dm_PCM.qry_work.SQL.Text := 'SELECT Firma FROM manager_kontakte '
      + 'WHERE ID = :ID_Adr_Wurzel '
      + 'ORDER BY Firma';
    dm_PCM.qry_work.ParamByName('ID_Adr_Wurzel').AsInteger := FID_Adr_Wurzel;
    dm_PCM.qry_work.Open;
    edtFirma.Text := dm_PCM.qry_work.FieldByName('Firma').AsString;
    dm_PCM.qry_work.Close;
  end;
  if ID_Ansprechpartner > 0 then
  begin
    dm_PCM.qry_Aufgabe_Ansprechpartner.SQL.Text := 'SELECT ID,Concat(Nachname,'', '', Vorname) as NameVorname FROM manager_kontakte WHERE ID = :ID_Adr_Wurzel ORDER By Nachname, Vorname';
    dm_PCM.qry_Aufgabe_Ansprechpartner.ParamByName('ID_Adr_Wurzel').asInteger := ID_Ansprechpartner;
    dm_PCM.qry_Aufgabe_Ansprechpartner.Open;
    try
      cbAnsprechpartner.ItemIndex:=0;
    except

    end
  end;
  if Erledigungsgrad > 0 then
  begin
    cbErledigungsgrad.ItemIndex := round(Erledigungsgrad / 10);
  end;
  if Start = 0 then Start := RecodeMinute(IncHour(Now, 1), 0);
  deStart.Date := DateOf(Start);
  teStart.Time := EncodeTime(HourOf(TimeOf(Start)), MinuteOf(TimeOf(Start)), 0, 0);
  teBetreff.Text := Betreff;
  mNachricht.Text := Nachricht;

  if Assigned(Event) and Event.IsRecurring then
  begin
    AEvent:= TCXSchedulerControlEvent.Create(AssKalenderStorage);
    AEvent.Assign(Event);
    ZeigeWiederholungsInfo()
  end;

  cbAufgabenStatus.EditValue := Status2;

  //LastTyp := Typ;
  cbTyp.EditValue := Typ;
  FFirstTyp := Typ;

  // Zeitformat setzen
  case (Zeitformat) of
    0:
    begin
      rbDauerInMinuten.Checked := true;
      lblDauer.Caption := rs_PCMManager_Dauermin;
    end;
    1:
    begin
      rbDauerInStunden.Checked := true;
      lblDauer.Caption := rs_PCMManager_DauerStd;
    end;
    2:
    begin
      rbDauerInTagen.Checked := true;
      lblDauer.Caption := rs_PCMManager_DauerTag;
    end;
  end;

  if Typ = ntAufgabe then
  begin
    if (Faellig = 0) then
      Faellig := IncMinute(Now, 60);
    deEndeAufgabe.Date := DateOf(Faellig);
    teEndeAufgabe.time := TimeOf(Faellig);
  end;
  chkbx_CompleteDay.EditValue := GanzerTag;
  if Dauer > 0 then
  begin

    meDauer.Properties.OnEditValueChanged := nil;
    meDauer.Tag := Dauer;
    meDauer.EditValue := dauerUmrechnenVonMinute(Zeitformat, meDauer.Tag);
    meDauer.Properties.OnEditValueChanged := meDauerPropertiesEditValueChanged;

  //    if Faellig > 0 then
  //      Ende := IncMinute(Faellig, Dauer)
  //    else
  //    begin
  //      Ende := IncMinute(Now, Dauer);
  //    end;
  end
  else  // Keine Dauer angegeben -> neuer Termin / Aufgabe
  begin
    // Standard-Dauert setzen (60 Minuten)
    meDauer.Properties.OnEditValueChanged := nil;
    meDauer.Text := '60';
    meDauer.Tag := 60;
    rbDauerInMinuten.Checked;
    meDauer.Properties.OnEditValueChanged := meDauerPropertiesEditValueChanged;

    if Faellig > 0 then
      Ende := IncMinute(Faellig, 60)
    else
      Ende := IncMinute(Now, 60);
  //
  //

  //    Ende := IncMinute(deStart.Date+teStart.Time, 60);

    if Faellig = Start then
    begin
      deEndeAufgabe.Date := DateOf(Ende);
      teEndeAufgabe.Time := TimeOf(Ende);
    end;
  end;

  if (dm_PCM.qry_Optionen.FieldByName('Standard_Faelligkeit_Aufgaben_In_Tagen').AsInteger > 0) and
       (Typ = ntAufgabe) and
       (bStandardFaelligkeitAufgabe) then
  begin
    // Standardfälligkeit setzen
    SetStandardFaelligkeitAufgabe;
  end;

  cbAufgabenArt.EditValue := ID_WF_AufgabenArten;
  cbPrioritaet.EditValue := ID_WF_Prioritaeten;

  // Ort
  //  if ID_Firma = 0 then
  //    ID_Firma := 0;//U_Login2.ID_Firma;

  cbReminderAufgabe.EditValue := Reminder;
  icbReminderAufgabe.EditValue := ReminderBeforeStart;
  chkbx_CompleteDay.Checked:= GanzerTag;

  if ShowModal = mrOk then
  begin
    tAnhaenge.AfterScroll:= tAnhaengeAfterScroll;
    if chkbx_CompleteDay.Checked= True then
    begin
      JahrBegin:=Copy(DateTimeToStr(deStart.Date),7,4);
      MonatBegin:=Copy(DateTimeToStr(deStart.Date),4,2);
      TagBegin:=Copy(DateTimeToStr(deStart.Date),1,2);
      JahrEnd:=Copy(DateTimeToStr(deEndeAufgabe.Date),7,4);
      MonatEnd:=Copy(DateTimeToStr(deEndeAufgabe.Date),4,2);
      TagEnd:=Copy(DateTimeToStr(deEndeAufgabe.Date),1,2);
      TimeBegin:= '00:00:00';
      TimeEnd:= '00:00:00';
      DateBegin:= JahrBegin + '-' + MonatBegin + '-' + TagBegin + ' ' + TimeBegin;
      DateEnd:= JahrEnd + '-' + MonatEnd + '-' + TagEnd + ' ' + TimeEnd;
//      if DateBegin = DateEnd then
//      begin
        JahrEnd:=Copy(DateTimeToStr(deEndeAufgabe.Date + 1),7,4);
        MonatEnd:=Copy(DateTimeToStr(deEndeAufgabe.Date + 1),4,2);
        TagEnd:=Copy(DateTimeToStr(deEndeAufgabe.Date + 1),1,2);
        DateEnd:= JahrEnd + '-' + MonatEnd + '-' + TagEnd + ' ' + TimeEnd;
//      end;
      sGanzerTag:= 'true';
    end
    else begin
      JahrBegin:=Copy(DateTimeToStr(deStart.Date),7,4);
      MonatBegin:=Copy(DateTimeToStr(deStart.Date),4,2);
      TagBegin:=Copy(DateTimeToStr(deStart.Date),1,2);
      JahrEnd:=Copy(DateTimeToStr(deEndeAufgabe.Date),7,4);
      MonatEnd:=Copy(DateTimeToStr(deEndeAufgabe.Date),4,2);
      TagEnd:=Copy(DateTimeToStr(deEndeAufgabe.Date),1,2);
      TimeBegin:= TimeToStr(testart.Time);
      TimeEnd:= TimeToStr(teEndeaufgabe.Time);
      DateBegin:= JahrBegin + '-' + MonatBegin + '-' + TagBegin + ' ' + TimeBegin;
      DateEnd:= JahrEnd + '-' + MonatEnd + '-' + TagEnd + ' ' + TimeEnd;
      sGanzerTag:= 'false';
    end;
    Typ := cbTyp.EditValue;

    Result := True;
    if rbDauerInMinuten.Checked then
      Zeitformat := 0
    else if rbDauerInStunden.Checked then
      Zeitformat := 1
    else
      Zeitformat := 2;

    reminderDate := deStart.Date + teStart.Time;
    options := omEnabled;

    if (Typ = ntAufgabe) or (Typ = ntTermin) then
    begin
      dEndeAm := deEndeAufgabe.Date + teEndeAufgabe.Time;
      reminderDate := IncMinute(reminderDate,-icbReminderAufgabe.EditValue);
      if cbReminderAufgabe.Checked then
      begin
        options := omEnabled or omReminder;
        sReminder:= 'true';
        ReminderMinutes:= icbReminderAufgabe.EditValue;
      end
      else
      begin
        options := omEnabled;
        sReminder:= 'false';
        ReminderMinutes:= 0;
      end;
    end;

    dm_PCM.qry_KalenderAufgaben_Arten.Locate('ID',cbAufgabenArt.EditValue,[]);

    iRecurrenceIndex := -1;
    iEventType := 0;
    sRecurrenceInfo := '';
    iParentId := 0;
    sWiederholungText:= '';
    // Wiederholung erstellen
    if Assigned(AEvent) then
    begin
      // Prüfen ob custom event bearbeitet wird
      if AEvent.EventType = etCustom then
      begin
        iEventType := 4;
        iRecurrenceIndex := AEvent.RecurrenceIndex;
        iParentId := AEvent.ParentID;
      end
      else
      begin
        iEventType := 1;
        // Wiederkerhendes event erstellt, Daten speichern
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
        end;
        sRecurrenceInfo := String(cxRecurrenceInfoDataToString(ARecurrenceInfo));
        sWiederholungText:= cxMyGetRecurrenceFreqString(AEvent.RecurrenceInfo, true);
      end;

    end;
    if FIdNachricht > 0 then
    begin
      if typ = ntNachricht then
        sPushMessage:= 'Nachricht ' + teBetreff.Text + ' wurde geändert';
      if typ = ntAufgabe then
        sPushMessage:= 'Aufgabe ' + teBetreff.Text + ' von  '  + DateBegin + ' bis ' + DateEnd + ' wurde geändert';
      if typ = ntTermin then
        sPushMessage:= 'Termin ' + teBetreff.Text + ' von  '  + DateBegin + ' bis ' + DateEnd + ' wurde geändert';
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= sPushMessage;
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;

      dm_PCM.qry_work.SQL.Text:= 'Update manager_kalender SEt CompleteDay = :ganzerTag, wiederholung_text:= :wiederholung_text, location = :location, kalendername = ''manuell'',' +
                         'ID_Benutzer= :ID_Benutzer,ID_Adr_Wurzel= :ID_Adr_Wurzel,' +
                         'ID_Ansprechpartner= :ID_Ansprechpartner,Typ= :Typ,GesendetAm= :GesendetAm,'+
                         'Start= :Start,Finish= :Finish,Caption= :Caption,Message= :Message,'+
                         'Aufgabenstatus= :Aufgabenstatus,Jira_Ticket= :Jira_Ticket,'+
                         'ID_IC_Prioritaeten= :ID_IC_Prioritaeten,ID_IC_AufgabenArten= :ID_IC_AufgabenArten,'+
                         'Reminder= :Reminder,'+
                         'ReminderMinutesBeforeStart= :ReminderMinutesBeforeStart,'+
                         'ReminderDate= :ReminderDate,options= :options,EventType= :EventType,'+
                         'RecurrenceIndex= :RecurrenceIndex,RecurrenceInfo= :RecurrenceInfo,'+
                         'parent_id= :parent_id,Erledigungsgrad= :Erledigungsgrad,'+
                         'Zeitformat= :Zeitformat,AufgabenDauer= :AufgabenDauer Where ID =:ID';
      dm_PCM.qry_work.Parambyname('ID').asInteger := FIdNachricht;
      dm_PCM.qry_work.Parambyname('location').asString := cmbbx_Ort.Properties.Items[cmbbx_Ort.ItemIndex];
      dm_PCM.qry_work.Parambyname('ID_Benutzer').asInteger := dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.Parambyname('ID_Adr_Wurzel').asInteger := GetAdressID(edtfirma.text);
      if cbAnsprechpartner.EditValue <> null then
        dm_PCM.qry_work.Parambyname('ID_Ansprechpartner').asInteger := cbAnsprechpartner.EditValue
      else
        dm_PCM.qry_work.Parambyname('ID_Ansprechpartner').asInteger := -1;
      dm_PCM.qry_work.Parambyname('Typ').asInteger := Integer(Typ);
      dm_PCM.qry_work.Parambyname('GesendetAm').AsDateTime:= now;
      dm_PCM.qry_work.Parambyname('Start').AsString := DateBegin;
      dm_PCM.qry_work.Parambyname('Caption').AsString := teBetreff.Text;
      dm_PCM.qry_work.Parambyname('Message').AsString := mNachricht.Text;
      dm_PCM.qry_work.Parambyname('Aufgabenstatus').asInteger := cbAufgabenStatus.EditValue;
      dm_PCM.qry_work.Parambyname('Jira_Ticket').asString := edtJiraTicket.EditValue;
      dm_PCM.qry_work.Parambyname('Finish').asString:= DateEnd;
      dm_PCM.qry_work.Parambyname('ID_IC_Prioritaeten').asInteger := -1;
      dm_PCM.qry_work.Parambyname('ID_IC_AufgabenArten').asInteger := -1;
      dm_PCM.qry_work.Parambyname('Reminder').AsString := 'false';
      dm_PCM.qry_work.Parambyname('ReminderMinutesBeforeStart').AsInteger := 0;
      dm_PCM.qry_work.Parambyname('ReminderDate').AsDateTime := deStart.Date + teStart.Time;
      dm_PCM.qry_work.Parambyname('options').asInteger := Options;
      dm_PCM.qry_work.Parambyname('EventType').AsInteger := iEventType;
      dm_PCM.qry_work.ParamByName('RecurrenceIndex').asInteger := iRecurrenceIndex;
      dm_PCM.qry_Work.ParamByName('RecurrenceInfo').AsString:= sRecurrenceInfo;
      dm_PCM.qry_work.ParamByName('parent_id').asInteger := iParentId;
      dm_PCM.qry_work.ParamByName('Erledigungsgrad').AsFloat := 0;
      dm_PCM.qry_work.ParamByName('Zeitformat').asInteger := 0;
      dm_PCM.qry_work.ParamByName('AufgabenDauer').asInteger := 0;
      dm_PCM.qry_Work.ParamByName('wiederholung_text').AsString:= sWiederholungText;
      if (cbTyp.EditValue = ntAufgabe) or (cbTyp.EditValue = nttermin) then
      begin
        dm_PCM.qry_work.Parambyname('Finish').asString := DateEnd;
        if cbPrioritaet.EditValue = 0 then
          dm_PCM.qry_work.Parambyname('ID_IC_Prioritaeten').asInteger := -1
        else
          dm_PCM.qry_work.Parambyname('ID_IC_Prioritaeten').asInteger := cbPrioritaet.EditValue;
        dm_PCM.qry_work.Parambyname('ID_IC_AufgabenArten').asInteger := cbAufgabenArt.EditValue;
        if (cbTyp.EditValue = ntAufgabe) or (cbTyp.EditValue = nttermin) then
        begin
          if cbReminderAufgabe.Checked then
            dm_PCM.qry_work.Parambyname('Reminder').AsString := 'true'
          else
            dm_PCM.qry_work.Parambyname('Reminder').AsString := 'false';
          dm_PCM.qry_work.Parambyname('ReminderMinutesBeforeStart').asInteger := icbReminderAufgabe.EditValue;
        end;
        dm_PCM.qry_work.Parambyname('ReminderDate').AsDateTime := reminderDate;
        dm_PCM.qry_work.Parambyname('options').asInteger := options;
        dm_PCM.qry_work.Parambyname('EventType').asInteger := iEventType;
      end;
      if (cbTyp.EditValue = ntAufgabe) or (cbTyp.EditValue = nttermin) then
      begin
        dm_PCM.qry_work.Parambyname('Erledigungsgrad').asFloat := cbErledigungsgrad.ItemIndex*10;
        dm_PCM.qry_work.Parambyname('Zeitformat').asInteger := Zeitformat;
        dm_PCM.qry_work.Parambyname('AufgabenDauer').asInteger := meDauer.Tag;
      end;
      dm_PCM.qry_Work.ParamByName('ganzerTag').AsString:= sganzerTag;
      dm_PCM.qry_work.ExecSQL;
    end
    else
    begin
      if typ = ntNachricht then
        sPushMessage:= 'Neue Nachricht ' + teBetreff.Text + ' wurde angelegt';
      if typ = ntAufgabe then
        sPushMessage:= 'Neue Aufgabe ' + teBetreff.Text + ' von  '  + DateBegin + ' bis ' + DateEnd + ' wurde angelegt';
      if typ = ntTermin then
        sPushMessage:= 'Neue Termin ' + teBetreff.Text + ' von  '  + DateBegin + ' bis ' + DateEnd + ' wurde angelegt';
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= sPushMessage;
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;

      dm_PCM.qry_work.SQL.Text:= 'INSERT INTO manager_kalender (CompleteDay,wiederholung_text,location,kalendername,ID_Benutzer,ID_Adr_Wurzel,ID_Ansprechpartner,Typ,GesendetAm,'+
                         'Start,Finish,Caption,Message,Aufgabenstatus,Jira_Ticket,ID_IC_Prioritaeten,ID_IC_AufgabenArten,'+
                         'Reminder,ReminderMinutesBeforeStart,ReminderDate,options,EventType,'+
                         'RecurrenceIndex,RecurrenceInfo,parent_id,Erledigungsgrad,Zeitformat,AufgabenDauer) VALUES (:ganzerTag,:wiederholung_text,:location,''manuell'',:ID_Benutzer,:ID_Adr_Wurzel,:ID_Ansprechpartner,:Typ,:GesendetAm,'+
                         ':Start,:Finish,:Caption,:Message,:Aufgabenstatus,:Jira_Ticket,:ID_IC_Prioritaeten,:ID_IC_AufgabenArten,'+
                         ':Reminder,:ReminderMinutesBeforeStart,:ReminderDate,:options,:EventType,'+
                         ':RecurrenceIndex,:RecurrenceInfo,:parent_id,:Erledigungsgrad,:Zeitformat,:AufgabenDauer)';
      dm_PCM.qry_work.Parambyname('location').asString := cmbbx_Ort.Properties.Items[cmbbx_Ort.ItemIndex];
      dm_PCM.qry_work.Parambyname('ID_Benutzer').asInteger := dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.Parambyname('ID_Adr_Wurzel').asInteger := GetAdressID(edtFirma.text);
      if cbAnsprechpartner.EditValue <> null then
        dm_PCM.qry_work.Parambyname('ID_Ansprechpartner').asInteger := cbAnsprechpartner.EditValue
      else
        dm_PCM.qry_work.Parambyname('ID_Ansprechpartner').asInteger := -1;
      dm_PCM.qry_work.Parambyname('Typ').asInteger := Integer(Typ);
      dm_PCM.qry_work.Parambyname('GesendetAm').AsDateTime:= now;
      dm_PCM.qry_work.Parambyname('Start').asString := DateBegin;
      dm_PCM.qry_work.Parambyname('Caption').AsString := teBetreff.Text;
      dm_PCM.qry_work.Parambyname('Message').AsString := mNachricht.Text;
      dm_PCM.qry_work.Parambyname('Aufgabenstatus').asInteger := cbAufgabenStatus.EditValue;
      dm_PCM.qry_work.Parambyname('Jira_Ticket').asString := edtJiraTicket.EditValue;
      dm_PCM.qry_work.Parambyname('Finish').asString:= DateEnd;
      dm_PCM.qry_work.Parambyname('ID_IC_Prioritaeten').asInteger := -1;
      dm_PCM.qry_work.Parambyname('ID_IC_AufgabenArten').asInteger := -1;
      dm_PCM.qry_work.Parambyname('Reminder').AsString := 'false';
      dm_PCM.qry_work.Parambyname('ReminderMinutesBeforeStart').AsInteger := 0;
      dm_PCM.qry_work.Parambyname('ReminderDate').AsDateTime := deStart.Date + teStart.Time;
      dm_PCM.qry_work.Parambyname('options').asInteger := Options;
      dm_PCM.qry_work.Parambyname('EventType').AsInteger := iEventType;
      dm_PCM.qry_work.ParamByName('RecurrenceIndex').asInteger := iRecurrenceIndex;
      dm_PCM.qry_work.ParamByName('RecurrenceInfo').asString := sRecurrenceInfo;
      dm_PCM.qry_work.ParamByName('parent_id').asInteger := 0;
      dm_PCM.qry_work.ParamByName('Erledigungsgrad').AsFloat := 0;
      dm_PCM.qry_work.ParamByName('Zeitformat').asInteger := 0;
      dm_PCM.qry_work.ParamByName('AufgabenDauer').asInteger := 0;
      dm_PCM.qry_Work.ParamByName('wiederholung_text').AsString:= sWiederholungText;
      dm_PCM.qry_Work.ParamByName('ganzerTag').AsString:= sganzerTag;
      if (cbTyp.EditValue = ntAufgabe) or (cbTyp.EditValue = nttermin) then
      begin
//        dm_PCM.qry_work.Parambyname('Finish').AsDateTime := dEndeAm;
        if cbPrioritaet.EditValue = 0 then
          dm_PCM.qry_work.Parambyname('ID_IC_Prioritaeten').asInteger := -1
        else
          dm_PCM.qry_work.Parambyname('ID_IC_Prioritaeten').asInteger := cbPrioritaet.EditValue;
        dm_PCM.qry_work.Parambyname('ID_IC_AufgabenArten').asInteger := cbAufgabenArt.EditValue;
        if (cbTyp.EditValue = ntAufgabe) or (cbTyp.EditValue = nttermin) then
        begin
          if cbReminderAufgabe.Checked then
            dm_PCM.qry_work.Parambyname('Reminder').AsString := 'true'
          else
            dm_PCM.qry_work.Parambyname('Reminder').AsString := 'false';
          dm_PCM.qry_work.Parambyname('ReminderMinutesBeforeStart').asInteger := icbReminderAufgabe.EditValue;
        end;
        dm_PCM.qry_work.Parambyname('ReminderDate').AsDateTime := reminderDate;
        dm_PCM.qry_work.Parambyname('options').asInteger := options;
        dm_PCM.qry_work.Parambyname('EventType').asInteger := iEventType;
      end;
      if (cbTyp.EditValue = ntAufgabe) or (cbTyp.EditValue = nttermin) then
      begin
        dm_PCM.qry_work.Parambyname('Erledigungsgrad').asFloat := cbErledigungsgrad.ItemIndex*10;
        dm_PCM.qry_work.Parambyname('Zeitformat').asInteger := Zeitformat;
        dm_PCM.qry_work.Parambyname('AufgabenDauer').asInteger := meDauer.Tag;
      end;
      dm_PCM.qry_work.ExecSQL;
    end;
    tAnhaenge.First;
    while not tAnhaenge.Eof do
    begin
      WFAddAttachment(tAnhaengeFileName.Value, tAnhaengeFullName.Value, ID);
      tAnhaenge.Next;
    end;
  end
  else
    Result := False;
  loescheTempDoks;
  dm_Pcm.qry_Aufgabe_Ansprechpartner.close;
  Release;
end;
procedure Tfrm_Calendar_new.bCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;
procedure Tfrm_Calendar_new.bSendClick(Sender: TObject);
  procedure Hinweis(s: string);
  begin
    MessageDlg(s,mtwarning, [mbOk],0);
  end;
var
  typ: integer;
  s: string;
begin
  deEndeAufgabe.PostEditValue;
  teEndeAufgabe.PostEditValue;

  typ := cbTyp.EditValue;
  if ((cbAufgabenArt.EditValue = 0) or (cbAufgabenArt.EditValue = null)) AND (typ = ntAufgabe) then
    Hinweis(rs_PCMManager_AufgabenArtWaehlen)
  else if teBetreff.Text = '' then
    Hinweis(rs_PCMManager_BetreffEingeben)
  // 5.9.6.21
  else if (typ = ntAufgabe) AND (deStart.Date > deEndeAufgabe.Date) then
  begin
      Hinweis(rs_PCMManager_DatumBisVon)
  end
  // 5.9.6.8 - Gesonderte Fehlermeldung für Uhrzeit
  // 5.9.6.20 Änderungen der Datumsprüfung
  else if (typ = ntAufgabe) AND ((deStart.Date + teStart.Time) >= (deEndeAufgabe.Date + teEndeAufgabe.Time)) AND
          (teStart.Time >= teEndeAufgabe.Time) then
  begin
      Hinweis(rs_PCMManager_DatumBisVon)
  end
  else if (typ = ntTermin) AND (deEndeAufgabe.Date + teEndeAufgabe.Time < Now) then
  begin
    Hinweis(rs_PCMManager_EndeInVergangenheit);
  end
  else if (typ = ntAufgabe) AND (deEndeAufgabe.Date + teEndeAufgabe.Time < Now) then
  begin
    Hinweis(rs_PCMManager_EndeInVergangenheit);
  end
  else
  begin
    if typ > ntNachricht then
    begin
      if (typ = ntAufgabe) AND ((deEndeAufgabe.Date + teEndeAufgabe.Time) < Now) then
      begin
        if MessageDlg(rs_PCMManager_AufgabeInVergangenheit,mtwarning, [TMsgDlgBtn.mbYes,TMsgDlgBtn.mbNo],0) <> IDYES then
          exit;
      end
      else
      begin
        s := '';
        // Eingestellte Standardfälligkeit bei Aufgaben beachten
        if (typ = ntAufgabe) AND (dm_PCM.qry_Optionen.FieldByName('Standard_Faelligkeit_Aufgaben_In_Tagen').AsInteger > 0) AND
           (DaysBetween(Now, deEndeAufgabe.Date) < dm_PCM.qry_Optionen.FieldByName('Standard_Faelligkeit_Aufgaben_In_Tagen').AsInteger - 1) then
          s := rs_PCMManager_FaelligkeitStandard +
            IntToStr(dm_PCM.qry_Optionen.FieldByName('Standard_Faelligkeit_Aufgaben_In_Tagen').AsInteger) + rs_PCMManager_FaelligkeitStandardTage +
            rs_PCMManager_Fortfahren
        else if (typ = ntAufgabe) AND ((deEndeAufgabe.Date + teEndeAufgabe.Time) < IncMinute(Now, 60 * 4)) then
          s :=
            rs_PCMManager_Faelligkeit4Stunden +
            rs_PCMManager_Fortfahren;


        if s <> '' then
          if MessageDlg(s,TMsgDlgType.mtWarning,[mbyes,mbno],0) = IDYes then
            exit;
      end;
    end;
    ModalResult := mrOk;
  end;
end;
procedure Tfrm_Calendar_new.AddAnhang(FileName, FullName: string; bDelete : boolean = False);
begin
  try
  tAnhaenge.Append;
  tAnhaengeFileName.AsString := FileName;
  tAnhaengeFullName.AsString := FullName;
  tAnhaengeDeleteOrigFile.AsBoolean := bDelete;
  tAnhaenge.Post;
  except
  end;
end;
procedure Tfrm_Calendar_new.btnEraseFirmaClick(Sender: TObject);
begin
  FID_Adr_Wurzel := 0;
  cbAnsprechpartner.ItemIndex := -1;
  edtFirma.Text := '';
end;
procedure Tfrm_Calendar_new.btnGoToJiraClick(Sender: TObject);
//var
//  sURL: String;
begin
//  if (edtJiraTicket.EditValue <> '') and (not VarIsNull(edtJiraTicket.EditValue)) and (fIC_Main.FOptions.Jira_Basic_URL <> '') then
//  begin
//    sURL := fIC_Main.FOptions.Jira_Basic_URL + edtJiraTicket.EditValue;
//    ShellExecute(self.WindowHandle,'open', PWideChar(sURL) ,nil,nil, SW_SHOWNORMAL);
//  end;
end;
procedure Tfrm_Calendar_new.btnAnhangDokumentClick(Sender: TObject);
//var
//  sName, sAnzeigeName : String;
begin
//  Application.CreateForm(TfAdr_Korr_Dokument, fAdr_Korr_Dokument);
//  //if (cbVorgang.EditValue = 0) or (cbVorgang.EditValue = null) then
//  if FID_Vorgaenge < 1 then
//  begin
//    Application.Messagedlg('Bitte wählen Sie eine Vorgang aus.', 'Hinweis', MB_OK or MB_ICONINFORMATION);
//    exit;
//  end;
//  sAnzeigeName := edtVorgang.Text; //cbVorgang.EditText;
//  if InputQuery('Dateiname angeben','Bitte geben Sie einen Dokumentnamen ein',sAnzeigeName) then
//  begin
//    sAnzeigeName := sAnzeigeName + '.doc';
//    if fAdr_Korr_Dokument.Execute(FID_Adr_Wurzel,    //cbAdresse.EditValue,
//                                  cbAnsprechpartner.EditValue,
//                                  cbAn.EditValue,
//                                  FID_Vorgaenge, //cbVorgang.EditValue,
//                                  sName) then
//    begin
//      AddAnhang(sAnzeigeName, sName, True);
//    end;
//  end;
end;
procedure Tfrm_Calendar_new.btnAnhangHinzufuegenClick(Sender: TObject);
var
  i: IntegeR;
begin
  if odAnhang.Execute then
  begin
    for i := 0 to odAnhang.Files.Count - 1 do
      AddAnhang(ExtractFileName(odAnhang.Files[i]), odAnhang.Files[i]);
  end;
end;
procedure Tfrm_Calendar_new.btnAnhangLoeschenClick(Sender: TObject);
begin
  if tAnhaenge.RecordCount > 0 then
    tAnhaenge.Delete;
end;
procedure Tfrm_Calendar_new.btnAnhangOeffnenClick(Sender: TObject);
begin
  if cxGrid1DBTableView1.Controller.FocusedRowIndex > -1 then
    ShellExecute(Application.Handle,nil,PChar(tAnhaengeFullName.AsString),NIL,NIL,SW_SHOWNORMAL)
end;
function Tfrm_Calendar_new.dauerUmrechnenVonMinute(iFormat : integer; iDauer : double) : double;
var
  dMinTag : double;
begin
  result:= 0;
  if iDauer = 0 then exit;

  if iFormat = 0 then
  begin
    // Minuten
    result := iDauer;
  end
  else if iFormat = 1 then
  begin
    // Stunden
    result := roundTo(iDauer / 60,-2);
  end
  else if iFormat = 2 then
  begin
    // Tage
    //result := roundTo(0.000694444444 * iDauer,-2);
    dMinTag := 1 / (dm_PCM.qry_Optionen.FieldByName('StundenProArbeitstag').AsFloat * 60);
    result := roundTo(dMinTag * iDauer,-2);
  end;
end;
function Tfrm_Calendar_new.dauerUmrechnenInMinute(iFormat : integer; iDauer : double) : double;
var
  dTagInMinuten : double;
begin
  result:= 0;
  if iFormat = 0 then
  begin
    // Minuten
    result := iDauer;
  end
  else if iFormat = 1 then
  begin
    // Stunden
    result := iDauer / 60;
  end
  else if iFormat = 2 then
  begin
    // Tage, Tag hat 8 Stunden = 480 Min.
    dTagInMinuten := dm_PCM.qry_Optionen.FieldByName('StundenProArbeitstag').AsFloat * 60;
    result := iDauer * dTagInMinuten;
  end;
end;
procedure Tfrm_Calendar_new.SetStandardFaelligkeitAufgabe;
var
  Start, Ende: TDateTime;
begin
  Start := RecodeMinute(IncHour(IncDay(Now, dm_PCM.qry_Optionen.FieldByName('Standard_Faelligkeit_Aufgaben_In_Tagen').AsInteger), 1), 0);
  deStart.Date := DateOf(Now);
  teStart.Time := EncodeTime(HourOf(TimeOf(Start)), MinuteOf(TimeOf(Start)), 0, 0);

  Ende := IncMinute(Start, 60);
  deEndeAufgabe.Date := Trunc(Ende);
  teEndeAufgabe.Time := Frac(Ende);
end;
procedure Tfrm_Calendar_new.tAnhaengeAfterScroll(DataSet: TDataSet);
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

  if not tAnhaenge.ControlsDisabled then
  begin
    f := tAnhaengeFullName.AsString;
    if f <> '' then
    begin
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
procedure Tfrm_Calendar_new.teEndeAufgabePropertiesEditValueChanged(Sender: TObject);
var
  v: integer;
begin
  v := minutesBetweenEx(deStart.EditValue + teStart.EditValue,
      deEndeAufgabe.EditValue + teEndeAufgabe.EditValue);
    meDauer.EditValue := v;
end;
procedure Tfrm_Calendar_new.teStartPropertiesEditValueChanged(Sender: TObject);
var
  v: Integer;
  Ende: TDateTime;
begin
  if teStart.EditModified then
  begin
    v := meDauer.EditValue;
    Ende := IncMinute(deStart.EditValue + teStart.EditValue, v);
    // 5.9.6.2 Bei Aufgaben soll das Ende-Datum nicht automatisch berechnet werden
    deEndeAufgabe.Date  := Trunc(Ende);
    teEndeAufgabe.Time := Frac(Ende);
  end;
end;
procedure Tfrm_Calendar_new.cbTypPropertiesEditValueChanged(Sender: TObject);
begin
  TypAenderung;
end;
procedure Tfrm_Calendar_new.chkbx_CompleteDayPropertiesChange(Sender: TObject);
begin
  if chkbx_CompleteDay.Checked then
  begin
    teStart.visible:= false;
    teEndeAufgabe.visible:= false;
    deStart.Width:= 145;
    deEndeAufgabe.Width:= 145;
    label6.Visible:= false;
    label15.Visible:= false;

    medauer.Visible:= false;
    lblDauer.Visible:= false;
    label10.left:= 152;
    cbAufgabenStatus.left:= 152;
    label10.Width:= 168;
    cbAufgabenStatus.Width:= 168;
  end
  else begin
    teStart.visible:= true;
    teEndeAufgabe.visible:= true;
    deStart.Width:= 81;
    deEndeAufgabe.Width:= 81;
    label6.Visible:= true;
    label15.Visible:= true;

    medauer.Visible:= true;
    lblDauer.Visible:= true;
    label10.left:= 222;
    cbAufgabenStatus.left:= 222;
    label10.Width:= 98;
    cbAufgabenStatus.Width:= 98;
  end;
end;
procedure Tfrm_Calendar_new.cbAufgabenArtPropertiesCloseUp(Sender: TObject);
begin
  if teBetreff.Text = '' then
    teBetreff.Text := cbAufgabenArt.Text;
end;
procedure Tfrm_Calendar_new.cbErledigungsgradPropertiesChange(Sender: TObject);
begin
  if (cbTyp.EditValue = ntAufgabe) or (cbTyp.EditValue = nttermin) then
  begin
    if cbErledigungsgrad.ItemIndex = 10 then
    begin
      if (MessageDlg(rs_PCMManager_Erledigungsgrad1 + slinebreak + rs_PCMManager_Erledigungsgrad2 + slinebreak + slinebreak + rs_PCMManager_Fortfahren + slinebreak + rs_PCMManager_Erledigungsgrad3,TMsgDlgType.mtWarning, [mbOk,mbCancel],0) = idOk) then
      begin
        //showmessage('aufgabe erledigt');
      end
      else
        cbErledigungsgrad.ItemIndex := round(FErledigungsgrad / 10);
      begin

      end;
    end
    else
      FErledigungsgrad := cbErledigungsgrad.ItemIndex * 10;
  end;
end;
procedure Tfrm_Calendar_new.meDauerEnter(Sender: TObject);
var
  Typ: integer;
begin
  Typ := cbTyp.EditValue;
  pDauerFormat.Visible := Typ = ntAufgabe;
end;
procedure Tfrm_Calendar_new.meDauerExit(Sender: TObject);
begin
  if (frm_Calendar_new.ActiveControl.Name = '') OR (frm_Calendar_new.ActiveControl.Name = 'teStart') OR
     (frm_Calendar_new.ActiveControl.Name = 'cbStatus2') then
    pDauerFormat.Hide;
end;
procedure Tfrm_Calendar_new.meDauerKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharinSet(Key, [#8, '0'..'9', FormatSettings.DecimalSeparator]) then
  begin
    Key := #0;
  end
  else if ((Key = FormatSettings.DecimalSeparator) and (Pos(Key, meDauer.Text) > 0)) then begin
    Key := #0;
  end;
end;
procedure Tfrm_Calendar_new.meDauerPropertiesEditValueChanged(Sender: TObject);
var
  fCalc : double;
  s : string;
begin
  s := meDauer.EditValue;
  if not TryStrToFloat(s,fCalc) then
    fCalc := 0;

  if rbDauerInMinuten.Checked then
  begin
    meDauer.tag := round(dauerUmrechnenInMinute(0, fCalc));
    lblDauer.Caption := rs_PCMManager_DauerMin;
  end
  else if rbDauerInStunden.Checked then
  begin
    meDauer.tag := round(dauerUmrechnenInMinute(1, fCalc));
    lblDauer.Caption := rs_PCMManager_DauerStd;
  end
  else
  begin
    meDauer.tag := round(dauerUmrechnenInMinute(2, fCalc));
    lblDauer.Caption := rs_PCMManager_DauerTag;
  end;

end;
procedure Tfrm_Calendar_new.mNachrichtPropertiesURLClick(Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
begin
  ShellExecute(0, 'open', PWideChar(URLText), nil, nil, SW_SHOW);
end;
procedure Tfrm_Calendar_new.pDauerFormat1Exit(Sender: TObject);
begin
  pDauerFormat.Hide;
end;
procedure Tfrm_Calendar_new.deEndeAufgabePropertiesEditValueChanged(Sender: TObject);
var
  v : Integer;
begin
  v := minutesBetweenEx(deStart.EditValue + teStart.EditValue,
      deEndeAufgabe.EditValue + teEndeAufgabe.EditValue);
    meDauer.EditValue := v;
  if deStart.Date > deEndeAufgabe.Date then
    deStart.Date := deEndeAufgabe.Date;
end;
procedure Tfrm_Calendar_new.deStartPropertiesEditValueChanged(Sender: TObject);
begin
  if deStart.EditModified then
  begin
    if deEndeAufgabe.Date < deStart.Date then
      deEndeAufgabe.Date  := deStart.Date;
  end;
end;
procedure Tfrm_Calendar_new.edtFirmaPropertiesEditValueChanged(Sender: TObject);
begin
  dm_PCM.qry_Aufgabe_Ansprechpartner.SQL.Text := 'SELECT ID,Concat(Nachname,'', '', Vorname) as NameVorname FROM manager_kontakte WHERE Firma = :ID_Adr_Wurzel ORDER By Nachname, Vorname';
  dm_PCM.qry_Aufgabe_Ansprechpartner.ParamByName('ID_Adr_Wurzel').AsString := FFirma;
  dm_PCM.qry_Aufgabe_Ansprechpartner.Open;
end;
procedure Tfrm_Calendar_new.loescheTempDoks();
begin
  tAnhaenge.First;
  while not tAnhaenge.Eof do
  begin
    if tAnhaengeDeleteOrigFile.AsBoolean then DeleteFile( tAnhaengeFullName.Value);
    tAnhaenge.Next;
  end;
end;
procedure Tfrm_Calendar_new.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ModalResult = mrCancel then
  begin
    loescheTempDoks();
  end;
end;
procedure Tfrm_Calendar_new.FormShow(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  dm_PCM.qry_KalenderAufgaben_Prio.open;
  dm_PCM.qry_KalenderAufgaben_Arten.open;
end;
procedure Tfrm_Calendar_new.icbReminderAufgabePropertiesEditValueChanged(Sender: TObject);
begin
  icbReminderAufgabe.Enabled := cbReminderAufgabe.EditValue = True;
end;
procedure Tfrm_Calendar_new.btnSearchFirmaClick(Sender: TObject);
begin
  Application.CreateForm(TfAdressSuche, fAdressSuche);
  FID_Adr_Wurzel := fAdressSuche.ShowModal;
  fAdressSuche.Free;
  edtFirma.Text := FFirma;//qryWork.FieldByName('Name').AsString;
end;
procedure Tfrm_Calendar_new.btn_DelRecurringEvClick(Sender: TObject);
begin
  if AEvent <> nil then
  begin
    AEvent := nil;
    stbr_New.Panels[0].Text:= '';
    btn_DelRecurringEv.Enabled := False;
  end;
end;
procedure Tfrm_Calendar_new.btn_SetRecurringEvClick(Sender: TObject);
var
  f : TcxSchedulerRecurrenceEventEditorForm;
begin
  if not Assigned(AEvent) then
  begin
    AEvent := TcxSchedulerControlEvent.Create(AssKalenderStorage);
  end;
  AEvent.Start := deStart.Date;
  AEvent.Finish := deEndeAufgabe.Date;
  f := TcxSchedulerRecurrenceEventEditorForm.CreateEx(AEvent);
  f.Initialize;
  if f.ShowModal = mrOK then
    ZeigeWiederholungsInfo()
  else
    AEvent := nil;

  FreeAndNil(f);
end;
procedure Tfrm_Calendar_new.cxRichEdit1PropertiesURLClick(Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
begin
  ShowMessage('URL Click');
end;

end.

