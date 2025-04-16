unit PCMManager.Modul.B_Config;

interface

uses
  {$Region uses}
  cxButtonEdit,
  cxButtons,
  cxCheckBox,
  cxClasses,
  cxColorComboBox,
  cxContainer,
  cxControls,
  cxCurrencyEdit,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBColorComboBox,
  cxDBData,
  cxDBEdit,
  cxDBLookupComboBox,
  cxDBLookupEdit,
  cxDropDownEdit,
  cxEdit,
  cxFilter,
  cxGraphics,
  cxGrid,
  cxGridCustomTableView,
  cxGridCustomView,
  cxGridDBTableView,
  cxGridLevel,
  cxGridTableView,
  cxGroupBox,
  cxImage,
  cxImageComboBox,
  cxImageList,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxLookupEdit,
  cxMaskEdit,
  cxNavigator,
  cxPC,
  cxRadioGroup,
  cxStyles,
  cxTextEdit,
  Data.DB,
  dateutils,
  dxBar,
  dxBarBuiltInMenu,
  dxDateRanges,
  dxGDIPlusClasses,
  dxLayoutContainer,
  dxLayoutControl,
  dxLayoutControlAdapters,
  dxLayoutcxEditAdapters,
  dxScrollbarAnnotations,
  dxSkinWXI,
  dxUIAClasses,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  IdBaseComponent,
  IdComponent,
  IdContext,
  IdCustomHTTPServer,
  IdCustomTCPServer,
  IdExplicitTLSClientServerBase,
  IdHTTPServer,
  IdIMAP4,
  IdIOHandler,
  IdIOHandlerSocket,
  IdIOHandlerStack,
  IdMessage,
  IdMessageClient,
  IDpop3,
  IdSMTP,
  IdSMTPBase,
  IdSASL.OAuth.Base,
  IdSASLCollection,
  IdSSL,
  IdSSLOpenSSL,
  IdTCPClient,
  IdTCPConnection,
  IniFiles,
  OutlookXP,
  PCM.Functions,
  PCMManager.Helper.Email.OAuth,
  Shellapi,
  System.Classes,
  System.ImageList,
  System.Net.URLClient,
  System.SysUtils,
  System.UITypes,
  System.Variants,
  Vcl.BaseImageCollection,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.FileCtrl,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImageCollection,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.OleServer,
  Vcl.StdCtrls,
  Vcl.Themes,
  Vcl.VirtualImage,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion uses}
