unit PCMManager.Modul.D_Stundenplan;

interface

uses
  {$Region Uses}
  Winapi.Windows,
  Winapi.CommCtrl,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  dxBarBuiltInMenu,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  System.IOUtils,
  Vcl.Menus,
  cxStyles,
  cxEdit,
  cxScheduler,
  cxSchedulerStorage,
  cxSchedulerCustomControls,
  cxSchedulerCustomResourceView,
  cxSchedulerDayView,
  cxSchedulerAgendaView,
  cxSchedulerDateNavigator,
  cxSchedulerHolidays,
  cxSchedulerTimeGridView,
  cxSchedulerUtils,
  cxSchedulerWeekView,
  cxSchedulerYearView,
  cxSchedulerGanttView,
  cxSchedulerRecurrence,
  cxSchedulerRibbonStyleEventEditor,
  cxSchedulerTreeListBrowser,
  cxContainer,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  dxDateRanges,
  dxScrollbarAnnotations,
  Data.DB,
  cxDBData,
  cxDBLookupComboBox,
  cxSpinEdit,
  cxTimeEdit,
  cxDBEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxLabel,
  cxTextEdit,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid, Vcl.StdCtrls,
  cxButtons,
  cxGroupBox,
  cxSplitter,
  cxPC,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  dxPSGlbl,
  dxPSUtl,
  dxPSEngn,
  dxPrnPg,
  dxBkgnd,
  dxWrap,
  dxPrnDev,
  dxPSCompsProvider,
  dxPSFillPatterns,
  dxPSEdgePatterns,
  dxPSPDFExportCore,
  dxPSPDFExport,
  cxDrawTextUtils,
  dxPSPrVwStd,
  dxPSPrVwAdv,
  dxPSPrVwRibbon,
  dxPScxPageControlProducer,
  dxPScxSchedulerLnk,
  dxPScxGridLnk,
  dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers,
  dxPScxExtEditorProducers,
  dxPScxCommon,
  dxPSCore,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  cxSchedulerDBStorage,
  dxBar,
  dateutils,
  cxProgressBar,
  strutils,
  cxDateUtils,
  cxSchedulerICalendar,
  cxExtEditRepositoryItems,
  IdBaseComponent,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdExplicitTLSClientServerBase,
  IdFTP,
  System.UITypes,
  cxMemo,
  dxmdaset,
  cxImageComboBox,
  Vcl.ExtCtrls,
  cxCalendar,
  system.JSON,
  cxRichEdit,
  cxDBRichEdit,
  dxGDIPlusClasses,
  cxImage,
  Vcl.ComCtrls,
  Vcl.ToolWin,
  cxBarEditItem,
  System.ImageList,
  Vcl.ImgList,
  cxTL,
  cxTLdxBarBuiltInMenu,
  cxTreeView,
  cxInplaceContainer,
  cxButtonEdit,
  shellapi,
  cxGridCustomPopupMenu,
  cxGridPopupMenu,
  Vcl.OleServer,
  OutlookXP,
  REST.Types,
  REST.Client,
  REST.Authenticator.Basic,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  dxShellDialogs,
  PCM.Functions,
  dxSkinWXI,
  cxGeometry,
  cxVariants,
  dxCustomData,
  cxCustomCanvas,
  dxCoreGraphics,
  dxChartCore,
  dxChartData,
  dxChartLegend,
  dxChartSimpleDiagram,
  dxChartXYDiagram,
  dxChartXYSeriesLineView,
  dxChartXYSeriesAreaView,
  dxChartMarkers,
  dxChartXYSeriesBarView,
  dxChartDBData,
  dxCoreClasses,
  dxChartControl,
  dxStatusBar,
  cxImageList,
  dxLayoutContainer,
  dxLayoutLookAndFeels,
  dxLayoutControl,
  dxLayoutcxEditAdapters,
  PCM.Browser,
  dxLayoutControlAdapters,
  dxUIAClasses;
  {$EndRegion Uses}
