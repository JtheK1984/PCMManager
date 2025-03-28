unit PCMManager.Modul.C_Contacts;

interface

uses
  {$Region Uses}
  cxButtons,
  cxCalendar,
  cxClasses,
  cxColorComboBox,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDateUtils,
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
  cxGridCustomPopupMenu,
  cxGridCustomTableView,
  cxGridCustomView,
  cxGridDBTableView,
  cxGridExportLink,
  cxGridLevel,
  cxGridPopupMenu,
  cxGridTableView,
  cxGroupBox,
  cxImage,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxLookupEdit,
  cxMaskEdit,
  cxMemo,
  cxNavigator,
  cxPC,
  cxSchedulerRecurrence,
  cxSchedulerStorage,
  cxSpinEdit,
  cxStyles,
  cxTextEdit,
  cxTimeEdit,
  Data.DB,
  dateutils,
  dxBar,
  dxBarBuiltInMenu,
  dxDateRanges,
  dxLayoutContainer,
  dxLayoutControl,
  dxLayoutControlAdapters,
  dxLayoutcxEditAdapters,
  dxScrollbarAnnotations,
  dxShellDialogs,
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
  IdCoder,
  IdCoder3to4,
  IdCoderMIME,
  IdCoderQuotedPrintable,
  OutlookXP,
  PCM.Browser,
  PCM.Functions,
  shellapi,
  Soap.EncdDecd,
  strutils,
  System.Classes,
  system.math,
  System.netencoding,
  System.SysUtils,
  System.UITypes,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Menus,
  Vcl.OleServer,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion Uses}
type
  {$Region Types}
  Tfrm_Contact = class(TForm)
    ds_Kontakte: TDataSource;
    brmgr_Contacts: TdxBarManager;
    brpmm_Kontakt: TdxBarPopupMenu;
    grdpmm_Personal: TcxGridPopupMenu;
    ppmbtn_NachExcelexportieren: TdxBarButton;
    brmgrContactsBar1: TdxBar;
    btn_KontaktNew: TdxBarLargeButton;
    btn_KontaktNext: TdxBarLargeButton;
    btn_Kontaktprev: TdxBarLargeButton;
    btn_KontaktFirst: TdxBarLargeButton;
    btn_KontaktDelete: TdxBarLargeButton;
    btn_KontaktCancel: TdxBarLargeButton;
    btn_KontaktSave: TdxBarLargeButton;
    btn_import: TdxBarButton;
    btn_Export: TdxBarButton;
    btn_KontaktLast: TdxBarLargeButton;
    btn_KontaktImport: TdxBarLargeButton;
    brpmm_Contact: TdxBarPopupMenu;
    ppmbtn_VCFImportieren: TdxBarButton;
    ppmbtn_CSVImportiern: TdxBarButton;
    idDecMIMME_Decode: TIdDecoderMIME;
    idDecQuotPrint_Decode: TIdDecoderQuotedPrintable;
    qry_Kontakte: TFDQuery;
    qry_KontakteID: TFDAutoIncField;
    qry_KontakteID_Anrede: TIntegerField;
    qry_KontakteVorname: TStringField;
    qry_KontakteNachname: TStringField;
    qry_KontakteZusatz: TStringField;
    qry_KontakteStrasse_Privat: TStringField;
    qry_KontaktePLZ_Privat: TStringField;
    qry_KontakteOrt_Privat: TStringField;
    qry_KontakteTelefon_Privat: TStringField;
    qry_KontakteTelefon_Privat1: TStringField;
    qry_KontakteTelefon_Privat2: TStringField;
    qry_KontakteHandy_privat: TStringField;
    qry_KontakteE_Mail_Privat: TStringField;
    qry_KontakteE_Mail_Privat1: TStringField;
    qry_KontakteE_Mail_Privat2: TStringField;
    qry_KontakteInternet_Privat: TStringField;
    qry_KontakteID_Kontaktart: TIntegerField;
    qry_KontakteBild: TBlobField;
    qry_KontakteGeburtsdatum: TDateField;
    qry_KontakteID_Geschlecht: TIntegerField;
    qry_KontakteID_Familienstand: TIntegerField;
    qry_KontakteID_Staatsangehoerigkeit: TIntegerField;
    qry_KontakteID_Konfession: TIntegerField;
    qry_KontakteInfo: TMemoField;
    qry_KontakteFirma: TStringField;
    qry_KontakteStrasse_Ges: TStringField;
    qry_KontaktePLZ_Ges: TStringField;
    qry_KontakteOrt_Ges: TStringField;
    qry_KontakteAbteilung_Ges: TStringField;
    qry_KontakteFunktion_Ges: TStringField;
    qry_KontakteZentrale_Ges: TStringField;
    qry_KontakteTelefon_Ges: TStringField;
    qry_KontakteHandy_Ges: TStringField;
    qry_KontakteE_Mail_Ges: TStringField;
    qry_KontakteInternet_Ges: TStringField;
    qry_KontakteFacebook: TStringField;
    qry_KontakteSkype: TStringField;
    qry_KontakteICQ: TStringField;
    qry_KontakteLive_Messanger: TStringField;
    qry_KontakteID_Benutzer: TIntegerField;
    qry_KontakteGeburtsname: TStringField;
    ppmbtn_ExportVCF: TdxBarButton;
    idEncQuotPrint_Main: TIdEncoderQuotedPrintable;
    dlgFOpen_VCF: TdxOpenFileDialog;
    dlgsave_Personal: TdxSaveFileDialog;
    dlgSave_VCF: TdxSaveFileDialog;
    qry_KontakteSollstunden: TTimeField;
    qry_KontakteColFontWork: TIntegerField;
    qry_KontakteColCalWork: TIntegerField;
    qry_KontakteColFontBreak: TIntegerField;
    qry_KontakteUrlaub: TIntegerField;
    qry_KontakteEintritt: TDateField;
    qry_KontakteColCalBreak: TIntegerField;
    qry_KontakteID_Zeiterfasser: TIntegerField;
    lactrl_Contacts: TdxLayoutControl;
    cmbbx_KontaktSucheArt: TcxComboBox;
    edt_KontaktSucheAbteilung: TcxTextEdit;
    edt_KontaktSucheFirma: TcxTextEdit;
    edt_KontaktSucheFunktion: TcxTextEdit;
    edt_KontaktSucheNachname: TcxTextEdit;
    edt_KontaktSucheOrt: TcxTextEdit;
    edt_KontaktSuchePLZ: TcxTextEdit;
    edt_KontaktSucheStrasse: TcxTextEdit;
    edt_KontaktSucheVorname: TcxTextEdit;
    cmbbx_Anrede: TcxDBLookupComboBox;
    edt_Email2: TcxDBTextEdit;
    edt_KontaktGeburtsname: TcxDBTextEdit;
    edt_KontaktHandy: TcxDBTextEdit;
    edt_KontaktNachname: TcxDBTextEdit;
    edt_KontaktName: TcxDBTextEdit;
    edt_KontaktOrt: TcxDBTextEdit;
    edt_KontaktPLZ: TcxDBTextEdit;
    edt_KontaktStrasse: TcxDBTextEdit;
    edt_KontaktTelefon1: TcxDBTextEdit;
    edt_KontaktTelefon2: TcxDBTextEdit;
    edt_KontaktZusatz: TcxDBTextEdit;
    dtEdt_KontaktZusatzGeburtsdatum: TcxDBDateEdit;
    lucmbbx_KontaktZusatzFamilienstand: TcxDBLookupComboBox;
    lucmbbx_KontaktZusatzGeschlecht: TcxDBLookupComboBox;
    lucmbbx_Konfession: TcxDBLookupComboBox;
    lucmbbx_Staatsanghoerigkeit: TcxDBLookupComboBox;
    img_Picture: TcxDBImage;
    edt_KontaktGeschaeftlichAbteilung: TcxDBTextEdit;
    edt_KontaktGeschaeftlichEMail: TcxDBTextEdit;
    edt_KontaktGeschaeftlichFirma: TcxDBTextEdit;
    edt_KontaktGeschaeftlichInternet: TcxDBTextEdit;
    edt_KontaktGeschaeftlichOrt: TcxDBTextEdit;
    edt_KontaktGeschaeftlichPLZ: TcxDBTextEdit;
    edt_KontaktGeschaeftlichStrasse: TcxDBTextEdit;
    edt_KontaktGeschaeftlichTelefonZentrale: TcxDBTextEdit;
    edt_KontaktGeschaeftlichTelefonDurchwahl: TcxDBTextEdit;
    btn_MapPrivate: TcxButton;
    edt_Email1: TcxDBTextEdit;
    mem_Sonstige: TcxDBMemo;
    btn_Mail1Private: TcxButton;
    btn_Mail2Private: TcxButton;
    grd_Suche: TcxGrid;
    grdDBTblView_Suche: TcxGridDBTableView;
    grdDBTblView_SucheID: TcxGridDBColumn;
    grdDBTblView_SucheID_Anrede: TcxGridDBColumn;
    grdDBTblView_SucheVorname: TcxGridDBColumn;
    grdDBTblView_SucheNachname: TcxGridDBColumn;
    grdDBTblView_SucheGeburtsname: TcxGridDBColumn;
    grdDBTblView_SucheGeburtsland: TcxGridDBColumn;
    grdDBTblView_SucheZusatz: TcxGridDBColumn;
    grdDBTblView_SucheBild: TcxGridDBColumn;
    grdDBTblView_SucheStrasse_Privat: TcxGridDBColumn;
    grdDBTblView_SuchePLZ_Privat: TcxGridDBColumn;
    grdDBTblView_SucheOrt_Privat: TcxGridDBColumn;
    grdDBTblView_SucheID_Kontaktart: TcxGridDBColumn;
    grdDBTblView_SucheTelefon_Privat: TcxGridDBColumn;
    grdDBTblView_SucheTelefon_Privat1: TcxGridDBColumn;
    grdDBTblView_SucheHandy_privat: TcxGridDBColumn;
    grdDBTblView_SucheE_Mail_Privat: TcxGridDBColumn;
    grdDBTblView_SucheE_Mail_Privat1: TcxGridDBColumn;
    grdDBTblView_SucheInternet_Privat: TcxGridDBColumn;
    grdDBTblView_SucheGeburtsdatum: TcxGridDBColumn;
    grdDBTblView_SucheID_Geschlecht: TcxGridDBColumn;
    grdDBTblView_SucheID_Familienstand: TcxGridDBColumn;
    grdDBTblView_SucheID_Staatsangehoerigkeit: TcxGridDBColumn;
    grdDBTblView_SucheID_Konfession: TcxGridDBColumn;
    grdDBTblView_SucheInfo: TcxGridDBColumn;
    grdDBTblView_SucheFirma: TcxGridDBColumn;
    grdDBTblView_SucheStrasse_Ges: TcxGridDBColumn;
    grdDBTblView_SuchePLZ_Ges: TcxGridDBColumn;
    grdDBTblView_SucheOrt_Ges: TcxGridDBColumn;
    grdDBTblView_SucheAbteilung_Ges: TcxGridDBColumn;
    grdDBTblView_SucheFunktion_Ges: TcxGridDBColumn;
    grdDBTblView_SucheZentrale_Ges: TcxGridDBColumn;
    grdDBTblView_SucheTelefon_Ges: TcxGridDBColumn;
    grdDBTblView_SucheHandy_Ges: TcxGridDBColumn;
    grdDBTblView_SucheE_Mail_Ges: TcxGridDBColumn;
    grdDBTblView_SucheInternet_Ges: TcxGridDBColumn;
    grdDBTblView_SucheFacebook: TcxGridDBColumn;
    grdDBTblView_SucheSkype: TcxGridDBColumn;
    grdDBTblView_SucheLive_Messanger: TcxGridDBColumn;
    grdLvl_Suche: TcxGridLevel;
    btn_ClearFilter: TcxButton;
    btn_kontaktsuchen: TcxButton;
    edt_KontakteSonstigesFacebook: TcxDBTextEdit;
    edt_KontakteSonstigesSkype: TcxDBTextEdit;
    edt_KontakteSonstigesTeams: TcxDBTextEdit;
    edt_KontaktInternet: TcxDBTextEdit;
    btn_WebPrivate: TcxButton;
    edt_KontaktGeschaeftlichFunktion: TcxDBTextEdit;
    btn_EditStaatsangehoerigkeit: TcxButton;
    btn_EditKonfession: TcxButton;
    btn_WebBusiness: TcxButton;
    btn_MapBusiness: TcxButton;
    btn_MailBusiness: TcxButton;
    lagrp_Personal: TdxLayoutGroup;
    lagrp_MitarbeiterInfo: TdxLayoutGroup;
    lagrp_MitarbeiterInfoDetails: TdxLayoutGroup;
    lagrp_Zusatz: TdxLayoutGroup;
    lagrp_Sonstige: TdxLayoutGroup;
    lagrp_Business: TdxLayoutGroup;
    laitm_Anrede: TdxLayoutItem;
    laitm_Vorname: TdxLayoutItem;
    laitm_Geburtsname: TdxLayoutItem;
    laitm_Nachname: TdxLayoutItem;
    laitm_Geburtsland: TdxLayoutItem;
    laitm_HandyPrivatText: TdxLayoutItem;
    itm_Telefon2Text: TdxLayoutItem;
    laitm_Telefon1Text: TdxLayoutItem;
    laitm_MapPrivat: TdxLayoutItem;
    laitm_OrtPrivat: TdxLayoutItem;
    laitm_PLZPrivat: TdxLayoutItem;
    laitm_Zusatz: TdxLayoutItem;
    laitm_StrassePrivat: TdxLayoutItem;
    laitm_Mail1PrivatBtn: TdxLayoutItem;
    laitm_Mail2PrivatBtn: TdxLayoutItem;
    laitm_WebPrivatText: TdxLayoutItem;
    laitm_Mail1PrivatText: TdxLayoutItem;
    laitm_Mail2PrivatText: TdxLayoutItem;
    itm_Geburtsdatum: TdxLayoutItem;
    laitm_Familienstand: TdxLayoutItem;
    laitm_Geschlecht: TdxLayoutItem;
    laitm_Konfession: TdxLayoutItem;
    laitm_Staatsangehoerigkeit: TdxLayoutItem;
    laitm_Picture: TdxLayoutItem;
    laitm_ZusatzSeperator: TdxLayoutSeparatorItem;
    laitm_Sonstiges: TdxLayoutItem;
    laitm_Sonstigeslabel: TdxLayoutLabeledItem;
    laitm_StaatsangehoerigkeitBtn: TdxLayoutItem;
    laitm_KonfessionBtn: TdxLayoutItem;
    laitm_WebPrivatBtn: TdxLayoutItem;
    lagrp_PersonalTab: TdxLayoutGroup;
    lagrp_Suche: TdxLayoutGroup;
    lagrp_Mitarbeiter: TdxLayoutGroup;
    lagrp_SucheFilter: TdxLayoutGroup;
    laitm_SucheErgebnis: TdxLayoutItem;
    laitm_Funktion: TdxLayoutItem;
    laitm_SucheFilterLoeschen: TdxLayoutItem;
    laitm_SucheFiltersetzen: TdxLayoutItem;
    laitm_StrasseBusiness: TdxLayoutItem;
    laitm_Abteilung: TdxLayoutItem;
    laitm_MailBusinessText: TdxLayoutItem;
    laitm_Firma: TdxLayoutItem;
    laitm_WebBusinessText: TdxLayoutItem;
    laitm_OrtBusiness: TdxLayoutItem;
    laitm_PLZBusiness: TdxLayoutItem;
    laitm_TelefonDurchwahlText: TdxLayoutItem;
    laitm_TelefonZentraleText: TdxLayoutItem;
    laitm_KontaktartSuche: TdxLayoutItem;
    laitm_AbteilungSuche: TdxLayoutItem;
    laitm_FirmaSuche: TdxLayoutItem;
    laitm_FunktionSuche: TdxLayoutItem;
    laitm_NachnameSuche: TdxLayoutItem;
    laitm_OrtSuche: TdxLayoutItem;
    laitm_PLZSuche: TdxLayoutItem;
    laitm_StrasseSuche: TdxLayoutItem;
    laitm_VornameSuche: TdxLayoutItem;
    laitm_Facebook: TdxLayoutItem;
    laitm_Skype: TdxLayoutItem;
    laitm_Teams: TdxLayoutItem;
    laitm_WebBusinessBtn: TdxLayoutItem;
    laitm_MailBusinessBtn: TdxLayoutItem;
    laitm_MapBusiness: TdxLayoutItem;
    laitm_Kontaktart: TdxLayoutItem;
    laitm_HandyBusinessText: TdxLayoutItem;
    edt_GeschaeftlichHandy: TcxDBTextEdit;
    cmbbx_KontaktArt: TcxDBLookupComboBox;
    lagrp_KontaktPersonalEmail2: TdxLayoutGroup;
    lagrp_ZusatzStaatsangehoerigkeit: TdxLayoutGroup;
    lagrp_ZusatzKonfession: TdxLayoutGroup;
    lagrp_SucheKontakt: TdxLayoutGroup;
    lagrp_SucheAdressePri: TdxLayoutGroup;
    lagrp_SucheFirma: TdxLayoutGroup;
    lagrp_SucheButtons: TdxLayoutGroup;
    lagrp_GesWeb: TdxLayoutGroup;
    lagrp_MailBusiness: TdxLayoutGroup;
    laitm_Todestag: TdxLayoutItem;
    dtEdt_KontaktZusatzTodestag: TcxDBDateEdit;
    laitm_Geburtsort: TdxLayoutItem;
    edt_KontakteGeburtsort: TcxDBTextEdit;
    qry_KontakteTodestag: TDateField;
    qry_KontakteGeburtsort: TStringField;
    lagrp_ZusatzwithoutPic: TdxLayoutGroup;
    lagrp_ZusatzwithPic: TdxLayoutGroup;
    lagrp_Browser: TdxLayoutGroup;
    laitm_Browser: TdxLayoutItem;
    pnl_Browser: TcxGroupBox;
    lagrp_KontaktPersonalAdress: TdxLayoutGroup;
    lagrp_KontaktPersonalEmail1: TdxLayoutGroup;
    lagrp_KontaktPersonal: TdxLayoutGroup;
    lagrp_KontaktPersonalWeb: TdxLayoutGroup;
    laitm_ImageGes: TdxLayoutItem;
    lagrp_GeswithoutPic: TdxLayoutGroup;
    lagrp_GeswithPic: TdxLayoutGroup;
    img_PictureGes: TcxDBImage;
    lagrp_GesAdress: TdxLayoutGroup;
    lagrp_SucheAdresseGes: TdxLayoutGroup;
    laitm_StrasseGesSuche: TdxLayoutItem;
    laitm_PLZGesSuche: TdxLayoutItem;
    laitm_OrtGesSuche: TdxLayoutItem;
    laitm_MailBusinessZentralText: TdxLayoutItem;
    qry_KontakteE_Mail_Zentral: TStringField;
    edt_KontaktGeschaeftlichEMailZentrale: TcxDBTextEdit;
    lagrp_GesMailzentral: TdxLayoutGroup;
    laitm_MailBusinessZentralBtn: TdxLayoutItem;
    btn_MailGesZentral: TcxButton;
    laitm_AnredeSuche: TdxLayoutItem;
    cmbbx_KontaktAnrede: TcxComboBox;
    lagrp_KontaktPersonalTelefon1: TdxLayoutGroup;
    laitm_Telefon1Btn: TdxLayoutItem;
    btn_Tel1: TcxButton;
    lagrp_KontaktPersonalTelefon2: TdxLayoutGroup;
    lagrp_KontaktPersonalHandy: TdxLayoutGroup;
    itm_Telefon2Btn: TdxLayoutItem;
    laitm_HandyPrivatBtn: TdxLayoutItem;
    btn_Tel2: TcxButton;
    btn_Handy: TcxButton;
    lagrp_TelefonDurchwahl: TdxLayoutGroup;
    lagrp_HandyBusiness: TdxLayoutGroup;
    lagrp_TelefonZentraleText: TdxLayoutGroup;
    laitm_TelefonZentraleBtn: TdxLayoutItem;
    laitm_TelefonDurchwahlBtn: TdxLayoutItem;
    laitm_HandyBusinessBtn: TdxLayoutItem;
    btn_KontaktGeschaeftlichTelefonZentrale: TcxButton;
    btn_KontaktGeschaeftlichTelefondurchwahl: TcxButton;
    btn_KontaktGeschaeftlichHandy: TcxButton;
    edt_KontaktSucheStrasseGes: TcxTextEdit;
    edt_KontaktSuchePLZGes: TcxTextEdit;
    edt_KontaktSucheOrtGes: TcxTextEdit;
    btn_AddFields: TdxBarLargeButton;
    brpmm_Fields: TdxBarPopupMenu;
    btn_addGeburtsname: TdxBarButton;
    btn_addGeburtsort: TdxBarButton;
    btn_addGeburtsland: TdxBarButton;
    btn_addTodestag: TdxBarButton;
    cmbbx_KontaktGeburtsland: TcxDBLookupComboBox;
    qry_KontakteID_Geburtsland: TIntegerField;
    lagrp_BrowserDetail: TdxLayoutGroup;
    Outlook: TOutlookApplication;
    qry_work: TFDQuery;
    ppmbtn_ExportOutlook: TdxBarLargeButton;
    procedure btn_KontaktNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_KontaktEmail2SendClick(Sender: TObject);
    procedure btn_KontaktGeschaeftlichSendMailClick(Sender: TObject);
    procedure btn_KontaktEmail1SendClick(Sender: TObject);
    procedure btn_KontaktKonfessionEditClick(Sender: TObject);
    procedure btn_KontaktCancelClick(Sender: TObject);
    procedure btn_KontaktDeleteClick(Sender: TObject);
    procedure btn_KontaktFirstClick(Sender: TObject);
    procedure btn_KontaktLastClick(Sender: TObject);
    procedure btn_KontaktNextClick(Sender: TObject);
    procedure btn_KontaktprevClick(Sender: TObject);
    procedure btn_KontaktSaveClick(Sender: TObject);
    procedure btn_kontaktsuchenClick(Sender: TObject);
    procedure btn_KontaktStaatsangehörigkeitEditClick(Sender: TObject);
    procedure grdDBTblView_KontakteCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;   AShift: TShiftState; var AHandled: Boolean);
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure ppmbtn_NachExcelexportierenClick(Sender: TObject);
    procedure ppmbtn_VCFImportierenClick(Sender: TObject);
    procedure ppmbtn_ExportVCFClick(Sender: TObject);
    procedure edt_KontaktSucheNachnameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_KontaktPrivOpenWebsiteClick(Sender: TObject);
    procedure btn_KontaktGesOpenWebsiteClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_MapPrivateClick(Sender: TObject);
    procedure lagrp_PersonalTabTabChanged(Sender: TObject);
    procedure btn_MapBusinessClick(Sender: TObject);
    procedure btn_ClearFilterClick(Sender: TObject);
    procedure btn_addTodestagClick(Sender: TObject);
    procedure btn_addGeburtsnameClick(Sender: TObject);
    procedure btn_addGeburtsortClick(Sender: TObject);
    procedure btn_addGeburtslandClick(Sender: TObject);
    procedure dxLayoutGroup6Button0Click(Sender: TObject);
    procedure ppmbtn_ExportOutlookClick(Sender: TObject);
    procedure btn_Tel1Click(Sender: TObject);
    procedure btn_Tel2Click(Sender: TObject);
    procedure btn_HandyClick(Sender: TObject);
    procedure btn_KontaktGeschaeftlichTelefonZentraleClick(Sender: TObject);
    procedure btn_KontaktGeschaeftlichTelefondurchwahlClick(Sender: TObject);
    procedure btn_KontaktGeschaeftlichHandyClick(Sender: TObject);
  private
    { Private-Deklarationen }
    bButtons: boolean;
    SaveGridViewContacts: TSavedGridView;
    FWebBrowser: TAbstractWebBrowser;
    procedure MakeCall(Number: String);
    procedure OpenUrl(AURL: String);
    procedure SetGridViews(Show:boolean);
    procedure SetButtons;
    procedure SetTab;
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Types}
var
  {$Region var}
  frm_Contact: Tfrm_Contact;
  {$EndRegion var}
