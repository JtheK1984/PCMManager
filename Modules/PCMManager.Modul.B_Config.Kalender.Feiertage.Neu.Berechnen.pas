unit PCMManager.Modul.B_Config.Kalender.Feiertage.Neu.Berechnen;

interface


var
  Feiertag: array[1..366] of ShortInt;

const
{
  Feiertage: array[1..19] of string[25] =
    ('Neujahr', 'Maifeiertag', 'Tag der Deutschen Einheit', 'Allerheiligen',
    'Totensonntag', 'Volkstrauertag', '1. Weihnachtstag', '2. Weihnachtstag',
    'Karfreitag', 'Ostersonntag', 'Ostermontag', 'Christi Himmelfahrt',
    'Pfingstsonntag', 'Pfingstmontag', 'Fronleichnam', 'Heilige 3 Könige',
    'Mariä Himmelfahrt', 'Reformationstag', 'Buß- und Bettag');
  Sondertage: array[1..24] of string[25] =
    ('Mariä Lichtmeß', 'Valentinstag', 'Weiberfastnacht', 'Rosenmontag', 'Fastnacht',
    'Aschermittwoch', 'Mariä Verkündigung', 'Palmsonntag', 'Gründonnerstag', 'Muttertag',
    'Peter und Paul', 'Mariä Geburt', 'Erntedankfest', 'Mariä Empfängnis', 'Silvester',
    '1. Advent', '2. Advent', '3. Advent', '4. Advent', 'Heiligabend', 'Frühlingsanfang',
    'Sommmeranfang', 'Herbstanfang', 'Winteranfang');
}
// 6.0.0.38 'Totensonntag', 'Volkstrauertag', 'Ostersonntag', 'Pfingstsonntag', 'Allerheiligen'
// in Array Sondertage hinzugefügt

  Feiertage: array[1..19] of string[25] =
    ('Neujahr', 'Maifeiertag', 'Tag der Deutschen Einheit', 'Allerheiligen',
    'Totensonntag', 'Volkstrauertag', '1. Weihnachtstag', '2. Weihnachtstag',
    'Karfreitag', 'Ostersonntag', 'Ostermontag', 'Christi Himmelfahrt',
    'Pfingstsonntag', 'Pfingstmontag', 'Fronleichnam', 'Heilige 3 Könige',
    'Mariä Himmelfahrt', 'Reformationstag', 'Buß- und Bettag');
  Sondertage: array[1..29] of string[25] =
    ('Mariä Lichtmeß', 'Valentinstag', 'Weiberfastnacht', 'Rosenmontag', 'Fastnacht',
    'Aschermittwoch', 'Mariä Verkündigung', 'Palmsonntag', 'Gründonnerstag', 'Muttertag',
    'Peter und Paul', 'Mariä Geburt', 'Erntedankfest', 'Mariä Empfängnis', 'Silvester',
    '1. Advent', '2. Advent', '3. Advent', '4. Advent', 'Heiligabend', 'Frühlingsanfang',
    'Sommmeranfang', 'Herbstanfang', 'Winteranfang', 'Totensonntag', 'Volkstrauertag',
    'Ostersonntag', 'Pfingstsonntag', 'Allerheiligen');


const
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

function TagImJahr(Datum: TDateTime): word;
procedure FeiertageBerechnen(Land: Integer; Y: word);

implementation

uses
  SysUtils;

function TagImJahr(Datum: TDateTime): word;
var
  T, M, J: word;
  Erster: TDateTime;
begin
  try
    DecodeDate(Datum, J, M, T);
    Erster := EncodeDate(J, 1, 1);
    Result := trunc(Datum - Erster + 1);
  except
    Result := 0;
  end;
end;
procedure FeiertageBerechnen(Land: Integer; Y: word);
var
  D, dw, OM, aw: word;
  Dat: TDateTime;
  Ostern: TDateTime;
  Weihnacht: TDateTime;

  function OsterSonntag(Y: word): TDateTime;
  var
    a, b, c, d, e, tag, monat: integer;
  begin
    a := y mod 19;
    b := y mod 4;
    c := y mod 7;
    d := (19 * a + 24) mod 30;
    e := (2 * b + 4 * c + 6 * d + 5) mod 7;
    Tag := 22 + d + e;
    monat := 3;
    if Tag > 31 then
    begin
      tag := d + e - 9;
      monat := 4;
    end;
    if (tag = 26) and (monat = 4) then
      tag := 19;
    if (tag = 25) and (monat = 4) and (d = 28) and (e = 6) and (a > 10) then
      tag := 18;
    try
      Result := EncodeDate(y, monat, tag);
    except
      Result := 0;
    end;
  end;

