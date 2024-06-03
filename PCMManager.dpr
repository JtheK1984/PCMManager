program PCMManager;

uses
  NtTranslator,
  inifiles,
  Vcl.Forms,
  System.SysUtils,
  Vcl.Themes,
  Vcl.Styles,
  uWVLoader,
  Windows,
  PCMManager.Modul.B_Config in 'Modules\PCMManager.Modul.B_Config.pas' {frm_Config},
  PCMManager.Modul.B_Config.Kalender.Feiertage.Neu in 'Modules\PCMManager.Modul.B_Config.Kalender.Feiertage.Neu.pas' {fFeiertageBerechnen},
  PCMManager.Modul.B_Config.Kalender.Feiertage.Aktualisieren in 'Modules\PCMManager.Modul.B_Config.Kalender.Feiertage.Aktualisieren.pas' {frm_FeiertageAktualisieren},
  PCMManager.Modul.B_Config.Kalender.Feiertage.Neu.Berechnen in 'Modules\PCMManager.Modul.B_Config.Kalender.Feiertage.Neu.Berechnen.pas',
  PCMManager.Modul.C_Contacts in 'Modules\PCMManager.Modul.C_Contacts.pas' {frm_Contact},
  PCMManager.Modul.C_Contacts.Neu in 'Modules\PCMManager.Modul.C_Contacts.Neu.pas' {frm_PCManagerNewContact},
  PCMManager.Modul.C_Contacts.Konfession in 'Modules\PCMManager.Modul.C_Contacts.Konfession.pas' {frm_PCM_Konfession},
  PCMManager.Modul.C_Contacts.Staatsangehoerigkeit in 'Modules\PCMManager.Modul.C_Contacts.Staatsangehoerigkeit.pas' {frm_PCM_Staatsangehoerigkeit},
  PCMManager.Modul.D_Calendar in 'Modules\PCMManager.Modul.D_Calendar.pas' {frm_Calendar},
  PCMManager.Modul.D_Calandar.Neu in 'Modules\PCMManager.Modul.D_Calandar.Neu.pas' {frm_Calendar_new},
  PCMManager.Modul.D_Calender.Neu.Adresssuche in 'Modules\PCMManager.Modul.D_Calender.Neu.Adresssuche.pas' {fAdressSuche},
  PCMManager.Modul.D_Calendar.Filter in 'Modules\PCMManager.Modul.D_Calendar.Filter.pas' {frm_PCM_KalenderFilter},
  PCMManager.Modul.D_Calendar.Import in 'Modules\PCMManager.Modul.D_Calendar.Import.pas' {frm_PCM_Import},
  PCMManager.Modul.E_Mail in 'Modules\PCMManager.Modul.E_Mail.pas' {frm_Mail},
  PCMManager.Modul.E_Mail.Show in 'Modules\PCMManager.Modul.E_Mail.Show.pas' {frm_PCM_MailShow},
  PCMManager.Modul.E_Mail.Mailbox in 'Modules\PCMManager.Modul.E_Mail.Mailbox.pas' {frm_PCM_MailShow_Ordner},
  PCMManager.Modul.F_Passwort in 'Modules\PCMManager.Modul.F_Passwort.pas' {frm_password},
  PCMManager.Modul.G_Finanzen in 'Modules\PCMManager.Modul.G_Finanzen.pas' {frm_finanzen},
  PCMManager.Modul.G_Finanzen.Filter.Date in 'Modules\PCMManager.Modul.G_Finanzen.Filter.Date.pas' {frm_PCManagerChooseDate},
  PCM.Main in 'PCM.Main.pas' {frm_PCM_Main},
  PCM.Data in 'PCM.Data.pas' {dm_PCM: TDataModule},
  cxSchedulerStorage in 'Helper\cxSchedulerStorage.pas',
  PCMManager.Helper.Contacts.VCF in 'Helper\PCMManager.Helper.Contacts.VCF.pas',
  PCMManager.Helper.Calendar.ICAL in 'Helper\PCMManager.Helper.Calendar.ICAL.pas',
  PCMManager.Helper.Calendar.Neu.Wiederholung in 'Helper\PCMManager.Helper.Calendar.Neu.Wiederholung.pas',
  PCMManager.Helper.Calendar.ReminderCustomited in 'Helper\PCMManager.Helper.Calendar.ReminderCustomited.pas',
  PCMManager.Helper.Calendar.Reminder in 'Helper\PCMManager.Helper.Calendar.Reminder.pas' {cxSchedulerReminderForm};

{$R *.res}

{$SetPEOptFlags IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE}
{$SetPEFlags IMAGE_FILE_REMOVABLE_RUN_FROM_SWAP or IMAGE_FILE_NET_RUN_FROM_SWAP or IMAGE_FILE_LARGE_ADDRESS_AWARE}

var
  iniFile: TIniFile;
  sStyle: String;
  slocale: String;
begin
  iniFile:=TIniFile.create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  sStyle:= iniFile.ReadString('PCMManager','Style','Windows');
  slocale:= iniFile.ReadString('PCMManager','Language','de');
  iniFile.Free;
  {$IFDEF WIN64}
  TNtTranslator.SetNew(slocale,[],'de');
  {$ENDIF}
  GlobalWebView2Loader                := TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := ExtractFileDir(Application.ExeName) + '\CustomCache\ID';
  GlobalWebView2Loader.StartWebView2;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  {$IFDEF WIN64}
  Application.Title:= 'PCM-Manager 64-Bit';
  {$else}
  Application.Title:= 'PCM-Manager 32-Bit';
  {$ENDIF}
  TStyleManager.TrySetStyle(sStyle);
  Application.CreateForm(Tdm_PCM, dm_PCM);
  Application.CreateForm(Tfrm_PCM_Main, frm_PCM_Main);
  Application.Run;
end.
