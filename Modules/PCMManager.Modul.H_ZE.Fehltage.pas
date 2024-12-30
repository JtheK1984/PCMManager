unit PCMManager.Modul.H_ZE.Fehltage;

interface

uses
  {$Region Uses}
  cxClasses,
  cxColorComboBox,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBColorComboBox,
  cxDBData,
  cxDBEdit,
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
  cxImageComboBox,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxMaskEdit,
  cxNavigator,
  cxStyles,
  cxTextEdit,
  Data.DB,
  dxBar,
  dxDateRanges,
  dxScrollbarAnnotations,
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
  System.Classes,
  System.SysUtils,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion Uses}
type
  {$Region type}
  Tfrm_Fehltage = class(TForm)
    brdckCtrl_FT: TdxBarDockControl;
    brmgr_Config: TdxBarManager;
    btn_FTCancel: TdxBarLargeButton;
    btn_FTClose: TdxBarLargeButton;
    btn_FTDelete: TdxBarLargeButton;
    btn_FTNew: TdxBarLargeButton;
    btn_FTSave: TdxBarLargeButton;
    colcmbbx_FTEvent: TcxDBColorComboBox;
    colcmbbx_FTFont: TcxDBColorComboBox;
    ds_FT: TDataSource;
    edt_FTDesc: TcxDBTextEdit;
    edt_FTKuerzel: TcxDBTextEdit;
    grd_Feiertage: TcxGrid;
    grdDBTblView_Feiertage: TcxGridDBTableView;
    grdDBTblView_FeiertageBeschreibung: TcxGridDBColumn;
    grdDBTblView_FeiertageBezahlt: TcxGridDBColumn;
    grdDBTblView_FeiertageColor: TcxGridDBColumn;
    grdDBTblView_FeiertageColorFont: TcxGridDBColumn;
    grdDBTblView_FeiertageFaktor: TcxGridDBColumn;
    grdDBTblView_FeiertageKuerzel: TcxGridDBColumn;
    grdDBTblView_FeiertageTyp: TcxGridDBColumn;
    grdlvl_Feiertage: TcxGridLevel;
    grpbx_Feiertage: TcxGroupBox;
    grpbx_FTDetail: TcxGroupBox;
    imgcmbbx_FTGutschrift: TcxDBImageComboBox;
    imgcmbbx_FTSoll: TcxDBImageComboBox;
    imgcmbbx_FTTyp: TcxDBImageComboBox;
    lbl_FTColEvent: TcxLabel;
    lbl_FTColFont: TcxLabel;
    lbl_FTDesc: TcxLabel;
    lbl_FTGutschrift: TcxLabel;
    lbl_FTKuerzel: TcxLabel;
    lbl_FTSoll: TcxLabel;
    lbl_FTTyp: TcxLabel;
    qry_FT1: TFDQuery;
    tb_Feiertage: TdxBar;
    procedure btn_FTCancelClick(Sender: TObject);
    procedure btn_FTCloseClick(Sender: TObject);
    procedure btn_FTDeleteClick(Sender: TObject);
    procedure btn_FTNewClick(Sender: TObject);
    procedure btn_FTSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_Fehltage: Tfrm_Fehltage;
  {$EndRegion var}
implementation

{$R *.dfm}

uses
  {$Region Uses}
  PCM.Data,
  PCMManager.Modul.H_ZE;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Butons}
procedure Tfrm_Fehltage.btn_FTCancelClick(Sender: TObject);
begin
  qry_Ft1.Cancel;
end;
procedure Tfrm_Fehltage.btn_FTCloseClick(Sender: TObject);
begin
  Close;
end;
procedure Tfrm_Fehltage.btn_FTDeleteClick(Sender: TObject);
begin
  if qry_Ft1.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= 'Update manager_buchungen Set Fehltag = '''' Where Fehltag = :Fehltag';;
    dm_PCM.qry_work.ParamByName('Fehltag').asString:= qry_Ft1.FieldByName('Kuerzel').AsString;
    dm_PCM.qry_work.ExecSQL;
    dm_PCM.qry_work.SQL.Text:= 'Delete From manager_Kalender Where Caption = :Fehltag';;
    dm_PCM.qry_work.ParamByName('Fehltag').asString:= qry_Ft1.FieldByName('Beschreibung').AsString;
    dm_PCM.qry_work.ExecSQL;
    qry_Ft1.Delete;
    qry_Ft1.Refresh;
    frm_ze.qry_Buchungen.Refresh;
    frm_ze.qry_Fehltag.Refresh;
  end
end;
procedure Tfrm_Fehltage.btn_FTNewClick(Sender: TObject);
begin
  if qry_Ft1.State in [dsInsert, dsedit] then
    qry_Ft1.Post;
  qry_Ft1.Append;
  qry_Ft1.Insert;
end;
procedure Tfrm_Fehltage.btn_FTSaveClick(Sender: TObject);
begin
 if qry_Ft1.State in [dsInsert, dsEdit] then
  begin
    qry_Ft1.Post;
  end;
end;
{$EndRegion Butons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_Fehltage.FormCreate(Sender: TObject);
begin
  qry_FT1.Open;
end;
{$EndRegion FormFunktionen}
end.
