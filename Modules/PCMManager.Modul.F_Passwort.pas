unit PCMManager.Modul.F_Passwort;

interface

uses
  {$Region uses}
  cxButtonEdit,
  cxButtons,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
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
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxLookupEdit,
  cxMaskEdit,
  cxNavigator,
  cxPC,
  cxStyles,
  cxTextEdit,
  Data.DB,
  dxBar,
  dxBarBuiltInMenu,
  dxCoreGraphics,
  dxDateRanges,
  dxLayoutContainer,
  dxLayoutControl,
  dxLayoutControlAdapters,
  dxLayoutcxEditAdapters,
  dxScrollbarAnnotations,
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
  PCM.Functions,
  System.AnsiStrings,
  System.Classes,
  System.SysUtils,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Menus,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion uses}
type
  {$Region type}
  Tfrm_password = class(TForm)
    brdckCtrl_Password: TdxBarDockControl;
    brdckCtrl_Programm: TdxBarDockControl;
    brdckCtrl_SerialDetail: TdxBarDockControl;
    brmgr_Passwort: TdxBarManager;
    btn_PasswortCancel: TdxBarLargeButton;
    btn_PasswortDelete: TdxBarLargeButton;
    btn_PasswortNew: TdxBarLargeButton;
    btn_PasswortSave: TdxBarLargeButton;
    btn_SerialCancel: TdxBarLargeButton;
    btn_SerialDelete: TdxBarLargeButton;
    btn_SerialNew: TdxBarLargeButton;
    btn_SerialSave: TdxBarLargeButton;
    btn_SerialSCancel: TdxBarLargeButton;
    btn_SerialSDelete: TdxBarLargeButton;
    btn_SerialSNew: TdxBarLargeButton;
    btn_SerialSSave: TdxBarLargeButton;
    cmbbx_PWTyp: TcxDBLookupComboBox;
    cmbbx_SearchPW: TcxComboBox;
    ds_PWD: TDataSource;
    ds_Serial: TDataSource;
    ds_Serial_keys: TDataSource;
    edt_Passwort_APPPort: TcxDBTextEdit;
    edt_Passwort_APPSSL: TcxDBTextEdit;
    edt_Passwort_Banking: TcxDBButtonEdit;
    edt_Passwort_Benutzer: TcxDBTextEdit;
    edt_Passwort_Bezeichnung: TcxDBTextEdit;
    edt_Passwort_EmailInboxPort: TcxDBTextEdit;
    edt_Passwort_EmailInboxServer: TcxDBTextEdit;
    edt_Passwort_EmailInboxSSL: TcxDBTextEdit;
    edt_Passwort_EmailOutboxPort: TcxDBTextEdit;
    edt_Passwort_EmailOutboxServer: TcxDBTextEdit;
    edt_Passwort_EmailOutboxSSL: TcxDBTextEdit;
    edt_Passwort_Link: TcxDBTextEdit;
    edt_Passwort_Passwort: TcxDBButtonEdit;
    edt_Passwort_VPN: TcxDBTextEdit;
    edt_Passwort_VPN_APP: TcxDBTextEdit;
    edt_Passwort_WLAN: TcxDBTextEdit;
    edt_Programs_Bez: TcxDBTextEdit;
    edt_searchPW: TcxButtonEdit;
    edt_SerialsBez: TcxDBTextEdit;
    edt_SerialsSerial: TcxDBTextEdit;
    grd_Passwort: TcxGrid;
    grd_Programs: TcxGrid;
    grd_ProgramsDBTableView1: TcxGridDBTableView;
    grd_ProgramsDBTableView1Serial: TcxGridDBColumn;
    grd_ProgramsDBTableView1USer: TcxGridDBColumn;
    grd_SerialDetail: TcxGrid;
    grdDBTblView_SerialDetail: TcxGridDBTableView;
    grdDBTblView_SerialDetailSerial: TcxGridDBColumn;
    grdDBTblView_SerialDetailUSer: TcxGridDBColumn;
    grdlvl_Passwort: TcxGridLevel;
    grdlvl_Programs: TcxGridLevel;
    grdLvl_SerialDetail: TcxGridLevel;
    lactrl_PassSerial: TdxLayoutControl;
    lactrl_PassSerialGroup_Root: TdxLayoutGroup;
    lagrp_PassSerialTab: TdxLayoutGroup;
    lagrp_Passwords: TdxLayoutGroup;
    lagrp_PasswordsApp: TdxLayoutGroup;
    lagrp_Serialssuche: TdxLayoutGroup;
    lagrp_PasswordsDetails: TdxLayoutGroup;
    lagrp_PasswordsDetails1: TdxLayoutGroup;
    lagrp_PasswordsDetailsLeft: TdxLayoutGroup;
    lagrp_PasswordsDetailsRight: TdxLayoutGroup;
    lagrp_PasswordsEmailAus: TdxLayoutGroup;
    lagrp_PasswordsEmailEin: TdxLayoutGroup;
    lagrp_PasswordsPage: TdxLayoutGroup;
    lagrp_PWDSearch: TdxLayoutGroup;
    lagrp_Serials: TdxLayoutGroup;
    lagrp_SRLProgram: TdxLayoutGroup;
    lagrp_SRLProgramDetail: TdxLayoutGroup;
    lagrp_SRLSerial: TdxLayoutGroup;
    lagrp_SRLSerialDetail: TdxLayoutGroup;
    laitm_PWDAPPPort: TdxLayoutItem;
    laitm_PWDAPPSSL: TdxLayoutItem;
    laitm_PWDAPPVPN: TdxLayoutItem;
    laitm_PWDBankingPin: TdxLayoutItem;
    laitm_PWDBar: TdxLayoutItem;
    laitm_PWDBenutzer: TdxLayoutItem;
    laitm_PWDBezeichnung: TdxLayoutItem;
    laitm_PWDEmailAusPort: TdxLayoutItem;
    laitm_PWDEmailAusServer: TdxLayoutItem;
    laitm_PWDEmailAusSSL: TdxLayoutItem;
    laitm_PWDEmailEinPort: TdxLayoutItem;
    laitm_PWDEmailEinServer: TdxLayoutItem;
    laitm_PWDEmailEinSSL: TdxLayoutItem;
    laitm_PWDGrid: TdxLayoutItem;
    laitm_PWDLink: TdxLayoutItem;
    laitm_PWDPassword: TdxLayoutItem;
    laitm_PWDSearchBezeichnung: TdxLayoutItem;
    laitm_PWDSearchTyp: TdxLayoutItem;
    laitm_PWDTyp: TdxLayoutItem;
    laitm_PWDVPNSharedSec: TdxLayoutItem;
    laitm_PWDWLAN: TdxLayoutItem;
    laitm_SRLBenutzer: TdxLayoutItem;
    laitm_SRLBezeichnung: TdxLayoutItem;
    laitm_SRLProgamm: TdxLayoutItem;
    laitm_SRLProgBar: TdxLayoutItem;
    laitm_SRLProgGrid: TdxLayoutItem;
    laitm_SRLSerial: TdxLayoutItem;
    laitm_SRLSerialBar: TdxLayoutItem;
    laitm_SRLSerialGrid: TdxLayoutItem;
    lucbx_Programs_Typ: TcxDBLookupComboBox;
    qry_PWD: TFDQuery;
    qry_Serial: TFDQuery;
    qry_Serial_keys: TFDQuery;
    tb_passwort: TdxBar;
    tb_Serials: TdxBar;
    tb_SerialsDetail: TdxBar;
    tv_Passwort: TcxGridDBTableView;
    tv_PasswortAPP_IP: TcxGridDBColumn;
    tv_PasswortAPP_Port: TcxGridDBColumn;
    tv_PasswortAPP_Verschluesselung: TcxGridDBColumn;
    tv_PasswortBezeichnung: TcxGridDBColumn;
    tv_Passwortlink: TcxGridDBColumn;
    tv_PasswortMAIL_PostausgangsPort: TcxGridDBColumn;
    tv_PasswortMAIL_Postausgangsserver: TcxGridDBColumn;
    tv_PasswortMAIL_PostausgangsVerschluesselung: TcxGridDBColumn;
    tv_PasswortMAIL_PosteingangsPort: TcxGridDBColumn;
    tv_PasswortMAIL_Posteingangsserver: TcxGridDBColumn;
    tv_PasswortMAIL_PosteingangsVerschluesselung: TcxGridDBColumn;
    tv_Passwortpassword: TcxGridDBColumn;
    tv_Passwortuser: TcxGridDBColumn;
    tv_PasswortVPN_SharedSecret: TcxGridDBColumn;
    tv_Programs: TcxGridDBTableView;
    tv_ProgramsAPP: TcxGridDBColumn;
    tv_ProgramsiD_typ: TcxGridDBColumn;
    tv_PasswortID_Typ: TcxGridDBColumn;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    edt_SucheSer: TcxButtonEdit;
    cmbbx_serialsTyp: TcxComboBox;
    procedure btn_PasswortCancelClick(Sender: TObject);
    procedure btn_PasswortDeleteClick(Sender: TObject);
    procedure btn_PasswortNewClick(Sender: TObject);
    procedure btn_PasswortSaveClick(Sender: TObject);
    procedure btn_SerialCancelClick(Sender: TObject);
    procedure btn_SerialDeleteClick(Sender: TObject);
    procedure btn_SerialNewClick(Sender: TObject);
    procedure btn_SerialSaveClick(Sender: TObject);
    procedure btn_SerialSCancelClick(Sender: TObject);
    procedure btn_SerialSDeleteClick(Sender: TObject);
    procedure btn_SerialSNewClick(Sender: TObject);
    procedure btn_SerialSSaveClick(Sender: TObject);
    procedure cmbbx_PWTypPropertiesEditValueChanged(Sender: TObject);
    procedure cmbbx_SearchPWPropertiesChange(Sender: TObject);
    procedure edt_Passwort_BankingPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_Passwort_PasswortPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_searchPWPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_searchPWPropertiesChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pc_passwoerterClick(Sender: TObject);
    procedure qry_SerialAfterScroll(DataSet: TDataSet);
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure qry_PWDAfterScroll(DataSet: TDataSet);
    procedure edt_SucheSerPropertiesChange(Sender: TObject);
    procedure edt_SucheSerPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cmbbx_serialsTypPropertiesChange(Sender: TObject);
  private
    { Private-Deklarationen }
    bNew: boolean;
    bol_PWDShow: boolean;
    SaveGridViewPWD,SaveGridViewSer,SaveGridViewSerDet: TSavedGridView;
    procedure ChangeItems(AValue: string);  overload;
    procedure ChangeItems(AValue: integer);  overload;
    procedure SetButtons;
    procedure SetGridViews(Show:boolean);
  public
    { Public-Deklarationen }
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_password: Tfrm_password;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Data,
  PCM.Strings;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
