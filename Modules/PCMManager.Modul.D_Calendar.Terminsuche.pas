unit PCMManager.Modul.D_Calendar.Terminsuche;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, dxUIAClasses, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, Vcl.Menus, cxContainer,
  dxLayoutContainer, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  dxLayoutControl, dxCoreGraphics, cxMaskEdit, cxButtonEdit, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCheckBox, system.UITypes;

type
  Tfrm_Terminsuche = class(TForm)
    lactrl_Adressbook: TdxLayoutControl;
    grd_Adress: TcxGrid;
    grdDBTblView_Adress: TcxGridDBTableView;
    grdLvl_Adress: TcxGridLevel;
    btn_Ok: TcxButton;
    btn_Abort: TcxButton;
    lactrl_AdressbookGroup_Root: TdxLayoutGroup;
    lagrp_Adressbook: TdxLayoutGroup;
    lagrp_AdressbookMain: TdxLayoutGroup;
    laitm_AdressbookGrid: TdxLayoutItem;
    lagrp_AdressbookBtn: TdxLayoutGroup;
    laitm_AdressbookOk: TdxLayoutItem;
    laitm_AdressbookCancel: TdxLayoutItem;
    edt_suche: TcxButtonEdit;
    dxLayoutItem1: TdxLayoutItem;
    qry_KalenderSuche: TFDQuery;
    ds_KalenderSuche: TDataSource;
    grdDBTblView_AdressCaption: TcxGridDBColumn;
    grdDBTblView_AdressLocation: TcxGridDBColumn;
    grdDBTblView_AdressBeginn_Datum: TcxGridDBColumn;
    grdDBTblView_AdressBeginn_Zeit: TcxGridDBColumn;
    grdDBTblView_AdressEnde_Datum: TcxGridDBColumn;
    grdDBTblView_AdressEnde_Zeit: TcxGridDBColumn;
    grdDBTblView_AdressKalendername: TcxGridDBColumn;
    grdDBTblView_Adresscompleteday: TcxGridDBColumn;
    procedure edt_SuchePropertiesChange(Sender: TObject);
    procedure edt_SuchePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edt_sucheKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_AbortClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grdDBTblView_AdressCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frm_Terminsuche: Tfrm_Terminsuche;

implementation

{$R *.dfm}
uses
  {$Region uses}
  PCM.Data,PCM.Helper,
  PCM.Manager.Strings;
  {$EndRegion uses}

procedure Tfrm_Terminsuche.btn_AbortClick(Sender: TObject);
begin
  modalresult:= mrCancel;
end;
procedure Tfrm_Terminsuche.btn_OkClick(Sender: TObject);
begin
  if qry_KalenderSuche.FieldByName('Beginn_Datum').AsString <> '' then
  begin
    dm_PCM.iKalenderDate:= qry_KalenderSuche.FieldByName('Beginn_Datum').AsDateTime;
    modalresult:= mrOk;
  end
  else begin
    SetMessageDialog(2,rs_PCMManager_MSChooseEevent,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
  end;
end;
procedure Tfrm_Terminsuche.edt_sucheKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    grd_Adress.SetFocus;
end;
procedure Tfrm_Terminsuche.edt_SuchePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edt_Suche.text:= '';
end;
procedure Tfrm_Terminsuche.edt_SuchePropertiesChange(Sender: TObject);
begin
  if Length(edt_Suche.text) = 0 then
  begin
    qry_KalenderSuche.Filtered:= false;
  end
  else begin
    qry_KalenderSuche.Filter:= 'lower(Caption) like lower(' + QuotedStr('%' + edt_Suche.text + '%' ) + ')';
    qry_KalenderSuche.Filtered:= true;
  end;
end;
procedure Tfrm_Terminsuche.FormShow(Sender: TObject);
begin
  qry_KalenderSuche.open;
end;

procedure Tfrm_Terminsuche.grdDBTblView_AdressCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  hittest : TcxCustomGridHitTest;
begin
  hittest := grdDBTblView_Adress.GetHitTest(grd_Adress.ScreenToClient(Mouse.CursorPos));
  if hittest.HitTestCode = htCell then
    begin
     if qry_KalenderSuche.FieldByName('Beginn_Datum').AsString <> '' then
    begin
      dm_PCM.iKalenderDate:= qry_KalenderSuche.FieldByName('Beginn_Datum').AsDateTime;
      modalresult:= mrOk;
    end
    else begin
      SetMessageDialog(2,rs_PCMManager_MSChooseEevent,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
    end;
  end;
end;

end.