begin
  for D := 1 to 366 do
    Feiertag[D] := 0;
  Ostern := OsterSonntag(Y);
  try
    DecodeDate(Ostern, Y, OM, D);
  except
    OM := 4;
  end;
  try
    Weihnacht := EncodeDate(Y, 12, 25);
    if (DayOfWeek(Weihnacht) - 1) = 0 then
      dw := 7
    else
      dw := DayOfWeek(Weihnacht) - 1;
  except
    Weihnacht := -1;
    dw := 0;
  end;
  {Mariä Lichtmeß}{Sondertage}
  Dat := Encodedate(Y, 2, 2);
  Feiertag[TagImJahr(Dat)] := -1;
  {Valentinstag}
  Dat := Encodedate(Y, 2, 14);
  Feiertag[TagImJahr(Dat)] := -2;
  {Weiberfastnacht}
  Dat := Ostern - 45;
  while DayOfWeek(Dat) <> 2 do
    Dat := Dat - 1;
  Feiertag[TagImJahr(Dat) - 4] := -3;
  {Rosenmontag}
  Feiertag[TagImJahr(Dat)] := -4;
  {Fastnacht}
  Feiertag[TagImJahr(Dat) + 1] := -5;
  {Aschermittwoch}
  Feiertag[TagImJahr(Dat) + 2] := -6;
  {Mariä Verkündigung}
  Dat := Encodedate(Y, 3, 25);
  Feiertag[TagImJahr(Dat)] := -7;
  {Palmsonntag}
  Feiertag[TagImJahr(Ostern) - 7] := -8;
  {Gründonnerstag}
  Feiertag[TagImJahr(Ostern) - 3] := -9;
  {Muttertag}
  Dat := EncodeDate(y, 4, 30);
  aw := DayOfWeek(Dat) - 1;
  Dat := Dat - aw + 14;
  if Dat = (Ostern + 49) then
    Dat := Dat - 7;
  Feiertag[TagImJahr(Dat)] := -10;
  {Peter und Paul}
  Dat := Encodedate(Y, 6, 29);
  Feiertag[TagImJahr(Dat)] := -11;
  {Mariä Geburt}
  Dat := Encodedate(Y, 9, 8);
  Feiertag[TagImJahr(Dat)] := -12;
  {Erntedankfest}
  Dat := Encodedate(Y, 10, 1);
  while DayOfWeek(Dat) <> 1 do
    Dat := Dat + 1;
  Feiertag[TagImJahr(Dat)] := -13;
  {Mariä Empfängnis}
  Dat := Encodedate(Y, 12, 8);
  Feiertag[TagImJahr(Dat)] := -14;
  {Silvester}
  Dat := Encodedate(Y, 12, 31);
  Feiertag[TagImJahr(Dat)] := -15;
  {1. Advent}
  Dat := Weihnacht;
  while DayOfWeek(Dat) <> 1 do
    Dat := Dat - 1;
  Feiertag[TagImJahr(Dat) - 21] := -16;
  {2. Advent}
  Feiertag[TagImJahr(Dat) - 14] := -17;
  {3. Advent}
  Feiertag[TagImJahr(Dat) - 7] := -18;
  {4. Advent}
  Feiertag[TagImJahr(Dat)] := -19;
  {Heiligabend}
  Feiertag[TagImJahr(Weihnacht) - 1] := -20;
  {Frühlingsanfang}
  Dat := Encodedate(Y, 3, 21);
  Feiertag[TagImJahr(Dat)] := -21;
  {Sommmeranfang}
  Dat := Encodedate(Y, 6, 21);
  Feiertag[TagImJahr(Dat)] := -22;
  {Herbstanfang}
  Dat := Encodedate(Y, 9, 23);
  Feiertag[TagImJahr(Dat)] := -23;
  {Winteranfang}
  Dat := Encodedate(Y, 12, 22);
  Feiertag[TagImJahr(Dat)] := -24;
  {Neujahr}{Feiertage}
  Feiertag[1] := 1;
  {Maifeiertag}
  Dat := Encodedate(Y, 5, 1);
  Feiertag[TagImJahr(Dat)] := 2;
  {Tag der deutschen Einheit}
  Dat := Encodedate(Y, 10, 3);
  Feiertag[TagImJahr(Dat)] := 3;
  {Allerheiligen}
  Dat := Encodedate(Y, 11, 1);
  // 6.0.0.38
  if (Land = L_BadenWuerttemberg) or (Land = L_Bayern) or (Land = L_Brandenburg) or
     (Land = L_NordrheinWestfalen) or (Land = L_RheinlandPfalz) or (Land = L_Saarland) then
    Feiertag[TagImJahr(Dat)] := 4
  else
    Feiertag[TagImJahr(Dat)] := -29;

  {Totensonntag}
  if Weihnacht >= 0 then
    // 6.0.0.38
    //Feiertag[TagImJahr(Weihnacht - dw - 28)] := 5;
    Feiertag[TagImJahr(Weihnacht - dw - 28)] := -25;
  {Buß- und Bettag}
  if Land = 12 then
    Feiertag[TagImJahr(Weihnacht - dw - 32)] := 19;
  {Volkstrauertag}
  if Weihnacht >= 0 then
    // 6.0.0.38
    //Feiertag[TagImJahr(Weihnacht - dw - 35)] := 6;
    Feiertag[TagImJahr(Weihnacht - dw - 35)] := -26;
  {1. Weihnachtstag}
  if Weihnacht >= 0 then
    Feiertag[TagImJahr(Weihnacht)] := 7;
  {2. Weihnachtstag}
  if Weihnacht >= 0 then
    Feiertag[TagImJahr(Weihnacht) + 1] := 8;
  {Karfreitag}
  Feiertag[TagImJahr(Ostern) - 2] := 9;
  {Ostersonntag}
  // 6.0.0.38
  if Land = L_Brandenburg then
    Feiertag[TagImJahr(Ostern)] := 10
  else
    Feiertag[TagImJahr(Ostern)] := -27;
  {Ostermontag}
  Feiertag[TagImJahr(Ostern) + 1] := 11;
  {Christi Himmelfahrt}
  Feiertag[TagImJahr(Ostern) + 39] := 12;
  {Pfingstsonntag}
  // 6.0.0.38
  if Land = L_Brandenburg then
    Feiertag[TagImJahr(Ostern) + 49] := 13
  else
    Feiertag[TagImJahr(Ostern) + 49] := -28;
  {Pfingstmontag}
  Feiertag[TagImJahr(Ostern) + 50] := 14;
  {Fronleichnam}
  if (Land < L_Berlin) or ((Land >= L_NordrheinWestfalen) and (Land <= L_Sachsen))
    or (Land = L_Thueringen) or (Land = L_Hessen) then
    Feiertag[TagImJahr(Ostern) + 60] := 15;
  {Heilige 3 Könige}
  if (Land = L_BadenWuerttemberg) or (Land = L_Bayern) or (Land = L_SachsenAnhalt) then
    Feiertag[6] := 16;
  {Mariä Himmelfahrt}
  if (Land = L_Bayern) or (Land = L_Saarland) then
  begin
    Dat := Encodedate(Y, 8, 15);
    Feiertag[TagImJahr(Dat)] := 17;
  end;
  {Reformationstag}
  if ((Land = L_Brandenburg) or (Land = L_MecklenburgVorpommern)
    or (Land = L_Sachsen) or (Land = L_SachsenAnhalt) or (Land = L_Thueringen)
    // Ab 2018 Feiertag in folgenden Bundesländern
    or ((Y >= 2018) AND ((Land = L_Niedersachsen) or (Land = L_Bremen)or (Land = L_SchleswigHolstein) or (Land = L_Hamburg))))
    or (Y = 2017) then
  begin
    Dat := Encodedate(Y, 10, 31);
    Feiertag[TagImJahr(Dat)] := 18;
  end;

  // WeltfrauenTag mit aufnehmen / Bundesland Feiertag prüfen ggf. erweitern
end;

end.
