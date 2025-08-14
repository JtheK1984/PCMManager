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
  IdMessageCollection,
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
  System.Generics.Collections,
  System.ImageList,
  System.Net.URLClient,
  Winapi.Windows,
  System.SysUtils,
  System.UITypes,
  System.Threading,
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
  cxImageComboBox, dxActivityIndicator, cxProgressBar, cxLabel;
  {$EndRegion uses}
type
  {$Region Type}
  TFolderStructure = class
  public
    AccountName: string;
    AccountID: Integer;
    FolderIDs: TDictionary<string, Integer>;   // Hauptordner → ID
    SubFolderIDs: TDictionary<string, Integer>; // Unterordner → ID

    FoldersOrder: TList<string>;                                // Reihenfolge Hauptordner
    SubFoldersOrder: TObjectDictionary<string, TList<string>>;  // Hauptordner → Liste ihrer Unterordner

    constructor Create;
    destructor Destroy; override;
  end;

  TShowFoldersThread = class(TThread)
  private
    FUserID: Integer;
    FResult: TArray<TFolderStructure>;
    procedure SyncToUI;
  protected
    procedure Execute; override;
  public
    constructor Create(UserID: Integer);
    destructor Destroy; override;
  end;

  TMailboxSyncThread = class(TThread)
  private
    FAccount: string;
    FiID_Account, FiParent, FiSub: Integer;
    procedure UpdateUI;
  protected
    procedure Execute; override;
  public
    constructor Create(const AAccount: string; AiID_Account, AiParent, AiSub: Integer);
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
    ind_wait: TdxActivityIndicator;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    prgbr_Main: TcxProgressBar;
    cxLabel1: TcxLabel;
    trlst_EmailFolderColumn3: TcxTreeListColumn;
    trlst_EmailFolderColumn4: TcxTreeListColumn;
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
    sUser: String;
    sPrevAccount: String;
    m_currentpath: WideString;
    m_uidlfile: WideString;
    CurrNode: TcxTreelistnode;
    FOAuth2_Enhanced : TEnhancedOAuth2Authenticator;
    xoauthSASL : TIdSASLListEntry;
    AAccount: string;
    sAccount: string;
    sMailBoxName: string;
    SaveGridViewMail: TSavedGridView;
    FWebBrowser: TAbstractWebBrowser;
    FConnectedAccount: string;
    iID_Account1: integer;
    iParent1: integer;
    iSub1: integer;
    procedure SetGridViews(Show:boolean);
    function CheckValidFile(AFileName,APath: String) : boolean;
    procedure InitializeBrowser;
    procedure ConvertFileHTML(AFile:String);
    procedure CreateFullFolder( folder: String );
    procedure MailAuthenticate;
    procedure SetupAuthenticator(ARefreshToken: String);
    procedure ShowFoldersThreadTerminated(Sender: TObject);
    procedure MailboxThreadTerminated(Sender: TObject);
    function BuildMailFolderPath(const UID, MailBoxName: string): string;
    function GetMailboxName(AAccount, AParent, ASub: Integer; out sTrennzeichen: string): string;
    function CountUnreadMails( const ID_Account, ID_Main, ID_Sub: Integer): Integer;
    function ResolveAccountData(const AAccount: string; out iID_Account, iParent, iSub: Integer): Boolean;
    procedure LoadExistingUIDsFromDB(const ID_Account, ID_Main, ID_Sub: Integer; List: TStrings);
    procedure BatchInsertMailDB(const Msg: TIdMessage; const UID, ASize: string; const ID_Account, ID_Main, ID_Sub: Integer; const Flags: TIdMessageFlagsSet; const iAnhang: Integer);
    procedure ConnectIfRequired(const AAccount: string);
    procedure LoadMailsFromDB(const AID_Account, AID_Main, AID_Sub: Integer);
    function FindNodeByIDs(const AAccount: string; AParentID, ASubID: Integer): TcxTreeListNode;
    procedure ConnectWithCustomIMAP(const AAccount: string; AIMAP: TIdIMAP4);
    procedure GetAllUIDsWithIMAP(AIMAP: TIdIMAP4; UIDList: TStrings);
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
  PCM.Helper,
  PCMManager.Modul.E_Mail.Show,
  PCm.Functions.Synch.Wait,
  PCM.Browser.FullScreen,
  uwvLoader,
  IdSASL.OAuth.XOAUTH2,
  PCMManager.Modul.E_Mail.Read,
  PCMManager.Modul.E_Mail.Mailbox,
  PCM.Manager.Strings,
  PCMManager.Modul.E_Mail.Signaturen, PCM.SendMail;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Threads                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Threads}
// FOlder
constructor TFolderStructure.Create;
begin
  inherited Create;
  FolderIDs := TDictionary<string, Integer>.Create;
  SubFolderIDs := TDictionary<string, Integer>.Create;
  FoldersOrder := TList<string>.Create;
  SubFoldersOrder := TObjectDictionary<string, TList<string>>.Create([doOwnsValues]);
end;
destructor TFolderStructure.Destroy;
begin
  FolderIDs.Free;
  SubFolderIDs.Free;
  FoldersOrder.Free;
  SubFoldersOrder.Free;
  inherited Destroy;
end;
constructor TShowFoldersThread.Create(UserID: Integer);
begin
  inherited Create(False);
  FreeOnTerminate := True;
  OnTerminate := frm_mail.ShowFoldersThreadTerminated;
  FUserID := UserID;
end;
procedure TShowFoldersThread.Execute;
var
  qry, qry1, qry2: TFDQuery;
  AccountData: TFolderStructure;
  mainFolderName, subFolderName: string;
