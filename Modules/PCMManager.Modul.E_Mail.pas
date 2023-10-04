unit PCMManager.Modul.E_Mail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.ComCtrls, Vcl.ToolWin, dxStatusBar, cxContainer,
  cxEdit, cxListView, Vcl.ExtCtrls, cxPC,IdIMAP4,IdMessage,idAttachment,IdText,
  IdMessageClient,ShellAPI,dateutils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IdBaseComponent, IdComponent,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,IdExplicitTLSClientServerBase,
  cxCustomData, cxStyles, dxScrollbarAnnotations, cxTL, cxTextEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer,strutils, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxDBData, dxmdaset, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox,
  System.ImageList, Vcl.ImgList, Vcl.OleCtrls,
  SHDocVw, dxBar,System.UITypes, IdTCPConnection, IdTCPClient,IdAttachmentFile,
  cxSplitter, cxGridCustomPopupMenu, cxGridPopupMenu, cxCurrencyEdit,PCm.Functions,
  dxSkinWXI;

type
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
    grpbx_Mail: TcxGroupBox;
    grpbx_Postfach: TcxGroupBox;
    webbwr_Mail: TWebBrowser;
    cxTreeList1Column2: TcxTreeListColumn;
    grpbx_MailVorschau: TcxGroupBox;
    qry_Mail: TFDQuery;
    grdDBTblView_MailsID: TcxGridDBColumn;
    grdDBTblView_MailsUIDL: TcxGridDBColumn;
    grdDBTblView_MailsData: TcxGridDBColumn;
    grdDBTblView_MailsfileName: TcxGridDBColumn;
    brmgr_Email: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    idImap_Mail: TIdIMAP4;
    cxSplitter1: TcxSplitter;
    pm_Einnahmen: TcxGridPopupMenu;
    dxBarPopupMenu1: TdxBarPopupMenu;
    NeueEMail1: TdxBarButton;
    EMaillschen1: TdxBarButton;
    EMaillschen2: TdxBarButton;
    Antworten1: TdxBarButton;
    Antworten2: TdxBarButton;
    EMailweiterleiten1: TdxBarButton;
    Alsgelesenmarkieren1: TdxBarButton;
    pnl_Design: TcxGroupBox;
    procedure FormShow(Sender: TObject);
    procedure tl_EmailFolderChange(Sender: TObject);
    procedure grdDBTblView_MailsCustomDrawCell(Sender: TcxCustomGridTableView;  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tv_MailsCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure grdDBTblView_MailsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure qMailAfterScroll(DataSet: TDataSet);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private-Deklarationen }
    AAccount: string;
    sAccount: string;
    sMailBoxName: string;
    SaveGridViewMail: TSavedGridView;
    procedure SetGridViews(Show:boolean);
    procedure IMAPStart;
    procedure ShowFolders;
    procedure CreateFullFolder( folder: String );
//    function GetSelectedFolderNode(includeRoot: Boolean): TcxTreeListNode;
//    function EmlFileToHtmlRenderPath(filePath: WideString): WideString;
//    function GetAttachmentTempFolder(filePath: WideString): WideString;
  public
    { Public-Deklarationen }
    iIDMail: integer;
    iKontotyp: integer;
    sHost: String;
    iPort: integer;
    sUser: String;
    sPassword: String;
    ssl: TIdSSLIOHandlerSocketOpenSSL;
    m_currentpath: WideString;
    m_uidlfile: WideString;
    CurrNode: TcxTreelistnode;
    procedure Execute(AIDMail: integer);
  end;

var
  frm_Mail: Tfrm_Mail;

  const
  GetMailInfos_DateRange = 64;
implementation

{$R *.dfm}

uses  PCM.Data,
      PCMManager.Modul.E_Mail.Show,
      PCMManager.Modul.E_Mail.Mailbox;

procedure Tfrm_Mail.Execute(AIDMail: integer);
begin
  iIDMail:= AIDMail;
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
procedure Tfrm_Mail.dxBarLargeButton3Click(Sender: TObject);
var
//  i,
iAnzahlCount: integer;
//  mailInfos: IMailInfoCollection;
//  oInfo: IMailInfo;
begin
  iAnzahlCount:=0;
  idImap_Mail.UIDDeleteMsg(qry_Mail.FieldByName('UIDL').asString);
  dm_PCM.qry_Work.sql.Text:= 'Delete From manager_emails Where ID = :ID and ID_Benutzer =:ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID').AsInteger:= qry_Mail.FieldByName('ID').AsInteger;
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= iIDMAIl;
  dm_PCM.qry_Work.ExecSQL;
  qry_Mail.AfterScroll:= nil;
  qry_Mail.Refresh;
