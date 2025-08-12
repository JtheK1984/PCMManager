unit PCMManager.Modul.G_Finanzen;

interface

uses
  {$Region uses}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, cxCurrencyEdit, cxCheckBox,
  cxImageComboBox, cxDBLookupComboBox, Vcl.StdCtrls, cxDropDownEdit, cxCalendar,
  cxDBEdit, Vcl.Mask, Vcl.DBCtrls, cxMaskEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, Vcl.ExtCtrls, cxLabel, cxButtons,
  cxGroupBox, cxPC,FireDAC.Stan.Intf,system.IOUtils,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  cxGridCustomPopupMenu, cxGridPopupMenu, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxBar,System.UITypes, Xml.XMLIntf,Xml.XMLDoc, Xml.xmldom,
  Xml.Win.msxmldom,cxGridExportLink,PCM.Functions, dxBarCode, Xml.adomxmldom,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutControl, dxUIAClasses, dxCoreGraphics, cxButtonEdit;
  {$EndRegion uses}
type
  {$Region type}
  Tfrm_finanzen = class(TForm)
    btn_FinanzenDrucken: TcxButton;
    edt_FinEinAbsender: TcxDBTextEdit;
    edt_FinEinBetrag: TcxDBCurrencyEdit;
    edt_FinEinBEz: TcxDBTextEdit;
    grd_Finanzen_Einnahmen: TcxGrid;
    tv_Einnahmen: TcxGridDBTableView;
    tv_EinnahmenQuelle: TcxGridDBColumn;
    tv_EinnahmenBezeichnung: TcxGridDBColumn;
    tv_EinnahmenBetrag: TcxGridDBColumn;
    glvl_Einnahmen: TcxGridLevel;
    cbx_FinAusJahr: TcxDBComboBox;
    cbx_FinAusMonat: TcxDBImageComboBox;
    chkbx_FinAusFixkosten: TcxDBCheckBox;
    edt_FinAusBetrag: TcxDBCurrencyEdit;
    edt_FinAusBez: TcxDBTextEdit;
    edt_FinAusBIC: TcxDBTextEdit;
    edt_FinAusIBAN: TcxDBTextEdit;
    edt_FinAusName: TcxDBTextEdit;
    edt_FinAusVerwendung: TcxDBTextEdit;
    grd_Finanzen_Ausgaben: TcxGrid;
    tv_Ausgaben: TcxGridDBTableView;
    tv_AusgabenName: TcxGridDBColumn;
    tv_AusgabenBeschreibung: TcxGridDBColumn;
    tv_AusgabenKontonummer: TcxGridDBColumn;
    tv_AusgabenBankleitzahl: TcxGridDBColumn;
    tv_Ausgabenverwendungszweck: TcxGridDBColumn;
    tv_Ausgabenbetrag: TcxGridDBColumn;
    tv_Ausgabenfixkosten: TcxGridDBColumn;
    tv_AusgabenGueltig_monat: TcxGridDBColumn;
    tv_AusgabenGueltig_Jahr: TcxGridDBColumn;
    glvl_Ausgaben: TcxGridLevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    cxGrid1: TcxGrid;
    tv_Ausgaben1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qry_Einnahmen: TFDQuery;
    ds_Einnahmen: TDataSource;
    qry_Ausgaben: TFDQuery;
    ds_Ausgaben: TDataSource;
    pm_Einnahmen: TcxGridPopupMenu;
    pm_Ausgaben: TcxGridPopupMenu;
    sdlg_Ausgaben: TSaveDialog;
    sdlg_Einnahmen: TSaveDialog;
    brmgr_Finanzen: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    tb_Einnahmen: TdxBar;
    btn_FinEinNew: TdxBarLargeButton;
    btn_FinEinDelete: TdxBarLargeButton;
    btn_FinEinCancel: TdxBarLargeButton;
    btn_FinEinSave: TdxBarLargeButton;
    dxBarDockControl2: TdxBarDockControl;
    tb_Ausgaben: TdxBar;
    btn_FinAusNew: TdxBarLargeButton;
    btn_FinAusDelete: TdxBarLargeButton;
    btn_FinAusCancel: TdxBarLargeButton;
    btn_FinAusSave: TdxBarLargeButton;
    pmm_Einnahmen: TdxBarPopupMenu;
    ppmbtn_ExportExcelEIn: TdxBarButton;
    pmm_Ausgaben: TdxBarPopupMenu;
    ppmbtn_ExportExcelAus: TdxBarButton;
    btn_FinAusFix: TcxButton;
    edt_FinAusFixBetrag: TcxDBCurrencyEdit;
    btn_FinAusAllFIx: TdxBarLargeButton;
    btn_FinEinAllFIx: TdxBarLargeButton;
    btn_FinEinFix: TcxButton;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    tv_EinnahmenFixBetrag: TcxGridDBColumn;
    tv_AusgabenFixBetrag: TcxGridDBColumn;
    btn_FinEinAllNull: TdxBarLargeButton;
    btn_FinAusAllNull: TdxBarLargeButton;
    dxBarDockControl3: TdxBarDockControl;
    dxBarDockControl4: TdxBarDockControl;
    tb_Belege: TdxBar;
    btn_BelegeNew: TdxBarLargeButton;
    btn_BelegeSave: TdxBarLargeButton;
    btn_BelegeCancel: TdxBarLargeButton;
    btn_BelegeDelete: TdxBarLargeButton;
    tb_Gutschein: TdxBar;
    btn_GutscheinNew: TdxBarLargeButton;
    btn_GutscheinSave: TdxBarLargeButton;
    btn_GutscheinCancel: TdxBarLargeButton;
    btn_GutscheinDelete: TdxBarLargeButton;
    cx_BelegJahr: TcxDBComboBox;
    cx_BelegMonat: TcxDBImageComboBox;
    edt_BelegeNummer: TcxDBTextEdit;
    grd_Finanzen_Belege: TcxGrid;
    tv_Belege: TcxGridDBTableView;
    glvl_Belege: TcxGridLevel;
    grd_Finanzen_Gutscheine: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    pm_Belege: TcxGridPopupMenu;
    pm_Gutscheine: TcxGridPopupMenu;
    pmm_Belege: TdxBarPopupMenu;
    ppmbtn_ExportExcelBel: TdxBarButton;
    pmm_Gutscheine: TdxBarPopupMenu;
    ppmbtn_ExportExcelGut: TdxBarButton;
    qry_Belege: TFDQuery;
    ds_Belege: TDataSource;
    edt_BelegeBetrag: TcxDBCurrencyEdit;
    edt_BelegeAussteller: TcxDBTextEdit;
    cbx_BelegeKategorie: TcxDBImageComboBox;
    tv_BelegeNummer: TcxGridDBColumn;
    tv_BelegeDatum: TcxGridDBColumn;
    tv_BelegeAussteller: TcxGridDBColumn;
    tv_BelegeBetrag: TcxGridDBColumn;
    tv_BelegeKategorie: TcxGridDBColumn;
    tv_BelegeJahr: TcxGridDBColumn;
    tv_BelegeMonat: TcxGridDBColumn;
    edt_BelegDatum: TcxDBDateEdit;
    edt_GutscheinNummer: TcxDBTextEdit;
    edt_GutscheinWert: TcxDBCurrencyEdit;
    edt_GutscheinAussteller: TcxDBTextEdit;
    edt_GutscheinDatum: TcxDBDateEdit;
    edt_GutscheinRestwert: TcxDBCurrencyEdit;
    edt_GutscheinPin: TcxDBTextEdit;
    qry_Gutschein: TFDQuery;
    ds_Gutschein: TDataSource;
    cxGridDBTableView2Nummer: TcxGridDBColumn;
    cxGridDBTableView2Bezeichnung: TcxGridDBColumn;
    cxGridDBTableView2Datum: TcxGridDBColumn;
    cxGridDBTableView2Wert: TcxGridDBColumn;
    cxGridDBTableView2Restwert: TcxGridDBColumn;
    cxGridDBTableView2AbfragePin: TcxGridDBColumn;
    lactrl_FinanzenGroup_Root: TdxLayoutGroup;
    lactrl_Finanzen: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    lagrp_FinanzBericht: TdxLayoutGroup;
    grpbx_FinanzenUebersicht: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    lbl_Einnahmenlabel: TdxLayoutLabeledItem;
    lbl_Einnahmen: TdxLayoutLabeledItem;
    dxLayoutGroup8: TdxLayoutGroup;
    lbl_varKostenlabel: TdxLayoutLabeledItem;
    lbl_varKosten: TdxLayoutLabeledItem;
    dxLayoutGroup11: TdxLayoutGroup;
    lbl_fixKostenlabel: TdxLayoutLabeledItem;
    lbl_fixKosten: TdxLayoutLabeledItem;
    dxLayoutGroup14: TdxLayoutGroup;
    lbl_Einnahmen_summelabel: TdxLayoutLabeledItem;
    lbl_Einnahmen_summe: TdxLayoutLabeledItem;
    dxLayoutGroup17: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    lagrp_FinanzEinnahmen: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup24: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    lagrp_FinanzAusgaben: TdxLayoutGroup;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutGroup33: TdxLayoutGroup;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem15: TdxLayoutItem;
    dxLayoutItem16: TdxLayoutItem;
    lbl_FinAusMonat: TdxLayoutItem;
    dxLayoutItem18: TdxLayoutItem;
    dxLayoutItem19: TdxLayoutItem;
    lbl_FinAusJahr: TdxLayoutItem;
    dxLayoutItem21: TdxLayoutItem;
    dxLayoutItem23: TdxLayoutItem;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutGroup41: TdxLayoutGroup;
    dxLayoutGroup43: TdxLayoutGroup;
    dxLayoutGroup44: TdxLayoutGroup;
    dxLayoutGroup45: TdxLayoutGroup;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutItem26: TdxLayoutItem;
    dxLayoutGroup46: TdxLayoutGroup;
    dxLayoutGroup47: TdxLayoutGroup;
    dxLayoutGroup48: TdxLayoutGroup;
    dxLayoutItem27: TdxLayoutItem;
    dxLayoutItem28: TdxLayoutItem;
    dxLayoutGroup49: TdxLayoutGroup;
    Label2: TdxLayoutLabeledItem;
    dxLayoutItem29: TdxLayoutItem;
    dxLayoutItem30: TdxLayoutItem;
    dxLayoutItem31: TdxLayoutItem;
    lagrp_FinanzenBelege: TdxLayoutGroup;
    dxLayoutItem32: TdxLayoutItem;
    dxLayoutGroup52: TdxLayoutGroup;
    dxLayoutItem33: TdxLayoutItem;
    dxLayoutItem34: TdxLayoutItem;
    dxLayoutItem35: TdxLayoutItem;
    dxLayoutItem36: TdxLayoutItem;
    dxLayoutItem37: TdxLayoutItem;
    dxLayoutItem38: TdxLayoutItem;
    dxLayoutItem39: TdxLayoutItem;
    dxLayoutItem40: TdxLayoutItem;
    dxLayoutGroup59: TdxLayoutGroup;
    dxLayoutItem41: TdxLayoutItem;
    dxLayoutGroup61: TdxLayoutGroup;
    dxLayoutItem42: TdxLayoutItem;
    dxLayoutItem43: TdxLayoutItem;
    dxLayoutItem44: TdxLayoutItem;
    dxLayoutItem45: TdxLayoutItem;
    dxLayoutItem46: TdxLayoutItem;
    dxLayoutItem47: TdxLayoutItem;
    dxLayoutItem48: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    lbl_fixKosten_summe: TdxLayoutLabeledItem;
    lbl_fixKosten_summelabel: TdxLayoutLabeledItem;
    lbl_varKosten_summelabel: TdxLayoutLabeledItem;
    lbl_varKosten_summe: TdxLayoutLabeledItem;
    lbl_restsummelabel: TdxLayoutLabeledItem;
    lbl_restsumme: TdxLayoutLabeledItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutGroup18: TdxLayoutGroup;
    dxLayoutGroup19: TdxLayoutGroup;
    dxLayoutGroup20: TdxLayoutGroup;
    dxLayoutGroup21: TdxLayoutGroup;
    dxLayoutGroup23: TdxLayoutGroup;
    dxLayoutGroup25: TdxLayoutGroup;
    dxLayoutGroup26: TdxLayoutGroup;
    dxLayoutGroup27: TdxLayoutGroup;
    dxLayoutGroup28: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    edt_SucheEin: TcxButtonEdit;
    edt_SucheAus: TcxButtonEdit;
    edt_SucheBel: TcxButtonEdit;
    edt_SucheGut: TcxButtonEdit;
    dxLayoutGroup22: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup29: TdxLayoutGroup;
    dxLayoutItem17: TdxLayoutItem;
    dxLayoutItem20: TdxLayoutItem;
    btn_FinEinNull: TcxButton;
    dxLayoutItem22: TdxLayoutItem;
    btn_FinAusNull: TcxButton;
    dxLayoutGroup30: TdxLayoutGroup;
    dxLayoutItem49: TdxLayoutItem;
    sdlg_Gutschein: TSaveDialog;
    sdlg_Belege: TSaveDialog;
    procedure btn_FinanzenDruckenClick(Sender: TObject);
    procedure SetButtonsEnableVisible(DataSet: TDataSet);
    procedure chkbx_FinAusFixkostenPropertiesChange(Sender: TObject);
    procedure btn_FinEinNewClick(Sender: TObject);
    procedure btn_FinEinSaveClick(Sender: TObject);
    procedure btn_FinEinCancelClick(Sender: TObject);
    procedure btn_FinEinDeleteClick(Sender: TObject);
    procedure btn_FinAusDeleteClick(Sender: TObject);
    procedure btn_FinAusCancelClick(Sender: TObject);
    procedure btn_FinAusSaveClick(Sender: TObject);
    procedure btn_FinAusNewClick(Sender: TObject);
    procedure ppmbtn_ExportExcelEInClick(Sender: TObject);
    procedure ppmbtn_ExportExcelAusClick(Sender: TObject);
    procedure AG_pc_FinanzenChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_FinAusAllFIxClick(Sender: TObject);
    procedure btn_FinAusFixClick(Sender: TObject);
    procedure btn_FinEinAllFIxClick(Sender: TObject);
    procedure btn_FinEinFixClick(Sender: TObject);
    procedure btn_FinAusAllNullClick(Sender: TObject);
    procedure btn_FinEinAllNullClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ppmbtn_ExportExcelGutClick(Sender: TObject);
    procedure ppmbtn_ExportExcelBelClick(Sender: TObject);
    procedure btn_BelegeNewClick(Sender: TObject);
    procedure btn_BelegeSaveClick(Sender: TObject);
    procedure btn_BelegeCancelClick(Sender: TObject);
    procedure btn_BelegeDeleteClick(Sender: TObject);
    procedure btn_GutscheinSaveClick(Sender: TObject);
    procedure btn_GutscheinNewClick(Sender: TObject);
    procedure btn_GutscheinCancelClick(Sender: TObject);
    procedure btn_GutscheinDeleteClick(Sender: TObject);
    procedure edt_SucheEinPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_SucheEinPropertiesChange(Sender: TObject);
    procedure edt_SucheAusPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_SucheAusPropertiesChange(Sender: TObject);
    procedure edt_SucheBelPropertiesChange(Sender: TObject);
    procedure edt_SucheBelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_SucheGutPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edt_SucheGutPropertiesChange(Sender: TObject);
    procedure btn_FinEinNullClick(Sender: TObject);
    procedure btn_FinAusNullClick(Sender: TObject);
  private
    { Private-Deklarationen }
    bnew: boolean;
    SaveGridViewEin,SaveGridViewAus,SaveGridViewVerf: TSavedGridView;
    procedure SetGridViews(Show:boolean);
    procedure SetButtons;
    procedure SetFinanzUebersicht;
  public
    { Public-Deklarationen }
    iTag,iActiveTab: integer;
    iMonat,iJahr: integer;
    procedure Execute(ATag,AActiveTab: integer);
  end;
  {$EndRegion type}
