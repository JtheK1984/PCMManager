unit PCM.splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.ExtCtrls,
  dxGDIPlusClasses, dxActivityIndicator, cxContainer, cxEdit, cxProgressBar,
  cxImage, cxLabel, cxGroupBox, cxClasses, inifiles, dxUIAClasses;

type
  TSplashScreen = class(TForm)
    ActivityIndicator: TdxActivityIndicator;
    img_Splash: TImage;
    lbl_Progname: TcxLabel;
    lbl_ProgVersion: TcxLabel;
    prgbr_Splash: TcxProgressBar;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    Timer5: TTimer;
    Timer6: TTimer;
    Timer11: TTimer;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer11Timer(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    bRestart: boolean;
    function Execute(ARestart: boolean): boolean;
    procedure SetAppVersion;
  end;

var
  SplashScreen: TSplashScreen;

implementation

{$R *.dfm}

uses
  PCM.Main,
  PCM.Data,
  PCM.Functions,
  PCM.Functions.Login,
  PCM.Helper,
  PCM.SQL,
  PCM.Strings;

procedure TSplashScreen.SetAppVersion;
var
  dwVerInfoSize: DWord;
  poiVerInfo: Pointer;
  dwVerValueSize: DWord;
  ffiVerValue: PVSFixedFileInfo;
  dwdDummy: DWord;
  Result: String;
  itest: integer;
  ipixelWidth: integer;
begin
  dwVerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), dwdDummy);
  if dwVerInfoSize = 0 then
    exit;
  GetMem(poiVerInfo, dwVerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, dwVerInfoSize, poiVerInfo);
  VerQueryValue(poiVerInfo, '\', Pointer(ffiVerValue), dwVerValueSize);
  with ffiVerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(poiVerInfo, dwVerInfoSize);
  lbl_ProgVersion.Caption := 'Version ' + Result;
  lbl_Progname.Caption := PCM_Programmname;
  ipixelWidth := Canvas.TextWidth(lbl_Progname.Caption);

  lbl_Progname.Left:= Round((SplashScreen.ClientWidth - ipixelWidth) / 2);
end;
function TSplashScreen.Execute(ARestart: boolean): boolean;
begin
  SetAppVersion;
  bRestart:= ARestart;
  if bRestart then
    prgbr_Splash.Properties.Max:= 1
  else
    prgbr_Splash.Properties.Max:= 7;




  prgbr_Splash.Properties.Text:= 'Sprachdatei laden...';
  timer1.Enabled:= true;
  if ShowModal = mrOk then
  begin
    Result := True;
  end
  else begin
    Result := False;
  end;
  Release;
end;
procedure TSplashScreen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;


procedure TSplashScreen.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  prgbr_Splash.Position:= prgbr_Splash.Position + 1;
  Application.ProcessMessages;
  frm_PCm_Main.loc_lang.LoadFromFile(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\cxLocalLang.ini');
  frm_PCm_Main.loc_lang.LanguageIndex := 1;
  if not bRestart then
  begin
    prgbr_Splash.Properties.Text:= 'Lizenz prüfen...';
    Timer11.enabled:= true;
  end
  else begin
    ModalResult := mrOk;
  end;
  Application.ProcessMessages;
end;


procedure TSplashScreen.Timer11Timer(Sender: TObject);
begin
  Timer11.enabled:= false;
  dm_PCM.bNewLiceneCheck:= false;
  CheckLizenzNew;
  if dm_PCm.bNewLiceneCheck = false then
  begin
    CheckLizenzNew;
    if dm_PCm.bNewLiceneCheck = false then
      Application.Terminate;
  end;
  prgbr_Splash.Properties.Text:= 'Benutzerlogin prüfen...';
  Timer2.enabled:= true;
end;

procedure TSplashScreen.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;
  prgbr_Splash.Position:= prgbr_Splash.Position + 1;
  Application.ProcessMessages;
  if not frm_PCm_Main.bAbmelden then
    dm_PCM.bLogin := Autologin
  else
    dm_PCM.bLogin := false;
  if not dm_PCM.bLogin then
  begin
    Application.CreateForm(Tfrm_PCM_Login, frm_PCM_Login);
    dm_PCM.bLogin := frm_pcm_login.Login_User;
    frm_PCM_Login.Free;
  end;
  if not dm_PCM.bLogin then
    Application.Terminate;
  frm_PCm_Main.bAbmelden:= False;
  Application.ProcessMessages;
  prgbr_Splash.Properties.Text:= 'Benutzerechte prüfen...';
  Timer3.Enabled:= true;
end;
procedure TSplashScreen.Timer3Timer(Sender: TObject);
begin
  Timer3.Enabled := False;
  prgbr_Splash.Position:= prgbr_Splash.Position + 1;
  dm_PCM.qry_Work.SQL.Text:=  ASSQL_GetAllRights[dm_PCM.iDBType];
  dm_PCM.qry_Work.ParamByName('ID').AsInteger := dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  dm_PCM.iBenutzer:= dm_PCM.qry_Work.FieldByName('Benutzer').asInteger;
  dm_PCM.iKonfiguration:= dm_PCM.qry_Work.FieldByName('Konfiguration').asInteger;
  dm_PCM.iDesign:= dm_PCM.qry_Work.FieldByName('Design').asInteger;
  dm_PCM.iKontakte:= dm_PCM.qry_Work.FieldByName('Kontakte').asInteger;
  dm_PCM.iKalender:= dm_PCM.qry_Work.FieldByName('Kalender').asInteger;
  dm_PCM.iStundenplan:= dm_PCM.qry_Work.FieldByName('Stundenplan').asInteger;
  dm_PCM.iEmail:= dm_PCM.qry_Work.FieldByName('Email').asInteger;
  dm_PCM.iPassword:= dm_PCM.qry_Work.FieldByName('Password').asInteger;
  dm_PCM.iSerials:= dm_PCM.qry_Work.FieldByName('Serials').asInteger;
  dm_PCM.iMonatsuebersicht:= dm_PCM.qry_Work.FieldByName('Monatsuebersicht').asInteger;
  dm_PCM.iVerfuegung:= dm_PCM.qry_Work.FieldByName('Verfuegung').asInteger;
  dm_PCM.iEinnahmen:= dm_PCM.qry_Work.FieldByName('Einnahmen').asInteger;
  dm_PCM.iAusgaben:= dm_PCM.qry_Work.FieldByName('Ausgaben').asInteger;
  dm_PCM.qry_Work.Close;

  // Benutzerverwaltung / Kein Recht
  if (dm_PCM.iBenutzer = 0) and (dm_PCM.iKonfiguration = 0) and (dm_PCM.iDesign = 0) then
  begin
    frm_PCm_Main.navbrgrp_Optionen.Visible:= false;
    frm_PCm_Main.iBenutzerverwaltung.Visible:= false;
    frm_PCm_Main.iKonfiguration.Visible:= false;
  end;

  // Benutzerverwaltung / Lesen / Ändern / Vollzugriff
  case dm_PCM.iBenutzer of
  0: frm_PCm_Main.iBenutzerverwaltung.Visible:= false;
  1,2,3:
    begin
      frm_PCm_Main.navbrgrp_Optionen.Visible:= true;
      frm_PCm_Main.iBenutzerverwaltung.Visible:= true;
    end;
  end;

  // Optionen / Lesen / Ändern / Vollzugriff
  case dm_PCM.iKonfiguration of
  0: frm_PCm_Main.iKonfiguration.Visible:= false;
  1,2,3:
    begin
      frm_PCm_Main.navbrgrp_Optionen.Visible:= true;
      frm_PCm_Main.iKonfiguration.Visible:= true;
    end;
  end;

  // Kontakte / Kein Recht
  case dm_PCM.iKontakte of
  0: frm_PCm_Main.navbrgrp_Kontake.Visible:= false;
  // Kontakte / Lesen / Ändern / Vollzugriff
  1,2,3: frm_PCm_Main.navbrgrp_Kontake.Visible:= true;
  end;

  // Kalender / Stundenplan / Mail
  if (dm_PCM.iKalender = 0) and (dm_PCM.iStundenplan = 0) and (dm_PCM.iEmail = 0) then
  begin
    frm_PCm_Main.navbrgrp_Kalender.Visible:= false;
    frm_PCm_Main.iKalender.Visible:= false;
    frm_PCm_Main.iAufgaben.Visible:= false;
    frm_PCm_Main.iStundenplan.Visible:= false;
  end;
  // Kalender / Kein Recht
  case dm_PCM.iKalender of
  0: frm_PCm_Main.iKalender.Visible:= false;
  // Kalender / Lesen / Schreiben / Vollzugriff
  1,2,3:
    begin
      frm_PCm_Main.navbrgrp_Kalender.Visible:= true;
      frm_PCm_Main.iKalender.Visible:= true;
    end;
  end;

  // Stundenplan / Kein Recht
  case dm_PCM.iStundenplan of
  0: frm_PCm_Main.iStundenplan.Visible:= false;
  // Stundenplan / Lesen / Schreiben / Vollzugriff
  1,2,3:
    begin
      frm_PCm_Main.navbrgrp_Kalender.Visible:= true;
      frm_PCm_Main.iStundenplan.Visible:= true;
    end;
  end;

  // Mails / Kein Recht
  case dm_PCM.iEmail of
  0: frm_PCm_Main.iEMails.Visible:= false;
  // Mails / Lesen / Schreiben / Vollzugriff
  1,2,3:
    begin
      frm_PCm_Main.navbrgrp_Kalender.Visible:= true;
      frm_PCm_Main.iEMails.Visible:= true;
    end;
  end;

  // Passwörter / Serials
  if (dm_PCM.iPassword = 0) and (dm_PCM.iSerials = 0)  then
  begin
    frm_PCm_Main.navbrgrp_Passwort.Visible:= false;
    frm_PCm_Main.iPasswoerter.Visible:= false;
    frm_PCm_Main.iSerials.Visible:= false;
  end;

  // Passwort / kein Recht
  case dm_PCM.iPassword of
  0: frm_PCm_Main.iPasswoerter.Visible:= false;
  // Passwort / Lesen / Schreiben / Vollzugriff
  1,2,3:
    begin
      frm_PCm_Main.iPasswoerter.Visible:= true;
      frm_PCm_Main.navbrgrp_Passwort.Visible:= true;
    end;
  end;

  // Serial / Kein Recht
  case dm_PCM.iSerials of
  0: frm_PCm_Main.iSerials.Visible:= false;
  // Serials / Lesen / Schreiben / Vollzugriff
  1,2,3:
    begin
      frm_PCm_Main.iSerials.Visible:= true;
      frm_PCm_Main.navbrgrp_Passwort.Visible:= true;
    end;
  end;

  // Finanzen / Kein Recht
  case dm_PCM.iMonatsuebersicht of
  0: frm_PCm_Main.navbrgrp_Finanzen.Visible:= false;
  // Finanzen / Lesen / Schreiben / Vollzugriff
  1,2,3:  frm_PCm_Main.navbrgrp_Finanzen.Visible:= true;
  end;
  Application.ProcessMessages;
  prgbr_Splash.Properties.Text:= 'Konfiguration laden...';
  Timer4.Enabled:= true;
end;
procedure TSplashScreen.Timer4Timer(Sender: TObject);
begin
  Timer4.Enabled := False;
  prgbr_Splash.Position:= prgbr_Splash.Position + 1;
  frm_pcm_main.LoadData;
  Application.ProcessMessages;
  prgbr_Splash.Properties.Text:= 'Menüs laden...';
  Timer5.Enabled:= true;
end;
procedure TSplashScreen.Timer5Timer(Sender: TObject);
begin
  Timer5.Enabled := False;
  prgbr_Splash.Position:= prgbr_Splash.Position + 1;
  frm_pcm_Main.Caption:= PCM_Programmname;
  frm_pcm_Main.trayIC_Main.PopupMenu:= frm_pcm_Main.ppm_main;
  if dm_PCM.bDemo then
    frm_pcm_main.Caption:=PCM_Programmname + rs_PCM_Demolizenz + DateTostr(dm_PCM.dtGueltig);
  Application.ProcessMessages;
  prgbr_Splash.Properties.Text:= 'Menüs registrieren...';
  Timer6.Enabled:= true;
end;
procedure TSplashScreen.Timer6Timer(Sender: TObject);
begin
  Timer6.Enabled := False;
  prgbr_Splash.Position:= prgbr_Splash.Position + 1;
  frm_pcm_Main.RegisterNavBarItems;
  Application.ProcessMessages;
  ModalResult := mrOk;
end;

end.