type
  {$Region Type}
  TPCMDay = record
    DaySA: string;
    DayFR: string;
    DayDO: string;
    DayMI: string;
    DayDI: string;
    DayMO: string;
    DaySO: string;
  end;
  TPCMDays = array of TPCMDay;
  TNachrichtenTyp = (ntAntrag, ntNachricht, ntAufgabe, ntTermin);
  TSearchType = (stSubject, stMessage, stSubjectMessage);
  Tfrm_Stundenplan = class(TForm)
    edt_Stundenplan_Klasse: TcxDBTextEdit;
    edt_Stundenplan_Schule: TcxDBTextEdit;
    edt_Stundenplan_Schuljahr: TcxDBTextEdit;
    grd_Stundenplanuebersicht: TcxGrid;
    grdDBTblView_Stundenplanuebersicht: TcxGridDBTableView;
    grdDBTblView_StundenplanuebersichtSchule: TcxGridDBColumn;
    grdDBTblView_StundenplanuebersichtKlasse: TcxGridDBColumn;
    grdDBTblView_StundenplanuebersichtSchuljahr: TcxGridDBColumn;
    grdDBTblView_StundenplanuebersichtID_Benutzer: TcxGridDBColumn;
    grdlvl_Stundenplanuebersicht: TcxGridLevel;
    lucmbbx_Stundenplan_Dienstag: TcxDBLookupComboBox;
    lucmbbx_Stundenplan_Donnerstag: TcxDBLookupComboBox;
    lucmbbx_Stundenplan_Freitag: TcxDBLookupComboBox;
    lucmbbx_Stundenplan_Mittwoch: TcxDBLookupComboBox;
    lucmbbx_Stundenplan_Montag: TcxDBLookupComboBox;
    lucmbbx_Stundenplan_Samstag: TcxDBLookupComboBox;
    tiEdt_Stundenplan_Bis: TcxDBTimeEdit;
    tiEdt_Stundenplan_Von: TcxDBTimeEdit;
    grd_StundenplanFach: TcxGrid;
    grdDBTblView_Stundenplan: TcxGridDBTableView;
    grdDBTblView_StundenplanBegin: TcxGridDBColumn;
    grdDBTblView_StundenplanEnd: TcxGridDBColumn;
    grdDBTblView_StundenplanMontag: TcxGridDBColumn;
    grdDBTblView_StundenplanDienstag: TcxGridDBColumn;
    grdDBTblView_StundenplanMittwoch: TcxGridDBColumn;
    grdDBTblView_StundenplanDonnerstag: TcxGridDBColumn;
    grdDBTblView_StundenplanFreitag: TcxGridDBColumn;
    grdDBTblView_StundenplanSamstag: TcxGridDBColumn;
    grdlvl_Stundenplan: TcxGridLevel;
    brmgr_Kalendar: TdxBarManager;
    qry_Stundenplan: TFDQuery;
    qry_Stundenplan_detail: TFDQuery;
    ds_Stundenplan_detail: TDataSource;
    ds_Stundenplan: TDataSource;
    qry_SchulFaecher: TFDQuery;
    dsSchulFaecher: TDataSource;
    tb_stundenplan: TdxBar;
    tb_stundenplanDetail: TdxBar;
    brdckctrl_Stundenplan: TdxBarDockControl;
    brdckCtrl_StundenplanFach: TdxBarDockControl;
    btn_StundenplanNew: TdxBarLargeButton;
    btn_StundenplanPrint: TdxBarLargeButton;
    btn_StundenplanDelete: TdxBarLargeButton;
    btn_StundenplanCancel: TdxBarLargeButton;
    btn_StundenplanSave: TdxBarLargeButton;
    btn_StundeNew: TdxBarLargeButton;
    btn_StundeDelete: TdxBarLargeButton;
    btn_StundeCancel: TdxBarLargeButton;
    btn_StundeSave: TdxBarLargeButton;
    pm_Einnahmen: TcxGridPopupMenu;
    SaveDialog1: TdxSaveFileDialog;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxImageList1: TcxImageList;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    lactrl_KalenderGroup_Root: TdxLayoutGroup;
    lactrl_Kalender: TdxLayoutControl;
    lagrp_Stundenplan: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem22: TdxLayoutItem;
    dxLayoutGroup28: TdxLayoutGroup;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutLabeledItem3: TdxLayoutLabeledItem;
    dxLayoutLabeledItem4: TdxLayoutLabeledItem;
    dxLayoutLabeledItem5: TdxLayoutLabeledItem;
    dxLayoutLabeledItem6: TdxLayoutLabeledItem;
    dxLayoutLabeledItem7: TdxLayoutLabeledItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutLabeledItem8: TdxLayoutLabeledItem;
    procedure SetButtonsEnabledVisible(DataSet: TDataSet);
    procedure qry_StundenplanAfterScroll(DataSet: TDataSet);
    procedure btn_StundenplanNewClick(Sender: TObject);
    procedure btn_StundenplanSaveClick(Sender: TObject);
    procedure btn_StundenplanCancelClick(Sender: TObject);
    procedure btn_StundenplanDeleteClick(Sender: TObject);
    procedure btn_StundenplanPrintClick(Sender: TObject);
    procedure btn_StundeDeleteClick(Sender: TObject);
    procedure btn_StundeCancelClick(Sender: TObject);
    procedure btn_StundeSaveClick(Sender: TObject);
    procedure btn_StundeNewClick(Sender: TObject);
    procedure grdDBTblView_StundenplanMontagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanDienstagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanBeginCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanMittwochCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanDonnerstagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanFreitagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grdDBTblView_StundenplanSamstagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private-Deklarationen }
    SaveGridViewStundenplan,SaveGridViewStundenplanDetail: TSavedGridView;
    procedure SetGridViews(Show:boolean);
  public
    { Public-Deklarationen }
    bol_allday: boolean;
    bol_VollBildCal: boolean;
    iCopyEventId: Integer;
    RecurrenceInfo: TcxSchedulerCustomRecurrenceInfoData;
    FSearchType : TSearchType;
    FResult: boolEan;
    procedure SetButtons;
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_Stundenplan: Tfrm_Stundenplan;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Main,
  PCMManager.Modul.D_Calandar.Neu,
  PCMManager.Modul.D_Calendar.Filter,
  PCMManager.Modul.D_Calendar.Import,
  PCM.Functions.Synch.Wait,
  PCMManager.Helper.Calendar.Ical,
  PCM.Data,
  PCM.Browser.FullScreen,
  PCM.Strings,
  uwvLoader, PCMManager.Modul.D_Calendar.Terminsuche;
  {$ENdRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}


