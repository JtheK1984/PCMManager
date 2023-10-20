unit PCM.Data;

interface

uses
  System.SysUtils, System.Classes,inifiles, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Phys.ADSDef, FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Phys.ADS,
  FireDAC.Comp.DataSet,Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.Controls,
  cxImageList, cxGraphics, winapi.Windows,vcl.forms, System.UITypes;

type
  Tdm_PCM = class(TDataModule)
    con_PCM: TFDConnection;
    qry_ChartKalender: TFDQuery;
    qry_ChartKategorie: TFDQuery;
    ds_ChartKategorie: TDataSource;
    ds_ChartKalender: TDataSource;
    ds_ChartAufgabe: TDataSource;
    qry_ChartAufgabe: TFDQuery;
    FDPhysADSDriverLink1: TFDPhysADSDriverLink;
    FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink;
    qry_ChartFinance: TFDQuery;
    ds_ChartFinance: TDataSource;
    ds_Kalender_Filter: TDataSource;
    qry_Kalender_Filter: TFDQuery;
    qry_work: TFDQuery;
    imglst_16x16: TcxImageList;
    imglst_24x24: TcxImageList;
    imglst_32x32: TcxImageList;
    qry_Optionen: TFDQuery;
    qry_Aufgabe_Ansprechpartner: TFDQuery;
    ds_Aufgabe_Ansprechpartner: TDataSource;
    qry_KalenderAufgaben_Arten: TFDQuery;
    ds_KalenderAufgaben_Arten: TDataSource;
    qry_KalenderAufgaben_Prio: TFDQuery;
    ds_KalenderAufgaben_Prio: TDataSource;
    ds_KalenderAufgabe_AdressSuche: TDataSource;
    qry_work1: TFDQuery;
    qry_Config_Firmen: TFDQuery;
    ds_Config_Firmen: TDataSource;
    qry_Config_Bundesland: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    qry_Config_BundeslandBezeichnung: TStringField;
    ds_Config_Bundesland: TDataSource;
    qry_Config_Ansprechpartner: TFDQuery;
    qry_Config_AnsprechpartnerID: TFDAutoIncField;
    qry_Config_AnsprechpartnerName: TStringField;
    ds_Config_Ansprechpartner: TDataSource;
    ds_Config_Benutzer: TDataSource;
    qry_Config_Benutzer: TFDQuery;
    qry_Config_EmailConfigTyp: TFDQuery;
    ds_Config_EmailConfigTyp: TDataSource;
    qry_Config_EmailPostfachLU: TFDQuery;
    ds_Config_EmailPostfachLU: TDataSource;
    qry_Contact_Staatsangehoerigkeit: TFDQuery;
    ds_Contact_Staatsangehoerigkeit: TDataSource;
    qry_Contact_Geschlecht: TFDQuery;
    qry_Contact_Familienstand: TFDQuery;
    qry_Contact_Anrede: TFDQuery;
    qry_Contact_Konfession: TFDQuery;
    qry_Contact_Kontaktart: TFDQuery;
    ds_Contact_Kontaktart: TDataSource;
    ds_Contact_Konfession: TDataSource;
    ds_Contact_Anrede: TDataSource;
    ds_Contact_Familienstand: TDataSource;
    ds_Contact_Geschlecht: TDataSource;
    qry_Kalender_Kalender: TFDQuery;
    qry_Kalender_KalenderID: TFDAutoIncField;
    qry_Kalender_KalenderEventType: TIntegerField;
    qry_Kalender_KalenderCaption: TStringField;
    qry_Kalender_KalenderLocation: TStringField;
    qry_Kalender_KalenderMessage: TMemoField;
    qry_Kalender_KalenderStart: TDateTimeField;
    qry_Kalender_KalenderFinish: TDateTimeField;
    qry_Kalender_KalenderOptions: TIntegerField;
    qry_Kalender_KalenderParent_ID: TIntegerField;
    qry_Kalender_KalenderCompleteDay: TStringField;
    qry_Kalender_KalenderRecurrenceIndex: TIntegerField;
    qry_Kalender_KalenderRecurrenceInfo: TBlobField;
    qry_Kalender_KalenderReminder: TStringField;
    qry_Kalender_KalenderReminderDate: TDateTimeField;
    qry_Kalender_KalenderReminderMinutesBeforeStart: TIntegerField;
    qry_Kalender_KalenderLabelColor: TIntegerField;
    qry_Kalender_KalenderFontColor: TIntegerField;
    qry_Kalender_KalenderID_Benutzer: TBlobField;
    qry_Kalender_KalenderID_Kontakte: TIntegerField;
    ds_Kalender_Kalender: TDataSource;
    qry_Kalender_Ansprechpartner: TFDQuery;
    qry_Kalender_AnsprechpartnerID: TFDAutoIncField;
    qry_Kalender_AnsprechpartnerName: TStringField;
    ds_Kalender_Ansprechpartner: TDataSource;
    qry_Kalender_Aufgaben: TFDQuery;
    FDAutoIncField2: TFDAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    qry_Kalender_AufgabenID_ADR_Wurzel: TIntegerField;
    qry_Kalender_AufgabenID_Ansprechpartner: TIntegerField;
    qry_Kalender_AufgabenTyp: TIntegerField;
    qry_Kalender_AufgabenJira_Ticket: TStringField;
    qry_Kalender_AufgabenID_IC_Prioritaeten: TIntegerField;
    qry_Kalender_AufgabenID_IC_AufgabenArten: TIntegerField;
    qry_Kalender_AufgabenGesendetAm: TDateTimeField;
    qry_Kalender_AufgabenGelesenAm: TDateTimeField;
    qry_Kalender_AufgabenAufgabenDauer: TIntegerField;
    qry_Kalender_AufgabenStatus: TStringField;
    qry_Kalender_AufgabenStartdatum: TDateField;
    qry_Kalender_AufgabenStartZeit: TTimeField;
    qry_Kalender_AufgabenEndedatum: TDateField;
    qry_Kalender_AufgabenEndeZeit: TTimeField;
    qry_Kalender_AufgabenInTagen: TLargeintField;
    qry_Kalender_AufgabenEventType: TIntegerField;
    qry_Kalender_AufgabenMessage: TMemoField;
    qry_Kalender_AufgabenOptions: TIntegerField;
    qry_Kalender_AufgabenCompleteDay: TStringField;
    qry_Kalender_AufgabenParent_ID: TIntegerField;
    qry_Kalender_AufgabenRecurrenceIndex: TIntegerField;
    qry_Kalender_AufgabenRecurrenceInfo: TBlobField;
    qry_Kalender_AufgabenReminder: TStringField;
    qry_Kalender_AufgabenReminderDate: TDateTimeField;
    qry_Kalender_AufgabenReminderMinutesBeforeStart: TIntegerField;
    qry_Kalender_AufgabenLabelColor: TIntegerField;
    qry_Kalender_AufgabenFontColor: TIntegerField;
    qry_Kalender_AufgabenKalendername: TStringField;
    qry_Kalender_AufgabenID_KalenderAPP: TIntegerField;
    qry_Kalender_Aufgabenwiederholung_text: TStringField;
    qry_Kalender_AufgabenID_Kontakte: TIntegerField;
    qry_Kalender_AufgabenAufgabenstatus: TIntegerField;
    qry_Kalender_AufgabenErledigungsgrad: TFloatField;
    qry_Kalender_AufgabenZeitformat: TIntegerField;
    qry_Kalender_Aufgabenbearbeitetam: TDateTimeField;
    qry_Kalender_AufgabenID_Benutzer: TLargeintField;
    ds_Kalender_Aufgaben: TDataSource;
    ds_Kalender_Benutzer: TDataSource;
    qry_Kalender_Benutzer: TFDQuery;
    qry_PasswortSerial_SerialTyp: TFDQuery;
    qry_PasswortSerial_PWDTyp: TFDQuery;
    ds_PasswortSerial_SerialTyp: TDataSource;
    ds_PasswortSerial_PWDTyp: TDataSource;
    qry_ChartKontaktart: TFDQuery;
    ds_ChartKontaktart: TDataSource;
    qry_ChartAdressen: TFDQuery;
    ds_ChartAdressen: TDataSource;
    qry_ChartGeburtstage: TFDQuery;
    ds_ChartGeburtstage: TDataSource;
    qry_ChartPWDSerials: TFDQuery;
    ds_ChartPWDSerials: TDataSource;
    ds_ChartPWD_Kategorie: TDataSource;
    qry_ChartPWD_Kategorie: TFDQuery;
    ds_ChartSerialKategorie: TDataSource;
    qry_ChartSerialKategorie: TFDQuery;
    qry_work2: TFDQuery;
    procedure con_PCMBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    sServer,sStyle,sDesign: String;
    iDBType: integer;
    iIDBenutzerPCM: integer;
    blogin: boolean;
    bClose: boolean;
    bNewLiceneCheck: Boolean;
    // Rechte
    int_optionenrecht: integer;
    iKonfiguration: integer;
    iKontakte: integer;
    iKalender: integer;
    iStundenplan: integer;
    iEmail: integer;
    iPassword: integer;
    iSerials: integer;
    iMonatsuebersicht: integer;
    iVerfuegung: integer;
    iEinnahmen: integer;
    iAusgaben: integer;
    iScale: double;
    Firma, Nummer: string;
    bDemo: boolean;
    bAppTerm: boolean;
    dtGueltig,dtCurrDate: Tdate;
    bAutologin: boolean;
    sUSerAutologin: string;
    function Autologin: boolean;
    function CheckAutologin: String;
    function ReadServerAdress: boolean;
    function CheckLizenz: boolean;
    function GetAppVersionLizenz: string;
    procedure CheckLizenzNew;
  end;