type
  {$Region Types}
  TAuthType = class of TIdSASLOAuthBase;
  TMailProviderInfo = record
    AuthenticationType : TAuthType;
    AuthorizationEndpoint : string;
    AccessTokenEndpoint : string;
    LogoutEndpoint : string;
    ClientID : String;
    ClientSecret : string;
    ClientAccount : string;
    ClientName : string;
    Scopes : string;
    SmtpHost : string;
    SmtpPort : Integer;
    PopHost : string;
    PopPort : Integer;
    ImapHost : string;
    ImapPort : Integer;
    AuthName : string;
    TLS : TIdUseTLS;
    TwoLinePOPFormat: Boolean;
    function TokenName: string;
  end;

  Tfrm_Config = class(TForm)
    bardckctrl_Anrede: TdxBarDockControl;
    bardckctrl_Aufgabenarten: TdxBarDockControl;
    bardckctrl_AufgabenPrio: TdxBarDockControl;
    bardckctrl_AufgabenSonstiges: TdxBarDockControl;
    bardckctrl_Geburtsland: TdxBarDockControl;
    bardckctrl_Kalender: TdxBarDockControl;
    bardckctrl_Phonerlite: TdxBarDockControl;
    bardckctrl_Postfach: TdxBarDockControl;
    brdckctrl_Email: TdxBarDockControl;
    brdckctrl_Feiertage: TdxBarDockControl;
    brdckctrl_FTP: TdxBarDockControl;
    brdckctrl_Schulfach: TdxBarDockControl;
    brdckctrl_SchulfachUhr: TdxBarDockControl;
    brmgr_Config: TdxBarManager;
    btn_AnredeCancel: TdxBarLargeButton;
    btn_AnredeDelete: TdxBarLargeButton;
    btn_AnredeNew: TdxBarLargeButton;
    btn_AnredeSave: TdxBarLargeButton;
    btn_AufgabenCancel: TdxBarLargeButton;
    btn_AufgabenDelete: TdxBarLargeButton;
    btn_AufgabenNew: TdxBarLargeButton;
    btn_AufgabenOptionenSave: TdxBarLargeButton;
    btn_AufgabenPrioCancel: TdxBarLargeButton;
    btn_AufgabenPrioDelete: TdxBarLargeButton;
    btn_AufgabenPrioNew: TdxBarLargeButton;
    btn_AufgabenPrioSave: TdxBarLargeButton;
    btn_AufgabenSave: TdxBarLargeButton;
    btn_CalConfigCancel: TdxBarLargeButton;
    btn_CalConfigDelete: TdxBarLargeButton;
    btn_CalConfigFTPCancel: TdxBarLargeButton;
    btn_CalConfigFTPDelete: TdxBarLargeButton;
    btn_CalConfigFTPNew: TdxBarLargeButton;
    btn_CalConfigFTPSave: TdxBarLargeButton;
    btn_CalConfigNew: TdxBarLargeButton;
    btn_CalConfigSave: TdxBarLargeButton;
    btn_CalFTDelete: TdxBarLargeButton;
    btn_CalFTinCal: TdxBarLargeButton;
    btn_CalFTNew: TdxBarLargeButton;
    btn_EmailConfig_Test: TcxButton;
    btn_EmailConfigCancel: TdxBarLargeButton;
    btn_EmailConfigDelete: TdxBarLargeButton;
    btn_EmailConfigNew: TdxBarLargeButton;
    btn_EmailConfigSave: TdxBarLargeButton;
    btn_FachCancel: TdxBarLargeButton;
    btn_FachDelete: TdxBarLargeButton;
    btn_FachNew: TdxBarLargeButton;
    btn_FachSave: TdxBarLargeButton;
    btn_FachUCancel: TdxBarLargeButton;
    btn_FachUSave: TdxBarLargeButton;
    btn_LandCancel: TdxBarLargeButton;
    btn_LandDelete: TdxBarLargeButton;
    btn_LandNew: TdxBarLargeButton;
    btn_LandSave: TdxBarLargeButton;
    btn_PhoneSave: TdxBarLargeButton;
    btn_PostfachCancel: TdxBarLargeButton;
    btn_PostfachMainbottom: TcxButton;
    btn_PostfachMaindown: TcxButton;
    btn_PostfachMainTop: TcxButton;
    btn_PostfachMainUp: TcxButton;
    btn_PostfachNew: TdxBarLargeButton;
    btn_PostfachSave: TdxBarLargeButton;
    btn_PostfachSubbottom: TcxButton;
    btn_PostfachSubDown: TcxButton;
    btn_PostfachSubTop: TcxButton;
    btn_PostfachSubUp: TcxButton;
    chkbx_CalConfigReminder: TcxDBCheckBox;
    chxbx_EmailConfig_SSL: TcxDBCheckBox;
    cmbbx_AufgabenSonstigesAdresseEigen: TcxDBLookupComboBox;
    cmbbx_AufgabenSonstigesAdresseFirma: TcxDBLookupComboBox;
    cmbbx_AufgabenSonstigesBundeslandEigen: TcxDBLookupComboBox;
    cmbbx_AufgabenSonstigesBundeslandFirma: TcxDBLookupComboBox;
    cmbbx_Auth: TcxDBImageComboBox;
    cmbbx_CalConfigReminderVal: TcxDBImageComboBox;
    colcmbbx_Aufgabenart: TcxDBColorComboBox;
    colcmbbx_CalConfigFontColor: TcxDBColorComboBox;
    colcmbbx_CalConfigLabelColor: TcxDBColorComboBox;
    colcmbbx_StundenplanConfig_FontColor: TcxDBColorComboBox;
    colcmbbx_StundenplanConfig_LabelColor: TcxDBColorComboBox;
    colcmbbx_StundenplanConfigUhr_FontColor: TcxDBColorComboBox;
    colcmbbx_StundenplanConfigUhr_LabelColor: TcxDBColorComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    ds_Anrede: TDataSource;
    ds_Aufgabenarten: TDataSource;
    ds_CalConfig: TDataSource;
    ds_CalConfigFTP: TDataSource;
    ds_EmailConfig: TDataSource;
    ds_EmailPostfachMain: TDataSource;
    ds_EmailPostfachSub: TDataSource;
    ds_FT: TDataSource;
    ds_Land: TDataSource;
    ds_option: TDataSource;
    ds_phone: TDataSource;
    ds_prio: TDataSource;
    ds_SchulFaecher: TDataSource;
    ds_SchulFaecher_Config: TDataSource;
    edt_Anrede: TcxDBTextEdit;
    edt_Aufgabenart: TcxDBTextEdit;
    edt_AufgabenSonstigesAccMail: TcxDBTextEdit;
    edt_AufgabenSonstigesAccToDo: TcxDBTextEdit;
    edt_AufgabenSonstigesJira: TcxDBTextEdit;
    edt_CalConfig_Benutzer: TcxDBTextEdit;
    edt_CalConfig_Kalender: TcxDBTextEdit;
    edt_CalConfig_Link: TcxDBTextEdit;
    edt_CalConfig_Passwort: TcxDBTextEdit;
    edt_CalConfigFTP_Benutzer: TcxDBTextEdit;
    edt_CalConfigFTP_Datei: TcxDBTextEdit;
    edt_CalConfigFTP_Passwort: TcxDBTextEdit;
    edt_CalConfigFTP_URL: TcxDBTextEdit;
    edt_EmailConfig_Benutzer: TcxDBTextEdit;
    edt_EmailConfig_Emailadresse: TcxDBTextEdit;
    edt_EmailConfig_Kennwort: TcxDBTextEdit;
    edt_EmailConfig_PortAusgang: TcxDBTextEdit;
    edt_EmailConfig_PortEingang: TcxDBTextEdit;
    edt_EmailConfig_PostAusgangServer: TcxDBTextEdit;
    edt_EmailConfig_PostEingangServer: TcxDBTextEdit;
    edt_Land: TcxDBTextEdit;
    edt_Phone: TcxDBButtonEdit;
    edt_PrioBez: TcxDBTextEdit;
    edt_PrioNumber: TcxDBTextEdit;
    edt_StundenplanConfig_FachBezeichnung: TcxDBTextEdit;
    grd_Anrede: TcxGrid;
    grd_Aufgabenarten: TcxGrid;
    grd_AufgabenPrio: TcxGrid;
    grd_CalConfig: TcxGrid;
    grd_EmailConfig: TcxGrid;
    grd_Feiertage: TcxGrid;
    grd_FTPConfig: TcxGrid;
    grd_Geburtsland: TcxGrid;
    grd_Phonerlite: TcxGrid;
    grd_Postfachmain: TcxGrid;
    grd_postfachSub: TcxGrid;
    grd_StundenplanConfig: TcxGrid;
    grd_StundenplanConfigUhr: TcxGrid;
    grdDBTblView_Anrede: TcxGridDBTableView;
    grdDBTblView_AnredeBezeichnung: TcxGridDBColumn;
    grdDBTblView_Aufgabenarten: TcxGridDBTableView;
    grdDBTblView_AufgabenartenBezeichnung: TcxGridDBColumn;
    grdDBTblView_AufgabenartenFarbe: TcxGridDBColumn;
    grdDBTblView_AufgabenPrio: TcxGridDBTableView;
    grdDBTblView_AufgabenPrioBezeichnung: TcxGridDBColumn;
    grdDBTblView_AufgabenPrioPrioritaet: TcxGridDBColumn;
    grdDBTblView_calconfig: TcxGridDBTableView;
    grdDBTblView_calconfigBenutzer: TcxGridDBColumn;
    grdDBTblView_calconfigErinnerung: TcxGridDBColumn;
    grdDBTblView_calconfigErinnerungVor: TcxGridDBColumn;
    grdDBTblView_calconfigFontcolor: TcxGridDBColumn;
    grdDBTblView_calconfigID_Benutzer: TcxGridDBColumn;
    grdDBTblView_calconfigKalender: TcxGridDBColumn;
    grdDBTblView_calconfigLabelColor: TcxGridDBColumn;
    grdDBTblView_calconfigLink: TcxGridDBColumn;
    grdDBTblView_calconfigPasswort: TcxGridDBColumn;
    grdDBTblView_emailConfig: TcxGridDBTableView;
    grdDBTblView_emailConfigBenutzer: TcxGridDBColumn;
    grdDBTblView_emailConfigEMail: TcxGridDBColumn;
    grdDBTblView_emailConfigKontotyp: TcxGridDBColumn;
    grdDBTblView_emailConfigPortEingangsserver: TcxGridDBColumn;
    grdDBTblView_emailConfigPostEingangsserver: TcxGridDBColumn;
    grdDBTblView_emailConfigSSLActive: TcxGridDBColumn;
    grdDBTblView_Feiertage: TcxGridDBTableView;
    grdDBTblView_FeiertageBezeichnung: TcxGridDBColumn;
    grdDBTblView_FeiertageJahr: TcxGridDBColumn;
    grdDBTblView_FeiertageKategorie: TcxGridDBColumn;
    grdDBTblView_FeiertageMonat: TcxGridDBColumn;
    grdDBTblView_FeiertageTag: TcxGridDBColumn;
    grdDBTblView_FTPConfig: TcxGridDBTableView;
    grdDBTblView_FTPConfigkalendername: TcxGridDBColumn;
    grdDBTblView_FTPConfigpasswort: TcxGridDBColumn;
    grdDBTblView_FTPConfigurl: TcxGridDBColumn;
    grdDBTblView_FTPConfiguser: TcxGridDBColumn;
    grdDBTblView_Geburtsland: TcxGridDBTableView;
    grdDBTblView_GeburtslandBezeichnung: TcxGridDBColumn;
    grdDBTblView_Phonerlite: TcxGridDBTableView;
    grdDBTblView_PhonerlitePath: TcxGridDBColumn;
    grdDBTblView_StundenplanConfig: TcxGridDBTableView;
    grdDBTblView_StundenplanConfigBezeichnung: TcxGridDBColumn;
    grdDBTblView_StundenplanConfigFarbe: TcxGridDBColumn;
    grdDBTblView_StundenplanConfigSchriftfarbe: TcxGridDBColumn;
    grdDBTblView_StundenplanConfigUhr: TcxGridDBTableView;
    grdDBTblView_StundenplanConfigUhrFarbe: TcxGridDBColumn;
    grdDBTblView_StundenplanConfigUhrSchriftfarbe: TcxGridDBColumn;
    grdDBTblViewl_Postfachmain: TcxGridDBTableView;
    grdDBTblViewl_PostfachmainAbonnieren: TcxGridDBColumn;
    grdDBTblViewl_PostfachmainAnzeige: TcxGridDBColumn;
    grdDBTblViewl_PostfachmainPostfach: TcxGridDBColumn;
    grdDBTblViewl_PostfachmainSortierung: TcxGridDBColumn;
    grdDBTblViewl_PostfachSub: TcxGridDBTableView;
    grdDBTblViewl_PostfachSubAbonnieren: TcxGridDBColumn;
    grdDBTblViewl_PostfachSubAnzeige: TcxGridDBColumn;
    grdDBTblViewl_PostfachSubParent: TcxGridDBColumn;
    grdDBTblViewl_PostfachSubPostfach: TcxGridDBColumn;
    grdDBTblViewl_PostfachSubSortierung: TcxGridDBColumn;
    grdLvl_Anrede: TcxGridLevel;
    grdLvl_Aufgabenarten: TcxGridLevel;
    grdlvl_AufgabenPrio: TcxGridLevel;
    grdlvl_CalConfig: TcxGridLevel;
    grdlvl_EmailConfig: TcxGridLevel;
    grdlvl_Feiertage: TcxGridLevel;
    grdlvl_FTPConfig: TcxGridLevel;
    grdLvl_Geburtsland: TcxGridLevel;
    grdLvl_Phonerlite: TcxGridLevel;
    grdlvl_Postfachmain: TcxGridLevel;
    grdlvl_PostfachSub: TcxGridLevel;
    grdlvl_StundenplanConfig: TcxGridLevel;
    grdlvl_StundenplanConfigUhr: TcxGridLevel;
    IdHTTPServer1: TIdHTTPServer;
    IdIMAP_Mail: TIdIMAP4;
    IDSMTP_Mail: TIdSMTP;
    IdSSLIOHandlerSocketIMAP: TIdSSLIOHandlerSocketOpenSSL;
    IdSSLIOHandlerSocketSMTP: TIdSSLIOHandlerSocketOpenSSL;
    lactrl_Config: TdxLayoutControl;
    lactrl_ConfigGroup_Root: TdxLayoutGroup;
    lactrl_ConfigTab: TdxLayoutGroup;
    lagrp_Anrede: TdxLayoutGroup;
    lagrp_Aufgaben: TdxLayoutGroup;
    lagrp_Aufgabenart: TdxLayoutGroup;
    lagrp_AufgabenartDetail: TdxLayoutGroup;
    lagrp_Contacts: TdxLayoutGroup;
    lagrp_EMail: TdxLayoutGroup;
    lagrp_Emailkonfiguration: TdxLayoutGroup;
    lagrp_EmailkonfigurationDetails: TdxLayoutGroup;
    lagrp_EmailkonfigurationDetailsLeft: TdxLayoutGroup;
    lagrp_EmailkonfigurationDetailsRight: TdxLayoutGroup;
    lagrp_EmailPostfaecherkonfiguration: TdxLayoutGroup;
    lagrp_EmailPostfaecherkonfigurationMain: TdxLayoutGroup;
    lagrp_EmailPostfaecherkonfigurationMainButtons: TdxLayoutGroup;
    lagrp_EmailPostfaecherkonfigurationSub: TdxLayoutGroup;
    lagrp_EmailPostfaecherkonfigurationSubButtons: TdxLayoutGroup;
    lagrp_Feiertage: TdxLayoutGroup;
    lagrp_FTP: TdxLayoutGroup;
    lagrp_FTPBenutzer: TdxLayoutItem;
    lagrp_FTPDateiname: TdxLayoutItem;
    lagrp_FTPDetail: TdxLayoutGroup;
    lagrp_FTPDetailLeft: TdxLayoutGroup;
    lagrp_FTPDetailRight: TdxLayoutGroup;
    lagrp_FTPHost: TdxLayoutItem;
    lagrp_FTPPasswort: TdxLayoutItem;
    lagrp_Geburtsland: TdxLayoutGroup;
    lagrp_Kalender: TdxLayoutGroup;
    lagrp_KalenderAnTerminerinnern: TdxLayoutGroup;
    lagrp_KalenderDetail: TdxLayoutGroup;
    lagrp_KalenderDetailLeft: TdxLayoutGroup;
    lagrp_KalenderDetailRight: TdxLayoutGroup;
    lagrp_Kalenders: TdxLayoutGroup;
    lagrp_Phone: TdxLayoutGroup;
    lagrp_Prio: TdxLayoutGroup;
    lagrp_PrioDetail: TdxLayoutGroup;
    lagrp_Sonstige: TdxLayoutGroup;
    lagrp_SonstigeBarDetail: TdxLayoutGroup;
    lagrp_SonstigeDetailLeft: TdxLayoutGroup;
    lagrp_SonstigeDetailRight: TdxLayoutGroup;
    lagrp_Stundenplan: TdxLayoutGroup;
    lagrp_StundenplanFaecher: TdxLayoutGroup;
    lagrp_StundenplanFaecherDetail: TdxLayoutGroup;
    lagrp_StundenplanFaecherFarbe: TdxLayoutGroup;
    lagrp_StundenplanUhrzeit: TdxLayoutGroup;
    lagrp_StundenplanUhrzeitFarbe: TdxLayoutGroup;
    laitm_AnredeAnrede: TdxLayoutItem;
    laitm_AnredeBar: TdxLayoutItem;
    laitm_AnredeGrid: TdxLayoutItem;
    laitm_AufgabenartArt: TdxLayoutItem;
    laitm_AufgabenartBar: TdxLayoutItem;
    laitm_AufgabenartBeschreibung: TdxLayoutItem;
    laitm_AufgabenartGrid: TdxLayoutItem;
    laitm_Emailadress: TdxLayoutItem;
    laitm_EmailAnmeldung: TdxLayoutLabeledItem;
    laitm_EmailCheck: TdxLayoutItem;
    laitm_EmailClientID: TdxLayoutItem;
    laitm_EmailClientSecret: TdxLayoutItem;
    laitm_EmailConfigTestAus: TdxLayoutLabeledItem;
    laitm_EmailConfigTestEin: TdxLayoutLabeledItem;
    laitm_EmailGrid: TdxLayoutItem;
    laitm_EmailKennwort: TdxLayoutItem;
    laitm_EmailkonfigurationBar: TdxLayoutItem;
    laitm_EmailPosausgangAdress: TdxLayoutItem;
    laitm_EmailPosausgangPort: TdxLayoutItem;
    laitm_EmailPoseingangadress: TdxLayoutItem;
    laitm_EmailPoseingangPort: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationBar: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationMainDown: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationMainFirst: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationMainGrid: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationMainLast: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationMainUp: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationSubDown: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationSubFirst: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationSubGrid: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationSubLast: TdxLayoutItem;
    laitm_EmailPostfaecherkonfigurationSubUp: TdxLayoutItem;
    laitm_EmailServer: TdxLayoutLabeledItem;
    laitm_EmailSSL: TdxLayoutItem;
    laitm_EmialAuth: TdxLayoutItem;
    laitm_FeiertageBar: TdxLayoutItem;
    laitm_FeiertageGrid: TdxLayoutItem;
    laitm_FTPBar: TdxLayoutItem;
    laitm_FTPGrid: TdxLayoutItem;
    laitm_GeburtslandBar: TdxLayoutItem;
    laitm_GeburtslandGrid: TdxLayoutItem;
    laitm_GeburtslandLand: TdxLayoutItem;
    laitm_KalenderAnTerminerinnern: TdxLayoutItem;
    laitm_KalenderAnTerminerinnernVor: TdxLayoutItem;
    laitm_KalenderBar: TdxLayoutItem;
    laitm_KalenderBenutzer: TdxLayoutItem;
    laitm_KalenderGrid: TdxLayoutItem;
    laitm_KalenderKalender: TdxLayoutItem;
    laitm_KalenderLink: TdxLayoutItem;
    laitm_KalenderPasswort: TdxLayoutItem;
    laitm_KalenderSchriftfarbe: TdxLayoutItem;
    laitm_KalenderTerminFarbe: TdxLayoutItem;
    laitm_PhoneBar: TdxLayoutItem;
    laitm_PhoneGrid: TdxLayoutItem;
    laitm_PhonePhonepath: TdxLayoutItem;
    laitm_PrioBar: TdxLayoutItem;
    laitm_PrioBeschreibung: TdxLayoutItem;
    laitm_PrioGrid: TdxLayoutItem;
    laitm_PrioPrio: TdxLayoutItem;
    laitm_SonstigeAccMail: TdxLayoutItem;
    laitm_SonstigeAccTODO: TdxLayoutItem;
    laitm_SonstigeAdresseFirma: TdxLayoutItem;
    laitm_SonstigeAdresseSelbst: TdxLayoutItem;
    laitm_SonstigeBar: TdxLayoutItem;
    laitm_SonstigeBundesland: TdxLayoutItem;
    laitm_SonstigeBundeslandFirma: TdxLayoutItem;
    laitm_SonstigeJira: TdxLayoutItem;
    laitm_SonstigeStunden: TdxLayoutItem;
    laitm_StundenplanFaecherBar: TdxLayoutItem;
    laitm_StundenplanFaecherFach: TdxLayoutItem;
    laitm_StundenplanFaecherFarbeHintergrund: TdxLayoutItem;
    laitm_StundenplanFaecherFarbeSchrift: TdxLayoutItem;
    laitm_StundenplanFaecherGrid: TdxLayoutItem;
    laitm_StundenplanUhrzeitBar: TdxLayoutItem;
    laitm_StundenplanUhrzeitFarbeHintergrund: TdxLayoutItem;
    laitm_StundenplanUhrzeitFarbeSchrift: TdxLayoutItem;
    laitm_StundenplanUhrzeitGrid: TdxLayoutItem;
    mskedt_AufgabenSonstigesStunden: TcxDBCurrencyEdit;
    qry_Anrede: TFDQuery;
    qry_AufgabenArten: TFDQuery;
    qry_CalConfig: TFDQuery;
    qry_CalConfigFTP: TFDQuery;
    qry_EmailConfig: TFDQuery;
    qry_EmailPostfachMain: TFDQuery;
    qry_EmailPostfachSub: TFDQuery;
    qry_FT1: TFDQuery;
    qry_Konfiguration_Kalender_Optionen: TFDQuery;
    qry_Land: TFDQuery;
    qry_phone: TFDQuery;
    qry_prio: TFDQuery;
    qry_SchulFaecher: TFDQuery;
    qry_SchulFaecher_Config: TFDQuery;
    tb_Aufgabenarten: TdxBar;
    tb_AufgabenConfig: TdxBar;
    tb_AufgabenPrio: TdxBar;
    tb_email: TdxBar;
    tb_Feiertage: TdxBar;
    tb_FTP: TdxBar;
    tb_Kalender: TdxBar;
    tb_KontaktAnrede: TdxBar;
    tb_KontaktLand: TdxBar;
    tb_KontaktSchnittstelle: TdxBar;
    tb_Postfach: TdxBar;
    tb_Schulfach: TdxBar;
    tb_SchulfachUhr: TdxBar;
    dxLayoutGroup1: TdxLayoutGroup;
    lagrp_OauthDetail: TdxLayoutGroup;
    laitm_AuthorizationEndpoint: TdxLayoutItem;
    cxDBTextEdit3: TcxDBTextEdit;
    laitm_scopes: TdxLayoutItem;
    laitm_AccessTokenEndpoint: TdxLayoutItem;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    lucmbbx_EmailConfig_Kontptyp: TcxDBLookupComboBox;
    laitm_EmailBenutzer: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    cxDBCheckBox1: TcxDBCheckBox;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    procedure btn_AnredeCancelClick(Sender: TObject);
    procedure btn_AnredeDeleteClick(Sender: TObject);
    procedure btn_AnredeNewClick(Sender: TObject);
    procedure btn_AnredeSaveClick(Sender: TObject);
    procedure btn_AufgabenCancelClick(Sender: TObject);
    procedure btn_AufgabenDeleteClick(Sender: TObject);
    procedure btn_AufgabenNewClick(Sender: TObject);
    procedure btn_AufgabenOptionenSaveClick(Sender: TObject);
    procedure btn_AufgabenPrioCancelClick(Sender: TObject);
    procedure btn_AufgabenPrioDeleteClick(Sender: TObject);
    procedure btn_AufgabenPrioNewClick(Sender: TObject);
    procedure btn_AufgabenPrioSaveClick(Sender: TObject);
    procedure btn_AufgabenSaveClick(Sender: TObject);
    procedure btn_CalConfigCancel1Click(Sender: TObject);
    procedure btn_CalConfigDelete1Click(Sender: TObject);
    procedure btn_CalConfigFTPCancelClick(Sender: TObject);
    procedure btn_CalConfigFTPDeleteClick(Sender: TObject);
    procedure btn_CalConfigFTPNewClick(Sender: TObject);
    procedure btn_CalConfigFTPSaveClick(Sender: TObject);
    procedure btn_CalConfigNew1Click(Sender: TObject);
    procedure btn_CalConfigSave1Click(Sender: TObject);
    procedure btn_CalFTDeleteClick(Sender: TObject);
    procedure btn_CalFTinCalClick(Sender: TObject);
    procedure btn_CalFTNewClick(Sender: TObject);
    procedure btn_EmailConfig_TestClick(Sender: TObject);
    procedure btn_EmailConfigCancelClick(Sender: TObject);
    procedure btn_EmailConfigDeleteClick(Sender: TObject);
    procedure btn_EmailConfigNewClick(Sender: TObject);
    procedure btn_EmailConfigSaveClick(Sender: TObject);
    procedure btn_FachCancelClick(Sender: TObject);
    procedure btn_FachDeleteClick(Sender: TObject);
    procedure btn_FachNewClick(Sender: TObject);
    procedure btn_FachSaveClick(Sender: TObject);
    procedure btn_FachUCancelClick(Sender: TObject);
    procedure btn_FachUSaveClick(Sender: TObject);
    procedure btn_LandCancelClick(Sender: TObject);
    procedure btn_LandDeleteClick(Sender: TObject);
    procedure btn_LandNewClick(Sender: TObject);
    procedure btn_LandSaveClick(Sender: TObject);
    procedure btn_PhoneSaveClick(Sender: TObject);
    procedure btn_PostfachCancelClick(Sender: TObject);
    procedure btn_PostfachMainbottomClick(Sender: TObject);
    procedure btn_PostfachMaindownClick(Sender: TObject);
    procedure btn_PostfachMainTopClick(Sender: TObject);
    procedure btn_PostfachMainUpClick(Sender: TObject);
    procedure btn_PostfachNewClick(Sender: TObject);
    procedure btn_PostfachSaveClick(Sender: TObject);
    procedure btn_PostfachSubbottomClick(Sender: TObject);
    procedure btn_PostfachSubDownClick(Sender: TObject);
    procedure btn_PostfachSubTopClick(Sender: TObject);
    procedure btn_PostfachSubUpClick(Sender: TObject);
    procedure edt_PhonePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_PhonePropertiesEditValueChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IdHTTPServer1CommandGet(AContext: TIdContext; ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure lactrl_ConfigTabTabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
    procedure qry_EmailConfigAfterScroll(DataSet: TDataSet);
    procedure qry_EmailPostfachMainAfterScroll(DataSet: TDataSet);
    procedure SetButtonsEnableVisible(DataSet: TDataSet);
  private
    { Private-Deklarationen }
    FOAuth2_Enhanced : TEnhancedOAuth2Authenticator;
    Provider : TMailProviderInfo;
    iMaxSortierung: integer;
    SaveGridViewKalender,
    SaveGridViewFeiertage,
    SaveGridViewFTP,
    SaveGridViewAufgabenarten,
    SaveGridViewAufgabenPrio,
    SaveGridViewStundenplan,
    SaveGridViewStundenplanFarbe,
    SaveGridViewEmail,
    SaveGridViewPostfach,
    SaveGridViewUnterPostfach : TSavedGridView;
    procedure OpenData(ATab: Integer);
    procedure SetGridViews(Show:boolean);
    procedure SetButtons;
    procedure SetupAuthenticator;
    procedure SortierungFirstLastMain(bUpDown: Boolean);
    procedure SortierungAendernMain(bUpDown: Boolean);
    procedure SortierungFirstLastSub(bUpDown: Boolean);
    procedure SortierungAendernSub(bUpDown: Boolean);
  public
    { Public-Deklarationen }
    iID_Benutzer: integer;
  end;
  {$EndRegion Types}
var
  {$Region var}
  frm_Config: Tfrm_Config;
  {$EndRegion var}
const
  {$Region const}
  clientredirect = 'http://localhost:2132';
  {$EndRegion const}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Data,
  PCM.Main,
  PCM.Functions.Synch.Wait,
  PCM.Strings,
  PCMManager.Modul.B_Config.Kalender.Feiertage.Aktualisieren,
  PCMManager.Modul.B_Config.Kalender.Feiertage.Neu,
  IdSASL.OAuth.XOAUTH2;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function TMailProviderInfo.TokenName: string;
begin
  Result := AuthName + 'Token';
end;
procedure Tfrm_Config.OpenData(ATab: Integer);
begin
  case ATab of
  0:
    begin
      qry_Anrede.Open;
      qry_Land.Open;
      qry_Phone.Open;
    end;
  1:
    begin
      qry_CalConfig.Open;
      qry_CalConfigFTP.Open;
      qry_CalConfig.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      qry_CalConfig.Filtered := true;
      qry_CalConfigFTP.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      qry_CalConfigFTP.Filtered := true;
      dm_PCM.qry_Config_Benutzer.Open;
      qry_FT1.Open;
      qry_FT1.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      qry_FT1.Filtered := true;
    end;
  2:
    begin
      qry_AufgabenArten.Open;
      qry_Prio.Open;
      dm_PCM.qry_Config_Ansprechpartner.Open;
      dm_PCM.qry_Config_Firmen.Open;
      dm_PCM.qry_Config_Bundesland.Open;
      qry_Konfiguration_Kalender_Optionen.Open;
      qry_Konfiguration_Kalender_Optionen.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      qry_Konfiguration_Kalender_Optionen.Filtered := true;
    end;
  3:
    begin
      qry_SchulFaecher.Open;
      qry_SchulFaecher.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      qry_SchulFaecher.Filtered := true;
      qry_SchulFaecher_Config.Open;
      qry_SchulFaecher_Config.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      qry_SchulFaecher_Config.Filtered := true;
    end;
  4:
    begin
      dm_PCM.qry_Config_EmailConfigTyp.Open;
      qry_EmailConfig.Open;
      qry_EmailConfig.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      qry_EmailConfig.Filtered := true;
      qry_EmailPostfachMain.Open;
      dm_PCM.qry_Config_EmailPostfachLU.Open;
    end;
  end;
end;
procedure Tfrm_Config.SetGridViews(Show: boolean);
begin
  if Show then
  begin
    SaveGridViewKalender := TSavedGridView.Create(GV_Kalender,dm_PCM.iIDBenutzerPCM, grdDBTblView_calconfig);
    SaveGridViewKalender.LoadView;
    SaveGridViewFeiertage := TSavedGridView.Create(GV_Feiertage,dm_PCM.iIDBenutzerPCM, grdDBTblView_Feiertage);
    SaveGridViewFeiertage.LoadView;
    SaveGridViewFTP := TSavedGridView.Create(GV_FTP,dm_PCM.iIDBenutzerPCM, grdDBTblView_FTPConfig);
    SaveGridViewFTP.LoadView;
    SaveGridViewAufgabenarten := TSavedGridView.Create(GV_AUFGABENarten,dm_PCM.iIDBenutzerPCM, grdDBTblView_Aufgabenarten);
    SaveGridViewAufgabenarten.LoadView;
    SaveGridViewAufgabenPrio := TSavedGridView.Create(GV_AUFGABENPrio,dm_PCM.iIDBenutzerPCM, grdDBTblView_Aufgabenprio);
    SaveGridViewAufgabenPrio.LoadView;
    SaveGridViewStundenplan := TSavedGridView.Create(GV_Stundenplan,dm_PCM.iIDBenutzerPCM, grdDBTblView_StundenplanConfig);
    SaveGridViewStundenplan.LoadView;
    SaveGridViewStundenplanFarbe := TSavedGridView.Create(GV_StundenplanFarbe,dm_PCM.iIDBenutzerPCM, grdDBTblView_StundenplanConfigUhr);
    SaveGridViewStundenplanFarbe.LoadView;
    SaveGridViewEmail := TSavedGridView.Create(GV_Email,dm_PCM.iIDBenutzerPCM, grdDBTblView_Emailconfig);
    SaveGridViewEmail.LoadView;
    SaveGridViewPostfach := TSavedGridView.Create(GV_Postfach,dm_PCM.iIDBenutzerPCM, grdDBTblViewl_Postfachmain);
    SaveGridViewPostfach.LoadView;
    SaveGridViewUnterPostfach := TSavedGridView.Create(GV_UnterPostfach,dm_PCM.iIDBenutzerPCM, grdDBTblViewl_Postfachsub);
    SaveGridViewUnterPostfach.LoadView;

  end
  else begin
    SaveGridViewKalender.SaveView(0);
    SaveGridViewKalender.Free;
    SaveGridViewFeiertage.SaveView(0);
    SaveGridViewFeiertage.Free;
    SaveGridViewFTP.SaveView(0);
    SaveGridViewFTP.Free;
    SaveGridViewAufgabenarten.SaveView(0);
    SaveGridViewAufgabenarten.Free;
    SaveGridViewAufgabenPrio.SaveView(0);
    SaveGridViewAufgabenPrio.Free;
    SaveGridViewStundenplan.SaveView(0);
    SaveGridViewStundenplan.Free;
    SaveGridViewStundenplanFarbe.SaveView(0);
    SaveGridViewStundenplanFarbe.Free;
    SaveGridViewEmail.SaveView(0);
    SaveGridViewEmail.Free;
    SaveGridViewPostfach.SaveView(0);
    SaveGridViewPostfach.Free;
    SaveGridViewUnterPostfach.SaveView(0);
    SaveGridViewUnterPostfach.Free;
  end;
end;
procedure Tfrm_Config.SetButtons;
begin
  // AB_Optionen
  if dm_PCM.iKonfiguration >= 2 then
  begin
    btn_AnredeSave.enabled := qry_Anrede.State in [dsInsert, dsEdit];
    btn_AnredeCancel.enabled := qry_Anrede.State in [dsInsert, dsEdit];
    btn_LandSave.enabled := qry_Land.State in [dsInsert, dsEdit];
    btn_LandCancel.enabled := qry_Land.State in [dsInsert, dsEdit];
    btn_PhoneSave.enabled := qry_phone.State in [dsInsert, dsEdit];
    // Option Kalender
    btn_CalConfigSave.enabled := qry_CalConfig.State in [dsInsert, dsEdit];
    btn_CalConfigCancel.enabled := qry_CalConfig.State in [dsInsert, dsEdit];
    // Option Aufgaben Arten
    btn_AufgabenSave.enabled := qry_AufgabenArten.State in [dsInsert, dsEdit];
    btn_AufgabenCancel.enabled := qry_AufgabenArten.State in [dsInsert, dsEdit];
    // Option Aufgaben Prio
    btn_AufgabenPrioSave.enabled := qry_prio.State in [dsInsert, dsEdit];
    btn_AufgabenPrioCancel.enabled := qry_prio.State in [dsInsert, dsEdit];
    // Option Aufgaben Optionen
    btn_AufgabenOptionenSave.enabled := qry_Konfiguration_Kalender_Optionen.State in [dsInsert, dsEdit];
    // Option FTP
    btn_CalConfigFTPSave.enabled := qry_CalConfigFTP.State in [dsInsert, dsEdit];
    btn_CalConfigFTPCancel.enabled := qry_CalConfigFTP.State in [dsInsert, dsEdit];
    // Option Schulfächer
    btn_FachSave.enabled := qry_SchulFaecher.State in [dsInsert, dsEdit];
    btn_FachCancel.enabled := qry_SchulFaecher.State in [dsInsert, dsEdit];
    // Option Uhrzeit
    btn_FachUSave.enabled := qry_SchulFaecher_Config.State in [dsInsert, dsEdit];
    btn_FachUCancel.enabled := qry_SchulFaecher_Config.State
      in [dsInsert, dsEdit];
    // Option Email
    btn_EmailConfigSave.enabled := qry_EmailConfig.State in [dsInsert, dsEdit];
    btn_EmailConfigCancel.enabled := qry_EmailConfig.State in [dsInsert, dsEdit];
    if (qry_EmailPostfachMain.State in [dsInsert, dsEdit]) or  (qry_EmailPostfachSub.State in [dsInsert, dsEdit])then
    begin
      btn_PostfachSave.enabled := true;
      btn_PostfachCancel.enabled := true;
    end
    else begin
      btn_PostfachSave.enabled := false;
      btn_PostfachCancel.enabled := false;
    end;

  end;
  if dm_PCM.iKonfiguration = 3 then
  begin
    btn_AnredeDelete.enabled := qry_Anrede.State in [dsInsert, dsEdit];
    btn_LandDelete.enabled := qry_Land.State in [dsInsert, dsEdit];
    // Option Kalender
    btn_CalConfigDelete.enabled := (not qry_CalConfig.Eof) and not(qry_CalConfig.State in [dsInsert, dsEdit]);
    // Option Aufgaben Arten
    btn_AufgabenDelete.enabled := (not qry_AufgabenArten.Eof) and not(qry_AufgabenArten.State in [dsInsert, dsEdit]);
    // Option Aufgaben Prio
    btn_AufgabenPrioDelete.enabled := (not qry_prio.Eof) and not(qry_prio.State in [dsInsert, dsEdit]);
    // Option FTP
    btn_CalConfigFTPDelete.enabled := (not qry_CalConfigFTP.Eof) and not(qry_CalConfigFTP.State in [dsInsert, dsEdit]);
    // Option Schulfächer
    btn_FachDelete.enabled := (not qry_SchulFaecher.Eof) and  not(qry_SchulFaecher.State in [dsInsert, dsEdit]);
    // Option EMail
    btn_EmailConfigDelete.enabled := (not qry_EmailConfig.Eof) and  not(qry_EmailConfig.State in [dsInsert, dsEdit]);
    // Option Feiertage eintragen
    btn_CalFTDelete.enabled := (not qry_FT1.Eof) and  not(qry_FT1.State in [dsInsert, dsEdit]);
  end;
  if qry_CalConfig.RecordCount = 0 then
  begin
    edt_CalConfig_Kalender.enabled := false;
    edt_CalConfig_Link.enabled := false;
    colcmbbx_CalConfigLabelColor.enabled := false;
    chkbx_CalConfigReminder.enabled := false;
    cmbbx_CalConfigReminderVal.enabled := false;
    edt_CalConfig_Benutzer.enabled := false;
    edt_CalConfig_Passwort.enabled := false;
    colcmbbx_CalConfigFontColor.enabled := false;
  end
  else
  begin
    if dm_PCM.iKonfiguration >= 2 then
    begin
      edt_CalConfig_Kalender.enabled := true;
      edt_CalConfig_Link.enabled := true;
      colcmbbx_CalConfigLabelColor.enabled := true;
      chkbx_CalConfigReminder.enabled := true;
      cmbbx_CalConfigReminderVal.enabled := true;
      edt_CalConfig_Benutzer.enabled := true;
      edt_CalConfig_Passwort.enabled := true;
      colcmbbx_CalConfigFontColor.enabled := true;
    end;
  end;
  if qry_FT1.RecordCount = 0 then
  begin
    btn_CalFTinCal.enabled:= false;
  end
  else begin
    btn_CalFTinCal.enabled:= true;
  end;

  if qry_CalConfigFTP.RecordCount = 0 then
  begin
    edt_CalConfigFTP_URL.enabled := false;
    edt_CalConfigFTP_Datei.enabled := false;
    edt_CalConfigFTP_Benutzer.enabled := false;
    edt_CalConfigFTP_Passwort.enabled := false;
  end
  else
  begin
    if dm_PCM.iKonfiguration >= 2 then
    begin
      edt_CalConfigFTP_URL.enabled := true;
      edt_CalConfigFTP_Datei.enabled := true;
      edt_CalConfigFTP_Benutzer.enabled := true;
      edt_CalConfigFTP_Passwort.enabled := true;
    end;
  end;
  if qry_SchulFaecher.RecordCount = 0 then
  begin
    edt_StundenplanConfig_FachBezeichnung.enabled := false;
    colcmbbx_StundenplanConfig_LabelColor.enabled := false;
    colcmbbx_StundenplanConfig_FontColor.enabled := false;
  end
  else
  begin
    if dm_PCM.iKonfiguration >= 2 then
    begin
      edt_StundenplanConfig_FachBezeichnung.enabled := true;
      colcmbbx_StundenplanConfig_LabelColor.enabled := true;
      colcmbbx_StundenplanConfig_FontColor.enabled := true;
    end;
  end;
  if qry_EmailConfig.RecordCount = 0 then
  begin
    edt_EmailConfig_Emailadresse.enabled := false;
    lucmbbx_EmailConfig_Kontptyp.enabled := false;
    edt_EmailConfig_PostEingangServer.enabled := false;
    edt_EmailConfig_PortEingang.enabled := false;
    edt_EmailConfig_Benutzer.enabled := false;
    edt_EmailConfig_Kennwort.enabled := false;
    edt_EmailConfig_PostAusgangServer.enabled := false;
    edt_EmailConfig_PortAusgang.enabled := false;
    chxbx_EmailConfig_SSL.enabled := false;
  end
  else
  begin
    if dm_PCM.iKonfiguration >= 2 then
    begin
      edt_EmailConfig_Emailadresse.enabled := true;
      lucmbbx_EmailConfig_Kontptyp.enabled := true;
      edt_EmailConfig_PostEingangServer.enabled := true;
      edt_EmailConfig_PortEingang.enabled := true;
      edt_EmailConfig_Benutzer.enabled := true;
      edt_EmailConfig_Kennwort.enabled := true;
      edt_EmailConfig_PostAusgangServer.enabled := true;
      edt_EmailConfig_PortAusgang.enabled := true;
      chxbx_EmailConfig_SSL.enabled := true;
    end;
  end;
end;
procedure Tfrm_Config.SetButtonsEnableVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
procedure Tfrm_Config.SetupAuthenticator;
begin
  FOAuth2_Enhanced.ClientID := qry_EmailConfig.FieldByName('ClientID').AsString;;
  FOAuth2_Enhanced.ClientSecret := qry_EmailConfig.FieldByName('ClientSecret').AsString;
  FOAuth2_Enhanced.Scope := qry_EmailConfig.FieldByName('Scopes').AsString;
  FOAuth2_Enhanced.RedirectionEndpoint := clientredirect;
  FOAuth2_Enhanced.AuthorizationEndpoint := qry_EmailConfig.FieldByName('AuthorizationEndpoint').AsString;
  FOAuth2_Enhanced.AccessTokenEndpoint := qry_EmailConfig.FieldByName('AccessTokenEndpoint').AsString;
  FOAuth2_Enhanced.RefreshToken := qry_EmailConfig.FieldByName('Refreshtoken').AsString;
  FOAuth2_Enhanced.AccessToken := '';
  FOAuth2_Enhanced.AccessTokenExpiry := 0;
end;
procedure Tfrm_Config.SortierungAendernMain(bUpDown: Boolean);
var
  iTemp, iTemp2, iTempID, iTempID2: Integer;
begin
  dm_PCM.qry_Work.SQL.Text := 'UPDATE manager_email_postfach SET Sortierung = :Sort WHERE ID = :ID';

  iTemp := qry_EmailPostfachMain.FieldByName('Sortierung').AsInteger;
  iTempID := qry_EmailPostfachMain.FieldByName('ID').AsInteger;

  if bUpDown then
    iTemp2 := iTemp - 1
  else
    iTemp2 := iTemp + 1;

  if qry_EmailPostfachMain.Locate('Sortierung', iTemp2, []) then
  begin
    qry_EmailPostfachMain.Edit;
    qry_EmailPostfachMain.FieldByName('Sortierung').AsInteger := iTemp;
    iTempID2 := qry_EmailPostfachMain.FieldByName('ID').AsInteger;
    qry_EmailPostfachMain.Post;

    qry_EmailPostfachMain.Locate('ID', iTempID, []);
    qry_EmailPostfachMain.Edit;
    qry_EmailPostfachMain.FieldByName('Sortierung').AsInteger := iTemp2;
    qry_EmailPostfachMain.Post;

    dm_PCM.qry_Work.ParamByName('Sort').AsInteger := iTemp;
    dm_PCM.qry_Work.ParamByName('ID').AsInteger := iTempID2;
    dm_PCM.qry_Work.ExecSQL;

    dm_PCM.qry_Work.ParamByName('Sort').AsInteger := iTemp2;
    dm_PCM.qry_Work.ParamByName('ID').AsInteger := iTempID;
    dm_PCM.qry_Work.ExecSQL;
  end;
end;
procedure Tfrm_Config.SortierungAendernSub(bUpDown: Boolean);
var
  iTemp, iTemp2, iTempID, iTempID2: Integer;
begin
  dm_PCM.qry_Work.SQL.Text := 'UPDATE manager_email_postfach SET Sortierung = :Sort WHERE ID = :ID';

  iTemp := qry_EmailPostfachSub.FieldByName('Sortierung').AsInteger;
  iTempID := qry_EmailPostfachSub.FieldByName('ID').AsInteger;

  if bUpDown then
    iTemp2 := iTemp - 1
  else
    iTemp2 := iTemp + 1;

  if qry_EmailPostfachSub.Locate('Sortierung', iTemp2, []) then
  begin
    qry_EmailPostfachSub.Edit;
    qry_EmailPostfachSub.FieldByName('Sortierung').AsInteger := iTemp;
    iTempID2 := qry_EmailPostfachSub.FieldByName('ID').AsInteger;
    qry_EmailPostfachSub.Post;

    qry_EmailPostfachSub.Locate('ID', iTempID, []);
    qry_EmailPostfachSub.Edit;
    qry_EmailPostfachSub.FieldByName('Sortierung').AsInteger := iTemp2;
    qry_EmailPostfachSub.Post;

    dm_PCM.qry_Work.ParamByName('Sort').AsInteger := iTemp;
    dm_PCM.qry_Work.ParamByName('ID').AsInteger := iTempID2;
    dm_PCM.qry_Work.ExecSQL;

    dm_PCM.qry_Work.ParamByName('Sort').AsInteger := iTemp2;
    dm_PCM.qry_Work.ParamByName('ID').AsInteger := iTempID;
    dm_PCM.qry_Work.ExecSQL;
  end;
end;
procedure Tfrm_Config.SortierungFirstLastMain(bUpDown: Boolean);
var
  iTemp, iTempID, iTempSchleife, iTempEnde: integer;
begin
  iTemp := qry_EmailPostfachMain.FieldByName('Sortierung').asInteger;
  iTempID := qry_EmailPostfachMain.FieldByName('ID').asInteger;
  iMaxSortierung := qry_EmailPostfachMain.RecordCount;
  if bUpDown then
  begin
    dm_PCM.qry_Work.SQL.text :=  'UPDATE manager_email_postfach SET Sortierung = Sortierung + 1 WHERE ID = :ID AND Typ = 0 AND Sortierung < :Sort';
    iTempEnde := 1;
  end
  else
  begin
    dm_PCM.qry_Work.SQL.text :=  'UPDATE manager_email_postfach SET Sortierung = Sortierung + 1 WHERE ID = :ID AND Typ = 0 AND Sortierung < :Sort';
    iTempEnde := iMaxSortierung;
  end;

  iTempSchleife := iTemp;
  if bUpDown then
  begin
    while iTempSchleife > iTempEnde do
    begin
      Dec(iTempSchleife);
      if qry_EmailPostfachMain.Locate('Sortierung', iTempSchleife, []) then
      begin
        qry_EmailPostfachMain.Edit;
        qry_EmailPostfachMain.FieldByName('Sortierung').asInteger :=  qry_EmailPostfachMain.FieldByName('Sortierung').asInteger + 1;
        qry_EmailPostfachMain.Post;
      end;
    end;
  end
  else
  begin
    while iTempSchleife < iTempEnde do
    begin
      Inc(iTempSchleife);
      if qry_EmailPostfachMain.Locate('Sortierung', iTempSchleife, []) then
      begin
        qry_EmailPostfachMain.Edit;
        qry_EmailPostfachMain.FieldByName('Sortierung').asInteger := qry_EmailPostfachMain.FieldByName('Sortierung').asInteger - 1;
        qry_EmailPostfachMain.Post;
      end;
    end;
  end;

  qry_EmailPostfachMain.Edit;
  qry_EmailPostfachMain.FieldByName('Sortierung').asInteger := iTempEnde;
  qry_EmailPostfachMain.Post;

  dm_PCM.qry_Work.ParamByName('Sort').asInteger := iTemp;
  dm_PCM.qry_Work.ParamByName('ID').AsInteger := qry_EmailPostfachMain.FieldByName('ID').AsInteger;
  dm_PCM.qry_Work.ExecSQL;

  dm_PCM.qry_Work.SQL.text := 'UPDATE manager_email_postfach SET Sortierung = :Sort WHERE Typ = 0 AND ID = :ID';
  dm_PCM.qry_Work.ParamByName('Sort').asInteger := iTempEnde;
  dm_PCM.qry_Work.ParamByName('ID').asInteger := iTempID;
  dm_PCM.qry_Work.ExecSQL;
  qry_EmailPostfachMain.Refresh;
end;
procedure Tfrm_Config.SortierungFirstLastSub(bUpDown: Boolean);
var
  iTemp, iTempID, iTempSchleife, iTempEnde: integer;
begin
  iTemp := qry_EmailPostfachSub.FieldByName('Sortierung').asInteger;
  iTempID := qry_EmailPostfachSub.FieldByName('ID').asInteger;
  iMaxSortierung := qry_EmailPostfachSub.RecordCount;
  if bUpDown then
  begin
    dm_PCM.qry_Work.SQL.text :=  'UPDATE manager_email_postfach SET Sortierung = Sortierung + 1 WHERE ID = :ID AND Typ = 1 AND Sortierung < :Sort';
    iTempEnde := 1;
  end
  else
  begin
    dm_PCM.qry_Work.SQL.text :=  'UPDATE manager_email_postfach SET Sortierung = Sortierung + 1 WHERE ID = :ID AND Typ = 1 AND Sortierung < :Sort';
    iTempEnde := iMaxSortierung;
  end;

  iTempSchleife := iTemp;
  if bUpDown then
  begin
    while iTempSchleife > iTempEnde do
    begin
      Dec(iTempSchleife);
      if qry_EmailPostfachSub.Locate('Sortierung', iTempSchleife, []) then
      begin
        qry_EmailPostfachSub.Edit;
        qry_EmailPostfachSub.FieldByName('Sortierung').asInteger :=  qry_EmailPostfachSub.FieldByName('Sortierung').asInteger + 1;
        qry_EmailPostfachSub.Post;
      end;
    end;
  end
  else
  begin
    while iTempSchleife < iTempEnde do
    begin
      Inc(iTempSchleife);
      if qry_EmailPostfachSub.Locate('Sortierung', iTempSchleife, []) then
      begin
        qry_EmailPostfachSub.Edit;
        qry_EmailPostfachSub.FieldByName('Sortierung').asInteger := qry_EmailPostfachSub.FieldByName('Sortierung').asInteger - 1;
        qry_EmailPostfachSub.Post;
      end;
    end;
  end;

  qry_EmailPostfachSub.Edit;
  qry_EmailPostfachSub.FieldByName('Sortierung').asInteger := iTempEnde;
  qry_EmailPostfachSub.Post;

  dm_PCM.qry_Work.ParamByName('Sort').asInteger := iTemp;
  dm_PCM.qry_Work.ParamByName('ID').AsInteger := qry_EmailPostfachSub.FieldByName('ID').AsInteger;
  dm_PCM.qry_Work.ExecSQL;

  dm_PCM.qry_Work.SQL.text := 'UPDATE manager_email_postfach SET Sortierung = :Sort WHERE Typ = 1 AND ID = :ID';
  dm_PCM.qry_Work.ParamByName('Sort').asInteger := iTempEnde;
  dm_PCM.qry_Work.ParamByName('ID').asInteger := iTempID;
  dm_PCM.qry_Work.ExecSQL;
  qry_EmailPostfachSub.Refresh;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Tabfunktionen                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Tabfunktionen}
