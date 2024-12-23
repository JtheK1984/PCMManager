unit PCMManager.Modul.E_Mail.Show;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, Vcl.Menus, Vcl.OleCtrls, SHDocVw,
  System.ImageList, Vcl.ImgList, cxImageList, dxmdaset, Vcl.StdCtrls, cxButtons,
  cxLabel, cxDBLabel, Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxGroupBox,
  dxBar, cxClasses, Vcl.ComCtrls, cxListView,shellapi, System.TypInfo, winapi.Commctrl;

type
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
    webbwr_Mail: TWebBrowser;
    grpbx_Detail: TcxGroupBox;
    grpbx_Email: TcxGroupBox;
    grpbx_EmailValues: TcxGroupBox;
    lbl_Betreff: TcxLabel;
    lbl_CC: TcxLabel;
    lbl_AN: TcxLabel;
    lbl_Von: TcxLabel;
    lstVw_Mail: TcxListView;
    grpbx_EmailLabel: TcxGroupBox;
    lbl_BetreffLabel: TcxLabel;
    lbl_CCLabel: TcxLabel;
    lbl_AnLabel: TcxLabel;
    lbl_VonLabel: TcxLabel;
    brpmm_Mail: TdxBarPopupMenu;
    btn_Open: TdxBarButton;
    procedure lstVw_MailDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_closeClick(Sender: TObject);
    procedure btn_OpenClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    procedure CreateAnhang(FullName,Filename: String);
  end;

var
  frm_PCM_MailShow: Tfrm_PCM_MailShow;

implementation

{$R *.dfm}

uses PCM.Data;

procedure Tfrm_PCM_MailShow.CreateAnhang(FullName,Filename: String);
var
//  ImageListHandle: THandle;
  imageindex: Integer;
  FileInfo: TSHFileInfo;
  Icon: TIcon;
  IconH : HICON;
  li: Tlistitem;
begin
  IconH:= 0;
//  imagelistHandle := SHGetFileInfo(PCHAR(FullName), 0, FileInfo, SizeOf(FileInfo),SHGFI_ICON or SHGFI_SMALLICON or SHGFI_USEFILEATTRIBUTES);

  Icon := TIcon.Create;
  Icon.Handle := IconH;
  Icon.Handle := FileInfo.hIcon;
  Icon.Transparent := True;
  imageindex := frm_PCM_MailShow.imglst_16x16_1.AddIcon(Icon);
  FreeAndNil(Icon);
  DestroyIcon(FileInfo.hIcon);

  li:=  lstVw_Mail.Items.Add;
  li.Caption:= FileName;
  li.Data:= Tobject(Fullname);
  li.imageindex:= imageindex
end;
procedure Tfrm_PCM_MailShow.btn_OpenClick(Sender: TObject);
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
procedure Tfrm_PCM_MailShow.FormDestroy(Sender: TObject);
begin
  frm_PCM_mailshow := nil;
end;
procedure Tfrm_PCM_MailShow.lstVw_MailDblClick(Sender: TObject);
begin
  if lstVw_Mail.ItemIndex > -1 then
    ShellExecute(Application.Handle, 'open', PChar(lstVw_Mail.Items.Item[lstVw_Mail.ItemIndex].Data), nil, nil, SW_NORMAL)
end;

end.