var
  {$Region var}
  frm_finanzen: Tfrm_finanzen;
  {$EndRegion var}
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Data,   PCM.Helper,
  PCM.Browser.FullScreen,
  PCM.Reports,
  PCMManager.Modul.G_Finanzen.Filter.Date,
  PCM.Manager.Strings;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
procedure Tfrm_finanzen.Execute(ATag,AActiveTab: integer);
begin
  iTag:= ATag;
  iActiveTab:=AActiveTab;
  case iActiveTab of
  1: dxLayoutGroup2.Itemindex:= 0;
  2: dxLayoutGroup2.Itemindex:= 1;
  3: dxLayoutGroup2.Itemindex:= 2;
  4: dxLayoutGroup2.Itemindex:= 3;
  5: dxLayoutGroup2.Itemindex:= 4;
  6: dxLayoutGroup2.Itemindex:= 5;
  end;
end;
procedure Tfrm_finanzen.SetButtons;
begin
  // AG_Finanzeneinnahmen
  if dm_PCM.iEinnahmen >= 2 then
  begin
    btn_FinEinSave.Enabled := qry_Einnahmen.State in [dsInsert, dsEdit];
    btn_FinEinCancel.Enabled := qry_Einnahmen.State in [dsInsert, dsEdit];
    btn_BelegeSave.Enabled := qry_Belege.State in [dsInsert, dsEdit];
    btn_BelegeCancel.Enabled := qry_Belege.State in [dsInsert, dsEdit];
    btn_GutscheinSave.Enabled := qry_Gutschein.State in [dsInsert, dsEdit];
    btn_GutscheinCancel.Enabled := qry_Gutschein.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iEinnahmen = 3 then
  begin
    btn_FinEinDelete.Enabled := (not qry_Einnahmen.Eof) and not (qry_Einnahmen.State in [dsInsert, dsEdit]);
    btn_BelegeDelete.Enabled := (not qry_Belege.Eof) and not (qry_Belege.State in [dsInsert, dsEdit]);
    btn_GutscheinDelete.Enabled := (not qry_Gutschein.Eof) and not (qry_Gutschein.State in [dsInsert, dsEdit]);
  end;
  if qry_Einnahmen.RecordCount = 0  then
  begin
    edt_FinEinAbsender.enabled:= false;
    edt_FinEinBez.enabled:= false;
    edt_FinEinBetrag.enabled:= false;
  end
  else begin
    if dm_PCM.iEinnahmen >= 2 then
    begin
      edt_FinEinAbsender.enabled:= true;
      edt_FinEinBez.enabled:= true;
      edt_FinEinBetrag.enabled:= true;
    end;
  end;


  if qry_Belege.RecordCount = 0  then
  begin
    edt_BelegeNummer.enabled:= false;
    edt_BelegDatum.enabled:= false;
    edt_BelegeBetrag.enabled:= false;
    edt_BelegeAussteller.enabled:= false;
    cbx_BelegeKategorie.enabled:= false;
    cx_BelegMonat.Enabled:= false;
    cx_BelegJahr.Enabled:= false;
  end
  else begin
    if dm_PCM.iEinnahmen >= 2 then
    begin
      edt_BelegeNummer.enabled:= true;
      edt_BelegDatum.enabled:= true;
      edt_BelegeBetrag.enabled:= true;
      edt_BelegeAussteller.enabled:= true;
      cbx_BelegeKategorie.enabled:= true;
      cx_BelegMonat.Enabled:= true;
      cx_BelegJahr.Enabled:= true;
    end;
  end;

  if qry_Gutschein.RecordCount = 0  then
  begin
    edt_GutscheinNummer.enabled:= false;
    edt_GutscheinAussteller.enabled:= false;
    edt_GutscheinDatum.enabled:= false;
    edt_GutscheinWert.enabled:= false;
    edt_GutscheinRestwert.enabled:= false;
    edt_GutscheinPin.enabled:= false;
  end
  else begin
    if dm_PCM.iEinnahmen >= 2 then
    begin
    edt_GutscheinNummer.enabled:= true;
    edt_GutscheinAussteller.enabled:= true;
    edt_GutscheinDatum.enabled:= true;
    edt_GutscheinWert.enabled:= true;
    edt_GutscheinRestwert.enabled:= true;
    edt_GutscheinPin.enabled:= true;
    end;
  end;

  // AG_Finanzenausgaben
  if dm_PCM.iAusgaben >= 2 then
  begin
    btn_FinAusSave.Enabled := qry_Ausgaben.State in [dsInsert, dsEdit];
    btn_FinAusCancel.Enabled := qry_Ausgaben.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iAusgaben = 3 then
  begin
    btn_FinAusDelete.Enabled := (not qry_Ausgaben.Eof) and not (qry_Ausgaben.State in [dsInsert, dsEdit]);
  end;
  if qry_Ausgaben.RecordCount = 0 then
  begin
    edt_FinAusName.Enabled:= false;
    edt_FinAusBez.Enabled:= false;
    edt_FinAusBetrag.Enabled:= false;
    edt_FinAusIBAN.Enabled:= false;
    edt_FinAusBIC.Enabled:= false;
    edt_FinAusVerwendung.Enabled:= false;
    chkbx_FinAusFixkosten.Enabled:= false;
    cbx_FinAusMonat.Enabled:= false;
    cbx_FinAusJahr.Enabled:= false;
  end
  else begin
    if dm_PCM.iAusgaben >= 2 then
    begin
      edt_FinAusName.Enabled:= true;
      edt_FinAusBez.Enabled:= true;
      edt_FinAusBetrag.Enabled:= true;
      edt_FinAusIBAN.Enabled:= true;
      edt_FinAusBIC.Enabled:= true;
      edt_FinAusVerwendung.Enabled:= true;
      chkbx_FinAusFixkosten.Enabled:= true;
      cbx_FinAusMonat.Enabled:= true;
      cbx_FinAusJahr.Enabled:= true;
    end;
  end;
