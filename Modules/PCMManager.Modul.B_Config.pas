unit PCMManager.Modul.B_Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxCheckBox,
  cxColorComboBox, cxDBLookupComboBox, cxDropDownEdit, Vcl.StdCtrls,
  cxRadioGroup, dxGDIPlusClasses, cxImage, cxLookupEdit, cxDBLookupEdit,
  cxDBColorComboBox, cxDBEdit, cxMaskEdit, cxImageComboBox, cxLabel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxButtons, cxGroupBox, cxPC,
  System.ImageList, Vcl.ImgList, cxImageList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IniFiles, Vcl.Themes, dateutils,
  IdIMAP4, IDpop3, IdSMTP, IdSSLOpenSSL, IdMessage,
  IdExplicitTLSClientServerBase,System.UITypes,
  dxBar, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient,
  IdSMTPBase, cxCurrencyEdit, Vcl.OleServer, OutlookXP,PCM.Functions, dxSkinWXI,
  Vcl.VirtualImage, Vcl.BaseImageCollection, Vcl.ImageCollection,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutControl;

type
  Tfrm_Config = class(TForm)
    edt_CalConfigFTP_Benutzer: TcxDBTextEdit;
    edt_CalConfigFTP_Datei: TcxDBTextEdit;
    edt_CalConfigFTP_Passwort: TcxDBTextEdit;
    edt_CalConfigFTP_URL: TcxDBTextEdit;
    grd_FTPConfig: TcxGrid;
    grdDBTblView_FTPConfig: TcxGridDBTableView;
    grdDBTblView_FTPConfigurl: TcxGridDBColumn;
    grdDBTblView_FTPConfigkalendername: TcxGridDBColumn;
    grdDBTblView_FTPConfiguser: TcxGridDBColumn;
    grdDBTblView_FTPConfigpasswort: TcxGridDBColumn;
    grdlvl_FTPConfig: TcxGridLevel;
    edt_CalConfig_Benutzer: TcxDBTextEdit;
    edt_CalConfig_Kalender: TcxDBTextEdit;
    edt_CalConfig_Link: TcxDBTextEdit;
    edt_CalConfig_Passwort: TcxDBTextEdit;
    grd_CalConfig: TcxGrid;
    grdDBTblView_calconfig: TcxGridDBTableView;
    grdDBTblView_calconfigKalender: TcxGridDBColumn;
    grdDBTblView_calconfigLink: TcxGridDBColumn;
    grdDBTblView_calconfigBenutzer: TcxGridDBColumn;
    grdDBTblView_calconfigPasswort: TcxGridDBColumn;
    grdDBTblView_calconfigErinnerung: TcxGridDBColumn;
    grdDBTblView_calconfigErinnerungVor: TcxGridDBColumn;
    grdDBTblView_calconfigLabelColor: TcxGridDBColumn;
    grdDBTblView_calconfigFontcolor: TcxGridDBColumn;
    grdDBTblView_calconfigID_Benutzer: TcxGridDBColumn;
    grdlvl_CalConfig: TcxGridLevel;
    cmbbx_CalConfigReminderVal: TcxDBImageComboBox;
    chkbx_CalConfigReminder: TcxDBCheckBox;
    colcmbbx_CalConfigFontColor: TcxDBColorComboBox;
    colcmbbx_CalConfigLabelColor: TcxDBColorComboBox;
    grd_Feiertage: TcxGrid;
    grdDBTblView_Feiertage: TcxGridDBTableView;
    grdDBTblView_FeiertageJahr: TcxGridDBColumn;
    grdDBTblView_FeiertageMonat: TcxGridDBColumn;
    grdDBTblView_FeiertageTag: TcxGridDBColumn;
    grdDBTblView_FeiertageBezeichnung: TcxGridDBColumn;
    grdlvl_Feiertage: TcxGridLevel;
    grd_StundenplanConfig: TcxGrid;
    grdDBTblView_StundenplanConfig: TcxGridDBTableView;
    grdDBTblView_StundenplanConfigBezeichnung: TcxGridDBColumn;
    grdDBTblView_StundenplanConfigFarbe: TcxGridDBColumn;
    grdDBTblView_StundenplanConfigSchriftfarbe: TcxGridDBColumn;
    grdlvl_StundenplanConfig: TcxGridLevel;
    colcmbbx_StundenplanConfig_FontColor: TcxDBColorComboBox;
    colcmbbx_StundenplanConfig_LabelColor: TcxDBColorComboBox;
    edt_StundenplanConfig_FachBezeichnung: TcxDBTextEdit;
    colcmbbx_StundenplanConfigUhr_FontColor: TcxDBColorComboBox;
    colcmbbx_StundenplanConfigUhr_LabelColor: TcxDBColorComboBox;
    grd_StundenplanConfigUhr: TcxGrid;
    grdDBTblView_StundenplanConfigUhr: TcxGridDBTableView;
    grdDBTblView_StundenplanConfigUhrFarbe: TcxGridDBColumn;
    grdDBTblView_StundenplanConfigUhrSchriftfarbe: TcxGridDBColumn;
    grdlvl_StundenplanConfigUhr: TcxGridLevel;
    grd_EmailConfig: TcxGrid;
    grdDBTblView_emailConfig: TcxGridDBTableView;
    grdDBTblView_emailConfigEMail: TcxGridDBColumn;
    grdDBTblView_emailConfigKontotyp: TcxGridDBColumn;
    grdDBTblView_emailConfigPostEingangsserver: TcxGridDBColumn;
    grdDBTblView_emailConfigPortEingangsserver: TcxGridDBColumn;
    grdDBTblView_emailConfigBenutzer: TcxGridDBColumn;
    grdDBTblView_emailConfigSSLActive: TcxGridDBColumn;
    grdlvl_EmailConfig: TcxGridLevel;
    btn_EmailConfig_Test: TcxButton;
    chxbx_EmailConfig_SSL: TcxDBCheckBox;
    edt_EmailConfig_Benutzer: TcxDBTextEdit;
    edt_EmailConfig_Emailadresse: TcxDBTextEdit;
    edt_EmailConfig_Kennwort: TcxDBTextEdit;
    edt_EmailConfig_PortAusgang: TcxDBTextEdit;
    edt_EmailConfig_PortEingang: TcxDBTextEdit;
    edt_EmailConfig_PostAusgangServer: TcxDBTextEdit;
    edt_EmailConfig_PostEingangServer: TcxDBTextEdit;
    lucmbbx_EmailConfig_Kontptyp: TcxDBLookupComboBox;
    qry_CalConfig: TFDQuery;
    qry_CalConfigFTP: TFDQuery;
    ds_CalConfig: TDataSource;
    ds_CalConfigFTP: TDataSource;
    qry_FT1: TFDQuery;
    qry_SchulFaecher: TFDQuery;
    qry_SchulFaecher_Config: TFDQuery;
    ds_SchulFaecher: TDataSource;
    ds_SchulFaecher_Config: TDataSource;
    qry_EmailConfig: TFDQuery;
    ds_EmailConfig: TDataSource;
    bardckctrl_Kalender: TdxBarDockControl;
    brmgr_Config: TdxBarManager;
    tb_Kalender: TdxBar;
    btn_CalConfigNew: TdxBarLargeButton;
    btn_CalConfigSave: TdxBarLargeButton;
    btn_CalConfigCancel: TdxBarLargeButton;
    btn_CalConfigDelete: TdxBarLargeButton;
    tb_Feiertage: TdxBar;
    brdckctrl_Feiertage: TdxBarDockControl;
    brdckctrl_FTP: TdxBarDockControl;
    tb_FTP: TdxBar;
    btn_CalFTNew: TdxBarLargeButton;
    btn_CalFTinCal: TdxBarLargeButton;
    btn_CalFTDelete: TdxBarLargeButton;
    btn_CalConfigFTPNew: TdxBarLargeButton;
    btn_CalConfigFTPDelete: TdxBarLargeButton;
    btn_CalConfigFTPCancel: TdxBarLargeButton;
    btn_CalConfigFTPSave: TdxBarLargeButton;
    brdckctrl_Schulfach: TdxBarDockControl;
    brdckctrl_SchulfachUhr: TdxBarDockControl;
    tb_Schulfach: TdxBar;
    tb_SchulfachUhr: TdxBar;
    btn_FachUSave: TdxBarLargeButton;
    btn_FachUCancel: TdxBarLargeButton;
    btn_FachNew: TdxBarLargeButton;
    btn_FachDelete: TdxBarLargeButton;
    btn_FachCancel: TdxBarLargeButton;
    btn_FachSave: TdxBarLargeButton;
    brdckctrl_Email: TdxBarDockControl;
    tb_email: TdxBar;
    btn_EmailConfigDelete: TdxBarLargeButton;
    btn_EmailConfigCancel: TdxBarLargeButton;
    btn_EmailConfigSave: TdxBarLargeButton;
    btn_EmailConfigNew: TdxBarLargeButton;
    dxBarDockControl1: TdxBarDockControl;
    tb_Postfach: TdxBar;
    btn_PostfachNew: TdxBarLargeButton;
    qry_EmailPostfachMain: TFDQuery;
    ds_EmailPostfachMain: TDataSource;
    grd_Postfachmain: TcxGrid;
    grdDBTblViewl_Postfachmain: TcxGridDBTableView;
    grdDBTblViewl_PostfachmainPostfach: TcxGridDBColumn;
    grdDBTblViewl_PostfachmainAnzeige: TcxGridDBColumn;
    grdDBTblViewl_PostfachmainAbonnieren: TcxGridDBColumn;
    grdlvl_Postfachmain: TcxGridLevel;
    btn_PostfachMainbottom: TcxButton;
    btn_PostfachMaindown: TcxButton;
    btn_PostfachMainUp: TcxButton;
    btn_PostfachMainTop: TcxButton;
    grdDBTblViewl_PostfachmainSortierung: TcxGridDBColumn;
    btn_PostfachSubbottom: TcxButton;
    btn_PostfachSubDown: TcxButton;
    btn_PostfachSubUp: TcxButton;
    btn_PostfachSubTop: TcxButton;
    grd_postfachSub: TcxGrid;
    grdDBTblViewl_PostfachSub: TcxGridDBTableView;
    grdlvl_PostfachSub: TcxGridLevel;
    qry_EmailPostfachSub: TFDQuery;
    ds_EmailPostfachSub: TDataSource;
    grdDBTblViewl_PostfachSubPostfach: TcxGridDBColumn;
    grdDBTblViewl_PostfachSubAnzeige: TcxGridDBColumn;
    grdDBTblViewl_PostfachSubSortierung: TcxGridDBColumn;
    grdDBTblViewl_PostfachSubParent: TcxGridDBColumn;
    grdDBTblViewl_PostfachSubAbonnieren: TcxGridDBColumn;
    btn_PostfachSave: TdxBarLargeButton;
    btn_PostfachCancel: TdxBarLargeButton;
    IdIMAP_Mail: TIdIMAP4;
    edt_PrioBez: TcxDBTextEdit;
    edt_PrioNumber: TcxDBTextEdit;
    grd_AufgabenPrio: TcxGrid;
    grdDBTblView_AufgabenPrio: TcxGridDBTableView;
    grdlvl_AufgabenPrio: TcxGridLevel;
    bardckctrl_AufgabenPrio: TdxBarDockControl;
    edt_Aufgabenart: TcxDBTextEdit;
    grd_Aufgabenarten: TcxGrid;
    grdDBTblView_Aufgabenarten: TcxGridDBTableView;
    grdLvl_Aufgabenarten: TcxGridLevel;
    colcmbbx_Aufgabenart: TcxDBColorComboBox;
    bardckctrl_Aufgabenarten: TdxBarDockControl;
    tb_Aufgabenarten: TdxBar;
    tb_AufgabenPrio: TdxBar;
    btn_AufgabenNew: TdxBarLargeButton;
    btn_AufgabenCancel: TdxBarLargeButton;
    btn_AufgabenSave: TdxBarLargeButton;
    btn_AufgabenDelete: TdxBarLargeButton;
    btn_AufgabenPrioNew: TdxBarLargeButton;
    btn_AufgabenPrioSave: TdxBarLargeButton;
    btn_AufgabenPrioCancel: TdxBarLargeButton;
    btn_AufgabenPrioDelete: TdxBarLargeButton;
    ds_Aufgabenarten: TDataSource;
    qry_AufgabenArten: TFDQuery;
    grdDBTblView_AufgabenartenBezeichnung: TcxGridDBColumn;
    grdDBTblView_AufgabenartenFarbe: TcxGridDBColumn;
    qry_prio: TFDQuery;
    ds_prio: TDataSource;
    grdDBTblView_AufgabenPrioPrioritaet: TcxGridDBColumn;
    grdDBTblView_AufgabenPrioBezeichnung: TcxGridDBColumn;
    tb_AufgabenConfig: TdxBar;
    btn_AufgabenOptionenSave: TdxBarLargeButton;
    cmbbx_AufgabenSonstigesAdresseFirma: TcxDBLookupComboBox;
    cmbbx_AufgabenSonstigesAdresseEigen: TcxDBLookupComboBox;
    bardckctrl_AufgabenSonstiges: TdxBarDockControl;
    edt_AufgabenSonstigesJira: TcxDBTextEdit;
    qry_Konfiguration_Kalender_Optionen: TFDQuery;
    ds_option: TDataSource;
    mskedt_AufgabenSonstigesStunden: TcxDBCurrencyEdit;
    cmbbx_AufgabenSonstigesBundeslandFirma: TcxDBLookupComboBox;
    cmbbx_AufgabenSonstigesBundeslandEigen: TcxDBLookupComboBox;
    ds_FT: TDataSource;
    edt_AufgabenSonstigesAccToDo: TcxDBTextEdit;
    edt_AufgabenSonstigesAccMail: TcxDBTextEdit;
    ImageCollection1: TImageCollection;
    grdDBTblView_FeiertageKategorie: TcxGridDBColumn;
    lactrl_ConfigGroup_Root: TdxLayoutGroup;
    lactrl_Config: TdxLayoutControl;
    lactrl_ConfigTab: TdxLayoutGroup;
    lagrp_Kalender: TdxLayoutGroup;
    lagrp_KalenderKalender: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    lagrp_KalenderFTP: TdxLayoutGroup;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    lagrp_Aufgaben: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutGroup30: TdxLayoutGroup;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    lagrp_Stundenplan: TdxLayoutGroup;
    dxLayoutGroup36: TdxLayoutGroup;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutGroup41: TdxLayoutGroup;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    lagrp_EMail: TdxLayoutGroup;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutItem49: TdxLayoutItem;
    dxLayoutItem50: TdxLayoutItem;
    lbl_EmailConfig_Anmeldeinformationen: TdxLayoutLabeledItem;
    dxLayoutItem52: TdxLayoutItem;
    dxLayoutItem53: TdxLayoutItem;
    dxLayoutItem54: TdxLayoutItem;
    dxLayoutItem55: TdxLayoutItem;
    dxLayoutItem57: TdxLayoutItem;
    dxLayoutItem59: TdxLayoutItem;
    dxLayoutGroup57: TdxLayoutGroup;
    dxLayoutItem60: TdxLayoutItem;
    dxLayoutGroup59: TdxLayoutGroup;
    dxLayoutItem61: TdxLayoutItem;
    dxLayoutGroup61: TdxLayoutGroup;
    dxLayoutItem62: TdxLayoutItem;
    dxLayoutItem63: TdxLayoutItem;
    dxLayoutItem64: TdxLayoutItem;
    dxLayoutItem65: TdxLayoutItem;
    dxLayoutGroup63: TdxLayoutGroup;
    dxLayoutItem66: TdxLayoutItem;
    dxLayoutGroup65: TdxLayoutGroup;
    dxLayoutItem67: TdxLayoutItem;
    dxLayoutItem68: TdxLayoutItem;
    dxLayoutItem69: TdxLayoutItem;
    dxLayoutItem70: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutGroup11: TdxLayoutGroup;
    lagrp_KalenderFeiertage: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    lbl_EmailConfigTestEin: TdxLayoutLabeledItem;
    lbl_EmailConfigTestAus: TdxLayoutLabeledItem;
    procedure FormShow(Sender: TObject);
    procedure btn_CalConfigNew1Click(Sender: TObject);
    procedure btn_CalConfigSave1Click(Sender: TObject);
    procedure btn_CalConfigCancel1Click(Sender: TObject);
    procedure btn_CalConfigDelete1Click(Sender: TObject);
    procedure btn_CalFTNewClick(Sender: TObject);
    procedure btn_CalFTDeleteClick(Sender: TObject);
    procedure btn_CalFTinCalClick(Sender: TObject);
    procedure btn_CalConfigFTPNewClick(Sender: TObject);
    procedure btn_CalConfigFTPSaveClick(Sender: TObject);
    procedure btn_CalConfigFTPCancelClick(Sender: TObject);
    procedure btn_CalConfigFTPDeleteClick(Sender: TObject);
    procedure btn_FachNewClick(Sender: TObject);
    procedure btn_FachSaveClick(Sender: TObject);
    procedure btn_FachCancelClick(Sender: TObject);
    procedure btn_FachDeleteClick(Sender: TObject);
    procedure btn_FachUSaveClick(Sender: TObject);
    procedure btn_FachUCancelClick(Sender: TObject);
    procedure btn_EmailConfigDeleteClick(Sender: TObject);
    procedure btn_EmailConfigCancelClick(Sender: TObject);
    procedure btn_EmailConfigSaveClick(Sender: TObject);
    procedure btn_EmailConfigNewClick(Sender: TObject);
    procedure btn_EmailConfig_TestClick(Sender: TObject);
    procedure qry_EmailConfigAfterScroll(DataSet: TDataSet);
    procedure btn_PostfachNewClick(Sender: TObject);
    procedure btn_PostfachMainTopClick(Sender: TObject);
    procedure btn_PostfachMainbottomClick(Sender: TObject);
    procedure btn_PostfachMainUpClick(Sender: TObject);
    procedure btn_PostfachMaindownClick(Sender: TObject);
    procedure qry_EmailPostfachMainAfterScroll(DataSet: TDataSet);
    procedure btn_PostfachSubTopClick(Sender: TObject);
    procedure btn_PostfachSubbottomClick(Sender: TObject);
    procedure btn_PostfachSubUpClick(Sender: TObject);
    procedure btn_PostfachSubDownClick(Sender: TObject);
    procedure btn_PostfachSaveClick(Sender: TObject);
    procedure btn_PostfachCancelClick(Sender: TObject);
    procedure btn_AufgabenNewClick(Sender: TObject);
    procedure btn_AufgabenSaveClick(Sender: TObject);
    procedure btn_AufgabenCancelClick(Sender: TObject);
    procedure btn_AufgabenDeleteClick(Sender: TObject);
    procedure SetButtonsEnableVisible(DataSet: TDataSet);
    procedure btn_AufgabenPrioNewClick(Sender: TObject);
    procedure btn_AufgabenPrioSaveClick(Sender: TObject);
    procedure btn_AufgabenPrioCancelClick(Sender: TObject);
    procedure btn_AufgabenPrioDeleteClick(Sender: TObject);
    procedure btn_AufgabenOptionenSaveClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private-Deklarationen }