begin
  qry := TFDQuery.Create(nil);
  qry.Connection := dm_pcm.CreateThreadDBConnection;
  qry1 := TFDQuery.Create(nil);
  qry1.Connection := qry.Connection;
  qry2 := TFDQuery.Create(nil);
  qry2.Connection := qry.Connection;

  try
    qry.SQL.Text := 'SELECT * FROM manager_emailkonfiguration WHERE id_Benutzer = :ID';
    qry.ParamByName('ID').AsInteger := FUserID;
    qry.Open;

    while not qry.Eof do
    begin
      AccountData := TFolderStructure.Create;
      AccountData.AccountName := qry.FieldByName('Benutzer').AsString;
      AccountData.AccountID := qry.FieldByName('ID').AsInteger;

      // Hauptordner holen – sortiert
      qry1.SQL.Text :=
        'SELECT ID, Anzeige FROM manager_email_postfach ' +
        'WHERE Typ = 0 AND Abonnieren = true AND ID_Manager_eMail = :ID ' +
        'ORDER BY Sortierung';
      qry1.ParamByName('ID').AsInteger := AccountData.AccountID;
      qry1.Open;

      while not qry1.Eof do
      begin
        mainFolderName := qry1.FieldByName('Anzeige').AsString;
        AccountData.FoldersOrder.Add(mainFolderName);
        AccountData.FolderIDs.Add(mainFolderName, qry1.FieldByName('ID').AsInteger);

        // Unterordner holen – sortiert
        qry2.SQL.Text :=
          'SELECT ID, Anzeige FROM manager_email_postfach ' +
          'WHERE Parent = :parent AND Abonnieren = true ORDER BY Sortierung';
        qry2.ParamByName('parent').AsInteger := qry1.FieldByName('ID').AsInteger;
        qry2.Open;

        if not qry2.IsEmpty then
        begin
          AccountData.SubFoldersOrder.Add(mainFolderName, TList<string>.Create);
          while not qry2.Eof do
          begin
            subFolderName := qry2.FieldByName('Anzeige').AsString;
            AccountData.SubFoldersOrder[mainFolderName].Add(subFolderName);
            AccountData.SubFolderIDs.Add(subFolderName, qry2.FieldByName('ID').AsInteger);
            qry2.Next;
          end;
        end;

        qry2.Close;
        qry1.Next;
      end;
      qry1.Close;

      FResult := FResult + [AccountData];
      qry.Next;
    end;
    qry.Close;

    Synchronize(SyncToUI);
  finally
    qry2.Free;
    qry1.Free;
    qry.Free;
  end;
end;
procedure TShowFoldersThread.SyncToUI;
var
  acc: TFolderStructure;
  mainNode, subNode, subSubNode: TcxTreeListNode;
  mainFolderName, subFolderName: string;
begin
  frm_Mail.trlst_EmailFolder.BeginUpdate;
  try
    frm_Mail.trlst_EmailFolder.Clear;

    while frm_Mail.trlst_EmailFolder.ColumnCount < 4 do
      frm_Mail.trlst_EmailFolder.CreateColumn.Visible := False;

    for acc in FResult do
    begin
      // Account-Knoten
      mainNode := frm_Mail.trlst_EmailFolder.AddChild(nil);
      mainNode.Values[0] := acc.AccountName;
      mainNode.Values[2] := 0; // ParentID = 0
      mainNode.Values[3] := 0; // SubID = 0

      // Hauptordner in der DB-Reihenfolge
      for mainFolderName in acc.FoldersOrder do
      begin
        subNode := frm_Mail.trlst_EmailFolder.AddChild(mainNode);
        subNode.Values[0] := mainFolderName;
        subNode.Values[2] := 0; // Parent muss 0, weil direkt unter Account
        if acc.FolderIDs.ContainsKey(mainFolderName) then
          subNode.Values[3] := acc.FolderIDs[mainFolderName]
        else
          subNode.Values[3] := 0;

        // Unterordner nur, wenn vorhanden
        if acc.SubFoldersOrder.ContainsKey(mainFolderName)
           and (acc.SubFoldersOrder[mainFolderName].Count > 0) then
        begin
          for subFolderName in acc.SubFoldersOrder[mainFolderName] do
          begin
            subSubNode := frm_Mail.trlst_EmailFolder.AddChild(subNode);
            subSubNode.Values[0] := subFolderName;
            subSubNode.Values[2] := acc.FolderIDs[mainFolderName]; // Parent = Hauptordner-ID
            if acc.SubFolderIDs.ContainsKey(subFolderName) then
              subSubNode.Values[3] := acc.SubFolderIDs[subFolderName]
            else
              subSubNode.Values[3] := 0;
          end;
        end;
      end;
    end;

    frm_Mail.trlst_EmailFolder.FullExpand;
    frm_Mail.stbr_user.Panels[0].Text := 'Online';
  finally
    frm_Mail.trlst_EmailFolder.EndUpdate;
  end;
end;
destructor TShowFoldersThread.Destroy;
begin
  for var acc in FResult do
    acc.Free;
  FResult := nil;
  inherited Destroy;
end;
procedure Tfrm_Mail.ShowFoldersThreadTerminated(Sender: TObject);
begin
  ind_wait.Active:= false;
  dxLayoutGroup3.ItemIndex:= 0;
  trlst_EmailFolder.OnChange:= tl_EmailFolderChange;
  frm_Mail.stbr_user.Panels[0].Text := 'Ordnerabruf fertig';
end;
// Mailbox
constructor TMailboxSyncThread.Create(const AAccount: string; AiID_Account, AiParent, AiSub: Integer);
begin
  inherited Create(False);
  FreeOnTerminate := True;
  OnTerminate := frm_mail.MailboxThreadTerminated;
  FAccount := AAccount;
  FiID_Account := AiID_Account;
  FiParent := AiParent;
  FiSub := AiSub;
end;
procedure TMailboxSyncThread.UpdateUI;
begin
  if Assigned(frm_Mail) and Assigned(frm_Mail.stbr_user) and (frm_Mail.stbr_user.Panels.Count > 0) then
  begin
    frm_Mail.LoadMailsFromDB(FiID_Account, FiParent, FiSub);
  end;
end;
procedure TMailboxSyncThread.Execute;
var
  IMAP: TIdIMAP4;
  ExistingUIDs, ServerUIDs, NewUIDs: TStringList;
  sSize, MailBoxName, sTrenn, UID, sfolder, sfilename, sAnhang, Flagtemp: string;
  Msg, MailA: TIdMessage;
  Flags: TIdMessageFlagsSet;
  i, iAnhang: Integer;
  sl: TStringList;
  ssearch: string;
  sreplace: string;
  WinFile: TextFile;
  Line: String;
