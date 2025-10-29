unit PCMManager.Modul.D_Calendar.Filter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations,
  Data.DB, cxDBData, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxClasses,
  Vcl.Menus, System.ImageList, Vcl.ImgList, Vcl.StdCtrls, cxButtons,
  cxContainer, cxGroupBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxLayoutContainer,
  dxLayoutControlAdapters, dxLayoutControl, dxUIAClasses, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxDBCheckComboBox, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData,
  dxLayoutcxEditAdapters, cxCheckBox, Vcl.ComCtrls, dxtree;

type
  Tfrm_PCM_KalenderFilter = class(TForm)
    btn_Ok: TcxButton;
    btn_Cancel: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    cxCheckComboBox1: TcxCheckComboBox;
    dxLayoutItem7: TdxLayoutItem;
    procedure btn_CancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
  private
    { Private-Deklarationen }
    FShowModal: Boolean;
    sKalenderFilter: string;
  public
    { Public-Deklarationen }
    function Execute(const AShowModal: Boolean; AID: integer; out AKalender: string) : boolean;
  end;

var
  frm_PCM_KalenderFilter: Tfrm_PCM_KalenderFilter;

implementation

{$R *.dfm}

uses  PCMManager.Modul.D_Calendar,
      PCM.Data,PCM.Manager.Strings;

function Tfrm_PCM_KalenderFilter.Execute(const AShowModal: Boolean; AID: integer; out AKalender: string) : boolean;
begin
  AKalender:= '';
  Result:= false;
  FShowModal := AShowModal;
  dm_PCM.qry_Kalender_Filter.SQL.text:= 'Select DISTINCT Kalendername FROM manager_Kalender WHERE ID_BENUTZER = :ID ORDER BY Kalendername';
  dm_PCM.qry_Kalender_Filter.ParamByName('ID').AsInteger:= AID;
  dm_PCM.qry_Kalender_Filter.Open;


  cxCheckComboBox1.Properties.Items.Clear;
  while not dm_PCM.qry_Kalender_Filter.eof do
  begin
    cxCheckComboBox1.Properties.Items.AddCheckItem(dm_PCM.qry_Kalender_Filter.FieldByName('Kalendername').AsString);
    dm_PCM.qry_Kalender_Filter.next;
  end;
  cxCheckComboBox1.DroppedDown:= true;
  if FShowModal then
  begin
    ShowModal;
    if modalresult = mrOk then
    begin
      AKalender:=  Copy(sKalenderFilter,1,Length(sKalenderFilter)-1) ;
      Result:= true
    end;
  end;
end;
procedure Tfrm_PCM_KalenderFilter.btn_OkClick(Sender: TObject);
begin
  sKalenderFilter := '';
  for var i := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do
  begin
    if cxCheckComboBox1.States[i] = cbsChecked then
      sKalenderFilter := sKalenderFilter + QuotedStr(cxCheckComboBox1.Properties.Items[i].Description) + ',';
  end;
  modalresult:= mrOk;
end;
procedure Tfrm_PCM_KalenderFilter.btn_CancelClick(Sender: TObject);
begin
  modalresult:= mrcancel;
end;
procedure Tfrm_PCM_KalenderFilter.FormShow(Sender: TObject);
begin
  sKalenderFilter:= '';
end;

end.