//      qAllg.SQL.Text:= 'SELECT COUNT(*) as anzahl FROM manager_emails Where readEmail = :reaaad and ID_Benutzer = :ID_Benutzer';
//      qAllg.ParamByName('ID_Benutzer').Asinteger:= iIDMail;
//      qAllg.ParamByName('reaaad').AsString:= '0';
//      qAllg.open;
//      iAnzahlCount:= qAllg.FieldByName('anzahl').AsInteger;
//      qAllg.Close;
//      sb_user.Panels[1].Text := Format('Anzahl Elemente: %d', [qMail.RecordCount]) + ', ' +Format('Anzahl ungelesener Elemente: %d', [iAnzahlCount]);
//      if iAnzahlCount > 0 then
//        tl_EmailFolder.FocusedNode.Values[1]:= iAnzahlCount
//      else
//        tl_EmailFolder.FocusedNode.Values[1]:= '';
//    end;
//  end;


    stbr_user.Panels[1].Text := Format('Anzahl Elemente: %d', [qry_Mail.RecordCount]) + ', ' +Format('Anzahl ungelesener Elemente: %d', [iAnzahlCount]);
    stbr_user.Panels[2].text := 'Übermittlung abgeschlossen      ';
    if iAnzahlCount > 0 then
      trlst_EmailFolder.FocusedNode.Values[1]:= iAnzahlCount
    else
      trlst_EmailFolder.FocusedNode.Values[1]:= '';
    qry_Mail.AfterScroll:= qMailAfterScroll;


end;
procedure Tfrm_Mail.dxBarLargeButton4Click(Sender: TObject);
var
  iIDPostfach: integer;
begin
  Application.CreateForm(Tfrm_PCM_MailShow_Ordner,frm_PCM_MailShow_Ordner);
//  ShowMessage(sAccount);
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
procedure Tfrm_Mail.dxBarLargeButton8Click(Sender: TObject);
//var
//  i,iAnzahlCount: integer;
//  mailInfos: IMailInfoCollection;
//  oInfo: IMailInfo;
begin

