unit PCMManager.Modul.B_Config.Kalender.Feiertage.Neu;

interface

uses
  {$Region Uses}
  Buttons,
  Classes,
  ComCtrls,
  Controls,
  cxButtons,
  cxCheckBox,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBData,
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
  cxGroupBox,system.math,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxMaskEdit,
  cxNavigator,
  cxSpinEdit,
  cxStyles,
  cxTextEdit,
  Db,
  dbcgrids,
  DBCtrls,
  DBGrids,
  Dialogs,
  dxDateRanges,
  dxGDIPlusClasses,
  dxLayoutContainer,
  dxLayoutControl,
  dxLayoutControlAdapters,
  dxLayoutcxEditAdapters,
  dxmdaset,
  dxScrollbarAnnotations,
  dxUIAClasses,
  ExtCtrls,
  FireDAC.Comp.Client,Variants,
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
  Grids,
  Mask,
  Menus,
  Messages,
  StdCtrls,
  system.dateutils,
  system.UITypes,
  SysUtils,
  Windows;
  {$EndRegion Uses}
type
  {$Region type}
  TcxGridSiteAccess = class (TcxGridSite);
  TcxControlScrollBarsAccess = class (TcxControlScrollBars);
  TfFeiertageBerechnen = class(TForm)
    btn_Abort: TcxButton;
    btn_Berechnen: TcxButton;
    btn_OK: TcxButton;
    cmbbx_Bundesland: TcxComboBox;
    cxGridLevel1: TcxGridLevel;
    cxStyleFT: TcxStyle;
    ds_Feiertage: TDataSource;
    edt_Jahr: TcxSpinEdit;
    grd_FT: TcxGrid;
    lactrl_FeiertageNew: TdxLayoutControl;
    lactrl_FeiertageNewGroup_Root: TdxLayoutGroup;
    lagrp_FeiertageNew: TdxLayoutGroup;
    lagrp_FeiertageNewButtons: TdxLayoutGroup;
    lagrp_FeiertageNewDetail: TdxLayoutGroup;
    laitm_FeiertageNewAbbrechen: TdxLayoutItem;
    laitm_FeiertageNewBerechnen: TdxLayoutItem;
    laitm_FeiertageNewBundesland: TdxLayoutItem;
    laitm_FeiertageNewGrid: TdxLayoutItem;
    laitm_FeiertageNewJahr: TdxLayoutItem;
    laitm_FeiertageNewUebernehmen: TdxLayoutItem;
    memData_Feiertage: TdxMemData;
    memData_FeiertageBezeichnung: TStringField;
    memData_FeiertageJahr: TIntegerField;
    memData_FeiertageKategorie: TIntegerField;
    memData_FeiertageMonat: TIntegerField;
    memData_FeiertageTag: TIntegerField;
    memData_FeiertageTyp: TStringField;
    memData_FeiertageUebernehmen: TBooleanField;
    stylerep_FT: TcxStyleRepository;
    tvFeiertage: TcxGridDBTableView;
    tvFeiertageBezeichnung: TcxGridDBColumn;
    tvFeiertageFT: TcxGridDBColumn;
    tvFeiertageKategorie: TcxGridDBColumn;
    tvFeiertageMarked: TcxGridDBColumn;
    tvFeiertageMonat: TcxGridDBColumn;
    tvFeiertageTag: TcxGridDBColumn;
    procedure btn_AbortClick(Sender: TObject);
    procedure btn_BerechnenClick(Sender: TObject);
    procedure btn_OKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tmFeiertageMonatGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure tmFeiertageTagGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private-Deklarationen }
  public
    AID_Benutzer: integer;
    function Execute(AModal: Boolean; AID: Integer) : boolean;
    { Public-Deklarationen }
  end;
  {$EndRegion type}
var
  {$Region var}
  fFeiertageBerechnen: TfFeiertageBerechnen;
  {$EndRegion var}
implementation
{$R *.DFM}
uses
  {$Region uses}
  PCMManager.Modul.B_Config,
  PCMManager.Modul.B_Config.Kalender.Feiertage.Neu.Berechnen,
  PCM.Data,PCM.Strings;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Helperfunctions                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Helperfunctions}
function TfFeiertageBerechnen.Execute(AModal: Boolean; AID: Integer) : boolean;
begin
  Result:= false;
  AID_Benutzer:= AID;
  if AModal then
  begin
    ShowModal;
    if ModalResult = mrOk then
      Result:= true
    else
      Result:= true;
  end;
end;
{$EndRegion Helperfunctions}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure TfFeiertageBerechnen.btn_AbortClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;
procedure TfFeiertageBerechnen.btn_BerechnenClick(Sender: TObject);
var
  i: Integer;
  BerJahr: Word;
  Jahr, Monat, Tag: Word;
