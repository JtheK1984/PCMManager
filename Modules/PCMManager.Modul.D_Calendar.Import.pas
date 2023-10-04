unit PCMManager.Modul.D_Calendar.Import;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Buttons, Vcl.StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxColorComboBox, dxGDIPlusClasses,
  Vcl.ExtCtrls, cxProgressBar, AnsiStrings, cxCheckBox, cxImageComboBox,
  DateUtils,  Vcl.Menus, System.ImageList,
  Vcl.ImgList, cxButtons,cxSchedulerRecurrence, dxSkinsCore,
  dxSkinMetropolisDark, cxImage, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxLabel, cxGroupBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,cxdateutils,system.UItypes;

type
  Tfrm_PCM_Import = class(TForm)
    colcmbbx_CalNewCal: TcxColorComboBox;
    dlgOPen_ICS: TOpenDialog;
    prgbr_CalNew: TcxProgressBar;
    lstbx_CalNewEvents: TListBox;
    chkbx_CalNewReminder: TcxCheckBox;
    cmbbx_CalNewReminderminutes: TcxImageComboBox;
    cmbbx_CalNewType: TcxComboBox;
    colcmbbx_CalNewFont: TcxColorComboBox;
    btn_CalNewSave: TcxButton;
    btn_CalNewCancel: TcxButton;
    edt_CalNewPfad: TcxTextEdit;
    edt_CalNewName: TcxTextEdit;
    img_CalNew: TcxImage;
    btn_CAlImportNew: TcxButton;
    grpbx_Design: TcxGroupBox;
    lbl_CalNewDatei: TcxLabel;
    lbl_CalNewKalenderFarbe: TcxLabel;
    lbl_CalNewKalenderFontFarbe: TcxLabel;
    lbl_CalNewKalenderName: TcxLabel;
    lbl_CalNewKalenderTyp: TcxLabel;
    procedure btn_CAlImportNewClick(Sender: TObject);
    procedure ReadICS(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_CalNewSaveClick(Sender: TObject);
    procedure btn_CalNewCancelClick(Sender: TObject);
    procedure cbx_CalNewTypePropertiesChange(Sender: TObject);
  private
    { Private-Deklarationen }
    FShowModal: Boolean;
  public
    { Public-Deklarationen }
    AID_Benutzer: integer;
    function GetRecurrence(var Rule, Start:  string) : string;
    function Execute(const AShowModal: Boolean; AID: integer) : boolean;

  end;

var
  frm_PCM_Import: Tfrm_PCM_Import;

implementation

{$R *.dfm}

Uses  PCM.Data,
      PCMManager.Helper.Calendar.Ical;


function Tfrm_PCM_Import.GetRecurrence(var Rule, Start:  string) : string;
  procedure Check1(ACheckBox: boolean; var AOccurDays: TDays; var DayOfweek);
  begin
    if ACheckBox then
      Include(AOccurDays, TDay(DayOfweek ));
  end;
var
  ARecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
  sFreq,sVar: string;
  liste: TStringList;
  i: Integer;
//  iJahr,iMonat,iTag: dword;
  recOccurDays: TDays;
  sDate, recBYDAY: string;
  AOccurDays: TDays;
  myPosition : Integer;
  bDayOfWeek1,bDayOfWeek2,bDayOfWeek3,bDayOfWeek4,
  bDayOfWeek5,bDayOfWeek6,bDayOfWeek7: boolean;
  iDayOfWeek1,iDayOfWeek2,iDayOfWeek3,iDayOfWeek4,
  iDayOfWeek5,iDayOfWeek6,iDayOfWeek7: integer;
begin
  Result:= '';
  FillChar(ARecurrenceInfo, SizeOf(ARecurrenceInfo), 0);
  liste := TStringList.Create();
  liste.Delimiter := ';';
  liste.StrictDelimiter := True;
  liste.DelimitedText := Rule;
//  iJahr:= StrToInt(Copy(Start,1,4));
//  iMonat:= StrToInt(Copy(Start,6,2));
//  iTag:= StrToInt(Copy(Start,9,2));
  recOccurDays:= [dThursday];
  for I := 0 to liste.count - 1  do
  begin
    sVar := liste.Strings[i];
    if Copy(sVar,1,5) = 'FREQ='  then
    begin
      sFreq:=  StringReplace(sVar,'FREQ=','',[rfIgnoreCase,rfReplaceAll]);
    end;
    if Copy(sVar,1,6) = 'UNTIL='  then
    begin
      sDate:= StringReplace(sVar,'UNTIL=','',[rfIgnoreCase,rfReplaceAll]);
//      iJahr:= StrToInt(Copy(Start,1,4));
//      iMonat:= StrToInt(Copy(Start,5,2));
//      iTag:= StrToInt(Copy(Start,7,2));
    end;
    if Copy(sVar,1,6) = 'BYDAY='  then
    begin
      recBYDAY:=  StringReplace(sVar,'BYDAY==','',[rfIgnoreCase,rfReplaceAll]);
      myPosition := Pos('SU', recBYDAY);
      if myPosition > 0 then
      begin
        bDayOfWeek1 := true
      end
      else begin
        bDayOfWeek1:= false;
      end;
      myPosition := Pos('MO', recBYDAY);
      if myPosition > 0 then
        bDayOfWeek2:= true
      else
        bDayOfWeek2:= false;
      myPosition := Pos('TU', recBYDAY);
      if myPosition > 0 then
        bDayOfWeek3:= true
      else
        bDayOfWeek3:= false;

      myPosition := Pos('WE', recBYDAY);
      if myPosition > 0 then
        bDayOfWeek4:= true
      else
        bDayOfWeek4:= false;

      myPosition := Pos('TH', recBYDAY);
      if myPosition > 0 then
        bDayOfWeek5:= true
      else
        bDayOfWeek5:= false;

      myPosition := Pos('FR', recBYDAY);
      if myPosition > 0 then
        bDayOfWeek6:= true
      else
        bDayOfWeek6:= false;

      myPosition := Pos('SA', recBYDAY);
      if myPosition > 0 then
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
      AOccurDays := [];
      Check1(bDayOfWeek1, AOccurDays,iDayOfWeek1);
      Check1(bDayOfWeek2, AOccurDays,iDayOfWeek2);
      Check1(bDayOfWeek3, AOccurDays,iDayOfWeek3);
      Check1(bDayOfWeek4, AOccurDays,iDayOfWeek4);
      Check1(bDayOfWeek5, AOccurDays,iDayOfWeek5);
      Check1(bDayOfWeek6, AOccurDays,iDayOfWeek6);
      Check1(bDayOfWeek7, AOccurDays,iDayOfWeek7);
      recOccurDays := AOccurDays;
    end;
  end;
end;
function Tfrm_PCM_Import.Execute(const AShowModal: Boolean; AID: integer) : boolean;
begin
  Result:= falSe;
  AID_Benutzer:= AID;
  FShowModal := AShowModal;
  if FShowModal then
  begin
    ShowModal;
    if modalresult = mrok then
      Result:= true;
    end;
end;
procedure Tfrm_PCM_Import.btn_CAlImportNewClick(Sender: TObject);
begin
  if dlgOPen_ICS.Execute then
    edt_CalNewPfad.Text:= dlgOPen_ICS.FileName;
end;
procedure Tfrm_PCM_Import.btn_CalNewCancelClick(Sender: TObject);
begin
  Modalresult:= mrCancel;
end;
procedure Tfrm_PCM_Import.btn_CalNewSaveClick(Sender: TObject);
var
  aData: TiCalPackage;
  aList : TStringList;
begin
  if edt_CalNewPfad.Text= '' then
  begin
    MessageDlg('Bitte Datei auswählen.', mtWarning, [mbOk], 0);
    exit;
  end;
  if edt_CalNewName.Text= '' then
  begin
    MessageDlg('Bitte Kalendername eingeben.', mtWarning, [mbOk], 0);
    exit;
  end;
  aData := TiCalPackage.Create(edt_CalNewPfad.Text,frm_PCM_Import);
//  aList := TStringList.Create;
  aList := aData.iCalList;
  aList.Count;
  lstbx_CalNewEvents.Items := aList;
  aData.Free;
  ReadICS(Sender);
  Modalresult:= mrOK;
end;
procedure Tfrm_PCM_Import.cbx_CalNewTypePropertiesChange(Sender: TObject);
begin
  if cmbbx_CalNewType.ItemIndex =  1 then
  begin
    colcmbbx_CalNewCal.Enabled:= false;
    colcmbbx_CalNewFont.Enabled:= false;
    colcmbbx_CalNewCal.ColorValue:= ClWhite;
    colcmbbx_CalNewFont.ColorValue:= ClBlack;
  end
  else begin
    colcmbbx_CalNewCal.Enabled:= true;
    colcmbbx_CalNewFont.Enabled:= true;
    colcmbbx_CalNewCal.ColorValue:= ClWhite;
    colcmbbx_CalNewFont.ColorValue:= ClBlack;
  end;
end;
procedure Tfrm_PCM_Import.FormShow(Sender: TObject);
begin
  edt_CalNewPfad.Text:= '';
  edt_CalNewName.Text:= '';
  colcmbbx_CalNewCal.ColorValue:= ClWhite;
  colcmbbx_CalNewFont.ColorValue:= ClBlack;
end;
procedure Tfrm_PCM_Import.ReadICS(Sender: TObject);
var
  aData : riCalItem;
  n,m: AnsiString;
  i: integer;
  DateBegin, DateEnd:string;
  TagBegin, MonatBegin, JahrBegin: String;
  TagEnd, MonatEnd, JahrEnd: String;

  StundeBegin, MinuteBegin, SekundeBegin: String;
  StundeEnd, MinuteEnd, SekundeEnd: String;
  Beschreibung: Ansistring;
  Color,Fontcolor: string;
  Reminder: string;
  ReminderDate: string;
  ReminderMinutes: integer;
  Options:integer;
  GanzerTag:string;
//  ARecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
  sRecurrenceinfo:string;
  dtTermin,dtNow: TDateTime;
  iEventtpye: integer;
  iDiff,iArt: integer;
begin
  iArt:= 4;
  aData:= nil;
  n:='\n';
  m:= '\,';
  sRecurrenceinfo:='';
  try
    if lstbx_CalNewEvents.Count > 0 then
    begin
      dm_PCM.qry_work.SQL.Text:= 'Delete From manager_Kalender where Kalendername = :Name ' +
                                    'AND ID_Benutzer = :ID';
      dm_PCM.qry_work.ParamByName('Name').AsString:= edt_CalNewName.Text;
      dm_PCM.qry_work.ParamByName('ID').AsInteger:= AID_Benutzer;
      dm_PCM.qry_work.ExecSQL;
      dm_PCM.qry_work.close;

      prgbr_Calnew.Properties.Min:= 0;
      prgbr_Calnew.Properties.Max:= lstbx_CalNewEvents.Count -1;
      prgbr_Calnew.Position:= 0;
      prgbr_Calnew.Visible:= true;
      Screen.Cursor:= crHourGlass;
      Application.ProcessMessages;
      lstbx_CalNewEvents.ItemIndex := 0;
      for i := 0 to lstbx_CalNewEvents.Count -1 do begin
        aData := riCalItem.create;
        aData := lstbx_CalNewEvents.Items.Objects[lstbx_CalNewEvents.ItemIndex  + i] as riCalItem;
        // Ganztägiger Termin
        if Length(aData.DTSTART) < 9 then
        begin
          JahrBegin:= Copy(aData.DTSTART,Length(aData.DTSTART) - 8,4);
          MonatBegin:=Copy(aData.DTSTART,Length(aData.DTSTART) - 3,2);
          TagBegin:=Copy(aData.DTSTART,Length(aData.DTSTART) - 1,2);
          if aData.DTEND = '' then
          begin
            JahrEnd:= Copy(DateToStr(aData.DTStartd + 1), 7,4);
            MonatEnd:=Copy(DateToStr(aData.DTStartd + 1), 4,2);
            TagEnd:=Copy(DateToStr(aData.DTStartd + 1), 1,2);
          end
          else begin
            JahrEnd:= Copy(aData.DTEND,1,4);
            MonatEnd:=Copy(aData.DTEND,5,2);
            TagEnd:=Copy(aData.DTEND,7,2);
          end;

          if chkbx_CalNewReminder.Checked then
          begin
            Reminder:= 'true';
            ReminderDate:= DateTimeToStr(IncMinute(StrToDateTime(
            TagBegin +'.' + MonatBegin + '.' + JahrBegin + ' 00:00:00'),cmbbx_CalNewReminderminutes.EditValue *-1));
            ReminderDate:= Copy(ReminderDate,7,4) + '-' + Copy(ReminderDate,4,2) + '-'
            + Copy(ReminderDate,1,2) + ' ' + Copy(ReminderDate,12,8);
            ReminderMinutes:= cmbbx_CalNewReminderminutes.EditValue;
            Options:= 6;
            dtTermin := EncodeDateTime(StrToInt(JahrBegin),StrToInt(MonatBegin),
            StrToInt(TagBegin),0,0,0,0);
            dtNow:= now();
            if dtTermin < dtNow then
            begin
              Reminder:= 'false';
              ReminderDate:= 'NULL';
              ReminderMinutes:= 0;
              Options:= 2;
            end;
          end
          else begin
            Reminder:= 'false';
            ReminderDate:= DateTimeToStr(IncMinute(StrToDateTime(
            TagBegin +'.' + MonatBegin + '.' + JahrBegin + ' '
            + StundeBegin + ':' + MinuteBegin + ':' + SekundeBegin),cmbbx_CalNewReminderminutes.EditValue *-1));
            ReminderDate:= Copy(ReminderDate,7,4) + '-' + Copy(ReminderDate,4,2) + '-'
            + Copy(ReminderDate,1,2) + ' ' + Copy(ReminderDate,12,8);
            ReminderMinutes:= 0;
            Options:= 2;
          end;

          DateBegin:= JahrBegin + '-' + MonatBegin + '-' + TagBegin + ' 00:00:00';
          DateEnd:= JahrEnd + '-' + MonatEnd + '-' + TagEnd + ' 00:00:00';
          GanzerTag:= 'true';
        end
        // untertägiger Termin
        else begin
          JahrBegin:=Copy(aData.DTSTART,Length(aData.DTSTART) - 15,4);
          MonatBegin:=Copy(aData.DTSTART,Length(aData.DTSTART) - 10,2);
          TagBegin:=Copy(aData.DTSTART,Length(aData.DTSTART) - 8,2);
          JahrEnd:= Copy(aData.DTEND,Length(aData.DTEND) - 15,4);
          MonatEnd:=Copy(aData.DTEND,Length(aData.DTEND) - 10,2);
          TagEnd:=Copy(aData.DTEND,Length(aData.DTEND) - 8,2);
          StundeBegin:= Copy(aData.DTSTART,Length(aData.DTSTART) - 5,2);
          MinuteBegin:= Copy(aData.DTSTART,Length(aData.DTSTART) - 3,2);
          SekundeBegin:= Copy(aData.DTSTART,Length(aData.DTSTART) - 1,2);
          StundeEnd:= Copy(aData.DTEND,Length(aData.DTEND) - 5,2);
          MinuteEnd:= Copy(aData.DTEND,Length(aData.DTEND) - 3,2);
          SekundeEnd:= Copy(aData.DTEND,Length(aData.DTEND) - 1,2);
          DateBegin:= JahrBegin + '-' + MonatBegin + '-' + TagBegin + ' ' + StundeBegin + ':' +
          MinuteBegin + ':' + SekundeBegin;
          DateEnd:= JahrEnd + '-' + MonatEnd + '-' + TagEnd + ' ' + StundeEnd + ':' +
          MinuteEnd + ':' + SekundeEnd;

          if chkbx_CalNewReminder.Checked then
          begin
            Reminder:= 'true';
            ReminderDate:= DateTimeToStr(IncMinute(StrToDateTime(
            TagBegin +'.' + MonatBegin + '.' + JahrBegin + ' '
            + StundeBegin + ':' + MinuteBegin + ':' + SekundeBegin),cmbbx_CalNewReminderminutes.EditValue *-1));
            ReminderDate:= Copy(ReminderDate,7,4) + '-' + Copy(ReminderDate,4,2) + '-'
            + Copy(ReminderDate,1,2) + ' ' + Copy(ReminderDate,12,8);
            ReminderMinutes:= cmbbx_CalNewReminderminutes.EditValue;
            Options:= 6;
            dtTermin := EncodeDateTime(StrToInt(JahrBegin),StrToInt(MonatBegin),
            StrToInt(TagBegin),StrToInt(StundeBegin),StrToInt(MinuteBegin),
            StrToInt(SekundeBegin),0);
            dtNow:= now();
            if dtTermin < dtNow then
            begin
              Reminder:= 'false';
              ReminderDate:= 'NULL';
              ReminderMinutes:= 0;
              Options:= 2;
            end;
          end
          else begin
            Reminder:= 'false';
            ReminderDate:= DateTimeToStr(IncMinute(StrToDateTime(
            TagBegin +'.' + MonatBegin + '.' + JahrBegin + ' '
            + StundeBegin + ':' + MinuteBegin + ':' + SekundeBegin),cmbbx_CalNewReminderminutes.EditValue *-1));
            ReminderDate:= Copy(ReminderDate,7,4) + '-' + Copy(ReminderDate,4,2) + '-'
            + Copy(ReminderDate,1,2) + ' ' + Copy(ReminderDate,12,8);
            ReminderMinutes:= 0;
            Options:= 2;
          end;
          GanzerTag:= 'false';
        end;
        Beschreibung := ReplaceStr(ReplaceStr(aData.DESCRIPTION,n,slinebreak),m,',');
        if Length(Beschreibung) < 4 then
          Beschreibung:= '-';

        if aData.Location = '97725\, Elfershausen\, Adolf-Kolping-Str. 11' then
        begin
          aData.Location:= 'im Büro'
        end
        else begin
          if (aData.Location = 'Bad Brückenau') or (aData.Location = '\, \, ')
          or (aData.Location = 'ohne Angabe') or (aData.Location = '')
          or (aData.Location = 'Bayern') then
          begin
            aData.Location:= 'Sonstiges';
          end
          else begin
            aData.Location:= 'Beim Kunden';
          end;
        end;




        if ReplaceStr(aData.Location,':','') = 'beim Kunden' then
        begin
          Color := IntToStr(12566527);
          FontColor:= IntToStr(clBlack);
        end
        else begin
          Color := IntToStr(ColorToRGB(colcmbbx_CalNewCal.ColorValue));
          FontColor := IntToStr(ColorToRGB(colcmbbx_CalNewFont.ColorValue));

          case AnsiIndexStr(aData.SUMMARY, ['Biomüll', 'Restmüll','Papier','Gelber Sack','Giftmobil']) of
            // BioMüll
            0:
            begin
              iArt := 3;
              FontColor:= IntToStr(clWhite);
              Color := IntToStr(944838);
            end;
            // RestMüll
            1:
            begin
              iArt := 3;
              FontColor:= IntToStr(clWhite);
              Color := IntToStr(5658199);
            end;
            // Papier
            2:
            begin
              iArt := 3;
              FontColor:= IntToStr(clWhite);
              Color := IntToStr(13214474);
            end;
            // Gelber Sack
            3:
            begin
              iArt := 3;
              FontColor:= IntToStr(clBlack);
              Color := IntToStr(56831);
            end;
            // Giftmobil
            4:
            begin
              iArt := 3;
              FontColor:= IntToStr(clWhite);
              Color := IntToStr(7679146);
            end;
          end;
        end;
        iEventtpye:= 0;
        if AData.Rule <> '' then
        begin
          sRecurrenceinfo:= GetRecurrence(AData.Rule,DateBegin);
          Reminder:= 'true';
          Options:= 6;
          ReminderDate:= DateBegin;
        end;

        if Fontcolor = '' then
          Fontcolor := IntToStr(clBlack);
        if ReminderDate = 'NULL' then
        begin
          dm_PCM.qry_work.SQL.Text:='Insert into manager_Kalender (EventType,Caption,Location,Message,'
          + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
          + 'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,Kalendername,CompleteDay,Typ,Aufgabenstatus,ID_IC_Prioritaeten,ID_IC_AufgabenArten,GesendetAm,Erledigungsgrad,zeitformat,AufgabenDauer) values ('
          + ':Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,:RecurrenceIndex,:RecurrenceInfo,:Reminder,'
          + 'NULL,0,:Color,:FontColor,:ID,:Kalender,:ganzerTag,2,0,1,:ID_IC_AufgabenArten,Now(),0,0,:Dauer)';
        end
        else begin
          dm_PCM.qry_work.SQL.Text:='Insert into manager_Kalender (EventType,Caption,Location,Message,'
          + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
          + 'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,Kalendername,CompleteDay,Typ,Aufgabenstatus,ID_IC_Prioritaeten,ID_IC_AufgabenArten,GesendetAm,Erledigungsgrad,zeitformat,AufgabenDauer) Values ('
          + ':Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,:RecurrenceIndex,:RecurrenceInfo,:Reminder,'
          + ':ReminderDate,:ReminderMinutes,:Color,:FontColor,:ID,:Kalender,:ganzerTag,2,0,1,:ID_IC_AufgabenArten,Now(),0,0,:Dauer)';
          dm_PCM.qry_work.ParamByName('ReminderDate').AsString:= ReminderDate;
          dm_PCM.qry_work.ParamByName('ReminderMinutes').AsInteger:= ReminderMinutes;
        end;
        dm_PCM.qry_work.ParamByName('Eventtype').ASinteger:= 0;
        dm_PCM.qry_work.ParamByName('SUMMARY').asAnsiString:= aData.SUMMARY;
        dm_PCM.qry_work.ParamByName('Location').asAnsiString:= aData.Location;
        dm_PCM.qry_work.ParamByName('Beschreibung').AsAnsiString:= Beschreibung;
        dm_PCM.qry_work.ParamByName('DateBegin').AsString:= DateBegin;
        dm_PCM.qry_work.ParamByName('DateEnd').AsString:= DateEnd;
        dm_PCM.qry_work.ParamByName('Options').AsInteger:= Options;
        dm_PCM.qry_work.ParamByName('Reminder').AsString:= Reminder;
        dm_PCM.qry_work.ParamByName('RecurrenceIndex').AsInteger:= -1;
        dm_PCM.qry_work.ParamByName('RecurrenceInfo').AsString:= sRecurrenceinfo;
        dm_PCM.qry_work.ParamByName('Color').AsString:= Color;
        dm_PCM.qry_work.ParamByName('FontColor').AsString:= FontColor;
        dm_PCM.qry_work.ParamByName('ID_IC_AufgabenArten').AsInteger:= iart;
        dm_PCM.qry_work.ParamByName('ID').AsInteger:= AID_Benutzer;
        dm_PCM.qry_work.ParamByName('Kalender').AsString:= edt_CalNewName.Text;
        dm_PCM.qry_work.ParamByName('ganzerTag').AsString:= ganzerTag;

        iDiff := Round(EncodeDateTime(StrToInt(Copy(DateEnd,1,4)),StrToInt(Copy(DateEnd,6,2)),StrToInt(Copy(DateEnd,9,2)),StrToInt(Copy(DateEnd,12,2)),StrToInt(Copy(DateEnd,15,2)),0,0)
                -
                EncodeDateTime(StrToInt(Copy(DateBegin,1,4)),StrToInt(Copy(DateBegin,6,2)),StrToInt(Copy(DateBegin,9,2)),StrToInt(Copy(DateBegin,12,2)),StrToInt(Copy(DateBegin,15,2)),0,0)) * 1440;
        dm_PCM.qry_work.ParamByName('Dauer').AsInteger:= iDiff;
        dm_PCM.qry_work.ExecSQL;
        dm_PCM.qry_work.close;
        prgbr_Calnew.Position:= prgbr_Calnew.Position + 1;
        Application.ProcessMessages;
      end;
      Screen.Cursor:= crDefault;
      Application.ProcessMessages;
      prgbr_Calnew.Visible:= false;
    end;
  finally
    aData.Free;
  end;
  dm_PCM.qry_work.SQL.Text:= 'SELECT MAX(ID) as ID FROM manager_kalender ' +
                                'GROUP BY EventType,Caption,Location,Message,Start,Finish,Options,CompleteDay,' +
                                'Parent_ID,RecurrenceIndex,Reminder,ReminderDate,ReminderMinutesBeforeStart,'+
                                'LabelColor,FontColor,ID_Benutzer,Kalendername ' +
                                'Having Count(ID) > 1';
  dm_PCM.qry_work.open;
  while not dm_PCM.qry_work.Eof do
  begin
    dm_PCM.qry_work1.SQL.Text:= 'DELETE FROM Manager_kalender WHERE ID = :ID';;
    dm_PCM.qry_work1.ParamByName('ID').AsInteger:= dm_PCM.qry_work.FieldByName('ID').AsInteger;
    dm_PCM.qry_work1.ExecSQL;
    dm_PCM.qry_work.Next;
  end;
  dm_PCM.qry_work.Close;
  frm_PCM_Import.Close;
end;

end.