procedure Tfrm_Stundenplan.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewStundenplan := TSavedGridView.Create(GV_StundenplanBes,dm_PCM.iIDBenutzerPCM, grdDBTblView_Stundenplan);
    SaveGridViewStundenplan.LoadView;
    SaveGridViewStundenplanDetail := TSavedGridView.Create(GV_StundenplanDet,dm_PCM.iIDBenutzerPCM, grdDBTblView_Stundenplanuebersicht);
    SaveGridViewStundenplanDetail.LoadView;
  end
  else begin
    SaveGridViewStundenplan.SaveView(0);
    SaveGridViewStundenplan.Free;
    SaveGridViewStundenplanDetail.SaveView(0);
    SaveGridViewStundenplanDetail.Free;
  end;
end;
procedure Tfrm_Stundenplan.SetButtonsEnabledVisible(DataSet: TDataSet);
begin
  SetButtons;
end;
procedure Tfrm_Stundenplan.SetButtons;
begin
  // AD_Stundenplan
  if dm_PCM.iStundenplan >= 2 then
  begin
    // Stundenplan
    btn_StundenplanSave.Enabled := qry_Stundenplan.State in [dsInsert, dsEdit];
    btn_StundenplanCancel.Enabled := qry_Stundenplan.State in [dsInsert, dsEdit];
    //Schulstunden
    btn_StundeSave.Enabled := qry_Stundenplan_detail.State in [dsInsert, dsEdit];
    btn_StundeCancel.Enabled := qry_Stundenplan_detail.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iStundenplan = 3 then
  begin
    // Stundenplan
    btn_StundenplanDelete.Enabled := (not qry_Stundenplan.Eof) and not (qry_Stundenplan.State in [dsInsert, dsEdit]);
    //Schulstunden
    btn_StundeDelete.Enabled := (not qry_Stundenplan_detail.Eof) and not (qry_Stundenplan_detail.State in [dsInsert, dsEdit]);
  end;
  if qry_Stundenplan.RecordCount = 0  then
  begin
    edt_Stundenplan_Schule.Enabled:= false;
    edt_Stundenplan_Klasse.Enabled:= false;
    edt_Stundenplan_Schuljahr.Enabled:= false;
    btn_StundenplanPrint.Enabled:= false;
  end
  else begin
    if dm_PCM.iStundenplan >= 2  then
    begin
      edt_Stundenplan_Schule.Enabled:= true;
      edt_Stundenplan_Klasse.Enabled:= true;
      edt_Stundenplan_Schuljahr.Enabled:= true;
      btn_StundenplanPrint.Enabled:= true;
    end;
  end;
  if qry_Stundenplan_detail.RecordCount = 0 then
  begin
    tiEdt_Stundenplan_Von.enabled:= false;
    tiEdt_Stundenplan_Bis.enabled:= false;
    lucmbbx_Stundenplan_Montag.enabled:= false;
    lucmbbx_Stundenplan_Dienstag.enabled:= false;
    lucmbbx_Stundenplan_Mittwoch.enabled:= false;
    lucmbbx_Stundenplan_Donnerstag.enabled:= false;
    lucmbbx_Stundenplan_Freitag.enabled:= false;
    lucmbbx_Stundenplan_Samstag.enabled:= false;
    if qry_Stundenplan.RecordCount = 0  then
    begin
      btn_StundeNew.enabled:= false
    end
    else begin
      if dm_PCM.iStundenplan >= 2  then
      begin
        btn_StundeNew.enabled:= true;
      end;
    end;
  end
  else begin
    if qry_Stundenplan.RecordCount = 0  then
    begin
      tiEdt_Stundenplan_Von.enabled:= false;
      tiEdt_Stundenplan_Bis.enabled:= false;
      lucmbbx_Stundenplan_Montag.enabled:= false;
      lucmbbx_Stundenplan_Dienstag.enabled:= false;
      lucmbbx_Stundenplan_Mittwoch.enabled:= false;
      lucmbbx_Stundenplan_Donnerstag.enabled:= false;
      lucmbbx_Stundenplan_Freitag.enabled:= false;
      lucmbbx_Stundenplan_Samstag.enabled:= false;
      btn_StundeNew.enabled:= false;
    end
    else begin
      if dm_PCM.iStundenplan >= 2  then
      begin
        tiEdt_Stundenplan_Von.enabled:= true;
        tiEdt_Stundenplan_Bis.enabled:= true;
        lucmbbx_Stundenplan_Montag.enabled:= true;
        lucmbbx_Stundenplan_Dienstag.enabled:= true;
        lucmbbx_Stundenplan_Mittwoch.enabled:= true;
        lucmbbx_Stundenplan_Donnerstag.enabled:= true;
        lucmbbx_Stundenplan_Freitag.enabled:= true;
        lucmbbx_Stundenplan_Samstag.enabled:= true;
        btn_StundeNew.Enabled:= true;
      end;
    end;
  end;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// TAB Stundenplan                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Stundenplan}