begin
  IMAP := TIdIMAP4.Create(nil);
  ExistingUIDs := TStringList.Create;
  ServerUIDs   := TStringList.Create;
  NewUIDs      := TStringList.Create;
  try
    try
      frm_Mail.ConnectWithCustomIMAP(FAccount, IMAP);
      MailBoxName := frm_Mail.GetMailboxName(FiID_Account, FiParent, FiSub, sTrenn);
      if not IMAP.SelectMailBox(MailBoxName) then
      begin
        TThread.Queue(nil, procedure
        begin
          frm_Mail.stbr_user.Panels[0].Text := Format('Fehler: Ordner "%s" konnte nicht geöffnet werden', [MailBoxName]);
        end);
        Exit;
      end;

      // Nur wenn selektiert, weitermachen
      if IMAP.ConnectionState <> csSelected then
      begin
        Exit;
      end;
      frm_Mail.LoadExistingUIDsFromDB(FiID_Account, FiParent, FiSub, ExistingUIDs);
      frm_Mail.GetAllUIDsWithIMAP(IMAP, ServerUIDs);

      for i := 0 to ServerUIDs.Count - 1 do
        if ExistingUIDs.IndexOf(ServerUIDs[i]) = -1 then
          NewUIDs.Add(ServerUIDs[i]);

      if NewUIDs.Count = 0 then
      begin
        TThread.Queue(nil, procedure
        begin
          frm_Mail.stbr_user.Panels[0].Text := Format('Keine neuen E-Mails in %s', [FAccount]);
        end);
        Exit;
      end;

      Msg := TIdMessage.Create(nil);
      try
        for i := 0 to NewUIDs.Count - 1 do
        begin
          UID := NewUIDs[i];
          IMAP.UIDRetrieveFlags(UID, Flags);
          IMAP.UIDRetrieveHeader(UID, Msg);
          sSize:= IntToStr(Round(IMAP.UIDRetrieveMsgSize(UID) / 1024)) + ' KB';
          Flagtemp := IfThen(mfSeen in Flags, rs_PCMManager_Flagread, rs_PCMManager_Flagunread);
          MailA := TIdMessage.Create(nil);
          try
            MailA.CharSet := 'UTF-8';
            IMAP.UIDRetrieve(UID, MailA);
            sfolder := frm_Mail.BuildMailFolderPath(UID, MailBoxName);
            frm_Mail.CreateFullFolder(sfolder);
            iAnhang := 0;
            if MailA.MessageParts.Count > 0 then
            begin
             for var iParts := 0 to MailA.MessageParts.Count - 1 do
              begin
                if MailA.MessageParts.Items[iParts] is TIdText then
                  TIdText(MailA.MessageParts.Items[iParts]).Body.SaveToFile(sfolder + '\mail.html');

                if MailA.MessageParts.Items[iParts] is TIdAttachment then
                begin
                  var Attachment := TIdAttachment(MailA.MessageParts.Items[iParts]);

                  // Falls Attachment Klasse TIdAttachmentFile ist, nehmen wir FileName, sonst Default
                  if Attachment is TIdAttachmentFile then
                    sfilename := TIdAttachmentFile(Attachment).FileName
                  else
                    sfilename := 'unknown_attachment_' + IntToStr(iParts);

                  // Verzeichnis sicherstellen
                  frm_Mail.CreateFullFolder(sfolder);

                  // Wenn kein Dateiname, Dateiname vergeben
                  if sfilename = '' then
                    sfilename := 'attachment_' + IntToStr(iParts) + '.bin';

                  try
                    TIdAttachmentFile(Attachment).SaveToFile(IncludeTrailingPathDelimiter(sfolder) + sfilename);
                    sAnhang := IncludeTrailingPathDelimiter(sfolder) + sfilename;
                    if frm_Mail.CheckValidFile(sfilename, IncludeTrailingPathDelimiter(sfolder) + 'mail.html') then
                      iAnhang := 1;
                  except
                    on E: Exception do
                    begin
                      // Optional: Fehler loggen oder anzeigen
                      TThread.Queue(nil,
                        procedure
                        begin
                          frm_Mail.stbr_user.Panels[0].Text :=
                            Format('Fehler beim Speichern der Anlage %s: %s', [sfilename, E.Message]);
                        end);
                    end;
                  end;
                end;
              end;
            end else
            begin
              MailA.Body.SaveToFile(sfolder + '\mail.html');
            end;

            sl:=TStringList.Create;
            for var iAN := 0 to Pred(Maila.MessageParts.Count) do
            begin
              if (Maila.MessageParts.Items[iAN] is TIdAttachment) then
              begin
                ssearch:= TIdAttachment(Maila.MessageParts.Items[iAN]).ContentID;
                ssearch:= '"cid:' + Copy(ssearch,2,Length(ssearch) -2)  + '"';
                sreplace:= TIdAttachment(Maila.MessageParts.Items[iAN]).Filename;
                if Length(ssearch) > 6 then
                begin
                  AssignFile(WinFile,sFolder + '\mail.html');
                  Reset(Winfile);
                  while Not Eof(WinFile) do
                  begin
                    ReadLn(WinFile, Line);
                    Line := StringReplace(Line, ssearch, sreplace, [rfReplaceAll]);
                    sl.Add(Line);
                  end;
                  CloseFile(WinFile);
                  sl.SaveToFile(sfolder +'\mail.html');
                  sl.Clear;
                end;
              end;
            end;
            frm_Mail.ConvertFileHTML(sfolder + '\mail.html');

            frm_Mail.BatchInsertMailDB(Msg, UID, sSize, FiID_Account, FiParent, FiSub, Flags, iAnhang);
          finally
            MailA.Free;
          end;
          TThread.Queue(nil, procedure
          begin
            frm_Mail.stbr_user.Panels[2].Text := Format('Lade %d/%d...', [i + 1, NewUIDs.Count]);
          end);
        end;
      finally
        Msg.Free;
      end;

      TThread.Queue(nil, UpdateUI);
    except
      on E: Exception do
      begin
        TThread.Queue(nil, procedure
        begin
          frm_Mail.stbr_user.Panels[0].Text :=
            Format('Fehler bei %s: %s', [FAccount, E.Message]);
        end);
      end;
    end;
  finally
    IMAP.Free;
    ExistingUIDs.Free;
    ServerUIDs.Free;
    NewUIDs.Free;
  end;
end;
procedure Tfrm_Mail.MailboxThreadTerminated(Sender: TObject);
var
  Node: TcxTreeListNode;
  Thr: TMailboxSyncThread;
  i: integer;
begin
  if not (Sender is TMailboxSyncThread) then Exit;
  Thr := TMailboxSyncThread(Sender);
  Node := FindNodeByIDs(Thr.FAccount, Thr.FiParent, Thr.FiSub);
  if Assigned(Node) then
  begin
    i:= CountUnreadMails(Thr.FiID_Account, Thr.FiParent, Thr.FiSub);
    if i > 0 then
      Node.Values[1] := CountUnreadMails(Thr.FiID_Account, Thr.FiParent, Thr.FiSub)
    else
      Node.Values[1] := '';
  end;
  if Assigned(stbr_user) and (stbr_user.Panels.Count > 0) then
  begin
    stbr_user.Panels[0].Text := 'Sync abgeschlossen: ' + Thr.FAccount;
    if stbr_user.Panels.Count > 2 then
      stbr_user.Panels[2].Text := '';
  end;
