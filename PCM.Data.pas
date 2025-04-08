unit PCM.Data;

interface

uses
  {$Region Uses}
  cxGraphics,
  cxImageList,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys,
  FireDAC.Phys.ADS,
  FireDAC.Phys.ADSDef,
  FireDAC.Phys.Intf,
  FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.Phys.ODBCBase,
  FireDAC.Stan.Async,
  FireDAC.Stan.Def,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Pool,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait,
  inifiles,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.UITypes,
  Vcl.Controls,
  Vcl.Dialogs,
  vcl.forms,
  Vcl.ImgList,
  winapi.Windows, cxClasses, dxLayoutLookAndFeels;
  {$EndRegion Uses}
type
  {$Region type}
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
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    qry_Calc: TFDQuery;
    qry_timer: TFDQuery;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutSkinLookAndFeel2: TdxLayoutSkinLookAndFeel;
    qry_Contact_Land: TFDQuery;
    ds_Contact_Land: TDataSource;
    qry_Kalender_AufgabenPrivat: TStringField;
    procedure con_PCMBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    iModulTab: integer;
    sServer,sStyle,sDesign: String;
    slocale: String;
    iDBType: integer;
    iIDBenutzerPCM: integer;
    blogin: boolean;
    bClose: boolean;
    bNewLiceneCheck: Boolean;
    bStyle: boolean;
    // Rechte
    iBenutzer: integer;
    iKonfiguration: integer;
    iDesign: integer;
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
  end;
  {$EndRegion type}
var
  {$Region var}
  dm_PCM: Tdm_PCM;
  {$EndRegion var}
const
  {$Region const}
  DB_MYSQL = 0;
  DB_MSSQL = 1;
  DB_ADS = 2;
  DB_FB = 3;
  PCM_Logname = 'PCMManager';
  PCM_Connectionname =  'manager';
  PCM_Programmnummer =  1;
  PCM_Alias = 'manager';
  sSQLInsertintoPushNotification = 'Insert Into service_pushnotifications (ID_Benutzer, Message) values (:ID_Benutzer, :Message)';
  {$EndRegion const}
resourcestring
  {$Region resourcestring}
  {$IFDEF WIN64}
  PCM_Programmname = 'PCM - Manager 64-Bit';
  {$else}
  PCM_Programmname = 'PCM - Manager 32-Bit';
  {$ENDIF}
  {$EndRegion resourcestring}
implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses PCM.Main;

{$R *.dfm}

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

end.