procedure Tfrm_Stundenplan.btn_StundenplanNewClick(Sender: TObject);
begin
   if qry_Stundenplan.State in [dsInsert, dsedit] then
    qry_Stundenplan.Post;
  qry_Stundenplan.Append;
  qry_Stundenplan.Insert;
  qry_Stundenplan.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  qry_Stundenplan_detail.Filter:= 'ID_Stundenplan = ' + qry_Stundenplan.FieldByName('ID').AsString;
  qry_Stundenplan_detail.Filtered:= true;
  if not edt_Stundenplan_Schule.Enabled then
  begin
    edt_Stundenplan_Schule.Enabled:= true;
    edt_Stundenplan_Klasse.Enabled:= true;
    edt_Stundenplan_Schuljahr.Enabled:= true;
    btn_StundenplanPrint.Enabled:= true;
  end;
  edt_Stundenplan_Schule.SetFocus;

end;
procedure Tfrm_Stundenplan.btn_StundenplanSaveClick(Sender: TObject);
begin
  if qry_Stundenplan.State in [dsInsert, dsEdit] then
  begin
    edt_Stundenplan_schule.PostEditValue;
    edt_Stundenplan_Klasse.PostEditValue;
    edt_Stundenplan_schuljahr.PostEditValue;
    qry_Stundenplan.Post;
  end;
end;
procedure Tfrm_Stundenplan.btn_StundenplanCancelClick(Sender: TObject);
begin
  qry_Stundenplan.Cancel;
end;
procedure Tfrm_Stundenplan.btn_StundenplanDeleteClick(Sender: TObject);
begin
  if qry_Stundenplan.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= 'Delete From manager_Stundenplan_Detail Where ID_Stundenplan = :ID';;
    dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_Stundenplan.FieldByName('ID').Asinteger;
    dm_PCM.qry_work.ExecSQL;
    qry_Stundenplan.Delete;
    qry_Stundenplan_detail.Refresh;
  end
end;
procedure Tfrm_Stundenplan.btn_StundenplanPrintClick(Sender: TObject);
  function GetColor(AColor: TColor): string;
  begin
    Result:= IntToStr(GetRValue(AColor)) + ',' + IntToStr(GetGValue(AColor)) + ',' + IntToStr(GetBValue(AColor));
  end;
  function SetXMLLIne(AValue: string; AColor, AFontColor: Integer) : string;
  begin
    Result:= '';
    if (AColor <> -1) and (AFontColor <> -1) then
    begin
      Result:= '                 <th style="background-color:rgb(' + GetColor(AColor) + ');color:rgb(' + GetColor(AFontColor) + ')">&nbsp; ' + AValue + '</th>'
    end;

    if (AColor <> -1) and (AFontColor = -1) then
    begin
      Result:= '                 <th style="background-color:rgb(' + GetColor(AColor) + ')">&nbsp; ' + AValue + '</th>'
    end;

    if (AColor = -1) and (AFontColor <> -1) then
    begin
      Result:= '                 <th style="color:rgb(' + GetColor(AFontColor) + ')">&nbsp; ' + AValue + '</th>'
    end;

    if (AColor = -1) and (AFontColor = -1) then
    begin
      Result:= '                 <th>&nbsp; ' + AValue + '</th>'
    end;


  end;
var
  slFileXML: TStringList;
  sSchule, sKlasse, sSchuljahr: String;
