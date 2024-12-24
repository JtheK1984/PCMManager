unit PCMManager.Modul.H_ZE.Fehltage.Edit;

interface

uses
  {$Region Uses}
  cxButtons,
  cxCalendar,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDateUtils,
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
  cxGroupBox,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxMaskEdit,
  cxNavigator,
  cxStyles,
  cxTextEdit,
  Data.DB,
  dxBar,
  dxCore,
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
  System.DateUtils,
  System.SysUtils,
  system.UITypes,
  System.Variants,
  Vcl.ComCtrls,
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
  {$Region Type}
  Tfrm_Fehltageeintragen = class(TForm)
    brdckCtrl_Fehltage: TdxBarDockControl;
    brmgr_Fehltage: TdxBarManager;
    btn_FTCancel: TcxButton;
    btn_FTClose: TdxBarLargeButton;
    btn_FTDelete: TdxBarLargeButton;
    btn_FTNEw: TdxBarLargeButton;
    btn_FTSave: TcxButton;
    cmbbx_Fehltage: TcxComboBox;
    dedt_Bis: TcxDateEdit;
    dedt_Von: TcxDateEdit;
    ds_FT: TDataSource;
    grd_Booking: TcxGrid;
    grdDBTblView_Booking: TcxGridDBTableView;
    grdDBTblView_BookingBeschreibung: TcxGridDBColumn;
    grdDBTblView_BookingBis: TcxGridDBColumn;
    grdDBTblView_BookingKuerzel: TcxGridDBColumn;
    grdDBTblView_BookingTage: TcxGridDBColumn;
    grdDBTblView_BookingVon: TcxGridDBColumn;
    grdLvl_Booking: TcxGridLevel;
    grpbx_Detail: TcxGroupBox;
    grpbx_FT: TcxGroupBox;
    lbl_FTBis: TcxLabel;
    lbl_FTFT: TcxLabel;
    lbl_FTVon: TcxLabel;
    qry_FT: TFDQuery;
    tb_Fehltage: TdxBar;
    procedure btn_FTCancelClick(Sender: TObject);
    procedure btn_FTCloseClick(Sender: TObject);
    procedure btn_FTDeleteClick(Sender: TObject);
    procedure btn_FTNEwClick(Sender: TObject);
    procedure btn_FTSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_Fehltageeintragen: Tfrm_Fehltageeintragen;
  {$EndRegion var}
implementation

{$R *.dfm}

uses
  {$Region Uses}
  PCM.Calculate,
  PCM.Data;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Butons}
procedure Tfrm_Fehltageeintragen.btn_FTCancelClick(Sender: TObject);
begin
  qry_Ft.Cancel;
  frm_Fehltageeintragen.ClientHeight:= 526;
end;
procedure Tfrm_Fehltageeintragen.btn_FTCloseClick(Sender: TObject);
begin
  Close;
end;
procedure Tfrm_Fehltageeintragen.btn_FTDeleteClick(Sender: TObject);
var
  iID_Fehltage: integer;
  qry_Fehltage: TFDQuery;
begin
  iID_Fehltage:= qry_Ft.FieldByName('ID').AsInteger;
  if iID_Fehltage > 0 then
  begin
    qry_Fehltage:= TFDQuery.Create(nil);
    qry_Fehltage.Connection:= dm_PCM.con_PCM;
    qry_Fehltage.SQL.Text:= 'Update manager_buchungen Set ID_Fehltage = null , fehltag = '' '' Where ID_Fehltage = :ID';
    qry_Fehltage.ParamByName('ID').AsInteger:= iID_Fehltage;
    qry_Fehltage.Prepare;
    qry_Fehltage.ExecSQL;
    qry_Fehltage.UnPrepare;
    qry_Fehltage.Free;
    qry_Ft.Delete;
    qry_Ft.Refresh;
  end;
end;
procedure Tfrm_Fehltageeintragen.btn_FTNEwClick(Sender: TObject);
begin
  frm_Fehltageeintragen.ClientHeight:= 688;
  if qry_Ft.State in [dsInsert, dsedit] then
    qry_Ft.Post;
  qry_Ft.Append;
  qry_Ft.Insert;
end;
procedure Tfrm_Fehltageeintragen.btn_FTSaveClick(Sender: TObject);
  function CheckDateValid(AVon,ABis: TDate) :boolean;
  begin
    Result:= false;
    if (Abis >= AVon) then
    begin
      if YearOf(ABis) <> YearOf(AVon) then
      begin
        MessageDlg('Fehltage können nicht jahresübergreifend eingetragen werden!',mtWarning,[mbOk],0);
      end
      else begin
        Result:= True;
      end;
    end
    else begin
      MessageDlg('Zeitraum-Von kann ich größer als Zeitraum-Bis sein!',mtWarning,[mbOk],0);
    end;
  end;
  function CheckFehltage(AVon,ABis: TDate): boolean;
  var
    qry_FehltageChk: TFDQuery;
  begin
    Result:= false;
    qry_FehltageCHk:= TFDQuery.Create(nil);
    qry_FehltageCHk.Connection:= dm_PCM.con_PCM;
    qry_FehltageCHk.SQL.Text:= 'Select Count(*) as Anzahl From manager_buchungen Where Fehltag <> '' '' and Datum >= :von and Datum <= :Bis';
    qry_FehltageCHk.ParamByName('von').AsDate:= AVon;
    qry_FehltageCHk.ParamByName('bis').AsDate:= ABis;
    qry_FehltageCHk.Prepare;
    qry_FehltageCHk.open;
    if qry_FehltageCHk.FieldByName('Anzahl').AsInteger > 0  then
    begin
      MessageDlg('Im ausgewählten Zeitraum gibt es schon eingetragene Fehltage!',mtWarning,[mbOk],0);
    end
    else begin
      Result:= true;
    end;
    qry_FehltageCHk.Close;
    qry_FehltageCHk.UnPrepare;
    qry_FehltageCHk.Free;
  end;