procedure Tfrm_password.ChangeItems(AValue: string);
begin
  case AnsiIndexStr(AValue,['APP Arbeit','APP Mobil','APP PCM','Banking','E-Mail','Internet Arbeit','Internet Privat','VPN Arbeit','VPN Privat','W-Lan / Router','Windows Arbeit','Windows Privat']) of
  0: // App Arbeit
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= false;
      lagrp_PasswordsApp.Visible:= false;
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;
    end;
  1: // App Mobil
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= false;
      lagrp_PasswordsApp.Visible:= false;
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;
    end;
  2: // APP PCM
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= false;
      lagrp_PasswordsApp.Visible:= true;
      laitm_PWDAPPVPN.CaptionOptions.Text:= 'APP IP-Adresse:';
      laitm_PWDAPPPort.Visible:= true;
      laitm_PWDAPPSSL.Visible:= true;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;
    end;
  3: // Banking
    begin
      laitm_PWDBankingPin.Visible:= true;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= false;
      lagrp_PasswordsApp.Visible:= false;
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;
    end;
  4: // E-Mail
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= false;
      lagrp_PasswordsApp.Visible:= false;
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= true;
      lagrp_PasswordsEmailAus.Visible:= true;
    end;
  5: // Internet Arbeit
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= false;
      lagrp_PasswordsApp.Visible:= false;
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;
    end;
  6: // Internet Privat
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= false;
      lagrp_PasswordsApp.Visible:= false;
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;
    end;
  7: // VPN Arbeit
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= true;
      lagrp_PasswordsApp.Visible:= true;
      laitm_PWDAPPVPN.CaptionOptions.Text:= 'VPN IP-Adresse:';
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;
    end;
  8: // VPN Privat
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= true;
      lagrp_PasswordsApp.Visible:= true;
      laitm_PWDAPPVPN.CaptionOptions.Text:= 'VPN IP-Adresse:';
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;
    end;
  9: // W-Lan / Router
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= true;
      laitm_PWDVPNSharedSec.Visible:= false;
      lagrp_PasswordsApp.Visible:= false;
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;
    end;
  10: // Windows Privat
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= false;
      lagrp_PasswordsApp.Visible:= false;
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;

    end;
  11: // Windows Privat
    begin
      laitm_PWDBankingPin.Visible:= false;
      laitm_PWDWLAN.Visible:= false;
      laitm_PWDVPNSharedSec.Visible:= false;
      lagrp_PasswordsApp.Visible:= false;
      laitm_PWDAPPPort.Visible:= false;
      laitm_PWDAPPSSL.Visible:= false;
      lagrp_PasswordsEmailEin.Visible:= false;
      lagrp_PasswordsEmailAus.Visible:= false;
    end;
  end;