const
  {$Region Const}
  arrCont = [1,2];
  {$EndRegion Const}
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Data,
  PCM.Functions.Synch.Wait,
  PCM.Strings,
  PCMManager.Helper.Contacts.VCF,
  PCMManager.Modul.C_Contacts.Konfession,
  PCMManager.Modul.C_Contacts.Neu,
  PCMManager.Modul.C_Contacts.Staatsangehoerigkeit;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
procedure Tfrm_Contact.MakeCall(Number: String);
var
  sPAram: String;
begin
  qry_work.SQL.Text:= 'SELECT Path From manager_phone';
  qry_work.open;
  sParam:= 'callto:' + StringReplace(Number,' ','',[rfIgnoreCase,rfReplaceAll]);
  ShellExecute(0,'open', PChar('C:\Program Files\PhonerLite\PhonerLite.exe'),PChar(sParam), NIL, SW_SHOWNORMAL);
  ShellExecute(0,'open', PChar('C:\Program Files\PhonerLite\PhonerLite.exe callto:+49 160 95460312'), NIL, NIL, SW_SHOWNORMAL);
  qry_work.Close;
end;
procedure Tfrm_Contact.OpenUrl(AURL: String);
begin
  lagrp_Browser.Visible:= true;
  lagrp_PersonalTab.ItemIndex:= 2;
  if not Assigned(FWebBrowser) then
  begin
    FWebBrowser := TWebBrowserFactory.CreateWebBrowser(Self);
    FWebBrowser.Parent := pnl_Browser;
    FWebBrowser.Align := alClient;
    FWebBrowser.OnBeforeNavigate := nil;
  end
  else
  begin
    FreeAndNil(FWebBrowser);
    FWebBrowser := TWebBrowserFactory.CreateWebBrowser(Self);
    FWebBrowser.Parent := pnl_Browser;
    FWebBrowser.Align := alClient;
    FWebBrowser.OnBeforeNavigate := nil;
  end;
  FWebBrowser.Navigate(AURL);
end;
procedure Tfrm_Contact.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
procedure Tfrm_Contact.SetButtons;
begin
// AC_Kontakte
  if dm_PCM.iKontakte >= 2 then
  begin
    // Kontakte
    btn_KontaktSave.Enabled := qry_Kontakte.State in [dsInsert, dsEdit];
    btn_KontaktCancel.Enabled := qry_Kontakte.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iKontakte = 3 then
  begin
    // Kontakte
    btn_KontaktDelete.Enabled := (not qry_Kontakte.Eof) and not (qry_Kontakte.State in [dsInsert, dsEdit]);
  end;
end;
procedure Tfrm_Contact.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewContacts := TSavedGridView.Create(GV_Contacs,dm_PCM.iIDBenutzerPCM, grdDBTblView_Suche);
    SaveGridViewContacts.LoadView;
  end
  else begin
    SaveGridViewContacts.SaveView(0);
    SaveGridViewContacts.Free;
  end;
end;
procedure Tfrm_Contact.SetTab;
  procedure SetItems;
  begin
    if qry_Kontakte.FieldByName('ID_Anrede').AsInteger in [4,5,6,7,8,9,10,11,12] then
    begin
      laitm_Abteilung.Visible:= false;
      laitm_Funktion.Visible:= false;
      laitm_TelefonDurchwahlText.Visible:= false;
      laitm_HandyBusinessText.Visible:= false;
      lagrp_MailBusiness.Visible:= false;
    end
    else begin
      laitm_Abteilung.Visible:= true;
      laitm_Funktion.Visible:= true;
      laitm_TelefonDurchwahlText.Visible:= true;
      laitm_HandyBusinessText.Visible:= true;
      lagrp_MailBusiness.Visible:= true;
    end;
  end;