//    m_bCancel: WordBool;
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
    procedure SetGridViews(Show:boolean);
    procedure SetButtons;
    procedure SortierungFirstLastMain(bUpDown: Boolean);
    procedure SortierungAendernMain(bUpDown: Boolean);
    procedure SortierungFirstLastSub(bUpDown: Boolean);
    procedure SortierungAendernSub(bUpDown: Boolean);
  public
    iID_Benutzer: integer;
    iMaxSortierung: integer;
    { Public-Deklarationen }
  end;

var
  frm_Config: Tfrm_Config;

implementation

{$R *.dfm}

uses PCM.Main,
     PCMManager.Modul.B_Config.Kalender.Feiertage.Neu,
     PCMManager.Modul.B_Config.Kalender.Feiertage.Aktualisieren,
     PCM.Functions.Synch.Wait, PCM.Data, PCM.Strings;

{$Region TabAufgaben}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
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
procedure Tfrm_Config.qry_EmailConfigAfterScroll(DataSet: TDataSet);
begin
  SetButtons;
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
end;
procedure Tfrm_Config.qry_EmailPostfachMainAfterScroll(DataSet: TDataSet);
begin
  SetButtons;
  qry_EmailPostfachSub.SQL.text := 'SELECT ID,Postfach,Anzeige,Sortierung, Typ, Parent, Abonnieren, ID_manager_email FROM manager_email_postfach WHERE parent = :parent';
  qry_EmailPostfachSub.ParamByName('parent').asInteger := qry_EmailPostfachMain.FieldByName('ID').asInteger;
  qry_EmailPostfachSub.Open;
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
{$Region TabKalender}
////////////////////////////////////////////////////////////////////////////////
// TabKalender                                                                //
////////////////////////////////////////////////////////////////////////////////
// Kalender
procedure Tfrm_Config.btn_CalConfigNew1Click(Sender: TObject);
begin
  if qry_CalConfig.State in [dsInsert, dsEdit] then
    qry_CalConfig.Post;
  qry_CalConfig.Append;
  qry_CalConfig.Insert;