end;
procedure Tfrm_password.ChangeItems(AValue: integer);
begin
  dm_pcm.qry_work2.SQL.Text:= 'SELECT Bezeichnung From manager_passwoerter_typ Where ID =:ID';
  dm_pcm.qry_work2.ParamByName('ID').AsInteger:= AValue;
  dm_pcm.qry_work2.open;
  ChangeItems(dm_pcm.qry_work2.FieldByName('Bezeichnung').asString);
  dm_pcm.qry_work2.close;
end;
procedure Tfrm_password.SetButtons;
begin
  // Passwörter
  if dm_PCM.iPassword >= 2 then
  begin
    btn_PasswortSave.Enabled := qry_PWD.State in [dsInsert, dsEdit];
    btn_PasswortCancel.Enabled := qry_PWD.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iKontakte = 3 then
  begin
    btn_PasswortDelete.Enabled := (not qry_PWD.Eof) and not (qry_PWD.State in [dsInsert, dsEdit]);
  end;
  // Serials
  if dm_PCM.iSerials >= 2 then
  begin
    btn_SerialSave.Enabled := qry_Serial.State in [dsInsert, dsEdit];
    btn_SerialCancel.Enabled := qry_Serial.State in [dsInsert, dsEdit];
    btn_SerialSSave.Enabled := qry_Serial_keys.State in [dsInsert, dsEdit];
    btn_SerialSCancel.Enabled := qry_Serial_keys.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iSerials = 3 then
  begin
    btn_SerialDelete.Enabled := (not qry_Serial.Eof) and not (qry_Serial.State in [dsInsert, dsEdit]);
    btn_SerialSDelete.Enabled := (not qry_Serial_keys.Eof) and not (qry_Serial_keys.State in [dsInsert, dsEdit]);
  end;