procedure Tfrm_Config.lactrl_ConfigTabTabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
begin
  OpenData(ANewTabIndex);
end;
{$EndRegion Tabfunktionen}
////////////////////////////////////////////////////////////////////////////////
// TabKontakte                                                                //
////////////////////////////////////////////////////////////////////////////////
{$Region TabKontakte}
// Anrede
procedure Tfrm_Config.btn_AnredeCancelClick(Sender: TObject);
begin
  qry_Anrede.Cancel;
end;
procedure Tfrm_Config.btn_AnredeDeleteClick(Sender: TObject);
begin
  if qry_Anrede.FieldByName('ID').asInteger > 0 then
  begin
    qry_Anrede.Delete;
  end;
end;
procedure Tfrm_Config.btn_AnredeNewClick(Sender: TObject);
begin
  if qry_Anrede.State in [dsInsert, dsEdit] then
    qry_Anrede.Post;
  qry_Anrede.Append;
  qry_Anrede.Insert;
  if not edt_Anrede.enabled then
  begin
    edt_Anrede.enabled := true;
  end;
  edt_Anrede.SetFocus;
end;
procedure Tfrm_Config.btn_AnredeSaveClick(Sender: TObject);
begin
  if qry_Anrede.State in [dsInsert, dsEdit] then
  begin
    edt_Anrede.PostEditValue;
    qry_Anrede.Post;
  end;