var
  dm_PCM: Tdm_PCM;

const
  DB_MYSQL = 0;
  DB_MSSQL = 1;
  DB_ADS = 2;
  DB_FB = 3;
  {$IFDEF WIN64}
  PCM_Programmname = 'PCM - Manager 64-Bit';
  {$else}
  PCM_Programmname = 'PCM - Manager 32-Bit';
  {$ENDIF}
  PCM_Logname = 'PCMManager';
  PCM_Connectionname =  'manager';
  PCM_Programmnummer =  1;
  sSQLInsertintoPushNotification = 'Insert Into service_pushnotifications (ID_Benutzer, Message) values (:ID_Benutzer, :Message)';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PCM.Main,PCM.Functions,
     PCM.Functions.Lizenz;

{$R *.dfm}

function Tdm_PCM.Autologin: boolean;
begin
  Result:= false;
  sUSerAutologin := CheckAutologin;
  if sUSerAutologin <> '' then
  begin
    Result:= true;
  end;
end;

function Tdm_PCM.CheckAutologin: String;
begin
  Result:= '';
  dm_pcm.qry_Work.SQL.Text:= 'SELECT ID,Benutzer FROM benutzer WHERE benutzer  = :Benutzer and Autologin = True';
  dm_pcm.qry_Work.ParamByName('Benutzer').asString:= frm_PCM_System.GetCurrentUsername;
  dm_pcm.qry_Work.Open;
  if dm_pcm.qry_Work.RecordCount > 0 then
  begin
    Result := dm_pcm.qry_Work.FieldByName('Benutzer').AsString;
    iIDBenutzerPCM:= dm_pcm.qry_Work.FieldByName('ID').AsInteger;
  end;
  dm_pcm.qry_Work.Close;
