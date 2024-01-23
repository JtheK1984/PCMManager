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
  dxSkinsCore, dxSkinMetropolisDark, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, cxGroupBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinWXI;

type
  Tfrm_PCM_KalenderFilter = class(TForm)
    grd_Stundenplanuebersicht: TcxGrid;
    grdDBTblView_Stundenplanuebersicht: TcxGridDBTableView;
    grdlvl_Stundenplanuebersicht: TcxGridLevel;
    btn_Ok: TcxButton;
    btn_Cancel: TcxButton;
    grdDBTblView_StundenplanuebersichtKalendername: TcxGridDBColumn;
    grpbx_Design: TcxGroupBox;
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
      PCM.Data,PCM.Strings;

function Tfrm_PCM_KalenderFilter.Execute(const AShowModal: Boolean; AID: integer; out AKalender: string) : boolean;
begin
  AKalender:= '';
  Result:= false;
  FShowModal := AShowModal;
  dm_PCM.qry_Kalender_Filter.SQL.text:= 'Select DISTINCT Kalendername FROM manager_Kalender WHERE ID_BENUTZER = :ID ORDER BY Kalendername';
  dm_PCM.qry_Kalender_Filter.ParamByName('ID').AsInteger:= AID;
  dm_PCM.qry_Kalender_Filter.Open;
  if FShowModal then
  begin
    ShowModal;
    if modalresult = mrOk then
    begin
      AKalender:= sKalenderFilter;
      Result:= true
    end;
  end;
end;
procedure Tfrm_PCM_KalenderFilter.btn_OkClick(Sender: TObject);
begin
  sKalenderFilter:= dm_PCM.qry_Kalender_Filter.FieldByName('Kalendername').asString;
  modalresult:= mrOk;
end;
procedure Tfrm_PCM_KalenderFilter.btn_CancelClick(Sender: TObject);
begin
  modalresult:= mrcancel;
end;
procedure Tfrm_PCM_KalenderFilter.FormShow(Sender: TObject);
begin
  sKalenderFilter:= '';
  grdDBTblView_StundenplanuebersichtKalendername.caption := rs_PCMManager_Kalendername;
end;

end.