end;
procedure Tfrm_password.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  Setbuttons;
end;
procedure Tfrm_password.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewPWD := TSavedGridView.Create(GV_Passwort,dm_PCM.iIDBenutzerPCM, tv_Passwort);
    SaveGridViewPWD.LoadView;
    SaveGridViewSer := TSavedGridView.Create(GV_Serial,dm_PCM.iIDBenutzerPCM, tv_Programs);
    SaveGridViewSer.LoadView;
    SaveGridViewSerDet := TSavedGridView.Create(GV_SerialDet,dm_PCM.iIDBenutzerPCM, grdDBTblView_SerialDetail);
    SaveGridViewSerDet.LoadView;
  end
  else begin
    SaveGridViewPWD.SaveView(0);
    SaveGridViewPWD.Free;
    SaveGridViewSer.SaveView(0);
    SaveGridViewSer.Free;
    SaveGridViewSerDet.SaveView(0);
    SaveGridViewSerDet.Free;
  end;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// ButtonEditCBXfunktionen                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttonfunktionen}
procedure Tfrm_password.btn_PasswortCancelClick(Sender: TObject);
begin
  bnew:= False;
  qry_pwd.Cancel;
end;
procedure Tfrm_password.btn_PasswortDeleteClick(Sender: TObject);
begin
  bNew:= false;
  if qry_PWD.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Passwort ' + qry_PWD.FieldByName('Bezeichnung').asString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qry_PWD.Delete;
  end;