begin
  slFileXML:= TStringList.Create;
  dm_PCM.qry_work.SQL.Text:= 'SELECT * FROM manager_stundenplan where ID  = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_Stundenplan.FieldByName('ID').Asinteger;
  dm_PCM.qry_work.open;
  sSchule:= dm_PCM.qry_work.FieldByName('Schule').asString;
  sKlasse:= dm_PCM.qry_work.FieldByName('Klasse').asString;
  sSchuljahr:= dm_PCM.qry_work.FieldByName('Schuljahr').AsString;
  dm_PCM.qry_work.Close;
  try
    slFileXML.Add('<!DOCTYPE html>');
    slFileXML.Add('<html>');
    slFileXML.Add('<head>');
    slFileXML.Add('  <title>PCM - Stundenplanübersicht</title>');
    slFileXML.Add('  <meta http-equiv="content-type" content="text/html; charset=Windows-1252"/>');
    slFileXML.Add('  <style type="text/css">body {background: #086A87;}');
    slFileXML.Add('	   .container-table {margin: auto;	margin-top: calc(8vh - 7px); margin-bottom: calc(8vh - 7px); width: 80vw; min-height: 8vh; display: block; overflow: auto; -moz-box-shadow: 0px 0px 10px #ccc; -webkit-box-shadow: 0px 0px 10px #ccc; border-bottom: solid 5px #93a8d8;}');
    slFileXML.Add('	   .container-table {padding: 15px 15px 15px 15px;width: 80%; }');
    slFileXML.Add('	   .container-table-background{background-color: white;}');
    slFileXML.Add('	   .container-table * {font-family: "Lucida Grande", "Lucida Sans Unicode", Arial, Helvetica, Verdana, sans-serif;}');
    slFileXML.Add('	   .container-table h2 {font-size: 20px; font-weight: 100;}');
    slFileXML.Add('	   .Report {width: calc(50% - 15px); float: left; text-align: left;}');
    slFileXML.Add('	   .Datumuhrzeit {width: calc(50% - 15px); float: right; text-align: right;}');
    slFileXML.Add('	   .divider {height: 5px; width: 100%; background-color: #086A87}');
    slFileXML.Add('	   #search {outline: none; margin-top: 0px; margin-bottom: 15px;  width: 100%; display: block; border: none; border-bottom: solid 2px #c9c9c9; transition: border 0.3s;}');
    slFileXML.Add('	   #search:focus, #search.focus {border-bottom: solid 2px #969696;}');
    slFileXML.Add('	   table {width: 100%;border-collapse:collapse; padding: 0px 15px 0px 15px;}');
    slFileXML.Add('	   table tbody th {padding: 15px 0px 0px 0px;}');
    slFileXML.Add('	   table tbody th {border-top: 1px solid black; padding: 5px 0px 0px 0px}');
    slFileXML.Add('	   table tfoot th {border-bottom: 5px double black;padding: 20px 0px 0px 0px;}');
    slFileXML.Add('	   th {padding-bottom: 5px; text-align: Left;  column-span: 3px; border-style:solid solid solid solid; border-collapse: collapse; border-width: 1px;}');
    slFileXML.Add('	   th.noneBorder {padding-bottom: 5px; text-align: Left;  column-span: 3px; border-style:none none none none; border-collapse: collapse; border-width: 1px;}');
    slFileXML.Add('	   td {padding-top: 1px; padding-bottom: 1px; font-size: 15px;}');
    slFileXML.Add('	   .status-fields {float: left; display: flex; flex-wrap: wrap; width: calc( 100% - 20px ); text-align: center; margin: 20px 10px 20px 10px;}');
    slFileXML.Add('	   div.status-fields>div {width: calc( 20% - 20px ); display: flex; align-items: center; justify-content: center; flex-direction: column; margin: 5px 5px 5px 5px; padding: 10px 5px 10px 5px; float: left; }');
    slFileXML.Add('	   div.status-fields>tr {display: none;} div.status-fields>tr>td {display: none;}');
    slFileXML.Add('	   .mobile-hidden {display: none;}');
    slFileXML.Add('    </style>');
    slFileXML.Add('  </head>');
    slFileXML.Add('  <body>');
    slFileXML.Add('      <div class="container-table container-table-background">');
    slFileXML.Add('      <div class="Report">');
    slFileXML.Add('        <h2>PCM - Finanzübersicht für');
    slFileXML.Add('        <h2>' + sSchule + ' Klasse:' + sKlasse + ' Schuljahr:' + sSchuljahr);
    slFileXML.Add('      </div>');
    slFileXML.Add('      <div class="Datumuhrzeit">');
    slFileXML.Add('        <h2>' + DatetoStr(Date()) + ' - ' + Copy(TimeToStr(Now()),1,5) + ' Uhr</h2>');
    slFileXML.Add('      </div>');
    slFileXML.Add('      <div style="clear: both;">');
    slFileXML.Add('				<input id="search" placeholder="Suchen"/>');
    slFileXML.Add('				<div class="divider">');
    slFileXML.Add('					<div class="status-fields">');
    slFileXML.Add('						<table id="tblData">');
    ////////////////////////////////////////////////////////////////////////////
    // Überschrift                                                            //
    ////////////////////////////////////////////////////////////////////////////
    slFileXML.Add('              <thead>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th>&nbsp; Beginn:</th>');
    slFileXML.Add('									<th>&nbsp; Ende:</th>');
    slFileXML.Add('									<th>&nbsp; Montag:</th>');
    slFileXML.Add('									<th>&nbsp; Dienstag:</th>');
    slFileXML.Add('									<th>&nbsp; Mittwoch:</th>');
    slFileXML.Add('									<th>&nbsp; Donnerstag:</th>');
    slFileXML.Add('									<th>&nbsp; Freitag:</th>');
    slFileXML.Add('									<th>&nbsp; Samstag:</th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</thead>');
    dm_PCM.qry_work.SQL.Text:= 'SELECT mspd.BEGIN, ifnull(mspk.Farbe,-1) as Color_Begin, ifnull(mspk.Schriftfarbe,-1) as FontColor_Begin, ' +
                                'mspd.END, ifnull(mspk.Farbe,-1) as Color_End, ifnull(mspk.Schriftfarbe,-1) as FontColor_End, ' +
                                'mspsf_mo.Bezeichnung AS MON, ifnull(mspsf_mo.Farbe,-1) AS MO_Color, ifnull(mspsf_mo.SchriftFarbe,-1) AS MO_FontColor, ' +
                                'mspsf_di.Bezeichnung AS DIE, ifnull(mspsf_di.Farbe,-1) AS DI_Color, ifnull(mspsf_di.SchriftFarbe,-1) AS DI_FontColor, ' +
                                'mspsf_mi.Bezeichnung AS MIT, ifnull(mspsf_mi.Farbe,-1) AS MI_Color, ifnull(mspsf_mi.SchriftFarbe,-1) AS MI_FontColor, ' +
                                'mspsf_do.Bezeichnung AS DON, ifnull(mspsf_do.Farbe,-1) AS DO_Color, ifnull(mspsf_do.SchriftFarbe,-1) AS DO_FontColor, ' +
                                'mspsf_fr.Bezeichnung AS FRE, ifnull(mspsf_fr.Farbe,-1) AS FR_Color, ifnull(mspsf_fr.SchriftFarbe,-1) AS FR_FontColor, ' +
                                'mspsf_sa.Bezeichnung AS SAM, ifnull(mspsf_SA.Farbe,-1) AS SA_Color, ifnull(mspsf_SA.SchriftFarbe,-1) AS SA_FontColor ' +
                                'FROM manager_stundenplan_detail mspd ' +
                                'LEFT OUTER JOIN manager_stundenplan_konfiguration mspk ON mspk.ID_Benutzer = 1 ' +
                                'LEFT OUTER JOIN manager_stundenplan_schulfaecher mspsf_mo ON mspd.Montag = mspsf_mo.id ' +
                                'LEFT OUTER JOIN manager_stundenplan_schulfaecher mspsf_di ON mspd.Dienstag = mspsf_di.id ' +
                                'LEFT OUTER JOIN manager_stundenplan_schulfaecher mspsf_mi ON mspd.Mittwoch = mspsf_mi.id ' +
                                'LEFT OUTER JOIN manager_stundenplan_schulfaecher mspsf_do ON mspd.Donnerstag = mspsf_do.id ' +
                                'LEFT OUTER JOIN manager_stundenplan_schulfaecher mspsf_fr ON mspd.Freitag = mspsf_fr.id ' +
                                'LEFT OUTER JOIN manager_stundenplan_schulfaecher mspsf_sa ON mspd.Samstag = mspsf_sa.id ' +
                                'where mspd.ID_Stundenplan  = :ID';
    dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_Stundenplan.FieldByName('ID').Asinteger;
    dm_PCM.qry_work.open;
    while not dm_PCM.qry_work.Eof do
    begin
      slFileXML.Add('							<tbody>');
      slFileXML.Add('								<tr>');
      // Beginn
      slFileXML.Add(SetXMLLIne(dm_PCM.qry_work.FieldByName('Begin').asString,
                               dm_PCM.qry_work.FieldByName('Color_Begin').AsInteger,
                               dm_PCM.qry_work.FieldByName('FontColor_Begin').AsInteger));
      // Ende
      slFileXML.Add(SetXMLLIne(dm_PCM.qry_work.FieldByName('End').asString,
                               dm_PCM.qry_work.FieldByName('Color_End').AsInteger,
                               dm_PCM.qry_work.FieldByName('FontColor_End').AsInteger));
      // Montag
      slFileXML.Add(SetXMLLIne(dm_PCM.qry_work.FieldByName('MON').asString,
                               dm_PCM.qry_work.FieldByName('MO_Color').AsInteger,
                               dm_PCM.qry_work.FieldByName('MO_FontColor').AsInteger));
      // Dienstag
      slFileXML.Add(SetXMLLIne(dm_PCM.qry_work.FieldByName('DIE').asString,
                               dm_PCM.qry_work.FieldByName('DI_Color').AsInteger,
                               dm_PCM.qry_work.FieldByName('DI_FontColor').AsInteger));
      // Mittwoch
      slFileXML.Add(SetXMLLIne(dm_PCM.qry_work.FieldByName('MIT').asString,
                               dm_PCM.qry_work.FieldByName('MI_Color').AsInteger,
                               dm_PCM.qry_work.FieldByName('MI_FontColor').AsInteger));
      // Donnerstag
      slFileXML.Add(SetXMLLIne(dm_PCM.qry_work.FieldByName('DON').asString,
                               dm_PCM.qry_work.FieldByName('DO_Color').AsInteger,
                               dm_PCM.qry_work.FieldByName('DO_FontColor').AsInteger));
      // Freitag
      slFileXML.Add(SetXMLLIne(dm_PCM.qry_work.FieldByName('FRE').asString,
                               dm_PCM.qry_work.FieldByName('FR_Color').AsInteger,
                               dm_PCM.qry_work.FieldByName('FR_FontColor').AsInteger));
      // Samstag
      slFileXML.Add(SetXMLLIne(dm_PCM.qry_work.FieldByName('SAM').asString,
                               dm_PCM.qry_work.FieldByName('SA_Color').AsInteger,
                               dm_PCM.qry_work.FieldByName('SA_FontColor').AsInteger));
      slFileXML.Add('								</tr>');
      slFileXML.Add('							</tbody>');
      dm_PCM.qry_work.Next
    end;
    slFileXML.Add('              <tbody>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th class="noneBorder"></th>');
    slFileXML.Add('									<th class="noneBorder"></th>');
    slFileXML.Add('									<th class="noneBorder"></th>');
    slFileXML.Add('									<th class="noneBorder"></th>');
    slFileXML.Add('									<th class="noneBorder"></th>');
    slFileXML.Add('									<th class="noneBorder"></th>');
    slFileXML.Add('									<th class="noneBorder"></th>');
    slFileXML.Add('									<th class="noneBorder"></th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</tbody>');
    slFileXML.Add('						</table>');
    slFileXML.Add('					</div>');
    slFileXML.Add('				</div>');
    slFileXML.Add('			</div>');
    slFileXML.Add('    </div>');
    slFileXML.Add('    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>');
    slFileXML.Add('    <script type="text/javascript">$(document).ready(function()');
    slFileXML.Add('{');
    slFileXML.Add('	$(''#search'').keyup(function()');
    slFileXML.Add('	{');
    slFileXML.Add('		searchTable($(this).val());');
    slFileXML.Add('	});');
    slFileXML.Add('});');
    slFileXML.Add('function searchTable(inputVal)');
    slFileXML.Add('{');
    slFileXML.Add('	// Tabellenvariable festlegen');
    slFileXML.Add('	var table = $(''#tblData'');');
    slFileXML.Add('	// Tabelleninhalt Tr finden');
    slFileXML.Add('	table.find(''tr'').each(function(index, row)');
    slFileXML.Add('	{');
    slFileXML.Add('		var allCells = $(row).find(''td'');');
    slFileXML.Add('		if(allCells.length > 0)');
    slFileXML.Add('		{');
    slFileXML.Add('			var found = false;');
    slFileXML.Add('			allCells.each(function(index, td)');
    slFileXML.Add('			{');
    slFileXML.Add('				var regExp = new RegExp(inputVal, ''i'');');
    slFileXML.Add('				if(regExp.test($(td).text()))');
    slFileXML.Add('				{');
    slFileXML.Add('					found = true;');
    slFileXML.Add('					return false;');
    slFileXML.Add('				}');
    slFileXML.Add('			});');
    slFileXML.Add('			if(found == true)$(row).show();else $(row).hide();');
    slFileXML.Add('		};');
    slFileXML.Add('		if(allCells.length < 1)');
    slFileXML.Add('		{');
    slFileXML.Add('			var allCells = $(row).find(''th'');');
    slFileXML.Add('			if(allCells.length > 0)');
    slFileXML.Add('			{');
    slFileXML.Add('				var found = false;');
    slFileXML.Add('				allCells.each(function(index, td)');
    slFileXML.Add('				{');
    slFileXML.Add('					var regExp = new RegExp(inputVal, ''i'');');
    slFileXML.Add('					if(regExp.test($(td).text()))');
    slFileXML.Add('					{');
    slFileXML.Add('						found = true;');
    slFileXML.Add('						return false;');
    slFileXML.Add('					}');
    slFileXML.Add('				});');
    slFileXML.Add('				if(found == true)$(row).show();else $(row).hide();');
    slFileXML.Add('			};');
    slFileXML.Add('		};');
    slFileXML.Add('	});');
    slFileXML.Add('}</script>');
    slFileXML.Add('  </body>');
    slFileXML.Add('</html>');
    slFileXML.SaveToFile(TPath.Combine(TPath.GetDirectoryName(Application.ExeName), 'Report') + '_Stundenplan.html');
    Application.CreateForm(Tfrm_Browser_FullScreen, frm_Browser_FullScreen);
    frm_Browser_FullScreen.Execute(True,'PCM - Manager: Stundenplan',TPath.Combine(TPath.GetDirectoryName(Application.ExeName), 'Report') + '_Stundenplan.html');
  finally
    slFileXML.Free;
  end;