end;
// Geburtsland
procedure Tfrm_Config.btn_LandCancelClick(Sender: TObject);
begin
  qry_Land.Cancel;
end;
procedure Tfrm_Config.btn_LandDeleteClick(Sender: TObject);
begin
  if qry_Land.FieldByName('ID').asInteger > 0 then
  begin
    qry_Land.Delete;
  end;
end;
procedure Tfrm_Config.btn_LandNewClick(Sender: TObject);
begin
  if qry_Land.State in [dsInsert, dsEdit] then
    qry_Land.Post;
  qry_Land.Append;
  qry_Land.Insert;
  if not edt_Land.enabled then
  begin
    edt_Land.enabled := true;
  end;
  edt_Land.SetFocus;
end;
procedure Tfrm_Config.btn_LandSaveClick(Sender: TObject);
begin
  if qry_land.State in [dsInsert, dsEdit] then
  begin
    edt_land.PostEditValue;
    qry_land.Post;
  end;
end;
// Phone
procedure Tfrm_Config.btn_PhoneSaveClick(Sender: TObject);
begin
  if qry_phone.State in [dsInsert, dsEdit] then
  begin
    edt_Phone.PostEditValue;
    qry_phone.Post;
  end;
end;
procedure Tfrm_Config.edt_PhonePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  sDir: String;
begin
  qry_phone.Edit;
  if SelectDirectory(rs_PCMService_QuellVerzeichnis, '', sDir) then
  begin
    edt_Phone.Text := sDir;
  end;

