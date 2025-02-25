unit PCMManager.Modul.F_Passwort;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxTextEdit, cxDBLookupComboBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxBar, cxClasses, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxLabel, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  cxGroupBox, cxPC,PCM.Functions, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutControl;

type
  Tfrm_password = class(TForm)
    grd_Passwort: TcxGrid;
    tv_Passwort: TcxGridDBTableView;
    tv_PasswortBezeichnung: TcxGridDBColumn;
    tv_Passwortlink: TcxGridDBColumn;
    tv_Passwortuser: TcxGridDBColumn;
    tv_Passwortpassword: TcxGridDBColumn;
    tv_PasswortVPN_SharedSecret: TcxGridDBColumn;
    tv_PasswortAPP_IP: TcxGridDBColumn;
    tv_PasswortAPP_Port: TcxGridDBColumn;
    tv_PasswortAPP_Verschluesselung: TcxGridDBColumn;
    tv_PasswortMAIL_Posteingangsserver: TcxGridDBColumn;
    tv_PasswortMAIL_PosteingangsPort: TcxGridDBColumn;
    tv_PasswortMAIL_PosteingangsVerschluesselung: TcxGridDBColumn;
    tv_PasswortMAIL_Postausgangsserver: TcxGridDBColumn;
    tv_PasswortMAIL_PostausgangsPort: TcxGridDBColumn;
    tv_PasswortMAIL_PostausgangsVerschluesselung: TcxGridDBColumn;
    grdlvl_Passwort: TcxGridLevel;
    btn_Passwort_PasswortShow: TcxButton;
    cbx_PWTyp: TcxDBLookupComboBox;
    edt_Passwort_APPPort: TcxDBTextEdit;
    edt_Passwort_APPSSL: TcxDBTextEdit;
    edt_Passwort_Benutzer: TcxDBTextEdit;
    edt_Passwort_Bezeichnung: TcxDBTextEdit;
    edt_Passwort_EmailInboxPort: TcxDBTextEdit;
    edt_Passwort_EmailInboxServer: TcxDBTextEdit;
    edt_Passwort_EmailInboxSSL: TcxDBTextEdit;
    edt_Passwort_EmailOutboxPort: TcxDBTextEdit;
    edt_Passwort_EmailOutboxServer: TcxDBTextEdit;
    edt_Passwort_EmailOutboxSSL: TcxDBTextEdit;
    edt_Passwort_Link: TcxDBTextEdit;
    edt_Passwort_Passwort: TcxDBTextEdit;
    edt_Passwort_VPN: TcxDBTextEdit;
    edt_Passwort_VPN_APP: TcxDBTextEdit;
    grd_Programs: TcxGrid;
    tv_Programs: TcxGridDBTableView;
    tv_ProgramsAPP: TcxGridDBColumn;
    tv_ProgramsiD_typ: TcxGridDBColumn;
    grdlvl_Programs: TcxGridLevel;
    edt_Programs_Bez: TcxDBTextEdit;
    lucbx_Programs_Typ: TcxDBLookupComboBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1USer: TcxGridDBColumn;
    cxGridDBTableView1Serial: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    edt_SerialsBez: TcxDBTextEdit;
    edt_SerialsSerial: TcxDBTextEdit;
    brmgr_Passwort: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarDockControl2: TdxBarDockControl;
    dxBarDockControl3: TdxBarDockControl;
    qry_Serial: TFDQuery;
    qry_Serial_keys: TFDQuery;
    dsSerial_keys: TDataSource;
    dsSerial: TDataSource;
    qry_PWD: TFDQuery;
    dsPWD: TDataSource;
    tb_passwort: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    btn_PasswortNew: TdxBarLargeButton;
    btn_PasswortDelete: TdxBarLargeButton;
    btn_PasswortCancel: TdxBarLargeButton;
    btn_PasswortSave: TdxBarLargeButton;
    btn_SerialNew: TdxBarLargeButton;
    btn_SerialSave: TdxBarLargeButton;
    btn_SerialCancel: TdxBarLargeButton;
    btn_SerialDelete: TdxBarLargeButton;
    btn_SerialSNew: TdxBarLargeButton;
    btn_SerialSSave: TdxBarLargeButton;
    btn_SerialSCancel: TdxBarLargeButton;
    btn_SerialSDelete: TdxBarLargeButton;
    grd_ProgramsDBTableView1: TcxGridDBTableView;
    grd_ProgramsDBTableView1USer: TcxGridDBColumn;
    grd_ProgramsDBTableView1Serial: TcxGridDBColumn;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    procedure FormShow(Sender: TObject);
    procedure qry_SerialAfterScroll(DataSet: TDataSet);
    procedure btn_Passwort_PasswortShowClick(Sender: TObject);
    procedure btn_PasswortCancelClick(Sender: TObject);
    procedure btn_PasswortDeleteClick(Sender: TObject);
    procedure btn_PasswortNewClick(Sender: TObject);
    procedure btn_PasswortSaveClick(Sender: TObject);
    procedure pc_passwoerterClick(Sender: TObject);
    procedure btn_SerialNewClick(Sender: TObject);
    procedure btn_SerialDeleteClick(Sender: TObject);
    procedure btn_SerialSaveClick(Sender: TObject);
    procedure btn_SerialCancelClick(Sender: TObject);
    procedure btn_SerialSNewClick(Sender: TObject);
    procedure btn_SerialSSaveClick(Sender: TObject);
    procedure btn_SerialSDeleteClick(Sender: TObject);
    procedure btn_SerialSCancelClick(Sender: TObject);
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private-Deklarationen }
    bNew: boolean;
    bol_PWDShow: boolean;
    SaveGridViewPWD,SaveGridViewSer,SaveGridViewSerDet: TSavedGridView;
    procedure SetGridViews(Show:boolean);
    procedure InitializeRights;
    procedure SetButtons;
    procedure OpenData;
  public
    { Public-Deklarationen }
  end;

