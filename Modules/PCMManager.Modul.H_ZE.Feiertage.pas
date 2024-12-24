unit PCMManager.Modul.H_ZE.Feiertage;

interface

uses
  {$Region Uses}
  cxButtons,
  cxCheckBox,
  cxClasses,
  cxColorComboBox,
  cxContainer,
  cxControls,
  cxCurrencyEdit,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBColorComboBox,
  cxDBData,
  cxDBEdit,
  cxDBLookupComboBox,
  cxDBLookupEdit,
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
  cxLookupEdit,
  cxMaskEdit,
  cxNavigator,
  cxPC,
  cxStyles,
  cxTextEdit,
  Data.DB,
  dxBar,
  dxBarBuiltInMenu,
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
  system.DateUtils,
  System.SysUtils,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Menus,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion Uses}
type
  {$Region type}
  Tfrm_Feiertage = class(TForm)
    brdckCtrl_Feiertage: TdxBarDockControl;
    brmgr_Feiertage: TdxBarManager;
    btn_FeiertageDelete: TdxBarLargeButton;
    btn_FeiertageNew: TdxBarLargeButton;
    btn_FeiertageWrite: TdxBarLargeButton;
    ds_FT: TDataSource;
    grd_Feiertage: TcxGrid;
    grdDBTblView_Feiertage: TcxGridDBTableView;
    grdDBTblView_FeiertageBezeichnung: TcxGridDBColumn;
    grdDBTblView_FeiertageJahr: TcxGridDBColumn;
    grdDBTblView_FeiertageKategorie: TcxGridDBColumn;
    grdDBTblView_FeiertageMonat: TcxGridDBColumn;
    grdDBTblView_FeiertageTag: TcxGridDBColumn;
    grdlvl_Feiertage: TcxGridLevel;
    grpbx_Feiertage: TcxGroupBox;
    qry_FT1: TFDQuery;
    tb_Feiertage: TdxBar;
    procedure btn_FeiertageNewClick(Sender: TObject);
    procedure btn_FeiertageDeleteClick(Sender: TObject);
    procedure btn_FeiertageWriteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_Feiertage: Tfrm_Feiertage;
  {$EndRegion var}
implementation

{$R *.dfm}

uses
  {$Region Uses}
  PCM.Data,
  PCM.Functions.Synch.Wait,
  PCMManager.Modul.B_Config.Kalender.Feiertage.Aktualisieren,
  PCMManager.Modul.B_Config.Kalender.Feiertage.Neu,
  PCM.strings;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Butons}
procedure Tfrm_Feiertage.btn_FeiertageDeleteClick(Sender: TObject);
begin
  if qry_FT1.FieldByName('ID').asInteger > 0 then
  begin
    qry_FT1.Delete;
  end
end;
procedure Tfrm_Feiertage.btn_FeiertageWriteClick(Sender: TObject);
var
  datTimVon, datTimbis: TDateTime;
  iAnzahl: integer;
  sBundesland: string;
  iID_Adresse: integer;