end;
procedure Tfrm_Config.edt_PhonePropertiesEditValueChanged(Sender: TObject);
begin
  btn_PhoneSaveClick(Sender);
end;
{$EndRegion TabKontakte}
////////////////////////////////////////////////////////////////////////////////
// TabKalender                                                                //
////////////////////////////////////////////////////////////////////////////////
{$Region TabKalender}
// Kalender
procedure Tfrm_Config.btn_CalConfigNew1Click(Sender: TObject);
begin
  if qry_CalConfig.State in [dsInsert, dsEdit] then
    qry_CalConfig.Post;
  qry_CalConfig.Append;
  qry_CalConfig.Insert;
  qry_CalConfig.FieldByName('LabelColor').asInteger := 13083265;
  qry_CalConfig.FieldByName('FontColor').asInteger := 0;
  qry_CalConfig.FieldByName('ID_Benutzer').asInteger := dm_PCM.iIDBenutzerPCM;
  if not edt_CalConfig_Kalender.enabled then
  begin
    edt_CalConfig_Kalender.enabled := true;
    edt_CalConfig_Link.enabled := true;
    colcmbbx_CalConfigLabelColor.enabled := true;
    chkbx_CalConfigReminder.enabled := true;
    cmbbx_CalConfigReminderVal.enabled := true;
    edt_CalConfig_Benutzer.enabled := true;
    edt_CalConfig_Passwort.enabled := true;
    colcmbbx_CalConfigFontColor.enabled := true;
  end;
  edt_CalConfig_Kalender.SetFocus;
end;
procedure Tfrm_Config.btn_CalConfigSave1Click(Sender: TObject);
begin
  if qry_CalConfig.State in [dsInsert, dsEdit] then
  begin
    edt_CalConfig_Kalender.PostEditValue;
    edt_CalConfig_Link.PostEditValue;
    edt_CalConfig_Benutzer.PostEditValue;
    edt_CalConfig_Passwort.PostEditValue;
    qry_CalConfig.Post;
  end;
end;
procedure Tfrm_Config.btn_CalConfigCancel1Click(Sender: TObject);
begin
  qry_CalConfig.Cancel;
end;
procedure Tfrm_Config.btn_CalConfigDelete1Click(Sender: TObject);
begin
  if qry_CalConfig.FieldByName('ID').asInteger > 0 then
  begin
    qry_CalConfig.Delete;
  end;
end;
// Feiertage
procedure Tfrm_Config.btn_CalFTNewClick(Sender: TObject);
begin
  Application.CreateForm(TfFeiertageBerechnen, fFeiertageBerechnen);
  if fFeiertageBerechnen.Execute(true, dm_PCM.iIDBenutzerPCM) then;
    qry_FT1.Refresh;
  fFeiertageBerechnen.Free;
end;
procedure Tfrm_Config.btn_CalFTDeleteClick(Sender: TObject);
begin
  if qry_FT1.FieldByName('ID').asInteger > 0 then
  begin
    qry_FT1.Delete;
  end
end;
procedure Tfrm_Config.btn_CalFTinCalClick(Sender: TObject);
var
  datTimVon, datTimbis: TDateTime;
  iAnzahl: integer;
  sBundesland: string;
  iID_Adresse: integer;
begin
  Application.CreateForm(Tfrm_FeiertageAktualisieren, frm_FeiertageAktualisieren);
  if frm_FeiertageAktualisieren.Execute(datTimVon, datTimbis) then
  begin
    dm_PCM.qry_work1.SQL.text := 'SELECT Jahr, Datum, Bezeichnung, kategorie From manager_feiertage Where ID_Benutzer = :ID and Datum >= :Von AND Datum <= :Bis';
    dm_PCM.qry_work1.ParamByName('ID').asInteger := dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work1.ParamByName('Von').AsDateTime := datTimVon;
    dm_PCM.qry_work1.ParamByName('Bis').AsDateTime := datTimbis;
    dm_PCM.qry_work1.Open;
    ShowWaitForm(TForm(Self), PWideChar(rs_PCMManager_Feiertageintragen), dm_PCM.qry_work1.RecordCount, 417, 65);
    Application.ProcessMessages;
    Screen.Cursor := crHourGlass;
    while not dm_PCM.qry_work1.Eof do
    begin
      WaitFormStep;
      dm_PCM.qry_Work.SQL.text := 'SELECT Count(*) as Anzahl FROM manager_kalender WHERE Caption = :Caption AND  DATE(START) = :Date and Kalendername = :Kalender';
      dm_PCM.qry_Work.ParamByName('Caption').AsString := dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString;
      dm_PCM.qry_Work.ParamByName('Kalender').AsString := 'Feiertage ' + dm_PCM.qry_work1.FieldByName('Jahr').AsString;
      dm_PCM.qry_Work.ParamByName('Date').AsDate := dm_PCM.qry_work1.FieldByName('Datum').AsDateTime;
      dm_PCM.qry_Work.Open;
      iAnzahl := dm_PCM.qry_Work.FieldByName('Anzahl').asInteger;
      dm_PCM.qry_Work.Close;