var
  frm_password: Tfrm_password;

implementation

{$R *.dfm}

uses  PCM.Data,PCM.Strings;

procedure Tfrm_password.OpenData;
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
  cxGridDBTableView1USer.Caption:=  rs_PCMBenutzerverwaltung_Benutzer;
  cxGridDBTableView1Serial.Caption:= rs_PCMManager_Serial;
  tv_PasswortBezeichnung.Caption:= rs_PCM_Bezeichnung;
  tv_Passwortlink.Caption:= rs_PCMManager_Link;
  tv_Passwortuser.Caption:= rs_PCMBenutzerverwaltung_Benutzer;
  tv_Passwortpassword.Caption:= rs_PCM_Passwort;
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
procedure Tfrm_password.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  Setbuttons;
end;
procedure Tfrm_password.pc_passwoerterClick(Sender: TObject);
begin
  if dxLayoutGroup2.ItemIndex = 0 then
  begin
    bol_PWDShow:= false;
    edt_Passwort_Passwort.Properties.EchoMode:= eemPassword;
  end;
end;
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

  qry_PWD.Filtered:= true;
  if not edt_Passwort_Bezeichnung.Enabled then
  begin
    edt_Passwort_Bezeichnung.Enabled:= true;
    edt_Passwort_Benutzer.Enabled:= true;
    edt_Passwort_Passwort.Enabled:= true;
    edt_Passwort_Link.Enabled:= true;
    btn_Passwort_PasswortShow.Enabled:= true;
    edt_Passwort_VPN.Enabled:= true;
    edt_Passwort_VPN_APP.Enabled:= true;
    cbx_PWTyp.Enabled:= true;
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
    edt_Passwort_Passwort.PostEditValue;
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
procedure Tfrm_password.btn_Passwort_PasswortShowClick(Sender: TObject);
begin
  if bol_PWDShow then
  begin
    bol_PWDShow:= false;
    edt_Passwort_Passwort.Properties.EchoMode:= eemPassword;
  end
  else begin
    bol_PWDShow:= true;
    edt_Passwort_Passwort.Properties.EchoMode:= eemNormal;
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
procedure Tfrm_password.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_password.FormDestroy(Sender: TObject);
begin
  SetGridViews(False);
end;
procedure Tfrm_password.FormShow(Sender: TObject);
begin
  case dm_PCM.iModulTab of
  1: dxLayoutGroup2.ItemIndex:= 0;
  2: dxLayoutGroup2.ItemIndex:= 1;
  end;
  OpenData;
  InitializeRights;
  SetButtons;
  SetGridViews(true);
end;
procedure Tfrm_password.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewPWD := TSavedGridView.Create(GV_Passwort,dm_PCM.iIDBenutzerPCM, tv_Passwort);
    SaveGridViewPWD.LoadView;
    SaveGridViewSer := TSavedGridView.Create(GV_Serial,dm_PCM.iIDBenutzerPCM, tv_Programs);
    SaveGridViewSer.LoadView;
    SaveGridViewSerDet := TSavedGridView.Create(GV_SerialDet,dm_PCM.iIDBenutzerPCM, cxGridDBTableView1);
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
procedure Tfrm_password.InitializeRights;
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
    btn_Passwort_PasswortShow.Enabled:= False;
    edt_Passwort_VPN.Enabled:= False;
    edt_Passwort_VPN_APP.Enabled:= False;
    cbx_PWTyp.Enabled:= False;
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
      btn_Passwort_PasswortShow.Enabled:= true;
      edt_Passwort_VPN.Enabled:= true;
      edt_Passwort_VPN_APP.Enabled:= true;
      cbx_PWTyp.Enabled:= true;
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
end.