end;
procedure Tfrm_finanzen.SetFinanzUebersicht;
var
  dbl_Einnahmen,dbl_varKosten,dbl_FixKosten: double;
  Year,Month,Day : Word;
begin
  DecodeDate(Now(),Year,Month,Day);
  dm_PCM.qry_work.SQL.text:= 'Select IFnull(Sum(Betrag),0)as Einnahmen From manager_finanzen_einnahmen where ID_Benutzer = :ID_Benutzer ';
  dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_work.Open;
  dbl_Einnahmen:= dm_PCM.qry_work.FieldByName('Einnahmen').Asfloat;
  lbl_Einnahmen.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('Einnahmen').Asfloat]);
  lbl_Einnahmen_summe.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('Einnahmen').Asfloat]);
  dm_PCM.qry_work.Close;
  dm_PCM.qry_work.SQL.text:= 'Select IFnull(Sum(Betrag),0)as varKosten From manager_finanzen_ausgaben where fixkosten = :Fixkosten '
                              + 'and Gueltig_Monat = :Monat and Gueltig_Jahr = :Jahr and ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_work.ParamByName('Fixkosten').asString:= 'false';
  dm_PCM.qry_work.ParamByName('Monat').asInteger:= Month;
  dm_PCM.qry_work.ParamByName('Jahr').asInteger:= Year;
  dm_PCM.qry_work.ParamByName('ID_Benutzer').asInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_work.Open;
  dbl_varKosten:= dm_PCM.qry_work.FieldByName('varKosten').Asfloat;
  lbl_varKosten.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('varKosten').Asfloat]);
  lbl_varKosten_summe.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('varKosten').Asfloat]);
  dm_PCM.qry_work.Close;

   // fixe Kosten
  dm_PCM.qry_work.SQL.text:= 'Select IFnull(Sum(Betrag),0)as fixKosten From manager_finanzen_ausgaben where fixkosten = :Fixkosten '
                              + ' AND ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_work.ParamByName('Fixkosten').asString:= 'true';
  dm_PCM.qry_work.ParamByName('ID_Benutzer').asInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_work.Open;
  dbl_fixKosten:= dm_PCM.qry_work.FieldByName('fixKosten').Asfloat;
  lbl_fixKosten.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('fixKosten').Asfloat]);
  lbl_fixKosten_summe.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('fixKosten').Asfloat]);
  dm_PCM.qry_work.Close;
  lbl_restsumme.Caption:= '[B]' + Format('%.2f €',[dbl_Einnahmen - dbl_varKosten - dbl_fixKosten]) + '[/B]';
