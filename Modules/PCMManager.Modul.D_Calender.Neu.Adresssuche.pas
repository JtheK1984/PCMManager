unit PCMManager.Modul.D_Calender.Neu.Adresssuche;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Db, ComCtrls, ToolWin, cxPC,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxDBLookupComboBox, Menus, cxGridExportLink,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit,
  cxContainer, cxTextEdit, ExtCtrls, cxGroupBox, cxLookAndFeels,
  ImgList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxPCdxBarPopupMenu, 
   cxNavigator, dxBarBuiltInMenu, dxSkinsCore, dxDateRanges,
  dxScrollbarAnnotations, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBar, cxLabel,pcm.Functions, dxSkinWXI, System.UITypes;

type
  TAdressSucheTyp = (astAdressen, astAnsprechpartner);
  TfAdressSuche = class(TForm)
    pcTyp: TcxPageControl;
    tshAdresssuche: TcxTabSheet;
    cxGrid1: TcxGrid;
    tvAdressen: TcxGridDBTableView;
    tvAdressenName: TcxGridDBColumn;
    tvAdressenStrasse: TcxGridDBColumn;
    tvAdressenplz: TcxGridDBColumn;
    tvAdressenOrt: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    bAdressenZeigen: TcxButton;
    cxGroupBox2: TcxGroupBox;
    teName: TcxTextEdit;
    teStrasse: TcxTextEdit;
    tePLZ: TcxTextEdit;
    teOrt: TcxTextEdit;
    qAdressSuche1: TFDQuery;
    bFilterLoeschen: TcxButton;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnOK: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    cxGroupBox1: TcxGroupBox;
    Label63: TcxLabel;
    Label64: TcxLabel;
    Label65: TcxLabel;
    Label66: TcxLabel;
    lCount: TcxLabel;
    procedure bAdressenZeigenClick(Sender: TObject);
    procedure tvAdressenCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bFilterLoeschenClick(Sender: TObject);
  private
    { Private-Deklarationen }
    recSelected : Boolean;
    SaveGridViewAdresssuche: TSavedGridView;
    procedure SetGridViews(Show:boolean);
  public
    { Public-Deklarationen }
    Cancel: Boolean;
    procedure Execute(
      var WurzelID, AnsprechpartnerID, AdrFirmenID: Integer; Typ:
      TAdressSucheTyp; ReleaseOnClose: Boolean);
  end;

var
  fAdressSuche : TfAdressSuche;

implementation


{$R *.DFM}

uses  PCM.Data,
      PCMManager.Modul.D_Calandar.Neu,PCM.Strings;

procedure TfAdressSuche.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewAdresssuche := TSavedGridView.Create(GV_Adresssuche,dm_PCM.iIDBenutzerPCM, tvAdressen);
    SaveGridViewAdresssuche.LoadView;
  end
  else begin
    SaveGridViewAdresssuche.SaveView(0);
    SaveGridViewAdresssuche.Free;
  end;
end;
procedure TfAdressSuche.bAdressenZeigenClick(Sender: TObject);
var
  sWhere : String;
begin
  dm_PCM.qry_work.Close;

  dm_PCM.qry_work.SQL.Text := 'SELECT distinct Firma,Strasse_ges,plz_Ges,ort_Ges FROM Manager_kontakte Where Firma <>  ''''';

  sWhere := ' ';
  if teName.Text <> '' then
    sWhere := 'AND UPPER(Firma) LIKE UPPER(' + quotedStr('%'+teName.Text+'%')+')';

  if teStrasse.Text <> '' then
    sWhere := sWhere + 'AND UPPER(Strasse_Ges) LIKE UPPER('  + quotedStr('%'+teStrasse.Text+'%')+')';

  if tePLZ.Text <> '' then
    sWhere := sWhere + 'AND UPPER(PLZ_Ges) LIKE UPPER(' + quotedStr(tePLZ.Text+'%')+')';

  if teOrt.Text <> '' then
    sWhere := sWhere +'AND UPPER(Ort_Ges) LIKE UPPER(' + quotedStr('%'+teOrt.Text+'%')+')';

  dm_PCM.Qry_work.SQL.Text := dm_PCM.Qry_work.SQL.Text + sWhere + ' ORDER BY Firma';
  dm_PCM.Qry_work.Open;

  lCount.Caption := IntToStr(dm_PCM.Qry_work.RecordCount) + rs_PCMManager_Adresseengefunden;
  lCount.Show;
end;
procedure TfAdressSuche.bFilterLoeschenClick(Sender: TObject);
begin
  teName.Clear;
  teStrasse.Clear;
  tePLZ.Clear;
  teOrt.Clear;
  dm_PCM.Qry_work.Close;
end;
procedure TfAdressSuche.Execute(var WurzelID, AnsprechpartnerID, AdrFirmenID:Integer; Typ: TAdressSucheTyp; ReleaseOnClose: Boolean);
begin
  btnOK.Enabled := False;
end;
procedure TfAdressSuche.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm_PCM.Qry_work.Close;
  if not recSelected then modalResult := -1;
  SetGridViews(false);
end;
procedure TfAdressSuche.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bAdressenZeigen.Click;
end;
procedure TfAdressSuche.FormShow(Sender: TObject);
begin
  tvAdressenName.Caption:= rs_PCMManager_Firma;
  tvAdressenStrasse.Caption:= rs_PCMLizenzgenerator_KundeStrasse;
  tvAdressenplz.Caption:= rs_PCMLizenzgenerator_KundePLZ;
  tvAdressenOrt.Caption:= rs_PCMLizenzgenerator_KundeORT;
  recSelected := False;
  teName.SetFocus;
  SetGridViews(True);
end;
procedure TfAdressSuche.btnOKClick(Sender: TObject);
begin
  if tvAdressen.Controller.FocusedRowIndex > -1 then
  begin
    recSelected := True;
    fneu.FFirma:= dm_PCM.Qry_work.Fields[0].asString;
    modalResult := 1;// dm_PCM.Qry_work.Fields[0].asInteger;

  end else
  begin
    MessageDlg(rs_PCMManager_AdresseWaehlen,mtwarning,[mbOK],0);
  end;
end;
procedure TfAdressSuche.ToolButton2Click(Sender: TObject);
begin
  Close;
end;
procedure TfAdressSuche.tvAdressenCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  recSelected := true;
  fneu.FFirma:= dm_PCM.Qry_work.Fields[0].asString;
  modalResult := 1;//dm_PCM.Qry_work.Fields[0].AsInteger;
end;

end.