//      iID_Adresse:=  -1;
      if Pos('(',dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString)  > 0 then
        sBundesland := Copy(dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString, Pos('(',dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString)+1, Length(dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString));
        sBundesland := StringReplace(sBundesland,')','',[rfReplaceAll,rfIgnoreCase]);
        dm_PCM.qry_Work.SQL.text := 'SELECT IFNULL(Adresse_eigene,-1) AS ID FROM manager_kalender_optionen  WHERE  Adresse_eigeneBL = (SELECT ID FROM manager_Bundesland Where Bezeichnung = :Bezeichnung) ' +
                             'UNION all ' +
                             'SELECT IFNULL(Adresse_Firma,-1) AS ID FROM manager_kalender_optionen WHERE  Adresse_FirmaBL = (SELECT ID FROM manager_Bundesland Where Bezeichnung = :Bezeichnung)';
        dm_PCM.qry_work.ParamByName('Bezeichnung').AsString := sBundesland;
        dm_PCM.qry_Work.Open;
        iID_Adresse := dm_PCM.qry_Work.FieldByName('ID').asInteger;
        dm_PCM.qry_Work.Close;

      if iAnzahl = 0 then
      begin
        dm_PCM.qry_Work.SQL.text := 'Insert into manager_Kalender (ID_ADR_Wurzel,ID_Ansprechpartner,EventType,Caption,Location,Message,'
                          + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
                          + 'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,Kalendername,CompleteDay,Typ,GesendetAM,Aufgabenstatus,ID_IC_AufgabenArten,Erledigungsgrad,Zeitformat,ID_IC_Prioritaeten,AufgabenDauer) Values (:ID_ADR_Wurzel,:ID_Ansprechpartner,'
                          + ':Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
                          + 'NULL,0,:Color,:FontColor,:ID,:Kalender,:ganzerTag,2,Now(),0,:ID_IC_AufgabenArten,0,0,1,1440)';
        if dm_PCM.qry_work1.FieldByName('Kategorie').AsInteger = 1 then
          dm_PCM.qry_Work.ParamByName('Beschreibung').AsString := dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString + '(ganzer Tag)'
        else
          dm_PCM.qry_Work.ParamByName('Beschreibung').AsString := dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString + '(halber Tag)' ;
        dm_PCM.qry_Work.ParamByName('ID_ADR_Wurzel').asInteger := iID_Adresse;
        dm_PCM.qry_Work.ParamByName('ID_Ansprechpartner').asInteger := iID_Adresse;
        dm_PCM.qry_Work.ParamByName('Eventtype').asInteger := 0;
        dm_PCM.qry_Work.ParamByName('SUMMARY').AsString := dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString;
        dm_PCM.qry_Work.ParamByName('Location').AsString := 'Feiertag';
        dm_PCM.qry_Work.ParamByName('DateBegin').AsDateTime := dm_PCM.qry_work1.FieldByName('Datum').AsDateTime;;
        dm_PCM.qry_Work.ParamByName('DateEnd').AsDateTime := IncDay(dm_PCM.qry_work1.FieldByName('Datum').AsDateTime, 1);
        dm_PCM.qry_Work.ParamByName('Options').asInteger := 2;
        dm_PCM.qry_Work.ParamByName('Reminder').AsString := 'false';
        dm_PCM.qry_Work.ParamByName('RecurrenceInfo').AsString := '';
        dm_PCM.qry_Work.ParamByName('Color').AsString := IntToStr(8453888);
        dm_PCM.qry_Work.ParamByName('FontColor').AsString := IntToStr(clBlack);
        dm_PCM.qry_Work.ParamByName('ID_IC_AufgabenArten').asInteger := 1;
        dm_PCM.qry_Work.ParamByName('ID').asInteger := dm_PCM.iIDBenutzerPCM;
        dm_PCM.qry_Work.ParamByName('Kalender').AsString := 'Feiertage ' + dm_PCM.qry_work1.FieldByName('Jahr').AsString;
        dm_PCM.qry_Work.ParamByName('ganzerTag').AsString := 'true';
        dm_PCM.qry_Work.ExecSQL;
        dm_PCM.qry_Work.Close;
      end;
      dm_PCM.qry_work1.Next;
    end;
    dm_PCM.qry_work1.Close;
    qry_FT1.Refresh;
    Screen.Cursor := crDefault;
    CloseWaitForm;
  end;
  frm_FeiertageAktualisieren.Free;
end;
// FTP
procedure Tfrm_Config.btn_CalConfigFTPNewClick(Sender: TObject);
begin
  if qry_CalConfigFTP.State in [dsInsert, dsEdit] then
    qry_CalConfigFTP.Post;
  qry_CalConfigFTP.Append;
  qry_CalConfigFTP.Insert;
  qry_CalConfigFTP.FieldByName('ID_Benutzer').asInteger := dm_PCM.iIDBenutzerPCM;
  if not edt_CalConfigFTP_URL.enabled then
  begin
    edt_CalConfigFTP_URL.enabled := true;
    edt_CalConfigFTP_Datei.enabled := true;
    edt_CalConfigFTP_Benutzer.enabled := true;
    edt_CalConfigFTP_Passwort.enabled := true;
  end;

  edt_CalConfigFTP_URL.SetFocus;
end;
procedure Tfrm_Config.btn_CalConfigFTPSaveClick(Sender: TObject);
begin
  if qry_CalConfigFTP.State in [dsInsert, dsEdit] then
  begin
    edt_CalConfigFTP_URL.PostEditValue;
    edt_CalConfigFTP_Datei.PostEditValue;
    edt_CalConfigFTP_Benutzer.PostEditValue;
    edt_CalConfigFTP_Passwort.PostEditValue;
    qry_CalConfigFTP.Post;
  end;
end;
procedure Tfrm_Config.btn_CalConfigFTPCancelClick(Sender: TObject);
begin
  qry_CalConfigFTP.Cancel;
end;
procedure Tfrm_Config.btn_CalConfigFTPDeleteClick(Sender: TObject);
begin
  if qry_CalConfigFTP.FieldByName('ID').asInteger > 0 then
  begin
    qry_CalConfigFTP.Delete;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// TabAufgaben                                                                //
////////////////////////////////////////////////////////////////////////////////
{$Region TabAufgaben}
// Aufgabentypen
procedure Tfrm_Config.btn_AufgabenNewClick(Sender: TObject);
begin
  if qry_AufgabenArten.State in [dsInsert, dsEdit] then
    qry_AufgabenArten.Post;
  qry_AufgabenArten.Append;
  qry_AufgabenArten.Insert;
  qry_AufgabenArten.FieldByName('Bezeichnung').AsString := '';
  qry_AufgabenArten.FieldByName('Farbe').asInteger := 16777215;
  if not edt_Aufgabenart.enabled then
  begin
    edt_Aufgabenart.enabled := true;
    colcmbbx_Aufgabenart.enabled := true;
  end;
  edt_Aufgabenart.SetFocus
end;
procedure Tfrm_Config.btn_AufgabenSaveClick(Sender: TObject);
begin
  if qry_AufgabenArten.State in [dsInsert, dsEdit] then
  begin
    edt_Aufgabenart.PostEditValue;
    qry_AufgabenArten.Post;
  end;

end;
procedure Tfrm_Config.btn_AufgabenCancelClick(Sender: TObject);
begin
  qry_AufgabenArten.Cancel;
end;
procedure Tfrm_Config.btn_AufgabenDeleteClick(Sender: TObject);
begin
  if qry_AufgabenArten.FieldByName('ID').asInteger > 0 then
  begin
    qry_AufgabenArten.Delete;
  end;
end;
// Aufgabenprio
procedure Tfrm_Config.btn_AufgabenPrioNewClick(Sender: TObject);
begin
  if qry_Prio.State in [dsInsert, dsEdit] then
    qry_Prio.Post;
  qry_Prio.Append;
  qry_Prio.Insert;
  qry_Prio.FieldByName('Bezeichnung').AsString := '';
  qry_Prio.FieldByName('Prioritaet').AsString := '';
  if not edt_PrioNumber.enabled then
  begin
    edt_PrioNumber.enabled := true;
    edt_PrioNumber.enabled := true;
  end;
  edt_PrioNumber.SetFocus
end;
procedure Tfrm_Config.btn_AufgabenPrioSaveClick(Sender: TObject);
begin
  if qry_prio.State in [dsInsert, dsEdit] then
  begin
    edt_PrioNumber.PostEditValue;
    edt_PrioBez.PostEditValue;
    qry_prio.Post;
  end;
end;
procedure Tfrm_Config.btn_AufgabenPrioCancelClick(Sender: TObject);
begin
  qry_prio.Cancel;
end;
procedure Tfrm_Config.btn_AufgabenPrioDeleteClick(Sender: TObject);
begin
  if qry_Prio.FieldByName('ID').asInteger > 0 then
  begin
    qry_Prio.Delete;
  end;
end;
// Aufgabenoptionen
procedure Tfrm_Config.btn_AufgabenOptionenSaveClick(Sender: TObject);
begin
  if qry_Konfiguration_Kalender_Optionen.State in [dsInsert, dsEdit] then
  begin
    mskedt_AufgabenSonstigesStunden.PostEditValue;
    edt_AufgabenSonstigesJira.PostEditValue;
    qry_Konfiguration_Kalender_Optionen.Post;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// TabStundenplan                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region TabStundenplan}
// Schulfach
procedure Tfrm_Config.btn_FachNewClick(Sender: TObject);
begin
  if qry_SchulFaecher.State in [dsInsert, dsEdit] then
    qry_SchulFaecher.Post;
  qry_SchulFaecher.Append;
  qry_SchulFaecher.Insert;
  qry_SchulFaecher.FieldByName('Farbe').asInteger := 16777215;
  qry_SchulFaecher.FieldByName('SchriftFarbe').asInteger := 0;
  qry_SchulFaecher.FieldByName('ID_Benutzer').asInteger := dm_PCM.iIDBenutzerPCM;
  if not edt_StundenplanConfig_FachBezeichnung.enabled then
  begin
    edt_StundenplanConfig_FachBezeichnung.enabled := true;
    colcmbbx_StundenplanConfig_LabelColor.enabled := true;
    colcmbbx_StundenplanConfig_FontColor.enabled := true;
  end;
  edt_StundenplanConfig_FachBezeichnung.SetFocus;
end;
procedure Tfrm_Config.btn_FachSaveClick(Sender: TObject);
begin
  if qry_SchulFaecher.State in [dsInsert, dsEdit] then
  begin
    edt_StundenplanConfig_FachBezeichnung.PostEditValue;
    qry_SchulFaecher.Post;
  end;
end;
procedure Tfrm_Config.btn_FachCancelClick(Sender: TObject);
begin
  qry_SchulFaecher.Cancel;
end;
procedure Tfrm_Config.btn_FachDeleteClick(Sender: TObject);
begin
  if qry_SchulFaecher.FieldByName('ID').asInteger > 0 then
  begin
    qry_SchulFaecher.Delete;
  end;
end;
// Uhrzeiten
procedure Tfrm_Config.btn_FachUSaveClick(Sender: TObject);
begin
  if qry_SchulFaecher_Config.State in [dsInsert, dsEdit] then
  begin
    qry_SchulFaecher_Config.Post;
  end;
end;
procedure Tfrm_Config.btn_FachUCancelClick(Sender: TObject);
begin
  qry_SchulFaecher_Config.Cancel;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// TabEmail                                                                   //
////////////////////////////////////////////////////////////////////////////////
{$Region TabEmail}
// Emailaccounts
procedure Tfrm_Config.qry_EmailConfigAfterScroll(DataSet: TDataSet);
begin
  SetButtons;
  if qry_EmailConfig.FieldByName('Authtype').asInteger = 0 then
  begin
    lagrp_OauthDetail.Visible:= false;
  end
  else begin
    lagrp_OauthDetail.Visible:= true;
  end;
  qry_EmailPostfachMain.SQL.text := 'SELECT ID,Postfach,Anzeige,Sortierung, Typ, Parent, Abonnieren, ID_manager_email FROM manager_email_postfach WHERE typ = 0 and ID_MANAGER_Email = :ID';
  qry_EmailPostfachMain.ParamByName('ID').asInteger := qry_EmailConfig.FieldByName('ID').asInteger;
  qry_EmailPostfachMain.Open;
  qry_EmailPostfachSub.SQL.text := 'SELECT ID,Postfach,Anzeige,Sortierung, Typ, Parent, Abonnieren, ID_manager_email FROM manager_email_postfach WHERE parent = :parent and ID_MANAGER_Email = :ID';
  qry_EmailPostfachSub.ParamByName('parent').asInteger := qry_EmailPostfachMain.FieldByName('ID').asInteger;
  qry_EmailPostfachSub.ParamByName('ID').asInteger := qry_EmailConfig.FieldByName('ID').asInteger;
  qry_EmailPostfachSub.Open;
  dm_PCM.qry_Config_EmailPostfachLU.SQL.text := 'SELECT ID,Postfach,Anzeige,Sortierung, Typ, Parent, Abonnieren, ID_manager_email FROM manager_email_postfach WHERE ID_MANAGER_Email = :ID';
  dm_PCM.qry_Config_EmailPostfachLU.ParamByName('ID').asInteger := qry_EmailConfig.FieldByName('ID').asInteger;
  dm_PCM.qry_Config_EmailPostfachLU.Open;
  Provider.AccessTokenEndpoint:=qry_EmailConfig.FieldByName('AccessTokenEndpoint').AsString;
  Provider.AuthenticationType:= TIdSASLXOAuth;
  Provider.AuthName:= 'Microsoft';
  Provider.AuthorizationEndpoint:= qry_EmailConfig.FieldByName('AuthorizationEndpoint').AsString;
  Provider.ClientAccount:= qry_EmailConfig.FieldByName('Benutzer').AsString;
  Provider.ClientID:= qry_EmailConfig.FieldByName('ClientID').AsString;
  Provider.ClientSecret:= qry_EmailConfig.FieldByName('ClientSecret').AsString;
  Provider.ImapHost:= qry_EmailConfig.FieldByName('PostEingangsserver').AsString;
  Provider.ImapPort:= qry_EmailConfig.FieldByName('PortEingangsserver').AsInteger;
  Provider.Scopes:= qry_EmailConfig.FieldByName('Scopes').AsString;
  Provider.SmtpHost:= qry_EmailConfig.FieldByName('PostAusgangsserver').AsString;
  Provider.SmtpPort:= qry_EmailConfig.FieldByName('PortAusgangsserver').AsInteger;
  Provider.TLS:= utUseExplicitTLS;