end;
procedure Tfrm_Stundenplan.btn_StundeNewClick(Sender: TObject);
begin
   if qry_Stundenplan_detail.State in [dsInsert, dsedit] then
    qry_Stundenplan_detail.Post;
  qry_Stundenplan_detail.Append;
  qry_Stundenplan_detail.Insert;

  qry_Stundenplan_detail.FieldByName('Montag').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('Dienstag').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('Mittwoch').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('Donnerstag').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('Freitag').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('Samstag').AsInteger:= 0;
  qry_Stundenplan_detail.FieldByName('ID_Stundenplan').AsInteger:= qry_Stundenplan.FieldByName('ID').AsInteger;

  if not tiEdt_Stundenplan_Von.enabled then
  begin
    tiEdt_Stundenplan_Von.enabled:= true;
    tiEdt_Stundenplan_Bis.enabled:= true;
    lucmbbx_Stundenplan_Montag.enabled:= true;
    lucmbbx_Stundenplan_Dienstag.enabled:= true;
    lucmbbx_Stundenplan_Mittwoch.enabled:= true;
    lucmbbx_Stundenplan_Donnerstag.enabled:= true;
    lucmbbx_Stundenplan_Freitag.enabled:= true;
    lucmbbx_Stundenplan_Samstag.enabled:= true;
  end;
  tiEdt_Stundenplan_Von.SetFocus;
