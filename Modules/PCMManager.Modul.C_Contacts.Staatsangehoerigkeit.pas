unit PCMManager.Modul.C_Contacts.Staatsangehoerigkeit;

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
  {$Region Types}
  Tfrm_PCM_Staatsangehoerigkeit = class(TForm)
    brmgr_Staatsangehoerigkeit: TdxBarManager;
    btn_StaatsangehoerigkeitCancel: TdxBarLargeButton;
    btn_StaatsangehoerigkeitClose: TdxBarLargeButton;
    btn_StaatsangehoerigkeitDelete: TdxBarLargeButton;
    btn_StaatsangehoerigkeitNew: TdxBarLargeButton;
    btn_StaatsangehoerigkeitSave: TdxBarLargeButton;
    grd_Staatsangehoerigkeit: TcxGrid;
    grdDBTblView_Staatsangehoerigkeit: TcxGridDBTableView;
    grdDBTblView_StaatsangehoerigkeitBezeichnung: TcxGridDBColumn;
    grdlvl_Staatsangehoerigkeit: TcxGridLevel;
    tb_Staatsangehoerigkeit: TdxBar;
    procedure btn_StaatsangehoerigkeitCloseClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitNewClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitSaveClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitCancelClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitDeleteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function Execute(Caption: string; Recht: integer) :boolean;
  end;
  {$EndRegion Types}
var
  {$Region var}
  frm_PCM_Staatsangehoerigkeit: Tfrm_PCM_Staatsangehoerigkeit;
  sTable: string;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region var}
  PCM.Data,
  PCM.Manager.Strings,
  PCMManager.Modul.C_Contacts;
  {$EndRegion var}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktion                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktion}
function Tfrm_PCM_Staatsangehoerigkeit.Execute(Caption: string; Recht: integer) :boolean;
begin
  dm_PCM.qry_Contact_Staatsangehoerigkeit.Open;
  Self.Caption := Caption;
  btn_StaatsangehoerigkeitNew.Enabled:= Recht >= SetReadWrite;
  btn_StaatsangehoerigkeitSave.Enabled:= Recht >= SetReadWrite;
  btn_StaatsangehoerigkeitCancel.Enabled:= Recht >= SetReadWrite;
  btn_StaatsangehoerigkeitDelete.Enabled:= Recht > SetReadWrite;
  ShowModal;
  result:= true;
  Release;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitNewClick(Sender: TObject);
begin
  if dm_PCM.qry_Contact_Staatsangehoerigkeit.State in [dsInsert, dsedit] then
    dm_PCM.qry_Contact_Staatsangehoerigkeit.Post;
  dm_PCM.qry_Contact_Staatsangehoerigkeit.Append;
  dm_PCM.qry_Contact_Staatsangehoerigkeit.Insert;
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitSaveClick(Sender: TObject);
begin
  if dm_PCM.qry_Contact_Staatsangehoerigkeit.State in [dsInsert, dsEdit] then
  begin
    dm_PCM.qry_Contact_Staatsangehoerigkeit.Post;
  end;
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitCancelClick(Sender: TObject);
begin
  dm_PCM.qry_Contact_Staatsangehoerigkeit.Cancel;
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitDeleteClick(Sender: TObject);
begin
  if dm_PCM.qry_Contact_Staatsangehoerigkeit.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_Contact_Staatsangehoerigkeit.Delete;
  end
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitCloseClick(Sender: TObject);
begin
  Close;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// FormFunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure Tfrm_PCM_Staatsangehoerigkeit.FormShow(Sender: TObject);
begin
  grdDBTblView_StaatsangehoerigkeitBezeichnung.Caption := rs_PCMManager_Staatsangehoerigkeit;
end;
{$EndRegion}
end.