begin
  if qry_Kontakte.FieldByName('ID_Anrede').AsInteger in arrcont then
  begin
    laitm_HandyBusinessText.Visible:= true;
    laitm_TelefonDurchwahlText.Visible:= true;
    laitm_ImageGes.Visible:= false;
    lagrp_Zusatz.Visible:= True;
    lagrp_KontaktPersonal.Visible:= True;
    lagrp_MitarbeiterInfoDetails.ItemIndex:= 0;
    laitm_Vorname.Caption:= 'Vorname:';
    laitm_Nachname.Caption:='Nachname:';
    if qry_Kontakte.FieldByName('Geburtsname').AsString <> '' then
    begin
      laitm_Geburtsname.Visible:= true;
      btn_addGeburtsname.Visible:= ivnever;
    end
    else begin
      laitm_Geburtsname.Visible:= false;
      btn_addGeburtsname.Visible:= ivAlways;
    end;

    if qry_Kontakte.FieldByName('ID_Geburtsland').AsString <> '' then
    begin
      laitm_Geburtsland.Visible:= true;
      btn_addGeburtsland.Visible:= ivnever;
    end
    else begin
      laitm_Geburtsland.Visible:= false;
      btn_addGeburtsland.Visible:= ivalways;
    end;

    if qry_Kontakte.FieldByName('Geburtsort').AsString <> '' then
    begin
      laitm_Geburtsort.Visible:= true;
      btn_addGeburtsort.Visible:= ivnever;
    end
    else begin
      laitm_Geburtsort.Visible:= false;
      btn_addGeburtsort.Visible:= ivalways;
    end;

    if qry_Kontakte.FieldByName('Todestag').AsString <> '' then
    begin
      laitm_Todestag.Visible:= true;
      btn_addTodestag.Visible:= ivnever;
    end
    else begin
      laitm_Todestag.Visible:= false;
      btn_addTodestag.Visible:= ivalways;
    end;
    SetItems;
  end
  else
  begin
    laitm_TelefonDurchwahlText.Visible:= false;
    laitm_HandyBusinessText.Visible:= false;
    laitm_ImageGes.Visible:= true;
    lagrp_KontaktPersonal.Visible:= false;
    lagrp_Zusatz.Visible:= false;
    laitm_Vorname.Caption:= 'Firma:';
    laitm_Nachname.Caption:='Ort:';
    btn_addGeburtsname.Visible:= ivnever;
    btn_addGeburtsort.Visible:= ivnever;
    btn_addGeburtsland.Visible:= ivnever;
    SetItems;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Toolbar                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Toolbar}
procedure Tfrm_Contact.dxLayoutGroup6Button0Click(Sender: TObject);
begin
  lagrp_Browser.Visible:= false;
  lagrp_PersonalTab.ItemIndex:= 1;
end;
procedure Tfrm_Contact.btn_KontaktNewClick(Sender: TObject);
var
  iAnrede : Integer;
  sVorname, sName: string;
  iID_Kontakt: integer;
begin
  Application.CreateForm(Tfrm_PCManagerNewContact, frm_PCManagerNewContact);
  if frm_PCManagerNewContact.Execute(True,iAnrede, sVorname, sName) then
  begin
    if not qry_Kontakte.active then
       qry_Kontakte.Open;

    if qry_Kontakte.State in [dsInsert, dsedit] then
      qry_Kontakte.Post;
    qry_Kontakte.Append;
    qry_Kontakte.Insert;
    qry_Kontakte.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    if iAnrede <> 0 then
      qry_Kontakte.FieldByName('ID_Anrede').AsInteger:= iAnrede;
    qry_Kontakte.FieldByName('Vorname').AsString:= sVorname;
    qry_Kontakte.FieldByName('Nachname').AsString:= sName;
    qry_Kontakte.Post;
    bButtons:= true;
    dm_PCM.qry_work.SQL.Text:= 'SELECT ID FROM manager_kontakte Where ID_Anrede = :ID_Anrede and Vorname = :Vorname and Nachname = :Nachname';
    dm_PCM.qry_work.ParamByName('ID_Anrede').AsInteger:= iAnrede;
    dm_PCM.qry_work.ParamByName('Vorname').AsString:= sVorname;
    dm_PCM.qry_work.ParamByName('Nachname').AsString:= sName;
    dm_PCM.qry_work.open;
    iID_Kontakt:= dm_PCM.qry_work.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.Close;
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neuer Kontakt ' + sVorname + ' ' + sName + ' wurde angelegt';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    lagrp_PersonalTab.ItemIndex:= 1;
    qry_Kontakte.Refresh;
    qry_Kontakte.Locate('ID',iID_Kontakt,[]);
  end;
  frm_PCManagerNewContact.Free;
end;
procedure Tfrm_Contact.btn_KontaktSaveClick(Sender: TObject);
var
  sWiederholungText: string;
  ReminderDate, Start, Finish: string;
  ARecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
  iJahr,iMonat,iTag: word;
  sRecurrenceInfo: Ansistring;
  iEventtpye: integer;
begin
  if qry_Kontakte.State in [dsInsert, dsEdit] then
  begin
    qry_Kontakte.Post;
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Kontakt ' + qry_Kontakte.FieldByName('Vorname').AsString + ' ' + qry_Kontakte.FieldByName('Nachname').AsString + ' wurde geändert';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
  end;

  dm_PCM.qry_work.SQL.Text:= 'DELETE FROM manager_kalender WHERE Caption = :Caption';
  dm_PCM.qry_work.ParamByName('Caption').AsString:= 'Geburtstag von ' + edt_Kontaktname.text + ' ' + edt_KontaktNachname.Text;
  dm_PCM.qry_work.ExecSQL;
  if DatetoStr(dtEdt_KontaktZusatzGeburtsdatum.date) <> '00.00.0000' then
  begin
    dm_PCM.qry_work.SQL.Text:='Insert into manager_Kalender (wiederholung_text,EventType,Caption,Location,Message,'
              + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
              + 'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,Kalendername,CompleteDay,ID_ADR_Wurzel,ID_Ansprechpartner,Typ,Aufgabenstatus,ID_IC_Prioritaeten,ID_IC_AufgabenArten,GesendetAm,Erledigungsgrad,zeitformat,AufgabenDauer) Values ('
              + ':wiederholung_text,:Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
              + ':ReminderDate,:ReminderMinutes,:Color,:FontColor,:ID,:Kalender,:ganzerTag,:ID_ADR_Wurzel,:ID_Ansprechpartner,2,0,1,2,Now(),0,0,1440)';
    iEventtpye:= 1;

    DecodeDate(dtEdt_KontaktZusatzGeburtsdatum.date,iJahr,iMonat,iTag);

    ReminderDate:= DateTimeToStr(IncMinute(StrToDateTime(DateToStr(dtEdt_KontaktZusatzGeburtsdatum.Date)  + ' 00:00:00'),360 *-1));
    ReminderDate:= Copy(ReminderDate,7,4) + '-' + Copy(ReminderDate,4,2) + '-'
                   + Copy(ReminderDate,1,2) + ' ' + Copy(ReminderDate,12,8);


    with ARecurrenceInfo do
    begin
      Count :=  -1;
      DayNumber := iTag;
      DayType := cxdtDay;
      Finish := StrToDate('29.12.1899');
      OccurDays := [dTuesday];
      Periodicity := iMonat;
      Recurrence :=  cxreyearly;
      Start := dtEdt_KontaktZusatzGeburtsdatum.Date;
      YearPeriodicity := 1;
    end;
    sRecurrenceInfo := cxRecurrenceInfoDataToString(ARecurrenceInfo);
    sWiederholungText:= 'FREQ=YEARLY;BYMONTHDAY='+IntToStr(iTag)+';BYMONTH='+IntToStr(iMonat);

    Start:= DateToStr(dtEdt_KontaktZusatzGeburtsdatum.Date)  + ' 00:00:00';
    Start := Copy(Start,7,4) + '-' + Copy(Start,4,2) + '-'
           + Copy(Start,1,2) + ' ' + Copy(Start,12,8);

    Finish:= DateTimeToStr(IncDay(StrToDateTime(DateToStr(dtEdt_KontaktZusatzGeburtsdatum.Date)  + ' 00:00:00'),1));
    Finish:= Copy(Finish,7,4) + '-' + Copy(Finish,4,2) + '-'
           + Copy(Finish,1,2) + ' ' + Copy(Finish,12,8);
    dm_PCM.qry_work.ParamByName('Eventtype').ASinteger:= iEventtpye;
    dm_PCM.qry_work.ParamByName('SUMMARY').AsString:= 'Geburtstag von ' + edt_Kontaktname.text + ' ' + edt_KontaktNachname.Text;
    dm_PCM.qry_work.ParamByName('Location').AsString:= 'Sonstiges';
    dm_PCM.qry_work.ParamByName('Beschreibung').AsString:= 'Geburtstag von ' + edt_Kontaktname.text + ' ' + edt_KontaktNachname.Text;
    dm_PCM.qry_work.ParamByName('DateBegin').AsString:= Start;
    dm_PCM.qry_work.ParamByName('DateEnd').AsString:= Finish;
    dm_PCM.qry_work.ParamByName('Options').AsInteger:= 6;
    dm_PCM.qry_work.ParamByName('Reminder').AsString:= 'true';
    dm_PCM.qry_work.ParamByName('ReminderDate').AsString:= ReminderDate;
    dm_PCM.qry_work.ParamByName('ReminderMinutes').AsInteger:= 360;
    dm_PCM.qry_work.ParamByName('RecurrenceInfo').AsAnsiString:= sRecurrenceInfo;
    dm_PCM.qry_work.ParamByName('Color').AsString:= IntToStr(11645283);
    dm_PCM.qry_work.ParamByName('FontColor').AsString:= IntToStr(clBlack);
    dm_PCM.qry_work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.ParamByName('Kalender').AsString:= 'Geburtstag';
    dm_PCM.qry_work.ParamByName('ganzerTag').AsString:= 'true';;
    dm_PCM.qry_work.ParamByName('ID_ADR_Wurzel').AsInteger:= qry_Kontakte.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.ParamByName('ID_Ansprechpartner').AsInteger:= qry_Kontakte.FieldByName('ID').AsInteger;
    dm_PCM.qry_work.ParamByName('wiederholung_text').AsString:= swiederholungtext;
    dm_PCM.qry_work.ExecSQL;
    dm_PCM.qry_work.close;
  end;
end;
procedure Tfrm_Contact.btn_KontaktCancelClick(Sender: TObject);
begin
  qry_Kontakte.Cancel;
end;
procedure Tfrm_Contact.btn_KontaktDeleteClick(Sender: TObject);
begin
  if qry_Kontakte.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Kontakt ' + qry_Kontakte.FieldByName('Vorname').AsString + ' ' + qry_Kontakte.FieldByName('Nachname').AsString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qry_Kontakte.Delete;
  end;
end;
procedure Tfrm_Contact.btn_KontaktFirstClick(Sender: TObject);
begin
  btn_KontaktSaveClick(SENDER);
  qry_Kontakte.First;
  SetTab;
end;
procedure Tfrm_Contact.btn_KontaktprevClick(Sender: TObject);
begin
  btn_KontaktSaveClick(SENDER);
  qry_Kontakte.Prior;
  SetTab;
end;
procedure Tfrm_Contact.btn_KontaktNextClick(Sender: TObject);
begin
  btn_KontaktSaveClick(SENDER);
  qry_Kontakte.Next;
  SetTab;
end;
procedure Tfrm_Contact.btn_KontaktLastClick(Sender: TObject);
begin
  btn_KontaktSaveClick(SENDER);
  qry_Kontakte.Last;
  SetTab;
end;
procedure Tfrm_Contact.btn_addGeburtslandClick(Sender: TObject);
begin
  laitm_Geburtsland.Visible:= true;
  btn_addGeburtsland.Visible:= ivnever;
end;
procedure Tfrm_Contact.btn_addGeburtsnameClick(Sender: TObject);
begin
  laitm_Geburtsname.Visible:= true;
  btn_addGeburtsname.Visible:= ivnever;
end;
procedure Tfrm_Contact.btn_addGeburtsortClick(Sender: TObject);
begin
  laitm_Geburtsort.Visible:= true;
  btn_addGeburtsort.Visible:= ivnever;
end;
procedure Tfrm_Contact.btn_addTodestagClick(Sender: TObject);
begin
  laitm_Todestag.Visible:= true;
  btn_addTodestag.Visible:= ivnever;
end;
// Pagecontrol
procedure Tfrm_Contact.lagrp_PersonalTabTabChanged(Sender: TObject);
begin
  SetTab;
  if lagrp_PersonalTab.ItemIndex = 0 then
  begin
    btn_KontaktSave.Enabled:= false;
    btn_KontaktDelete.Enabled:= false;
    btn_KontaktFirst.Enabled:= false;
    btn_KontaktPrev.Enabled:= false;
    btn_KontaktNext.Enabled:= false;
    btn_KontaktLast.Enabled:= false;
  end
  else begin
    if qry_Kontakte.Filter ='id_Benutzer = 0' then
    begin
      qry_Kontakte.Filter:= 'id_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
      qry_Kontakte.Filtered:= true;
      if qry_Kontakte.RecordCount > 0 then
      begin
        qry_Kontakte.First;
        lagrp_MitarbeiterInfoDetails.ItemIndex:=0;
        if bButtons then
        begin
          btn_KontaktDelete.Enabled:= true;
          btn_KontaktFirst.Enabled:= false;
          btn_KontaktPrev.Enabled:= false;
          btn_KontaktNext.Enabled:= false;
          btn_KontaktLast.Enabled:= false;
        end
        else begin
          btn_KontaktDelete.Enabled:= true;
          btn_KontaktFirst.Enabled:= true;
          btn_KontaktPrev.Enabled:= true;
          btn_KontaktNext.Enabled:= true;
          btn_KontaktLast.Enabled:= true;
        end;
      end
      else begin
        lagrp_PersonalTab.ItemIndex:= 0;
        MessageDlg(rs_PCMManager_KeineKontakte, mtWarning,[mbOk],0);
      end;
    end
    else begin
      if qry_Kontakte.RecordCount > 0 then
      begin
        lagrp_MitarbeiterInfoDetails.ItemIndex:=0;
        if bButtons then
        begin
          btn_KontaktDelete.Enabled:= true;
          btn_KontaktFirst.Enabled:= false;
          btn_Kontaktprev.Enabled:= false;
          btn_KontaktNext.Enabled:= false;
          btn_KontaktLast.Enabled:= false;
        end
        else begin
          btn_KontaktDelete.Enabled:= true;
          btn_KontaktFirst.Enabled:= true;
          btn_Kontaktprev.Enabled:= true;
          btn_KontaktNext.Enabled:= true;
          btn_KontaktLast.Enabled:= true;
        end;
      end
      else begin
        lagrp_PersonalTab.ItemIndex:= 0;
        lagrp_PersonalTab.ItemIndex:= 0;
        MessageDlg(rs_PCMManager_KeineKontakte, mtWarning,[mbOk],0);
      end;
    end;
  end;
  bButtons:= false;
end;
// Suche
procedure Tfrm_Contact.edt_KontaktSucheNachnameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
    btn_kontaktsuchen.Click;
end;
procedure Tfrm_Contact.btn_kontaktsuchenClick(Sender: TObject);
var
  str_filter: string;
  str_temp:string;
