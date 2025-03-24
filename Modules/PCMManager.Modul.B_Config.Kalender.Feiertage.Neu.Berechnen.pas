unit PCMManager.Modul.B_Config.Kalender.Feiertage.Neu.Berechnen;

interface

var
  {$Region Var}
  Feiertag: array[1..366] of ShortInt;
  {$EndRegion Var}
const
  {$Region const}
  Feiertage: array[1..20] of string[25] =
    ('Neujahr', 'Maifeiertag', 'Tag der Deutschen Einheit', 'Allerheiligen',
    'Totensonntag', 'Volkstrauertag', '1. Weihnachtstag', '2. Weihnachtstag',
    'Karfreitag', 'Ostersonntag', 'Ostermontag', 'Christi Himmelfahrt',
    'Pfingstsonntag', 'Pfingstmontag', 'Fronleichnam', 'Heilige 3 Könige',
    'Mariä Himmelfahrt', 'Reformationstag', 'Buß- und Bettag', 'Weltfrauentag');
  Sondertage: array[1..29] of string[25] =
    ('Mariä Lichtmeß', 'Valentinstag', 'Weiberfastnacht', 'Rosenmontag', 'Fastnacht',
    'Aschermittwoch', 'Mariä Verkündigung', 'Palmsonntag', 'Gründonnerstag', 'Muttertag',
    'Peter und Paul', 'Mariä Geburt', 'Erntedankfest', 'Mariä Empfängnis', 'Silvester',
    '1. Advent', '2. Advent', '3. Advent', '4. Advent', 'Heiligabend', 'Frühlingsanfang',
    'Sommmeranfang', 'Herbstanfang', 'Winteranfang', 'Totensonntag', 'Volkstrauertag',
    'Ostersonntag', 'Pfingstsonntag', 'Allerheiligen');
  L_BadenWuerttemberg = 0;
  L_Bayern = 1;
  L_Berlin = 2;
  L_Brandenburg = 3;
  L_Bremen = 4;
  L_Hamburg = 5;
  L_Hessen = 6;
  L_MecklenburgVorpommern = 7;
  L_Niedersachsen = 8;
  L_NordrheinWestfalen = 9;
  L_RheinlandPfalz = 10;
  L_Saarland = 11;
  L_Sachsen = 12;
  L_SachsenAnhalt = 13;
  L_SchleswigHolstein = 14;
  L_Thueringen = 15;
  {$EndRegion const}

procedure FeiertageBerechnen(Land: Integer; Y: word);

implementation

uses
  SysUtils;

procedure FeiertageBerechnen(Land: Integer; Y: word);
  function TagImJahr(Datum: TDateTime): word;
  var
    wTag: word;
    wMonat: word;
    wJahr: word;
    dtErster: TDateTime;
  begin
    try
      DecodeDate(Datum, wJahr, wMonat, wTag);
      dtErster := EncodeDate(wJahr, 1, 1);
      Result := trunc(Datum - dtErster + 1);
    except
      Result := 0;
    end;
  end;
  function OsterSonntag(Y: word): TDateTime;
  var
    ia, ib, ic, id, ie, itag, imonat: integer;
  begin
    ia := y mod 19;
    ib := y mod 4;
    ic := y mod 7;
    id := (19 * ia + 24) mod 30;
    ie := (2 * ib + 4 * ic + 6 * id + 5) mod 7;
    itag := 22 + id + ie;
    imonat := 3;
    if itag > 31 then
    begin
      itag := id + ie - 9;
      imonat := 4;
    end;
    if (itag = 26) and (imonat = 4) then
      itag := 19;
    if (itag = 25) and (imonat = 4) and (id = 28) and (ie = 6) and (ia > 10) then
      itag := 18;
    try
      Result := EncodeDate(y, imonat, itag);
    except
      Result := 0;
    end;
  end;
var
  wD, wdw, wOM, waw: word;
  dtDat: TDateTime;
  dtOstern: TDateTime;
  dtWeihnacht: TDateTime;
