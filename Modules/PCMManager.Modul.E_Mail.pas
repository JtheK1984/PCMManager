unit PCMManager.Modul.E_Mail;

interface

uses
  {$Region uses}
  cxButtons,
  cxClasses,
  cxContainer,
  cxControls,
  cxCurrencyEdit,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBData,
  cxEdit,
  cxFilter,
  cxGraphics,
  cxGrid,
  cxGridCustomPopupMenu,
  cxGridCustomTableView,
  cxGridCustomView,
  cxGridDBTableView,
  cxGridLevel,
  cxGridPopupMenu,
  cxGridTableView,
  cxGroupBox,
  cxInplaceContainer,
  cxListView,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxNavigator,
  cxPC,
  cxSplitter,
  cxStyles,
  cxTextEdit,
  cxTL,
  cxTLdxBarBuiltInMenu,
  dateutils,
  dxBar,
  dxBarBuiltInMenu,
  dxChartControl,
  dxDateRanges,
  dxLayoutContainer,
  dxLayoutControl,
  dxLayoutcxEditAdapters,
  dxmdaset,
  dxScrollbarAnnotations,
  dxStatusBar,
  dxUIAClasses,
  FireDAC.Comp.Client,
  FireDAC.Comp.DataSet,
  FireDAC.DApt, Data.DB,
  FireDAC.DApt.Intf,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Async,
  FireDAC.Stan.Error,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  idAttachment,
  IdAttachmentFile,
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
  IdSASL.OAuth.Base,
  IdSASLCollection,
  IdSSL,
  IdSSLOpenSSL,
  IdTCPClient,
  IdTCPConnection,
  IdText,
  PCM.Browser,
  PCm.Functions,
  PCMManager.Helper.Email.OAuth,
  SHDocVw,
  ShellAPI,
  strutils,
  System.Classes,
  System.ImageList,
  System.Net.URLClient,
  System.SysUtils,
  System.UITypes,
  System.Variants,
  uWVBrowser,
  uWVBrowserBase,
  Vcl.ComCtrls,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.OleCtrls,
  Vcl.StdCtrls,
  Vcl.ToolWin,
  WebView2,
  Winapi.Messages,
  Winapi.Windows, cxImageComboBox;
  {$EndRegion uses}
