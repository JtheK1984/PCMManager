unit PCMManager.Modul.C_Contacts.Konfession;

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
  FireDAC.Comp.Client, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  dxUIAClasses;

type
  Tfrm_PCM_Konfession = class(TForm)
    grd_Konfession: TcxGrid;
    grdDBTblView_Konfession: TcxGridDBTableView;
    grdLvl_Konfession: TcxGridLevel;
    grdDBTblView_KonfessionBezeichnung: TcxGridDBColumn;
    brmgr_Konfession: TdxBarManager;
    tb_konfession: TdxBar;
    btn_KonfessionNew: TdxBarLargeButton;
    btn_KonfessionSave: TdxBarLargeButton;
    btn_KonfessionClose: TdxBarLargeButton;
    btn_KonfessionCancel: TdxBarLargeButton;
    btn_KonfessionDelete: TdxBarLargeButton;
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

var
  frm_PCM_Konfession: Tfrm_PCM_Konfession;
  sTable: string;

implementation


{$R *.dfm}

uses  PCMManager.Modul.C_Contacts,
      PCM.Data,PCM.Strings;

{$Region Buttons}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
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
{$Region Execute}
////////////////////////////////////////////////////////////////////////////////
// Execute                                                                    //
////////////////////////////////////////////////////////////////////////////////
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
{$Region Formfunctions}
////////////////////////////////////////////////////////////////////////////////
// Formfunctions                                                               //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_PCM_Konfession.FormShow(Sender: TObject);
begin
  grdDBTblView_KonfessionBezeichnung.Caption := rs_PCMManager_Konfession;
end;
{$EndRegion}
end.

