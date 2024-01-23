unit PCMManager.Helper.Contacts.VCF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, WideStrings, AnsiStrings, WideStrUtils;

Type
  rVCFItem = Class
  Public
    UID: String;
    DTSTART, DTEND, LASTMODIFIED, DTSTAMP, CREATED: string;
    DTStartd, DtEndd, LASTMODIFIEDd, DTSTAMPd, CREATEDd: TDateTime;
    DESCRIPTION, LOCATION, SUMMARY: Ansistring;
    aCLASS: string;
    Rule, ORGANIZER, SEQUENCE, STATUS, TRANSP: String;
    TZOFFSETFROM, TZOFFSETTO, TZNAME: String;
    // Temp Vars
    aFontID: Integer;
    aColor: String;
    constructor createVCF;
    destructor DestroyVCF;
  End;

Type
  TVCFPackage = Class
  Private
    aChanged: Boolean;
    aList: TStringList;
    aMemo: TStringList;
    // aMemo : TMemo;
    VCFEventsFound: Integer;
    DateFrmat: TFormatSettings;
    function getModified: Boolean;
    procedure setModified(const Value: Boolean);
    function getVCFList: TStringList;
    Function convertDate(VCFDate: String): TDateTime;
    Procedure MatStringDelete(Var StrLine: String; SubtractStr: String);
    Procedure MatStringDelete2End(Var StrLine: String; SubtractStr: String);
    Procedure MatStringDeleteUp2(Var StrLine: String; SubtractStr: String);
    procedure readMemo;
//    Function CheckExistingCommand(s: String): Boolean;
  Public
    Property modified: Boolean read getModified write setModified;
    Property CountStarts: Integer read VCFEventsFound;
    Property VCFList: TStringList read getVCFList;
    constructor create(Filename: string; Parent: TWinControl); Overload;
    constructor create(stringlist: TStringList; Parent: TWinControl;
      i: Integer = 1); Overload;
    destructor Destroy; override;
  end;

implementation

uses Math;

{ TiCalPackage }

constructor TVCFPackage.create(Filename: string; Parent: TWinControl);
var
  Reader: TStreamReader;
begin
  Reader:= nil;
  If FileExists(Filename) then
  Begin
    // Set Date Time Formatting
    Reader := TStreamReader.create(Filename);
    VCFEventsFound := 0;
    DateFrmat.DateSeparator := '\';
    DateFrmat.ShortDateFormat := 'yyyy\MM\dd';
    DateFrmat.LongDateFormat := 'dd\MMMM\yyy';
    DateFrmat.TimeSeparator := '-';
    DateFrmat.ShortTimeFormat := 'hh-mm-ss';
    DateFrmat.LongTimeFormat := 'hh-mm-ss';
    aMemo := TStringList.create;
    while not Reader.EndOfStream do
      aMemo.Add(Reader.ReadLine);
    aList := TStringList.create;
    readMemo;
  end;
  Reader.Free;
end;

function TVCFPackage.convertDate(VCFDate: String): TDateTime;
Var
  s, t: String;
  aDate: TDateTime;