type
  {$Region Type}
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
  Tfrm_Mail = class(TForm)
    stbr_user: TdxStatusBar;
    trlst_EmailFolder: TcxTreeList;
    cxTreeList1Column1: TcxTreeListColumn;
    grdDBTblView_Mails: TcxGridDBTableView;
    grdlvl_mail: TcxGridLevel;
    grd_Mail: TcxGrid;
    ds_Mail: TDataSource;
    grdDBTblView_MailsRecId: TcxGridDBColumn;
    grdDBTblView_MailsVon: TcxGridDBColumn;
    grdDBTblView_MailsBetreff: TcxGridDBColumn;
    grdDBTblView_MailsErhalten: TcxGridDBColumn;
    grdDBTblView_MailsGroesse: TcxGridDBColumn;
    grdDBTblView_MailsUID: TcxGridDBColumn;
    grdDBTblView_Mailsread: TcxGridDBColumn;
    cxTreeList1Column2: TcxTreeListColumn;
    qry_Mail: TFDQuery;
    grdDBTblView_MailsID: TcxGridDBColumn;
    grdDBTblView_MailsUIDL: TcxGridDBColumn;
    grdDBTblView_MailsData: TcxGridDBColumn;
    grdDBTblView_MailsfileName: TcxGridDBColumn;
    brmgr_Email: TdxBarManager;
    tb_Email: TdxBar;
    btn_EmailNew: TdxBarLargeButton;
    btn_EmailDelete: TdxBarLargeButton;
    btn_EmailMove: TdxBarLargeButton;
    btn_EmailAnswer: TdxBarLargeButton;
    btn_EmailSendto: TdxBarLargeButton;
    btn_EmailAnswerAll: TdxBarLargeButton;
    btn_EmailMarkAsRead: TdxBarLargeButton;
    idImap_Mail: TIdIMAP4;
    pm_Einnahmen: TcxGridPopupMenu;
    ppm_Email: TdxBarPopupMenu;
    ppmbtn_EmailNew: TdxBarButton;
    ppmbtn_EmailDelete: TdxBarButton;
    ppmbtn_EmailMove: TdxBarButton;
    ppmbtn_EmailAnswer: TdxBarButton;
    ppmbtn_EmailAnswerAll: TdxBarButton;
    ppmbtn_EmailSendTo: TdxBarButton;
    ppmbtn_EmailMarkasRead: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    lactrl_MailGroup_Root: TdxLayoutGroup;
    lactrl_Mail: TdxLayoutControl;
    lagrp_Mail: TdxLayoutGroup;
    lagrp_MailDetail: TdxLayoutGroup;
    laitm_MailBar: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    laitm_MailAccounts: TdxLayoutItem;
    lagrp_MailMails: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    grpbx_MailVorschau: TdxLayoutItem;
    pnl_Browser: TcxGroupBox;
    laitm_Vorschau: TdxLayoutSplitterItem;
    IdHTTPServer1: TIdHTTPServer;
    IdSSLIOHandlerSocketIMAP: TIdSSLIOHandlerSocketOpenSSL;
    IdSSLIOHandlerSocketSMTP: TIdSSLIOHandlerSocketOpenSSL;
    idImap_MailOauth: TIdIMAP4;
    grdDBTblView_MailsCellCTimer: TTimer;
    dxBarLargeButton1: TdxBarLargeButton;
    grdDBTblView_MailsAnhang: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure tl_EmailFolderChange(Sender: TObject);
    procedure grdDBTblView_MailsCustomDrawCell(Sender: TcxCustomGridTableView;  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure btn_EmailDeleteClick(Sender: TObject);
    procedure grdDBTblView_MailsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure btn_EmailMoveClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure grdDBTblView_MailsCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdDBTblView_MailsCellCTimerTimer(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btn_EmailNewClick(Sender: TObject);
  private
    { Private-Deklarationen }
//    iKontotyp: integer;
//    sHost: String;
//    iPort: integer;
    sUser: String;
//    sPassword: String;
    sPrevAccount: String;
//    ssl: TIdSSLIOHandlerSocketOpenSSL;
    m_currentpath: WideString;
    m_uidlfile: WideString;
    CurrNode: TcxTreelistnode;
    FOAuth2_Enhanced : TEnhancedOAuth2Authenticator;
    xoauthSASL : TIdSASLListEntry;
    Provider : TMailProviderInfo;
    AAccount: string;
    sAccount: string;
    sMailBoxName: string;
    SaveGridViewMail: TSavedGridView;
    FWebBrowser: TAbstractWebBrowser;
    procedure SetGridViews(Show:boolean);
    function CheckValidFile(AFileName,APath: String) : boolean;
    procedure IMAPStart;
    procedure InitializeBrowser;
    procedure ShowFolders;
    procedure ConvertFileHTML(AFile:String);
    procedure CreateFullFolder( folder: String );
    procedure MailAuthenticate;
    procedure SetupAuthenticator(ARefreshToken: String);
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_Mail: Tfrm_Mail;
  {$EndRegion var}
const
  {$Region const}
  clientredirect = 'http://localhost:2132';
  GetMailInfos_DateRange = 64;
  {$EndRegion const}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Data,
  PCMManager.Modul.E_Mail.Show,
  PCM.Browser.FullScreen,
  uwvLoader,
  IdSASL.OAuth.XOAUTH2,
  PCMManager.Modul.E_Mail.Mailbox,
  PCM.Strings, PCMManager.Modul.E_Mail.Signaturen, PCM.SendMail;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function TMailProviderInfo.TokenName: string;
begin
  Result := AuthName + 'Token';
end;
function Tfrm_Mail.CheckValidFile(AFileName,APath: String) : boolean;
var
  fileContent: TStringlist;
  found: Boolean;
begin
  fileContent := TStringList.Create;
  try
    fileContent.LoadFromFile(APath);
    found := Pos(AFileName, fileContent.Text) > 0;
    if found then
      Result:= false
    else
      Result:= true;
  finally
    fileContent.Free;
  end;
end;
procedure Tfrm_Mail.ConvertFileHTML(AFile:String);
var
  WinFile: TextFile;
  Line: String;
  slC: TStringList;
begin
  slC:= TStringList.Create;
    AssignFile(WinFile,AFile);
    Reset(Winfile);
    while Not Eof(WinFile) do
    begin
      ReadLn(WinFile, Line);
      Line := StringReplace(Line, 'ƒ', '&Auml;', [rfReplaceAll]);
      Line := StringReplace(Line, '‰', '&auml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'À','&Euml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Î','&euml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'œ','&Iuml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ô','&iuml;', [rfReplaceAll]);
      Line := StringReplace(Line, '÷','&Ouml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ˆ','&ouml;', [rfReplaceAll]);
      Line := StringReplace(Line, '‹','&Uuml;', [rfReplaceAll]);
      Line := StringReplace(Line, '¸','&uuml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ﬂ','&szlig;', [rfReplaceAll]);
      Line := StringReplace(Line, '¿','&Agrave;', [rfReplaceAll]);
      Line := StringReplace(Line, '‡','&agrave;', [rfReplaceAll]);
      Line := StringReplace(Line, '¡','&Aacute;', [rfReplaceAll]);
      Line := StringReplace(Line, '·','&aacute;', [rfReplaceAll]);
      Line := StringReplace(Line, '¬','&Acirc;', [rfReplaceAll]);
      Line := StringReplace(Line, '‚','&Acirc;', [rfReplaceAll]);
      Line := StringReplace(Line, '«','&Ccedil;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Á','&ccedil;', [rfReplaceAll]);
      Line := StringReplace(Line, '»','&Egrave;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ë','&egrave;', [rfReplaceAll]);
      Line := StringReplace(Line, '…','&Eacute;', [rfReplaceAll]);
      Line := StringReplace(Line, 'È','&eacute;', [rfReplaceAll]);
      Line := StringReplace(Line, ' ','&Ecirc;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Í','&ecirc;', [rfReplaceAll]);
      Line := StringReplace(Line, '—','&Ntilde;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ò','&ntilde;', [rfReplaceAll]);
      Line := StringReplace(Line, '“','&Ograve;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ú','&ograve;', [rfReplaceAll]);
      Line := StringReplace(Line, '”','&Oacute;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Û','&oacute;', [rfReplaceAll]);
      Line := StringReplace(Line, '‘','&Ocirc;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ù','&ocirc;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ı','&otilde;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ü','&Yuml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ˇ','&yuml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ì','&ldquo;', [rfReplaceAll]);
      Line := StringReplace(Line, 'î','&rdquo;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ñ','&bdquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '´','&laquo;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ª','&raquo;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ã','&lsaquo;', [rfReplaceAll]);
      Line := StringReplace(Line, 'õ','&rsaquo;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ë','&lsquo;', [rfReplaceAll]);
      Line := StringReplace(Line, 'í','&rsquo;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ç','&sbquo;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ñ','&quot;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&larr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&uarr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&rarr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&darr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&harr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&varr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&rArr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&hArr;', [rfReplaceAll]);
      Line := StringReplace(Line, '©','&copy;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Æ','&reg;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ô','&trade;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ß','&sect;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ï','&bull;', [rfReplaceAll]);
      Line := StringReplace(Line, '∑','&middot;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ñ','&ndash;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ó','&mdash;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ö','&hellip;', [rfReplaceAll]);
      Line := StringReplace(Line, '®','&uml;', [rfReplaceAll]);
      Line := StringReplace(Line, '∞','&deg;', [rfReplaceAll]);
      Line := StringReplace(Line, '°','&iexcl;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ø','&iquest;', [rfReplaceAll]);
      Line := StringReplace(Line, '¶','&brvbar;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ä','&euro;', [rfReplaceAll]);
      Line := StringReplace(Line, '£','&pound;', [rfReplaceAll]);
      Line := StringReplace(Line, '$','&dollar;', [rfReplaceAll]);
      Line := StringReplace(Line, 'º','&frac14;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ω','&frac12;', [rfReplaceAll]);
      Line := StringReplace(Line, 'æ','&frac34;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&check;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&cross;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&sung;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&hearts;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&bigstar;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&phone;', [rfReplaceAll]);
      Line:= StringReplace(Line, 'charset=iso-8859-1', 'charset=utf-8;', [rfReplaceAll]);
      Line:= StringReplace(Line, 'Windows-1252', 'charset=utf-8;', [rfReplaceAll]);
      slC.Add(Line);
    end;
    CloseFile(WinFile);
    slC.SaveToFile(AFile);
    slC.Clear;
    slC.free;
end;
procedure Tfrm_Mail.CreateFullFolder( folder: String );
var
  s: String;
  npos: integer;
begin
    if DirectoryExists(folder) then
        Exit;
    npos := 1;
    while true do
    begin
      npos := PosEx('\', folder, npos );
      if npos > 3 then
      begin
        s := MidStr( folder, 1, npos - 1 );
        if Not DirectoryExists(s) then
          CreateDir(s);
      end
      else if npos < 1 then
        Break;

      npos := npos + 1;
    end;
    if Not DirectoryExists(folder) then
      CreateDir(folder);
end;
procedure Tfrm_Mail.dxBarLargeButton1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Signatur,frm_Signatur);
  frm_Signatur.ShowModal;
end;
procedure Tfrm_Mail.IMAPStart;
begin
  trlst_EmailFolder.Clear;
  trlst_EmailFolder.OnChange:= tl_EmailFolderChange;
  ShowFolders;
end;
procedure Tfrm_Mail.InitializeBrowser;
begin
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
end;
procedure Tfrm_Mail.MailAuthenticate;
var
  uri : TURI;
begin
  uri := TURI.Create(FOAuth2_Enhanced.AuthorizationRequestURI);
  ShellExecute(0,'open',PChar(uri.ToString),nil,nil,0);
end;
procedure Tfrm_Mail.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewMail := TSavedGridView.Create(GV_Mail,dm_PCM.iIDBenutzerPCM, grdDBTblView_Mails);
    SaveGridViewMail.LoadView;
  end
  else begin
    SaveGridViewMail.SaveView(0);
    SaveGridViewMail.Free;
  end;
end;
procedure Tfrm_Mail.SetupAuthenticator(ARefreshToken: String);
begin
  FOAuth2_Enhanced.ClientID := Provider.ClientID;
  FOAuth2_Enhanced.ClientSecret := Provider.ClientSecret;
  FOAuth2_Enhanced.Scope := Provider.Scopes;
  FOAuth2_Enhanced.RedirectionEndpoint := clientredirect;
  FOAuth2_Enhanced.AuthorizationEndpoint := Provider.AuthorizationEndpoint;
  FOAuth2_Enhanced.AccessTokenEndpoint := Provider.AccessTokenEndpoint;
  FOAuth2_Enhanced.RefreshToken := ARefreshToken;
  FOAuth2_Enhanced.AccessToken := '';
  FOAuth2_Enhanced.AccessTokenExpiry := 0;
end;
procedure Tfrm_Mail.ShowFolders;
var
  IdSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;
  MainNode: TcxTreeListNode;
  Tree1Node: TcxTreeListNode;
  Tree2Node: TcxTreeListNode;
  i: integer;

  UsersFolders: TStringlist;
begin
  trlst_EmailFolder.Clear;
  trlst_EmailFolder.BeginUpdate;
  dm_pcm.qry_work.SQL.Text:= 'SELECT * From manager_emailkonfiguration where id_Benutzer = :ID';
  dm_pcm.qry_work.ParamByName('ID').AsInteger:= dm_pcm.iIDBenutzerPCM;
  dm_pcm.qry_work.Open;
  while not dm_pcm.qry_work.eof do
  begin
    if dm_pcm.qry_work.FieldByName('Authtype').AsInteger = 0 then
    begin
      IdIMAP_Mail.SASLMechanisms.Clear;
      IdIMAP_Mail.AuthType:= iatUserPass;
      IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSSLIOHandlerSocket.SSLOptions.Method:= sslvSSLv23;
      idImap_Mail.IOHandler := IdSSLIOHandlerSocket;
      idImap_Mail.UseTLS := utUseImplicitTLS;
      idImap_Mail.Host := dm_pcm.qry_work.FieldByName('PostEingangsserver').AsString;
      idImap_Mail.Port := dm_pcm.qry_work.FieldByName('PortEingangsserver').AsInteger;
      idImap_Mail.UseTLS := utUseImplicitTLS;
      idImap_Mail.Username := dm_pcm.qry_work.FieldByName('Benutzer').AsString;;
      idImap_Mail.Password := dm_pcm.qry_work.FieldByName('Passwort').AsString;
      idImap_Mail.Connect;
    end
    else begin
      Provider.AccessTokenEndpoint:=dm_pcm.qry_work.FieldByName('AccessTokenEndpoint').AsString;
      Provider.AuthenticationType:= TIdSASLXOAuth;
      Provider.AuthName:= 'Microsoft';
      Provider.AuthorizationEndpoint:= dm_pcm.qry_work.FieldByName('AuthorizationEndpoint').AsString;
      Provider.ClientAccount:= dm_pcm.qry_work.FieldByName('Benutzer').AsString;
      Provider.ClientID:= dm_pcm.qry_work.FieldByName('ClientID').AsString;
      Provider.ClientSecret:= dm_pcm.qry_work.FieldByName('ClientSecret').AsString;
      Provider.ImapHost:= dm_pcm.qry_work.FieldByName('PostEingangsserver').AsString;
      Provider.ImapPort:= dm_pcm.qry_work.FieldByName('PortEingangsserver').AsInteger;
      Provider.Scopes:= dm_pcm.qry_work.FieldByName('Scopes').AsString;
      Provider.SmtpHost:= dm_pcm.qry_work.FieldByName('PostAusgangsserver').AsString;
      Provider.SmtpPort:= dm_pcm.qry_work.FieldByName('PortAusgangsserver').AsInteger;
      Provider.TLS:= utUseExplicitTLS;
      if dm_pcm.qry_work.FieldByName('RefreshToken').AsString = '' then
        MailAuthenticate;
      SetupAuthenticator(dm_pcm.qry_work.FieldByName('RefreshToken').AsString);
      FOAuth2_Enhanced.ClientID := Provider.ClientID;
      FOAuth2_Enhanced.ClientSecret := Provider.ClientSecret;
      FOAuth2_Enhanced.RefreshAccessTokenIfRequired;
      IdIMAP_Mail.Host := dm_pcm.qry_work.FieldByName('PostEingangsserver').AsString;
      IdIMAP_Mail.Port := dm_pcm.qry_work.FieldByName('PortEingangsserver').AsInteger;
      IdIMAP_Mail.IOHandler:= IdSSLIOHandlerSocketIMAP;
      IdIMAP_Mail.UseTLS := utUseExplicitTLS;
      xoauthSASL := IdIMAP_Mail.SASLMechanisms.Add;
      xoauthSASL.SASL := Provider.AuthenticationType.Create(Nil);
      TIdSASLOAuthBase(xoauthSASL.SASL).Token := FOAuth2_Enhanced.AccessToken;
      TIdSASLOAuthBase(xoauthSASL.SASL).User := Provider.ClientAccount;
      IdIMAP_Mail.AuthType := iatSASL;
      IdIMAP_Mail.Connect;
    end;
    stbr_user.Panels[0].Text:= rs_PCMManager_Verbundenmit + sUser;
    UsersFolders := TStringList.Create;
    idImap_Mail.ListMailBoxes(UsersFolders);
    MainNode := trlst_EmailFolder.AddChild(trlst_EmailFolder.Root);
    MainNode.Values[0]:= dm_pcm.qry_work.FieldByName('Benutzer').AsString;
    Application.ProcessMessages;
    stbr_user.Panels.Items[0].Text:= rs_PCMManager_Ordnerwerdeneingelesen;
    dm_pcm.qry_work1.SQL.Text:= 'SELECT ID,Postfach,Anzeige FROM manager_email_postfach where Typ = 0 and Abonnieren = true and ID_Manager_eMail = :ID order by Sortierung';
    dm_pcm.qry_work1.ParamByName('ID').asInteger:= dm_pcm.qry_work.FieldByName('ID').AsInteger;
    dm_pcm.qry_work1.open;
    while not dm_pcm.qry_work1.Eof do
    begin
      Tree1Node := trlst_EmailFolder.AddChild(mainNode);
      Tree1Node.Values[0] := dm_pcm.qry_work1.FieldByName('Anzeige').AsString;
      for i:= 0 to UsersFolders.Count - 1 do
      begin
        if  UsersFolders[i] = dm_pcm.qry_work1.FieldByName('Postfach').AsString then
        begin
          break
        end;
      end;
      Application.ProcessMessages;
      dm_pcm.qry_work2.SQL.Text:= 'SELECT Anzeige,Postfach FROM manager_email_postfach where Parent = :parent and Abonnieren = true order by Sortierung';
      dm_pcm.qry_work2.ParamByName('parent').asInteger:= dm_pcm.qry_work1.FieldByName('ID').asInteger;
      dm_pcm.qry_work2.open;
      while not dm_pcm.qry_work2.Eof do
      begin
        Tree2Node := trlst_EmailFolder.AddChild(Tree1Node);
        Tree2Node.Values[0] := dm_pcm.qry_work2.FieldByName('Anzeige').AsString;;
        dm_pcm.qry_work2.Next;
      end;
      dm_pcm.qry_work2.Close;
      dm_pcm.qry_work1.Next;
    end;
    dm_pcm.qry_work1.Close;
    IdIMAP_Mail.DisConnect;
    dm_pcm.qry_work.Next;
  end;
  dm_pcm.qry_work.Close;
  trlst_EmailFolder.EndUpdate;
  trlst_EmailFolder.FullExpand;
  Application.ProcessMessages;
  stbr_user.Panels.Items[0].Text:= 'Online';
  Application.ProcessMessages;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Sonstige                                                                   //
////////////////////////////////////////////////////////////////////////////////
{$Region Sonstige}
procedure Tfrm_Mail.btn_EmailDeleteClick(Sender: TObject);
var
  iAnzahlCount: integer;
begin
  iAnzahlCount:=0;
  idImap_Mail.UIDDeleteMsg(qry_Mail.FieldByName('UIDL').asString);
  dm_PCM.qry_Work.sql.Text:= 'Delete From manager_emails Where ID = :ID and ID_Benutzer =:ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID').AsInteger:= qry_Mail.FieldByName('ID').AsInteger;
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.ExecSQL;
  qry_Mail.Refresh;
  stbr_user.Panels[1].Text := Format(rs_PCMManager_AnzahlElemente, [qry_Mail.RecordCount]) + ', ' +Format(rs_PCMManager_AnzahlungelesenerElemente, [iAnzahlCount]);
  stbr_user.Panels[2].text := rs_PCMManager_Uebermittlungabgeschlossen;
  if iAnzahlCount > 0 then
    trlst_EmailFolder.FocusedNode.Values[1]:= iAnzahlCount
  else
    trlst_EmailFolder.FocusedNode.Values[1]:= '';
  if qry_Mail.RecordCount > 0 then
  begin
    grdDBTblView_MailsCellCTimer.Enabled := True;
  end
  else begin
    laitm_Vorschau.visible:= false;
    grpbx_MailVorschau.visible:= false;
  end;
end;
procedure Tfrm_Mail.btn_EmailMoveClick(Sender: TObject);
var
  iIDPostfach: integer;
begin
  Application.CreateForm(Tfrm_PCM_MailShow_Ordner,frm_PCM_MailShow_Ordner);
  dm_PCM.qry_Work.SQL.Text:= 'SELECT ID,Anzeige ' +
                      'FROM manager_email_postfach ' +
                      'WHERE ID_Manager_email = (SELECT ID FROM manager_emailkonfiguration WHERE Email = :acc) AND abonnieren = TRUE ' +
                      'ORDER BY ANZEIGE';
  dm_PCM.qry_Work.ParamByName('acc').AsString:= sAccount;
  dm_PCM.qry_Work.open;

  while not dm_PCM.qry_Work.eof do
  begin
    frm_PCM_MailShow_Ordner.cmbbx_Ordner.Properties.Items.AddObject(dm_PCM.qry_Work.FieldByName('Anzeige').AsString, TObject(dm_PCM.qry_Work.FieldByName('ID').asInteger));
    dm_PCM.qry_Work.Next;
  end;
  dm_PCM.qry_Work.Close;
  iIDPostfach:= 0;

  if frm_PCM_MailShow_Ordner.Execute(True,iIDPostfach) then
  begin
    if iIDPostfach > 0 then
    begin
      dm_PCM.qry_Work.SQL.text:= 'SELECT Postfach From manager_email_postfach where ID = :ID';
      dm_PCM.qry_Work.ParamByName('id').AsInteger:= iIDPostfach;
      dm_PCM.qry_Work.Open;
      idImap_Mail.UIDCopyMsg(qry_Mail.FieldByName('UIDL').asString,dm_PCM.qry_Work.FieldByName('Postfach').AsString);
      idImap_Mail.ExpungeMailBox;

    end;
  end;
end;
procedure Tfrm_Mail.btn_EmailNewClick(Sender: TObject);
var
  sDefaultAcc: String;
begin
  dm_PCM.qry_work.SQL.Text:= 'SELECT email,`DEFAULT` from manager_emailkonfiguration WHERE `DEFAULT` = ''True''';
  dm_PCM.qry_work.Open;
  sDefaultAcc:= dm_pcm.qry_work.FieldByName('Email').AsString;
  dm_PCM.qry_work.Close;
  Application.CreateForm(Tfrm_Sendmail,frm_Sendmail);
  frm_Sendmail.Execute(sDefaultAcc,'','');
end;
procedure Tfrm_Mail.grdDBTblView_MailsCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;  AShift: TShiftState; var AHandled: Boolean);
begin
  grdDBTblView_MailsCellCTimer.Enabled := True;
end;
procedure Tfrm_Mail.grdDBTblView_MailsCellCTimerTimer(Sender: TObject);
var
//  fileName,
  folder : WideString;
  MailA: TIdMessage;
  ssearch, sreplace: string;
  WinFile: TextFile;
  Line: String;
//  sAnhang: String;
  sl: TStringList;
  i: integer;
begin
  grdDBTblView_MailsCellCTimer.Enabled := False;
  MailA := TIdMessage.Create(nil);
  MailA.CharSet:= 'UTF-8';
  idImap_Mail.UIdRetrieve(qry_Mail.FieldByName('UIDL').asString, MailA);
  try
    folder := m_currentpath + '\' + idImap_Mail.host + '\' + sPrevAccount +
      '\' + sMailBoxName + '\' + qry_Mail.FieldByName('UIDL').asString;
    folder := StringReplace(folder, '/', '.', [rfReplaceAll]);
    if not FileExists(folder) then
    begin
      stbr_user.Panels.Items[0].text := rs_PCMManager_EmailDownload;
    end;
    if not DirectoryExists(folder) then
      CreateDIr(folder);
    if MailA.MessageParts.Count > 0 then
    begin
      for i := 0 to MailA.MessageParts.Count-1 do
      begin
        if MailA.MessageParts.Items[i] is TIdText then
        begin
          TIdText(MailA.MessageParts.Items[i]).Body.SaveToFile(folder + '\mail.html');
        end;
      end;
    end
    else begin
      MailA.Body.SaveToFile(folder + '\mail.html');
    end;
    sl:=TStringList.Create;
    for i := 0 to Pred(Maila.MessageParts.Count) do
    begin
      if (Maila.MessageParts.Items[i] is TIdAttachment) then
      begin
        ssearch:= TIdAttachment(Maila.MessageParts.Items[i]).ContentID;
        ssearch:= '"cid:' + Copy(ssearch,2,Length(ssearch) -2)  + '"';
        sreplace:= TIdAttachment(Maila.MessageParts.Items[i]).Filename;
        if Length(ssearch) > 6 then
        begin
          AssignFile(WinFile,Folder + '\mail.html');
          Reset(Winfile);
          while Not Eof(WinFile) do
          begin
            ReadLn(WinFile, Line);
            Line := StringReplace(Line, ssearch, sreplace, [rfReplaceAll]);
            sl.Add(Line);
          end;
          CloseFile(WinFile);
          sl.SaveToFile(folder +'\mail.html');
          sl.Clear;
        end;
      end;
    end;
    ConvertFileHTML(folder + '\mail.html');
    laitm_Vorschau.visible:= true;
    grpbx_MailVorschau.visible:= true;
    InitializeBrowser;
    FWebBrowser.Navigate(folder + '\mail.html');
    MailA.free;
  except
    on ep:Exception do
    begin
      MessageDlg(rs_PCMManager_MSGFehler +ep.Message, mtError, [mbOk], 0);
    end;
  end;
end;
procedure Tfrm_Mail.grdDBTblView_MailsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  fileName, folder : WideString;
  MailA: TIdMessage;
  i: integer;
  ssearch, sreplace: string;
  WinFile: TextFile;
  Line, sAnhang: String;
  sl: TStringList;
begin
  grdDBTblView_MailsCellCTimer.Enabled := False;
  Application.CreateForm(Tfrm_PCM_MailShow,frm_PCM_MailShow);
  MailA := TIdMessage.Create(nil);
  MailA.CharSet:= 'UTF-8';
  idImap_Mail.UIdRetrieve(qry_Mail.FieldByName('UIDL').asString, MailA);
  try
    folder := m_currentpath + '\' + idImap_Mail.host + '\' + sPrevAccount +
      '\' + sMailBoxName + '\' + qry_Mail.FieldByName('UIDL').asString;
    folder := StringReplace(folder, '/', '.', [rfReplaceAll]);
    if not FileExists(folder) then
    begin
      stbr_user.Panels.Items[0].text := rs_PCMManager_EmailDownload;
    end;
    if not DirectoryExists(folder) then
      CreateDIr(folder);
    frm_PCM_MailShow.lstVw_Mail.Clear;
    if MailA.MessageParts.Count > 0 then
    begin
      for i := 0 to MailA.MessageParts.Count-1 do
      begin
        if MailA.MessageParts.Items[i] is TIdText then
        begin
          TIdText(MailA.MessageParts.Items[i]).Body.SaveToFile(folder + '\mail.html');
        end;
        if MailA.MessageParts.Items[i] is TIDAttachment then
        begin
          filename := TIdAttachmentFile(MailA.MessageParts.Items[i]).FileName;
          TIdAttachmentFile(MailA.MessageParts.Items[i]).SaveToFile(folder + '\' + filename);
          sAnhang := folder + '\' + filename;
          if CheckValidFile(filename,folder + '\mail.html') then
          begin
            SetLength(frm_PCM_MailShow.arAnhang,Length(frm_PCM_MailShow.arAnhang) + 1);
            frm_PCM_MailShow.arAnhang[High(frm_PCM_MailShow.arAnhang)].sFileName:= filename;
            frm_PCM_MailShow.arAnhang[High(frm_PCM_MailShow.arAnhang)].sFilePath:= folder + '\' + filename;
          end;
        end;
      end;
      if High(frm_PCM_MailShow.arAnhang) > -1 then
      begin
        frm_PCM_MailShow.CreateAnhang(frm_PCM_MailShow.arAnhang);
      end;
    end
    else begin
      MailA.Body.SaveToFile(folder + '\mail.html');
    end;
    sl:=TStringList.Create;
    for i := 0 to Pred(Maila.MessageParts.Count) do
    begin
      if (Maila.MessageParts.Items[i] is TIdAttachment) then
      begin
        ssearch:= TIdAttachment(Maila.MessageParts.Items[i]).ContentID;
        ssearch:= '"cid:' + Copy(ssearch,2,Length(ssearch) -2)  + '"';
        sreplace:= TIdAttachment(Maila.MessageParts.Items[i]).Filename;
        if Length(ssearch) > 6 then
        begin
          AssignFile(WinFile,Folder + '\mail.html');
          Reset(Winfile);
          while Not Eof(WinFile) do
          begin
            ReadLn(WinFile, Line);
            Line := StringReplace(Line, ssearch, sreplace, [rfReplaceAll]);
            sl.Add(Line);
          end;
          CloseFile(WinFile);
          sl.SaveToFile(folder +'\mail.html');
          sl.Clear;
        end;
      end;
    end;
    ConvertFileHTML(folder + '\mail.html');
    laitm_Vorschau.visible:= true;
    grpbx_MailVorschau.visible:= true;
    InitializeBrowser;
    FWebBrowser.Navigate(folder + '\mail.html');
    if Maila.From.Name = '' then
    begin
      frm_PCM_MailShow.lbl_Von.Caption:= Maila.From.Address;
      frm_PCM_MailShow.lbl_Von.Hint:= '';
    end
    else begin
      frm_PCM_MailShow.lbl_Von.Caption:= Maila.From.Name + ' <' + Maila.From.Address + '>';
      frm_PCM_MailShow.lbl_Von.Hint:= Maila.From.Address;
    end;
    frm_PCM_MailShow.lbl_an.Caption:= sPrevAccount;
    frm_PCM_MailShow.lbl_an.Hint:= '';
    frm_PCM_MailShow.lbl_cc.Caption:= MailA.CCList.EMailAddresses;
    frm_PCM_MailShow.lbl_cc.Hint:= '';

    frm_PCM_MailShow.lbl_Betreff.Caption:= MailA.Subject;
    frm_PCM_MailShow.Caption:= 'Nachricht: ' + MailA.Subject;
    frm_PCM_MailShow.cxLabel1.Caption:= FormatDateTime('dd.MM.yyyy hh:mm',Maila.Date);

//    frm_PCM_MailShow.webbwr_Mail.Navigate(folder + '\mail.html');
    frm_PCM_MailShow.FWebBrowser.Navigate(folder + '\mail.html');
    frm_PCM_MailShow.ShowModal;
    MailA.free;
  except
    on ep:Exception do
    begin
      MessageDlg(rs_PCMManager_MSGFehler +ep.Message, mtError, [mbOk], 0);
    end;
  end;
end;
procedure Tfrm_Mail.grdDBTblView_MailsCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[6] = '1' then
  begin
    ACanvas.Font.Style:= ACanvas.Font.Style - [fsBold]
  end
  else begin
    ACanvas.Font.Style:= ACanvas.Font.Style + [fsBold]
  end;
end;
procedure Tfrm_Mail.tl_EmailFolderChange(Sender: TObject);
  function MyGetParentNode(Node: TcxTreeListNode): TcxTreeListNode;
  var
    ParentNode: TcxTreeListNode;
  begin
    Result:=nil;
    if Node=nil then
      Exit;
    if Node.Level=0 then
      Exit;
    if Node.Level=2 then
    begin
      ParentNode:=Node.Parent;
      Result:=ParentNode.Parent;
    end
    else
      Result:=Node.Parent;
  end;
var
  TheFlags: TIdMessageFlagsSet;
  TheUID: string;
  i,iParent,iCount:integer;
  sCheckUser: String;
  iAnzahlCount: integer;
  Flagtemp: string;
  folder: String;
  MailBoxName,sTrennzeichen: string;
  imapFolders: Tstringlist;
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  Mail: TIdMessage;
  iID_Account,iSUb: integer;
  iCountExistingmails: integer;
  MailA: TIdMessage;
  iAnhang: integer;
  sFilename,sFolder, sAnhang:String;
begin
  iID_account:= -1;
  if trlst_EmailFolder.SelectionCount = 0 then
    exit;
  if trlst_EmailFolder.FocusedNode = CurrNode then
    exit;
  sCheckUser:=  trlst_EmailFolder.FocusedNode.Values[0];
  try
    sAccount:= MyGetParentNode(trlst_EmailFolder.FocusedNode).Values[0];
  except
  end;
  dm_PCM.qry_Work.SQL.Text:= 'Select Count(*) as Anzahl FROM manager_emailkonfiguration Where Benutzer = :Benutzer and ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('Benutzer').AsString:= sCheckUser;
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= dm_pcm.iIDBenutzerPCM;
  dm_PCM.qry_Work.open;
  iCount:=  dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
  dm_PCM.qry_Work.Close;
  if iCount > 0 then
    exit;
  laitm_Vorschau.visible:= false;
  grpbx_MailVorschau.visible:= false;
  CurrNode:= trlst_EmailFolder.FocusedNode;
  dm_PCM.qry_Work.sql.Text:= 'SELECT ID,Parent,Postfach,Trennzeichen FROM manager_email_postfach WHERE ANzeige = :Anzeige AND ID_manager_email IN (SELECT ID FROM manager_emailkonfiguration WHERE benutzer = :Account)';
  dm_PCM.qry_Work.ParambyName('Anzeige').asString:=  trlst_EmailFolder.FocusedNode.Values[0];
  dm_PCM.qry_Work.ParambyName('Account').asString:=  sAccount;
  dm_PCM.qry_Work.OPen;
  sMailBoxName:= dm_PCM.qry_Work.FieldByName('Postfach').AsString;
  iSub:=dm_PCM.qry_Work.FieldByName('ID').asInteger;
  iparent:=dm_PCM.qry_Work.FieldByName('parent').asInteger;
  sTrennzeichen:= dm_PCM.qry_Work.FieldByName('Trennzeichen').asString;
  dm_PCM.qry_Work.Close;
  if iParent > 0 then
  begin
    dm_PCM.qry_Work.sql.Text:= 'SELECT Postfach FROM manager_email_postfach WHERE ID = :Parent';
    dm_PCM.qry_Work.ParambyName('Parent').asInteger:= iParent;
    dm_PCM.qry_Work.OPen;
    sMailBoxName:= dm_PCM.qry_Work.FieldByName('Postfach').AsString + sTrennzeichen + sMailBoxName;
    dm_PCM.qry_Work.Close;
  end;
  dm_PCM.qry_Work.sql.Text:= 'SELECT Count(*)as anzahl FROM manager_email_postfach WHERE id = :Parent';
  dm_PCM.qry_Work.ParambyName('parent').asInteger:=  iparent;
  dm_PCM.qry_Work.OPen;
  iCount:= dm_PCM.qry_Work.FieldByName('anzahl').asInteger;
  dm_PCM.qry_Work.Close;
  if iCount > 0  then
  try
    sAccount:= MyGetParentNode(MyGetParentNode(trlst_EmailFolder.FocusedNode)).Values[0];
  except
  end;

  dm_PCM.qry_work.SQL.Text:= 'SELECT ID From manager_emailkonfiguration where Benutzer = :Benutzer and id_Benutzer = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= dm_pcm.iIDBenutzerPCM;
  dm_PCM.qry_work.ParamByName('Benutzer').AsString:= sAccount;
  dm_PCM.qry_work.Open;
  if dm_PCM.qry_work.RecordCount > 0  then
    iID_Account:= dm_pcm.qry_work.FieldByName('ID').AsInteger;
  dm_PCM.qry_work.Close;
  qry_Mail.SQL.Text:= 'SELECT * FROM manager_emails Where ID_Benutzer = :ID_Benutzer and ID_emailkonfiguration = :ID_Account and id_main = :id_main and id_sub = :id_sub';
  qry_Mail.ParamByName('ID_Benutzer').AsInteger:= dm_pcm.iIDBenutzerPCM;
  qry_Mail.ParamByName('ID_Account').AsInteger:= iID_account;
  qry_Mail.ParamByName('id_main').AsInteger:= iParent;
  qry_Mail.ParamByName('id_sub').AsInteger:= iSub;
  qry_Mail.Open;
  if ((sPrevAccount = '')  or (sPrevAccount <> sAccount)) then //and (not idImap_Mail.Connected) then
  begin
    if idImap_Mail.Connected then
      idImap_Mail.Disconnect;
    dm_PCM.qry_work.SQL.Text:= 'SELECT * From manager_emailkonfiguration where Benutzer = :Benutzer and id_Benutzer = :ID';
    dm_PCM.qry_work.ParamByName('ID').AsInteger:= dm_pcm.iIDBenutzerPCM;
    dm_PCM.qry_work.ParamByName('Benutzer').AsString:= sAccount;
    dm_PCM.qry_work.Open;
    if dm_pcm.qry_work.FieldByName('Authtype').AsInteger = 0 then
    begin
      IdIMAP_Mail.SASLMechanisms.Clear;
      IdIMAP_Mail.AuthType:= iatUserPass;
      IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSSLIOHandlerSocket.SSLOptions.Method:= sslvSSLv23;
      idImap_Mail.IOHandler := IdSSLIOHandlerSocket;
      idImap_Mail.UseTLS := utUseImplicitTLS;
      idImap_Mail.Host := dm_pcm.qry_work.FieldByName('PostEingangsserver').AsString;
      idImap_Mail.Port := dm_pcm.qry_work.FieldByName('PortEingangsserver').AsInteger;
      idImap_Mail.UseTLS := utUseImplicitTLS;
      idImap_Mail.Username := dm_pcm.qry_work.FieldByName('Benutzer').AsString;;
      idImap_Mail.Password := dm_pcm.qry_work.FieldByName('Passwort').AsString;
      idImap_Mail.Connect;
    end
    else begin
      Provider.AccessTokenEndpoint:=dm_pcm.qry_work.FieldByName('AccessTokenEndpoint').AsString;
      Provider.AuthenticationType:= TIdSASLXOAuth;
      Provider.AuthName:= 'Microsoft';
      Provider.AuthorizationEndpoint:= dm_pcm.qry_work.FieldByName('AuthorizationEndpoint').AsString;
      Provider.ClientAccount:= dm_pcm.qry_work.FieldByName('Benutzer').AsString;
      Provider.ClientID:= dm_pcm.qry_work.FieldByName('ClientID').AsString;
      Provider.ClientSecret:= dm_pcm.qry_work.FieldByName('ClientSecret').AsString;
      Provider.ImapHost:= dm_pcm.qry_work.FieldByName('PostEingangsserver').AsString;
      Provider.ImapPort:= dm_pcm.qry_work.FieldByName('PortEingangsserver').AsInteger;
      Provider.Scopes:= dm_pcm.qry_work.FieldByName('Scopes').AsString;
      Provider.SmtpHost:= dm_pcm.qry_work.FieldByName('PostAusgangsserver').AsString;
      Provider.SmtpPort:= dm_pcm.qry_work.FieldByName('PortAusgangsserver').AsInteger;
      Provider.TLS:= utUseExplicitTLS;
      if dm_pcm.qry_work.FieldByName('RefreshToken').AsString = '' then
        MailAuthenticate;
      SetupAuthenticator(dm_pcm.qry_work.FieldByName('RefreshToken').AsString);
      FOAuth2_Enhanced.ClientID := Provider.ClientID;
      FOAuth2_Enhanced.ClientSecret := Provider.ClientSecret;
      FOAuth2_Enhanced.RefreshAccessTokenIfRequired;
      IdIMAP_Mail.Host := dm_pcm.qry_work.FieldByName('PostEingangsserver').AsString;
      IdIMAP_Mail.Port := dm_pcm.qry_work.FieldByName('PortEingangsserver').AsInteger;
      IdIMAP_Mail.IOHandler:= IdSSLIOHandlerSocketIMAP;
      IdIMAP_Mail.UseTLS := utUseExplicitTLS;
      xoauthSASL := IdIMAP_Mail.SASLMechanisms.Add;
      xoauthSASL.SASL := Provider.AuthenticationType.Create(Nil);
      TIdSASLOAuthBase(xoauthSASL.SASL).Token := FOAuth2_Enhanced.AccessToken;
      TIdSASLOAuthBase(xoauthSASL.SASL).User := Provider.ClientAccount;
      IdIMAP_Mail.AuthType := iatSASL;
      IdIMAP_Mail.Connect;
    end;
  end;
  dm_PCM.qry_work.Close;
  AAccount := sAccount;
  iAnzahlCount:= 0;
  Flagtemp := 'gelesen';
  imapFolders := TStringList.Create;
  idImap_Mail.ListMailBoxes(imapFolders);
  if idImap_Mail.SelectMailBox(sMailBoxName) = False then begin
    stbr_user.panels.items[0].text := 'Error selecting '+MailBoxName;
    Exit;
  end;
  Application.ProcessMessages;
  stbr_user.panels.items[0].text := rs_PCMManager_EmailRefresh;
  Application.ProcessMessages;
  Mail := TIdMessage.Create(nil);
  iCount := idImap_Mail.MailBox.TotalMsgs;
  dm_PCM.qry_Work.SQL.Text:= 'Select Count(*) as Anzahl from manager_emails Where ID_Benutzer = :ID_Benutzer and ID_emailkonfiguration = :ID_Account and id_main = :id_main and id_sub = :id_sub';
  dm_PCM.qry_Work.ParamByName('ID_Account').AsInteger:= iID_account;
  dm_PCM.qry_Work.ParamByName('id_main').AsInteger:= iParent;
  dm_PCM.qry_Work.ParamByName('id_sub').AsInteger:= iSub;
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= dm_pcm.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  iCountExistingmails := dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
  dm_PCM.qry_Work.Close;;
  if iCount > 0 then
  begin
    folder := m_currentpath + '\' + idImap_Mail.Host + '\' + sAccount + '\' + sMailBoxName;
    folder := StringReplace(folder, '/', '.', [rfReplaceAll]);
    CreateFullFolder( folder );
    for i := iCountExistingmails to iCount-1 do
    begin
      idImap_Mail.GetUID(i+1, TheUID);  // 100 ms
      idImap_Mail.UIDRetrieveFlags(TheUID, TheFlags);
      idImap_Mail.UIDRetrieveHeader(TheUID, Mail);
      Application.ProcessMessages;
      if not DirectoryExists(folder + '\' + TheUID) then
        CreateDIr(folder + '\' + TheUID);
      stbr_user.Panels.Items[2].Text:=  Format( rs_PCMManager_StatuswithValue, [Round(iAnzahlCount / iCount * 100)]) + '%      ';
      stbr_user.Panels.Items[2].Text:=  rs_PCMManager_StatuswithoutValue + IntToStr(i+1) + rs_PCMManager_StatuswithoutValue1 + IntToStr(iCount) + rs_PCMManager_StatuswithoutValue2;
//
      Application.ProcessMessages;
      if mfSeen in TheFlags then
        Flagtemp := rs_PCMManager_Flagread
      else
        Flagtemp := rs_PCMManager_Flagunread;
      iAnhang:= 0;


      MailA := TIdMessage.Create(nil);
      MailA.CharSet:= 'UTF-8';
      idImap_Mail.UIdRetrieve(TheUID, MailA);

      sfolder := m_currentpath + '\' + idImap_Mail.host + '\' + sAccount + '\' + sMailBoxName + '\' + TheUID;
      sfolder := StringReplace(sfolder, '/', '.', [rfReplaceAll]);
      if not FileExists(folder) then
      begin
        stbr_user.Panels.Items[0].text := rs_PCMManager_EmailDownload;
      end;
      if not DirectoryExists(folder) then
        CreateDIr(folder);
      if MailA.MessageParts.Count > 0 then
      begin
        for var iParts := 0 to MailA.MessageParts.Count-1 do
        begin
          if MailA.MessageParts.Items[iParts] is TIdText then
          begin
            TIdText(MailA.MessageParts.Items[iParts]).Body.SaveToFile(sfolder + '\mail.html');
          end;
          if MailA.MessageParts.Items[iParts] is TIDAttachment then
          begin
            sfilename := TIdAttachmentFile(MailA.MessageParts.Items[iParts]).FileName;
            TIdAttachmentFile(MailA.MessageParts.Items[iParts]).SaveToFile(sfolder + '\' + sfilename);
            sAnhang := sfolder + '\' + sfilename;
            if CheckValidFile(sfilename,sfolder + '\mail.html') then
            begin
              iAnhang:= 1;
              break;
            end;
          end;
        end;
      end
      else begin
        MailA.Body.SaveToFile(folder + '\mail.html');
      end;
      MailA.Free;


      dm_PCM.qry_Work.SQL.Text:= 'Select Count(*) as Anzahl from manager_emails Where Von = :Von and Betreff = :Betreff and Erhalten = :Erhalten and Groesse = :Groesse '+
                                 'and ID_Benutzer = :ID_Benutzer and ID_emailkonfiguration = :ID_Account and id_main = :id_main and id_sub = :id_sub';
      if Mail.From.Name <> '' then
        dm_PCM.qry_Work.ParamByName('Von').AsString:= Mail.From.Name
      else
        dm_PCM.qry_Work.ParamByName('Von').AsString:= Mail.From.Address;
      dm_PCM.qry_Work.ParamByName('Betreff').AsString:= Mail.Subject;
      dm_PCM.qry_Work.ParamByName('Erhalten').AsDateTime:= Mail.Date;
      dm_PCM.qry_Work.ParamByName('Groesse').AsString:= IntToStr(Round(idImap_Mail.UIDRetrieveMsgSize(TheUID) / 1024)) + ' KB';
      dm_PCM.qry_Work.ParamByName('ID_Account').AsInteger:= iID_account;
      dm_PCM.qry_Work.ParamByName('id_main').AsInteger:= iParent;
      dm_PCM.qry_Work.ParamByName('id_sub').AsInteger:= iSub;
      dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= dm_pcm.iIDBenutzerPCM;
      dm_PCM.qry_Work.Open;
      iCountExistingmails := dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
      dm_PCM.qry_Work.Close;;
      if iCountExistingmails = 0 then
      begin
        dm_PCM.qry_Work.SQL.Text:= 'INSERT INTO manager_emails (Anhang,Von,Betreff,Erhalten,Groesse,UIDL,readEmail,ID_Benutzer,ID_emailkonfiguration,id_main,id_sub) VALUES(:Anhang,:Von,:Betreff,:Erhalten,:Groesse,:UIDL,:readEmail,:ID_Benutzer,:ID_Account,:id_main,:id_sub)';
        dm_PCM.qry_Work.ParamByName('Anhang').AsInteger:= iAnhang;
        if Mail.From.Name <> '' then
          dm_PCM.qry_Work.ParamByName('Von').AsString:= Mail.From.Name
        else
          dm_PCM.qry_Work.ParamByName('Von').AsString:= Mail.From.Address;
        dm_PCM.qry_Work.ParamByName('Betreff').AsString:= Mail.Subject;
        dm_PCM.qry_Work.ParamByName('Erhalten').AsDateTime:= Mail.Date;
        dm_PCM.qry_Work.ParamByName('Groesse').AsString:= IntToStr(Round(idImap_Mail.UIDRetrieveMsgSize(TheUID) / 1024)) + ' KB';
        dm_PCM.qry_Work.ParamByName('UIDL').asString:= TheUID;
        if Flagtemp = 'ungelesen' then
          dm_PCM.qry_Work.ParamByName('readEmail').asInteger := 0
        else
          dm_PCM.qry_Work.ParamByName('readEmail').asInteger := 1;
        dm_PCM.qry_Work.ParamByName('ID_Benutzer').asInteger:= dm_pcm.iIDBenutzerPCM;
        dm_PCM.qry_Work.ParamByName('ID_Account').AsInteger:= iID_account;
        dm_PCM.qry_Work.ParamByName('id_main').AsInteger:= iParent;
        dm_PCM.qry_Work.ParamByName('id_sub').AsInteger:= iSub;
        dm_PCM.qry_Work.ExecSQL;
      end;
      qry_Mail.Refresh;

      if Flagtemp= 'ungelesen' then
      begin
        idImap_Mail.UIDStoreFlags(TheUID,sdReplace,[mfrecent]);
      end
      else begin
        idImap_Mail.UIDStoreFlags(TheUID,sdReplace,[mfseen]);
      end;
      Application.ProcessMessages;
    end;

    dm_PCM.qry_Work.SQL.Text:= 'SELECT COUNT(*) as anzahl FROM manager_emails Where readEmail = :reaaad and ID_Benutzer = :ID_Benutzer and ID_emailkonfiguration = :ID_Account and id_main = :id_main and id_sub = :id_sub';
    dm_PCM.qry_Work.ParamByName('reaaad').AsString:= '0';
    dm_PCM.qry_Work.ParamByName('ID_Benutzer').asInteger:= dm_pcm.iIDBenutzerPCM;
    dm_PCM.qry_Work.ParamByName('ID_Account').AsInteger:= iID_account;
    dm_PCM.qry_Work.ParamByName('id_main').AsInteger:= iParent;
    dm_PCM.qry_Work.ParamByName('id_sub').AsInteger:= iSub;
    dm_PCM.qry_Work.open;
    iAnzahlCount:= dm_PCM.qry_Work.FieldByName('anzahl').AsInteger;
    dm_PCM.qry_Work.Close;
    Application.ProcessMessages;
    stbr_user.Panels[1].Text := Format(rs_PCMManager_AnzahlElemente, [qry_Mail.RecordCount]) + ', ' +Format(rs_PCMManager_AnzahlungelesenerElemente, [iAnzahlCount]);
    stbr_user.Panels[2].text := rs_PCMManager_Uebermittlungabgeschlossen;
    if iAnzahlCount > 0 then
      trlst_EmailFolder.FocusedNode.Values[1]:= iAnzahlCount
    else
      trlst_EmailFolder.FocusedNode.Values[1]:= '';
    Mail.Free;
  end;
  sPrevAccount:=sAccount;
end;
{$EndRegion Sonstige}
////////////////////////////////////////////////////////////////////////////////
// FormFunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunctions}
procedure Tfrm_Mail.FormDestroy(Sender: TObject);
begin
  SetGridViews(false);
end;
procedure Tfrm_Mail.FormShow(Sender: TObject);
begin
  grdDBTblView_MailsBetreff.Caption:= rs_PCMManager_Betreff;
  grdDBTblView_MailsErhalten.Caption:= rs_PCMManager_Erhalten;
  grdDBTblView_MailsGroesse.Caption:= rs_PCMManager_Groeﬂe;
  grdDBTblView_MailsVon.Caption:= rs_PCMManager_Absender;
  AAccount:= '';
  if GlobalWebView2Loader.Initialized then
    GlobalWebView2Loader.Destroy;
  GlobalWebView2Loader:= TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
  GlobalWebView2Loader.StartWebView2;

//  dm_PCM.qry_Work.SQL.Text:= 'DELETE FROM manager_emails where ID_Benutzer = :ID_Benutzer';
//  dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= dm_pcm.iIDBenutzerPCM;
//  dm_PCM.qry_Work.ExecSQL;
//  qry_Mail.SQL.Text:= 'SELECT * FROM manager_emails Where ID_Benutzer = :ID_Benutzer';
//  qry_Mail.ParamByName('ID_Benutzer').AsInteger:= dm_pcm.iIDBenutzerPCM;
//  qry_Mail.open;
  trlst_EmailFolder.Clear;
  m_currentpath := GetCurrentDir();
  m_uidlfile := m_currentpath + '\uidl.txt';
  FOAuth2_Enhanced := TEnhancedOAuth2Authenticator.Create(nil);
  IMAPStart;
  SetGridViews(True)
end;
{$EndRegion FormFunctions}
end.