end;
procedure Tfrm_Mail.ConnectWithCustomIMAP(const AAccount: string; AIMAP: TIdIMAP4);
var
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  xoauthSASL: TIdSASLListEntry;
begin
  // Prüfen: Verbindung besteht UND Account passt → nichts tun
  if AImap.Connected and SameText(FConnectedAccount, AAccount) then
    Exit;

  if AIMAP.Connected then
    AIMAP.Disconnect;

  dm_PCM.qry_Work.SQL.Text :=
    'SELECT * FROM manager_emailkonfiguration ' +
    'WHERE Benutzer = :Benutzer AND ID_Benutzer = :ID';
  dm_PCM.qry_Work.ParamByName('Benutzer').AsString := AAccount;
  dm_PCM.qry_Work.ParamByName('ID').AsInteger := dm_pcm.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  if dm_PCM.qry_Work.IsEmpty then
  begin
    dm_PCM.qry_Work.Close;
    raise Exception.CreateFmt('Account-Daten für "%s" nicht gefunden.', [AAccount]);
  end;

  AIMAP.Host := dm_PCM.qry_Work.FieldByName('PostEingangsserver').AsString;
  AIMAP.Port := dm_PCM.qry_Work.FieldByName('PortEingangsserver').AsInteger;

  if dm_PCM.qry_Work.FieldByName('Authtype').AsInteger = 0 then
  begin
    AIMAP.SASLMechanisms.Clear;
    AIMAP.AuthType := iatUserPass;

    IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    AIMAP.IOHandler := IdSSLIOHandlerSocket;
    AIMAP.UseTLS := utUseImplicitTLS;

    AIMAP.Username := dm_PCM.qry_Work.FieldByName('Benutzer').AsString;
    AIMAP.Password := dm_PCM.qry_Work.FieldByName('Passwort').AsString;

    AIMAP.Connect;
  end
  else
  begin
    dm_PCM.Provider.AccessTokenEndpoint := dm_PCM.qry_Work.FieldByName('AccessTokenEndpoint').AsString;
    dm_PCM.Provider.AuthenticationType := TIdSASLXOAuth;
    dm_PCM.Provider.AuthName := 'Microsoft';
    dm_PCM.Provider.AuthorizationEndpoint := dm_PCM.qry_Work.FieldByName('AuthorizationEndpoint').AsString;
    dm_PCM.Provider.ClientAccount := dm_PCM.qry_Work.FieldByName('Benutzer').AsString;
    dm_PCM.Provider.ClientID := dm_PCM.qry_Work.FieldByName('ClientID').AsString;
    dm_PCM.Provider.ClientSecret := dm_PCM.qry_Work.FieldByName('ClientSecret').AsString;
    dm_PCM.Provider.ImapHost := dm_PCM.qry_Work.FieldByName('PostEingangsserver').AsString;
    dm_PCM.Provider.ImapPort := dm_PCM.qry_Work.FieldByName('PortEingangsserver').AsInteger;
    dm_PCM.Provider.Scopes := dm_PCM.qry_Work.FieldByName('Scopes').AsString;
    dm_PCM.Provider.SmtpHost := dm_PCM.qry_Work.FieldByName('PostAusgangsserver').AsString;
    dm_PCM.Provider.SmtpPort := dm_PCM.qry_Work.FieldByName('PortAusgangsserver').AsInteger;
    dm_PCM.Provider.TLS := utUseExplicitTLS;

    if dm_PCM.qry_Work.FieldByName('RefreshToken').AsString = '' then
      MailAuthenticate;

    SetupAuthenticator(dm_PCM.qry_Work.FieldByName('RefreshToken').AsString);

    dm_PCM.FOAuth2_Enhanced.ClientID := dm_PCM.Provider.ClientID;
    dm_PCM.FOAuth2_Enhanced.ClientSecret := dm_PCM.Provider.ClientSecret;
    dm_PCM.FOAuth2_Enhanced.RefreshAccessTokenIfRequired;

    IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvTLSv1_2;
    AIMAP.IOHandler := IdSSLIOHandlerSocket;
    AIMAP.UseTLS := utUseExplicitTLS;

//    AIMAP.SASLMechanisms.Clear;
    xoauthSASL := AIMAP.SASLMechanisms.Add;
    xoauthSASL.SASL := dm_PCM.Provider.AuthenticationType.Create(nil);
    TIdSASLOAuthBase(xoauthSASL.SASL).Token := dm_PCM.FOAuth2_Enhanced.AccessToken;
    TIdSASLOAuthBase(xoauthSASL.SASL).User := dm_PCM.Provider.ClientAccount;

    AIMAP.AuthType := iatSASL;
    AIMAP.Connect;
  end;

  dm_PCM.qry_Work.Close;
  FConnectedAccount := AAccount;
end;
procedure Tfrm_Mail.GetAllUIDsWithIMAP(AIMAP: TIdIMAP4; UIDList: TStrings);
var
  SearchRec: array of TIdIMAP4SearchRec;
  MsgSeqNums: TStringList;
  i, SeqNum: Integer;
  UID: String;
begin
  UIDList.Clear;
  SetLength(SearchRec, 1);
  SearchRec[0].SearchKey := skAll;
  if AIMAP.SearchMailBox(SearchRec) then
  begin
    for i := 0 to Length(AIMAP.MailBox.SearchResult) - 1 do
    begin
      SeqNum := AIMAP.MailBox.SearchResult[i];
      if (SeqNum > 0) and AIMAP.GetUID(SeqNum, UID) then
        UIDList.Add(UID);
    end;
   end;
end;
function Tfrm_Mail.FindNodeByIDs(const AAccount: string; AParentID, ASubID: Integer): TcxTreeListNode;
  function SearchChildren(ParentNode: TcxTreeListNode): TcxTreeListNode;
  var
    Child: TcxTreeListNode;
    S,s1: String;
  begin
    Result := nil;
    Child := ParentNode.getFirstChild;
    while Assigned(Child) and not Assigned(Result) do
    begin
      s:= VarToStr(Child.Values[0]) +',' + VarToStr(Child.Values[2]) + ',' + VarToStr(Child.Values[3]);
      s1:= '' +',' + IntToStr(AParentID) + ',' + IntToStr(ASubID);

      if (StrToIntDef(VarToStr(Child.Values[2]), -1) = AParentID) and
         (StrToIntDef(VarToStr(Child.Values[3]), -1) = ASubID) then
        Exit(Child);
      Result := SearchChildren(Child);
      Child := Child.getNextSibling;
    end;
  end;
var
  RootNode: TcxTreeListNode;
begin
  Result := nil;
  for var i := 0 to trlst_EmailFolder.Root.Count - 1 do
  begin
    RootNode := trlst_EmailFolder.Root.Items[i];
    if SameText(VarToStr(RootNode.Values[0]), AAccount) then
    begin
      Result := SearchChildren(RootNode);
      Break;
    end;
  end;