end;
procedure Tfrm_password.btn_PasswortNewClick(Sender: TObject);
begin
   if qry_PWD.State in [dsInsert, dsedit] then
    qry_PWD.Post;
  qry_PWD.Append;
  qry_PWD.Insert;
  qry_PWD.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  qry_PWD.FieldByName('Encryptet_PWD').asString:= 'False';
  qry_PWD.FieldByName('Encryptet_Pin').asString:= 'False';

  qry_PWD.Filtered:= true;
  if not edt_Passwort_Bezeichnung.Enabled then
  begin
    edt_Passwort_Bezeichnung.Enabled:= true;
    edt_Passwort_Benutzer.Enabled:= true;
    edt_Passwort_Passwort.Enabled:= true;
    edt_Passwort_Link.Enabled:= true;
    edt_Passwort_VPN.Enabled:= true;
    edt_Passwort_VPN_APP.Enabled:= true;
    cmbbx_PWTyp.Enabled:= true;
    edt_Passwort_APPPort.Enabled:= true;
    edt_Passwort_APPSSL.Enabled:= true;
    edt_Passwort_EmailInboxServer.Enabled:= true;
    edt_Passwort_EmailInboxPort.Enabled:= true;
    edt_Passwort_EmailInboxSSL.Enabled:= true;
    edt_Passwort_EmailOutboxServer.Enabled:= true;
    edt_Passwort_EmailOutboxPort.Enabled:= true;
    edt_Passwort_EmailOutboxSSL.Enabled:= true;
  end;
  edt_Passwort_Bezeichnung.SetFocus;
  bNew:= true;
end;
procedure Tfrm_password.btn_PasswortSaveClick(Sender: TObject);
begin
  if qry_PWD.State in [dsInsert, dsEdit] then
  begin
    edt_Passwort_Bezeichnung.PostEditValue;
    edt_Passwort_Benutzer.PostEditValue;
    if (edt_Passwort_Passwort.EditingText <> '') and (not qry_PWD.FieldByName('Encryptet_PWD').AsBoolean) then
    begin
      edt_Passwort_Passwort.EditValue:= EnDeCrypt(edt_Passwort_Passwort.EditingText,True);
      qry_PWD.FieldByName('Encryptet_PWD').asString:= 'True';
    end
    else begin
      if edt_Passwort_Passwort.EditingText <> qry_PWD.FieldByName('Password').AsString  then
      begin
        edt_Passwort_Passwort.EditValue:= EnDeCrypt(edt_Passwort_Passwort.EditingText,True);
      end;
    end;

    if (edt_Passwort_Banking.EditingText <> '') and (not qry_PWD.FieldByName('Encryptet_Pin').AsBoolean) then
    begin
      edt_Passwort_Banking.EditValue:= EnDeCrypt(edt_Passwort_Banking.EditingText,True);
      qry_PWD.FieldByName('Encryptet_PIN').asString:= 'True';
    end
    else begin
      if (edt_Passwort_Banking.EditingText <> qry_PWD.FieldByName('BankingPin').AsString) then
      begin
        edt_Passwort_Banking.EditValue:= EnDeCrypt(edt_Passwort_Banking.EditingText,True);
      end;
    end;

    edt_Passwort_Link.PostEditValue;
    qry_PWD.Post;
    if bnew then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neuer Passwort ' + qry_PWD.FieldByName('Bezeichnung').asString + ' wurde angelegt';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Passwort ' + qry_PWD.FieldByName('Bezeichnung').asString + ' wurde geändert';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end;
    bNew:= false;
  end;
end;
procedure Tfrm_password.btn_SerialCancelClick(Sender: TObject);
begin
  bNew:= false;
  qry_Serial.Cancel;
end;
procedure Tfrm_password.btn_SerialDeleteClick(Sender: TObject);
begin
  if qry_Serial.FieldByName('ID').asInteger > 0 then
  begin
    bNew:= false;
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Serial ' + qry_PWD.FieldByName('App').asString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qry_Serial.Delete;

  end;
end;
procedure Tfrm_password.btn_SerialNewClick(Sender: TObject);
begin
   if qry_Serial.State in [dsInsert, dsedit] then
    qry_Serial.Post;
  qry_Serial.Append;
  qry_Serial.Insert;
  qry_Serial.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  qry_Serial_keys.Filter:= 'ID_Serial = ' + qry_Serial.FieldByName('ID').AsString;
  qry_Serial_keys.Filtered:= true;
  if not edt_Programs_Bez.Enabled then
  begin
    edt_Programs_Bez.Enabled:= true;
    lucbx_Programs_Typ.Enabled:= true;
  end;
  edt_Programs_Bez.SetFocus;
  bNew:= true;
end;
procedure Tfrm_password.btn_SerialSaveClick(Sender: TObject);
begin
  if qry_Serial.State in [dsInsert, dsEdit] then
  begin
    edt_Programs_Bez.PostEditValue;
    qry_Serial.Post;
    if bnew then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neue Serial ' + qry_Serial.FieldByName('App').asString + ' wurde angelegt';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Serial ' + qry_Serial.FieldByName('App').asString + ' wurde geändert';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end;
    bNew:= false;
  end;
