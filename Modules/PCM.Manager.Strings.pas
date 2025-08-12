unit PCM.Manager.Strings;

interface

uses
  {$Region uses}
  Classes,
  SysUtils,
  Windows;
  {$EndRegion uses}
// allgemein
resourcestring
  rs_general_BTN_Ok = '&Ok';
  rs_general_BTN_Yes = '&Ja';
  rs_general_BTN_No = '&Nein';
  rs_general_BTN_Cancel = '&Abbrechen';
  rs_Function_Wait_FormCaption = 'Formular wird geladen';
  rs_Function_Benutzer_Benutzer = 'Benutzer';
  rs_PCM_Januar = 'Januar';
  rs_PCM_Februar ='Februar';
  rs_PCM_Maerz ='März';
  rs_PCM_April ='April';
  rs_PCM_Mai ='Mai';
  rs_PCM_Juni ='Juni';
  rs_PCM_Juli ='Juli';
  rs_PCM_August ='August';
  rs_PCM_September ='September';
  rs_PCM_Oktober ='Oktober';
  rs_PCM_November ='November';
  rs_PCM_Dezember ='Dezember';
  rs_PCM_Uebersicht = 'Übersicht ';
  rs_PCM_Beschreibung = 'Beschreibung';
  rs_PCM_Betrag = 'Betrag';
  rs_PCM_FixBetrag = 'Fixbetrag';
  rs_PCM_FixKosten = 'Fixkosten';
  rs_PCM_Monat = 'Monat';
  rs_PCM_Jahr = 'Jahr';
  rs_PCM_Absender =  'Absender';
  rs_PCM_Bezeichnung = 'Bezeichnung';
  rs_PCM_Passwort = 'Passwort';
  rs_PCM_ersten = 'ersten';
  rs_PCM_zweiten = 'zweiten';
  rs_PCM_dritten = 'dritten';
  rs_PCM_vierten = 'vierten';
  rs_PCM_letzten = 'letzen';
  rs_PCM_Tag = 'Tag';
  rs_PCM_Beginn = 'Beginn';
  rs_PCM_Dienstag = 'Dienstag';
  rs_PCM_Donnerstag = 'Donnerstag';
  rs_PCM_EndeZeit = 'Ende';
  rs_PCM_Freitag = 'Freitag';
  rs_PCM_Mittwoch = 'Mittwoch';
  rs_PCM_Montag = 'Montag';
  rs_PCM_Samstag = 'Samstag';
  rs_PCM_Sonntag = 'Sonntag';
  rs_PCM_Wochentag = 'Wochentag';
  rs_PCM_Wochenend_Tag = 'Wochenend-Tag';
  rs_PCM_Kalender = 'Kalender';
  rs_PCM_Fehler = 'Fehler: ';
  rs_PCM_Modulliste_verstecken = 'Modulliste verstecken';
  rs_PCM_Modulliste_anzeigen = 'Modulliste anzeigen';
  rs_PCM_Benutzerverwaltung ='Benutzerverwaltung';  // neue Unit
  rs_PCM_Konfiguration = 'Konfiguration'; // neue Unit
  rs_PCM_Design = 'Design'; // neue Unit
  rs_PCM_Systeminformation = 'Systeminformation'; // neue Unit
  rs_PCM_Programminfo = 'Programminfo'; // neue Unit
  rs_PCM_Handbuch = 'Handbuch';                      // neue Unit
  rs_PCM_Start = 'Programm gestartet'; // neue Unit
  rs_PCM_Beenden = 'Programm beendet'; // neue Unit
  rs_PCMLizenzgenerator_KundeStrasse = 'Straße';
  rs_PCMLizenzgenerator_KundePLZ = 'PLZ';
  rs_PCMLizenzgenerator_KundeORT = 'Ort';
  rs_PCMManager_KeineVerbindung = 'Verbindung mit Outlook kann nicht hergestellt werden. Grund: ';
  rs_PCMManager_Namespace = 'Namespace ermitteln';
  rs_PCMManager_CalendarsRoot = 'CalendarsRoot ermitteln: ';
  rs_PCMManager_ContactsRootErmitteln = 'ContactsRoot ermitteln: ';
  rs_PCMManager_NamespaceErmitteln = 'Namespace konnt nicht ermittelt werden. Grund: ';
  rs_PCMManager_CalendarsRootErmitteln = 'CalendarsRoot konnte nicht ermittelt werden. Grund: ';
  rs_PCMManager_TerminenichtErmitteln = 'Termine konnten nicht importiert werden. Grund: ';
  rs_PCMManager_AufgabennichtErmitteln = 'Aufgaben konnten nicht importiert werden. Grund: ';
  rs_PCMManager_OutlookVerbinden = 'Mit Outlook verbinden';
  rs_PCMManager_Kontakt = 'Kontakte';
  rs_PCMManager_Kontakte = 'Kontakte: ';
  rs_PCMManager_Terminealle = 'Termine alle: ';
  rs_PCMManager_Aufgaben = 'Aufgaben: ';
  rs_PCMManager_DatumUngueltig = 'Datum ungültig. ';
  rs_PCMManager_DatumVonBis = 'Bitte geben Sie ein "Von"- und ein "Bis"-Datum an.';
  rs_PCMManager_DatumBisVon ='Das Beginn-Datum muss vor dem Ende-Datum liegen.';
  rs_PCMManager_AufgabenArtWaehlen = 'Bitte wählen Sie eine Aufgaben-Art aus.';
  rs_PCMManager_BetreffEingeben = 'Bitte geben Sie einen Betreff ein.';
  rs_PCMManager_EndeInVergangenheit = 'Das Ende des Termins / der Aufgabe darf nicht in der Vergangenheit liegen.';
  rs_PCMManager_AufgabeInVergangenheit = 'Die Aufgabe ist in der Vergangenheit fällig! Möchten Sie wirklich fortfahren?';
  rs_PCMManager_FaelligkeitStandard = 'Die Fälligkeit entspricht nicht der hinterlegten Standardfälligkeit von ';
  rs_PCMManager_FaelligkeitStandardTage = ' Tagen. ';
  rs_PCMManager_Fortfahren = 'Möchten Sie wirklich fortfahren?';
  rs_PCMManager_Faelligkeit4Stunden = 'Die Aufgabe ist in weniger als 4 Stunden fällig. ';
  rs_PCMManager_Erledigungsgrad1 = 'Wenn der Erledigungsgrad auf 100% gesetzt wird, wird die Aufgabe oder der Termin ';
  rs_PCMManager_Erledigungsgrad2 = 'nach dem Speichern als ''Bearbeitet'' gekennzeichnet.';
  rs_PCMManager_Erledigungsgrad3 = 'Aufgabe erledigt?';
  rs_PCMManager_Eintraegenichterledigt1 = 'Einträge sind noch nicht als gelesen markiert. ';
  rs_PCMManager_Eintraegenichterledigt2 = 'Möchten Sie die ';
  rs_PCMManager_Eintraegenichterledigt3 = ' Einträge wirklich als Bearbeitet markieren?';
  rs_PCMManager_Eintragnichterledigt1 = 'Der Eintrag ist noch nicht als gelesen markiert. ' ;
  rs_PCMManager_Eintragnichterledigt2 = 'Möchten Sie ihn wirklich als Bearbeitet markieren?';
  rs_PCMManager_AlsBearbeitet = 'Als Bearbeitet markieren';
	rs_PCMManager_Feiertageintragen = 'Feiertag eintragen';
	rs_PCMManager_KontakteImportieren = 'Kontakte importieren';
	rs_PCMManager_TermineImportieren = 'Termine importieren';
	rs_PCMManager_TermineLoeschen = 'Termine aus Outlook löschen';
	rs_PCMManager_AufgabenLoeschen = 'Aufgaben aus Outlook löschen';
	rs_PCMManager_AufgabenImportieren = 'Aufgaben importieren';
  rs_PCMManager_Finanzuebersicht = 'Finanzübersicht';
  rs_PCMManager_EMails = 'E-Mails';
  rs_PCMManager_KalenderStundenplan = 'Kalender / Aufgaben / Stundenplan';
  rs_PCMManager_Passwoerter_Serialkeys = 'Passwörter / Serialkeys';
  rs_PCMManager_GridExport1 = 'Daten wurden in ';
  rs_PCMManager_GridExport2 = ' exportiert';
  rs_PCMManager_AusgabenEmpfaenger = 'Empfänger';
  rs_PCMManager_Verwendungszweck = 'Verwendungszweck';
  rs_PCMManager_Monatwaehlen = 'Bitte Monat wählen.';
  rs_PCMManager_Jahrwaehlen = 'Bitte Jahr wählen.';
  rs_PCMManager_SerialTyp = 'Programmtyp';
  rs_PCMManager_Serial = 'Serial';
  rs_PCMManager_Link = 'Link';
  rs_PCMManager_AdresseWaehlen = 'Bitte wählen Sie eine Adresse aus.';
  rs_PCMManager_Bundeslandwaehlen = 'Bitte wählen Sie ain Bundesland aus.';
  rs_PCMManager_Undefiniert = 'Undefiniert';
  rs_PCMManager_posteingangerfolgreich = 'Posteingang: Verbindung erfolgreich';
  rs_PCMManager_posteingangnichterfolgreich = 'Posteingang: Einstellungen für den Posteingang prüfen';
  rs_PCMManager_Testmail = 'Testmail';
  rs_PCMManager_TestmailBody = 'Das ist eine Testmail';
  rs_PCMManager_postausgangerfolgreich = 'Postausgang: E-Mail erfolgreich versendet.';
  rs_PCMManager_postausgangnichterfolgreich = 'Postausgang: Einstellungen für den Postausgang prüfen';
  rs_PCMManager_OrdnerNichtGelesen = 'Order können nicht ausgelesen werden.';
  rs_PCMManager_Konfession = 'Konfession';
  rs_PCMManager_Vorname = 'Bitte Vorname eingeben!';
  rs_PCMManager_nachname = 'Bitte Nachname eingeben!';
  rs_PCMManager_Anrede = 'Anrede';
  rs_PCMManager_Vorname1 = 'Vorname';
  rs_PCMManager_Nachname1 = 'Nachname';
  rs_PCMManager_Geburtsname = 'Geburtsname';
  rs_PCMManager_Geburtsland = 'Geburtsland';
  rs_PCMManager_Zusatz = 'Zusatz';
  rs_PCMManager_Bild = 'Bild';
  rs_PCMManager_StrassePrivat = 'Strasse Privat';
  rs_PCMManager_PlzPrivat = 'PLZ Privat';
  rs_PCMManager_OrtPrivat = 'Ort Privat';
  rs_PCMManager_Kontaktart = 'Kontaktart';
  rs_PCMManager_TelefonPrivat = 'Telefon Privat';
  rs_PCMManager_TelefonPrivat1 = 'Telefon Privat 1';
  rs_PCMManager_HandyPrivat = 'Handy Privat';
  rs_PCMManager_MailPrivat = 'E-Mail Privat';
  rs_PCMManager_MailPrivat1 = 'E-Mail Privat 1';
  rs_PCMManager_InternetPrivat = 'Internet Privat';
  rs_PCMManager_Geburtsdatum = 'Geburtsdatum';
  rs_PCMManager_Geschlecht = 'Geschlecht';
  rs_PCMManager_Familienstand = 'Familienstand';
  rs_PCMManager_Staatsangehoerigkeit = 'Staatsangehörigkeit';
  rs_PCMManager_Info = 'Info';
  rs_PCMManager_Firma = 'Firma';
  rs_PCMManager_StrasseGes = 'Strasse Geschäftlich';
  rs_PCMManager_PLZGes = 'PLZ Geschäftlich';
  rs_PCMManager_OrtGes = 'Ort Geschäftlich';
  rs_PCMManager_Abteilung = 'Abteilung';
  rs_PCMManager_Funktion = 'Funktion';
  rs_PCMManager_Zentrale = 'Zentrale';
  rs_PCMManager_Durchwahl = 'Durchwahl';
  rs_PCMManager_HandyGes = 'Handy Geschäftlich';
  rs_PCMManager_MailGes = 'E-Mail Geschäftlich';
  rs_PCMManager_InternetGes = 'Internet Geschäftlich';
  rs_PCMManager_KeineKontakte = 'Keine Kontakte gefunden!';
  rs_PCMManager_Konfessionbearbeiten =  'Konfession bearbeiten';
  rs_PCMManager_Staatsangehoerigkeitbearbeiten = 'Staatsangehörigkeit bearbeiten';
  rs_PCMManager_KontakteinVCard = 'Kontakte in VCard exportiert';
  rs_PCMManager_Dateiwaehlen = 'Bitte Datei auswählen.';
  rs_PCMManager_alleTage = 'alle %d Tage';
  rs_PCMManager_jedenTag = 'jeden Tag';
  rs_PCMManager_Kalendername = 'Kalendername';
  rs_PCMManager_TagjedesMonats = 'Tag %d jedes %d Monats';
  rs_PCMManager_TagjedenMonats = 'Tag %d jeden Monats';
  rs_PCMManager_denjedesMonats = 'den %s %s jedes %d Monats';
  rs_PCMManager_denjedenMonats = 'den %s %s jeden Monats';
  rs_PCMManager_DauerMin = 'Dauer (Min.):';
  rs_PCMManager_DauerStd = 'Dauer (Std.):';
  rs_PCMManager_DauerTag = 'Dauer (Tag):';
  rs_PCMManager_Nachrichtbearbeiten = 'Nachricht bearbeiten';
  rs_PCMManager_Aufgabebearbeiten = 'Aufgabe bearbeiten';
  rs_PCMManager_artderAufgabe = 'Art der Aufgabe:';
  rs_PCMManager_anAufgabeerinnern = 'an die Aufgabe erinnern:';
  rs_PCMManager_Aufgabenstatus =  'Aufgabenstatus:';
  rs_PCMManager_vorAufgabe = 'vor der Aufgabe';
  rs_PCMManager_Terminbearbeiten = 'Termin bearbeiten';
  rs_PCMManager_ArtTermin = 'Art des Termin:';
  rs_PCMManager_anTerminerinnern = 'an den Termin erinnern:';
  rs_PCMManager_Terminstatus = 'Terminstatus:';
  rs_PCMManager_vorTermin = 'vor dem Termin';
  rs_PCMManager_Kalendereingebn = 'Bitte Kalendername eingeben.';
  rs_PCMManager_Betreff = 'Betreff';
  rs_PCMManager_GelesenAM = 'Gelesen am';
  rs_PCMManager_GesendetAm = 'Gesendet am';
  rs_PCMManager_Adresse = 'Adresse';
  rs_PCMManager_Ansprechpartner = 'Ansprechpartner';
  rs_PCMManager_JiraTicket = 'Jira Ticket';
  rs_PCMManager_Status = 'Status';
  rs_PCMManager_Typ = 'Typ';
  rs_PCMManager_Klasse = 'Klasse';
  rs_PCMManager_Schule = 'Schule';
  rs_PCMManager_SchulJahr = 'Schuljahr';
  rs_PCMManager_Absender = 'Absender';
  rs_PCMManager_Erhalten = 'Erhalten am';
  rs_PCMManager_Groeße = 'Größe';
  rs_PCMManager_KalenderTag = 'Terminkalender - Tagesansicht';
  rs_PCMManager_KalenderWoche = 'Terminkalender - Wochenansicht';
  rs_PCMManager_KalenderMonat = 'Terminkalender - Monatsansicht';
  rs_PCMManager_Kalenderjahr = 'Terminkalender - Jahresansicht';
  rs_PCMManager_Kalenderagenda = 'Terminkalender - Agendaansicht';
  rs_PCMManager_aktAufgaben = 'aktuelle Aufgaben';
  rs_PCMManager_bearbAufgaben = 'bearbeitete Aufgaben';
  rs_PCMManager_normAnsicht = 'norm. Ansicht';
  rs_PCMManager_maxAnsicht = 'max. Ansicht';
  rs_PCMManager_ArbWocheZurueck = 'Eine Arbeitswoche zurück springen';
  rs_PCMManager_ArbWocheVor = 'Eine Arbeitswoche vor springen';
  rs_PCMManager_JahrZurueck = 'Ein Jahr zurück springen';
  rs_PCMManager_JahrVor = 'Ein Jahr vor springen';
  rs_PCMManager_MonatZurueck = 'Einen Monat zurück springen';
  rs_PCMManager_MonatVor = 'Einen Monat vor springen';
  rs_PCMManager_TagZurueck = 'Einen Tag zurück springen';
  rs_PCMManager_TagVor = 'Einen Tag vor springen';
  rs_PCMManager_WocheZurueck = 'Eine Woche zurück springen';
  rs_PCMManager_WocheVor = 'Eine Woche vor springen';
  rs_PCMManager_Terminopen = 'Termin öffnen';
  rs_PCMManager_Adresseengefunden = ' Adressen gefunden!';
  rs_PCMManager_Aufgaben1 = 'Aufgaben';
  rs_PCMManager_Stundenplan = 'Stundenplan';
  rs_PCMManager_MSGDeleteevent = 'Möchten sie den Termin wirklich löschen?';
  rs_PCMManager_MSChooseEevent = 'Bitte einen Termin auswählen!';
  rs_PCMManager_MSChooseMailbox = 'Bitte Ordner auswählen!';
  rs_PCMManager_MSGFehler = 'Fehler:';
  rs_PCMManager_AdressIncomplete ='Adresse unvollständig';
  rs_PCMManager_APPIPAdresse = 'APP IP-Adresse:';
  rs_PCMManager_VPNIPAdresse = 'VPN IP-Adresse:';
  rs_PCMManager_Verbundenmit = 'Verbunden mit ';
  rs_PCMManager_Ordnerwerdeneingelesen = 'Ordner werden eingelesen...';
  rs_PCMManager_AnzahlElemente = 'Anzahl Elemente: %d';
  rs_PCMManager_AnzahlungelesenerElemente = 'Anzahl ungelesener Elemente: %d';
  rs_PCMManager_Uebermittlungabgeschlossen = 'Übermittlung abgeschlossen      ';
  rs_PCMManager_EmailDownload ='E-Mail wird heruntergeladen...';
  rs_PCMManager_EmailRefresh = 'E-Mails aktualisieren...';
  rs_PCMManager_StatuswithValue = 'Übermittlungsstatus %d';
  rs_PCMManager_StatuswithoutValue = 'Übermittlungsstatus: ';
  rs_PCMManager_StatuswithoutValue1 = ' von ';
  rs_PCMManager_StatuswithoutValue2 = ' Mails verarbeitet';
  rs_PCMManager_Flagread = 'gelesen';
  rs_PCMManager_Flagunread = 'ungelesen';
  rs_PCMManager_PushChange = ' wurde geändert';
  rs_PCMManager_PushNewChange = ' wurde angelegt';
  rs_PCMManager_PushVon = ' von  ';
  rs_PCMManager_PushBis = ' bis ';
  rs_PCMManager_PushAufgabe = 'Aufgabe ';
  rs_PCMManager_PushNachricht = 'Nachricht ';
  rs_PCMManager_PushNeue = 'Neue ';
  rs_PCMManager_PushNeuer = 'Neuer ';
  rs_PCMManager_Tag = 'Tag ';
  rs_PCMManager_Woche = 'Woche ';
  rs_PCMManager_ArbeitsWoche = 'Arbeitswoche ';
  rs_PCMManager_Monat = 'Monat ';
  rs_PCMManager_Jahr = 'Jahr ';
  rs_PCMManager_Vor = 'vor';
  rs_PCMManager_zurueck = 'zurück';
  rs_PCMManager_Vorname2 = 'Vorname:';
  rs_PCMManager_Nachname2 = 'Nachname:';
  rs_PCMManager_Firma2 = 'Firma:';
  rs_PCMManager_Ort2 = 'Ort:';
  rs_PCMService_Termin1 = 'Termin ';
	rs_PCMService_QuellVerzeichnis = 'Bitte Quell-Verzeichnis wählen';