end;
procedure Tfrm_finanzen.SetGridViews(Show:boolean);
begin
  if Show then
  begin
    SaveGridViewEin := TSavedGridView.Create(GV_Einnahmen,dm_PCM.iIDBenutzerPCM, tv_Einnahmen);
    SaveGridViewEin.LoadView;
    SaveGridViewAus := TSavedGridView.Create(GV_Ausgaben,dm_PCM.iIDBenutzerPCM, tv_ausgaben);
    SaveGridViewAus.LoadView;
    SaveGridViewVerf := TSavedGridView.Create(GV_Verfuegung,dm_PCM.iIDBenutzerPCM, tv_ausgaben1);
    SaveGridViewVerf.LoadView;
  end
  else begin
    SaveGridViewEin.SaveView(0);
    SaveGridViewEin.Free;
    SaveGridViewAus.SaveView(0);
    SaveGridViewAus.Free;
    SaveGridViewVerf.SaveView(0);
    SaveGridViewVerf.Free;
  end;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttonfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttonfunktionen}
procedure Tfrm_finanzen.btn_BelegeCancelClick(Sender: TObject);
begin
  bnew:= False;
  qry_Belege.Cancel;
end;
procedure Tfrm_finanzen.btn_BelegeDeleteClick(Sender: TObject);
begin
  bNew:= false;
  if qry_Belege.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Belege ' + qry_Belege.FieldByName('Nummer').asString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qry_Belege.Delete;
  end