begin
  if cmbbx_Bundesland.ItemIndex = -1 then
    MessageDlg(rs_PCMManager_Bundeslandwaehlen, mtWarning, [mbOk], 0)
  else
  begin
    // Jahr holen
      BerJahr := edt_Jahr.EditValue;
    // Feiertage für das gewählte Bundesland und Jahr berechnen
    FeiertageBerechnen(cmbbx_Bundesland.ItemIndex, BerJahr);

    memData_Feiertage.DisableControls;
    // Tabelle im Speicher löschen
    memData_Feiertage.close;
    memData_Feiertage.open;

    // Alle Tage durchgehen
    for i := 1 to 366 do
    begin
      if Feiertag[i] <> 0 then
      begin
        DecodeDate(EncodeDate(BerJahr, 1, 1) + i - 1, Jahr, Monat, Tag);
        memData_Feiertage.Append;
        memData_FeiertageJahr.Value := Jahr;
        memData_FeiertageMonat.Value := Monat;
        memData_FeiertageTag.Value := Tag;
        if ((Tag = 24) and (Monat = 12)) or ((Tag = 31) and (Monat = 12)) then
          memData_FeiertageKategorie.value:= 2
        else
          memData_FeiertageKategorie.value:= 1;
        if Feiertag[i] > 0 then
        begin
          memData_FeiertageBezeichnung.AsString := String(Feiertage[Feiertag[i]])  + ' ('+ cmbbx_Bundesland.Properties.Items[cmbbx_Bundesland.ItemIndex] +')';
          memData_FeiertageTyp.Value := '·';
        end
        else
        begin
          memData_FeiertageBezeichnung.AsString := String(Sondertage[-Feiertag[i]])+ ' ('+ cmbbx_Bundesland.Properties.Items[cmbbx_Bundesland.ItemIndex] +')';
          memData_FeiertageTyp.Value := '';
        end;

        dm_PCM.qry_Work.SQL.Text := 'SELECT ID FROM manager_Feiertage WHERE Jahr = :Jahr AND Bezeichnung = :Bezeichnung AND ID_Benutzer = :ID_Benutzer';
        dm_PCM.qry_Work.ParamByName('Jahr').AsInteger := Jahr - 1;
        dm_PCM.qry_Work.ParamByName('Bezeichnung').AsString := memData_FeiertageBezeichnung.AsString;
        dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger := AID_Benutzer;
        dm_PCM.qry_Work.Open;
        if dm_PCM.qry_Work.RecordCount > 0 then
        begin
          memData_FeiertageUebernehmen.Value := True;
        end
        else
        begin
          memData_FeiertageUebernehmen.Value := False;
        end;
        memData_Feiertage.Post;
      end;
    end;
  end;
  memData_Feiertage.First;
  memData_Feiertage.EnableControls;
  grd_Ft.SetFocus;
end;
procedure TfFeiertageBerechnen.btn_OKClick(Sender: TObject);
var
  iID_Feiertag: Integer;
