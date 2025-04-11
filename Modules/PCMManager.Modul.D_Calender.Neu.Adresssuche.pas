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
  cxNavigator, dxBarBuiltInMenu, dxDateRanges,
  dxScrollbarAnnotations,
  dxBar, cxLabel,pcm.Functions, System.UITypes, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutControl, dxUIAClasses,
  cxCheckBox;

type
  TAdressSucheTyp = (astAdressen, astAnsprechpartner);
  TfAdressSuche = class(TForm)
    cxGrid1: TcxGrid;
    tvAdressen: TcxGridDBTableView;
    tvAdressenName: TcxGridDBColumn;
    tvAdressenStrasse: TcxGridDBColumn;
    tvAdressenplz: TcxGridDBColumn;
    tvAdressenOrt: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    bAdressenZeigen: TcxButton;
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
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    lCount: TdxLayoutLabeledItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxBarDockControl1: TdxBarDockControl;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    chkbx_Privat: TcxCheckBox;
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
  if chkbx_Privat.Checked then
  begin
    dm_PCM.qry_work.SQL.Text := 'SELECT distinct Concat(Vorname, '' '',Nachname) AS Firma,Strasse_Privat as Strasse_ges,plz_Privat as plz_Ges,ort_privat as ort_Ges,Nachname,Vorname FROM Manager_kontakte Where Nachname <>  '''' and Vorname <> ''''';
    sWhere := ' ';
    if teName.Text <> '' then
      sWhere := 'AND (UPPER(Nachname) LIKE UPPER(' + quotedStr('%'+teName.Text+'%')+') OR UPPER(Vorname) LIKE UPPER(' + quotedStr('%'+teName.Text+'%')+'))';
    if teStrasse.Text <> '' then
      sWhere := sWhere + 'AND UPPER(Strasse_Privat) LIKE UPPER('  + quotedStr('%'+teStrasse.Text+'%')+')';

    if tePLZ.Text <> '' then
      sWhere := sWhere + 'AND UPPER(PLZ_Privat) LIKE UPPER(' + quotedStr(tePLZ.Text+'%')+')';

    if teOrt.Text <> '' then
      sWhere := sWhere +'AND UPPER(Ort_Privat) LIKE UPPER(' + quotedStr('%'+teOrt.Text+'%')+')';

    dm_PCM.Qry_work.SQL.Text := dm_PCM.Qry_work.SQL.Text + sWhere + ' ORDER BY Vorname,nachname';
    dm_PCM.Qry_work.Open;

    lCount.Caption := IntToStr(dm_PCM.Qry_work.RecordCount) + rs_PCMManager_Adresseengefunden;
    lCount.Visible:= True;
  end
  else begin
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
    lCount.Visible:= True;
  end;
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
    frm_Calendar_new.FFirma:= dm_PCM.Qry_work.Fields[0].asString;
    frm_Calendar_new.FPrivat:= chkbx_Privat.Checked;
    if chkbx_Privat.Checked then
    begin
      frm_Calendar_new.sADSVorname:= dm_PCM.Qry_work.FieldByName('Vorname').AsString;
      frm_Calendar_new.sADSNachname:= dm_PCM.Qry_work.FieldByName('Nachname').AsString;
    end;
    modalResult := 1

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
  frm_Calendar_new.FFirma:= dm_PCM.Qry_work.Fields[0].asString;
  frm_Calendar_new.FPrivat:= chkbx_Privat.Checked;
  if chkbx_Privat.Checked then
  begin
    frm_Calendar_new.sADSVorname:= dm_PCM.Qry_work.FieldByName('Vorname').AsString;
    frm_Calendar_new.sADSNachname:= dm_PCM.Qry_work.FieldByName('Nachname').AsString;
  end;
  modalResult := 1;
end;

end.