end;
procedure Tfrm_finanzen.btn_BelegeNewClick(Sender: TObject);
var
  iJahr, iMonat,iTag : word;
begin
  if qry_Belege.State in [dsInsert, dsedit] then
    qry_Belege.Post;
  qry_Belege.Append;
  qry_Belege.Insert;
  DecodeDate(Now(),iJahr,iMonat,iTag);
  qry_Belege.FieldByName('Kategorie').AsInteger:=0;
  qry_Belege.FieldByName('Datum').AsDateTime:= Date();
  qry_Belege.FieldByName('Monat').AsInteger:= iMonat;
  qry_Belege.FieldByName('Jahr').AsInteger:= iJahr;
  qry_Belege.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  if not edt_BelegeNummer.Enabled then
  begin
    edt_BelegeNummer.Enabled:= true;
    edt_BelegDatum.Enabled:= true;
    edt_BelegeAussteller.Enabled:= true;
    edt_BelegeBetrag.Enabled:= true;
    cbx_BelegeKategorie.Enabled:= true;
    cx_BelegMonat.Enabled:= true;
    cx_BelegJahr.Enabled:= true;
  end;
  edt_BelegeNummer.SetFocus;
  bNew:= true;
end;
procedure Tfrm_finanzen.btn_BelegeSaveClick(Sender: TObject);
begin
 if qry_Belege.State in [dsInsert, dsEdit] then
  begin
    edt_BelegeNummer.PostEditValue;
    edt_BelegeAussteller.PostEditValue;
    edt_BelegeBetrag.PostEditValue;
    qry_Belege.Post;
    if bnew then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neuer Beleg ' + qry_Belege.FieldByName('Nummer').asString + ' wurde angelegt';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Beleg ' + qry_Belege.FieldByName('Nummer').asString + ' wurde geändert';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end;
    bNew:= false;
  end;
end;
procedure Tfrm_finanzen.btn_FinanzenDruckenClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_PCManagerChooseDate,frm_PCManagerChooseDate);
  frm_PCManagerChooseDate.Execute(True,iMonat,iJahr);
  Drucke_PCM_Manager_Finanzuebersicht(iMonat,iJahr);
end;
procedure Tfrm_finanzen.btn_FinAusCancelClick(Sender: TObject);
begin
  bnew:= False;
  qry_Ausgaben.Cancel;
end;
procedure Tfrm_finanzen.btn_FinAusDeleteClick(Sender: TObject);
begin
  bNew:= false;
  if qry_Ausgaben.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Ausgabe ' + qry_Ausgaben.FieldByName('Name').asString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qry_Ausgaben.Delete;
  end
end;
procedure Tfrm_finanzen.btn_FinAusNewClick(Sender: TObject);
var
  iJahr, iMonat,iTag : word;
begin
  if qry_Ausgaben.State in [dsInsert, dsedit] then
    qry_Ausgaben.Post;
  qry_Ausgaben.Append;
  qry_Ausgaben.Insert;
  DecodeDate(Now(),iJahr,iMonat,iTag);
  qry_Ausgaben.FieldByName('Gueltig_Monat').AsInteger:= iMonat;
  qry_Ausgaben.FieldByName('Gueltig_Jahr').AsInteger:= iJahr;
    qry_Ausgaben.FieldByName('Fixkosten').AsString:= 'false';
  qry_Ausgaben.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  if not edt_FinAusName.Enabled then
  begin
    edt_FinAusName.Enabled:= true;
    edt_FinAusBez.Enabled:= true;
    edt_FinAusBetrag.Enabled:= true;
    edt_FinAusIBAN.Enabled:= true;
    edt_FinAusBIC.Enabled:= true;
    edt_FinAusVerwendung.Enabled:= true;
    chkbx_FinAusFixkosten.Enabled:= true;
    cbx_FinAusMonat.Enabled:= true;
    cbx_FinAusJahr.Enabled:= true;
  end;
  edt_FinAusName.SetFocus;
  bNew:= true;