begin
  Application.CreateForm(Tfrm_FeiertageAktualisieren, frm_FeiertageAktualisieren);
  if frm_FeiertageAktualisieren.Execute(datTimVon, datTimbis) then
  begin
    dm_PCM.qry_work1.SQL.text := 'SELECT Jahr, Datum, Bezeichnung, Kategorie From manager_feiertage Where ID_Benutzer = :ID and Datum >= :Von AND Datum <= :Bis';
    dm_PCM.qry_work1.ParamByName('ID').asInteger := dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work1.ParamByName('Von').AsDateTime := datTimVon;
    dm_PCM.qry_work1.ParamByName('Bis').AsDateTime := datTimbis;
    dm_PCM.qry_work1.Open;
    ShowWaitForm(TForm(Self), PWideChar(rs_PCMManager_Feiertageintragen), dm_PCM.qry_work1.RecordCount, 417, 65);
    Application.ProcessMessages;
    Screen.Cursor := crHourGlass;
    while not dm_PCM.qry_work1.Eof do
    begin
      WaitFormStep;
      dm_PCM.qry_Work.SQL.text := 'SELECT Count(*) as Anzahl FROM manager_kalender WHERE Caption = :Caption AND  DATE(START) = :Date and Kalendername = :Kalender';
      dm_PCM.qry_Work.ParamByName('Caption').AsString := dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString;
      dm_PCM.qry_Work.ParamByName('Kalender').AsString := 'Feiertage ' + dm_PCM.qry_work1.FieldByName('Jahr').AsString;
      dm_PCM.qry_Work.ParamByName('Date').AsDate := dm_PCM.qry_work1.FieldByName('Datum').AsDateTime;
      dm_PCM.qry_Work.Open;
      iAnzahl := dm_PCM.qry_Work.FieldByName('Anzahl').asInteger;
      dm_PCM.qry_Work.Close;

      if Pos('(',dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString)  > 0 then
        sBundesland := Copy(dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString, Pos('(',dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString)+1, Length(dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString));
        sBundesland := StringReplace(sBundesland,')','',[rfReplaceAll,rfIgnoreCase]);
        dm_PCM.qry_Work.SQL.text := 'SELECT IFNULL(Adresse_eigene,-1) AS ID FROM manager_kalender_optionen  WHERE  Adresse_eigeneBL = (SELECT ID FROM manager_Bundesland Where Bezeichnung = :Bezeichnung) ' +
                             'UNION all ' +
                             'SELECT IFNULL(Adresse_Firma,-1) AS ID FROM manager_kalender_optionen WHERE  Adresse_FirmaBL = (SELECT ID FROM manager_Bundesland Where Bezeichnung = :Bezeichnung)';
        dm_PCM.qry_work.ParamByName('Bezeichnung').AsString := sBundesland;
        dm_PCM.qry_Work.Open;
        iID_Adresse := dm_PCM.qry_Work.FieldByName('ID').asInteger;
        dm_PCM.qry_Work.Close;

      if iAnzahl = 0 then
      begin
        dm_PCM.qry_Work.SQL.text := 'Insert into manager_Kalender (ID_ADR_Wurzel,ID_Ansprechpartner,EventType,Caption,Location,Message,'
                          + 'Start,Finish,Options,Parent_ID,RecurrenceIndex,RecurrenceInfo,Reminder,ReminderDate,'
                          + 'ReminderMinutesBeforeStart,LabelColor,FontColor,ID_Benutzer,Kalendername,CompleteDay,Typ,GesendetAM,Aufgabenstatus,ID_IC_AufgabenArten,Erledigungsgrad,Zeitformat,ID_IC_Prioritaeten,AufgabenDauer) Values (:ID_ADR_Wurzel,:ID_Ansprechpartner,'
                          + ':Eventtype,:SUMMARY,:Location,:Beschreibung,:DateBegin,:DateEnd,:Options,0,-1,:RecurrenceInfo,:Reminder,'
                          + 'NULL,0,:Color,:FontColor,:ID,:Kalender,:ganzerTag,2,Now(),0,:ID_IC_AufgabenArten,0,0,1,1440)';
        if dm_PCM.qry_work1.FieldByName('Kategorie').AsInteger = 1 then
          dm_PCM.qry_Work.ParamByName('Beschreibung').AsString := dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString + '(ganzer Tag)'
        else
          dm_PCM.qry_Work.ParamByName('Beschreibung').AsString := dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString + '(halber Tag)' ;
        dm_PCM.qry_Work.ParamByName('ID_ADR_Wurzel').asInteger := iID_Adresse;
        dm_PCM.qry_Work.ParamByName('ID_Ansprechpartner').asInteger := iID_Adresse;
        dm_PCM.qry_Work.ParamByName('Eventtype').asInteger := 0;
        dm_PCM.qry_Work.ParamByName('SUMMARY').AsString := dm_PCM.qry_work1.FieldByName('Bezeichnung').AsString;
        dm_PCM.qry_Work.ParamByName('Location').AsString := 'Feiertag';
        dm_PCM.qry_Work.ParamByName('DateBegin').AsDateTime := dm_PCM.qry_work1.FieldByName('Datum').AsDateTime;;
        dm_PCM.qry_Work.ParamByName('DateEnd').AsDateTime := IncDay(dm_PCM.qry_work1.FieldByName('Datum').AsDateTime, 1);
        dm_PCM.qry_Work.ParamByName('Options').asInteger := 2;
        dm_PCM.qry_Work.ParamByName('Reminder').AsString := 'false';
        dm_PCM.qry_Work.ParamByName('RecurrenceInfo').AsString := '';
        dm_PCM.qry_Work.ParamByName('Color').AsString := IntToStr(8453888);
        dm_PCM.qry_Work.ParamByName('FontColor').AsString := IntToStr(clBlack);
        dm_PCM.qry_Work.ParamByName('ID_IC_AufgabenArten').asInteger := 1;
        dm_PCM.qry_Work.ParamByName('ID').asInteger := dm_PCM.iIDBenutzerPCM;
        dm_PCM.qry_Work.ParamByName('Kalender').AsString := 'Feiertage ' + dm_PCM.qry_work1.FieldByName('Jahr').AsString;
        dm_PCM.qry_Work.ParamByName('ganzerTag').AsString := 'true';
        dm_PCM.qry_Work.ExecSQL;
        dm_PCM.qry_Work.Close;
      end;
      dm_PCM.qry_work1.Next;
    end;
    dm_PCM.qry_work1.Close;
    qry_FT1.Refresh;
    Screen.Cursor := crDefault;
    CloseWaitForm;
  end;
  frm_FeiertageAktualisieren.Free;
  dm_pcm.qry_Kalender_Kalender.Refresh;
  close;
end;
procedure Tfrm_Feiertage.btn_FeiertageNewClick(Sender: TObject);
begin
  Application.CreateForm(TfFeiertageBerechnen, fFeiertageBerechnen);
  if fFeiertageBerechnen.Execute(true, dm_PCM.iIDBenutzerPCM) then;
    qry_FT1.Refresh;
  fFeiertageBerechnen.Free;
end;
{$EndRegion Butons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_Feiertage.FormShow(Sender: TObject);
begin
  qry_FT1.Open;
end;
{$EndRegion FormFunktionen}
end.

