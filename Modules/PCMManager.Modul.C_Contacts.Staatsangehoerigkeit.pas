unit PCMManager.Modul.C_Contacts.Staatsangehoerigkeit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, ComCtrls, ToolWin, dxBar, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxNavigator, dxDateRanges, dxScrollbarAnnotations;

type
  Tfrm_PCM_Staatsangehoerigkeit = class(TForm)
    grd_Staatsangehoerigkeit: TcxGrid;
    grdDBTblView_Staatsangehoerigkeit: TcxGridDBTableView;
    grdlvl_Staatsangehoerigkeit: TcxGridLevel;
    grdDBTblView_StaatsangehoerigkeitBezeichnung: TcxGridDBColumn;
    brmgr_Staatsangehoerigkeit: TdxBarManager;
    tb_Staatsangehoerigkeit: TdxBar;
    btn_StaatsangehoerigkeitNew: TdxBarLargeButton;
    btn_StaatsangehoerigkeitCancel: TdxBarLargeButton;
    btn_StaatsangehoerigkeitSave: TdxBarLargeButton;
    btn_StaatsangehoerigkeitClose: TdxBarLargeButton;
    btn_StaatsangehoerigkeitDelete: TdxBarLargeButton;
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

var
  frm_PCM_Staatsangehoerigkeit: Tfrm_PCM_Staatsangehoerigkeit;
  sTable: string;

implementation


{$R *.dfm}

uses PCMManager.Modul.C_Contacts,
     PCM.Data,PCM.Strings;


{$Region Buttons}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
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
{$Region Execute}
////////////////////////////////////////////////////////////////////////////////
// Execute                                                                    //
////////////////////////////////////////////////////////////////////////////////
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
{$Region Formfunctions}
////////////////////////////////////////////////////////////////////////////////
// FormFunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_PCM_Staatsangehoerigkeit.FormShow(Sender: TObject);
begin
  grdDBTblView_StaatsangehoerigkeitBezeichnung.Caption := rs_PCMManager_Staatsangehoerigkeit;
end;
{$EndRegion}
end.