end;
procedure Tdm_PCM.CheckLizenzNew;
var
  iRecordLizenz: integer;
begin
  dm_PCM.qry_Work.sql.Text:=  'Select Count(*)as Anzahl From manager_lizenz';
  dm_PCM.qry_Work.open;
  iRecordLizenz:= dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
  dm_PCM.qry_Work.close;

  if iRecordLizenz = 0 then
  begin
    Application.CreateForm(Tfrm_PCM_lizenz,frm_PCM_lizenz);
    frm_PCM_lizenz.btn_SaveLicence.Enabled:= false;
    frm_PCM_lizenz.Showmodal;
    frm_PCM_lizenz.Free;
  end
  else begin
    dm_PCM.bNewLiceneCheck:= CheckLizenz;
  end;
end;

function Tdm_PCM.GetAppVersionLizenz: string;
var
  dwVerInfoSize: DWord;
  poiVerInfo: Pointer;
  dwVerValueSize: DWord;
  ffiVerValue: PVSFixedFileInfo;
  dwDummy: DWord;
begin
  Result := '';
  dwVerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), dwDummy);
  if dwVerInfoSize = 0 then
    exit;
  GetMem(poiVerInfo, dwVerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, dwVerInfoSize, poiVerInfo);
  VerQueryValue(poiVerInfo, '\', Pointer(ffiVerValue), dwVerValueSize);
  with ffiVerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + IntToStr(dwFileVersionMS and $FFFF);
    Application.CreateForm(Tfrm_PCM_Lizenz,frm_PCM_Lizenz);
    frm_PCM_Lizenz.str_Version:= Result;
    frm_PCM_Lizenz.free;
  end;
  FreeMem(poiVerInfo, dwVerInfoSize);
end;

function Tdm_PCM.CheckLizenz: boolean;
var
  iProgramm: integer;
  iGeburtTagMonat: integer;
  iGeburtjahr: integer;
  iDevjahr: integer;

  procedure MakeBitMatrix;
  var
    i, j, v, addr: Integer;
    mask: Integer;
    c: Char;
  begin
    for i := 1 to Length(Nummer) do
    begin
      // Zeichen umwandeln in Zahl
      c := Nummer[i];
      if (c >= '0') and (c <= '9') then
        v := Ord(c) - 48
      else
        v := Ord(c) - 65 + 10;
      mask := 1;
      for j := 0 to 4 do
      begin
        addr := (i - 1) * 5 + j;
        if addr <= High(frm_PCM_Lizenz.arrbolBitMatrix) then
        begin
          if (v and mask) <> 0 then
            frm_PCM_Lizenz.arrbolBitMatrix[addr] := True
          else
            frm_PCM_Lizenz.arrbolBitMatrix[addr] := False;
        end;
        mask := mask * 2;
      end;
    end;
  end;

  function MakeString(Length: Integer): string;
  var
    i, j, n, v, mask, addr: Integer;
  begin
    n := (Length + 4) div 5;
    Result := '';

    for i := 0 to n - 1 do
    begin
      // Wert von 5 Bits holen
      v := 0;
      mask := 1;
      for j := 0 to 4 do
      begin
        addr := i * 5 + j;
        if addr >= Length then
          Break;
        if frm_PCM_Lizenz.arrbolBitMatrix[i * 5 + j] then
          v := v or mask;
        mask := mask * 2;
      end;

      // in Buchstabe wandeln
      if (v >= 0) and (v <= 9) then
        Result := Result + Chr(v + 48)
      else
        Result := Result + Chr((v - 10) + 65);
    end;
  end;

  procedure ByteCrc(data: Byte; var crc: Word);
  var
    i: Byte;
  begin
    for i := 0 to 7 do
    begin
      if ((data and $01) xor (crc and $0001) <> 0) then
      begin
        crc := crc shr 1;
        crc := crc xor $A001;
      end
      else
        crc := crc shr 1;
      data := data shr 1;
    end;
  end;

  function StringCrc16(s: string): Word;
  var
    len, i: integer;
  begin
    result := 0;
    len := length(s);
    for i := 1 to len do
      bytecrc(ord(s[i]), result);
  end;

  function GetBits(Position, Length: Integer): Integer;
  var
    i: Integer;
    mask: Integer;
  begin
    Result := 0;
    mask := 1;

    for i := Position to Position + Length - 1 do
    begin
      if frm_PCM_Lizenz.arrbolBitMatrix[i] then
        Result := Result or mask;
      mask := mask * 2;
    end;
  end;

  function CheckCheckSum: Boolean;
  var
    v, chk: Integer;
  begin
    v := StringCrc16(Firma + frm_PCM_Lizenz.sVersion + MakeString(Length(frm_PCM_Lizenz.arrbolBitMatrix) - 16));
    chk := GetBits(High(frm_PCM_Lizenz.arrbolBitMatrix) - 15, 16);
    Result := v = chk;
  end;

  procedure ScrambleBits;
  var
    i, v, mask: Integer;
  begin
    mask := 1;
    v := StringCrc16(Firma);

    for i := 0 to High(frm_PCM_Lizenz.arrbolBitMatrix) do
    begin
      if i mod 16 = 0 then
        mask := 1
      else
        mask := mask * 2;
      frm_PCM_Lizenz.arrbolBitMatrix[i] := (v and mask <> 0) xor (frm_PCM_Lizenz.arrbolBitMatrix[i]);
    end;
  end;

begin
  frm_PCM_Lizenz.sVersion:= GetAppVersionLizenz;
  dm_PCM.qry_Work.SQL.Text:= 'Select Benutzer , Lizenz From manager_lizenz';
  dm_PCM.qry_Work.open;
  Firma := dm_PCM.qry_Work.FieldByName('Benutzer').AsString;
  Nummer :=   StringReplace(dm_PCM.qry_Work.FieldByName('Lizenz').AsString, '-','',[rfReplaceAll]);
  dm_PCM.qry_Work.close;
  Result := False;

  // Überprüfe Länge
  if Length(Nummer) <> 20 then Exit;

  MakeBitMatrix;
  ScrambleBits;

  Result := CheckCheckSum;
  dm_PCM.bNewLiceneCheck:= true;
  if Result then
  begin
    bDemo := Boolean(GetBits(0, 1));
    iProgramm := GetBits(1, 8);
    if iProgramm <> PCM_Programmnummer then
    begin
      dm_PCM.bNewLiceneCheck:= false;
    end;
    iGeburtTagMonat:= GetBits(17,16);
    if iGeburtTagMonat <> 2402 then
    begin
      dm_PCM.bNewLiceneCheck:= false;
    end;

    iGeburtJahr:= GetBits(33, 16);
    if iGeburtJahr <> 1984 then
    begin
      dm_PCM.bNewLiceneCheck:= false;
    end;

    iDevJahr:= GetBits(49, 16);
    if iDevJahr <> 2015 then
    begin
      dm_PCM.bNewLiceneCheck:= false;
    end;

    dtGueltig:= EncodeDate(2005, 1, 1) + GetBits(65, 16);
    if bdemo then
    begin
      dtCurrDate := StrToDate(DateToStr(Now));
      if dtGueltig < dtCurrDate then
      begin
        bNewLiceneCheck:= false;
      end
    end;
    if bNewLiceneCheck = false then
    begin
      Application.CreateForm(Tfrm_PCM_lizenz,frm_PCM_lizenz);
      frm_PCM_lizenz.ShowModal;
      frm_PCM_lizenz.Free;
    end
    else begin
      bNewLiceneCheck:= true;
    end;
  end
  else begin
    Application.CreateForm(Tfrm_PCM_lizenz,frm_PCM_lizenz);
    frm_PCM_lizenz.ShowModal;
    frm_PCM_lizenz.Free;
  end;
end;

procedure Tdm_PCM.con_PCMBeforeConnect(Sender: TObject);
begin
  con_PCM.LoginPrompt := False;
  con_PCM.Params.Clear;
  case iDBType of
    DB_MYSQL:
    begin
      con_PCM.Params.Add('Database=pcm');
      con_PCM.Params.Add('User_Name=root');
      con_PCM.Params.Add('Password=pcm');
      con_PCM.Params.Add('Server='+ sServer);
      con_PCM.Params.Add('Port=3307');
      con_PCM.Params.Add('DriverID=MySQL');
    end;
    DB_MSSQL:
    begin
      con_PCM.Params.Add('OSAuthent=No');
      con_PCM.Params.Add('User_Name=sa');
      con_PCM.Params.Add('Password=Nh2020+5');
      con_PCM.Params.Add('Server='+ sServer);
      con_PCM.Params.Add('Database=pcm');
      con_PCM.Params.Add('DriverID=MSSQL');
    end;
    DB_ADS:
     begin
      con_PCM.Params.Add('Alias=pcm');
      con_PCM.Params.Add('ServerTypes=REMOTE|LOCAL');
      con_PCM.Params.Add('User_Name=adssys');
      con_PCM.Params.Add('Password=pcm');
      con_PCM.Params.Add('DriverID=ADS');
     end;
  end;
end;

procedure Tdm_PCM.DataModuleCreate(Sender: TObject);
begin
  iScale := Screen.PrimaryMonitor.PixelsPerInch /96;
end;

function Tdm_PCM.ReadServerAdress: boolean;
var
  iniFile: TIniFile;
begin
  iniFile:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sServer:= iniFile.ReadString('PCM','Server','localhost');
  sStyle:= iniFile.ReadString('PCMManager','Style','Windows10');
  sDesign:= iniFile.ReadString('PCMManager','Design','Basic');
  iDBType:=iniFile.ReadInteger('Database','Type',0);
  iniFile.Free;
  try
    con_PCM.Params.Values['Server'] := sServer;
    con_PCM.Connected:= True;
    result:= true;
  except
    on e:Exception do
    begin
      MessageDlg('Es konnte keine Verbindung zur Datenbank hergestellt werden.'
      + 'Bitte überprüfen Sie die Serveraddresse in der Konfigurationsdatei:' + sLineBreak + GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini.' + sLineBreak
      + 'Das Programm wird beendet.', mtError, [mbOk], 0);
    result:= false;
    end;
  end;
end;

end.
