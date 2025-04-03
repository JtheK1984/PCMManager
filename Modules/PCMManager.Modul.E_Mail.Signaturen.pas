unit PCMManager.Modul.E_Mail.Signaturen;

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
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxLookupEdit,
  cxMaskEdit,
  cxMemo,
  cxNavigator,
  cxSpinEdit,
  cxStyles,
  cxTextEdit,
  Data.DB,
  dxBar,
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
  PCM.Browser,
  SynEdit,
  SynEditHighlighter,
  SynHighlighterHtml,
  SynMemo,
  System.Classes,
  System.NetEncoding,
  System.SysUtils,
  System.Variants,
  uWVBrowser,
  uWVBrowserBase,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Menus,
  Vcl.StdCtrls,
  WebView2,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion uses}
type
  {$Region type}
  Tfrm_Signatur = class(TForm)
    brdckCtrl_Signatur: TdxBarDockControl;
    brmgr_Signatur: TdxBarManager;
    btn_Cancel: TdxBarLargeButton;
    btn_Close: TdxBarLargeButton;
    btn_Delete: TdxBarLargeButton;
    btn_Edit: TdxBarLargeButton;
    btn_New: TdxBarLargeButton;
    btn_Save: TdxBarLargeButton;
    cxDBImage1: TcxDBImage;
    ds_EmailAccounts: TDataSource;
    ds_Signatur: TDataSource;
    edt_SignaturAbsender: TcxDBTextEdit;
    edt_SignaturGruss: TcxDBTextEdit;
    edt_SignaturMail: TcxDBTextEdit;
    edt_SignaturMobil: TcxDBTextEdit;
    edt_SignaturName: TcxDBTextEdit;
    edt_SignaturPLZOrt: TcxDBTextEdit;
    edt_SignaturStrasse: TcxDBTextEdit;
    edt_SignaturTelefon: TcxDBTextEdit;
    grd_Signatur: TcxGrid;
    grdlvl_Signatur: TcxGridLevel;
    lactrl_Signatur: TdxLayoutControl;
    lactrl_SignaturGroup_Root: TdxLayoutGroup;
    lagrp_Signatur: TdxLayoutGroup;
    lagrp_SignaturAbsender: TdxLayoutGroup;
    lagrp_SignaturAccount: TdxLayoutGroup;
    lagrp_SignaturDetail: TdxLayoutGroup;
    lagrp_SignaturDetailWithGrid: TdxLayoutGroup;
    lagrp_SignaturDetailWithOutGrid: TdxLayoutGroup;
    lagrp_SignaturDetailWithOutGridLeft: TdxLayoutGroup;
    lagrp_SignaturEmail: TdxLayoutGroup;
    lagrp_SignaturGruss: TdxLayoutGroup;
    lagrp_SignaturImage: TdxLayoutGroup;
    lagrp_SignaturImageLoad: TdxLayoutGroup;
    lagrp_SignaturImageLoadPandPath: TdxLayoutGroup;
    lagrp_SignaturImagePath: TdxLayoutGroup;
    lagrp_SignaturImageSize: TdxLayoutGroup;
    lagrp_SignaturPLZOrt: TdxLayoutGroup;
    laitm_SignaturAbschluss: TdxLayoutItem;
    laitm_SignaturAbsender: TdxLayoutItem;
    laitm_SignaturAccount: TdxLayoutItem;
    laitm_SignaturBar: TdxLayoutItem;
    laitm_SignaturBrowser: TdxLayoutItem;
    laitm_SignaturEmail: TdxLayoutItem;
    laitm_SignaturGrid: TdxLayoutItem;
    laitm_SignaturGruss: TdxLayoutItem;
    laitm_SignaturHTML: TdxLayoutItem;
    laitm_SignaturImageHeight: TdxLayoutItem;
    laitm_SignaturImageWidth: TdxLayoutItem;
    laitm_SignaturLeernachBIld: TdxLayoutItem;
    laitm_SignaturLeerNachGruss: TdxLayoutItem;
    laitm_SignaturLeernachName: TdxLayoutItem;
    laitm_SignaturLeerVorGruss: TdxLayoutItem;
    laitm_SignaturLerrnachAdresse: TdxLayoutItem;
    laitm_SignaturLerrnachKontakt: TdxLayoutItem;
    laitm_SignaturMobil: TdxLayoutItem;
    laitm_SignaturName: TdxLayoutItem;
    laitm_SignaturPic: TdxLayoutItem;
    laitm_SignaturPLZOrt: TdxLayoutItem;
    laitm_SignaturSplt: TdxLayoutSplitterItem;
    laitm_SignaturStrasse: TdxLayoutItem;
    laitm_SignaturTelefon: TdxLayoutItem;
    lucmbbx_SignaturAccount: TcxDBLookupComboBox;
    mem_Abschluss: TcxDBMemo;
    mem_statement: TSynMemo;
    opdlg_Signatur: TdxOpenPictureDialog;
    pnl_browser: TcxGroupBox;
    qry_EmailAccounts: TFDQuery;
    qry_Signatur: TFDQuery;
    qry_SignaturAbsender: TStringField;
    qry_SignaturBild: TBlobField;
    qry_SignaturBreite: TIntegerField;
    qry_SignaturEMail: TStringField;
    qry_SignaturGruss: TStringField;
    qry_SignaturHoehe: TIntegerField;
    qry_SignaturID: TFDAutoIncField;
    qry_SignaturID_Emailkonfiguration: TIntegerField;
    qry_SignaturLeerzeilenNachAdresse: TIntegerField;
    qry_SignaturLeerzeilenNachBild: TIntegerField;
    qry_SignaturLeerzeilenNachGruss: TIntegerField;
    qry_SignaturLeerzeilenNachMail: TIntegerField;
    qry_SignaturLeerzeilenNachName: TIntegerField;
    qry_SignaturLeerzeilenVorGruss: TIntegerField;
    qry_SignaturMobil: TStringField;
    qry_SignaturName: TStringField;
    qry_SignaturPfadBild: TStringField;
    qry_SignaturPLZ_Ort: TStringField;
    qry_SignaturStrase: TStringField;
    qry_SignaturTelefon: TStringField;
    qry_SignaturText: TMemoField;
    spnedt_SignaturAfterAbsender: TcxDBSpinEdit;
    spnedt_SignaturAfterEmail: TcxDBSpinEdit;
    spnedt_SignaturAfterGruss: TcxDBSpinEdit;
    spnedt_SignaturAfterImage: TcxDBSpinEdit;
    spnedt_SignaturAfterPLZOrt: TcxDBSpinEdit;
    spnedt_SignaturBeforeGruss: TcxDBSpinEdit;
    spnedt_SignaturHeight: TcxDBSpinEdit;
    spnedt_SignaturWitdh: TcxDBSpinEdit;
    synhl_Html: TSynHTMLSyn;
    tb_Signatur: TdxBar;
    tv_Signatur: TcxGridDBTableView;
    tv_SignaturAbsender: TcxGridDBColumn;
    tv_SignaturEMail: TcxGridDBColumn;
    tv_SignaturGruss: TcxGridDBColumn;
    tv_SignaturID_Emailkonfiguration: TcxGridDBColumn;
    tv_SignaturMobil: TcxGridDBColumn;
    tv_SignaturName: TcxGridDBColumn;
    tv_SignaturPLZ_Ort: TcxGridDBColumn;
    tv_SignaturStrase: TcxGridDBColumn;
    tv_SignaturTelefon: TcxGridDBColumn;
    tv_SignaturText: TcxGridDBColumn;
    procedure btn_NewClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure ValueExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_CloseClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
  private
    { Private-Deklarationen }
    FWebBrowser: TAbstractWebBrowser;
    procedure CreateHTMLTEXT;
    procedure InitializeBrowser;
    procedure SetButtons;
  public
    { Public-Deklarationen }
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_Signatur: Tfrm_Signatur;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Browser.FullScreen,
  PCM.Data,
  uwvLoader;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