end;
procedure Tfrm_Stundenplan.btn_StundeSaveClick(Sender: TObject);
begin
  if qry_Stundenplan_detail.State in [dsInsert, dsEdit] then
  begin
    qry_Stundenplan_detail.Post;
  end;
end;
procedure Tfrm_Stundenplan.btn_StundeCancelClick(Sender: TObject);
begin
  qry_Stundenplan_detail.Cancel;
end;
procedure Tfrm_Stundenplan.btn_StundeDeleteClick(Sender: TObject);
begin
  if qry_Stundenplan_detail.FieldByName('ID').AsInteger > 0 then
  begin
    qry_Stundenplan_detail.Delete;
  end
end;
procedure Tfrm_Stundenplan.grdDBTblView_StundenplanBeginCustomDrawCell(  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:= 'Select Farbe, Schriftfarbe from manager_stundenplan_konfiguration';
    dm_PCM.qry_work.open;
    ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
    ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Stundenplan.grdDBTblView_StundenplanMontagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:= 'Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[2];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Stundenplan.grdDBTblView_StundenplanDienstagCustomDrawCell(  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:= 'Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[3];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Stundenplan.grdDBTblView_StundenplanMittwochCustomDrawCell( Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
 try
    dm_PCM.qry_work.sql.text:='Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[4];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Stundenplan.grdDBTblView_StundenplanDonnerstagCustomDrawCell(  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:='Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[5];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Stundenplan.grdDBTblView_StundenplanFreitagCustomDrawCell(  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:= 'Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[6];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Stundenplan.grdDBTblView_StundenplanSamstagCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  try
    dm_PCM.qry_work.sql.text:= 'Select Farbe, Schriftfarbe from manager_stundenplan_schulfaecher Where ID = :ID';
    dm_PCM.qry_work.parambyname('ID').asInteger:= AViewInfo.GridRecord.Values[7];
    dm_PCM.qry_work.open;
    if dm_PCM.qry_work.RecordCount > 0 then
    begin
      ACanvas.Brush.Color := dm_PCM.qry_work.FieldByName('Farbe').asInteger;
      ACanvas.Font.Color := dm_PCM.qry_work.FieldByName('Schriftfarbe').asInteger;
    end;
    dm_PCM.qry_work.Close;
  except
  end;
end;
procedure Tfrm_Stundenplan.qry_StundenplanAfterScroll(DataSet: TDataSet);
var
  iID_Stundenplan: integer;
begin
  Setbuttons;
  iID_Stundenplan:= qry_Stundenplan.FieldByName('ID').AsInteger;
  qry_Stundenplan_detail.Filter:= 'ID_Stundenplan = ' + IntToStr(iID_Stundenplan);
  qry_Stundenplan_detail.Filtered:= true;
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Formfunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure Tfrm_Stundenplan.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_Stundenplan.FormDestroy(Sender: TObject);
begin
  SetGridViews(False);
end;
procedure Tfrm_Stundenplan.FormShow(Sender: TObject);
  procedure InitializeRights;
  begin
    lagrp_Stundenplan.Visible:= dm_PCM.iStundenplan >= SetRead;
    // Toolbar
    btn_StundenplanNew.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    btn_StundenplanSave.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    btn_StundenplanCancel.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    btn_StundenplanDelete.Enabled:= dm_PCM.iStundenplan > SetReadWrite;
    btn_StundeNew.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    btn_StundeSave.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    btn_StundeCancel.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    btn_StundeDelete.Enabled:= dm_PCM.iStundenplan > SetReadWrite;
    // Editfelder
    edt_Stundenplan_Schule.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    edt_Stundenplan_Klasse.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    edt_Stundenplan_Schuljahr.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    tiEdt_Stundenplan_Von.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    tiEdt_Stundenplan_Bis.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    lucmbbx_Stundenplan_Montag.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    lucmbbx_Stundenplan_Dienstag.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    lucmbbx_Stundenplan_Mittwoch.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    lucmbbx_Stundenplan_Donnerstag.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    lucmbbx_Stundenplan_Freitag.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;
    lucmbbx_Stundenplan_Samstag.Enabled:= dm_PCM.iStundenplan >= SetReadWrite;

  end;
  procedure OpenData;
  //var I:integer;
  begin
    qry_Stundenplan.Open;
    qry_Stundenplan_detail.Open;
    qry_SchulFaecher.Open;
    qry_SchulFaecher.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_Stundenplan.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_Stundenplan.Filtered:= true;
    grdDBTblView_StundenplanuebersichtID_Benutzer.Caption:= rs_PCMBenutzerverwaltung_Benutzer;
    grdDBTblView_StundenplanuebersichtKlasse.Caption:= rs_PCMManager_Klasse;
    grdDBTblView_StundenplanuebersichtSchule.Caption:= rs_PCMManager_Schule;
    grdDBTblView_StundenplanuebersichtSchuljahr.Caption:= rs_PCMManager_Schuljahr;
    grdDBTblView_StundenplanBegin.Caption:= rs_PCM_Beginn;
    grdDBTblView_StundenplanDienstag.Caption:= rs_PCM_Dienstag;
    grdDBTblView_StundenplanDonnerstag.Caption:= rs_PCM_Donnerstag;
    grdDBTblView_StundenplanEnd.Caption:= rs_PCM_EndeZeit;
    grdDBTblView_StundenplanFreitag.Caption:= rs_PCM_Freitag;
    grdDBTblView_StundenplanMittwoch.Caption:= rs_PCM_Mittwoch;
    grdDBTblView_StundenplanMontag.Caption:= rs_PCM_Montag;
    grdDBTblView_StundenplanSamstag.Caption:= rs_PCM_Samstag;
  end;
begin
  OpenData;
  InitializeRights;
  SetButtons;
  SetGridViews(True);
end;
{$EndRegion}
end.