end;
procedure Tfrm_password.btn_SerialSCancelClick(Sender: TObject);
begin
  qry_Serial_keys.Cancel;
end;
procedure Tfrm_password.btn_SerialSDeleteClick(Sender: TObject);
begin
  if qry_Serial_keys.FieldByName('ID').AsInteger > 0 then
  begin
    qry_Serial_keys.Delete;
  end;
end;
procedure Tfrm_password.btn_SerialSNewClick(Sender: TObject);
begin
   if qry_Serial_keys.State in [dsInsert, dsedit] then
    qry_Serial_keys.Post;
  qry_Serial_keys.Append;
  qry_Serial_keys.Insert;
  qry_Serial_keys.FieldByName('ID_Serial').AsInteger:= qry_Serial.FieldByName('ID').AsInteger;

  if not edt_SerialsBez.enabled then
  begin
    edt_SerialsBez.enabled:= true;
    edt_SerialsSerial.enabled:= true;
  end;
  edt_SerialsBez.SetFocus;
end;
procedure Tfrm_password.btn_SerialSSaveClick(Sender: TObject);
begin
  if qry_Serial_keys.State in [dsInsert, dsEdit] then
  begin
    edt_SerialsBez.PostEditValue;
    qry_Serial_keys.Post;
  end;
end;
procedure Tfrm_password.cmbbx_PWTypPropertiesEditValueChanged(Sender: TObject);
begin
  ChangeItems(cmbbx_PWTyp.Text);
end;
procedure Tfrm_password.cmbbx_SearchPWPropertiesChange(Sender: TObject);
begin
  if cmbbx_SearchPW.ItemIndex = 0 then
  begin
    qry_Pwd.Filtered:= false;
  end
  else begin
    qry_Pwd.Filter:= 'ID_Typ = ' + IntToStr(Integer(cmbbx_SearchPW.Properties.Items.Objects[cmbbx_SearchPW.ItemIndex]));
    qry_Pwd.Filtered:= true;
  end;
end;
procedure Tfrm_password.cmbbx_serialsTypPropertiesChange(Sender: TObject);
begin
  if cmbbx_serialsTyp.ItemIndex = 0 then
  begin
    qry_Serial.Filtered:= false;
  end
  else begin
    qry_Serial.Filter:= 'ID_Typ = ' + IntToStr(Integer(cmbbx_serialsTyp.Properties.Items.Objects[cmbbx_serialsTyp.ItemIndex]));
    qry_Serial.Filtered:= true;
  end;
end;
procedure Tfrm_password.edt_SucheSerPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edt_sucheSER.Text:= '';
  qry_Serial.Filtered:= false;
end;
procedure Tfrm_password.edt_SucheSerPropertiesChange(Sender: TObject);
begin
  if Length(edt_sucheSER.text) = 0 then
  begin
    qry_Serial.Filtered:= false;
  end
  else begin
    qry_Serial.Filter:= 'lower(App) like lower(' + QuotedStr('%' + edt_sucheSER.text + '%' ) + ')';
    qry_Serial.Filtered:= true;
  end;
end;
procedure Tfrm_password.edt_Passwort_BankingPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if qry_PWD.FieldByName('BankingPin').AsString <> '' then
    var UserInput := InputBox('Banking-Pin für ' + qry_PWD.FieldByName('Bezeichnung').AsString, 'Banking-Pin:', EnDecrypt(qry_PWD.FieldByName('BankingPin').AsString,False));
end;
procedure Tfrm_password.edt_Passwort_PasswortPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if qry_PWD.FieldByName('Password').AsString <> '' then
    var UserInput := InputBox('Passwort für ' + qry_PWD.FieldByName('Bezeichnung').AsString, 'Passwort:', EnDecrypt(qry_PWD.FieldByName('Password').AsString,False));
end;
procedure Tfrm_password.edt_searchPWPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edt_searchPW.Text:= '';
  qry_PWD.Filtered:= false;
end;
procedure Tfrm_password.edt_searchPWPropertiesChange(Sender: TObject);
begin
  if Length(edt_SearchPW.text) = 0 then
  begin
    qry_PWD.Filtered:= false;
  end
  else begin
    qry_PWD.Filter:= 'lower(Bezeichnung) like lower(' + QuotedStr('%' + edt_SearchPW.text + '%' ) + ')';
    qry_PWD.Filtered:= true;
  end;
