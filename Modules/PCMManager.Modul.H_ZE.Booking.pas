unit PCMManager.Modul.H_ZE.Booking;

interface

uses
  {$Region Uses}
  cxClasses,
  cxContainer,
  cxControls,
  cxDBEdit,
  cxDBLookupComboBox,
  cxDBLookupEdit,
  cxDropDownEdit,
  cxEdit,
  cxGraphics,
  cxGroupBox,
  cxImageComboBox,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxLookupEdit,
  cxMaskEdit,
  cxSpinEdit,
  cxTextEdit,
  cxTimeEdit,
  data.db,
  dxBar,
  FIredac.Stan.Param,
  System.Classes,
  system.DateUtils,
  System.SysUtils,
  System.UITypes,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_Booking = class(TForm)
    brmgr_Data: TdxBarManager;
    btn_DataCancel: TdxBarLargeButton;
    btn_DataClose: TdxBarLargeButton;
    btn_DataNext: TdxBarLargeButton;
    btn_DataPrev: TdxBarLargeButton;
    btn_DataSave: TdxBarLargeButton;
    edt_Mehrarbeit: TcxDBTextEdit;
    grpbx_Booking: TcxGroupBox;
    imgcmbbx_Arbeitsort: TcxDBImageComboBox;
    lbl_Arbeitsort: TcxLabel;
    lbl_Fehltag: TcxLabel;
    lbl_Gehen: TcxLabel;
    lbl_Kommen: TcxLabel;
    lbl_Mehrarbeit: TcxLabel;
    lbl_Pause1Beginn: TcxLabel;
    lbl_Pause1Ende: TcxLabel;
    lbl_Pause2Beginn: TcxLabel;
    lbl_Pause2Ende: TcxLabel;
    lucmbbx_Fehltag: TcxDBLookupComboBox;
    tb_Data: TdxBar;
    tedt_Gehen: TcxDBTimeEdit;
    tedt_Kommen: TcxDBTimeEdit;
    tedt_Pause1Beginn: TcxDBTimeEdit;
    tedt_Pause1Ende: TcxDBTimeEdit;
    tedt_Pause2Beginn: TcxDBTimeEdit;
    tedt_Pause2Ende: TcxDBTimeEdit;
    procedure btn_DataCancelClick(Sender: TObject);
    procedure btn_DataCloseClick(Sender: TObject);
    procedure btn_DataNextClick(Sender: TObject);
    procedure btn_DataPrevClick(Sender: TObject);
    procedure btn_DataSaveClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    procedure SetButtons;
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_Booking: Tfrm_Booking;
  {$EndRegion var}
implementation

{$R *.dfm}

uses
  {$Region Uses}
  PCM.Calculate,
  PCM.Data,
  PCMManager.Modul.H_ZE;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
procedure Tfrm_Booking.SetButtons;
begin
  btn_DataSave.Enabled := frm_ze.qry_Buchungen.State in [dsInsert, dsEdit];
  btn_DataCancel.Enabled := frm_ze.qry_Buchungen.State in [dsInsert, dsEdit];
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_Booking.btn_DataCancelClick(Sender: TObject);
begin
  frm_ZE.qry_Buchungen.Cancel;
end;
procedure Tfrm_Booking.btn_DataCloseClick(Sender: TObject);
begin
  if frm_ZE.qry_Buchungen.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg('Datensatz wurde noch nicht gespeichert. Wollen sie die Buchungsmaske verlassen?', mtWarning, [mbYes,mbNo], 0) = mrno then
      Exit;
  end;
  Close;
end;
procedure Tfrm_Booking.btn_DataNextClick(Sender: TObject);
begin
  btn_DataSaveClick(Sender);
  frm_ZE.qry_Buchungen.Next;
  Caption:= 'PCM - Manager: ' + frm_ZE.qry_Buchungen.FieldByName('Datum').AsString + ' - ' + frm_ZE.qry_Buchungen.FieldByName('Tag').AsString;
end;
procedure Tfrm_Booking.btn_DataPrevClick(Sender: TObject);
begin
  btn_DataSaveClick(Sender);
  frm_ZE.qry_Buchungen.Prior;
  Caption:= 'PCM - Manager: ' + frm_ZE.qry_Buchungen.FieldByName('Datum').AsString + ' - ' + frm_ZE.qry_Buchungen.FieldByName('Tag').AsString;
end;
procedure Tfrm_Booking.btn_DataSaveClick(Sender: TObject);
var
  iJahr,iMonat,iTag: Word;
  iFehltag: integer;
  iFeiertag: integer;
  iSollstunden: integer;
  iArbeitszeit: integer;
  iPause1: integer;
  iPause2: integer;
  iMehrarbeit: integer;
  sMehrarbeit: String;
begin
  if frm_ZE.qry_Buchungen.State in [dsInsert, dsEdit] then
  begin
    iFehltag:= 0;
    iFeiertag:= 0;
    iSollstunden:= MinutesBetween(frm_ZE.qry_Buchungen.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
    iArbeitszeit:= MinutesBetween(tedt_Gehen.Time,tedt_Kommen.Time);
    iPause1:= MinutesBetween(tedt_Pause1Ende.Time,tedt_Pause1Beginn.Time);
    iPause2:= MinutesBetween(tedt_Pause2Ende.Time,tedt_Pause2Beginn.Time);
    if (lucmbbx_Fehltag.EditValue = 'UL') or (lucmbbx_Fehltag.EditValue = 'K') then
      iFehltag:= MinutesBetween(frm_ZE.qry_Buchungen.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
    if (lucmbbx_Fehltag.EditValue = 'ULH') then
      iFehltag:= Round(MinutesBetween(frm_ZE.qry_Buchungen.FieldByName('Sollstunden').asDateTime,StrToTime('00:00')) / 2);
    if (frm_ZE.qry_Buchungen.FieldByName('Feiertag').AsInteger = 2) then
      iFeiertag:= Round(MinutesBetween(frm_ZE.qry_Buchungen.FieldByName('Sollstunden').asDateTime,StrToTime('00:00')) / 2);
    if (frm_ZE.qry_Buchungen.FieldByName('Feiertag').AsInteger = 1) then
      iFeiertag:= MinutesBetween(frm_ZE.qry_Buchungen.FieldByName('Sollstunden').asDateTime,StrToTime('00:00'));
    if (iFeiertag = iFehltag) and (iFeiertag = 480) then
      iFehltag := 0;

    iMehrarbeit:= iArbeitszeit - iSollstunden - iPause1 - iPause2 + iFehltag + iFeiertag;
    if iMehrarbeit < 0  then
      sMehrarbeit:= '-' + FormatDateTime('hh:mm',(iMehrarbeit /1440) * -1)
    else
      sMehrarbeit:= FormatDateTime('hh:mm',iMehrarbeit /1440);
    edt_Mehrarbeit.EditValue:= sMehrarbeit;

    DecodeDate(frm_ZE.qry_Buchungen.FieldByName('Datum').AsDateTime,iJahr,iMonat,iTag);
    BerechneTage(iTag,iMonat,iJahr);
    frm_ZE.qry_Buchungen.Refresh;
  end;
end;
{$EndRegion Buttons}
end.