//  qry_CalConfig.FieldByName('Erinnerung').AsBoolean := False;
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
    dm_PCM.qry_work1.SQL.text := 'SELECT Jahr, Datum, Bezeichnung From manager_feiertage Where ID_Benutzer = :ID and Datum >= :Von AND Datum <= :Bis';
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
{$Region TabAufgaben}
////////////////////////////////////////////////////////////////////////////////
// TabAufgaben                                                                //
////////////////////////////////////////////////////////////////////////////////
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
{$Region TabStundenplan}
////////////////////////////////////////////////////////////////////////////////
// TabStundenplan                                                             //
////////////////////////////////////////////////////////////////////////////////
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
{$Region TabEmail}
////////////////////////////////////////////////////////////////////////////////
// TabEmail                                                                   //
////////////////////////////////////////////////////////////////////////////////
// Emailaccounts
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
var
  idSmtpMail: TIdSMTP;
  idSSLIOHndOPSSLPostfach: TIdSSLIOHandlerSocketOpenSSL;
  idmsgMail: TIdMessage;
  idSSLIOHndOPSSLMail: TIdSSLIOHandlerSocketOpenSSL;
begin
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
    lbl_EmailConfigTestEin.CaptionOptions.Text:= '[B][COLOR=#00FF40]' + rs_PCMManager_posteingangerfolgreich + '[/COLOR][/B]';
    lbl_EmailConfigTestEin.Visible:= true;
    IdIMAP_Mail.Disconnect;
  except
    lbl_EmailConfigTestein.CaptionOptions.Text:= '[B][COLOR=#FF8080]' + rs_PCMManager_posteingangnichterfolgreich +'[/COLOR][/B]';
    lbl_EmailConfigTestEin.Visible:= true;




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
      lbl_EmailConfigTestAus.CaptionOptions.Text:= '[B][COLOR=#00FF40]' + rs_PCMManager_postausgangerfolgreich + '[/COLOR][/B]';
      lbl_EmailConfigTestAus.Visible:= true;
    end;
  except
    lbl_EmailConfigTestAus.CaptionOptions.Text:= '[B][COLOR=#FF8080]' + rs_PCMManager_postausgangnichterfolgreich +'[/COLOR][/B]';
    lbl_EmailConfigTestAus.Visible:= true;
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
{$EndRegion}
{$Region FormFunctions}
////////////////////////////////////////////////////////////////////////////////
// FormFunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_Config.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Config.FormDestroy(Sender: TObject);
begin
  SetGridViews(false);