end;
procedure Tfrm_password.pc_passwoerterClick(Sender: TObject);
begin
  if lagrp_PassSerialTab.ItemIndex = 0 then
  begin
    bol_PWDShow:= false;
    edt_Passwort_Passwort.Properties.EchoMode:= eemPassword;
  end;
end;
procedure Tfrm_password.qry_PWDAfterScroll(DataSet: TDataSet);
begin
  ChangeItems(qry_PWD.FieldByName('ID_Typ').asInteger);
  Setbuttons;
end;
procedure Tfrm_password.qry_SerialAfterScroll(DataSet: TDataSet);
var
  iID_Serial: integer;
begin
  SetButtons;
  iID_Serial:= qry_Serial.FieldByName('ID').AsInteger;
  qry_Serial_keys.Filter:= 'ID_Serial = ' + IntToStr(iID_Serial);
  qry_Serial_keys.Filtered:= true;
end;
{$ENdRegion Buttonfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktionen}
procedure Tfrm_password.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_password.FormDestroy(Sender: TObject);
begin
  SetGridViews(False);
end;
procedure Tfrm_password.FormShow(Sender: TObject);
  procedure InitializeRights;
  begin
    if dm_PCM.iPassword >= 2 then
    begin
      // Passwörter
      btn_PasswortSave.Enabled := qry_PWD.State in [dsInsert, dsEdit];
      btn_PasswortCancel.Enabled := qry_PWD.State in [dsInsert, dsEdit];
    end;
    if dm_PCM.iPassword = 3 then
    begin
      // Passwörter
      btn_PasswortDelete.Enabled := (not qry_PWD.Eof) and not (qry_PWD.State in [dsInsert, dsEdit]);
    end;
    // AE_Serials
    if dm_PCM.iSerials >= 2 then
    begin
      // Programme
      btn_SerialSave.Enabled := qry_Serial.State in [dsInsert, dsEdit];
      btn_SerialCancel.Enabled := qry_Serial.State in [dsInsert, dsEdit];
      //Serials
      btn_SerialSSave.Enabled := qry_Serial_keys.State in [dsInsert, dsEdit];
      btn_SerialSCancel.Enabled := qry_Serial_keys.State in [dsInsert, dsEdit];
    end;
    if dm_PCM.iSerials = 3 then
    begin
      // Programme
      btn_SerialDelete.Enabled := (not qry_Serial.Eof) and not (qry_Serial.State in [dsInsert, dsEdit]);
      //Serials
      btn_SerialSDelete.Enabled := (not qry_Serial_keys.Eof) and not (qry_Serial_keys.State in [dsInsert, dsEdit]);
    end;
    if qry_PWD.RecordCount = 0 then
    begin
      edt_Passwort_Bezeichnung.Enabled:= False;
      edt_Passwort_Benutzer.Enabled:= False;
      edt_Passwort_Passwort.Enabled:= False;
      edt_Passwort_Link.Enabled:= False;
      edt_Passwort_VPN.Enabled:= False;
      edt_Passwort_VPN_APP.Enabled:= False;
      cmbbx_PWTyp.Enabled:= False;
      edt_Passwort_APPPort.Enabled:= False;
      edt_Passwort_APPSSL.Enabled:= False;
      edt_Passwort_EmailInboxServer.Enabled:= False;
      edt_Passwort_EmailInboxPort.Enabled:= False;
      edt_Passwort_EmailInboxSSL.Enabled:= False;
      edt_Passwort_EmailOutboxServer.Enabled:= False;
      edt_Passwort_EmailOutboxPort.Enabled:= False;
      edt_Passwort_EmailOutboxSSL.Enabled:= False;
    end
    else begin
      if dm_PCM.iPassword >= 2 then
      begin
        edt_Passwort_Bezeichnung.Enabled:= true;
        edt_Passwort_Benutzer.Enabled:= true;
        edt_Passwort_Passwort.Enabled:= true;
        edt_Passwort_Link.Enabled:= true;
        edt_Passwort_VPN.Enabled:= true;
        edt_Passwort_VPN_APP.Enabled:= true;
        cmbbx_PWTyp.Enabled:= true;
        edt_Passwort_APPPort.Enabled:= true;
        edt_Passwort_APPSSL.Enabled:= true;
        edt_Passwort_EmailInboxServer.Enabled:= true;
        edt_Passwort_EmailInboxPort.Enabled:= true;
        edt_Passwort_EmailInboxSSL.Enabled:= true;
        edt_Passwort_EmailOutboxServer.Enabled:= true;
        edt_Passwort_EmailOutboxPort.Enabled:= true;
        edt_Passwort_EmailOutboxSSL.Enabled:= true;
      end;
    end;
    if qry_Serial.RecordCount = 0  then
    begin
      edt_Programs_Bez.enabled:= false;
      lucbx_Programs_Typ.enabled:= false;
    end
    else begin
      if dm_PCM.iSerials >= 2 then
      begin
        edt_Programs_Bez.enabled:= true;
        lucbx_Programs_Typ.enabled:= true;
      end;
    end;
    if qry_Serial_keys.RecordCount = 0 then
    begin
      edt_SerialsBez.Enabled:= False;
      edt_SerialsSerial.Enabled:= False;
      if qry_Serial.RecordCount = 0  then
      begin
        btn_SerialSNew.Enabled:= false
      end
      else begin
        if dm_PCM.iSerials >= 2 then
        begin
          btn_SerialSNew.Enabled:= true;
        end;
      end;
    end
    else begin
      if qry_Serial.RecordCount = 0  then
      begin
        edt_SerialsBez.Enabled:= False;
        edt_SerialsSerial.Enabled:= False;
        btn_SerialSNew.Enabled:= false
      end
      else begin
        if dm_PCM.iSerials >= 2 then
        begin
          edt_SerialsBez.Enabled:= true;
          edt_SerialsSerial.Enabled:= true;
          btn_SerialSNew.Enabled:= true;
        end;
      end;
    end;
  end;
  procedure OpenData;
  begin
    qry_PWD.Open;
    dm_PCM.qry_PasswortSerial_PWDTyp.Open;
    qry_Serial.Open;
    qry_Serial_keys.Open;
    dm_PCM.qry_PasswortSerial_SerialTyp.Open;
    qry_PWD.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_PWD.Filtered:= true;
    qry_Serial.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_Serial.Filtered:= true;
    tv_ProgramsAPP.Caption := rs_PCM_Bezeichnung;
    tv_ProgramsiD_typ.Caption := rs_PCMManager_SerialTyp;
    grdDBTblView_SerialDetailUSer.Caption:=  rs_PCMBenutzerverwaltung_Benutzer;
    grdDBTblView_SerialDetailSerial.Caption:= rs_PCMManager_Serial;
    tv_PasswortBezeichnung.Caption:= rs_PCM_Bezeichnung;
    tv_Passwortlink.Caption:= rs_PCMManager_Link;
    tv_Passwortuser.Caption:= rs_PCMBenutzerverwaltung_Benutzer;
    tv_Passwortpassword.Caption:= rs_PCM_Passwort;
  end;
