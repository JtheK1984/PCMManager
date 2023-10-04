unit PCMManager.Modul.B_Config.Kalender.Feiertage.Neu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, StdCtrls, ComCtrls, Mask, DBCtrls,
  dbcgrids, ExtCtrls, Buttons, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxSpinEdit, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxCheckBox, cxLabel, cxNavigator, system.dateutils,
  dxGDIPlusClasses, dxDateRanges, dxScrollbarAnnotations, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,Variants, dxSkinsCore,
  dxSkinMetropolisDark, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, cxGroupBox,system.math, system.UITypes, dxmdaset,
  dxSkinWXI;

type
  TcxGridSiteAccess = class (TcxGridSite);
  TcxControlScrollBarsAccess = class (TcxControlScrollBars);

type
  TfFeiertageBerechnen = class(TForm)
    dsmFeiertage: TDataSource;
    Bevel1: TBevel;
    Bevel2: TBevel;
    btn_OK: TcxButton;
    btn_Abort: TcxButton;
    btn_Berechnen: TcxButton;
    cmbbx_Bundesland: TcxComboBox;
    edt_Jahr: TcxSpinEdit;
    GridFeiertage: TcxGrid;
    tvFeiertage: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    tvFeiertageMarked: TcxGridDBColumn;
    tvFeiertageFT: TcxGridDBColumn;
    tvFeiertageTag: TcxGridDBColumn;
    tvFeiertageMonat: TcxGridDBColumn;
    tvFeiertageBezeichnung: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleFT: TcxStyle;
    grpbx_Design: TcxGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    memData_Feiertage: TdxMemData;
    memData_FeiertageMonat: TIntegerField;
    memData_FeiertageTag: TIntegerField;
    memData_FeiertageJahr: TIntegerField;
    memData_FeiertageKategorie: TIntegerField;
    memData_FeiertageBezeichnung: TStringField;
    memData_FeiertageUebernehmen: TBooleanField;
    memData_FeiertageTyp: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_BerechnenClick(Sender: TObject);
    procedure tmFeiertageMonatGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tmFeiertageTagGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btn_OKClick(Sender: TObject);
    procedure btn_AbortClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    AID_Benutzer: integer;
    function Execute(AModal: Boolean; AID: Integer) : boolean;
    { Public-Deklarationen }
  end;

var
  fFeiertageBerechnen: TfFeiertageBerechnen;

implementation

{$R *.DFM}

uses  PCMManager.Modul.B_Config,
      PCMManager.Modul.B_Config.Kalender.Feiertage.Neu.Berechnen,
      PCM.Data;

procedure TfFeiertageBerechnen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  memData_Feiertage.Close;
end;
procedure TfFeiertageBerechnen.FormShow(Sender: TObject);
var
  Jahr, Monat, Tag: Word;
begin
  DecodeDate(Date, Jahr, Monat, Tag);

  // 6.0.0.84
  edt_Jahr.Properties.MaxValue := Jahr + 50;
  edt_Jahr.Properties.MinValue := Jahr - 20;
  edt_Jahr.EditValue := Jahr + 1;

  memData_Feiertage.Open;
end;
procedure TfFeiertageBerechnen.btn_AbortClick(Sender: TObject);
begin
  ModalResult := mrCancel;
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
                        + ' Datum = :Datum, ID_Benutzer = :ID_Benutzer WHERE ID = :ID';
        dm_PCM.qry_Work.ParamByName('Jahr').AsInteger := memData_FeiertageJahr.AsInteger;
        dm_PCM.qry_Work.ParamByName('Monat').AsInteger := memData_FeiertageMonat.AsInteger;
        dm_PCM.qry_Work.ParamByName('Tag').AsInteger := memData_FeiertageTag.AsInteger;
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
                        + ' Uebertragen, Datum, ID_Benutzer,BL) VALUES '
                        + ' (:Jahr, :Monat, :Tag, :Bezeichnung, '
                        + ' :Uebertragen, :Datum,  :ID_Benutzer,:BL)';
        dm_PCM.qry_Work.ParamByName('Jahr').AsInteger := memData_FeiertageJahr.AsInteger;
        dm_PCM.qry_Work.ParamByName('Monat').AsInteger := memData_FeiertageMonat.AsInteger;
        dm_PCM.qry_Work.ParamByName('Tag').AsInteger := memData_FeiertageTag.AsInteger;
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
procedure TfFeiertageBerechnen.btn_BerechnenClick(Sender: TObject);
var
  i: Integer;
  BerJahr: Word;
  Jahr, Monat, Tag: Word;
begin
  if cmbbx_Bundesland.ItemIndex = -1 then
    MessageDlg('Bitte wählen Sie ain Bundesland aus.', mtWarning, [mbOk], 0)
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
        if Feiertag[i] > 0 then
        begin
          memData_FeiertageBezeichnung.AsString := String(Feiertage[Feiertag[i]])  + ' ('+ cmbbx_Bundesland.Properties.Items[cmbbx_Bundesland.ItemIndex] +')';
          memData_FeiertageTyp.Value := '·';
        end
        else
        begin
          memData_FeiertageBezeichnung.AsString := String(Sondertage[-Feiertag[i]]);
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
  GridFeiertage.SetFocus;
end;
procedure TfFeiertageBerechnen.tmFeiertageMonatGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    if not Sender.IsNull then
    begin
      if not (Sender.AsInteger in [1..12]) then
        Text := 'Undefiniert'
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

end.