//  if oClient.Connected then
//  begin
//    if qMail.FieldByName('ID').AsInteger > 0 then
//    begin
//      mailInfos := oClient.GetMailInfoList();
//      for i:= 0 to mailInfos.Count - 1 do
//      begin
//        oInfo := mailInfos.Item[i];
//        if oInfo.UIDL = qMail.FieldByName('UIDL').AsWideString then
//          break;
//      end;
//      qAllg.SQL.Text:= 'Update manager_emails SET readEmail = :raedd Where ID = :ID';
//      if oInfo.Read  then
//      begin
//        oClient.MarkAsRead(oInfo,  false);
//        qAllg.ParamByName('raedd').AsString := '0';
//      end
//      else
//      begin
//        oClient.MarkAsRead(oInfo,  true);
//        qAllg.ParamByName('raedd').AsString := '-1';
//      end;
//      qAllg.ParamByName('ID').AsInteger:= qMail.FieldByName('ID').AsInteger;
//      qAllg.ExecSQL;
//      qMail.Refresh;
//
//      qAllg.SQL.Text:= 'SELECT COUNT(*) as anzahl FROM manager_emails Where readEmail = :reaaad and ID_Benutzer = :ID_Benutzer';
//      qAllg.ParamByName('ID_Benutzer').AsInteger:= iIDMail;
//      qAllg.ParamByName('reaaad').AsString:= '0';
//      qAllg.open;
//      iAnzahlCount:= qAllg.FieldByName('anzahl').AsInteger;
//      qAllg.Close;
//
//      sb_user.Panels[1].Text := Format('Anzahl Elemente: %d', [qMail.RecordCount]) + ', ' +Format('Anzahl ungelesener Elemente: %d', [iAnzahlCount]);
//      if iAnzahlCount > 0 then
//        tl_EmailFolder.FocusedNode.Values[1]:= iAnzahlCount
//      else
//        tl_EmailFolder.FocusedNode.Values[1]:= '';
//    end;
//  end;
end;
//function Tfrm_Mail.EmlFileToHtmlRenderPath(filePath: WideString): WideString;
//begin
//  result := LeftStr(filePath, length(filePath) - 4) + '.html';
//end;
//function Tfrm_Mail.GetAttachmentTempFolder(filePath: WideString): WideString;
//begin
//  result := LeftStr(filePath, length(filePath) - 4);
//end;
procedure Tfrm_Mail.tv_MailsCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
//var
//  fileName, folder, tempFolder, htmlFile: WideString;
//  folderNode: TcxTreeListNode;
//  oFolder: IImap4Folder;
//  oInfo:IMailInfo;
//  oUIDLItem: IUIDLItem;
//  oMail: IMail;
//  mailInfos: IMailInfoCollection;
//  i:integer;
begin
//
//  folderNode := GetSelectedFolderNode(false);
//  if folderNode = nil then
//    exit;
//  try
//    oFolder := IImap4Folder(folderNode.Data);
//    folder := m_currentPath + '\' + oCurServer.Server + '\' + oCurServer.User +
//    '\' + oFolder.LocalPath;
//    oUIDLItem := oUIDLManager.FindUIDL(oCurServer.DefaultInterface, qMail.FieldByName('UIDL').AsWideString);
//    if oUIDLItem = nil then
//    begin
//      exit;
//    end;
//    if oClient.Connected then
//    begin
//
//      mailInfos := oClient.GetMailInfoList();
//      for i:= 0 to mailInfos.Count - 1 do
//      begin
//        oInfo := mailInfos.Item[i];
//        if oInfo.UIDL = qMail.FieldByName('UIDL').AsWideString then
//          break;
//      end;
//    end;
//    fileName := folder + '\' + oUIDLItem.fileName;
//    htmlFile := EmlFileToHtmlRenderPath(fileName);
//    tempFolder := GetAttachmentTempFolder(fileName);
//    if not oTools.ExistFile(htmlFile) then
//    begin
//      sb_user.Panels[2].Text := 'E-Mail herunterladen ...';
//      oMail := oClient.GetMail(oInfo);
//      oMail.SaveAs(fileName, true);
//    end;
//    sb_user.Panels[2].Text := 'E-Mail herunterladen erfolgreich ...';
//    ShowMail(fileName);
//  except
//  end;
end;
procedure Tfrm_Mail.grdDBTblView_MailsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
//var
//  folderNode: TcxTreeListNode;
//  oFolder: IImap4Folder;
//  oInfo:IMailInfo;
//  oUIDLItem: IUIDLItem;
//  oMail: TMail;
//  fileName, folder, tempFolder, htmlFile: WideString;
//  mailInfos: IMailInfoCollection;
//  i:integer;
//  attachments: IAttachmentCollection;
//  oAttachment: IAttachment;
//  attachmentName: WideString;
//begin
//
//  folderNode := GetSelectedFolderNode(false);
//  if folderNode = nil then
//    exit;
//
//  oFolder := IImap4Folder(folderNode.Data);
//  folder := m_currentPath + '\' + oCurServer.Server + '\' + oCurServer.User +
//  '\' + oFolder.LocalPath;
//  oUIDLItem := oUIDLManager.FindUIDL(oCurServer.DefaultInterface, qMail.FieldByName('UIDL').AsWideString);
//  if oUIDLItem = nil then
//  begin
//    exit;
//  end;
//  if oClient.Connected then
//  begin
//
//    mailInfos := oClient.GetMailInfoList();
//    for i:= 0 to mailInfos.Count - 1 do
//    begin
//      oInfo := mailInfos.Item[i];
//      if oInfo.UIDL = qMail.FieldByName('UIDL').AsWideString then
//        break;
//    end;
//  end;
//  fileName := folder + '\' + oUIDLItem.fileName;
//  htmlFile := EmlFileToHtmlRenderPath(fileName);
//  tempFolder := GetAttachmentTempFolder(fileName);
//
//  oMail := TMail.Create(Application);
//  oMail.LicenseCode := 'TryIt';
//  oMail.LoadFile(fileName, false);
//
//  Application.CreateForm(Tfrm_PCM_MailShow, frm_PCM_MailShow);
//  frm_PCM_MailShow.webMail.Navigate(htmlFile);
//  frm_PCM_MailShow.lblVon.Caption:= oMail.From.Name + ' <' +  oMail.From.Address + '>';
//  for i := 0 to oMail.ToList.Count - 1 do
//  begin
//    if(oMail.ToList.Item[i].Name = '') then
//      frm_PCM_MailShow.lblAn.Caption := frm_PCM_MailShow.lblAn.Caption + oMail.ToList.Item[i].Address
//    else
//      frm_PCM_MailShow.lblAn.Caption := frm_PCM_MailShow.lblAn.Caption + oMail.ToList.Item[i].Name + ' <' + oMail.ToList.Item[i].Address + '>';
//
//    if (i < oMail.ToList.Count - 1) then
//        frm_PCM_MailShow.lblAn.Caption := frm_PCM_MailShow.lblAn.Caption + '; ';
//  end;
//
//  for i := 0 to oMail.CcList.Count - 1 do
//  begin
//    if(oMail.CcList.Item[i].Name = '') then
//      frm_PCM_MailShow.lblcc.Caption := frm_PCM_MailShow.lblcc.Caption + oMail.CcList.Item[i].Address
//    else
//      frm_PCM_MailShow.lblcc.Caption := frm_PCM_MailShow.lblcc.Caption + oMail.CcList.Item[i].Name + ' <' + oMail.CcList.Item[i].Address + '>';
//
//    if (i < oMail.CcList.Count - 1) then
//        frm_PCM_MailShow.lblcc.Caption := frm_PCM_MailShow.lblcc.Caption + '; ';
//  end;
//  frm_PCM_MailShow.lblBetreff.Caption := oMail.Subject;
//  // ANHANAGE
//  frm_PCM_MailShow.comp_imglst_16x16.Clear;
//  frm_PCM_MailShow.lstMail.Items.Clear;
//  attachments := oMail.AttachmentList;
//  if(attachments.Count > 0) then
//  begin
//    // Create a temporal folder to store attachments.
//    tempFolder := GetAttachmentTempFolder(fileName);
//    if not oTools.ExistFile(tempFolder) then
//      oTools.CreateFolder(tempFolder);
//    for i:= 0 to attachments.Count - 1 do
//    begin
//
//      oAttachment := attachments.Item[i];
//      attachmentName := tempFolder + '\' + oAttachment.Name;
//
//      frm_PCM_MailShow.CreateAnhang(attachmentName,oAttachment.Name);
//      oAttachment.SaveAs(attachmentName, true);
//    end;
//  end;
//
//  frm_PCM_MailShow.Caption:= qMail.FieldByName('Betreff').AsString;
//  frm_PCM_MailShow.ShowModal;
var
  fileName, folder : WideString;