end;
procedure Tfrm_Mail.LoadMailsFromDB(const AID_Account, AID_Main, AID_Sub: Integer);
begin
  qry_Mail.Close;
  qry_Mail.SQL.Text :=
    'SELECT * FROM manager_emails ' +
    'WHERE ID_Benutzer = :ID_Benutzer ' +
    '  AND ID_emailkonfiguration = :ID_Account ' +
    '  AND id_main = :id_main ' +
    '  AND id_sub = :id_sub ' +
    'ORDER BY Erhalten DESC'; // neueste oben, optional

  qry_Mail.ParamByName('ID_Benutzer').AsInteger := dm_pcm.iIDBenutzerPCM;
  qry_Mail.ParamByName('ID_Account').AsInteger := AID_Account;
  qry_Mail.ParamByName('id_main').AsInteger := AID_Main;
  qry_Mail.ParamByName('id_sub').AsInteger := AID_Sub;

  qry_Mail.Open;

  // UI-Statusleiste aktualisieren
  stbr_user.Panels[0].Text := Format('%d E-Mails geladen', [qry_Mail.RecordCount]);
  stbr_user.Panels[1].Text := Format('Ungelesen: %d', [CountUnreadMails(AID_Account, AID_Main, AID_Sub)]);
  stbr_user.Panels[2].Text := '';
end;
function Tfrm_Mail.ResolveAccountData(const AAccount: string; out iID_Account, iParent, iSub: Integer): Boolean;
begin
  Result := False;
  iID_Account := -1;
  iParent := -1;
  iSub := -1;

  // 1. Hole Postfach-Daten (Ordner) für den aktuellen Account und ausgewähltes Postfach
  dm_PCM.qry_Work.SQL.Text :=
    'SELECT ID, Parent, Postfach, Trennzeichen ' +
    'FROM manager_email_postfach ' +
    'WHERE Anzeige = :Anzeige ' +
    'AND ID_manager_email IN (' +
    '  SELECT ID FROM manager_emailkonfiguration WHERE Benutzer = :Account )';
  dm_PCM.qry_Work.ParamByName('Anzeige').AsString := trlst_EmailFolder.FocusedNode.Values[0];
  dm_PCM.qry_Work.ParamByName('Account').AsString := AAccount;
  dm_PCM.qry_Work.Open;
  if dm_PCM.qry_Work.IsEmpty then
    Exit; // keine Daten gefunden, abbrechen

  iSub := dm_PCM.qry_Work.FieldByName('ID').AsInteger;
  iParent := dm_PCM.qry_Work.FieldByName('Parent').AsInteger;
  dm_PCM.qry_Work.Close;

  // 2. Hole die ID des Accounts aus der Email-Konfiguration
  dm_PCM.qry_Work.SQL.Text :=
    'SELECT ID FROM manager_emailkonfiguration ' +
    'WHERE Benutzer = :Benutzer AND ID_Benutzer = :ID';
  dm_PCM.qry_Work.ParamByName('ID').AsInteger := dm_pcm.iIDBenutzerPCM;
  dm_PCM.qry_Work.ParamByName('Benutzer').AsString := AAccount;
  dm_PCM.qry_Work.Open;
  if not dm_PCM.qry_Work.IsEmpty then
    iID_Account := dm_PCM.qry_Work.FieldByName('ID').AsInteger;
  dm_PCM.qry_Work.Close;

  Result := (iID_Account > 0) and (iSub >= 0);
end;
procedure Tfrm_Mail.tl_EmailFolderChange(Sender: TObject);
  function MyGetParentNode(Node: TcxTreeListNode;ALevel0: boolean): String;
  begin
    Result := '';
    if Node = nil then
      Exit;
    case Node.Level of
      0: Result := Node.Values[0];
      1: Result := Node.Parent.Values[0];
      2:
        begin
          if Assigned(Node.Parent) and Assigned(Node.Parent.Parent) then
            Result := Node.Parent.Parent.Values[0];
        end;
    else
      Result := Node.Parent.Values[0]; // für alle anderen Fälle sicherheitshalber
    end;
  end;
var
//  sCheckUser: string;
  iParent, iSub, iID_Account: Integer;
begin
  if trlst_EmailFolder.SelectionCount = 0 then Exit;
  if trlst_EmailFolder.FocusedNode = CurrNode then Exit;

  CurrNode := trlst_EmailFolder.FocusedNode;
//  sCheckUser := CurrNode.Values[0];

  try
    sAccount := MyGetParentNode(CurrNode, False);
  except
    Exit;
  end;

  laitm_Vorschau.Visible := False;
  grpbx_MailVorschau.Visible := False;
  if not ResolveAccountData(sAccount, iID_Account, iParent, iSub) then
    Exit;
  iID_Account1:= iID_Account;
  iParent1:= iParent;
  iSub1:= iSub;
  LoadMailsFromDB(iID_Account, iParent, iSub);
  ConnectIfRequired(sAccount);
  TMailboxSyncThread.Create(sAccount, iID_Account, iParent, iSub);