type
  {$Region type}
  TResourceStringID = Pointer;

  TResOriginalStrings = class(TStringList)
  public
    constructor Create;
  end;
  {$EndRegion type}
var
  {$Region var}
  FResOriginalStrings: TResOriginalStrings = nil;
  FResStrings: TStringList = nil;
  FUseResCache: Boolean = true;
  {$EndRegion var}
Const
  {$Region const}
  SetNone = 0;
  SetRead = 1;
  SetReadWrite = 2;
  SetComplete = 3;
  {$EndRegion const}
// Deklarationen
{$Region Deklarationen}
procedure initNewLanguage(locale: LCID);
procedure CreateResStringLists;
procedure DestroyResStringLists;
procedure ClearResourceStrings;
function GetResourceString(AResString: TResourceStringID): string;
{$EndRegion Deklarationen}
implementation
// Deklarationen
{$Region Prozeduren}
constructor TResOriginalStrings.Create;
begin
  inherited Create;
  CaseSensitive := True;
end;
procedure ClearResourceStrings;
begin
  if FResStrings <> nil then
    FResStrings.Clear;
  if FResOriginalStrings <> nil then
    FResOriginalStrings.Clear;
end;
procedure CreateResStringLists;
begin
  FResOriginalStrings := TResOriginalStrings.Create;
  FResStrings := TStringList.Create;