procedure Tfrm_Signatur.CreateHTMLTEXT;
  function EncodeImageToBase64(const ImagePath: string) : string;
  var
    InputStream, OutputStream: TMemoryStream;
    Picture: TPicture;
  begin
    InputStream := TMemoryStream.Create;
    OutputStream := TMemoryStream.Create;
    Picture := TPicture.Create;
    try
      Picture.LoadFromFile(ImagePath);
      Picture.SaveToStream(InputStream);
      InputStream.Position := 0;
      TNetEncoding.Base64.Encode(InputStream, OutputStream);
      OutputStream.Position := 0;
      SetString(Result, PAnsiChar(OutputStream.Memory), OutputStream.Size);
    finally
      InputStream.Free;
      OutputStream.Free;
      Picture.Free;
    end;
  end;
var
  iBreite: integer;
  iHoehe: integer;
begin
  mem_statement.Lines.Clear;
  mem_statement.Lines.Add('<html>');
  mem_statement.Lines.Add('	<head></head>');
  mem_statement.Lines.Add('		<body>');
  mem_statement.Lines.Add('		<div style="font-family: Aptos, sans-serif; font-size: 16px;" contenteditable="true"></div>');
  mem_statement.Lines.Add('		<footer>');
  // LeerZeile vor Gruﬂformel
  for var i := 1 to qry_Signatur.FieldByName('LeerzeilenVorGruss').AsInteger do
      mem_statement.Lines.Add('		<br>');
  if qry_Signatur.FieldByName('Gruss').asString <> '' then
    mem_statement.Lines.Add('		<div style="font-family: Aptos, sans-serif; font-size: 16px;">' + qry_Signatur.FieldByName('Gruss').asString + '</div>');
  // LeerZeile nach Gruﬂformel
  for var i := 1 to qry_Signatur.FieldByName('LeerzeilenNachGruss').AsInteger do    mem_statement.Lines.Add('		<br>');
  if qry_Signatur.FieldByName('Absender').asString <> '' then
    mem_statement.Lines.Add('		<div style="font-family: Aptos, sans-serif; font-size: 16px;">' + qry_Signatur.FieldByName('Absender').asString  + '</div>');
  // LeerZeile nach Name
  for var i := 1 to qry_Signatur.FieldByName('LeerzeilenNachName').AsInteger do
    mem_statement.Lines.Add('		<br>');

  try
    qry_SignaturBild.SaveToFile(ExtractFilePath(ParamStr(0)) + 'Signatur.jpeg');
    if FileExists(ExtractFilePath(ParamStr(0)) + 'Signatur.jpeg') then
    begin
      if qry_Signatur.FieldByName('Breite').asString = '' then
        iBreite:= 60
      else
        iBreite:= qry_Signatur.FieldByName('Breite').AsInteger;
      if qry_Signatur.FieldByName('Hoehe').asString = '' then
        iHoehe:= 60
      else
        iHoehe:= qry_Signatur.FieldByName('Hoehe').AsInteger;
      mem_statement.Lines.Add('				<div style="vertical-align:baseline"><img width="' + IntToSTr(iBreite) +'" height="' + IntToSTr(iHoehe) +'" src="data:image/' + ExtractFileExt(ExtractFilePath(ParamStr(0)) + 'Signatur.jpeg') + ';base64,' + EncodeImageToBase64(ExtractFilePath(ParamStr(0)) + 'Signatur.jpeg') + '"</div>');
    end;
  except
  end;
  // LeerZeile nach Bild
  for var i := 1 to qry_Signatur.FieldByName('LeerzeilenNachBild').AsInteger do
    mem_statement.Lines.Add('		<br>');
  // Name
  if qry_Signatur.FieldByName('Name').asString <> '' then
    mem_statement.Lines.Add('				<div style="font-family: Aptos, sans-serif; font-size: 12px;"><strong><u>' + qry_Signatur.FieldByName('Name').asString + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</u></strong></div>');
  // Strasse
  if qry_Signatur.FieldByName('Strase').asString <> '' then
    mem_statement.Lines.Add('				<div style="font-family: Aptos, sans-serif; font-size: 12px;">' + qry_Signatur.FieldByName('Strase').asString + '</div>');
  // PLZ - Ort
  if qry_Signatur.FieldByName('PLZ_Ort').asString <> '' then
   mem_statement.Lines.Add('				<div style="font-family: Aptos, sans-serif; font-size: 12px;">' + qry_Signatur.FieldByName('PLZ_Ort').asString + '</div>');
  // LeerZeile nach Adresse
  for var i := 1 to qry_Signatur.FieldByName('LeerzeilenNachAdresse').AsInteger do
    mem_statement.Lines.Add('		<br>');
  // Telefon
  if qry_Signatur.FieldByName('Telefon').asString <> '' then
    mem_statement.Lines.Add('				<div style="font-family: Aptos, sans-serif; font-size: 12px;">Telefon:&nbsp; ' + qry_Signatur.FieldByName('Telefon').asString + '</div>');
  // Mobil
  if qry_Signatur.FieldByName('Mobil').asString <> '' then
    mem_statement.Lines.Add('						<div style="font-family: Aptos, sans-serif; font-size: 12px;">Mobil:&nbsp;&nbsp;&nbsp;&nbsp; ' + qry_Signatur.FieldByName('Mobil').asString + '</div>');
  // Email
  if qry_Signatur.FieldByName('EMail').asString <> '' then
    mem_statement.Lines.Add('						<div style="font-family: Aptos, sans-serif; font-size: 12px;">E-Mail: &nbsp;&nbsp;<a href="mailto:' + qry_Signatur.FieldByName('EMail').asString + '">' + qry_Signatur.FieldByName('EMail').asString + '</a></div>');
  // LeerZeile nach Email
  for var i := 1 to qry_Signatur.FieldByName('LeerzeilenNachMail').AsInteger do
    mem_statement.Lines.Add('		<br>');
  // Abschlussformel
  for var i := 1 to mem_Abschluss.Lines.Count do
  begin
    mem_statement.Lines.Add('		<div style="font-family: Aptos, sans-serif; font-size: 10px;">' + mem_Abschluss.Lines[i] + '</div>');
  end;
  mem_statement.Lines.Add('		</footer>');
  mem_statement.Lines.Add('	</body>');
  mem_statement.Lines.Add('</html>');
  mem_statement.Lines.SaveToFile(ExtractFilePath(ParamStr(0)) + 'Signatur.html');
  if Assigned(FWebBrowser) then
    FWebBrowser.Navigate(ExtractFilePath(ParamStr(0)) + 'Signatur.html');
end;
procedure Tfrm_Signatur.InitializeBrowser;
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
procedure Tfrm_Signatur.SetButtons;
begin
  btn_Save.Enabled := qry_Signatur.State in [dsInsert, dsEdit];
  btn_Cancel.Enabled := qry_Signatur.State in [dsInsert, dsEdit];
  btn_Delete.Enabled := (not qry_Signatur.Eof) and not (qry_Signatur.State in [dsInsert, dsEdit]);
end;
procedure Tfrm_Signatur.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// ButtonFunctions                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region ButtonFunctions}
procedure Tfrm_Signatur.ValueExit(Sender: TObject);
begin
  btn_SaveClick(Sender);
end;
procedure Tfrm_Signatur.btn_NewClick(Sender: TObject);
begin
  if qry_Signatur.State in [dsInsert, dsedit] then
    qry_Signatur.Post;
  qry_Signatur.Append;
  qry_Signatur.Insert;
end;
procedure Tfrm_Signatur.btn_SaveClick(Sender: TObject);
begin
  if qry_Signatur.State in [dsInsert, dsEdit] then
  begin
    qry_Signatur.Post;
  end;
end;
procedure Tfrm_Signatur.btn_CancelClick(Sender: TObject);
begin
  qry_Signatur.Cancel;
end;
procedure Tfrm_Signatur.btn_DeleteClick(Sender: TObject);
begin
  if qry_Signatur.FieldByName('ID').AsInteger > 0 then
  begin
    qry_Signatur.Delete;
  end
end;
procedure Tfrm_Signatur.btn_EditClick(Sender: TObject);
begin
  CreateHTMLTEXT;
end;
procedure Tfrm_Signatur.btn_CloseClick(Sender: TObject);
begin
  close;
end;
{$EndRegion ButtonFunctions}
////////////////////////////////////////////////////////////////////////////////
// FormFunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunctions}
procedure Tfrm_Signatur.FormShow(Sender: TObject);
begin
 if GlobalWebView2Loader.Initialized then
    GlobalWebView2Loader.Destroy;
  GlobalWebView2Loader:= TWVLoader.Create(nil);
  GlobalWebView2Loader.UserDataFolder := GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\CustomCache';
  GlobalWebView2Loader.StartWebView2;
  InitializeBrowser;
  qry_Signatur.Open;
  qry_EmailAccounts.Open;
  CreateHTMLTEXT;
end;
{$EndRegion FormFunctions}
end.