end;
procedure Tfrm_Mail.ConnectIfRequired(const AAccount: string);
var
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  xoauthSASL: TIdSASLListEntry;
begin
  // Prüfen: Verbindung besteht UND Account passt → nichts tun
  if idIMAP_Mail.Connected and SameText(FConnectedAccount, AAccount) then
    Exit;

  // Falls offen, aber mit anderem Account: trennen
  if idIMAP_Mail.Connected then
    idIMAP_Mail.Disconnect;

  // Accountdaten laden
  dm_PCM.qry_Work.SQL.Text :=
    'SELECT * FROM manager_emailkonfiguration ' +
    'WHERE Benutzer = :Benutzer AND ID_Benutzer = :ID';
  dm_PCM.qry_Work.ParamByName('Benutzer').AsString := AAccount;
  dm_PCM.qry_Work.ParamByName('ID').AsInteger := dm_pcm.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  if dm_PCM.qry_Work.IsEmpty then
  begin
    dm_PCM.qry_Work.Close;
    raise Exception.CreateFmt('Account-Daten für "%s" nicht gefunden.', [AAccount]);
  end;

  idIMAP_Mail.Host := dm_PCM.qry_Work.FieldByName('PostEingangsserver').AsString;
  idIMAP_Mail.Port := dm_PCM.qry_Work.FieldByName('PortEingangsserver').AsInteger;

  if dm_PCM.qry_Work.FieldByName('Authtype').AsInteger = 0 then
  begin
    // Klassisches Login mit Benutzer/Passwort
    idIMAP_Mail.SASLMechanisms.Clear;
    idIMAP_Mail.AuthType := iatUserPass;

    IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    idIMAP_Mail.IOHandler := IdSSLIOHandlerSocket;
    idIMAP_Mail.UseTLS := utUseImplicitTLS;

    idIMAP_Mail.Username := dm_PCM.qry_Work.FieldByName('Benutzer').AsString;
    idIMAP_Mail.Password := dm_PCM.qry_Work.FieldByName('Passwort').AsString;

    idIMAP_Mail.Connect;
  end
  else
  begin
    // OAuth2
    dm_PCM.Provider.AccessTokenEndpoint := dm_PCM.qry_Work.FieldByName('AccessTokenEndpoint').AsString;
    dm_PCM.Provider.AuthenticationType := TIdSASLXOAuth;
    dm_PCM.Provider.AuthName := 'Microsoft';
    dm_PCM.Provider.AuthorizationEndpoint := dm_PCM.qry_Work.FieldByName('AuthorizationEndpoint').AsString;
    dm_PCM.Provider.ClientAccount := dm_PCM.qry_Work.FieldByName('Benutzer').AsString;
    dm_PCM.Provider.ClientID := dm_PCM.qry_Work.FieldByName('ClientID').AsString;
    dm_PCM.Provider.ClientSecret := dm_PCM.qry_Work.FieldByName('ClientSecret').AsString;
    dm_PCM.Provider.ImapHost := dm_PCM.qry_Work.FieldByName('PostEingangsserver').AsString;
    dm_PCM.Provider.ImapPort := dm_PCM.qry_Work.FieldByName('PortEingangsserver').AsInteger;
    dm_PCM.Provider.Scopes := dm_PCM.qry_Work.FieldByName('Scopes').AsString;
    dm_PCM.Provider.SmtpHost := dm_PCM.qry_Work.FieldByName('PostAusgangsserver').AsString;
    dm_PCM.Provider.SmtpPort := dm_PCM.qry_Work.FieldByName('PortAusgangsserver').AsInteger;
    dm_PCM.Provider.TLS := utUseExplicitTLS;

    if dm_PCM.qry_Work.FieldByName('RefreshToken').AsString = '' then
      MailAuthenticate;

    SetupAuthenticator(dm_PCM.qry_Work.FieldByName('RefreshToken').AsString);

    dm_PCM.FOAuth2_Enhanced.ClientID := dm_PCM.Provider.ClientID;
    dm_PCM.FOAuth2_Enhanced.ClientSecret := dm_PCM.Provider.ClientSecret;
    dm_PCM.FOAuth2_Enhanced.RefreshAccessTokenIfRequired;

    idIMAP_Mail.IOHandler := IdSSLIOHandlerSocketIMAP;
    idIMAP_Mail.UseTLS := utUseExplicitTLS;

    xoauthSASL := idIMAP_Mail.SASLMechanisms.Add;
    xoauthSASL.SASL := dm_PCM.Provider.AuthenticationType.Create(nil);
    TIdSASLOAuthBase(xoauthSASL.SASL).Token := dm_PCM.FOAuth2_Enhanced.AccessToken;
    TIdSASLOAuthBase(xoauthSASL.SASL).User := dm_PCM.Provider.ClientAccount;

    idIMAP_Mail.AuthType := iatSASL;
    idIMAP_Mail.Connect;
  end;

  dm_PCM.qry_Work.Close;

  // Account, für den wir nun verbunden sind, merken
  FConnectedAccount := AAccount;
end;
function Tfrm_Mail.GetMailboxName(AAccount, AParent, ASub: Integer; out sTrennzeichen: string): string;
var
  sParent, sSub: string;
begin
  sTrennzeichen := '';
  Result := '';

  // Sub-Postfach
  dm_PCM.qry_Work.SQL.Text := 'SELECT Postfach, Trennzeichen FROM manager_email_postfach WHERE ID = :ID and ID_manager_email = :ID1';
  dm_PCM.qry_Work.ParamByName('ID').AsInteger := ASub;
  dm_PCM.qry_Work.ParamByName('ID1').AsInteger := AAccount;
  dm_PCM.qry_Work.Open;
  if not dm_PCM.qry_Work.IsEmpty then
  begin
    sSub := dm_PCM.qry_Work.FieldByName('Postfach').AsString;
    sTrennzeichen := dm_PCM.qry_Work.FieldByName('Trennzeichen').AsString;
  end;
  dm_PCM.qry_Work.Close;

  // Parent anhängen
  if AParent > 0 then
  begin
    dm_PCM.qry_Work.SQL.Text := 'SELECT Postfach FROM manager_email_postfach WHERE ID = :ID  and ID_manager_email = :ID1';
    dm_PCM.qry_Work.ParamByName('ID').AsInteger := AParent;
    dm_PCM.qry_Work.ParamByName('ID1').AsInteger := AAccount;
    dm_PCM.qry_Work.Open;
    if not dm_PCM.qry_Work.IsEmpty then
      sParent := dm_PCM.qry_Work.FieldByName('Postfach').AsString;
    dm_PCM.qry_Work.Close;

    Result := sParent + sTrennzeichen + sSub;
  end
  else
    Result := sSub;
end;
procedure Tfrm_Mail.LoadExistingUIDsFromDB(const ID_Account, ID_Main, ID_Sub: Integer; List: TStrings);
begin
  List.Clear;
  dm_PCM.qry_Work.SQL.Text :=
    'SELECT UIDL FROM manager_emails ' +
    'WHERE ID_Benutzer = :B AND ID_emailkonfiguration = :A ' +
    'AND id_main = :M AND id_sub = :S';
  dm_PCM.qry_Work.ParamByName('B').AsInteger := dm_pcm.iIDBenutzerPCM;
  dm_PCM.qry_Work.ParamByName('A').AsInteger := ID_Account;
  dm_PCM.qry_Work.ParamByName('M').AsInteger := ID_Main;
  dm_PCM.qry_Work.ParamByName('S').AsInteger := ID_Sub;
  dm_PCM.qry_Work.Open;
  while not dm_PCM.qry_Work.Eof do
  begin
    List.Add(dm_PCM.qry_Work.FieldByName('UIDL').AsString);
    dm_PCM.qry_Work.Next;
  end;
  dm_PCM.qry_Work.Close;
end;
procedure Tfrm_Mail.BatchInsertMailDB(const Msg: TIdMessage; const UID, ASize: string; const ID_Account, ID_Main, ID_Sub: Integer; const Flags: TIdMessageFlagsSet; const iAnhang: Integer);
begin
  dm_PCM.qry_Work.SQL.Text :=
    'INSERT INTO manager_emails ' +
    '(Anhang, Von, Email, CC, Betreff, Erhalten, Groesse, UIDL, readEmail, ID_Benutzer, ID_emailkonfiguration, id_main, id_sub) ' +
    'VALUES (:Anhang, :Von, :Email, :CC,:Betreff, :Erhalten, :Groesse, :UIDL, :readEmail, :IDB, :IDA, :IDM, :IDS)';

  dm_PCM.qry_Work.ParamByName('Anhang').AsInteger := iAnhang;
  dm_PCM.qry_Work.ParamByName('Von').AsString := Msg.From.Name;
  dm_PCM.qry_Work.ParamByName('Email').AsString := Msg.From.Address;
  dm_PCM.qry_Work.ParamByName('CC').AsString := Msg.CCList.EMailAddresses;
  dm_PCM.qry_Work.ParamByName('Betreff').AsString := Msg.Subject;
  dm_PCM.qry_Work.ParamByName('Erhalten').AsDateTime := Msg.Date;
  dm_PCM.qry_Work.ParamByName('Groesse').AsString := ASize;
  dm_PCM.qry_Work.ParamByName('UIDL').AsString := UID;
  dm_PCM.qry_Work.ParamByName('readEmail').AsInteger := Ord(mfSeen in Flags);
  dm_PCM.qry_Work.ParamByName('IDB').AsInteger := dm_pcm.iIDBenutzerPCM;
  dm_PCM.qry_Work.ParamByName('IDA').AsInteger := ID_Account;
  dm_PCM.qry_Work.ParamByName('IDM').AsInteger := ID_Main;
  dm_PCM.qry_Work.ParamByName('IDS').AsInteger := ID_Sub;
  dm_PCM.qry_Work.ExecSQL;
