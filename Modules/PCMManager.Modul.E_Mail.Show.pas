unit PCMManager.Modul.E_Mail.Show;

interface

uses
  {$Region uses}
  cxButtons,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBData,
  cxDBLabel,
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
  cxImageList,
  cxLabel,
  cxListView,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxNavigator,
  cxStyles,
  Data.DB,
  dxBar,
  dxDateRanges,
  dxLayoutContainer,
  dxLayoutControl,
  dxLayoutcxEditAdapters,
  dxmdaset,
  dxScrollbarAnnotations,
  dxUIAClasses,
  PCM.Browser,
  SHDocVw,
  shellapi,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  System.TypInfo,
  System.Variants,
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
  winapi.Commctrl,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion uses}
type
  {$Region types}
  TAnhang = record
    sFileName: string;
    sFilePath: string;
  end;
  TAnhaenge = array of TAnhang;
  Tfrm_PCM_MailShow = class(TForm)
    brmgr_Email: TdxBarManager;
    tb_Mail: TdxBar;
    btn_Answer: TdxBarLargeButton;
    btn_Sendto: TdxBarLargeButton;
    btn_AnswerAll: TdxBarLargeButton;
    btn_close: TdxBarLargeButton;
    dlgSave_Anhang: TSaveDialog;
    DataSource1: TDataSource;
    memData_Anhaenge: TdxMemData;
    memData_AnhaengeFilename: TStringField;
    memData_AnhaengeFullname: TStringField;
    memData_AnhaengeIcon: TIntegerField;
    imglst_16x16_1: TcxImageList;
    grpbx_Email: TcxGroupBox;
    lbl_Betreff: TcxLabel;
    lbl_CC: TcxLabel;
    lbl_AN: TcxLabel;
    lbl_Von: TcxLabel;
    lstVw_Mail: TcxListView;
    brpmm_Mail: TdxBarPopupMenu;
    ppmbtn_Open: TdxBarButton;
    lactrl_MailGroup_Root: TdxLayoutGroup;
    lactrl_Mail: TdxLayoutControl;
    lagrpl_MailBar: TdxLayoutItem;
    lagrpl_Mail: TdxLayoutGroup;
    dxBarDockControl1: TdxBarDockControl;
    lagrpl_MailHeader: TdxLayoutGroup;
    laitm_MailBetreff: TdxLayoutItem;
    laitm_MailCC: TdxLayoutItem;
    laitm_MailAn: TdxLayoutItem;
    laitm_MailVon: TdxLayoutItem;
    laitm_Anhang: TdxLayoutItem;
    lagrpl_MailANDatum: TdxLayoutGroup;
    laitm_MailDatum: TdxLayoutItem;
    cxLabel1: TcxLabel;
    ppmbtn_Preview: TdxBarButton;
    ppmbtn_Save: TdxBarButton;
    laitm_Mail: TdxLayoutItem;
    pnl_browser: TcxGroupBox;
    procedure lstVw_MailDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_closeClick(Sender: TObject);
    procedure ppmbtn_OpenClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    arAnhang: TAnhaenge;
    FWebBrowser: TAbstractWebBrowser;
    procedure CreateAnhang(AAnhaenge: TAnhaenge);
  end;
  {$EndRegion types}
var
  {$Region var}
  frm_PCM_MailShow: Tfrm_PCM_MailShow;
  {$EndRegion var}

implementation

{$R *.dfm}

uses
  {$Region uses}
  PCM.Browser.FullScreen,
  PCM.Data,
  uwvLoader;
  {$EndRegion uses}

procedure Tfrm_PCM_MailShow.CreateAnhang(AAnhaenge: TAnhaenge);
  function GetFileIcon(const FileName: string; SmallIcon: Boolean): HICON;
  var
    FileInfo: TSHFileInfo;
    Flags: UINT;
  begin
    Flags := SHGFI_ICON;
    if SmallIcon then
      Flags := Flags or SHGFI_SMALLICON
    else
      Flags := Flags or SHGFI_LARGEICON;

    SHGetFileInfo(PChar(FileName), 0, FileInfo, SizeOf(FileInfo), Flags);
    Result := FileInfo.hIcon;
  end;
var
  imageindex: Integer;
//  FileInfo: TSHFileInfo;
  Icon: TIcon;
//  IconH : HICON;
  li: Tlistitem;
  iTemp: integer;
  IconHandle: HICON;
begin
  imageindex:= -1;
  for iTemp := 0 to High(arANhang) do
  begin
    IconHandle := GetFileIcon(aranhang[itemp].sFilePath, True);
    if IconHandle <> 0 then
    begin
      Icon := TIcon.Create;
      try
        Icon.Handle := IconHandle;
        imageindex:= imglst_16x16_1.AddIcon(Icon);
      finally
        Icon.Free;
        DestroyIcon(IconHandle);
      end;
    end;
    li:=  lstVw_Mail.Items.Add;
    li.Data:= Pointer(arAnhang[iTemp].sFilePath);
    li.Caption:= arAnhang[iTemp].sFileName;
    li.imageindex:= imageindex
  end;
end;
procedure Tfrm_PCM_MailShow.ppmbtn_OpenClick(Sender: TObject);
begin
  if lstVw_Mail.ItemIndex > -1 then
    ShellExecute(Application.Handle, 'open', PChar(lstVw_Mail.Items.Item[lstVw_Mail.ItemIndex].Data), nil, nil, SW_NORMAL)
end;
procedure Tfrm_PCM_MailShow.btn_closeClick(Sender: TObject);
begin
  frm_PCM_mailshow.Close;
end;
procedure Tfrm_PCM_MailShow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_PCM_mailshow.Release;
  frm_PCM_mailshow:= nil;
end;
procedure Tfrm_PCM_MailShow.FormCreate(Sender: TObject);
begin
  if GlobalWebView2Loader.Initialized then
    GlobalWebView2Loader.Destroy;
  GlobalWebView2Loader:= TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
  GlobalWebView2Loader.StartWebView2;
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

procedure Tfrm_PCM_MailShow.FormDestroy(Sender: TObject);
begin
  frm_PCM_mailshow := nil;
end;
procedure Tfrm_PCM_MailShow.FormShow(Sender: TObject);
begin
  if lstVw_Mail.Items.Count = 0 then
    laitm_Anhang.Visible:= false
  else
    laitm_Anhang.Visible:= true;
end;

procedure Tfrm_PCM_MailShow.lstVw_MailDblClick(Sender: TObject);
begin
  if lstVw_Mail.ItemIndex > -1 then
    ShellExecute(Application.Handle, 'open', PChar(String(lstVw_Mail.Items.Item[lstVw_Mail.ItemIndex].data)), nil, nil, SW_NORMAL)
end;

end.