end;
procedure Tfrm_finanzen.btn_FinAusNullClick(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_ausgaben Set Betrag = 0 Where ID = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_Ausgaben.FieldByName('ID').AsInteger;
  dm_PCM.qry_work.ExecSQL;
  qry_Ausgaben.Refresh;
end;
procedure Tfrm_finanzen.btn_FinAusFixClick(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_ausgaben Set Betrag = Fixbetrag Where ID = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_Ausgaben.FieldByName('ID').AsInteger;
  dm_PCM.qry_work.ExecSQL;
  qry_Ausgaben.Refresh;
end;
procedure Tfrm_finanzen.btn_FinAusSaveClick(Sender: TObject);
begin
 if qry_Ausgaben.State in [dsInsert, dsEdit] then
  begin
    edt_FinAusName.PostEditValue;
    edt_FinAusBez.PostEditValue;
    edt_FinAusBetrag.PostEditValue;
    edt_FinAusFixBetrag.PostEditValue;
    edt_FinAusIBAN.PostEditValue;
    edt_FinAusBIC.PostEditValue;
    edt_FinAusVerwendung.PostEditValue;
    qry_Ausgaben.Post;
    if bnew then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neue Ausgabe ' + qry_Ausgaben.FieldByName('Name').asString + ' wurde angelegt';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Ausgabe ' + qry_Ausgaben.FieldByName('Name').asString + ' wurde geändert';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end;
    bNew:= false;
    end;
end;
procedure Tfrm_finanzen.btn_FinEinCancelClick(Sender: TObject);
begin
  bnew:= False;
  qry_Einnahmen.Cancel;
end;
procedure Tfrm_finanzen.btn_FinEinDeleteClick(Sender: TObject);
begin
  bNew:= false;
  if qry_Einnahmen.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Einnahme ' + qry_Einnahmen.FieldByName('Quelle').asString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qry_Einnahmen.Delete;
  end;
end;
procedure Tfrm_finanzen.btn_FinEinNewClick(Sender: TObject);
begin
  if qry_Einnahmen.State in [dsInsert, dsedit] then
    qry_Einnahmen.Post;
  qry_Einnahmen.Append;
  qry_Einnahmen.Insert;
  qry_Einnahmen.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  if not edt_FinEinAbsender.Enabled then
  begin
    edt_FinEinAbsender.enabled:= true;
    edt_FinEinBez.enabled:= true;
    edt_FinEinBetrag.enabled:= true;
  end;
  edt_FinEinAbsender.SetFocus;
  bNew:= true;
end;
procedure Tfrm_finanzen.btn_FinEinNullClick(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_einnahmen Set Betrag = 0 Where ID = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_Einnahmen.FieldByName('ID').AsInteger;
  dm_PCM.qry_work.ExecSQL;
  qry_Einnahmen.Refresh;
end;
procedure Tfrm_finanzen.btn_FinEinSaveClick(Sender: TObject);
begin
 if qry_Einnahmen.State in [dsInsert, dsEdit] then
  begin
    edt_FinEinAbsender .PostEditValue;
    edt_FinEinBEz.PostEditValue;
    edt_FinEinBetrag.PostEditValue;
    qry_Einnahmen.Post;
    if bnew then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neuer Einnahme ' + qry_Einnahmen.FieldByName('Quelle').asString + ' wurde angelegt';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Einnahme ' + qry_Einnahmen.FieldByName('Quelle').asString + ' wurde geändert';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end;
    bNew:= false;
  end;
end;
procedure Tfrm_finanzen.btn_FinAusAllFIxClick(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_ausgaben Set Betrag = Fixbetrag';
  dm_PCM.qry_work.ExecSQL;
  qry_Ausgaben.Refresh;
end;
procedure Tfrm_finanzen.btn_FinEinAllFIxClick(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_einnahmen Set Betrag = Fixbetrag';
  dm_PCM.qry_work.ExecSQL;
  qry_Einnahmen.Refresh;
end;
procedure Tfrm_finanzen.btn_FinEinAllNullClick(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_einnahmen Set Betrag = 0';
  dm_PCM.qry_work.ExecSQL;
  qry_Einnahmen.Refresh;
end;
procedure Tfrm_finanzen.btn_FinAusAllNullClick(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_ausgaben Set Betrag = 0';
  dm_PCM.qry_work.ExecSQL;
  qry_Ausgaben.Refresh;
end;
procedure Tfrm_finanzen.btn_FinEinFixClick(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_einnahmen Set Betrag = Fixbetrag Where ID = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= qry_Einnahmen.FieldByName('ID').AsInteger;
  dm_PCM.qry_work.ExecSQL;
  qry_Einnahmen.Refresh;
end;
procedure Tfrm_finanzen.btn_GutscheinCancelClick(Sender: TObject);
begin
  bnew:= False;
  qry_Gutschein.Cancel;
end;
procedure Tfrm_finanzen.btn_GutscheinDeleteClick(Sender: TObject);
begin
  bNew:= false;
  if qry_Gutschein.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Gutschein ' + qry_Gutschein.FieldByName('Nummer').asString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qry_Gutschein.Delete;
  end
end;
procedure Tfrm_finanzen.btn_GutscheinNewClick(Sender: TObject);
begin
  if qry_Gutschein.State in [dsInsert, dsedit] then
    qry_Gutschein.Post;
  qry_Gutschein.Append;
  qry_Gutschein.Insert;
  qry_Gutschein.FieldByName('Datum').AsDateTime:= Date();
  qry_Gutschein.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  if not edt_GutscheinNummer.Enabled then
  begin
    edt_GutscheinNummer .Enabled:= true;
    edt_GutscheinAussteller .Enabled:= true;
    edt_GutscheinDatum .Enabled:= true;
    edt_GutscheinWert .Enabled:= true;
    edt_GutscheinRestwert .Enabled:= true;
    edt_GutscheinPin .Enabled:= true;
  end;
  edt_GutscheinNummer.SetFocus;
  bNew:= true;
end;
procedure Tfrm_finanzen.btn_GutscheinSaveClick(Sender: TObject);
begin
 if qry_Gutschein.State in [dsInsert, dsEdit] then
  begin
    edt_GutscheinNummer.PostEditValue;
    edt_GutscheinAussteller.PostEditValue;
    edt_GutscheinWert.PostEditValue;
    edt_GutscheinRestwert.PostEditValue;
    edt_GutscheinPin.PostEditValue;
    qry_Gutschein.Post;
    if bnew then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neuer Gutschein ' + qry_Gutschein.FieldByName('Nummer').asString + ' wurde angelegt';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Gutschein ' + qry_Gutschein.FieldByName('Nummer').asString + ' wurde geändert';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end;
    bNew:= false;
  end;
end;
procedure Tfrm_finanzen.ppmbtn_ExportExcelAusClick(Sender: TObject);
begin
  if sdlg_Ausgaben.Execute then
  begin
    ExportGridToExcel(sdlg_Ausgaben.FileName, grd_Finanzen_Ausgaben);
    SetMessageDialog(1,rs_PCMManager_GridExport1 + sdlg_Ausgaben.FileName +  rs_PCMManager_GridExport2,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
  end;
end;
procedure Tfrm_finanzen.ppmbtn_ExportExcelBelClick(Sender: TObject);
begin
  if sdlg_Belege.Execute then
  begin
    ExportGridToExcel(sdlg_Belege.FileName, grd_Finanzen_Belege);
    SetMessageDialog(1,rs_PCMManager_GridExport1 + sdlg_Belege.FileName +  rs_PCMManager_GridExport2,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
  end;
end;
procedure Tfrm_finanzen.ppmbtn_ExportExcelEInClick(Sender: TObject);
begin
  if sdlg_Einnahmen.Execute then
  begin
    ExportGridToExcel(sdlg_Einnahmen.FileName, grd_Finanzen_Einnahmen);
    SetMessageDialog(1,rs_PCMManager_GridExport1 + sdlg_Einnahmen.FileName +  rs_PCMManager_GridExport2,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
  end;
end;
procedure Tfrm_finanzen.ppmbtn_ExportExcelGutClick(Sender: TObject);
begin
  if sdlg_Gutschein.Execute then
  begin
    ExportGridToExcel(sdlg_Gutschein.FileName, grd_Finanzen_Gutscheine);
    SetMessageDialog(1,rs_PCMManager_GridExport1 + sdlg_Gutschein.FileName +  rs_PCMManager_GridExport2,[rs_general_BTN_Ok,'',''],[mrOk,mrNone,mrNone]);
  end;
end;
{$EndRegion Buttonfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Editfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Editfunktionen}
procedure Tfrm_finanzen.edt_SucheAusPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edt_SucheAus.text:= '';
  qry_Ausgaben.Filtered:= False;
end;
procedure Tfrm_finanzen.edt_SucheAusPropertiesChange(Sender: TObject);
begin
  if Length(edt_SucheAus.text) = 0 then
  begin
    qry_Ausgaben.Filtered:= false;
  end
  else begin
    qry_Ausgaben.Filter:= 'lower(Name) like lower(' + QuotedStr('%' + edt_SucheAus.text + '%' ) + ')';
    qry_Ausgaben.Filtered:= true;
  end;
end;
procedure Tfrm_finanzen.edt_SucheBelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edt_SucheBel.text:= '';
  qry_Belege.Filtered:= False;
end;
procedure Tfrm_finanzen.edt_SucheBelPropertiesChange(Sender: TObject);
begin
  if Length(edt_SucheBel.text) = 0 then
  begin
    qry_Belege.Filtered:= false;
  end
  else begin
    qry_Belege.Filter:= 'lower(Nummer) like lower(' + QuotedStr('%' + edt_SucheBel.text + '%' ) + ')';
    qry_Belege.Filtered:= true;
  end;
end;
procedure Tfrm_finanzen.edt_SucheEinPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edt_SucheEin.text:= '';
  qry_Einnahmen.Filtered:= False;
end;
procedure Tfrm_finanzen.edt_SucheEinPropertiesChange(Sender: TObject);
begin
  if Length(edt_SucheEin.text) = 0 then
  begin
    qry_Einnahmen.Filtered:= false;
  end
  else begin
    qry_Einnahmen.Filter:= 'lower(Quelle) like lower(' + QuotedStr('%' + edt_SucheEin.text + '%' ) + ')';
    qry_Einnahmen.Filtered:= true;
  end;
end;
procedure Tfrm_finanzen.edt_SucheGutPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  edt_SucheGut.text:= '';
  qry_Gutschein.Filtered:= False;
end;
procedure Tfrm_finanzen.edt_SucheGutPropertiesChange(Sender: TObject);
begin
  if Length(edt_SucheBel.text) = 0 then
  begin
    qry_Belege.Filtered:= false;
  end
  else begin
    qry_Belege.Filter:= 'lower(Nummer) like lower(' + QuotedStr('%' + edt_SucheBel.text + '%' ) + ')';
    qry_Belege.Filtered:= true;
  end;
end;
{$EndRegion Editfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Sonstigefunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Sonstigefunktionen}
procedure Tfrm_finanzen.chkbx_FinAusFixkostenPropertiesChange(Sender: TObject);
begin
  if chkbx_FinAusFixkosten.Checked then
  begin
    lbl_FinAusMonat.Visible:= false;
    lbl_FinAusJahr.Visible:= false;
  end
  else begin
    lbl_FinAusMonat.Visible:= true;
    lbl_FinAusJahr.Visible:= true;
  end;
end;
procedure Tfrm_finanzen.SetButtonsEnableVisible(DataSet: TDataSet);
begin
  Setbuttons;
end;
procedure Tfrm_finanzen.AG_pc_FinanzenChange(Sender: TObject);
var
  dbl_Einnahmen,dbl_varKosten,dbl_FixKosten: double;
  sMonat: string;
begin
  if dxLayoutGroup2.itemindex = 0 then
  begin
    Application.CreateForm(Tfrm_PCManagerChooseDate,frm_PCManagerChooseDate);
    frm_PCManagerChooseDate.Execute(True,iMonat,iJahr);
    case iMonat of
    1: sMonat:=rs_PCM_Januar;
    2: sMonat:=rs_PCM_Februar;
    3: sMonat:=rs_PCM_Maerz;
    4: sMonat:=rs_PCM_April;
    5: sMonat:=rs_PCM_Mai;
    6: sMonat:=rs_PCM_Juni;
    7: sMonat:=rs_PCM_Juli;
    8: sMonat:=rs_PCM_August;
    9: sMonat:=rs_PCM_September;
    10: sMonat:=rs_PCM_Oktober;
    11: sMonat:=rs_PCM_November;
    12: sMonat:=rs_PCM_Dezember;
    end;
    grpbx_FinanzenUebersicht.Caption:= rs_PCM_Uebersicht + sMonat + ' ' + IntToStr(iJahr);
    // Einnahmen
    dm_PCM.qry_work.SQL.text:= 'Select IFnull(Sum(Betrag),0)as Einnahmen From manager_finanzen_einnahmen where ID_Benutzer = :ID_Benutzer ';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.Open;
    dbl_Einnahmen:= dm_PCM.qry_work.FieldByName('Einnahmen').Asfloat;
    lbl_Einnahmen.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('Einnahmen').Asfloat]);
    lbl_Einnahmen_summe.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('Einnahmen').Asfloat]);
    dm_PCM.qry_work.Close;
    dm_PCM.qry_work.SQL.text:= 'Select IFnull(Sum(Betrag),0)as varKosten From manager_finanzen_ausgaben where fixkosten = :Fixkosten '
                                + 'and Gueltig_Monat = :Monat and Gueltig_Jahr = :Jahr and ID_Benutzer = :ID_Benutzer';
    dm_PCM.qry_work.ParamByName('Fixkosten').asString:= 'false';
    dm_PCM.qry_work.ParamByName('Monat').asInteger:= iMonat;
    dm_PCM.qry_work.ParamByName('Jahr').asInteger:= iJahr;
    dm_PCM.qry_work.ParamByName('ID_Benutzer').asInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.Open;
    dbl_varKosten:= dm_PCM.qry_work.FieldByName('varKosten').Asfloat;
    lbl_varKosten.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('varKosten').Asfloat]);
    lbl_varKosten_summe.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('varKosten').Asfloat]);
    dm_PCM.qry_work.Close;

     // fixe Kosten
    dm_PCM.qry_work.SQL.text:= 'Select IFnull(Sum(Betrag),0)as fixKosten From manager_finanzen_ausgaben where fixkosten = :Fixkosten '
                                + ' AND ID_Benutzer = :ID_Benutzer';
    dm_PCM.qry_work.ParamByName('Fixkosten').asString:= 'true';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').asInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.Open;
    dbl_fixKosten:= dm_PCM.qry_work.FieldByName('fixKosten').Asfloat;
    lbl_fixKosten.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('fixKosten').Asfloat]);
    lbl_fixKosten_summe.Caption:= Format('%.2f €',[dm_PCM.qry_work.FieldByName('fixKosten').Asfloat]);
    dm_PCM.qry_work.Close;
    lbl_restsumme.Caption:= '[B]' + Format('%.2f €',[dbl_Einnahmen - dbl_varKosten - dbl_fixKosten]) + '[/B]';
    frm_PCManagerChooseDate.Free;
  end;
end;

{$EndRegion Sonstigefunktionen}
 ////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region Formfunktionen}
procedure Tfrm_finanzen.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_finanzen.FormDestroy(Sender: TObject);
begin
  SetGridViews(false);
end;
procedure Tfrm_finanzen.FormShow(Sender: TObject);
  procedure OpenData;
  begin
    qry_Ausgaben.Open;
    qry_Einnahmen.Open;
    qry_Einnahmen.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_Einnahmen.Filtered:= true;
    qry_Ausgaben.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_Ausgaben.Filtered:= true;
    qry_Gutschein.Open;
    qry_Gutschein.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_Gutschein.Filtered:= true;
    qry_Belege.Open;
    qry_Belege.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    qry_Belege.Filtered:= true;
    tv_AusgabenName.Caption := rs_PCMManager_AusgabenEmpfaenger;
    tv_AusgabenBeschreibung.Caption := rs_PCM_Beschreibung;
    tv_Ausgabenverwendungszweck.Caption := rs_PCMManager_Verwendungszweck;
    tv_Ausgabenbetrag.Caption := rs_PCM_Betrag;
    tv_AusgabenFixBetrag.Caption := rs_PCM_FixBetrag;
    tv_Ausgabenfixkosten.Caption := rs_PCM_FixKosten;
    tv_AusgabenGueltig_monat.Caption := rs_PCM_Monat;
    tv_AusgabenGueltig_Jahr.Caption := rs_PCM_Jahr;
    tv_EinnahmenQuelle.Caption := rs_PCM_Absender;
    tv_EinnahmenBezeichnung.Caption := rs_PCM_Beschreibung;
    tv_EinnahmenBetrag.Caption := rs_PCM_Betrag;
    tv_EinnahmenFixBetrag.Caption := rs_PCM_FixBetrag;
  end;
  procedure InitializeRights;
  begin
     // FINANZEN / LeEsen
    if dm_PCM.iMonatsuebersicht = 1 then
    begin
      // Toolbar
      btn_FinEinNew.Enabled:= false;
      btn_FinEinSave.Enabled:= false;
      btn_FinEinCancel.Enabled:= false;
      btn_FinEinDelete.Enabled:= false;
      // Editfelder
      edt_FinEinAbsender.Enabled:= false;
      edt_FinEinBEz.Enabled:= false;
      edt_FinEinBetrag.Enabled:= false;
      //// Ausgaben
      // Toolbar
      btn_FinAusNew.Enabled:= false;
      btn_FinAusSave.Enabled:= false;
      btn_FinAusCancel.Enabled:= false;
      btn_FinAusDelete.Enabled:= false;
      // Editfelder
      edt_FinAusName.Enabled:= false;
      edt_FinAusBez.Enabled:= false;
      edt_FinAusBetrag.Enabled:= false;
      edt_FinAusIBAN.Enabled:= false;
      edt_FinAusBIC.Enabled:= false;
      edt_FinAusVerwendung.Enabled:= false;
    end;

        // FINANZEN / Schreiben
    if dm_PCM.iMonatsuebersicht = 2 then
    begin
      //// Einnahmen
      // Toolbar
      btn_FinEinNew.Enabled:= true;
      btn_FinEinSave.Enabled:= true;
      btn_FinEinCancel.Enabled:= true;
      btn_FinEinDelete.Enabled:= false;
      // Editfelder
      edt_FinEinAbsender.Enabled:= true;
      edt_FinEinBEz.Enabled:= true;
      edt_FinEinBetrag.Enabled:= true;
      //// Ausgaben
      // Toolbar
      btn_FinAusNew.Enabled:= true;
      btn_FinAusSave.Enabled:= true;
      btn_FinAusCancel.Enabled:= true;
      btn_FinAusDelete.Enabled:= false;
      // Editfelder
      edt_FinAusName.Enabled:= true;
      edt_FinAusBez.Enabled:= true;
      edt_FinAusBetrag.Enabled:= true;
      edt_FinAusIBAN.Enabled:= true;
      edt_FinAusBIC.Enabled:= true;
      edt_FinAusVerwendung.Enabled:= true;
    end;

    // FINANZEN / Vollzugriff
    if dm_PCM.iMonatsuebersicht = 2 then
    begin
      // Toolbar
      btn_FinEinNew.Enabled:= true;
      btn_FinEinSave.Enabled:= true;
      btn_FinEinCancel.Enabled:= true;
      btn_FinEinDelete.Enabled:= True;
      // Editfelder
      edt_FinEinAbsender.Enabled:= true;
      edt_FinEinBEz.Enabled:= true;
      edt_FinEinBetrag.Enabled:= true;
      //// Ausgaben
      // Toolbar
      btn_FinAusNew.Enabled:= true;
      btn_FinAusSave.Enabled:= true;
      btn_FinAusCancel.Enabled:= true;
      btn_FinAusDelete.Enabled:= True;
      // Editfelder
      edt_FinAusName.Enabled:= true;
      edt_FinAusBez.Enabled:= true;
      edt_FinAusBetrag.Enabled:= true;
      edt_FinAusIBAN.Enabled:= true;
      edt_FinAusBIC.Enabled:= true;
      edt_FinAusVerwendung.Enabled:= true;
    end;
  end;
begin
  OpenData;
  InitializeRights;
  SetButtons;
  case dm_PCM.iModulTab of
  1: dxLayoutGroup2.Itemindex:= 0;
  2: dxLayoutGroup2.Itemindex:= 1;
  3: dxLayoutGroup2.Itemindex:= 2;
  4: dxLayoutGroup2.Itemindex:= 3;
  5: dxLayoutGroup2.Itemindex:= 4;
  6: dxLayoutGroup2.Itemindex:= 5;
  end;
  dxLayoutGroup2.OnTabChanged:= AG_pc_FinanzenChange;
  SetFinanzUebersicht;
  SetGridViews(True);
end;
{$EndRegion Formfunktionen}
end.