begin
  case dm_PCM.iModulTab of
  1: lagrp_PassSerialTab.ItemIndex:= 0;
  2: lagrp_PassSerialTab.ItemIndex:= 1;
  end;
  OpenData;
  InitializeRights;
  SetButtons;
  SetGridViews(true);
  cmbbx_SearchPW.Properties.Items.Clear;
  cmbbx_SearchPW.Properties.Items.Add('');
  dm_pcm.qry_work.SQL.Text:= 'SELECT ID,Bezeichnung From manager_passwoerter_typ order by Bezeichnung';
  dm_pcm.qry_work.open;
  while not dm_pcm.qry_work.Eof do
  begin
    cmbbx_SearchPW.Properties.Items.AddObject(dm_pcm.qry_work.FieldByName('Bezeichnung').AsString, TObject(dm_pcm.qry_work.FieldByName('ID').AsInteger));
    dm_pcm.qry_work.Next;
  end;
  dm_pcm.qry_work.close;

  cmbbx_serialsTyp.Properties.Items.Clear;
  cmbbx_serialsTyp.Properties.Items.Add('');
  dm_pcm.qry_work.SQL.Text:= 'SELECT ID,Bezeichnung From manager_serials_typ order by Bezeichnung';
  dm_pcm.qry_work.open;
  while not dm_pcm.qry_work.Eof do
  begin
    cmbbx_serialsTyp.Properties.Items.AddObject(dm_pcm.qry_work.FieldByName('Bezeichnung').AsString, TObject(dm_pcm.qry_work.FieldByName('ID').AsInteger));
    dm_pcm.qry_work.Next;
  end;
  dm_pcm.qry_work.close;
end;
{$EndRegion Formfunktionen}
end.