end;
procedure Tfrm_Config.qry_EmailPostfachMainAfterScroll(DataSet: TDataSet);
begin
  SetButtons;
  qry_EmailPostfachSub.SQL.text := 'SELECT ID,Postfach,Anzeige,Sortierung, Typ, Parent, Abonnieren, ID_manager_email FROM manager_email_postfach WHERE parent = :parent';
  qry_EmailPostfachSub.ParamByName('parent').asInteger := qry_EmailPostfachMain.FieldByName('ID').asInteger;
  qry_EmailPostfachSub.Open;
end;
procedure Tfrm_Config.btn_EmailConfigNewClick(Sender: TObject);
begin
  if qry_EmailConfig.State in [dsInsert, dsEdit] then
    qry_EmailConfig.Post;
  qry_EmailConfig.Append;
  qry_EmailConfig.Insert;
  qry_EmailConfig.FieldByName('SSLActive').AsString := 'false';
  qry_EmailConfig.FieldByName('ID_Benutzer').asInteger := dm_PCM.iIDBenutzerPCM;
  if not edt_EmailConfig_Emailadresse.enabled then
  begin
    edt_EmailConfig_Emailadresse.enabled := true;
    lucmbbx_EmailConfig_Kontptyp.enabled := true;
    edt_EmailConfig_PostEingangServer.enabled := true;
    edt_EmailConfig_PortEingang.enabled := true;
    edt_EmailConfig_Benutzer.enabled := true;
    edt_EmailConfig_Kennwort.enabled := true;
    edt_EmailConfig_PostAusgangServer.enabled := true;
    edt_EmailConfig_PortAusgang.enabled := true;
    chxbx_EmailConfig_SSL.enabled := true;
  end;
  edt_EmailConfig_Emailadresse.SetFocus;
end;
procedure Tfrm_Config.btn_EmailConfigSaveClick(Sender: TObject);
begin
  if qry_EmailConfig.State in [dsInsert, dsEdit] then
  begin
    edt_EmailConfig_Emailadresse.PostEditValue;
    edt_EmailConfig_PostEingangServer.PostEditValue;
    edt_EmailConfig_PortEingang.PostEditValue;
    edt_EmailConfig_Benutzer.PostEditValue;
    edt_EmailConfig_Kennwort.PostEditValue;
    edt_EmailConfig_PostAusgangServer.PostEditValue;
    edt_EmailConfig_PortAusgang.PostEditValue;
    qry_EmailConfig.Post;
  end;
end;
procedure Tfrm_Config.btn_EmailConfigCancelClick(Sender: TObject);
begin
  qry_EmailConfig.Cancel;
end;
procedure Tfrm_Config.btn_EmailConfigDeleteClick(Sender: TObject);
begin
  if qry_EmailConfig.FieldByName('ID').asInteger > 0 then
  begin
    dm_PCM.qry_Work.SQL.Text:= 'Delete From manager_email_postfach Where ID = :ID';
    dm_PCM.qry_Work.ParamByName('ID').asInteger:= qry_EmailConfig.FieldByName('ID').asInteger;
    dm_PCM.qry_Work.ExecSQL;
    qry_EmailConfig.Delete;
  end;
end;
procedure Tfrm_Config.btn_EmailConfig_TestClick(Sender: TObject);
  procedure MailAuthenticate;
  var
    uri : TURI;
  begin
    uri := TURI.Create(FOAuth2_Enhanced.AuthorizationRequestURI);
    ShellExecute(0,'open',PChar(uri.ToString),nil,nil,0);
  end;
var
  RtfContent: TStringList;
  xoauthSASL : TIdSASLListEntry;
  idSmtpMail: TIdSMTP;
  idSSLIOHndOPSSLPostfach: TIdSSLIOHandlerSocketOpenSSL;
  idmsgMail: TIdMessage;
  idSSLIOHndOPSSLMail: TIdSSLIOHandlerSocketOpenSSL;
begin
  if cmbbx_Auth.EditingValue = 0 then
  begin
    IdIMAP_Mail.SASLMechanisms.Clear;
    IdIMAP_Mail.AuthType:= iatUserPass;
    idSSLIOHndOPSSLMail := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
    idSSLIOHndOPSSLMail.SSLOptions.Method:= sslvSSLv23;
    IdIMAP_Mail.IOHandler := idSSLIOHndOPSSLMail;
    IdIMAP_Mail.UseTLS := utUseImplicitTLS;
    IdIMAP_Mail.Host := qry_EmailConfig.FieldByName('PostEingangsserver').AsString;
    IdIMAP_Mail.Port := qry_EmailConfig.FieldByName('PortEingangsserver').AsInteger;
    IdIMAP_Mail.UseTLS := utUseImplicitTLS;
    IdIMAP_Mail.Username := qry_EmailConfig.FieldByName('Benutzer').AsString;;
    IdIMAP_Mail.Password := qry_EmailConfig.FieldByName('Passwort').AsString;
    try
      IdIMAP_Mail.Connect;
      laitm_EmailConfigTestEin.CaptionOptions.Text:= '[B][COLOR=#00FF40]' + rs_PCMManager_posteingangerfolgreich + '[/COLOR][/B]';
      laitm_EmailConfigTestEin.Visible:= true;
      IdIMAP_Mail.Disconnect;
    except
      laitm_EmailConfigTestEin.CaptionOptions.Text:= '[B][COLOR=#FF8080]' + rs_PCMManager_posteingangnichterfolgreich +'[/COLOR][/B]';
      laitm_EmailConfigTestEin.Visible:= true;
    end;
    idSSLIOHndOPSSLMail.Free;

    idSmtpMail := TIdSMTP.Create(nil);
    idSSLIOHndOPSSLMail := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
    idSSLIOHndOPSSLMail.SSLOptions.Method:= sslvSSLv23;
    idSSLIOHndOPSSLpostfach := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    idmsgMail := TIdMessage.Create(nil);
     try
      try
        idSmtpMail.Host := qry_EmailConfig.FieldByName('PostAusgangsserver').AsString;
        idSmtpMail.Port := qry_EmailConfig.FieldByName('PortAusgangsserver').AsInteger;
        idSmtpMail.Username := qry_EmailConfig.FieldByName('Benutzer').AsString;
        idSmtpMail.Password := qry_EmailConfig.FieldByName('Passwort').AsString;
        idSSLIOHndOPSSLpostfach.Host := idSmtpMail.Host;
        idSSLIOHndOPSSLpostfach.Port := idSmtpMail.Port;
        idSSLIOHndOPSSLpostfach.SSLOptions.Method := sslvSSLv23;
        idSmtpMail.IOHandler := idSSLIOHndOPSSLpostfach;
        idSmtpMail.UseTLS := utUseRequireTLS;
        idmsgMail.Recipients.EMailAddresses := qry_EmailConfig.FieldByName('Email').AsString;
        idmsgMail.Subject := rs_PCMManager_Testmail ;
        idmsgMail.Body.Text := rs_PCMManager_TestmailBody;
        idmsgMail.From.Address := idSmtpMail.Username;
        idSmtpMail.Connect;
        idSmtpMail.Send(idmsgMail);
        idSmtpMail.Disconnect;
      finally
        idmsgMail.Free;
        idSSLIOHndOPSSLpostfach.Free;
        idSmtpMail.Free;
        laitm_EmailConfigTestAus.CaptionOptions.Text:= '[B][COLOR=#00FF40]' + rs_PCMManager_postausgangerfolgreich + '[/COLOR][/B]';
        laitm_EmailConfigTestAus.Visible:= true;
      end;
    except
      laitm_EmailConfigTestAus.CaptionOptions.Text:= '[B][COLOR=#FF8080]' + rs_PCMManager_postausgangnichterfolgreich +'[/COLOR][/B]';
      laitm_EmailConfigTestAus.Visible:= true;
    end;
  end
  else begin
    // IMAP

    if qry_EmailConfig.FieldByName('RefreshToken').AsString = '' then
      MailAuthenticate;
    SetupAuthenticator;
    FOAuth2_Enhanced.ClientID := Provider.ClientID;
    FOAuth2_Enhanced.ClientSecret := Provider.ClientSecret;
    FOAuth2_Enhanced.RefreshAccessTokenIfRequired;
    IdIMAP_Mail.Host := qry_EmailConfig.FieldByName('PostEingangsserver').AsString;
    IdIMAP_Mail.Port := qry_EmailConfig.FieldByName('PortEingangsserver').AsInteger;
    IdIMAP_Mail.IOHandler:= IdSSLIOHandlerSocketIMAP;
    IdIMAP_Mail.UseTLS := utUseExplicitTLS;
    xoauthSASL := IdIMAP_Mail.SASLMechanisms.Add;
    xoauthSASL.SASL := Provider.AuthenticationType.Create(nil);
    TIdSASLOAuthBase(xoauthSASL.SASL).Token := FOAuth2_Enhanced.AccessToken;
    TIdSASLOAuthBase(xoauthSASL.SASL).User := Provider.ClientAccount;
    IdIMAP_Mail.AuthType := iatSASL;
    try
      IdIMAP_Mail.Connect;
      laitm_EmailConfigTestEin.CaptionOptions.Text:= '[B][COLOR=#00FF40]' + rs_PCMManager_posteingangerfolgreich + '[/COLOR][/B]';
      laitm_EmailConfigTestEin.Visible:= true;
      IdIMAP_Mail.Disconnect;
    except
      laitm_EmailConfigTestEin.CaptionOptions.Text:= '[B][COLOR=#FF8080]' + rs_PCMManager_posteingangnichterfolgreich +'[/COLOR][/B]';
      laitm_EmailConfigTestEin.Visible:= true;
    end;
    xoauthSASL.SASL.Free;
    // SMTP
    FOAuth2_Enhanced.ClientID := Provider.ClientID;
    FOAuth2_Enhanced.ClientSecret := Provider.ClientSecret;
    FOAuth2_Enhanced.RefreshAccessTokenIfRequired;
    if FOAuth2_Enhanced.AccessToken.Length = 0 then
    begin
      Exit;
    end;
    try
      IDSMTP_Mail.Host := Provider.SmtpHost;
      IDSMTP_Mail.UseTLS := Provider.TLS;
      IDSMTP_Mail.Port := Provider.SmtpPort;
      IDSMTP_Mail.IOHandler:= IdSSLIOHandlerSocketSMTP;
      xoauthSASL := IDSMTP_Mail.SASLMechanisms.Add;
      xoauthSASL.SASL := Provider.AuthenticationType.Create(nil);
      TIdSASLOAuthBase(xoauthSASL.SASL).Token := FOAuth2_Enhanced.AccessToken;
      TIdSASLOAuthBase(xoauthSASL.SASL).User := Provider.ClientAccount;
      IdSSLIOHandlerSocketSMTP.SSLOptions.SSLVersions := [sslvTLSv1_2];
      IDSMTP_Mail.Connect;

      IDSMTP_Mail.AuthType := satSASL;
      IDSMTP_Mail.Authenticate;
      idmsgMail := TIdMessage.Create(Self);
      idmsgMail.From.Address := Provider.ClientAccount;
      idmsgMail.From.Name := Provider.ClientName;
      idmsgMail.ReplyTo.EMailAddresses := idmsgMail.From.Address;
      idmsgMail.Recipients.Add.Text := Provider.ClientAccount;
      idmsgMail.Subject := rs_PCMManager_Testmail;
      idmsgMail.Body.Text := rs_PCMManager_TestmailBody;
      IDSMTP_Mail.Send(idmsgMail);
      idmsgMail.Free;
      IDSMTP_Mail.Disconnect;
      laitm_EmailConfigTestAus.CaptionOptions.Text:= '[B][COLOR=#00FF40]' + rs_PCMManager_postausgangerfolgreich + '[/COLOR][/B]';
      laitm_EmailConfigTestAus.Visible:= true;
    except
      laitm_EmailConfigTestAus.CaptionOptions.Text:= '[B][COLOR=#FF8080]' + rs_PCMManager_postausgangnichterfolgreich +'[/COLOR][/B]';
      laitm_EmailConfigTestAus.Visible:= true;
    end;
    xoauthSASL.SASL.Free;
//  mailboxes := TStringList.Create;
//  try
//    IdIMAP_Mail.ListMailBoxes(mailboxes);
//  finally
//    FreeAndNil(mailboxes);
//  end;

{
  IdIMAP_Mail.SelectMailBox('[Gmail]/All Mail');
  msgCount:= IdIMAP_Mail.MailBox.TotalMsgs;
  ShowMessage(msgCount.ToString + ' Messages available for download');
}

  end;