//  iAnzahl: integer;
//  UUID: string;
  MailA: TIdMessage;
  i: integer;
  ssearch, sreplace: string;
  WinFile: TextFile;
  Line, sAnhang: String;
  sl: TStringList;
//  ImageListHandle: THandle;
//  Icon: TIcon;
//  IconH : HICON;
//  IconHL : HICON;
//  imageindex: Integer;
//  FileInfo: TSHFileInfo;
begin
  Application.CreateForm(Tfrm_PCM_MailShow,frm_PCM_MailShow);
  MailA := TIdMessage.Create(nil);
  MailA.CharSet:= 'UTF-8';
  idImap_Mail.UIdRetrieve(qry_Mail.FieldByName('UIDL').asString, MailA);
  try
    folder := m_currentpath + '\' + idImap_Mail.host + '\' + idImap_Mail.username +
      '\' + sMailBoxName + '\' + qry_Mail.FieldByName('UIDL').asString;
    folder := StringReplace(folder, '/', '.', [rfReplaceAll]);
    if not FileExists(folder) then
    begin
      stbr_user.Panels.Items[0].text := 'E-Mail wird heruntergeladen...';
    end;
    if not DirectoryExists(folder) then
      CreateDIr(folder);
    frm_PCM_MailShow.lstVw_Mail.Clear;
//    for i := 0 to MailA.MessageParts.Count - 1 do
//    begin
//      if MailA.MessageParts.Items[i] is TIDAttachment then
//      begin
//        filename := TIdAttachmentFile(MailA.MessageParts.Items[i]).FileName; //        (MailA.MessageParts.Items[i] as TIDAttachment).Filename;
////        (MailA.MessageParts.Items[i] as TIDAttachment).SaveToFile(folder + '\' +  filename);
//        TIdAttachmentFile(MailA.MessageParts.Items[i]).SaveToFile(folder + '\' + filename);
//        sAnhang := folder + '\' + filename;
//        frm_PCM_MailShow.CreateAnhang(folder + '\' + filename,filename);
//      end;
//    end;
//    iAnzahl := 0;

    if MailA.MessageParts.Count > 0 then
    begin
//      ShowMessage(IntToStr(Maila.MessageParts.AttachmentCount));
      for i := 0 to MailA.MessageParts.Count-1 do
      begin