end;
function Tfrm_Mail.BuildMailFolderPath(const UID, MailBoxName: string): string;
begin
  Result := m_currentpath + '\' + sAccount + '\' + MailBoxName + '\' + UID;
  Result := StringReplace(Result, '/', '.', [rfReplaceAll]);
end;
function Tfrm_Mail.CountUnreadMails( const ID_Account, ID_Main, ID_Sub: Integer): Integer;
begin
  Result := 0;

  dm_PCM.qry_Work.SQL.Text :=
    'SELECT COUNT(*) AS anzahl ' +
    'FROM manager_emails ' +
    'WHERE readEmail = 0 ' +
    '  AND ID_Benutzer = :B ' +
    '  AND ID_emailkonfiguration = :A ' +
    '  AND id_main = :M ' +
    '  AND id_sub = :S';

  dm_PCM.qry_Work.ParamByName('B').AsInteger := dm_pcm.iIDBenutzerPCM;
  dm_PCM.qry_Work.ParamByName('A').AsInteger := ID_Account;
  dm_PCM.qry_Work.ParamByName('M').AsInteger := ID_Main;
  dm_PCM.qry_Work.ParamByName('S').AsInteger := ID_Sub;

  dm_PCM.qry_Work.Open;
  try
    if not dm_PCM.qry_Work.IsEmpty then
      Result := dm_PCM.qry_Work.FieldByName('anzahl').AsInteger;
  finally
    dm_PCM.qry_Work.Close;
  end;
end;
{$EndRegion Threads}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
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
      Line := StringReplace(Line, 'Ä', '&Auml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ä', '&auml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ë','&Euml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ë','&euml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ï','&Iuml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ï','&iuml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ö','&Ouml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ö','&ouml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ü','&Uuml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ü','&uuml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ß','&szlig;', [rfReplaceAll]);
      Line := StringReplace(Line, 'À','&Agrave;', [rfReplaceAll]);
      Line := StringReplace(Line, 'à','&agrave;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Á','&Aacute;', [rfReplaceAll]);
      Line := StringReplace(Line, 'á','&aacute;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Â','&Acirc;', [rfReplaceAll]);
      Line := StringReplace(Line, 'â','&Acirc;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ç','&Ccedil;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ç','&ccedil;', [rfReplaceAll]);
      Line := StringReplace(Line, 'È','&Egrave;', [rfReplaceAll]);
      Line := StringReplace(Line, 'è','&egrave;', [rfReplaceAll]);
      Line := StringReplace(Line, 'É','&Eacute;', [rfReplaceAll]);
      Line := StringReplace(Line, 'é','&eacute;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ê','&Ecirc;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ê','&ecirc;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ñ','&Ntilde;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ñ','&ntilde;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ò','&Ograve;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ò','&ograve;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ó','&Oacute;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ó','&oacute;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ô','&Ocirc;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ô','&ocirc;', [rfReplaceAll]);
      Line := StringReplace(Line, 'õ','&otilde;', [rfReplaceAll]);
      Line := StringReplace(Line, 'Ÿ','&Yuml;', [rfReplaceAll]);
      Line := StringReplace(Line, 'ÿ','&yuml;', [rfReplaceAll]);
      Line := StringReplace(Line, '“','&ldquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '”','&rdquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '„','&bdquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '«','&laquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '»','&raquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '‹','&lsaquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '›','&rsaquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '‘','&lsquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '’','&rsquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '‚','&sbquo;', [rfReplaceAll]);
      Line := StringReplace(Line, '„','&quot;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&larr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&uarr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&rarr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&darr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&harr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&varr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&rArr;', [rfReplaceAll]);
      Line := StringReplace(Line, '?','&hArr;', [rfReplaceAll]);
      Line := StringReplace(Line, '©','&copy;', [rfReplaceAll]);
      Line := StringReplace(Line, '®','&reg;', [rfReplaceAll]);
      Line := StringReplace(Line, '™','&trade;', [rfReplaceAll]);
      Line := StringReplace(Line, '§','&sect;', [rfReplaceAll]);
      Line := StringReplace(Line, '•','&bull;', [rfReplaceAll]);
      Line := StringReplace(Line, '·','&middot;', [rfReplaceAll]);
      Line := StringReplace(Line, '–','&ndash;', [rfReplaceAll]);
      Line := StringReplace(Line, '—','&mdash;', [rfReplaceAll]);
      Line := StringReplace(Line, '…','&hellip;', [rfReplaceAll]);
      Line := StringReplace(Line, '¨','&uml;', [rfReplaceAll]);
      Line := StringReplace(Line, '°','&deg;', [rfReplaceAll]);
      Line := StringReplace(Line, '¡','&iexcl;', [rfReplaceAll]);
      Line := StringReplace(Line, '¿','&iquest;', [rfReplaceAll]);
      Line := StringReplace(Line, '¦','&brvbar;', [rfReplaceAll]);
      Line := StringReplace(Line, '€','&euro;', [rfReplaceAll]);
      Line := StringReplace(Line, '£','&pound;', [rfReplaceAll]);
      Line := StringReplace(Line, '$','&dollar;', [rfReplaceAll]);
      Line := StringReplace(Line, '¼','&frac14;', [rfReplaceAll]);
      Line := StringReplace(Line, '½','&frac12;', [rfReplaceAll]);
      Line := StringReplace(Line, '¾','&frac34;', [rfReplaceAll]);
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
  uri := TURI.Create(dm_pcm.FOAuth2_Enhanced.AuthorizationRequestURI);
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
  dm_pcm.FOAuth2_Enhanced.ClientID := dm_PCM.Provider.ClientID;
  dm_pcm.FOAuth2_Enhanced.ClientSecret := dm_PCM.Provider.ClientSecret;
  dm_pcm.FOAuth2_Enhanced.Scope := dm_PCM.Provider.Scopes;
  dm_pcm.FOAuth2_Enhanced.RedirectionEndpoint := clientredirect;
  dm_pcm.FOAuth2_Enhanced.AuthorizationEndpoint := dm_PCM.Provider.AuthorizationEndpoint;
  dm_pcm.FOAuth2_Enhanced.AccessTokenEndpoint := dm_PCM.Provider.AccessTokenEndpoint;
  dm_pcm.FOAuth2_Enhanced.RefreshToken := ARefreshToken;
  dm_pcm.FOAuth2_Enhanced.AccessToken := '';
  dm_pcm.FOAuth2_Enhanced.AccessTokenExpiry := 0;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Sonstige                                                                   //
////////////////////////////////////////////////////////////////////////////////
{$Region Sonstige}
procedure Tfrm_Mail.dxBarLargeButton1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_Signatur,frm_Signatur);
  frm_Signatur.ShowModal;