end;
procedure Tfrm_Config.FormShow(Sender: TObject);
  procedure OpenData;
  var
    iAnzahl: Integer;
  begin
    dm_PCM.qry_work.sql.Text:= 'Select COunt(*) as  Anzahl From manager_stundenplan_konfiguration Where ID_Benutzer = :ID_Benutzer';
    dm_PCM.qry_work.ParamByname('ID_Benutzer').asInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.Open;
    iAnzahl:= dm_PCM.qry_work.FieldByname('Anzahl').asInteger;
    dm_PCM.qry_work.Close;
    if iAnzahl = 0  then
    begin
      dm_PCM.qry_work.sql.Text:= 'Insert Into manager_stundenplan_konfiguration (Farbe, Schriftfarbe,ID_Benutzer) values (12632256, 0,:ID_Benutzer)';
      dm_PCM.qry_work.ParamByname('ID_Benutzer').asInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.Execsql;
    end;
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
    qry_SchulFaecher.Open;
    qry_SchulFaecher.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_SchulFaecher.Filtered := true;
    qry_SchulFaecher_Config.Open;
    qry_SchulFaecher_Config.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_SchulFaecher_Config.Filtered := true;
    dm_PCM.qry_Config_EmailConfigTyp.Open;
    qry_EmailConfig.Open;
    qry_EmailConfig.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_EmailConfig.Filtered := true;
    qry_EmailPostfachMain.Open;
    dm_PCM.qry_Config_EmailPostfachLU.Open;
    qry_AufgabenArten.Open;
    qry_Prio.Open;
    dm_PCM.qry_Config_Ansprechpartner.Open;
    dm_PCM.qry_Config_Firmen.Open;
    dm_PCM.qry_Config_Bundesland.Open;
    qry_Konfiguration_Kalender_Optionen.Open;
    qry_Konfiguration_Kalender_Optionen.Filter := 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_Konfiguration_Kalender_Optionen.Filtered := true;
    grdDBTblView_calconfigKalender.Caption := rs_PCM_Kalender;
    grdDBTblView_calconfigLink.Caption := rs_PCMManager_Link;
    grdDBTblView_calconfigBenutzer.Caption := rs_PCMBenutzerverwaltung_Benutzer;
    grdDBTblView_calconfigPasswort.Caption := rs_PCM_Passwort;
    grdDBTblView_calconfigErinnerung.Caption := rs_PCM_Erinnerung;
    grdDBTblView_calconfigErinnerungVor.Caption := rs_PCM_ErinnerungVor;
    grdDBTblView_calconfigLabelColor.Caption := rs_PCM_Terminfarbe;
    grdDBTblView_calconfigFontcolor.Caption := rs_PCM_Schriftfarbe;
    grdDBTblView_calconfigID_Benutzer.Caption :=rs_PCMBenutzerverwaltung_Benutzer;
    grdDBTblView_FeiertageJahr.Caption := rs_PCM_Jahr;
    grdDBTblView_FeiertageMonat.Caption:= rs_PCM_Monat;
    grdDBTblView_FeiertageTag.Caption:= rs_PCM_Tag;
    grdDBTblView_FeiertageBezeichnung.Caption:= rs_PCM_Bezeichnung;
    grdDBTblView_FTPConfigurl.Caption := rs_PCM_Host;
    grdDBTblView_FTPConfigkalendername.Caption := rs_PCM_Dateiname;
    grdDBTblView_FTPConfiguser.Caption := rs_PCMBenutzerverwaltung_Benutzer;
    grdDBTblView_FTPConfigpasswort.Caption := rs_PCM_Passwort;
    grdDBTblView_AufgabenartenBezeichnung.Caption:= rs_PCM_Bezeichnung;
    grdDBTblView_AufgabenartenFarbe.Caption:= rs_PCM_Farbe;
    grdDBTblView_AufgabenPrioPrioritaet.Caption := rs_PCM_Prioritaet;
    grdDBTblView_AufgabenPrioBezeichnung.Caption := rs_PCM_Bezeichnung;
    grdDBTblView_StundenplanConfigBezeichnung.Caption := rs_PCM_Bezeichnung;
    grdDBTblView_StundenplanConfigFarbe.Caption := rs_PCM_Farbe;
    grdDBTblView_StundenplanConfigSchriftfarbe.Caption := rs_PCM_Schriftfarbe;
    grdDBTblView_StundenplanConfigUhrFarbe.Caption :=  rs_PCM_Farbe;
    grdDBTblView_StundenplanConfigUhrSchriftfarbe.Caption := rs_PCM_Schriftfarbe;
    grdDBTblView_emailConfigEMail.Caption:= rs_PCM_EMailadresse;
    grdDBTblView_emailConfigKontotyp.Caption:= rs_PCM_Kontotyp;
    grdDBTblView_emailConfigPostEingangsserver.Caption:= rs_PCM_Posteingangsserver;
    grdDBTblView_emailConfigPortEingangsserver.Caption:= rs_PCM_PortEingang;
    grdDBTblView_emailConfigBenutzer.Caption:= rs_PCMBenutzerverwaltung_Benutzer;
    grdDBTblView_emailConfigSSLActive.Caption:= rs_PCM_SSLAktiv;
    grdDBTblViewl_PostfachmainPostfach.Caption:= rs_PCM_Postfach;
    grdDBTblViewl_PostfachmainAnzeige.Caption:= rs_PCM_anzeige;
    grdDBTblViewl_PostfachmainAbonnieren.Caption:= rs_PCM_Abonnieren;
    grdDBTblViewl_PostfachmainSortierung.Caption:= rs_PCM_Sortierung;
    grdDBTblViewl_PostfachSubPostfach.Caption:= rs_PCM_Postfach;
    grdDBTblViewl_PostfachSubAnzeige.Caption:= rs_PCM_anzeige;
    grdDBTblViewl_PostfachSubParent.Caption:= rs_PCM_Hauptpostfach;
    grdDBTblViewl_PostfachSubAbonnieren.Caption:= rs_PCM_Abonnieren;
    grdDBTblViewl_PostfachSubSortierung.Caption:= rs_PCM_Sortierung;
  end;
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
  OpenData;
  InitializeRights;
  SetButtons;
  SetGridViews(True);
end;
{$Endregion}
end.