end;
// Postfächer
procedure Tfrm_Config.btn_PostfachNewClick(Sender: TObject);
  procedure ShowFolders(AIdIMAP41: Tidimap4);
  var
    i,iLastMain,iLastSub: integer;
    bRet: Boolean;
    strlstUsersFolders: TStringList;
    sFolder,sFoldermain,sFoldermainPrev: string;
    sSeparator: String;
    iLastID,intI: integer;
  begin
    try
      iLastMain:= 1;
      iLastSub:= 1;
      sFoldermainPrev:= '';
      strlstUsersFolders := TStringList.Create;
      bRet := AIdIMAP41.ListMailBoxes(strlstUsersFolders);
      Application.ProcessMessages;
      if bRet = False then begin
        MessageDlg(rs_PCMManager_OrdnerNichtGelesen, mtWarning, [mbOk], 0);
      end;
      Application.ProcessMessages;
      for i := 0 to strlstUsersFolders.Count-1 do begin
        Application.ProcessMessages;
        sFolder:=   strlstUsersFolders[i];
        intI:=Pos('/',sFolder)  + Pos('.',sFolder) ;
        if intI > 0  then
        begin
          if Pos('/',sFolder) >  0 then
            sSeparator:= '/';
          if Pos('.',sFolder) >  0 then
            sSeparator:= '.';
          Application.ProcessMessages;
          sFoldermain:=Copy(sFolder,1, intI-1);
          sFolder:= Copy(sFolder, intI + 1, Length(sFolder));
  //        intISub:= Pos('/',sFolder);
  //        if intISub > 0  then
  //        begin
            Application.ProcessMessages;

            dm_PCM.qry_Work.SQL.text := 'SELECT ID as LASTID FROM manager_email_postfach WHERE Postfach = :Postfach and ID_manager_email = :ID';
            dm_PCM.qry_Work.ParamByName('ID').asInteger := qry_EmailConfig.FieldByName('ID').asInteger;
            dm_PCM.qry_Work.ParamByName('Postfach').asString := sFoldermain;
            dm_PCM.qry_Work.Open;
            iLastID := dm_PCM.qry_Work.FieldByName('LASTID').asInteger;
            dm_PCM.qry_Work.Close;


            if sFoldermainPrev <> sFoldermain then
              iLastSub:=  1;

            dm_PCM.qry_Work.SQL.text := 'Insert into manager_email_postfach (Postfach,Anzeige,Sortierung,Typ,Parent,Abonnieren,ID_manager_email,Trennzeichen) Values ('
                      + ':Postfach,:Anzeige,:Sortierung,:Typ,:Parent,:Abonnieren,:ID_manager_email,:Trennzeichen)';
            dm_PCM.qry_Work.ParamByName('Postfach').AsString := sFolder;
            dm_PCM.qry_Work.ParamByName('Anzeige').AsString := sFolder;
            dm_PCM.qry_Work.ParamByName('Sortierung').asInteger := iLastSub;
            dm_PCM.qry_Work.ParamByName('Typ').asInteger := 1;
            dm_PCM.qry_Work.ParamByName('Parent').asInteger := iLastID ;
            dm_PCM.qry_Work.ParamByName('Abonnieren').AsString := 'true';
            dm_PCM.qry_Work.ParamByName('Trennzeichen').AsString := sSeparator;
            dm_PCM.qry_Work.ParamByName('ID_manager_email').asInteger := qry_EmailConfig.FieldByName('ID').asInteger;
            dm_PCM.qry_Work.ExecSQL;
            iLastSub:= iLastSub +  1;
            sFoldermainPrev:= sFoldermain;

        end
        else begin
          dm_PCM.qry_Work.SQL.text := 'Insert into manager_email_postfach (Postfach,Anzeige,Sortierung,Typ,Parent,Abonnieren,ID_manager_email,Trennzeichen) Values ('
                        + ':Postfach,:Anzeige,:Sortierung,:Typ,:Parent,:Abonnieren,:ID_manager_email,:Trennzeichen)';
          dm_PCM.qry_Work.ParamByName('Postfach').AsString := sFolder;
          dm_PCM.qry_Work.ParamByName('Anzeige').AsString := sFolder;
          dm_PCM.qry_Work.ParamByName('Sortierung').asInteger := iLastMain;
          dm_PCM.qry_Work.ParamByName('Typ').asInteger := 0;
          dm_PCM.qry_Work.ParamByName('Parent').asInteger := 0;
          dm_PCM.qry_Work.ParamByName('Abonnieren').AsString := 'true';
          dm_PCM.qry_Work.ParamByName('Trennzeichen').AsString := '';
          dm_PCM.qry_Work.ParamByName('ID_manager_email').asInteger :=  qry_EmailConfig.FieldByName('ID').asInteger;
          dm_PCM.qry_Work.ExecSQL;
          iLastMain:= iLastMain + 1;
          Application.ProcessMessages;
        end;
      end;
      Application.ProcessMessages;
      qry_EmailPostfachMain.Refresh;
      Application.ProcessMessages;
      qry_EmailPostfachSub.Refresh;
      Application.ProcessMessages;
      dm_PCM.qry_Config_EmailPostfachLU.Refresh;
      Application.ProcessMessages;
    except
      on ep:system.sysutils.Exception do
      begin
        MessageDlg(rs_PCM_Fehler + ep.Message, mtError, [mbOk], 0);
      end;
    end;
  end;
var
  idSSLIOHndOPSSL_Postfach : TIdSSLIOHandlerSocketOpenSSL;
begin
  dm_PCM.qry_Work.SQL.text := 'Delete From manager_email_postfach Where ID_manager_email = :ID';
  dm_PCM.qry_Work.ParamByName('ID').asInteger := qry_EmailConfig.FieldByName('ID').asInteger;
  dm_PCM.qry_Work.ExecSQL;
  idSSLIOHndOPSSL_Postfach := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  idSSLIOHndOPSSL_Postfach.SSLOptions.Method:= sslvSSLv23;
  IdIMAP_Mail.IOHandler := idSSLIOHndOPSSL_Postfach;
  IdIMAP_Mail.UseTLS := utUseImplicitTLS;
  IdIMAP_Mail.Host := qry_EmailConfig.FieldByName('PostEingangsserver').AsString;
  IdIMAP_Mail.Port := qry_EmailConfig.FieldByName('PortEingangsserver').AsInteger;
  IdIMAP_Mail.UseTLS := utUseImplicitTLS;
  IdIMAP_Mail.Username := qry_EmailConfig.FieldByName('Benutzer').AsString;;
  IdIMAP_Mail.Password := qry_EmailConfig.FieldByName('Passwort').AsString;
  try
    IdIMAP_Mail.Connect;
    ShowFolders(IdIMAP_Mail);
  except
    on ep:system.sysutils.Exception do
    begin
        IdIMAP_Mail.Disconnect;
        MessageDlg(rs_PCM_Fehler + ep.Message, mtError, [mbOk], 0);
    end;
  end;
end;
procedure Tfrm_Config.btn_PostfachSaveClick(Sender: TObject);
begin
  if qry_EmailPostfachMain.State in [dsInsert, dsEdit] then
    qry_EmailPostfachMain.Post;
  if qry_EmailPostfachSub.State in [dsInsert, dsEdit] then
    qry_EmailPostfachSub.Post;
end;
procedure Tfrm_Config.btn_PostfachCancelClick(Sender: TObject);
begin
  qry_EmailPostfachMain.Cancel;
  qry_EmailPostfachSub.Cancel;
end;
// Sortierung Postfächer Main
procedure Tfrm_Config.btn_PostfachMainTopClick(Sender: TObject);
begin
  SortierungFirstLastMain(true);
end;
procedure Tfrm_Config.btn_PostfachMainUpClick(Sender: TObject);
begin
  SortierungAendernMain(true);
end;
procedure Tfrm_Config.btn_PostfachMaindownClick(Sender: TObject);
begin
  SortierungAendernMain(false);
end;
procedure Tfrm_Config.btn_PostfachMainbottomClick(Sender: TObject);
begin
  SortierungFirstLastMain(false);
end;
// Sortierung Postfächer Sub
procedure Tfrm_Config.btn_PostfachSubTopClick(Sender: TObject);
begin
  SortierungFirstLastSub(true);
end;
procedure Tfrm_Config.btn_PostfachSubUpClick(Sender: TObject);
begin
  SortierungAendernSub(true);
end;
procedure Tfrm_Config.btn_PostfachSubDownClick(Sender: TObject);
begin
  SortierungAendernSub(false);
end;
procedure Tfrm_Config.btn_PostfachSubbottomClick(Sender: TObject);
begin
  SortierungFirstLastSub(false);
end;
procedure Tfrm_Config.IdHTTPServer1CommandGet(AContext: TIdContext; ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  LCode: string;
  LURL : TURI;
  LTokenName : string;
begin
  if ARequestInfo.QueryParams = '' then
    Exit;
  LURL := TURI.Create('https://localhost/?' + ARequestInfo.QueryParams);
  try
    LCode := LURL.ParameterByName['code'];
  except
    Exit;
  end;
  FOAuth2_Enhanced.AuthCode := LCode;
  FOAuth2_Enhanced.ChangeAuthCodeToAccesToken;
  LTokenName := 'MicrosoftToken';
  dm_PCM.qry_work.SQL.Text:= 'Update manager_emailkonfiguration Set RefreshToken = :RefreshToken Where ID = :ID';
  dm_PCM.qry_work.ParamByName('RefreshToken').AsString:= FOAuth2_Enhanced.RefreshToken;
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_EmailConfig.FieldByName('ID').AsInteger;
  dm_PCM.qry_work.ExecSQL;
//  qry_EmailConfig.Refresh;
  SetupAuthenticator;
  AResponseInfo.ContentText := '<html><body>Successfully Authenticated. You can now close this tab/window.</body></html>';

end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// FormFunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunctions}
procedure Tfrm_Config.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Config.FormDestroy(Sender: TObject);
begin
  SetGridViews(false);
end;
procedure Tfrm_Config.FormShow(Sender: TObject);
  procedure InitializeRights;
  begin
    /// / Kalender
    // Toolbar
    btn_CalConfigNew.enabled := dm_PCM.iKonfiguration >= SetReadWrite ;
    btn_CalConfigSave.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_CalConfigCancel.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_CalConfigDelete.enabled := dm_PCM.iKonfiguration > SetReadWrite;
    btn_CalConfigFTPNew.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_CalConfigFTPSave.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_CalConfigFTPCancel.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_CalConfigFTPDelete.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    // Editfelder
    edt_CalConfig_Kalender.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_CalConfig_Link.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_CalConfig_Benutzer.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_CalConfig_Passwort.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    colcmbbx_CalConfigLabelColor.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    colcmbbx_CalConfigFontColor.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    cmbbx_CalConfigReminderVal.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    chkbx_CalConfigReminder.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_CalConfigFTP_URL.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_CalConfigFTP_Benutzer.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_CalConfigFTP_Datei.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_CalConfigFTP_Passwort.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    /// / Aufgaben
    // Toolbar
    btn_AufgabenNew.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_AufgabenSave.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_AufgabenCancel.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_AufgabenDelete.enabled := dm_PCM.iKonfiguration > SetReadWrite;
    btn_AufgabenPrioNew.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_AufgabenPrioSave.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_AufgabenPrioCancel.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_AufgabenPrioDelete.enabled := dm_PCM.iKonfiguration > SetReadWrite;
    // Editfelder
    edt_Aufgabenart.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    colcmbbx_Aufgabenart.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_PrioNumber.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_PrioBez.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    /// / Stundenplan
    // Toolbar
    btn_FachNew.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_FachSave.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_FachCancel.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_FachDelete.enabled := dm_PCM.iKonfiguration > SetReadWrite;
    btn_FachUSave.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_FachUCancel.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    // Editfelder
    edt_StundenplanConfig_FachBezeichnung.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    colcmbbx_StundenplanConfig_LabelColor.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    colcmbbx_StundenplanConfig_FontColor.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    colcmbbx_StundenplanConfigUhr_LabelColor.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    colcmbbx_StundenplanConfigUhr_FontColor.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    /// / Email
    // Toolbar
    btn_EmailConfigNew.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_EmailConfigSave.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_EmailConfigCancel.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_EmailConfigDelete.enabled := dm_PCM.iKonfiguration > SetReadWrite;
    // Editfelder
    edt_EmailConfig_Emailadresse.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    lucmbbx_EmailConfig_Kontptyp.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_EmailConfig_PostEingangServer.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_EmailConfig_PortEingang.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_EmailConfig_Benutzer.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_EmailConfig_Kennwort.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_EmailConfig_PostAusgangServer.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    edt_EmailConfig_PortAusgang.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    chxbx_EmailConfig_SSL.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
    btn_EmailConfig_Test.enabled := dm_PCM.iKonfiguration >= SetReadWrite;
  end;
begin
  OpenData(0);
  InitializeRights;
  SetButtons;
  SetGridViews(True);
  FOAuth2_Enhanced := TEnhancedOAuth2Authenticator.Create(nil);
  IdHTTPServer1.Active := True;
end;
{$Endregion}
end.