end;
procedure DestroyResStringLists;
begin
  FreeAndNil(FResOriginalStrings);
  FreeAndNil(FResStrings);
end;
function GetResOriginalStringIndex(AResString: TResourceStringID): Integer;
begin
  Result := FResOriginalStrings.IndexOfObject(TObject(AResString));
end;
procedure SetResourceString(AResString: TResourceStringID; const Value: string);
var
  AIndex: Integer;
begin
  AIndex := GetResOriginalStringIndex(AResString);
  if AIndex <> -1 then
    FResStrings[AIndex] := Value
  else
  begin
    FResOriginalStrings.AddObject(LoadResString(AResString), TObject(AResString));
    FResStrings.Add(Value);
  end;
end;
function GetResourceString(AResString: TResourceStringID): string;
var
  AIndex: Integer;
begin
  if FUseResCache then
  begin
    AIndex := GetResOriginalStringIndex(AResString);
    if AIndex <> -1 then
    begin
      Result := FResStrings[AIndex]
    end
    else
    begin
      Result := LoadResString(AResString);
      SetResourceString(AResString, Result);
    end;
  end
  else
    Result := LoadResString(AResString);
end;
procedure initNewLanguage(locale: LCID);
begin
  ClearResourceStrings;
end;
{$EndRegion Prozeduren}
initialization
  CreateResStringLists;
finalization
  DestroyResStringLists;
end.