begin
  qry_Kontakte.Open;
  Screen.Cursor := crHourGlass;
  qry_Kontakte.Filtered:= false;
  str_Filter:= 'id_Benutzer = ' +  IntToStr(dm_PCM.iIDBenutzerPCM);
  if edt_KontaktSucheNachname.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheNachname.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Nachname) like '+ QuotedStr(str_temp);
  end;
  if edt_KontaktSucheVorname.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheVorname.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Vorname) like ' + QuotedStr(str_temp);
  end;
  if cmbbx_KontaktSucheArt.ItemIndex <> -1 then
  begin
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
        str_Filter := str_Filter + 'ID_Kontaktart = ' + IntToStr(Integer(cmbbx_KontaktSucheArt.Properties.Items.Objects[cmbbx_KontaktSucheArt.ItemIndex]));
  end;
  if cmbbx_KontaktAnrede.ItemIndex <> -1 then
  begin
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
        str_Filter := str_Filter + 'ID_Anrede = ' + IntToStr(Integer(cmbbx_KontaktAnrede.Properties.Items.Objects[cmbbx_KontaktAnrede.ItemIndex]));
  end;
  if edt_KontaktSucheStrasse.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheStrasse.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Strasse_Privat) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSuchePLZ.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSuchePLZ.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(PLZ_Privat like) ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheOrt.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheOrt.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Ort_Privat) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheStrasseGes.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheStrasseGes.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Strasse_Ges) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSuchePLZGes.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSuchePLZGes.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(PLZ_Ges like) ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheOrtGes.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheOrtGes.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Ort_Ges) like ' + QuotedStr(str_temp);
  end;


  if edt_KontaktSucheFirma.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheFirma.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Firma) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheAbteilung.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheAbteilung.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Abteilung_Ges) like ' + QuotedStr(str_temp);
  end;
  if edt_KontaktSucheFunktion.text <> '' then
  begin
    str_temp:= '%' + lowercase(edt_KontaktSucheFunktion.text) + '%';
    if str_Filter <> '' then str_Filter := str_Filter + ' and ';
      str_Filter := str_Filter + 'Lower(Funktion_Ges) like ' + QuotedStr(str_temp);
  end;
  qry_Kontakte.Filter:= str_filter;
  qry_Kontakte.Filtered:= true;
  Screen.Cursor := crDefault;
  grd_Suche.SetFocus;
  grdDBTblView_Suche.Focused := true;
end;
procedure Tfrm_Contact.btn_ClearFilterClick(Sender: TObject);
begin
  edt_KontaktSucheNachname.Text:= '';
  edt_KontaktSucheVorname.Text:= '';
  cmbbx_KontaktSucheArt.ItemIndex:= -1;
  cmbbx_KontaktAnrede.ItemIndex:= -1;
  edt_KontaktSucheStrasse.Text:= '';
  edt_KontaktSuchePLZ.Text:= '';
  edt_KontaktSucheOrt.Text:= '';
  edt_KontaktSucheStrasseGes.Text:= '';
  edt_KontaktSuchePLZGes.Text:= '';
  edt_KontaktSucheOrtGes.Text:= '';
  edt_KontaktSucheFirma.Text:= '';
  edt_KontaktSucheAbteilung.Text:= '';
  edt_KontaktSucheFunktion.Text:= '';
  btn_kontaktsuchen.Click;
end;
// GRID
procedure Tfrm_Contact.grdDBTblView_KontakteCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;  AShift: TShiftState; var AHandled: Boolean);
var
  hittest : TcxCustomGridHitTest;
begin
  hittest := grdDBTblView_Suche.GetHitTest(grd_Suche.ScreenToClient(Mouse.CursorPos));
  if hittest.HitTestCode = htCell then
  begin
    if qry_Kontakte.FieldByName('ID').AsInteger > 0 then
    begin
      SetTab;
      lagrp_PersonalTab.ItemIndex:= 1;
    end;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Kontaktdetail                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Kontaktdetail}
procedure Tfrm_Contact.btn_KontaktEmail1SendClick(Sender: TObject);
var
  ExecStr : String;
begin
  ExecStr := Format('mailto:%s?subject=',[qry_Kontakte.FieldByName('E_Mail_Privat').AsString]);
  ShellExecute(0,'open', PChar(ExecStr), NIL, NIL, SW_SHOWNORMAL);
end;
procedure Tfrm_Contact.btn_KontaktEmail2SendClick(Sender: TObject);
var
  ExecStr : String;
begin
  ExecStr := Format('mailto:%s?subject=',[qry_Kontakte.FieldByName('E_Mail_Privat1').AsString]);
  ShellExecute(0,'open', PChar(ExecStr), NIL, NIL, SW_SHOWNORMAL);
end;
procedure Tfrm_Contact.btn_KontaktPrivOpenWebsiteClick(Sender: TObject);
var
  sLink: string;
begin
  if edt_KontaktInternet.Text <> '' then
  begin
    sLink := edt_KontaktInternet.text;
    OpenUrl(sLink);
//    ShellExecute(self.WindowHandle,'open', PWideChar(sLink) ,nil,nil, SW_SHOWNORMAL);
  end;
end;
procedure Tfrm_Contact.btn_MapBusinessClick(Sender: TObject);
begin
  if (edt_KontaktGeschaeftlichStrasse.Text <> '') and (edt_KontaktGeschaeftlichPLZ.Text <> '') and (edt_KontaktGeschaeftlichOrt.Text <> '') then
  begin
    var sLink:= 'http://maps.google.de/maps?q=' + edt_KontaktGeschaeftlichStrasse.Text + ',' + edt_KontaktGeschaeftlichPLZ.Text + '+' + edt_KontaktGeschaeftlichOrt.Text + '&z=12';
//    ShellExecute(0, 'open', PChar(sLink), nil, nil, SW_SHOWNORMAL);
    OpenUrl(sLink);
  end
  else begin
    MessageDlg('Adresse unvollständig',mtWarning,[mbOk],0);
  end;
end;
procedure Tfrm_Contact.btn_MapPrivateClick(Sender: TObject);
begin
  if (edt_KontaktStrasse.Text <> '') and (edt_KontaktPLZ.Text <> '') and (edt_KontaktOrt.Text <> '') then
  begin
    var sLink:= 'http://maps.google.de/maps?q=' + edt_KontaktStrasse.Text + ',' + edt_KontaktPLZ.Text + '+' + edt_KontaktOrt.Text + '&z=12';
//    ShellExecute(0, 'open', PChar(sLink), nil, nil, SW_SHOWNORMAL);
    OpenUrl(sLink);
  end
  else begin
    MessageDlg('Adresse unvollständig',mtWarning,[mbOk],0);
  end;
end;
procedure Tfrm_Contact.btn_Tel1Click(Sender: TObject);
begin
  MakeCall(edt_KontaktTelefon1.text);
end;
procedure Tfrm_Contact.btn_HandyClick(Sender: TObject);
begin
  MakeCall(edt_KontaktHandy.text);
end;
procedure Tfrm_Contact.btn_Tel2Click(Sender: TObject);
begin
  MakeCall(edt_KontaktTelefon2.text);
end;
procedure Tfrm_Contact.btn_KontaktGeschaeftlichTelefonZentraleClick(Sender: TObject);
begin
  MakeCall(edt_KontaktGeschaeftlichTelefonZentrale.text);
end;
procedure Tfrm_Contact.btn_KontaktGeschaeftlichTelefondurchwahlClick(Sender: TObject);
begin
  MakeCall(edt_KontaktGeschaeftlichTelefonDurchwahl.text);
end;
procedure Tfrm_Contact.btn_KontaktGeschaeftlichHandyClick(Sender: TObject);
begin
  MakeCall(edt_GeschaeftlichHandy.text);
end;
procedure Tfrm_Contact.btn_KontaktStaatsangehörigkeitEditClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCM_Staatsangehoerigkeit, frm_PCM_Staatsangehoerigkeit);
  if frm_PCM_Staatsangehoerigkeit.Execute(rs_PCMManager_Staatsangehoerigkeitbearbeiten, dm_PCM.iKontakte) then
    dm_PCM.qry_Contact_Staatsangehoerigkeit.refresh;
end;
procedure Tfrm_Contact.btn_KontaktKonfessionEditClick(Sender: TObject);
begin
   Application.CreateForm(Tfrm_PCM_Konfession, frm_PCM_Konfession);
   if frm_PCM_Konfession.Execute(rs_PCMManager_Konfessionbearbeiten,dm_PCM.iKontakte) then
     dm_PCM.qry_Contact_Konfession.Refresh;
end;
procedure Tfrm_Contact.btn_KontaktGeschaeftlichSendMailClick(Sender: TObject);
var
  ExecStr : String;
begin
  ExecStr := Format('mailto:%s?subject=',[qry_Kontakte.FieldByName('E_Mail_Ges').AsString]);
  ShellExecute(0,'open', PChar(ExecStr), NIL, NIL, SW_SHOWNORMAL);
end;
procedure Tfrm_Contact.btn_KontaktGesOpenWebsiteClick(Sender: TObject);
var
  sLink: string;
begin
  if edt_KontaktGeschaeftlichInternet.Text <> '' then
  begin
    sLink := edt_KontaktGeschaeftlichInternet.text;
    OpenUrl(sLink);
//    ShellExecute(self.WindowHandle,'open', PWideChar(sLink) ,nil,nil, SW_SHOWNORMAL);
  end;
end;
procedure Tfrm_Contact.ppmbtn_VCFImportierenClick(Sender: TObject);
  function BitmapFromBase64(const base64: string): TPicture;
  var
    Input: TMemorystream;
    Output: TMemorystream;
    Input1: TStringlist;
  begin
    Input := TMemorystream.Create;
    Output := TMemorystream.Create;
    Input1 := TStringlist.Create;
    Input1.Text:= base64;
    Input1.SaveToStream(Input);
    Input.Position:= 0;
    TNetEncoding.Base64.Decode(Input, Output);
    Output.Position := 0;
    Result := TPicture.Create;
    try
      Result.LoadFromStream(Output);
    except
      Result.Free;
      raise;
    end;
    Output.Free;
    Input.Free;
    Input1.Free
  end;
//  function BitmapFromBase64(const base64: string): TPicture;
//  var
//    InputStream: TMemoryStream;
//    OutputStream: TMemoryStream;
//    TempBitmap: TPicture;
//  begin
//    InputStream := TMemoryStream.Create;
//    OutputStream := TMemoryStream.Create;
//    TempBitmap := TPicture.Create;
//  try
//    // Base64-String in den Eingabestream schreiben
//    InputStream.WriteBuffer(Pointer(base64)^, Length(base64));
//    InputStream.Position := 0;
//
//    // Base64-Dekodierung
//    TNetEncoding.Base64.Decode(InputStream, OutputStream);
//    OutputStream.Position := 0;
//
//    // Laden des dekodierten Inhalts in ein temporäres Bitmap
//    TempBitmap.LoadFromStream(OutputStream);
//
//    // Skalieren des Bildes auf 100x100 Pixel
//    Result := TPicture.Create;
//    try
//      Result.Bitmap.Width := 100;
//      Result.Bitmap.Height := 100;
//      Result.Bitmap.Canvas.StretchDraw(Rect(0, 0, 100, 100), TempBitmap);
//    except
//      Result.Free;
//      raise;
//    end;
//  finally
//    InputStream.Free;
//    OutputStream.Free;
//    TempBitmap.Free;
//  end;
//end;
  function GetValues(AValue: string) : String;
  var
    sL: TSTringlist;
    i: integer;
  begin
    Result:= '';
    sL:= TSTringlist.Create;
    sL.delimiter:=' ';
    sl.delimitedtext:= avalue;
    for I := 0 to sL.Count -1 do
      Result:= Result + ' ' + sl.Strings[i];
  end;
var
  sl: TStringList;
  sWiederholungText: string;
  tsVCF: TStringList;
  i,iIDKontakt: integer;
  sValue: string;
  sNotiz: string;
  sName: string;
  sVorname: string;
  sNachname: string;
  sAnrede: string;
  iIDAnrede: Integer;
  iIDGeschlecht: Integer;
  iIDKontaktart: Integer;
  sStrasse: string;
  sStrasseHausnummer: string;
  sHausnummer: string;
  sOrt: string;
  sPLZ: string;
  sStrasseG: string;
  sOrtG: string;
  sPLZG: string;
  SFirma: string;
  section: string;
  iADRTyp: Integer;
  sAddresse, sAddresseP, sAddresseG: string;
  sAbteilung: string;
  sEmailP,sEmailP2, sEMailG: string;
  sTelP,sTelM, sTelG,sTelH: string;
  sGeburtstag: String;
  bEncode: boolean;
  iCount: integer;
  bmPic: TPicture;
  ijahr,iMonat,iTag: integer;
  ReminderDate, Start, Finish: string;
  sRecurrenceInfo: string;
  ARecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
  sUrl: string;
  iID_kontakt: integer;
