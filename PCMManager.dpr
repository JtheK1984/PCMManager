program PCMManager;

uses
  {$Region}
  cxSchedulerCustomControls in 'Helper\cxSchedulerCustomControls.pas',
  cxSchedulerDBStorage in 'Helper\cxSchedulerDBStorage.pas',
  cxSchedulerEventModernInfoContainer in 'Helper\cxSchedulerEventModernInfoContainer.pas' {cxSchedulerEventModernInfoContainer: TdxForm},
  cxSchedulerICalendar in 'Helper\cxSchedulerICalendar.pas',
  cxSchedulerStorage in 'Helper\cxSchedulerStorage.pas',
  IdSASL.OAuth.Base in 'Helper\IdSASL.OAuth.Base.pas',
  IdSASL.OAuth.OAuth2Bearer in 'Helper\IdSASL.OAuth.OAuth2Bearer.pas',
  IdSASL.OAuth.XOAUTH2 in 'Helper\IdSASL.OAuth.XOAUTH2.pas',
  inifiles,
  NtTranslator,
  PCM.Data in 'PCM.Data.pas' {dm_PCM: TDataModule},
  PCM.Helper,
  PCM.Main in 'PCM.Main.pas' {frm_PCM_Main},
  PCM.splash in 'PCM.splash.pas' {SplashScreen},
  PCMManager.dxSettings in 'PCMManager.dxSettings.pas',
  PCMManager.Helper.Calendar.ICAL in 'Helper\PCMManager.Helper.Calendar.ICAL.pas',
  PCMManager.Helper.Calendar.Neu.Wiederholung in 'Helper\PCMManager.Helper.Calendar.Neu.Wiederholung.pas',
  PCMManager.Helper.Calendar.Reminder in 'Helper\PCMManager.Helper.Calendar.Reminder.pas' {cxSchedulerReminderForm},
  PCMManager.Helper.Calendar.ReminderCustomited in 'Helper\PCMManager.Helper.Calendar.ReminderCustomited.pas',
  PCMManager.Helper.Contacts.VCF in 'Helper\PCMManager.Helper.Contacts.VCF.pas',
  PCMManager.Helper.Email.OAuth in 'Helper\PCMManager.Helper.Email.OAuth.pas',
  PCMManager.Modul.B_Config in 'Modules\PCMManager.Modul.B_Config.pas' {frm_Config},
  PCMManager.Modul.B_Config.Kalender.Feiertage.Aktualisieren in 'Modules\PCMManager.Modul.B_Config.Kalender.Feiertage.Aktualisieren.pas' {frm_FeiertageAktualisieren},
  PCMManager.Modul.B_Config.Kalender.Feiertage.Neu in 'Modules\PCMManager.Modul.B_Config.Kalender.Feiertage.Neu.pas' {fFeiertageBerechnen},
  PCMManager.Modul.B_Config.Kalender.Feiertage.Neu.Berechnen in 'Modules\PCMManager.Modul.B_Config.Kalender.Feiertage.Neu.Berechnen.pas',
  PCMManager.Modul.C_Contacts in 'Modules\PCMManager.Modul.C_Contacts.pas' {frm_Contact},
  PCMManager.Modul.C_Contacts.Konfession in 'Modules\PCMManager.Modul.C_Contacts.Konfession.pas' {frm_PCM_Konfession},
  PCMManager.Modul.C_Contacts.Neu in 'Modules\PCMManager.Modul.C_Contacts.Neu.pas' {frm_PCManagerNewContact},
  PCMManager.Modul.C_Contacts.Staatsangehoerigkeit in 'Modules\PCMManager.Modul.C_Contacts.Staatsangehoerigkeit.pas' {frm_PCM_Staatsangehoerigkeit},
  PCMManager.Modul.D_Calandar.Neu in 'Modules\PCMManager.Modul.D_Calandar.Neu.pas' {frm_Calendar_new},
  PCMManager.Modul.D_Calendar in 'Modules\PCMManager.Modul.D_Calendar.pas' {frm_Calendar},
  PCMManager.Modul.D_Calendar.Filter in 'Modules\PCMManager.Modul.D_Calendar.Filter.pas' {frm_PCM_KalenderFilter},
  PCMManager.Modul.D_Calendar.Import in 'Modules\PCMManager.Modul.D_Calendar.Import.pas' {frm_PCM_Import},
  PCMManager.Modul.D_Calender.Neu.Adresssuche in 'Modules\PCMManager.Modul.D_Calender.Neu.Adresssuche.pas' {fAdressSuche},
  PCMManager.Modul.E_Mail in 'Modules\PCMManager.Modul.E_Mail.pas' {frm_Mail},
  PCMManager.Modul.E_Mail.Mailbox in 'Modules\PCMManager.Modul.E_Mail.Mailbox.pas' {frm_PCM_MailShow_Ordner},
  PCMManager.Modul.E_Mail.Show in 'Modules\PCMManager.Modul.E_Mail.Show.pas' {frm_PCM_MailShow},
  PCMManager.Modul.E_Mail.Signaturen in 'Modules\PCMManager.Modul.E_Mail.Signaturen.pas' {frm_Signatur},
  PCMManager.Modul.F_Passwort in 'Modules\PCMManager.Modul.F_Passwort.pas' {frm_password},
  PCMManager.Modul.G_Finanzen in 'Modules\PCMManager.Modul.G_Finanzen.pas' {frm_finanzen},
  PCMManager.Modul.G_Finanzen.Filter.Date in 'Modules\PCMManager.Modul.G_Finanzen.Filter.Date.pas' {frm_PCManagerChooseDate},
  System.SysUtils,
  uWVLoader,
  Vcl.Forms,
  Vcl.Styles,
  Vcl.Themes,
  Windows,
  PCMManager.Modul.D_Calendar.Terminsuche in 'Modules\PCMManager.Modul.D_Calendar.Terminsuche.pas';

{$EndRegion uses}
{$R *.res}
{$IFDEF WIN64}
  {$R 'Versioninfo64.res'}
{$else}
  {$R 'Versioninfo32.res'}
{$ENDIF}
{$SetPEOptFlags IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE}
{$SetPEFlags IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP or IMAGE_FILE_LARGE_ADDRESS_AWARE}
var
  {$Region var}
  ifini: TIniFile;
  sStyle: String;
  slocale: String;
  {$EndRegion var}
begin
  {$Region Begin}
  Checkinis;
  ifini:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sStyle:=ifini.ReadString('PCMManager','Style','Windows');
  slocale:=ifini.ReadString('PCMManager','Language','de');
  ifini.Free;
  GlobalWebView2Loader                := TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := ExtractFileDir(Application.ExeName) + '\CustomCache';
  GlobalWebView2Loader.StartWebView2;
  Application.Initialize;
  TStyleManager.TrySetStyle(sStyle);
  {$IFDEF WIN64}
  Application.Title:= 'PCM - Manager 64-Bit';
  TNtTranslator.SetNew(slocale,[],'de');
  {$else}
  Application.Title:= 'PCM - Manager 32-Bit';
  {$ENDIF}
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_PCM,dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main,frm_PCM_Main);
  Application.Run;
  {$EndRegion Begin}
end.