//        ShowMessage(Maila.MessageParts.Items[i].FileName);
        if MailA.MessageParts.Items[i] is TIdText then
        begin
          TIdText(MailA.MessageParts.Items[i]).Body.SaveToFile(folder + '\mail.html');
        end;
        if MailA.MessageParts.Items[i] is TIDAttachment then
        begin
          filename := TIdAttachmentFile(MailA.MessageParts.Items[i]).FileName; //        (MailA.MessageParts.Items[i] as TIDAttachment).Filename;
  //        (MailA.MessageParts.Items[i] as TIDAttachment).SaveToFile(folder + '\' +  filename);
          TIdAttachmentFile(MailA.MessageParts.Items[i]).SaveToFile(folder + '\' + filename);
          sAnhang := folder + '\' + filename;
          frm_PCM_MailShow.CreateAnhang(folder + '\' + filename,filename);
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
//
//
    AssignFile(WinFile,folder +'\mail.html');
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
//        Line := StringReplace(Line, '<','&lt;', [rfReplaceAll]);
//        Line := StringReplace(Line, '>','&gt;', [rfReplaceAll]);
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


//        sl.Add(TNetEncoding.HTML.Encode(Line));
      sl.Add(Line);
    end;
    CloseFile(WinFile);
    sl.SaveToFile(folder + '\mail.html');
    sl.Clear;
    sl.free;
    grpbx_MailVorschau.visible:= true;
    webbwr_Mail.Navigate(folder + '\mail.html');




    if Maila.From.Name = '' then
    begin
      frm_PCM_MailShow.lbl_Von.Caption:= Maila.From.Address;
      frm_PCM_MailShow.lbl_Von.Hint:= '';
    end
    else begin
      frm_PCM_MailShow.lbl_Von.Caption:= Maila.From.Name + ' <' + Maila.From.Address + '>';
      frm_PCM_MailShow.lbl_Von.Hint:= Maila.From.Address;
    end;
    frm_PCM_MailShow.lbl_an.Caption:= idImap_Mail.username;//  qEmailConfig.FieldByName('Email').AsString;
    frm_PCM_MailShow.lbl_an.Hint:= '';
    frm_PCM_MailShow.lbl_cc.Caption:= MailA.CCList.EMailAddresses;
    frm_PCM_MailShow.lbl_cc.Hint:= '';

    frm_PCM_MailShow.lbl_Betreff.Caption:= MailA.Subject;
    frm_PCM_MailShow.Caption:= 'Nachricht: ' + MailA.Subject;
//      frm_PCM_MailShow.Label5.Caption:= FormatDateTime('dd.MM.yyyy hh:mm',Maila.Date);

    frm_PCM_MailShow.webbwr_Mail.Navigate(folder + '\mail.html');
    frm_PCM_MailShow.ShowModal;
//    sb_user.Panels.Items[0].Text := Format( '%d Elemente', [lstMailimap.Items.Count]);
//    frm_PCM_MailShow.Free;
    MailA.free;
  except
    on ep:Exception do
    begin
      MessageDlg('Fehler:'+ep.Message, mtError, [mbOk], 0);
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
//function Tfrm_Mail.GetSelectedFolderNode(includeRoot: Boolean): TcxTreeListNode;
//var
//  selectedNode: TcxTreeListNode;
//begin
//  result := nil;
//  selectedNode := trlst_EmailFolder.FocusedNode;
//  if selectedNode = nil then
//    exit;
//
//   if (not includeRoot) and (selectedNode.Parent = nil) then
//    exit;
//
//    result := selectedNode;
//end;
procedure Tfrm_Mail.qMailAfterScroll(DataSet: TDataSet);
var
  fileName, folder: WideString;
//  iAnzahl: integer;
//  UUID: string;
  MailA: TIdMessage;
  i: integer;
  ssearch, sreplace: string;
  WinFile: TextFile;
  Line, sAnhang: String;
  sl: TStringList;
//  ImageListHandle: THandle;
//  Icon: TIcon;
//  IconH : HICON;
//  IconHL : HICON;
//  imageindex: Integer;
//  FileInfo: TSHFileInfo;
begin
  MailA := TIdMessage.Create(nil);
  MailA.CharSet:= 'UTF-8';

  idImap_Mail.UIdRetrieve(qry_Mail.FieldByName('UIDL').asString, MailA);
  try
    folder := m_currentpath + '\' + idImap_Mail.host + '\' + idImap_Mail.username +
      '\' + sMailBoxName + '\' + qry_Mail.FieldByName('UIDL').asString;
    folder := StringReplace(folder, '/', '.', [rfReplaceAll]);
    if not FileExists(folder) then
    begin
      stbr_user.Panels.Items[0].text := 'E-Mail wird heruntergeladen...';
    end;
    if not DirectoryExists(folder) then
      CreateDIr(folder);

    for i := 0 to MailA.MessageParts.Count - 1 do
    begin
      if MailA.MessageParts.Items[i] is TIDAttachment then
      begin
        try
          filename := (MailA.MessageParts.Items[i] as TIDAttachment).Filename;
          (MailA.MessageParts.Items[i] as TIDAttachment).SaveToFile(folder + '\' +  filename);
          sAnhang := folder + '\' + filename;
        except
        end;
      end;
    end;
//    iAnzahl := 0;

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
//
//
      AssignFile(WinFile,folder +'\mail.html');
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
//        Line := StringReplace(Line, '<','&lt;', [rfReplaceAll]);
//        Line := StringReplace(Line, '>','&gt;', [rfReplaceAll]);
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


//        sl.Add(TNetEncoding.HTML.Encode(Line));
        sl.Add(Line);
      end;
      CloseFile(WinFile);
      sl.SaveToFile(folder + '\mail.html');
      sl.Clear;
      sl.free;
      grpbx_MailVorschau.visible:= true;
      webbwr_Mail.Navigate(folder + '\mail.html');

//      if Maila.From.Name = '' then
//      begin
//        frm_PCM_MailShow.lblVon.Caption:= Maila.From.Address;
//        frm_PCM_MailShow.lblVon.Hint:= '';
//      end
//      else begin
//        frm_PCM_MailShow.lblVon.Caption:= Maila.From.Name;
//        frm_PCM_MailShow.lblVon.Hint:= Maila.From.Address;
//      end;
//      frm_PCM_MailShow.lblan.Caption:= qEmailConfig.FieldByName('Email').AsString;
//      frm_PCM_MailShow.lblan.Hint:= '';
//      frm_PCM_MailShow.lblcc.Caption:= MailA.CCList.EMailAddresses;
//      frm_PCM_MailShow.lblcc.Hint:= '';
//
//      frm_PCM_MailShow.lblBetreff.Caption:= MailA.Subject;
//      frm_PCM_MailShow.Caption:= 'Nachricht: ' + MailA.Subject;
//      frm_PCM_MailShow.Label5.Caption:= FormatDateTime('dd.MM.yyyy hh:mm',Maila.Date);
//
//      frm_PCM_MailShow.webbwr_Mail.Navigate(folder + '\mail.html');
//      frm_PCM_MailShow.ShowModal;
//    stbr_user.Panels.Items[0].Text := Format( '%d Elemente', [lstMailimap.Items.Count]);
    MailA.free;
  except
    on ep:Exception do
    begin
      MessageDlg('Fehler:'+ep.Message, mtError, [mbOk], 0);
    end;
  end;
end;
procedure Tfrm_Mail.tl_EmailFolderChange(Sender: TObject);
  function MyGetParentNode(Node: TcxTreeListNode): TcxTreeListNode;
  begin
    Result:=nil;
    if Node=nil then
      Exit;
    if Node.Level=0 then
      Exit;
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
begin
//  grdDBTblView_Mails.DataController.DataSource:= nil;
  if trlst_EmailFolder.SelectionCount = 0 then
    exit;
  if trlst_EmailFolder.FocusedNode = CurrNode then
    exit;

  sCheckUser:=  trlst_EmailFolder.FocusedNode.Values[0];
  dm_PCM.qry_Work.SQL.Text:= 'Select Count(*) as Anzahl FROM manager_emailkonfiguration Where Benutzer = :Benutzer and ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('Benutzer').AsString:= sCheckUser;
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= iIDMail;
  dm_PCM.qry_Work.open;
  iCount:=  dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
  dm_PCM.qry_Work.Close;
  if iCount > 0 then
    exit;

  dm_PCM.qry_Work.SQL.Text:= 'DELETE FROM manager_emails where ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= iIDMail;
  dm_PCM.qry_Work.ExecSQL;
  qry_Mail.Open;

  grpbx_MailVorschau.Visible:= false;
  CurrNode:= trlst_EmailFolder.FocusedNode;
  dm_PCM.qry_Work.sql.Text:= 'SELECT Parent,Postfach,Trennzeichen FROM manager_email_postfach WHERE ANzeige = :Anzeige';
  dm_PCM.qry_Work.ParambyName('Anzeige').asString:=  trlst_EmailFolder.FocusedNode.Values[0];
  dm_PCM.qry_Work.OPen;
  sMailBoxName:= dm_PCM.qry_Work.FieldByName('Postfach').AsString;
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


  sAccount:= MyGetParentNode(trlst_EmailFolder.FocusedNode).Values[0];
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

  dm_PCM.qry_work.SQL.Text:= 'SELECT ID, EMail,Kontotyp,PostEingangsserver,PortEingangsserver,PostAusgangsserver,PortAusgangsserver,Benutzer,Passwort,SSLActive From manager_emailkonfiguration where Benutzer = :Benutzer and id_Benutzer = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= iIDMail;
  dm_PCM.qry_work.ParamByName('Benutzer').AsString:= sAccount;
  dm_PCM.qry_work.Open;
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSSLIOHandlerSocket.SSLOptions.Method:= sslvSSLv23;
  idImap_Mail.IOHandler := IdSSLIOHandlerSocket;
  idImap_Mail.UseTLS := utUseImplicitTLS;
  idImap_Mail.Host := dm_PCM.qry_work.FieldByName('PostEingangsserver').AsString;
  idImap_Mail.Port := dm_PCM.qry_work.FieldByName('PortEingangsserver').AsInteger;
  idImap_Mail.UseTLS := utUseImplicitTLS;
  idImap_Mail.Username := dm_PCM.qry_work.FieldByName('Benutzer').AsString;;
  idImap_Mail.Password := dm_PCM.qry_work.FieldByName('Passwort').AsString;
  idImap_Mail.Connect;
  dm_PCM.qry_work.Close;
  AAccount := sAccount;
  qry_Mail.AfterScroll:= nil;
  iAnzahlCount:= 0;

  Flagtemp := 'gelesen';
  imapFolders := TStringList.Create;
  idImap_Mail.ListMailBoxes(imapFolders);
  if idImap_Mail.SelectMailBox(sMailBoxName) = False then begin
    stbr_user.panels.items[0].text := 'Error selecting '+MailBoxName;
    Exit;
  end;
  Application.ProcessMessages;
  stbr_user.panels.items[0].text := 'E-Mails aktualisieren...';
  Application.ProcessMessages;
  Mail := TIdMessage.Create(nil);
  iCount := idImap_Mail.MailBox.TotalMsgs;
  if iCount > 0 then
  begin
    folder := m_currentpath + '\' + idImap_Mail.Host + '\' + idImap_Mail.Username + '\' + sMailBoxName;
    folder := StringReplace(folder, '/', '.', [rfReplaceAll]);
    CreateFullFolder( folder );

    for i := 0 to iCount-1 do
    begin
      idImap_Mail.GetUID(i+1, TheUID);  // 100 ms
      idImap_Mail.UIDRetrieveFlags(TheUID, TheFlags);
      idImap_Mail.UIDRetrieveHeader(TheUID, Mail);

//      item := TListItem.Create(lstMailImap.Items);
//        item.SubItems.Add(Mail.From.Address);


//
      Application.ProcessMessages;
      if not DirectoryExists(folder + '\' + TheUID) then
        CreateDIr(folder + '\' + TheUID);
      stbr_user.Panels.Items[2].Text:=  Format( 'Übermittlungsstatus %d', [Round(iAnzahlCount / iCount * 100)]) + '%      ';
      stbr_user.Panels.Items[2].Text:=  'Übermittlungsstatus: ' + IntToStr(i+1) + ' von ' + IntToStr(iCount) + ' Mails verarbeitet';
//
      Application.ProcessMessages;
      if mfSeen in TheFlags then
        Flagtemp := 'gelesen'
      else
        Flagtemp := 'ungelesen';
      dm_PCM.qry_Work.SQL.Text:= 'INSERT INTO manager_emails (Von,Betreff,Erhalten,Groesse,UIDL,readEmail,ID_Benutzer) VALUES(:Von,:Betreff,:Erhalten,:Groesse,:UIDL,:readEmail,:ID_Benutzer)';
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
      dm_PCM.qry_Work.ParamByName('ID_Benutzer').asInteger:= iIDMail;
      dm_PCM.qry_Work.ExecSQL;
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

    dm_PCM.qry_Work.SQL.Text:= 'SELECT COUNT(*) as anzahl FROM manager_emails Where readEmail = :reaaad and ID_Benutzer = :ID_Benutzer';
    dm_PCM.qry_Work.ParamByName('reaaad').AsString:= '0';
    dm_PCM.qry_Work.ParamByName('ID_Benutzer').asInteger:= iIDMail;
    dm_PCM.qry_Work.open;
    iAnzahlCount:= dm_PCM.qry_Work.FieldByName('anzahl').AsInteger;
    dm_PCM.qry_Work.Close;
    Application.ProcessMessages;
    stbr_user.Panels[1].Text := Format('Anzahl Elemente: %d', [qry_Mail.RecordCount]) + ', ' +Format('Anzahl ungelesener Elemente: %d', [iAnzahlCount]);
    stbr_user.Panels[2].text := 'Übermittlung abgeschlossen      ';
    if iAnzahlCount > 0 then
      trlst_EmailFolder.FocusedNode.Values[1]:= iAnzahlCount
    else
      trlst_EmailFolder.FocusedNode.Values[1]:= '';
    qry_Mail.AfterScroll:= qMailAfterScroll;
    Mail.Free;

  end;
//  grdDBTblView_Mails.DataController.DataSource:= ds_mail;
end;
procedure Tfrm_Mail.ShowFolders;
var
  IdSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;
  MainNode: TcxTreeListNode;
  Tree1Node: TcxTreeListNode;
  Tree2Node: TcxTreeListNode;
  i: integer;
//  iIDM : integer;
//  folder: IFolderCollection;
//  folderSub: IFolderCollection;
//  oFolder,oFolderSub: IImap4Folder;
//  bBreak:boolean;
  UsersFolders: TStringlist;
begin
//  bBreak:= false;
  trlst_EmailFolder.Clear;
  trlst_EmailFolder.BeginUpdate;
  dm_pcm.qry_work.SQL.Text:= 'SELECT ID, EMail,Kontotyp,PostEingangsserver,PortEingangsserver,PostAusgangsserver,PortAusgangsserver,Benutzer,Passwort,SSLActive From manager_emailkonfiguration where id_Benutzer = :ID';
  dm_pcm.qry_work.ParamByName('ID').AsInteger:= iIDMail;
  dm_pcm.qry_work.Open;
  while not dm_pcm.qry_work.eof do
  begin
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
    stbr_user.Panels[0].Text:= 'Verbunden mit ' + sUser;
    UsersFolders := TStringList.Create;
    idImap_Mail.ListMailBoxes(UsersFolders);
    MainNode := trlst_EmailFolder.AddChild(trlst_EmailFolder.Root);
    MainNode.Values[0]:= idImap_Mail.Username;
    Application.ProcessMessages;
    Application.ProcessMessages;
    stbr_user.Panels.Items[0].Text:= 'Ordner werden eingelesen...';
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
//          Tree1Node.Data:= Pointer(oFolder);
          break
        end;
      end;
      Application.ProcessMessages;
      dm_pcm.qry_work2.SQL.Text:= 'SELECT Anzeige,Postfach FROM manager_email_postfach where Parent = :parent order by Sortierung';
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
    dm_pcm.qry_work1.Close;;
    dm_pcm.qry_work.Next;
  end;
  dm_pcm.qry_work.Close;
  trlst_EmailFolder.EndUpdate;
  trlst_EmailFolder.FullExpand;
  Application.ProcessMessages;
  stbr_user.Panels.Items[0].Text:= 'Online';
  Application.ProcessMessages;
end;
procedure Tfrm_Mail.IMAPStart;
begin
  trlst_EmailFolder.Clear;
  trlst_EmailFolder.OnChange:= tl_EmailFolderChange;
  ShowFolders;
end;
procedure Tfrm_Mail.FormDestroy(Sender: TObject);
begin
  SetGridViews(false);
end;
procedure Tfrm_Mail.FormPaint(Sender: TObject);
begin
  AAccount:= '';
  dm_PCM.qry_Work.SQL.Text:= 'DELETE FROM manager_emails where ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= iIDMail;
  dm_PCM.qry_Work.ExecSQL;
  qry_Mail.SQL.Text:= 'SELECT * FROM manager_emails Where ID_Benutzer = :ID_Benutzer';
  qry_Mail.ParamByName('ID_Benutzer').AsInteger:= iIDMail;
  qry_Mail.open;
  trlst_EmailFolder.Clear;
  m_currentpath := GetCurrentDir();
  m_uidlfile := m_currentpath + '\uidl.txt';
  IMAPStart;
  SetGridViews(True)
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
procedure Tfrm_Mail.FormShow(Sender: TObject);
begin
  AAccount:= '';
  dm_PCM.qry_Work.SQL.Text:= 'DELETE FROM manager_emails where ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= iIDMail;
  dm_PCM.qry_Work.ExecSQL;
  qry_Mail.SQL.Text:= 'SELECT * FROM manager_emails Where ID_Benutzer = :ID_Benutzer';
  qry_Mail.ParamByName('ID_Benutzer').AsInteger:= iIDMail;
  qry_Mail.open;
  trlst_EmailFolder.Clear;
  m_currentpath := GetCurrentDir();
  m_uidlfile := m_currentpath + '\uidl.txt';
  IMAPStart;
  SetGridViews(True)
end;

end.