var
  iID_Fehltage: integer;
  fAnzahl: double;
  qry_Fehltage: TFDQuery;
  sFehltag: String;
  sFehltagDesc: String;
begin
  if cmbbx_Fehltage.ItemIndex < 0 then
  begin
    MessageDlg('Es wurde kein Fehltag ausgewählt!',mtWarning,[mbOk],0);
    exit;
  end;
  if CheckDateValid(dedt_Von.Date,dedt_Bis.Date) then
  begin
    qry_Fehltage:= TFDQuery.Create(nil);
    qry_Fehltage.Connection:= dm_PCM.con_PCM;
    qry_Fehltage.SQL.Text:= 'Select Kuerzel,Beschreibung From manager_Fehltag Where ID = :ID';
    qry_Fehltage.ParamByName('ID').asInteger:= Integer(cmbbx_Fehltage.Properties.Items.Objects[cmbbx_Fehltage.ItemIndex]);
    qry_Fehltage.Prepare;
    qry_Fehltage.open;
    sFehltag:= qry_Fehltage.FieldByName('Kuerzel').AsString;
    sFehltagDesc:= qry_Fehltage.FieldByName('Beschreibung').AsString;
    qry_Fehltage.Close;
    qry_Fehltage.UnPrepare;
    if CheckFehltage(dedt_Von.Date,dedt_Bis.Date) then
    begin
      if qry_Ft.State in [dsInsert, dsEdit] then
      begin
        qry_Ft.FieldByName('Kuerzel').asString:= sFehltag;
        qry_Ft.FieldByName('Beschreibung').asString:= sFehltagDesc;
        qry_Ft.FieldByName('Von').AsDateTime:= dedt_Von.Date;
        qry_Ft.FieldByName('Bis').AsDateTime:= dedt_Bis.Date;
        qry_Ft.Post;

        qry_Fehltage.SQL.Text:= 'SELECT LAST_INSERT_ID() as ID';
        qry_Fehltage.Prepare;
        qry_Fehltage.open;
        iID_Fehltage:= qry_Fehltage.FieldByName('ID').AsInteger;
        qry_Fehltage.Close;
        qry_Fehltage.UnPrepare;
        qry_Fehltage.SQL.Text:= 'Update manager_buchungen Set Fehltag = :Fehltag, ID_Fehltage = :ID Where SollstundenI > 0 and Feiertag <> 1 and Datum >= :Von and Datum <= :Bis';
        qry_Fehltage.ParamByName('Fehltag').AsString:= sFehltag;
        qry_Fehltage.ParamByName('ID').asInteger:= iID_Fehltage;
        qry_Fehltage.ParamByName('Von').AsDate:= dedt_Von.Date;
        qry_Fehltage.ParamByName('Bis').AsDate:= dedt_Bis.Date;
        qry_Fehltage.Prepare;
        qry_Fehltage.ExecSQL;;
        qry_Fehltage.UnPrepare;
        fAnzahl:= GetFehltagTage(iID_Fehltage);
        qry_Fehltage.SQL.Text:= 'Update manager_Fehltage Set Tage = :Tage Where ID = :ID';
        qry_Fehltage.ParamByName('Tage').AsFloat:= fAnzahl;
        qry_Fehltage.ParamByName('ID').asInteger:= iID_Fehltage;
        qry_Fehltage.Prepare;
        qry_Fehltage.ExecSQL;
        qry_Fehltage.UnPrepare;
        qry_Fehltage.Free;
        qry_FT.Refresh;
        frm_Fehltageeintragen.ClientHeight:= 526;
      end;
    end;
  end;
end;
{$EndRegion Butons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_Fehltageeintragen.FormShow(Sender: TObject);
var
  qry_Fehltage: TFDQuery;
begin
  qry_FT.SQL.Text:= 'Select * From manager_Fehltage Where Year(Von) >= :Jahr and Year(Von) <= :Jahr1';
  qry_FT.ParamByName('Jahr').asInteger:= Yearof (Date) - 1;
  qry_FT.ParamByName('Jahr1').asInteger:= Yearof(Date) + 1;
  qry_FT.Open;
  qry_Fehltage:= TFDQuery.Create(nil);
  qry_Fehltage.Connection:= dm_PCM.con_PCM;
  qry_Fehltage.SQL.Text:= 'Select * From manager_Fehltag Where Beschreibung IS not null';
  qry_Fehltage.Prepare;
  qry_Fehltage.open;
  while not qry_Fehltage.Eof do
  begin
    cmbbx_Fehltage.Properties.Items.AddObject(qry_Fehltage.FieldByName('Kuerzel').AsString + ' - ' + qry_Fehltage.FieldByName('Beschreibung').AsString,TObject(qry_Fehltage.FieldByName('ID').AsInteger));
    qry_Fehltage.Next;
  end;
  qry_Fehltage.Close;
  qry_Fehltage.UnPrepare;
  qry_Fehltage.Free;
  dedt_Von.Date:= Date;
  dedt_Bis.Date:= Date;
end;
{$EndRegion FormFunktionen}
end.