begin
  memData_Feiertage.DisableControls;
  memData_Feiertage.First;
  while not memData_Feiertage.Eof do
  begin
    if memData_FeiertageUebernehmen.AsBoolean then
    begin
      dm_PCM.qry_Work.SQL.Text := 'SELECT ID FROM manager_Feiertage WHERE Jahr = :Jahr AND Monat = :Monat AND Tag = :Tag AND ID_Benutzer = :ID_Benutzer and BL = :BL';
      dm_PCM.qry_Work.ParamByName('Jahr').AsInteger := memData_FeiertageJahr.AsInteger;
      dm_PCM.qry_Work.ParamByName('Monat').AsInteger := memData_FeiertageMonat.AsInteger;
      dm_PCM.qry_Work.ParamByName('Tag').AsInteger := memData_FeiertageTag.AsInteger;
      dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger := AID_Benutzer;
      dm_PCM.qry_Work.ParamByName('BL').AsInteger := cmbbx_Bundesland.ItemIndex;
      dm_PCM.qry_Work.Open;
      if dm_PCM.qry_Work.RecordCount > 0 then
      begin
        iID_Feiertag := dm_PCM.qry_Work.FieldByName('ID').AsInteger;
        // UPDATE
        dm_PCM.qry_Work.SQL.Text := 'UPDATE manager_Feiertage SET Jahr = :Jahr, Monat = :Monat, Tag = :Tag, '
                        + ' Bezeichnung = :Bezeichnung, Uebertragen = :Uebertragen, '
                        + ' Datum = :Datum, ID_Benutzer = :ID_Benutzer, Kategorie = :Kategorie  WHERE ID = :ID';
        dm_PCM.qry_Work.ParamByName('Jahr').AsInteger := memData_FeiertageJahr.AsInteger;
        dm_PCM.qry_Work.ParamByName('Monat').AsInteger := memData_FeiertageMonat.AsInteger;
        dm_PCM.qry_Work.ParamByName('Tag').AsInteger := memData_FeiertageTag.AsInteger;
        dm_PCM.qry_Work.ParamByName('Kategorie').AsInteger := memData_FeiertageKategorie.AsInteger;
        dm_PCM.qry_Work.ParamByName('Bezeichnung').Asstring := memData_FeiertageBezeichnung.AsString;
        dm_PCM.qry_Work.ParamByName('Datum').AsDate := EncodeDate(memData_FeiertageJahr.AsInteger,memData_FeiertageMonat.AsInteger,memData_FeiertageTag.AsInteger);
        dm_PCM.qry_Work.ParamByName('Uebertragen').AsString := 'true';
        dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger := AID_Benutzer;
        dm_PCM.qry_Work.ParamByName('ID').AsInteger := iID_Feiertag;
        dm_PCM.qry_Work.ExecSQL;
      end else
      begin
        // INSERT
        dm_PCM.qry_Work.SQL.Text := 'INSERT INTO manager_Feiertage(Jahr, Monat, Tag, Bezeichnung, '
                        + ' Uebertragen, Datum, ID_Benutzer,BL,Kategorie) VALUES '
                        + ' (:Jahr, :Monat, :Tag, :Bezeichnung, '
                        + ' :Uebertragen, :Datum,  :ID_Benutzer,:BL,:Kategorie)';
        dm_PCM.qry_Work.ParamByName('Jahr').AsInteger := memData_FeiertageJahr.AsInteger;
        dm_PCM.qry_Work.ParamByName('Monat').AsInteger := memData_FeiertageMonat.AsInteger;
        dm_PCM.qry_Work.ParamByName('Tag').AsInteger := memData_FeiertageTag.AsInteger;
        dm_PCM.qry_Work.ParamByName('Kategorie').AsInteger := memData_FeiertageKategorie.AsInteger;
        dm_PCM.qry_Work.ParamByName('Bezeichnung').Asstring := memData_FeiertageBezeichnung.AsString;
        dm_PCM.qry_Work.ParamByName('Datum').AsDate := EncodeDate(memData_FeiertageJahr.AsInteger,memData_FeiertageMonat.AsInteger,memData_FeiertageTag.AsInteger);
        dm_PCM.qry_Work.ParamByName('Uebertragen').AsString := 'true';
        dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger := AID_Benutzer;
        dm_PCM.qry_Work.ParamByName('BL').AsInteger := cmbbx_Bundesland.ItemIndex;
        dm_PCM.qry_Work.ExecSQL;
      end;
    end;
    memData_Feiertage.Next;
  end;
  memData_Feiertage.EnableControls;
  ModalResult := mrOK;
end;
{$EndRegion}
 ////////////////////////////////////////////////////////////////////////////////
// Grid                                                                       //
////////////////////////////////////////////////////////////////////////////////
{$Region Grid}
procedure TfFeiertageBerechnen.tmFeiertageMonatGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    if not Sender.IsNull then
    begin
      if not (Sender.AsInteger in [1..12]) then
        Text := rs_PCMManager_Undefiniert
      else
        Text := FormatDateTime('mmmm', EncodeDate(2000, Sender.AsInteger, 1));
    end;
end;
procedure TfFeiertageBerechnen.tmFeiertageTagGetText(Sender: TField;  var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    if not Sender.IsNull then
      Text := Format('%.2d.', [Sender.AsInteger]);
end;
{$EndRegion}
////////////////////////////////////////////////////////////////////////////////
// Formfunctions                                                              //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunctions}
procedure TfFeiertageBerechnen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memData_Feiertage.Close;
end;
procedure TfFeiertageBerechnen.FormShow(Sender: TObject);
var
  Jahr, Monat, Tag: Word;
begin
  DecodeDate(Date, Jahr, Monat, Tag);
  edt_Jahr.Properties.MaxValue := Jahr + 50;
  edt_Jahr.Properties.MinValue := Jahr - 20;
  edt_Jahr.EditValue := Jahr + 1;
  memData_Feiertage.Open;
  tvFeiertageTag.Caption := rs_PCM_Tag;
  tvFeiertageMonat.Caption := rs_PCM_Monat;
  tvFeiertageBezeichnung.Caption := rs_PCM_Bezeichnung;
end;
{$EndRegion}
end.