end;
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
//  sAnhang: String;
  sMailBoxName1: string;
  strennzeichen: string;
begin
  grdDBTblView_MailsCellCTimer.Enabled := False;
  try
    sMailBoxName1 := GetMailboxName(  iID_Account1,  iParent1,  iSub1, strennzeichen);
    folder := m_currentpath + '\' + sAccount +  '\' + sMailBoxName1 + '\' + qry_Mail.FieldByName('UIDL').asString;
    folder := StringReplace(folder, '/', '.', [rfReplaceAll]);
    laitm_Vorschau.visible:= true;
    grpbx_MailVorschau.visible:= true;
    InitializeBrowser;
    FWebBrowser.Navigate(folder + '\mail.html');
  except
    on ep:Exception do
    begin
      SetMessageDialog(3,rs_PCMManager_MSGFehler,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
    end;
  end;
end;
procedure Tfrm_Mail.grdDBTblView_MailsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
  procedure GetFiles(const Directory: string);
  var
    SearchRec: TSearchRec;
    Path: string;
  begin
    if Directory = '' then Exit;
    Path := IncludeTrailingPathDelimiter(Directory);
    if FindFirst(Path + '*.*', faAnyFile and not faDirectory, SearchRec) = 0 then
    begin
      try
        repeat
          if (SearchRec.Name <> 'mail.html') and (SearchRec.Name <> '') then
          begin
            if CheckValidFile(SearchRec.Name, Directory + '\mail.html') then
            begin
              SetLength(frm_PCM_MailShow.arAnhang, Length(frm_PCM_MailShow.arAnhang) + 1);
              frm_PCM_MailShow.arAnhang[High(frm_PCM_MailShow.arAnhang)].sFileName := SearchRec.Name;
              frm_PCM_MailShow.arAnhang[High(frm_PCM_MailShow.arAnhang)].sFilePath := Directory + '\' + SearchRec.Name;
            end;
          end;
        until FindNext(SearchRec) <> 0;
      finally
        FindClose(SearchRec);
      end;
    end;
  end;
var
  fileName, folder : WideString;
  MailA: TIdMessage;
  i: integer;
  ssearch, sreplace: string;
  WinFile: TextFile;
  Line, sAnhang: String;
  sl: TStringList;
  sMailBoxName1: string;
  strennzeichen: string;
begin
  grdDBTblView_MailsCellCTimer.Enabled := False;
  Application.CreateForm(Tfrm_PCM_MailShow,frm_PCM_MailShow);
  try
    sMailBoxName1 := GetMailboxName(  iID_Account1,  iParent1,  iSub1, strennzeichen);
    folder := m_currentpath + '\' + sAccount +
      '\' + sMailBoxName1 + '\' + qry_Mail.FieldByName('UIDL').asString;
    folder := StringReplace(folder, '/', '.', [rfReplaceAll]);
    GetFiles(folder);
    laitm_Vorschau.visible:= true;
    grpbx_MailVorschau.visible:= true;
    InitializeBrowser;
    FWebBrowser.Navigate(folder + '\mail.html');
    if qry_mail.FieldByName('Von').asString  = '' then
    begin
      frm_PCM_MailShow.lbl_Von.Caption:= qry_mail.FieldByName('Email').asString;
      frm_PCM_MailShow.lbl_Von.Hint:= '';
    end
    else begin
      frm_PCM_MailShow.lbl_Von.Caption:= qry_mail.FieldByName('Von').asString + ' <' + qry_mail.FieldByName('Email').asString + '>';
      frm_PCM_MailShow.lbl_Von.Hint:= qry_mail.FieldByName('Email').asString;
    end;
    frm_PCM_MailShow.lbl_an.Caption:= sPrevAccount;
    frm_PCM_MailShow.lbl_an.Hint:= '';
    frm_PCM_MailShow.lbl_cc.Caption:= qry_mail.FieldByName('CC').asString;
    frm_PCM_MailShow.lbl_cc.Hint:= '';

    frm_PCM_MailShow.lbl_Betreff.Caption:= qry_mail.FieldByName('Betreff').asString;
    frm_PCM_MailShow.Caption:= 'Nachricht: ' + qry_mail.FieldByName('Betreff').asString;
    frm_PCM_MailShow.cxLabel1.Caption:= FormatDateTime('dd.MM.yyyy hh:mm',Maila.Date);

//    frm_PCM_MailShow.webbwr_Mail.Navigate(folder + '\mail.html');
    frm_PCM_MailShow.FWebBrowser.Navigate(folder + '\mail.html');
    frm_PCM_MailShow.ShowModal;
  except
    on ep:Exception do
    begin
      SetMessageDialog(3,rs_PCMManager_MSGFehler,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
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
var
  iAnzahl: integer;
begin
  FConnectedAccount := '';
  grdDBTblView_MailsBetreff.Caption:= rs_PCMManager_Betreff;
  grdDBTblView_MailsErhalten.Caption:= rs_PCMManager_Erhalten;
  grdDBTblView_MailsGroesse.Caption:= rs_PCMManager_Groeße;
  grdDBTblView_MailsVon.Caption:= rs_PCMManager_Absender;
  AAccount:= '';
  if GlobalWebView2Loader.Initialized then
    GlobalWebView2Loader.Destroy;
  GlobalWebView2Loader:= TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
  GlobalWebView2Loader.StartWebView2;
  trlst_EmailFolder.Clear;
  m_currentpath := GetCurrentDir();
  m_uidlfile := m_currentpath + '\uidl.txt';
  SetGridViews(True);
  ind_wait.Active:= true;
//  lactrl_wait.Visible:= true;
  stbr_user.Panels[0].Text := 'Verbinde mit Postfächern...';
  TShowFoldersThread.Create(dm_pcm.iIDBenutzerPCM);

end;
{$EndRegion FormFunctions}



end.