begin
  qry_Kontakte.Open;
  bEncode:= false;
  iADRTyp:= 0;
  if dlgFOpen_VCF.Execute then
  begin
    tsVCF:= TStringList.Create;
    tsVCF.LoadFromFile(dlgFOpen_VCF.FileName);
    tsVCF.Text := AnsiReplaceStr(tsVCF.Text, #13#10#32, '');
    tsVCF.Text := AnsiReplaceStr(tsVCF.Text, #13#10#9, '');
    tsVCF.SaveToFile('C:\Temp\test');
    ShowWaitForm(TForm(Self), PWideChar(rs_PCMManager_KontakteImportieren), tsVCF.Count,417, 65);
    for i := 0 to tsVCF.Count-1 do
    begin
      Application.ProcessMessages;
      WaitFormStep;
      sValue :=  tsVCF[i];
      // BEGIN:VCARD
      If Copy(sValue,1,Length('BEGIN:VCARD'))  = 'BEGIN:VCARD' then
      begin
        section:= 'BEGIN:VCARD';
      end;
      //ADR:
      If (Copy(sValue,1,Length('ADR;')) = 'ADR;') or ((Section = 'ADR;') and (Copy(sValue,1,1) = '='))then
      begin
        if (Section = 'ADR;') and (bEncode) and (Copy(sValue,1,1) = '=') then
        begin
          if bEncode then
            sAddresse:= sAddresse + Utf8ToString(PansiChar(Ansistring(idDecQuotPrint_Decode.DecodeString(svalue))))
          else
            sAddresse:= sAddresse + svalue;
        end
        else begin
          sName:= Copy(sValue,5,Length(sValue));
          if (Pos('WORK',sname) > 0) or (Pos('X-WORK',sname) > 0)  or (Pos('HOME',sname) > 0) or (Pos('X-HOME',sname) > 0)  then
          begin
            if (Pos('WORK',sname) > 0) or (Pos('X-WORK',sname) > 0) then
              iADRTyp:= 1;
            if (Pos('HOME',sname) > 0) or (Pos('X-HOME',sname) > 0) then
              iADRTyp:= 0;
            if Pos('PREF',sname) > 0 then
              sname:= copy(sname,6, Length(sname));
            if Pos('X-',sname) > 0 then
              sname:= copy(sname,8, Length(sname))
            else
              sname:= copy(sname,6, Length(sname));
            if pos('ENCODING=QUOTED-PRINTABLE:',sName) > 0 then
            begin
              bEncode:= true;
              sname:= Copy(sName,pos('ENCODING=QUOTED-PRINTABLE:',sName) + 28, Length(sname));
              sAddresse:=  Utf8ToString(PansiChar(Ansistring(idDecQuotPrint_Decode.DecodeString(sname))));
            end
            else begin
              sAddresse:= sName;
            end;
            section:= 'ADR;';
          end;
        end;
        if iADRTyp = 1 then
          sAddresseG:= Stringreplace(sAddresse,'�?','ß', [rfReplaceall,rfIgnorecase]);
        if iADRTyp = 0 then
          sAddresseP:= Stringreplace(sAddresse,'�?','ß', [rfReplaceall,rfIgnorecase]);
      end;
      // AGENT
      If pos('AGENT',sValue) > 0 then
      begin
				section:= 'AGENT';
      end;
      // ANNIVERSARY
      If pos('ANNIVERSARY',sValue) > 0 then
      begin
				section:= 'ANNIVERSARY';
      end;

      // ANNIVERSARY
      If Copy(sValue,1,Length('BDAY:')) = 'BDAY:' then
      begin
        sGeburtstag:= Copy(svalue,Length('BDAY:') + 1,Length(sValue));
  			section:= 'BDAY:';
      end;
      // CALADRURI
      If pos('CALADRURI',sValue) > 0 then
      begin
				section:= 'CALADRURI';
      end;
      // CATEGORIES
      If pos('CATEGORIES',sValue) > 0 then
      begin
				section:= 'CATEGORIES';
      end;
      // CLASS
      If pos('CLASS',sValue) > 0 then
      begin
				section:= 'CLASS';
      end;
      // CLIENTPIDMAP
      If pos('CLIENTPIDMAP',sValue) > 0 then
      begin
				section:= 'CLIENTPIDMAP';
      end;
      // TEL
      If (Copy(sValue,1,Length('TEL')) = 'TEL') then
      begin
        if (Pos('HOME', sValue) > 0) or (Pos('X-HOME', sValue) > 0)then
        begin
          if sTelP = '' then
          begin
            sTelP:= StringReplace(sValue,'TEL;PREF;HOME:','',[rfReplaceALL]);
            sTelP:= StringReplace(sTelP,'TEL;HOME:','',[rfReplaceALL]);
            sTelP:= StringReplace(sTelP,'TEL;X-HOME:','',[rfReplaceALL]);
            sTelP:= StringReplace(sTelP,'TEL;PREF;X-HOME:','',[rfReplaceALL]);
          end
        end;
        if ((Pos('PREF', sValue) > 0) or (Pos('WORK', sValue) > 0) or (Pos('X-WORK', sValue) > 0)) and (Pos('CELL', sValue) = 0) then
        begin


          if (Pos('TEL;PREF:',sValue) > 0) or (Pos('TEL;X-Main:',sValue) > 0) or (Pos('TEL;X-MAIN;PREF',sValue) > 0)then
          begin
            sTelH:= StringReplace(sValue,'TEL;PREF:','',[rfReplaceALL]);
            sTelH:= StringReplace(sTelH,'TEL;X-MAIN:','',[rfReplaceALL]);
            sTelH:= StringReplace(sTelH,'TEL;X-MAIN;PREF:','',[rfReplaceALL]);
          end
          else begin
            sTelG:= StringReplace(sValue,'TEL;PREF;WORK:','',[rfReplaceALL]);
            sTelG:= StringReplace(sTelG,'TEL;WORK:','',[rfReplaceALL]);
            sTelG:= StringReplace(sTelG,'TEL;WORK;PREF:','',[rfReplaceALL]);
            sTelG:= StringReplace(sTelG,'TEL;PREF;X-WORK:','',[rfReplaceALL]);
            sTelG:= StringReplace(sTelG,'TEL;X-WORK:','',[rfReplaceALL]);
          end;
        end;
        if (Pos('VOICE', sValue) > 0) or (Pos('CELL', sValue) > 0)   then
        begin
          sTelM:= StringReplace(sValue,'TEL;CELL;PREF:','',[rfReplaceALL]);
          sTelM:= StringReplace(sTelM,'TEL;CELL:','',[rfReplaceALL]);
          sTelM:= StringReplace(sTelM,'TEL;VOICE:','',[rfReplaceALL]);
        end;

				section:= 'TEL';
      end;
      // EMAIL
      If (Copy(sValue,1,Length('EMAIL')) = 'EMAIL') then
      begin
        if (Pos('HOME', sValue) > 0) or (Pos('X-HOME', sValue) > 0)then
        begin
          if sEMailP = '' then
          begin
            sEmailP:= StringReplace(sValue,'EMAIL;PREF;HOME:','',[rfReplaceALL]);
            sEmailP:= StringReplace(sEmailP,'EMAIL;PREF;X-HOME:','',[rfReplaceALL]);
            sEmailP:= StringReplace(sEmailP,'EMAIL;HOME:','',[rfReplaceALL]);
            sEmailP:= StringReplace(sEmailP,'EMAIL;X-HOME:','',[rfReplaceALL]);

          end
          else
          begin
            sEmailP2:= StringReplace(sValue,'EMAIL;PREF;HOME:','',[rfReplaceALL]);
            sEmailP2:= StringReplace(sEmailP2,'EMAIL;PREF;X-HOME:','',[rfReplaceALL]);
            sEmailP2:= StringReplace(sEmailP2,'EMAIL;HOME:','',[rfReplaceALL]);
            sEmailP2:= StringReplace(sEmailP2,'EMAIL;X-HOME:','',[rfReplaceALL]);
          end;
        end;
        if (Pos('WORK', sValue) > 0) or (Pos('X-WORK', sValue) > 0) then
        begin
          sEmailG:= StringReplace(sValue,'EMAIL;WORK:','',[rfReplaceALL]);
          sEmailG:= StringReplace(sEmailG,'EMAIL;X-WORK:','',[rfReplaceALL]);
          sEmailG:= StringReplace(sEmailG,'EMAIL;PREF;WORK:','',[rfReplaceALL]);
          sEmailG:= StringReplace(sEmailG,'EMAIL;PREF;X-WORK:','',[rfReplaceALL]);
        end;
				section:= 'EMAIL';
      end;

      If pos('FBURL',sValue) > 0 then
      begin
				section:= 'FBURL';
      end;

      If (Copy(sValue,1,2) = 'N:') or (Copy(sValue,1,2) = 'N;') then
      begin
        sName:= Copy(sValue,3,Length(sValue));
        if pos('CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:',sName) > 0 then
        begin
          sname:= Copy(sName,41, Length(sname));
          sName:=  Utf8ToString(PansiChar(Ansistring(idDecQuotPrint_Decode.DecodeString(sname))));
        end;
        sl := TStringList.Create;
        try
          sl.StrictDelimiter := True;
          sl.Delimiter := ';';
          sl.DelimitedText := sname;
          // Jetzt können Sie auf die einzelnen Elemente zugreifen
          sNachname:= sl[0];

          sVorname:= sl[1];
          sAnrede:= sl[4];
          sNachname:=Stringreplace(sNachname,'�?','ß', [rfReplaceall,rfIgnorecase]);
          sVorname:=Stringreplace(sVorname,'�?','ß', [rfReplaceall,rfIgnorecase]);
          sAnrede:=Stringreplace(sAnrede,'�?','ß', [rfReplaceall,rfIgnorecase]);
        finally
          sl.Free;
        end;


//        if pos('CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:',sName) > 0 then
//        begin
//          sname:= Copy(sName,41, Length(sname));
//          sName:=  Utf8ToString(PansiChar(Ansistring(idDecQuotPrint_Decode.DecodeString(sname))));
//        end;
//        iPos:= Pos(';',sName);
//        sNachname:= GetValues(Copy(sName,1,iPos-1));
//        if Copy(sNachname,1,1) = ' ' then
//          sNachname:= Copy(sNachname,2,Length(sNachname));
//        iPos1:= Pos(';',Copy(sName,iPos+1,Length(sName)));
//        sVorname := Copy(sName,iPos+1,iPos1-1);
//
//        iPos2:= Pos(';;',Copy(sName,iPos1+1,Length(sName)));
//        sAnrede := Copy(sName,iPos1+1,iPos2-1);
//        sNachname:=Stringreplace(sNachname,'�?','ß', [rfReplaceall,rfIgnorecase]);
//        sVorname:=Stringreplace(sVorname,'�?','ß', [rfReplaceall,rfIgnorecase]);
//        sAnrede:=Stringreplace(sAnrede,'�?','ß', [rfReplaceall,rfIgnorecase]);

				section:= 'N:';
      end;
      If (Copy(sValue,1,3) = 'FN:') or (Copy(sValue,1,3) = 'FN;') then
      begin
				section:= 'FN:';
      end;
      If pos('GENDER',sValue) > 0 then
      begin
				section:= 'GENDER';
      end;
      If pos('GEO',sValue) > 0 then
      begin
				section:= 'GEO';
      end;
      If pos('IMPP',sValue) > 0 then
      begin
				section:= 'IMPP';
      end;
      If pos('KEY',sValue) > 0 then
      begin
				section:= 'KEY';
      end;
      If pos('KIND',sValue) > 0 then
      begin
				section:= 'KIND';
      end;
      If pos('LABEL',sValue) > 0 then
      begin
				section:= 'LABEL';
      end;
      If pos('LANG',sValue) > 0 then
      begin
				section:= 'LANG';
      end;
      If pos('LOGO',sValue) > 0 then
      begin
				section:= 'LOGO';
      end;
      If pos('MAILER',sValue) > 0 then
      begin
				section:= 'MAILER';
      end;
      If pos('MEMBER',sValue) > 0 then
      begin
				section:= 'MEMBER';
      end;
      If pos('NAME',sValue) > 0 then
      begin
				section:= 'NAME';
      end;
      If pos('NICKNAME',sValue) > 0 then
      begin
				section:= 'NICKNAME';
      end;


      If (Copy(sValue,1,Length('NOTE;')) = 'NOTE;') or ((Section = 'NOTE;') and (Copy(sValue,1,1) = '=')) then
      begin
        if (Section = 'NOTE;') and (bEncode) and (Copy(sValue,1,1) = '=') then
        begin
          if bEncode then
            sNotiz:= sNotiz +  Utf8ToString(PansiChar(Ansistring(idDecQuotPrint_Decode.DecodeString(svalue))))
          else
            sNotiz:= sNotiz + svalue;
        end
        else begin
          sNotiz:= StringReplace(sValue,'NOTE;','',[rfReplaceAll]);
          if pos('ENCODING=QUOTED-PRINTABLE:',sNotiz) > 0 then
          begin
            sNotiz:= StringReplace(sNotiz,'CHARSET=UTF-8;','',[rfReplaceall, rfignorecase] );
            sNotiz:= StringReplace(sNotiz,'ENCODING=QUOTED-PRINTABLE:','',[rfReplaceall, rfignorecase] );
            sNotiz:=  Utf8ToString(PansiChar(Ansistring(idDecQuotPrint_Decode.DecodeString(sNotiz))));
            bEncode:= true;
          end;
        end;

				section:= 'NOTE;';
      end;
      If Copy(sValue,1,Length('ORG:')) = 'ORG:' then
      begin
        SFirma:= StringReplace(sValue,'ORG:','',[rfReplaceAll]);
        if pos('ENCODING=QUOTED-PRINTABLE:',SFirma) > 0 then
        begin
          StringReplace(SFirma,'CHARSET=UTF-8','',[rfReplaceall, rfignorecase] );
          StringReplace(SFirma,'ENCODING=QUOTED-PRINTABLE:','',[rfReplaceall, rfignorecase] );
          SFirma:=  Utf8ToString(PansiChar(Ansistring(idDecQuotPrint_Decode.DecodeString(SFirma))));
        end;
				section:= 'ORG:';
      end;
      If Copy(sValue,1,Length('PHOTO;')) =  'PHOTO;' then
      begin
        bmPic:= BitmapFromBase64(StringReplace(svalue,'PHOTO;ENCODING=BASE64;JPEG:','',[rfreplaceAll]));
        bmPic.SaveToFile(sNachname + '_' + sVorname + '.jpeg');
				section:= 'PHOTO;';
      end;
      If pos('PRODID',sValue) > 0 then
      begin
				section:= 'PRODID';
      end;
      If pos('PROFILE:VCARD',sValue) > 0 then
      begin
				section:= 'PROFILE:VCARD';
      end;
      If pos('RELATED',sValue) > 0 then
      begin
				section:= 'RELATED';
      end;
      If pos('REV',sValue) > 0 then
      begin
				section:= 'REV';
      end;
      If pos('ROLE',sValue) > 0 then
      begin
				section:= 'ROLE';
      end;
      If pos('SORT-STRING',sValue) > 0 then
      begin
				section:= 'SORT-STRING';
      end;
      If pos('SOUND',sValue) > 0 then
      begin
				section:= 'SOUND';
      end;
      If pos('SOURCE',sValue) > 0 then
      begin
				section:= 'SOURCE';
      end;
      If (Copy(sValue,1,Length('TITLE')) = 'TITLE') or ((Section = 'TITLE') and (Copy(sValue,1,1) = '='))then
      begin
        if (Section = 'TITLE') and (bEncode) and (Copy(sValue,1,1) = '=') then
        begin
          if bEncode then
            sAbteilung:= sAbteilung +  Utf8ToString(PansiChar(Ansistring(idDecQuotPrint_Decode.DecodeString(svalue))))
          else
            sAbteilung:= sAbteilung + svalue;
        end
        else begin
          sAbteilung:= StringReplace(sValue,'TITLE:','',[rfReplaceAll]);
          sAbteilung:= StringReplace(sAbteilung,'TITLE;','',[rfReplaceAll]);
          if pos('ENCODING=QUOTED-PRINTABLE:',sAbteilung) > 0 then
          begin
            bEncode:= TRUE;
            sAbteilung:= StringReplace(sAbteilung,'CHARSET=UTF-8;','',[rfReplaceall, rfignorecase] );
            sAbteilung:= StringReplace(sAbteilung,'ENCODING=QUOTED-PRINTABLE:','',[rfReplaceall, rfignorecase] );
            sAbteilung:=  Utf8ToString(PansiChar(Ansistring(idDecQuotPrint_Decode.DecodeString(sAbteilung))));
          end;
        end;
				section:= 'TITLE';
      end;
      If pos('TZ',sValue) > 0 then
      begin
				section:= 'TZ';
      end;
      If pos('UID',sValue) > 0 then
      begin
				section:= 'UID';
      end;
      If Copy(sValue,1,Length('URL:')) = 'URL:' then
      begin
        sUrl:= StringReplace(sValue,'URL:','',[rfReplaceAll]);
        if pos('ENCODING=QUOTED-PRINTABLE:',sNotiz) > 0 then
        begin
          StringReplace(sUrl,'CHARSET=UTF-8','',[rfReplaceall, rfignorecase] );
          StringReplace(sUrl,'ENCODING=QUOTED-PRINTABLE:','',[rfReplaceall, rfignorecase] );
          sNotiz:=  Utf8ToString(PansiChar(Ansistring(idDecQuotPrint_Decode.DecodeString(sUrl))));
        end;
				section:= 'URL:';
      end;
      If pos('VERSION',sValue) > 0 then
      begin
				section:= 'VERSION';
      end;
      If pos('BIRTHPLACE',sValue) > 0 then
      begin
				section:= 'BIRTHPLACE';
      end;
      If pos('DEATHDATE',sValue) > 0 then
      begin
				section:= 'DEATHDATE';
      end;
      If pos('EXPERTISE',sValue) > 0 then
      begin
				section:= 'EXPERTISE';
      end;
      If pos('HOBBY',sValue) > 0 then
      begin
				section:= 'HOBBY';
      end;
      If pos('INTEREST',sValue) > 0 then
      begin
				section:= 'INTEREST';
      end;
      If pos('ORG-DIRECTORY',sValue) > 0 then
      begin
				section:= 'ORG-DIRECTORY';
      end;
      If pos('END:VCARD',sValue) > 0 then
      begin
        sFirma:= Stringreplace(sFirma,'�?','ß', [rfReplaceall,rfIgnorecase]);
        sNotiz:= Stringreplace(sNotiz,'��','ö', [rfReplaceall,rfIgnorecase]);

        if Pos(',',sAddresseP) > 0 then
        begin
          sAddresseP:=StringReplace(sAddresseP,';','',[rfReplaceAll]);
          sStrasse:= Copy(sAddresseP,1,Pos(',',sAddresseP)-1);
          sOrt:= Copy(sAddresseP,Length(sStrasse)+2,Length(sAddresseP));
          if Copy(sOrt,1,1) = ' ' then
            sOrt:= Copy(sOrt,2,Length(sOrt));
          sPLZ:= Copy(sOrt,1,Pos(' ',sOrt));
          sOrt:= Copy(sOrt,Pos(' ',sOrt)+1,Length(sOrt));
          if Pos(',',sOrt) > 0  then
            sOrt:= Copy(sOrt,1,Pos(',',sOrt)-1);
          sPLZ:= StringReplace(sPLZ,#$A,'',[rfReplaceAll]);
        end
        else begin
          if Copy(sAddresseP,1,2) = ';;' then
            sAddresseP:= Copy(sAddresseP,3,Length(sAddresseP));
          sStrasseHausnummer:= Copy(sAddresseP,1,Pos(';',sAddresseP)-1);
          sOrt:= Copy(sAddresseP,Pos(';',sAddresseP)+1,Length(sAddresseP));
          sPLZ:= Copy(sOrt,Pos(';',sOrt) + 2,5);
          sOrt:= Copy(sOrt,1,Pos(';',sOrt)-1);
          sHausnummer:= Copy(sStrasseHausnummer,1,Pos(' ',sStrasseHausnummer)-1);
          if Pos(' ',sStrasseHausnummer) > 0 then
            sStrasse:= Copy(sStrasseHausnummer,Length(sHausnummer) +2, Length(sStrasseHausnummer)) + ' ' + sHausnummer
          else
            sStrasse:= sStrasseHausnummer;

        end;

        if Pos(',',sAddresseG) > 0 then
        begin
          sAddresseG:=StringReplace(sAddresseG,';','',[rfReplaceAll]);
          sStrasseG:= Copy(sAddresseG,1,Pos(',',sAddresseG)-1);
          sOrtG:= Copy(sAddresseG,Length(sStrasseG)+2,Length(sAddresseG));
          if Copy(sOrtG,1,1) = ' ' then
            sOrtG:= Copy(sOrtG,2,Length(sOrtG));
          sPLZG:= Copy(sOrtG,1,Pos(' ',sOrtG));
          sOrtG:= Copy(sOrtG,Pos(' ',sOrtG)+1,Length(sOrtG));
          if Pos(',',sOrtG) > 0  then
            sOrtG:= Copy(sOrtG,1,Pos(',',sOrtG)-1);
          sPLZG:= StringReplace(sPLZG,#$A,'',[rfReplaceAll]);
        end
        else begin
          if Copy(sAddresseG,1,1) = ' ' then
            sAddresseG:= Copy(sAddresseG,2,Length(sAddresseG));
          if Copy(sAddresseG,1,2) = ';;' then
            sAddresseG:= Copy(sAddresseG,3,Length(sAddresseG));
          sStrasseHausnummer:= Copy(sAddresseG,1,Pos(';',sAddresseG)-1);
          sOrtG:= Copy(sAddresseG,Pos(';',sAddresseG)+1,Length(sAddresseG));
          sPLZG:= Copy(sOrtG,Pos(';',sOrtG) + 2,5);
          sOrtG:= Copy(sOrtG,1,Pos(';',sOrtG)-1);
          sHausnummer:= Copy(sStrasseHausnummer,1,Pos(' ',sStrasseHausnummer)-1);
          sStrasseG:= Copy(sStrasseHausnummer,Length(sHausnummer) +2, Length(sStrasseHausnummer)) + ' ' + sHausnummer;
        end;

        dm_PCM.qry_Work.SQL.Text:= 'Select Count(*) as Anzahl FROM manager_kontakte Where Nachname = :Nachname and Vorname = :Vorname';
        dm_PCM.qry_Work.ParamByName('Vorname').AsString:= sVorname;
        dm_PCM.qry_Work.ParamByName('Nachname').AsString:= sNachname;
        dm_PCM.qry_Work.open;
        iCount:= dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
        dm_PCM.qry_Work.Close;

        iIDAnrede:= -1;
        iIDGeschlecht:= -1;
        iIDKontaktart:= -1;
        if sAnrede <> '' then
        begin
          dm_PCM.qry_Work.SQL.Text:= 'Select ID FROM manager_Anrede Where Bezeichnung = :Anrede';
          dm_PCM.qry_Work.ParamByName('Anrede').AsString:= sAnrede;
          dm_PCM.qry_Work.open;
          iIDAnrede:= dm_PCM.qry_Work.FieldByName('ID').AsInteger;
          dm_PCM.qry_Work.Close;
        end;

        case iIDAnrede of
        // Herr
        1:
          begin
            iIDGeschlecht:= 1;
          end;
        // Frau
        2:
          begin
            iIDGeschlecht:= 2;
          end;
        // Familie
        3:
          begin

          end;
        // Firma
        4:
          begin
            iIDKontaktart:= 2;
          end;
        // Dr.
        5:
          begin
            iIDKontaktart:= 2;
          end;
        // Gemeinde
        6:
          begin
            iIDKontaktart:= 2;
          end;
        // Restaurant
        7:
          begin
            iIDKontaktart:= 2;
          end;
        // Radio
        8:
          begin
            iIDKontaktart:= 2;
          end;

        end;

        if iCount = 0 then
        begin
          if qry_Kontakte.State in [dsInsert, dsedit] then
            qry_Kontakte.Post;
          qry_Kontakte.Append;
          qry_Kontakte.Insert;
          qry_Kontakte.FieldByName('Vorname').AsString:= sVorname;
          qry_Kontakte.FieldByName('Nachname').AsString:= sNachname;
          qry_Kontakte.FieldByName('Strasse_privat').AsString:= sStrasse;
          qry_Kontakte.FieldByName('PLZ_privat').AsString:= sPlz;
          qry_Kontakte.FieldByName('ORT_privat').AsString:= sOrt;
          qry_Kontakte.FieldByName('Strasse_Ges').AsString:= sStrasseG;
          qry_Kontakte.FieldByName('PLZ_Ges').AsString:= sPlzG;
          qry_Kontakte.FieldByName('ORT_Ges').AsString:= sOrtG;
          if iIDAnrede > -1 then
            qry_Kontakte.FieldByName('ID_Anrede').AsInteger:= iIDAnrede;
          if iIDGeschlecht > -1 then
            qry_Kontakte.FieldByName('ID_Geschlecht').AsInteger:= iIDGeschlecht;
          if iIDKontaktart > -1 then
            qry_Kontakte.FieldByName('ID_Kontaktart').AsInteger:= iIDKontaktart;
          qry_Kontakte.FieldByName('Firma').AsString:= SFirma;
          qry_Kontakte.FieldByName('Abteilung_Ges').AsString:= sAbteilung;
          qry_Kontakte.FieldByName('E_Mail_Privat').AsString:= sEmailP;
          qry_Kontakte.FieldByName('E_Mail_Privat1').AsString:= sEmailp2;
          qry_Kontakte.FieldByName('E_Mail_Ges').AsString:= sEmailG;
          qry_Kontakte.FieldByName('Telefon_Privat').AsString:= sTelP;
          qry_Kontakte.FieldByName('Handy_privat').AsString:= sTelM;
          qry_Kontakte.FieldByName('Zentrale_Ges').AsString:= sTelH;
          qry_Kontakte.FieldByName('Telefon_Ges').AsString:= sTelG;
          qry_Kontakte.FieldByName('Info').AsString:= sNotiz;
          qry_Kontakte.FieldByName('Internet_Ges').asString:=sUrl;

          if (sGeburtstag <> '') then
          begin
            iJahr:= StrToIntDef(Copy(sGeburtstag,1,4),1900);
            iMonat:= StrToIntDef(Copy(sGeburtstag,6,2),1);
            iTag :=StrToIntDef(Copy(sGeburtstag,9,2),1);
            qry_Kontakte.FieldByName('Geburtsdatum').AsDateTime:= EncodeDate(iJahr,iMonat,iTag);
          end;
          if FileExists(sNachname + '_' + sVorname + '.jpeg') then
          begin
            qry_KontakteBild.LoadFromFile(sNachname + '_' + sVorname + '.jpeg');
            DeleteFile(PChar(sNachname + '_' + sVorname + '.jpeg'));
          end;
          qry_Kontakte.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
        end
        else begin
          dm_PCM.qry_Work.SQL.Text:= 'Select ID FROM manager_kontakte Where Nachname = :Nachname and Vorname = :Vorname';
          dm_PCM.qry_Work.ParamByName('Vorname').AsString:= sVorname;
          dm_PCM.qry_Work.ParamByName('Nachname').AsString:= sNachname;
          dm_PCM.qry_Work.open;
          iIDKontakt:= dm_PCM.qry_Work.FieldByName('ID').AsInteger;
          dm_PCM.qry_Work.Close;
          qry_Kontakte.Locate('ID',iIDKontakt,[]);
          qry_Kontakte.Edit;
          qry_Kontakte.FieldByName('Vorname').AsString:= sVorname;
          qry_Kontakte.FieldByName('Nachname').AsString:= sNachname;
          qry_Kontakte.FieldByName('Strasse_privat').AsString:= sStrasse;
          qry_Kontakte.FieldByName('PLZ_privat').AsString:= sPlz;
          qry_Kontakte.FieldByName('ORT_privat').AsString:= sOrt;
          qry_Kontakte.FieldByName('Strasse_Ges').AsString:= sStrasseG;
          qry_Kontakte.FieldByName('PLZ_Ges').AsString:= sPlzG;
          qry_Kontakte.FieldByName('ORT_Ges').AsString:= sOrtG;
          if iIDAnrede > -1 then
            qry_Kontakte.FieldByName('ID_Anrede').AsInteger:= iIDAnrede;
          if iIDGeschlecht > -1 then
            qry_Kontakte.FieldByName('ID_Geschlecht').AsInteger:= iIDGeschlecht;
          if iIDKontaktart > -1 then
            qry_Kontakte.FieldByName('ID_Kontaktart').AsInteger:= iIDKontaktart;

          qry_Kontakte.FieldByName('Firma').AsString:= SFirma;
          qry_Kontakte.FieldByName('Abteilung_Ges').AsString:= sAbteilung;
          qry_Kontakte.FieldByName('E_Mail_Privat').AsString:= sEmailP;
          qry_Kontakte.FieldByName('E_Mail_Privat1').AsString:= sEmailp2;
          qry_Kontakte.FieldByName('E_Mail_Ges').AsString:= sEmailG;
          qry_Kontakte.FieldByName('Telefon_Privat').AsString:= sTelP;
          qry_Kontakte.FieldByName('Handy_privat').AsString:= sTelM;
          qry_Kontakte.FieldByName('Zentrale_Ges').AsString:= sTelH;
          qry_Kontakte.FieldByName('Telefon_Ges').AsString:= sTelG;
          qry_Kontakte.FieldByName('Info').AsString:= sNotiz;
          qry_Kontakte.FieldByName('Internet_Ges').asString:=sUrl;
          if FileExists(sNachname + '_' + sVorname + '.jpeg') then
          begin
            qry_KontakteBild.LoadFromFile(sNachname + '_' + sVorname + '.jpeg');
            DeleteFile(Pchar(sNachname + '_' + sVorname + '.jpeg'));
          end;
          qry_Kontakte.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
          if (sGeburtstag <> '')  then
          begin
            iJahr:= StrToIntDef(Copy(sGeburtstag,1,4),1900);
            iMonat:= StrToIntDef(Copy(sGeburtstag,6,2),1);
            iTag :=StrToIntDef(Copy(sGeburtstag,9,2),1);
            qry_Kontakte.FieldByName('Geburtsdatum').AsDateTime:= EncodeDate(iJahr,iMonat,iTag);
          end;
          qry_Kontakte.Post;
        end;
        qry_Kontakte.Refresh;
        dm_PCM.qry_Work.SQL.Text:= 'SELECT IFnull(ID,0) AS ID FROM manager_kontakte Where Vorname= :Vorname and Nachname = :Nachname';
        dm_PCM.qry_Work.ParamByname('Vorname').AsString:= sVorname;
        dm_PCM.qry_Work.ParamByname('Nachname').AsString:= sNachname;
        dm_PCM.qry_Work.open;
        iID_kontakt:= dm_PCM.qry_Work.FieldByName('ID').AsInteger;
        dm_PCM.qry_Work.Close;

        if (sGeburtstag <> '') and (iID_Kontakt > 0) then
        begin

          ijahr:= StrToInt(Copy(sGeburtstag,1,4));
          iMonat:= StrToInt(Copy(sGeburtstag,6,2));
          iTag:= StrToInt(Copy(sGeburtstag,9,4));
          dm_PCM.qry_Work.SQL.Text:= 'DELETE FROM manager_kalender WHERE Caption = :Caption';
          dm_PCM.qry_Work.ParamByName('Caption').AsString:= 'Geburtstag von ' + sVorname + ' ' + sNachname;
          dm_PCM.qry_Work.ExecSQL;
          dm_PCM.qry_Work.SQL.Text:='Insert into manager_Kalender (wiederholung_text,EventType,Caption,Location,Message,'
                        + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
                        + 'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,Kalendername,CompleteDay,ID_ADR_Wurzel,ID_Ansprechpartner,Typ,Aufgabenstatus,ID_IC_Prioritaeten,ID_IC_AufgabenArten,GesendetAm,Erledigungsgrad,zeitformat,AufgabenDauer) Values ('
                        + ':wiederholung_text,:Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
                        + ':ReminderDate,:ReminderMinutes,:Color,:FontColor,:ID,:Kalender,:ganzerTag,:ID_ADR_Wurzel,:ID_Ansprechpartner,2,0,1,2,Now(),0,0,1440)';
          ReminderDate:= DateTimeToStr(IncMinute(StrToDateTime(DateToStr(EncodeDate(iJahr,iMonat,iTag))  + ' 00:00:00'),360 *-1));
          ReminderDate:= Copy(ReminderDate,7,4) + '-' + Copy(ReminderDate,4,2) + '-' + Copy(ReminderDate,1,2) + ' ' + Copy(ReminderDate,12,8);
          with ARecurrenceInfo do
          begin
            Count :=  -1;
            DayNumber := iTag;
            DayType := cxdtDay;
            Finish := StrToDate('29.12.1899');
            OccurDays := [dTuesday];
            Periodicity := iMonat;
            Recurrence :=  cxreyearly;
            Start := EncodeDate(iJahr,iMonat,iTag);
            YearPeriodicity := 1;
          end;
          sRecurrenceInfo := String(cxRecurrenceInfoDataToString(ARecurrenceInfo));
          sWiederholungText:= 'FREQ=YEARLY;BYMONTHDAY='+IntToStr(iTag)+';BYMONTH='+IntToStr(iMonat);
          Start:= DateToStr(EncodeDate(iJahr,iMonat,iTag))  + ' 00:00:00';
          Start := Copy(Start,7,4) + '-' + Copy(Start,4,2) + '-'
                 + Copy(Start,1,2) + ' ' + Copy(Start,12,8);

          Finish:= DateTimeToStr(IncDay(StrToDateTime(DateToStr(EncodeDate(iJahr,iMonat,iTag))  + ' 00:00:00'),1));
          Finish:= Copy(Finish,7,4) + '-' + Copy(Finish,4,2) + '-'
                 + Copy(Finish,1,2) + ' ' + Copy(Finish,12,8);
          dm_PCM.qry_Work.ParamByName('Eventtype').ASinteger:= 1;
          dm_PCM.qry_Work.ParamByName('SUMMARY').AsString:= 'Geburtstag von ' + sVorname + ' ' + sNachname;
          dm_PCM.qry_Work.ParamByName('Location').AsString:= 'Sonstiges';
          dm_PCM.qry_Work.ParamByName('Beschreibung').AsString:= 'Geburtstag von ' + sVorname + ' ' + sNachname;
          dm_PCM.qry_Work.ParamByName('DateBegin').AsString:= Start;
          dm_PCM.qry_Work.ParamByName('DateEnd').AsString:= Finish;
          dm_PCM.qry_Work.ParamByName('Options').AsInteger:= 6;
          dm_PCM.qry_Work.ParamByName('Reminder').AsString:= 'true';
          dm_PCM.qry_Work.ParamByName('ReminderDate').AsString:= ReminderDate;
          dm_PCM.qry_Work.ParamByName('ReminderMinutes').AsInteger:= 360;
          dm_PCM.qry_Work.ParamByName('RecurrenceInfo').AsString:= sRecurrenceInfo;
          dm_PCM.qry_Work.ParamByName('Color').AsString:= IntToStr(11645283);
          dm_PCM.qry_Work.ParamByName('FontColor').AsString:= IntToStr(clBlack);
          dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
          dm_PCM.qry_Work.ParamByName('Kalender').AsString:= 'Geburtstag';
          dm_PCM.qry_Work.ParamByName('ganzerTag').AsString:= 'true';;
          dm_PCM.qry_Work.ParamByName('ID_ADR_Wurzel').AsInteger:= iID_Kontakt;
          dm_PCM.qry_Work.ParamByName('ID_Ansprechpartner').AsInteger:= iID_Kontakt;
          dm_PCM.qry_work.ParamByName('wiederholung_text').AsString:= swiederholungtext;
          dm_PCM.qry_Work.ExecSQL;
          dm_PCM.qry_Work.close;
        end;

        iADRTyp:= -1;
        sHausnummer:= '';
        sStrasseHausnummer:= '';
        sStrasse:= '';
        sOrt:= '';
        sPLZ:= '';
        sStrasseG:= '';
        sOrtG:= '';
        sPLZG:= '';
        sAbteilung:='';
        sFirma:= '';
        sAddresse:= '';
        sAddresseG:= '';
        sAddresseP:= '';
        sName:= '';
        sVorname:= '';
        sNachname:= '';
        section:= '';
        sEmailP:= '';
        sEmailP2:= '';
        sEmailG:= '';
        sTelP:= '';
        sTelM:= '';
        sTelG:= '';
        sTelH:= '';
        sNotiz:='';
        sURL:='';
        sGeburtstag:='';
        sAnrede:= '';
        bEncode:= false;
      end;
    end;
    CloseWaitform;
    qry_Kontakte.Close;
    qry_Kontakte.Open;
  end;
end;
procedure Tfrm_Contact.ppmbtn_ExportVCFClick(Sender: TObject);
  function FormatEncode(AValue: string) : String;
  begin
    Result:= AValue;
    Result:=StringReplace(Result,'ß','=C3=9F',[rfReplaceAll]);
    Result:=StringReplace(Result,'ü','=C3=BC',[rfReplaceAll]);
    Result:=StringReplace(Result,'ö','=C3=B6',[rfReplaceAll]);
    Result:=StringReplace(Result,'ä','=C3=A4=20' ,[rfReplaceAll]);
    Result:=StringReplace(Result,'Ü','=C3=9C',[rfReplaceAll]);
    Result:=StringReplace(Result,'Ä','=C3=84',[rfReplaceAll]);
    Result:=StringReplace(Result,'Ö','=C3=96',[rfReplaceAll]);
    Result:=StringReplace(Result,'É','=C3=89',[rfReplaceAll]);
    Result:=StringReplace(Result,'È','=C3=88',[rfReplaceAll]);
    Result:=StringReplace(Result,'Ê','=C3=8A',[rfReplaceAll]);
    Result:=StringReplace(Result,'é','=C3=A9',[rfReplaceAll]);
    Result:=StringReplace(Result,'è','=C3=A8',[rfReplaceAll]);
    Result:=StringReplace(Result,'ê','=C3=AA',[rfReplaceAll]);

  end;
  function Base64FromBitmap(Bitmap: TPicture): Ansistring;
  var
    bytstrmInput: TBytesStream;
    strstrmOutput: TStringStream;
  begin
    bytstrmInput := TBytesStream.Create;
    try
      Bitmap.SaveToStream(bytstrmInput);
      bytstrmInput.Position := 0;
      strstrmOutput := TStringStream.Create('', TEncoding.ASCII);
      try
        Soap.EncdDecd.EncodeStream(bytstrmInput, strstrmOutput);
        Result := AnsiString(ReplaceStr(strstrmOutput.DataString,#$D#$A,''));
      finally
        strstrmOutput.Free;
      end;
    finally
      bytstrmInput.Free;
    end;
  end;
var
  sFilename,sAnrede: String;
  slExport: TStringlist;
  bmPicture: TPicture;
begin
  if dlgSave_VCF.Execute then
    sFilename:= dlgSave_VCF.FileName;
  if Pos('.vcf',sFilename) = 0 then
    sFilename:= sFilename + '.vcf';
  if sFilename <> '' then
  begin
    slExport:= TStringlist.Create;
    qry_Kontakte.Open;
    qry_Kontakte.First;
    while not qry_Kontakte.Eof do
    begin
      slExport.add('BEGIN:VCARD');
      slExport.add('VERSION:2.1');
      if qry_Kontakte.FieldByName('ID_Anrede').AsString = '1' then sAnrede:= 'Herr ';
      if qry_Kontakte.FieldByName('ID_Anrede').AsString = '2' then sAnrede:= 'Frau ';
      slExport.add('N;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:' + FormatEncode(qry_Kontakte.FieldByName('Nachname').AsString + ';' + qry_Kontakte.FieldByName('Vorname').AsString + ';;'+ sAnrede +';'));
      slExport.add('FN;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:'+ FormatEncode(sAnrede + qry_Kontakte.FieldByName('Vorname').AsString + ' ' + qry_Kontakte.FieldByName('Nachname').AsString ));
      slExport.add('TEL;HOME;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:'+ FormatEncode(qry_Kontakte.FieldByName('Telefon_Privat').AsString));
      slExport.add('TEL;HOME;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:'+ FormatEncode(qry_Kontakte.FieldByName('Telefon_Privat1').AsString));
      slExport.add('TEL;CELL;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:'+ FormatEncode(qry_Kontakte.FieldByName('Handy_Privat').AsString));
      slExport.add('TEL;PREF;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:'+ FormatEncode(qry_Kontakte.FieldByName('Zentrale_Ges').AsString));
      slExport.add('TEL;WORK;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:'+ qry_Kontakte.FieldByName('Telefon_ges').AsString);

      if ((qry_Kontakte.FieldByName('Strasse_Ges').AsString <> '') or (qry_Kontakte.FieldByName('PLZ_Ges').AsString <> '') or (qry_Kontakte.FieldByName('Ort_Ges').AsString <> '')) and (qry_Kontakte.FieldByName('Strasse_Ges').AsString <> ' ') then
        slExport.add('ADR;WORK;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:;;'+ FormatEncode(qry_Kontakte.FieldByName('Strasse_Ges').AsString + ', ' + qry_Kontakte.FieldByName('PLZ_Ges').AsString + ' ' + qry_Kontakte.FieldByName('Ort_Ges').AsString + ';;;;'));
      if (qry_Kontakte.FieldByName('Strasse_Privat').AsString <> '') or (qry_Kontakte.FieldByName('PLZ_Privat').AsString <> '') or (qry_Kontakte.FieldByName('Ort_Privat').AsString <> '') then
        slExport.add('ADR;HOME;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:;;'+ FormatEncode(qry_Kontakte.FieldByName('Strasse_Privat').AsString + ', ' + qry_Kontakte.FieldByName('PLZ_Privat').AsString + ' ' + qry_Kontakte.FieldByName('Ort_Privat').AsString + ';;;;'));

      if qry_Kontakte.FieldByName('Geburtsdatum').AsString <> '' then
        slExport.add('BDAY:' + Copy(qry_Kontakte.FieldByName('Geburtsdatum').AsString,7,4) + '-' + Copy(qry_Kontakte.FieldByName('Geburtsdatum').AsString,4,2) + '-' + Copy(qry_Kontakte.FieldByName('Geburtsdatum').AsString,1,2));
      slExport.add('EMAIL;HOME;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:' + FormatEncode(qry_Kontakte.FieldByName('E_Mail_Privat').AsString));
      slExport.add('EMAIL;HOME;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:' + FormatEncode(qry_Kontakte.FieldByName('E_Mail_Privat1').AsString));
      slExport.add('EMAIL;Work;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:' + FormatEncode(qry_Kontakte.FieldByName('E_Mail_Ges').AsString));
      slExport.add('NOTE;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:' + FormatEncode(qry_Kontakte.FieldByName('Info').AsString));
      slExport.add('ORG;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:'+ FormatEncode(qry_Kontakte.FieldByName('Firma').AsString + ';' + qry_Kontakte.FieldByName('Abteilung_Ges').AsString));
      slExport.add('TITLE;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:'+ FormatEncode(qry_Kontakte.FieldByName('Funktion_Ges').AsString));
      slExport.add('URL;CHARSET=ANSI;ENCODING=QUOTED-PRINTABLE:'+ FormatEncode(qry_Kontakte.FieldByName('Internet_Ges').AsString));

      try
        qry_KontakteBild.SaveToFile(qry_Kontakte.FieldByName('Nachname').AsString + '_' + qry_Kontakte.FieldByName('Vorname').AsString + '.jpeg');
        if FileExists(qry_Kontakte.FieldByName('Nachname').AsString + '_' + qry_Kontakte.FieldByName('Vorname').AsString + '.jpeg') then
        begin
          bmPicture:= TPicture.Create;
          bmPicture.LoadFromFile(qry_Kontakte.FieldByName('Nachname').AsString + '_' + qry_Kontakte.FieldByName('Vorname').AsString + '.jpeg');
          slExport.add('PHOTO;ENCODING=BASE64;JPEG:'+ String(Base64FromBitmap(bmPicture)));
          DeleteFile(Pchar(qry_Kontakte.FieldByName('Nachname').AsString + '_' + qry_Kontakte.FieldByName('Vorname').AsString + '.jpeg'));
          bmPicture.Free;
        end;
      except
      end;

      //PHOTO
      slExport.add('END:VCARD');
      qry_Kontakte.Next;
      sAnrede:= '';
    end;
    slExport.SaveToFile(sFilename,Tencoding.GetEncoding(1256));
    slExport.Free;
    MessageDlg(rs_PCMManager_KontakteinVCard, mtInformation, [mbOk], 0);
  end;
end;
procedure Tfrm_Contact.ppmbtn_NachExcelexportierenClick(Sender: TObject);
begin
  if dlgsave_Personal.Execute then
  begin
    ExportGridToExcel(dlgsave_Personal.FileName, grd_Suche);
    MessageDlg(rs_PCMManager_GridExport1 + dlgsave_Personal.FileName +  rs_PCMManager_GridExport2, mtInformation, [mbOk], 0);
  end;
end;
procedure Tfrm_Contact.ppmbtn_ExportOutlookClick(Sender: TObject);
const
  olFolderContacts = $0000000A;
var
  NameSpace     : Variant;
  ContactsRoot,Contacts      : Variant;
  OutlookContact : Variant;
  iCount: integer;
  i: integer;
begin
  try
    Outlook.connect;
   except
    on ep:system.sysutils.Exception do
    begin
      Application.Terminate;
      exit;
    end;
  end;
  try
    NameSpace := Outlook.GetNameSpace('MAPI');
  except
    on ep:system.sysutils.Exception do
    begin
      Application.Terminate;
      exit;
    end;
  end;
  try
    contactsRoot := NameSpace.GetDefaultFolder(olFolderContacts);
  except
    on ep:system.sysutils.Exception do
    begin
      Application.Terminate;
      exit;
    end;
  end;
  i := 1;
  for iCount := 1 to ContactsRoot.Items.Count do
  begin
    Application.ProcessMessages;
    Contacts := ContactsRoot.Items.Item(i);
    if Contacts.Categories = 'PCM_Kontakt' then
    begin
      Contacts.delete;
    end
    else begin
      i := i + 1;
    end;
  end;
  qry_Kontakte.Open;
  qry_Kontakte.First;
  while not qry_Kontakte.eof do
  begin
    OutlookContact := ContactsRoot.Items.Add;
    if qry_Kontakte.FieldByName('ID_Anrede').AsString <> '' then
    begin
      qry_work.SQL.Text:= 'Select Bezeichnung From manager_anrede Where ID = :ID';
      qry_work.ParamByName('ID').AsInteger:= qry_Kontakte.FieldByName('ID_Anrede').AsInteger;
      qry_work.open;
      OutlookContact.Title := qry_Work.FieldByName('Bezeichnung').AsString;
    end;
    OutlookContact.FirstName	:= qry_Kontakte.FieldByName('Vorname').AsString;
    OutlookContact.LastName	:= qry_Kontakte.FieldByName('Nachname').AsString;
    if not qry_KontakteBild.IsNull then
    begin
      qry_KontakteBild.SaveToFile(ExtractFilePath(ParamStr(0))  + qry_Kontakte.FieldByName('Nachname').AsString + '_' + qry_Kontakte.FieldByName('Vorname').AsString + '.jpeg');
      OutlookContact.AddPicture(ExtractFilePath(ParamStr(0))  +  qry_Kontakte.FieldByName('Nachname').AsString + '_' + qry_Kontakte.FieldByName('Vorname').AsString + '.jpeg');
    end;
    OutlookContact.HomeAddressStreet:= qry_Kontakte.FieldByName('Strasse_Privat').AsString;
    OutlookContact.HomeAddressPostalCode:= qry_Kontakte.FieldByName('PLZ_Privat').AsString;
    OutlookContact.HomeAddressCity :=qry_Kontakte.FieldByName('Ort_Privat').AsString;
    if qry_Kontakte.FieldByName('Ort_Privat').AsString <> '' then
      OutlookContact.HomeAddressCountry:= 'Deutschland';
    OutlookContact.HomeTelephoneNumber := qry_Kontakte.FieldByName('Telefon_Privat').AsString;
    OutlookContact.Home2TelephoneNumber	:= qry_Kontakte.FieldByName('Telefon_Privat1').AsString;
    OutlookContact.MobileTelephoneNumber	:= qry_Kontakte.FieldByName('Handy_Privat').AsString;
    if qry_Kontakte.FieldByName('Geburtsdatum').AsString <> '' then
      OutlookContact.Birthday:= qry_Kontakte.FieldByName('Geburtsdatum').AsDateTime;
    OutlookContact.CompanyMainTelephoneNumber := qry_Kontakte.FieldByName('Zentrale_Ges').AsString;
    OutlookContact.Business2TelephoneNumber	:= qry_Kontakte.FieldByName('Telefon_Ges').AsString;
    OutlookContact.BusinessTelephoneNumber := qry_Kontakte.FieldByName('Handy_Ges').AsString;
    OutlookContact.Email1Address := qry_Kontakte.FieldByName('E_Mail_Privat').AsString;
    OutlookContact.BusinessAddressStreet:= qry_Kontakte.FieldByName('Strasse_Ges').AsString;
    OutlookContact.BusinessAddressPostalCode:= qry_Kontakte.FieldByName('PLZ_Ges').AsString;
    OutlookContact.BusinessAddressCity :=qry_Kontakte.FieldByName('Ort_Ges').AsString;
    if qry_Kontakte.FieldByName('Ort_Ges').AsString <> '' then
      OutlookContact.BusinessAddressCountry:= 'Deutschland';
    OutlookContact.Email2Address := qry_Kontakte.FieldByName('E_Mail_Zentral').AsString;
    OutlookContact.Email3Address	:= qry_Kontakte.FieldByName('E_Mail_Ges').AsString;
    OutlookContact.JobTitle	:= qry_Kontakte.FieldByName('Funktion_Ges').AsString;
    OutlookContact.Department	:=qry_Kontakte.FieldByName('Abteilung_Ges').AsString;
    OutlookContact.CompanyName :=qry_Kontakte.FieldByName('Firma').AsString;
    if qry_Kontakte.FieldByName('Internet_Privat').AsString <> '' then
      OutlookContact.PersonalHomePage:= qry_Kontakte.FieldByName('Internet_Privat').AsString + ';' + qry_Kontakte.FieldByName('Internet_Ges').AsString
    else
      OutlookContact.PersonalHomePage:=qry_Kontakte.FieldByName('Internet_Ges').AsString;
    OutlookContact.Categories:= 'PCM_Kontakt';
    OutlookContact.Save;
    qry_Kontakte.Next;
  end;
	Outlook.Disconnect;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Formfunktions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktions}
procedure Tfrm_Contact.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Contact.FormDestroy(Sender: TObject);
begin
  SetGridViews(False);
end;
procedure Tfrm_Contact.FormShow(Sender: TObject);
  procedure OpenData;
  begin
    dm_PCM.qry_Contact_Anrede.Open;
    dm_PCM.qry_Contact_Kontaktart.Open;
    dm_PCM.qry_Contact_Geschlecht.Open;
    dm_PCM.qry_Contact_Familienstand.Open;
    dm_PCM.qry_Contact_Staatsangehoerigkeit.Open;
    dm_PCM.qry_Contact_Konfession.Open;
    dm_PCM.qry_Contact_Land.Open;
    qry_Kontakte.SQL.Text:= 'SELECT * From Manager_kontakte Where ID_Benutzer = :ID_Benutzer order by Vorname,nachname asc';
    qry_Kontakte.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    grdDBTblView_SucheID_Anrede.Caption:= rs_PCMManager_Anrede;
    grdDBTblView_SucheVorname.Caption:= rs_PCMManager_Vorname1;
    grdDBTblView_SucheNachname.Caption:= rs_PCMManager_Nachname1;
    grdDBTblView_SucheGeburtsname.Caption:= rs_PCMManager_Geburtsname;
    grdDBTblView_SucheGeburtsland.Caption:= rs_PCMManager_Geburtsland;
    grdDBTblView_SucheZusatz.Caption:= rs_PCMManager_Zusatz;
    grdDBTblView_SucheBild.Caption:= rs_PCMManager_Bild;
    grdDBTblView_SucheStrasse_Privat.Caption:= rs_PCMManager_StrassePrivat;
    grdDBTblView_SuchePLZ_Privat.Caption:= rs_PCMManager_PlzPrivat;
    grdDBTblView_SucheOrt_Privat.Caption:= rs_PCMManager_OrtPrivat;
    grdDBTblView_SucheID_Kontaktart.Caption:= rs_PCMManager_Kontaktart;
    grdDBTblView_SucheTelefon_Privat.Caption:= rs_PCMManager_TelefonPrivat;
    grdDBTblView_SucheTelefon_Privat1.Caption:= rs_PCMManager_TelefonPrivat1;
    grdDBTblView_SucheHandy_privat.Caption:= rs_PCMManager_HandyPrivat;
    grdDBTblView_SucheE_Mail_Privat.Caption:= rs_PCMManager_MailPrivat;
    grdDBTblView_SucheE_Mail_Privat1.Caption:= rs_PCMManager_MailPrivat1;
    grdDBTblView_SucheInternet_Privat.Caption:= rs_PCMManager_InternetPrivat;
    grdDBTblView_SucheGeburtsdatum.Caption:= rs_PCMManager_Geburtsdatum;
    grdDBTblView_SucheID_Geschlecht.Caption:= rs_PCMManager_Geschlecht;
    grdDBTblView_SucheID_Familienstand.Caption:= rs_PCMManager_Familienstand;
    grdDBTblView_SucheID_Staatsangehoerigkeit.Caption:= rs_PCMManager_Staatsangehoerigkeit;
    grdDBTblView_SucheID_Konfession.Caption:= rs_PCMManager_Konfession;
    grdDBTblView_SucheInfo.Caption:= rs_PCMManager_Info;
    grdDBTblView_SucheFirma.Caption:= rs_PCMManager_Firma;
    grdDBTblView_SucheStrasse_Ges.Caption:= rs_PCMManager_StrasseGes;
    grdDBTblView_SuchePLZ_Ges.Caption:= rs_PCMManager_PLZGes;
    grdDBTblView_SucheOrt_Ges.Caption:= rs_PCMManager_OrtGes;
    grdDBTblView_SucheAbteilung_Ges.Caption:= rs_PCMManager_Abteilung;
    grdDBTblView_SucheFunktion_Ges.Caption:= rs_PCMManager_Funktion;
    grdDBTblView_SucheZentrale_Ges.Caption:= rs_PCMManager_Zentrale;
    grdDBTblView_SucheTelefon_Ges.Caption:= rs_PCMManager_Durchwahl;
    grdDBTblView_SucheHandy_Ges.Caption:= rs_PCMManager_HandyGes;
    grdDBTblView_SucheE_Mail_Ges.Caption:= rs_PCMManager_MailGes;
    grdDBTblView_SucheInternet_Ges.Caption:= rs_PCMManager_InternetGes;
  end;
  procedure InitializeRights;
  begin
    // Toolbar
    btn_KontaktNew.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    btn_KontaktSave.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    btn_KontaktCancel.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    btn_KontaktDelete.Enabled:= dm_PCM.iKontakte > SetReadWrite;
    btn_KontaktFirst.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    btn_KontaktPrev.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    btn_KontaktNext.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    btn_KontaktLast.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    ppmbtn_VCFImportieren.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    ppmbtn_CSVImportiern.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    ppmbtn_ExportVCF.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    // Editfelder
    cmbbx_Anrede.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktName.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktNachname.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktZusatz.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktStrasse.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktPLZ.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktORT.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktTelefon1.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktTelefon2.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktHandy.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_Email1.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_Email2.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktInternet.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    cmbbx_KontaktArt.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    dtEdt_KontaktZusatzGeburtsdatum.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    lucmbbx_KontaktZusatzGeschlecht.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    lucmbbx_KontaktZusatzFamilienstand.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    lucmbbx_Staatsanghoerigkeit.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    lucmbbx_konfession.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    mem_Sonstige.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    img_Picture.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktGeschaeftlichFirma.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktGeschaeftlichStrasse.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktGeschaeftlichPLZ.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktGeschaeftlichORt.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktGeschaeftlichAbteilung.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktGeschaeftlichFunktion.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktGeschaeftlichTelefonZentrale.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktGeschaeftlichTelefonDurchwahl.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_GeschaeftlichHandy.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktGeschaeftlichEMail.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontaktGeschaeftlichInternet.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontakteSonstigesFacebook.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontakteSonstigesSkype.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    edt_KontakteSonstigesTeams.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    btn_EditStaatsangehoerigkeit.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
    btn_EditKonfession.Enabled:= dm_PCM.iKontakte >= SetReadWrite;
  end;
begin
  cmbbx_KontaktSucheArt.clear;
  dm_PCM.qry_Work.SQL.Text:= 'SELECT ID, Bezeichnung FROM manager_kontaktart order by Bezeichnung asc';
  dm_PCM.qry_Work.open;
  dm_PCM.qry_Work.First;
  while not dm_PCM.qry_Work.EOF do begin
    cmbbx_KontaktSucheArt.Properties.Items.AddObject(dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString, TObject(dm_PCM.qry_Work.FieldByName('ID').AsInteger));
    dm_PCM.qry_Work.Next;
  end;
  dm_PCM.qry_Work.Close;

  cmbbx_KontaktAnrede.clear;
  dm_PCM.qry_Work.SQL.Text:= 'SELECT ID, Bezeichnung FROM manager_Anrede order by Bezeichnung asc';
  dm_PCM.qry_Work.open;
  dm_PCM.qry_Work.First;
  while not dm_PCM.qry_Work.EOF do begin
    cmbbx_KontaktAnrede.Properties.Items.AddObject(dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString, TObject(dm_PCM.qry_Work.FieldByName('ID').AsInteger));
    dm_PCM.qry_Work.Next;
  end;
  dm_PCM.qry_Work.Close;
  OpenData;
  InitializeRights;
  SetButtons;
  btn_KontaktSave.Enabled:= false;
  btn_KontaktCancel.Enabled:= false;
  btn_KontaktDelete.Enabled:= false;
  btn_KontaktFirst.Enabled:= false;
  btn_KontaktLast.Enabled:= false;
  btn_KontaktPrev.Enabled:= false;
  btn_KontaktNext.Enabled:= false;
  btn_KontaktImport.Enabled := true;
  lagrp_PersonalTab.ItemIndex:= 0;
  lagrp_MitarbeiterInfoDetails.ItemIndex:= 0;
	SetGridViews(True);
  grdDBTblView_SucheVorname.SortIndex:=0;
  grdDBTblView_SucheNachname.SortIndex:=1;
end;
{$EndRegion}
end.



