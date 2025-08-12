unit PCMManager.Modul.C_Contacts.Konfession;

interface

uses
  {$Region Uses}
  Classes,
  ComCtrls,
  Controls,
  cxClasses,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBData,
  cxEdit,
  cxFilter,
  cxGraphics,
  cxGrid,
  cxGridCustomTableView,
  cxGridCustomView,
  cxGridDBTableView,
  cxGridLevel,
  cxGridTableView,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxNavigator,
  cxStyles,
  DB,
  Dialogs,
  dxBar,
  dxDateRanges,
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
  Forms,
  Graphics,
  Messages,
  SysUtils,
  ToolWin,
  Variants,
  Windows;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_PCM_Konfession = class(TForm)
    brmgr_Konfession: TdxBarManager;
    btn_KonfessionCancel: TdxBarLargeButton;
    btn_KonfessionClose: TdxBarLargeButton;
    btn_KonfessionDelete: TdxBarLargeButton;
    btn_KonfessionNew: TdxBarLargeButton;
    btn_KonfessionSave: TdxBarLargeButton;
    grd_Konfession: TcxGrid;
    grdDBTblView_Konfession: TcxGridDBTableView;
    grdDBTblView_KonfessionBezeichnung: TcxGridDBColumn;
    grdLvl_Konfession: TcxGridLevel;
    tb_konfession: TdxBar;
    procedure btn_KonfessionCloseClick(Sender: TObject);
    procedure btn_KonfessionSaveClick(Sender: TObject);
    procedure btn_KonfessionCancelClick(Sender: TObject);
    procedure btn_KonfessionDeleteClick(Sender: TObject);
    procedure btn_KonfessionNewClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function Execute(Caption: string; Recht: integer):boolean;
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_PCM_Konfession: Tfrm_PCM_Konfession;
  sTable: string;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region Uses}
  PCM.Data,PCM.Manager.Strings,
  PCMManager.Modul.C_Contacts;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_PCM_Konfession.Execute(Caption: string; Recht: integer) :boolean;
begin
  Self.Caption := Caption;
  btn_KonfessionNew.Enabled:= Recht >= SetReadWrite;
  btn_KonfessionSave.Enabled:= Recht >= SetReadWrite;
  btn_KonfessionCancel.Enabled:= Recht >= SetReadWrite;
  btn_KonfessionDelete.Enabled:= Recht > SetReadWrite;
  ShowModal;
  result:= true;
  Release;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_PCM_Konfession.btn_KonfessionNewClick(Sender: TObject);
begin
  if dm_PCM.qry_Contact_Konfession.State in [dsInsert, dsedit] then
    dm_PCM.qry_Contact_Konfession.Post;
  dm_PCM.qry_Contact_Konfession.Append;
  dm_PCM.qry_Contact_Konfession.Insert;
end;
procedure Tfrm_PCM_Konfession.btn_KonfessionSaveClick(Sender: TObject);
begin
  if dm_PCM.qry_Contact_Konfession.State in [dsInsert, dsEdit] then
  begin
    dm_PCM.qry_Contact_Konfession.Post;
  end;
end;
procedure Tfrm_PCM_Konfession.btn_KonfessionCancelClick(Sender: TObject);
begin
  dm_PCM.qry_Contact_Konfession.Cancel;
end;
procedure Tfrm_PCM_Konfession.btn_KonfessionDeleteClick(Sender: TObject);
begin
  if dm_PCM.qry_Contact_Konfession.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_Contact_Konfession.Delete;
  end
end;
procedure Tfrm_PCM_Konfession.btn_KonfessionCloseClick(Sender: TObject);
begin
  Close;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Formfunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure Tfrm_PCM_Konfession.FormShow(Sender: TObject);
begin
  grdDBTblView_KonfessionBezeichnung.Caption := rs_PCMManager_Konfession;
end;
{$EndRegion}
end.