begin
  // Convert the date
  s := String(VCFDate);
  MatStringDelete2End(s, 'T');
  insert('\', s, 5);
  insert('\', s, 8);
  // Convert the Time
  t := VCFDate;
  if pos(t, 'T') <> 0 then
  Begin
    MatStringDeleteUp2(t, 'T');
    insert('-', t, 3);
    insert('-', t, 6);
  end
  Else
    t := '';
  if t <> '' then
    aDate := StrToDate(s, DateFrmat) + StrToTime(t, DateFrmat)
  else
    aDate := StrToDate(s, DateFrmat) + Time;
  Result := aDate;
end;
constructor TVCFPackage.create(stringlist: TStringList; Parent: TWinControl;  i: Integer = 1);
begin
  If stringlist <> nil then
  Begin
    VCFEventsFound := 0;
    DateFrmat.DateSeparator := '\';
    DateFrmat.ShortDateFormat := 'yyyy\MM\dd';
    DateFrmat.LongDateFormat := 'yyyy\MM\dd';
    DateFrmat.TimeSeparator := '-';
    DateFrmat.ShortTimeFormat := 'hh-mm-ss tt';
    DateFrmat.LongTimeFormat := 'hh-mm-ss tt';
    aMemo := TStringList.create;
    aMemo := stringlist;;
    aList := TStringList.create;
    readMemo;
  end;
end;
destructor TVCFPackage.Destroy;
begin
  aList.Free;
  inherited;
end;
function TVCFPackage.getVCFList: TStringList;
begin
  Result := aList;
end;
function TVCFPackage.getModified: Boolean;
begin
  Result := aChanged;
end;
procedure TVCFPackage.MatStringDelete(var StrLine: String; SubtractStr: String);
begin
  If pos(SubtractStr, StrLine) <> 0 then
  Begin
    Delete(StrLine, 1, length(SubtractStr));
  End;
end;
procedure TVCFPackage.MatStringDelete2End(var StrLine: String;  SubtractStr: String);
begin
  If pos(SubtractStr, StrLine) <> 0 then
  Begin
    Delete(StrLine, pos(SubtractStr, StrLine), 5000);
  End;
end;
procedure TVCFPackage.MatStringDeleteUp2(var StrLine: String;  SubtractStr: String);
begin
  If pos(SubtractStr, StrLine) <> 0 then
  Begin
    Delete(StrLine, 1, pos(SubtractStr, StrLine));
  End;
end;
procedure TVCFPackage.readMemo;
Var
  i, z, NextLine: Integer;
  s,  s2: String;
  s1: string;
  CanAdd: Boolean;
  aData: rVCFItem;
begin
  aData:= nil;
  CanAdd := False;
  i := -1;
  While i < aMemo.Count do
  Begin
    inc(i);
    NextLine := i + 1;
    s := aMemo.Strings[i];
    for z := 1 to length(s) do
    begin
      s2 := Copy(s, 1, 1);
      if s2 = ' ' then
        s := Copy(s, 2, length(s))
    end;
    s1 := s;

    if pos('BEGIN:VEVENT', s) > 0 then
    begin
      inc(VCFEventsFound);
      CanAdd := true;
      aData := rVCFItem.create;
      aList.AddObject(IntToStr(i), aData);
    end
    else if pos('END:VEVENT', s) > 0 then
    begin
      CanAdd := False;
      If aData.DtEndd < aData.DTStartd then
        aData.DtEndd := aData.DTStartd + 0.0002;
    end;
    if CanAdd = true then
    begin
      If pos('DTSTART', s) > 0 then
      begin
        MatStringDeleteUp2(s1, ':');
        aData.DTStartd := convertDate(s1);
        aData.DTSTART := s1;
      end
      Else If pos('DTSTART;VALUE=DATE:', s) > 0 then
      begin
        MatStringDelete(s1, 'DTSTART;VALUE=DATE:');
        aData.DTStartd := convertDate(s1);
        aData.DTSTART := s1;
        aData.DtEndd := convertDate(s1);
        aData.DTEND := s1;
      end
      else If pos('DTEND;VALUE=DATE:', s) > 0 then
      begin
        MatStringDelete(s1, 'DTEND;VALUE=DATE:');
        aData.DtEndd := convertDate(s1);
        aData.DTEND := s1;
      end
      else If pos('DTEND', s) > 0 then
      begin
        MatStringDeleteUp2(s1, ':');
        aData.DtEndd := convertDate(s1);
        aData.DTEND := s1;
      end
      Else If pos('SUMMARY:', s) > 0 then
      begin
        MatStringDelete(s1, 'SUMMARY:');
        MatStringDelete(s1, ';LANGUAGE=de-DE:');
        aData.SUMMARY := AnsiString(s1);
        s1 := aMemo.Strings[NextLine];
      end
      Else If pos('SUMMARY', s) > 0 then
      begin
        MatStringDelete(s1, 'SUMMARY');
        MatStringDelete(s1, ';LANGUAGE=de-DE:');
        aData.SUMMARY := AnsiString(s1);;
        s1 := aMemo.Strings[NextLine];
      end
      else If pos('CLASS:', s) > 0 then
      begin
        MatStringDelete(s1, 'CLASS:');
        aData.aCLASS := s1;
      end
      Else If pos('DESCRIPTION:', s) > 0 then
      begin
        MatStringDelete(s1, 'DESCRIPTION:');
        MatStringDelete(s1, ';LANGUAGE=de-DE:');
        aData.DESCRIPTION := AnsiString(s1);
        s1 := aMemo.Strings[NextLine];
      end
      Else If pos('DESCRIPTION', s) > 0 then
      begin
        MatStringDelete(s1, 'DESCRIPTION');
        MatStringDelete(s1, ';LANGUAGE=de-DE:');
        aData.DESCRIPTION := AnsiString(s1);;
        s1 := aMemo.Strings[NextLine];
      end
      Else If pos('TRANSP:', s) > 0 then
      begin
      end
      ElsE If pos('LAST-MODIFIED:', s) > 0 then
      begin
        MatStringDelete(s1, 'LAST-MODIFIED:');
        aData.LASTMODIFIEDd := convertDate(s1);
        aData.LASTMODIFIED := String(s1);
      end
      Else If pos('UID:', s) > 0 then
      begin
        MatStringDelete(s1, 'UID:');
        aData.UID := s1;
      end
      Else If pos('RRULE:', s) > 0 then
      begin
        MatStringDelete(s1, 'RRULE:');
        aData.Rule := s1;
      end
      Else If pos('DTSTAMP:', s) > 0 then
      begin
        MatStringDelete(s1, 'DTSTAMP:');
        aData.DTSTAMPd := convertDate(s1);
        aData.DTSTAMP := s1;
      end
      Else If pos('ORGANIZER;', s) > 0 then
      begin
        MatStringDelete(s1, 'ORGANIZER;');
        aData.ORGANIZER := s1;
      end
      Else If pos('CREATED:', s) > 0 then
      begin
        MatStringDelete(s1, 'CREATED:');
        aData.CREATEDd := convertDate(s1);
        aData.CREATED := s1;
      end
      Else If pos('LOCATION:', s) > 0 then
      begin
        MatStringDelete(s1, 'LOCATION:');
        MatStringDelete(s1, ';LANGUAGE=de-DE:');
        aData.LOCATION := AnsiString(s1);;
        s1 := aMemo.Strings[NextLine];
      end
      Else If pos('LOCATION', s) > 0 then
      begin
        MatStringDelete(s1, 'LOCATION');
        MatStringDelete(s1, ';LANGUAGE=de-DE:');
        aData.LOCATION := AnsiString(s1);
        s1 := aMemo.Strings[NextLine];
      end
      Else If pos('SEQUENCE:', s) > 0 then
      begin
        MatStringDelete(s1, 'SEQUENCE:');
        aData.SEQUENCE := s1;
      end
      Else If pos('STATUS:', s) > 0 then
      begin
        MatStringDelete(s1, 'STATUS:');
        aData.STATUS := s1;
      end
      Else If pos('TRANSP:', s) > 0 then
      begin
        MatStringDelete(s1, 'TRANSP:');
        aData.TRANSP := s1;
      end
      Else If pos('TZOFFSETFROM:', s) > 0 then
      begin
        MatStringDelete(s1, 'TZOFFSETFROM:');
        aData.TZOFFSETFROM := s1;
      end
      Else If pos('TZOFFSETTO:', s) > 0 then
      begin
        MatStringDelete(s1, 'TZOFFSETTO:');
        aData.TZOFFSETTO := s1;
      end
      Else If pos('TZNAME:', s) > 0 then
      begin
        MatStringDelete(s1, 'TZNAME:');
        aData.TZNAME := s1;
      end;
    end;

    If pos('END:VCALENDAR', s) > 0 then
      i := aMemo.Count + 1;
  end;
end;
procedure TVCFPackage.setModified(const Value: Boolean);
begin
  aChanged := Value;
end;
constructor rVCFItem.createVCF;
begin
  inherited;
end;
destructor rVCFItem.DestroyVCF;
begin
  inherited;
end;

end.