begin
  for wD := 1 to 366 do
    Feiertag[wD] := 0;
  dtOstern := OsterSonntag(Y);
  try
    DecodeDate(dtOstern, Y, wOM, wD);
  except
    wOM := 4;
  end;
  try
    dtWeihnacht := EncodeDate(Y, 12, 25);
    if (DayOfWeek(dtWeihnacht) - 1) = 0 then
      wdw := 7
    else
      wdw := DayOfWeek(dtWeihnacht) - 1;
  except
    dtWeihnacht := -1;
    wdw := 0;
  end;
  {Mariä Lichtmeß}{Sondertage}
  dtDat := Encodedate(Y, 2, 2);
  Feiertag[TagImJahr(dtDat)] := -1;
  {Valentinstag}
  dtDat := Encodedate(Y, 2, 14);
  Feiertag[TagImJahr(dtDat)] := -2;
  {Weiberfastnacht}
  dtDat := dtOstern - 45;
  while DayOfWeek(dtDat) <> 2 do
    dtDat := dtDat - 1;
  Feiertag[TagImJahr(dtDat) - 4] := -3;
  {Rosenmontag}
  Feiertag[TagImJahr(dtDat)] := -4;
  {Fastnacht}
  Feiertag[TagImJahr(dtDat) + 1] := -5;
  {Aschermittwoch}
  Feiertag[TagImJahr(dtDat) + 2] := -6;
  {Mariä Verkündigung}
  dtDat := Encodedate(Y, 3, 25);
  Feiertag[TagImJahr(dtDat)] := -7;
  {Palmsonntag}
  Feiertag[TagImJahr(dtOstern) - 7] := -8;
  {Gründonnerstag}
  Feiertag[TagImJahr(dtOstern) - 3] := -9;
  {Muttertag}
  dtDat := EncodeDate(y, 4, 30);
  waw := DayOfWeek(dtDat) - 1;
  dtDat := dtDat - waw + 14;
  if dtDat = (dtOstern + 49) then
    dtDat := dtDat - 7;
  Feiertag[TagImJahr(dtDat)] := -10;
  {Peter und Paul}
  dtDat := Encodedate(Y, 6, 29);
  Feiertag[TagImJahr(dtDat)] := -11;
  {Mariä Geburt}
  dtDat := Encodedate(Y, 9, 8);
  Feiertag[TagImJahr(dtDat)] := -12;
  {Erntedankfest}
  dtDat := Encodedate(Y, 10, 1);
  while DayOfWeek(dtDat) <> 1 do
    dtDat := dtDat + 1;
  Feiertag[TagImJahr(dtDat)] := -13;
  {Mariä Empfängnis}
  dtDat := Encodedate(Y, 12, 8);
  Feiertag[TagImJahr(dtDat)] := -14;
  {Silvester}
  dtDat := Encodedate(Y, 12, 31);
  Feiertag[TagImJahr(dtDat)] := -15;
  {1. Advent}
  dtDat := dtWeihnacht;
  while DayOfWeek(dtDat) <> 1 do
    dtDat := dtDat - 1;
  Feiertag[TagImJahr(dtDat) - 21] := -16;
  {2. Advent}
  Feiertag[TagImJahr(dtDat) - 14] := -17;
  {3. Advent}
  Feiertag[TagImJahr(dtDat) - 7] := -18;
  {4. Advent}
  Feiertag[TagImJahr(dtDat)] := -19;
  {Heiligabend}
  Feiertag[TagImJahr(dtWeihnacht) - 1] := -20;
  {Frühlingsanfang}
  dtDat := Encodedate(Y, 3, 21);
  Feiertag[TagImJahr(dtDat)] := -21;
  {Sommmeranfang}
  dtDat := Encodedate(Y, 6, 21);
  Feiertag[TagImJahr(dtDat)] := -22;
  {Herbstanfang}
  dtDat := Encodedate(Y, 9, 23);
  Feiertag[TagImJahr(dtDat)] := -23;
  {Winteranfang}
  dtDat := Encodedate(Y, 12, 22);
  Feiertag[TagImJahr(dtDat)] := -24;
  {Neujahr}{Feiertage}
  Feiertag[1] := 1;
  {Maifeiertag}
  dtDat := Encodedate(Y, 5, 1);
  Feiertag[TagImJahr(dtDat)] := 2;
  {Tag der deutschen Einheit}
  dtDat := Encodedate(Y, 10, 3);
  Feiertag[TagImJahr(dtDat)] := 3;
  {Allerheiligen}
  dtDat := Encodedate(Y, 11, 1);
  // 6.0.0.38
  if (Land = L_BadenWuerttemberg) or (Land = L_Bayern) or (Land = L_Brandenburg) or
     (Land = L_NordrheinWestfalen) or (Land = L_RheinlandPfalz) or (Land = L_Saarland) then
    Feiertag[TagImJahr(dtDat)] := 4
  else
    Feiertag[TagImJahr(dtDat)] := -29;

  {Totensonntag}
  if dtWeihnacht >= 0 then
    // 6.0.0.38
    //Feiertag[TagImJahr(dtWeihnacht - wdw - 28)] := 5;
    Feiertag[TagImJahr(dtWeihnacht - wdw - 28)] := -25;
  {Buß- und Bettag}
  if Land = 12 then
    Feiertag[TagImJahr(dtWeihnacht - wdw - 32)] := 19;
  {Volkstrauertag}
  if dtWeihnacht >= 0 then
    // 6.0.0.38
    //Feiertag[TagImJahr(dtWeihnacht - wdw - 35)] := 6;
    Feiertag[TagImJahr(dtWeihnacht - wdw - 35)] := -26;
  {1. Weihnachtstag}
  if dtWeihnacht >= 0 then
    Feiertag[TagImJahr(dtWeihnacht)] := 7;
  {2. Weihnachtstag}
  if dtWeihnacht >= 0 then
    Feiertag[TagImJahr(dtWeihnacht) + 1] := 8;
  {Karfreitag}
  Feiertag[TagImJahr(dtOstern) - 2] := 9;
  {Ostersonntag}
  // 6.0.0.38
  if Land = L_Brandenburg then
    Feiertag[TagImJahr(dtOstern)] := 10
  else
    Feiertag[TagImJahr(dtOstern)] := -27;
  {Ostermontag}
  Feiertag[TagImJahr(dtOstern) + 1] := 11;
  {Christi Himmelfahrt}
  Feiertag[TagImJahr(dtOstern) + 39] := 12;
  {Pfingstsonntag}
  if Land = L_Brandenburg then
    Feiertag[TagImJahr(dtOstern) + 49] := 13
  else
    Feiertag[TagImJahr(dtOstern) + 49] := -28;
  {Pfingstmontag}
  Feiertag[TagImJahr(dtOstern) + 50] := 14;
  {Fronleichnam}
  if (Land < L_Berlin) or ((Land >= L_NordrheinWestfalen) and (Land <= L_Sachsen))
    or (Land = L_Thueringen) or (Land = L_Hessen) then
    Feiertag[TagImJahr(dtOstern) + 60] := 15;
  {Heilige 3 Könige}
  if (Land = L_BadenWuerttemberg) or (Land = L_Bayern) or (Land = L_SachsenAnhalt) then
    Feiertag[6] := 16;
  {Mariä Himmelfahrt}
  if (Land = L_Bayern) or (Land = L_Saarland) then
  begin
    dtDat := Encodedate(Y, 8, 15);
    Feiertag[TagImJahr(dtDat)] := 17;
  end;
  {Reformationstag}
  if ((Land = L_Brandenburg) or (Land = L_MecklenburgVorpommern)
    or (Land = L_Sachsen) or (Land = L_SachsenAnhalt) or (Land = L_Thueringen)
    // Ab 2018 Feiertag in folgenden Bundesländern
    or ((Y >= 2018) AND ((Land = L_Niedersachsen) or (Land = L_Bremen)or (Land = L_SchleswigHolstein) or (Land = L_Hamburg))))
    or (Y = 2017) then
  begin
    dtDat := Encodedate(Y, 10, 31);
    Feiertag[TagImJahr(dtDat)] := 18;
  end;

  // WeltfrauenTag mit aufnehmen / Bundesland Feiertag prüfen ggf. erweitern
end;

end.
