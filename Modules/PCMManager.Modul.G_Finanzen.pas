unit PCMManager.Modul.G_Finanzen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData,
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
  Xml.Win.msxmldom,cxGridExportLink,PCM.Functions, dxSkinWXI, dxBarCode, Xml.adomxmldom;

type
  Tfrm_finanzen = class(TForm)
    AG_pc_Finanzen: TcxPageControl;
    A_ts_MU: TcxTabSheet;
    grpbx_FinanzenUebersicht: TcxGroupBox;
    ckbx_EditReport: TCheckBox;
    btn_FinanzenDrucken: TcxButton;
    grpbx_FinanzenEinnahmen: TcxGroupBox;
    lbl_Einnahmen: TcxLabel;
    lbl_Einnahmenlabel: TcxLabel;
    grpbx_FinanzenGesamt: TcxGroupBox;
    lbl_Einnahmen_summe: TcxLabel;
    lbl_Einnahmen_summelabel: TcxLabel;
    lbl_fixKosten_summe: TcxLabel;
    lbl_fixKosten_summelabel: TcxLabel;
    lbl_restsumme: TcxLabel;
    lbl_restsummelabel: TcxLabel;
    lbl_varKosten_summe: TcxLabel;
    lbl_varKosten_summelabel: TcxLabel;
    pnl_FinanzenGesamt: TPanel;
    grpbx_FinanzenFixKosten: TcxGroupBox;
    lbl_fixKosten: TcxLabel;
    lbl_fixKostenlabel: TcxLabel;
    grpbx_FinanzenVarKosten: TcxGroupBox;
    lbl_varKosten: TcxLabel;
    lbl_varKostenlabel: TcxLabel;
    B_ts_Ein: TcxTabSheet;
    gbx_Finanzen_Einnahmen_Quelle: TcxGroupBox;
    pnl_Finanzen_Einnahmen: TcxGroupBox;
    edt_FinEinAbsender: TcxDBTextEdit;
    edt_FinEinBetrag: TcxDBCurrencyEdit;
    edt_FinEinBEz: TcxDBTextEdit;
    lbl_FinEinAbsender: TcxLabel;
    lbl_FinEinBetrag: TcxLabel;
    lbl_FinEinBEz: TcxLabel;
    grd_Finanzen_Einnahmen: TcxGrid;
    tv_Einnahmen: TcxGridDBTableView;
    tv_EinnahmenQuelle: TcxGridDBColumn;
    tv_EinnahmenBezeichnung: TcxGridDBColumn;
    tv_EinnahmenBetrag: TcxGridDBColumn;
    glvl_Einnahmen: TcxGridLevel;
    C_ts_Aus: TcxTabSheet;
    gbx_Finanzen_Ausgaben: TcxGroupBox;
    pnl_Finanzen_Ausgaben: TcxGroupBox;
    lbl_FinAusBetrag: TcxLabel;
    lbl_FinAusBez: TcxLabel;
    lbl_FinAusBIC: TcxLabel;
    lbl_FinAusFixkosten: TcxLabel;
    lbl_FinAusFixkostenCheck: TcxLabel;
    lbl_FinAusIBAN: TcxLabel;
    lbl_FinAusJahr: TcxLabel;
    lbl_FinAusMonat: TcxLabel;
    lbl_FinAusName: TcxLabel;
    lbl_FinAusVerwendung: TcxLabel;
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
    ts_Verf: TcxTabSheet;
    gbx_Finanzen_Verf: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    gbx_Finanzen_Verf_Monat: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
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
    qEinnahmen: TFDQuery;
    dsEinnahmen: TDataSource;
    qAusgaben: TFDQuery;
    dsAusgaben: TDataSource;
    pm_Einnahmen: TcxGridPopupMenu;
    pm_Ausgaben: TcxGridPopupMenu;
    sdlg_Ausgaben: TSaveDialog;
    sdlg_Einnahmen: TSaveDialog;
    dxBarManager1: TdxBarManager;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar1: TdxBar;
    btn_FinEinNew: TdxBarLargeButton;
    btn_FinEinDelete: TdxBarLargeButton;
    btn_FinEinCancel: TdxBarLargeButton;
    btn_FinEinSave: TdxBarLargeButton;
    dxBarDockControl2: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    btn_FinAusNew: TdxBarLargeButton;
    btn_FinAusDelete: TdxBarLargeButton;
    btn_FinAusCancel: TdxBarLargeButton;
    btn_FinAusSave: TdxBarLargeButton;
    pmm_Einnahmen: TdxBarPopupMenu;
    NachExcelexportieren1: TdxBarButton;
    pmm_Ausgaben: TdxBarPopupMenu;
    MenuItem1: TdxBarButton;
    cxButton1: TcxButton;
    edt_FinAusFixBetrag: TcxDBCurrencyEdit;
    cxLabel1: TcxLabel;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    cxButton2: TcxButton;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel2: TcxLabel;
    tv_EinnahmenFixBetrag: TcxGridDBColumn;
    tv_AusgabenFixBetrag: TcxGridDBColumn;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    pnl_Design: TcxGroupBox;
    D_tsBelege: TcxTabSheet;
    E_tsGutschein: TcxTabSheet;
    dxBarDockControl3: TdxBarDockControl;
    dxBarDockControl4: TdxBarDockControl;
    dxBarManager1Bar3: TdxBar;
    btn_BelegeNew: TdxBarLargeButton;
    btn_BelegeSave: TdxBarLargeButton;
    btn_BelegeCancel: TdxBarLargeButton;
    btn_BelegeDelete: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    btn_GutscheinNew: TdxBarLargeButton;
    btn_GutscheinSave: TdxBarLargeButton;
    btn_GutscheinCancel: TdxBarLargeButton;
    btn_GutscheinDelete: TdxBarLargeButton;
    gbx_Finanzen_Belege: TcxGroupBox;
    pnl_Finanzen_Belege: TcxGroupBox;
    lbl_BelegeDatum: TcxLabel;
    lbl_BelegeBetrag: TcxLabel;
    lbl_BelegeJahr: TcxLabel;
    lbl_BelegeMonat: TcxLabel;
    lbl_BelegeNummer: TcxLabel;
    lbl_BelegeKategorie: TcxLabel;
    cx_BelegJahr: TcxDBComboBox;
    cx_BelegMonat: TcxDBImageComboBox;
    edt_BelegeNummer: TcxDBTextEdit;
    lbl_BelegeAusteller: TcxLabel;
    grd_Finanzen_Belege: TcxGrid;
    tv_Belege: TcxGridDBTableView;
    glvl_Belege: TcxGridLevel;
    gbx_Finanzen_Gutscheine: TcxGroupBox;
    grd_Finanzen_Gutscheine: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    pm_Belege: TcxGridPopupMenu;
    pm_Gutscheine: TcxGridPopupMenu;
    pmm_Belege: TdxBarPopupMenu;
    NachEx1: TdxBarButton;
    pmm_Gutscheine: TdxBarPopupMenu;
    NachExcelexportieren2: TdxBarButton;
    qBelege: TFDQuery;
    dsBelege: TDataSource;
    lbl_BelegeGueltig: TcxLabel;
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
    cxGroupBox1: TcxGroupBox;
    lbl_GutscheinDatum: TcxLabel;
    lbl_GutscheinWert: TcxLabel;
    lbl_GutscheinNummer: TcxLabel;
    lbl_GutscheinRestwert: TcxLabel;
    edt_GutscheinNummer: TcxDBTextEdit;
    lbl_GutscheinAussteller: TcxLabel;
    lbl_GutscheinPin: TcxLabel;
    edt_GutscheinWert: TcxDBCurrencyEdit;
    edt_GutscheinAussteller: TcxDBTextEdit;
    edt_GutscheinDatum: TcxDBDateEdit;
    edt_GutscheinRestwert: TcxDBCurrencyEdit;
    edt_GutscheinPin: TcxDBTextEdit;
    qGutschein: TFDQuery;
    dsGutschein: TDataSource;
    cxGridDBTableView2Nummer: TcxGridDBColumn;
    cxGridDBTableView2Bezeichnung: TcxGridDBColumn;
    cxGridDBTableView2Datum: TcxGridDBColumn;
    cxGridDBTableView2Wert: TcxGridDBColumn;
    cxGridDBTableView2Restwert: TcxGridDBColumn;
    cxGridDBTableView2AbfragePin: TcxGridDBColumn;
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
    procedure NachExcelexportieren1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure AG_pc_FinanzenChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NachExcelexportieren2Click(Sender: TObject);
    procedure NachEx1Click(Sender: TObject);
    procedure btn_BelegeNewClick(Sender: TObject);
    procedure btn_BelegeSaveClick(Sender: TObject);
    procedure btn_BelegeCancelClick(Sender: TObject);
    procedure btn_BelegeDeleteClick(Sender: TObject);
    procedure btn_GutscheinSaveClick(Sender: TObject);
    procedure btn_GutscheinNewClick(Sender: TObject);
    procedure btn_GutscheinCancelClick(Sender: TObject);
    procedure btn_GutscheinDeleteClick(Sender: TObject);
  private
    { Private-Deklarationen }
//    rep: TDmReports;
    bnew: boolean;
    SaveGridViewEin,SaveGridViewAus,SaveGridViewVerf: TSavedGridView;
    procedure SetGridViews(Show:boolean);
    procedure InitializeRights;
    procedure SetButtons;
    procedure OpenData;
    procedure SetFinanzUebersicht;
  public
    { Public-Deklarationen }
    iTag,iActiveTab: integer;
    iMonat,iJahr: integer;
    procedure Execute(ATag,AActiveTab: integer);
  end;

var
  frm_finanzen: Tfrm_finanzen;

implementation

{$R *.dfm}

uses  PCM.Data, PCM.Browser.FullScreen,
      PCMManager.Modul.G_Finanzen.Filter.Date,
      PCM.Strings;

procedure Tfrm_finanzen.Execute(ATag,AActiveTab: integer);
begin
  iTag:= ATag;
  iActiveTab:=AActiveTab;
  case iActiveTab of
  1: AG_pc_Finanzen.ActivePage:= A_ts_MU;
  2: AG_pc_Finanzen.ActivePage:= B_ts_Ein;
  3: AG_pc_Finanzen.ActivePage:= C_ts_Aus;
  4: AG_pc_Finanzen.ActivePage:= ts_verf;
  5: AG_pc_Finanzen.ActivePage:= D_tsBelege;
  6: AG_pc_Finanzen.ActivePage:= E_tsGutschein;
  end;
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
procedure Tfrm_finanzen.FormActivate(Sender: TObject);
begin
  FormShow(Self);
end;
procedure Tfrm_finanzen.FormDestroy(Sender: TObject);
begin
  SetGridViews(false);
end;
procedure Tfrm_finanzen.FormShow(Sender: TObject);
begin
  OpenData;
  InitializeRights;
  SetButtons;
  case dm_PCM.iModulTab of
  1: AG_pc_Finanzen.ActivePage:= A_ts_MU;
  2: AG_pc_Finanzen.ActivePage:= B_ts_Ein;
  3: AG_pc_Finanzen.ActivePage:= C_ts_Aus;
  4: AG_pc_Finanzen.ActivePage:= ts_verf;
  5: AG_pc_Finanzen.ActivePage:= D_tsBelege;
  6: AG_pc_Finanzen.ActivePage:= E_tsGutschein;
  end;
  AG_pc_Finanzen.OnChange:= AG_pc_FinanzenChange;
  SetFinanzUebersicht;
  SetGridViews(True);
end;

procedure Tfrm_finanzen.btn_FinAusCancelClick(Sender: TObject);
begin
  bnew:= False;
  qAusgaben.Cancel;
end;
procedure Tfrm_finanzen.btn_FinAusDeleteClick(Sender: TObject);
begin
  bNew:= false;
  if qAusgaben.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Ausgabe ' + qAusgaben.FieldByName('Name').asString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qAusgaben.Delete;
  end
end;
procedure Tfrm_finanzen.btn_FinAusNewClick(Sender: TObject);
var
  iJahr, iMonat,iTag : word;
begin
  if qAusgaben.State in [dsInsert, dsedit] then
    qAusgaben.Post;
  qAusgaben.Append;
  qAusgaben.Insert;
  DecodeDate(Now(),iJahr,iMonat,iTag);
  qAusgaben.FieldByName('Gueltig_Monat').AsInteger:= iMonat;
  qAusgaben.FieldByName('Gueltig_Jahr').AsInteger:= iJahr;
    qAusgaben.FieldByName('Fixkosten').AsString:= 'false';
  qAusgaben.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
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
procedure Tfrm_finanzen.btn_FinAusSaveClick(Sender: TObject);
begin
 if qAusgaben.State in [dsInsert, dsEdit] then
  begin
    edt_FinAusName.PostEditValue;
    edt_FinAusBez.PostEditValue;
    edt_FinAusBetrag.PostEditValue;
    edt_FinAusFixBetrag.PostEditValue;
    edt_FinAusIBAN.PostEditValue;
    edt_FinAusBIC.PostEditValue;
    edt_FinAusVerwendung.PostEditValue;
    qAusgaben.Post;
    if bnew then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neue Ausgabe ' + qAusgaben.FieldByName('Name').asString + ' wurde angelegt';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Ausgabe ' + qAusgaben.FieldByName('Name').asString + ' wurde geändert';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end;
    bNew:= false;
    end;
end;
procedure Tfrm_finanzen.btn_FinEinCancelClick(Sender: TObject);
begin
  bnew:= False;
  qEinnahmen.Cancel;
end;
procedure Tfrm_finanzen.btn_FinEinDeleteClick(Sender: TObject);
begin
  bNew:= false;
  if qEinnahmen.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Einnahme ' + qEinnahmen.FieldByName('Quelle').asString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qEinnahmen.Delete;
  end;
end;
procedure Tfrm_finanzen.btn_FinEinNewClick(Sender: TObject);
begin
  if qEinnahmen.State in [dsInsert, dsedit] then
    qEinnahmen.Post;
  qEinnahmen.Append;
  qEinnahmen.Insert;
  qEinnahmen.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  if not edt_FinEinAbsender.Enabled then
  begin
    edt_FinEinAbsender.enabled:= true;
    edt_FinEinBez.enabled:= true;
    edt_FinEinBetrag.enabled:= true;
  end;
  edt_FinEinAbsender.SetFocus;
  bNew:= true;
end;
procedure Tfrm_finanzen.btn_FinEinSaveClick(Sender: TObject);
begin
 if qEinnahmen.State in [dsInsert, dsEdit] then
  begin
    edt_FinEinAbsender .PostEditValue;
    edt_FinEinBEz.PostEditValue;
    edt_FinEinBetrag.PostEditValue;
    qEinnahmen.Post;
    if bnew then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neuer Einnahme ' + qEinnahmen.FieldByName('Quelle').asString + ' wurde angelegt';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Einnahme ' + qEinnahmen.FieldByName('Quelle').asString + ' wurde geändert';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end;
    bNew:= false;
  end;
end;
procedure Tfrm_finanzen.btn_GutscheinCancelClick(Sender: TObject);
begin
  bnew:= False;
  qGutschein.Cancel;
end;

procedure Tfrm_finanzen.btn_GutscheinDeleteClick(Sender: TObject);
begin
  bNew:= false;
  if qGutschein.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Gutschein ' + qGutschein.FieldByName('Nummer').asString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qGutschein.Delete;
  end
end;
procedure Tfrm_finanzen.btn_GutscheinNewClick(Sender: TObject);
begin
  if qGutschein.State in [dsInsert, dsedit] then
    qGutschein.Post;
  qGutschein.Append;
  qGutschein.Insert;
  qGutschein.FieldByName('Datum').AsDateTime:= Date();
  qGutschein.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
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
 if qGutschein.State in [dsInsert, dsEdit] then
  begin
    edt_GutscheinNummer.PostEditValue;
    edt_GutscheinAussteller.PostEditValue;
    edt_GutscheinWert.PostEditValue;
    edt_GutscheinRestwert.PostEditValue;
    edt_GutscheinPin.PostEditValue;
    qGutschein.Post;
    if bnew then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neuer Gutschein ' + qGutschein.FieldByName('Nummer').asString + ' wurde angelegt';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Gutschein ' + qGutschein.FieldByName('Nummer').asString + ' wurde geändert';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end;
    bNew:= false;
  end;
end;

procedure Tfrm_finanzen.chkbx_FinAusFixkostenPropertiesChange(Sender: TObject);
begin
  if chkbx_FinAusFixkosten.Checked then
  begin
    cbx_FinAusJahr.Visible:= false;
    cbx_FinAusMonat.Visible:= false;
    lbl_FinAusMonat.Visible:= false;
    lbl_FinAusJahr.Visible:= false;
  end
  else begin
    cbx_FinAusJahr.Visible:= true;
    cbx_FinAusMonat.Visible:= true;
    lbl_FinAusMonat.Visible:= true;
    lbl_FinAusJahr.Visible:= true;
  end;
end;
procedure Tfrm_finanzen.cxButton1Click(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_ausgaben Set Betrag = Fixbetrag Where ID = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= qAusgaben.FieldByName('ID').AsInteger;
  dm_PCM.qry_work.ExecSQL;
  qAusgaben.Refresh;
end;
procedure Tfrm_finanzen.cxButton2Click(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_einnahmen Set Betrag = Fixbetrag Where ID = :ID';
  dm_PCM.qry_work.ParamByName('ID').AsInteger:= qEinnahmen.FieldByName('ID').AsInteger;
  dm_PCM.qry_work.ExecSQL;
  qEinnahmen.Refresh;
end;
procedure Tfrm_finanzen.dxBarLargeButton1Click(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_ausgaben Set Betrag = Fixbetrag';
  dm_PCM.qry_work.ExecSQL;
  qAusgaben.Refresh;
end;
procedure Tfrm_finanzen.dxBarLargeButton2Click(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_einnahmen Set Betrag = Fixbetrag';
  dm_PCM.qry_work.ExecSQL;
  qEinnahmen.Refresh;
end;
procedure Tfrm_finanzen.dxBarLargeButton3Click(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_einnahmen Set Betrag = 0';
  dm_PCM.qry_work.ExecSQL;
  qEinnahmen.Refresh;
end;
procedure Tfrm_finanzen.dxBarLargeButton4Click(Sender: TObject);
begin
  dm_PCM.qry_work.SQL.Text:= 'Update manager_finanzen_ausgaben Set Betrag = 0';
  dm_PCM.qry_work.ExecSQL;
  qAusgaben.Refresh;
end;
procedure Tfrm_finanzen.InitializeRights;
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
procedure Tfrm_finanzen.MenuItem1Click(Sender: TObject);
begin
  if sdlg_Ausgaben.Execute then
  begin
    ExportGridToExcel(sdlg_Ausgaben.FileName, grd_Finanzen_Ausgaben);
    MessageDlg(rs_PCMManager_GridExport1 + sdlg_Ausgaben.FileName +  rs_PCMManager_GridExport2, mtInformation, [mbOk], 0);
  end;
end;
procedure Tfrm_finanzen.NachEx1Click(Sender: TObject);
begin
  ShowMessage('Belege');
end;

procedure Tfrm_finanzen.NachExcelexportieren1Click(Sender: TObject);
begin
  if sdlg_Einnahmen.Execute then
  begin
    ExportGridToExcel(sdlg_Einnahmen.FileName, grd_Finanzen_Einnahmen);
    MessageDlg(rs_PCMManager_GridExport1 + sdlg_Einnahmen.FileName +  rs_PCMManager_GridExport2, mtInformation, [mbOk], 0);
  end;
end;
procedure Tfrm_finanzen.NachExcelexportieren2Click(Sender: TObject);
begin
  ShowMessage('Gutschein');
end;

procedure Tfrm_finanzen.SetButtons;
begin
  // AG_Finanzeneinnahmen
  if dm_PCM.iEinnahmen >= 2 then
  begin
    btn_FinEinSave.Enabled := qEinnahmen.State in [dsInsert, dsEdit];
    btn_FinEinCancel.Enabled := qEinnahmen.State in [dsInsert, dsEdit];
    btn_BelegeSave.Enabled := qBelege.State in [dsInsert, dsEdit];
    btn_BelegeCancel.Enabled := qBelege.State in [dsInsert, dsEdit];
    btn_GutscheinSave.Enabled := qGutschein.State in [dsInsert, dsEdit];
    btn_GutscheinCancel.Enabled := qGutschein.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iEinnahmen = 3 then
  begin
    btn_FinEinDelete.Enabled := (not qEinnahmen.Eof) and not (qEinnahmen.State in [dsInsert, dsEdit]);
    btn_BelegeDelete.Enabled := (not qBelege.Eof) and not (qBelege.State in [dsInsert, dsEdit]);
    btn_GutscheinDelete.Enabled := (not qGutschein.Eof) and not (qGutschein.State in [dsInsert, dsEdit]);
  end;
  if qEinnahmen.RecordCount = 0  then
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


  if qBelege.RecordCount = 0  then
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

  if qgutschein.RecordCount = 0  then
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
    btn_FinAusSave.Enabled := qAusgaben.State in [dsInsert, dsEdit];
    btn_FinAusCancel.Enabled := qAusgaben.State in [dsInsert, dsEdit];
  end;
  if dm_PCM.iAusgaben = 3 then
  begin
    btn_FinAusDelete.Enabled := (not qAusgaben.Eof) and not (qAusgaben.State in [dsInsert, dsEdit]);
  end;
  if qAusgaben.RecordCount = 0 then
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
procedure Tfrm_finanzen.OpenData;
begin
  qAusgaben.Open;
  qEinnahmen.Open;
  qEinnahmen.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  qEinnahmen.Filtered:= true;
  qAusgaben.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  qAusgaben.Filtered:= true;
  qGutschein.Open;
  qGutschein.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  qGutschein.Filtered:= true;
  qBelege.Open;
  qBelege.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
  qBelege.Filtered:= true;
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
procedure Tfrm_finanzen.SetButtonsEnableVisible(DataSet: TDataSet);
begin
  Setbuttons;
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
  lbl_restsumme.Caption:= Format('%.2f €',[dbl_Einnahmen - dbl_varKosten - dbl_fixKosten]);
end;
procedure Tfrm_finanzen.AG_pc_FinanzenChange(Sender: TObject);
var
  dbl_Einnahmen,dbl_varKosten,dbl_FixKosten: double;
  sMonat: string;
begin
  if AG_pc_Finanzen.Properties.ActivePage = A_ts_mu then
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
    lbl_restsumme.Caption:= Format('%.2f €',[dbl_Einnahmen - dbl_varKosten - dbl_fixKosten]);
    frm_PCManagerChooseDate.Free;
  end;
end;
procedure Tfrm_finanzen.btn_BelegeCancelClick(Sender: TObject);
begin
  bnew:= False;
  qBelege.Cancel;
end;

procedure Tfrm_finanzen.btn_BelegeDeleteClick(Sender: TObject);
begin
  bNew:= false;
  if qBelege.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
    dm_PCM.qry_work.ParamByName('Message').AsString:= 'Belege ' + qBelege.FieldByName('Nummer').asString + ' wurde gelöscht';
    dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.execsql;
    qBelege.Delete;
  end
end;
procedure Tfrm_finanzen.btn_BelegeNewClick(Sender: TObject);
var
  iJahr, iMonat,iTag : word;
begin
  if qBelege.State in [dsInsert, dsedit] then
    qBelege.Post;
  qBelege.Append;
  qBelege.Insert;
  DecodeDate(Now(),iJahr,iMonat,iTag);
  qBelege.FieldByName('Kategorie').AsInteger:=0;
  qBelege.FieldByName('Datum').AsDateTime:= Date();
  qBelege.FieldByName('Monat').AsInteger:= iMonat;
  qBelege.FieldByName('Jahr').AsInteger:= iJahr;
  qBelege.FieldByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
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
 if qBelege.State in [dsInsert, dsEdit] then
  begin
    edt_BelegeNummer.PostEditValue;
    edt_BelegeAussteller.PostEditValue;
    edt_BelegeBetrag.PostEditValue;
    qBelege.Post;
    if bnew then
    begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Neuer Beleg ' + qBelege.FieldByName('Nummer').asString + ' wurde angelegt';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end
    else begin
      dm_PCM.qry_work.SQL.Text:= sSQLInsertintoPushNotification;
      dm_PCM.qry_work.ParamByName('Message').AsString:= 'Beleg ' + qBelege.FieldByName('Nummer').asString + ' wurde geändert';
      dm_PCM.qry_work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
      dm_PCM.qry_work.execsql;
    end;
    bNew:= false;
  end;
end;

procedure Tfrm_finanzen.btn_FinanzenDruckenClick(Sender: TObject);
  function ReplaceHTML(AValue: String) : string;
  begin
    Result:= AValue;
    Result:= StringReplace(AValue,'&gt;','>',[rfreplaceAll]);
    Result:= StringReplace(Result,'&lt;','<',[rfreplaceAll]);
  end;
var
  DomImpl: IDOMImplementation;
  xmlDoc: IXMLDocument;
  xmlDocType: IXMLDocument;
  xmlnhtml,
  xmlnhtml1,xmlnHead, xmlnMeta,xmlnStyle,xmlnBody : IXMLNode;
  xmlnDivContainer,xmlnDivReport,xmlnDivDate, xmlnDivstyle  : IXMLNode;
  xmlnInput, xmlndivdiv,xmlntable: IXMLNode;
  trEinnahmenHeader, trAusgabenvarHeader : IXMLNode;
  xmlntableTH,xmlndivstatus,xmlntableheader,xmlntablebody, xmlntableFoot: IXMLNode;
  xmlJavascript1, xmlJavascript2:IXMLNode;
  fEinSum,fAusvar,fAusFix: Double;
  slFileXML,slFileBefore, slFileAfter: TStringList;
  iTemp: integer;
  sMonat: string;
begin
  try
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


    slFileXML:= TStringList.Create;

    slFileXML.Add('<!DOCTYPE html>');

    slFileXML.Add('<html>');
    slFileXML.Add('  <head>');
    slFileXML.Add('    <title>PCM - Finanzübersicht</title>');
    slFileXML.Add('    <meta http-equiv="content-type" content="text/html; charset=Windows-1252"/>');
    slFileXML.Add('    <style type="text/css">body {background: #086A87;}');
    slFileXML.Add('		.container-table {margin: auto;	margin-top: calc(8vh - 7px); margin-bottom: calc(8vh - 7px); width: 80vw; min-height: 8vh; display: block; overflow: auto; -moz-box-shadow: 0px 0px 10px #ccc; -webkit-box-shadow: 0px 0px 10px #ccc; border-bottom: solid 5px #93a8d8;}');
    slFileXML.Add('		.container-table {padding: 15px 15px 15px 15px;width: 80%; }');
    slFileXML.Add('		.container-table-background{background-color: white;}');
    slFileXML.Add('		.container-table * {font-family: "Lucida Grande", "Lucida Sans Unicode", Arial, Helvetica, Verdana, sans-serif;}');
    slFileXML.Add('		.container-table h2 {font-size: 20px; font-weight: 100;}');
    slFileXML.Add('		.Report {width: calc(50% - 15px); float: left; text-align: left;}');
    slFileXML.Add('		.Datumuhrzeit {width: calc(50% - 15px); float: right; text-align: right;}');
    slFileXML.Add('		.divider {height: 5px; width: 100%; background-color: #086A87}');
    slFileXML.Add('		#search {outline: none; margin-top: 0px; margin-bottom: 15px;  width: 100%; display: block; border: none; border-bottom: solid 2px #c9c9c9; transition: border 0.3s;}');
    slFileXML.Add('		#search:focus, #search.focus {border-bottom: solid 2px #969696;}');
    slFileXML.Add('		table {width: 100%;border-collapse:collapse; padding: 0px 15px 0px 15px;}');
    slFileXML.Add('		table thead th {padding: 15px 0px 0px 0px;}');
    slFileXML.Add('		table tbody th {border-top: 1px solid black; padding: 5px 0px 0px 0px}');
    slFileXML.Add('		table tfoot th {border-bottom: 5px double black;padding: 20px 0px 0px 0px;}');
    slFileXML.Add('		th {padding-bottom: 5px; text-align: Left}');
    slFileXML.Add('		th.big {padding-bottom: 5px; text-align: Left; width:500}');
    slFileXML.Add('		th.small {padding-bottom: 5px; text-align: right; width:200}');
    slFileXML.Add('		td {padding-top: 1px; padding-bottom: 1px; font-size: 15px;}');
    slFileXML.Add('		.status-fields {float: left; display: flex; flex-wrap: wrap; width: calc( 100% - 20px ); text-align: center; margin: 20px 10px 20px 10px;}');
    slFileXML.Add('		div.status-fields>div {width: calc( 20% - 20px ); display: flex; align-items: center; justify-content: center; flex-direction: column; margin: 5px 5px 5px 5px; padding: 10px 5px 10px 5px; float: left; }');
    slFileXML.Add('		div.status-fields>tr {display: none;} div.status-fields>tr>td {display: none;}');
    slFileXML.Add('		.mobile-hidden {display: none;}</style>');
    slFileXML.Add('  </head>');
    slFileXML.Add('  <body>');
    slFileXML.Add('      <div class="container-table container-table-background">');
    slFileXML.Add('      <div class="Report">');
    slFileXML.Add('        <h2>PCM - Finanzübersicht für ' + sMonat + ' ' + IntToStr(iJahr) + '</h2>');
    slFileXML.Add('      </div>');
    slFileXML.Add('      <div class="Datumuhrzeit">');
    slFileXML.Add('        <h2>' + DatetoStr(Date()) + ' - ' + Copy(TimeToStr(Now()),1,5) + ' Uhr</h2>');
    slFileXML.Add('      </div>');
    slFileXML.Add('      <div style="clear: both;">');
    slFileXML.Add('				<input id="search" placeholder="Suchen"/>');
    slFileXML.Add('				<div class="divider">');
    slFileXML.Add('					<div class="status-fields">');
    slFileXML.Add('						<table id="tblData">');
    ////////////////////////////////////////////////////////////////////////////
    // Einnahmen                                                              //
    ////////////////////////////////////////////////////////////////////////////
    slFileXML.Add('							<thead>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th colspan="3">Einnahmen:</th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</thead>');
    slFileXML.Add('              <tbody>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th class="big">Quelle:</th>');
    slFileXML.Add('									<th class="big">Beschreibung:</th>');
    slFileXML.Add('									<th class="small">Betrag:</th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</tbody>');
    dm_PCM.qry_work.SQL.Text:= 'SELECT * FROM manager_finanzen_einnahmen where id_benutzer = :id_benutzer order by quelle';
    dm_PCM.qry_work.ParamByName('id_benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.open;
    fEinSum:= 0;
    while not dm_PCM.qry_work.Eof do
    begin
      slFileXML.Add('							<tbody>');
      slFileXML.Add('								<tr>');
      slFileXML.Add('									<th class="big">' + dm_PCM.qry_work.FieldByName('Quelle').AsString + '</th>');
      slFileXML.Add('									<th class="big">' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString + '</th>');
      slFileXML.Add('									<th class="small">' + Format('%.2f €', [dm_PCM.qry_work.FieldByName('Betrag').AsFloat]) + '</th>');
      slFileXML.Add('								</tr> ');
      slFileXML.Add('							</tbody>');
      fEinSum:= fEinSum + dm_PCM.qry_work.FieldByName('Betrag').AsFloat;
      dm_PCM.qry_work.Next
    end;
    slFileXML.Add('              <tbody>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th class="big">Einnahmen gesamt:</th>');
    slFileXML.Add('									<th class="big"> </th>');
    slFileXML.Add('									<th class="small">' + Format('%.2f €', [fEinSum]) + '</th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</tbody>');
    ////////////////////////////////////////////////////////////////////////////
    // Ausgaben variabel                                                      //
    ////////////////////////////////////////////////////////////////////////////
    slFileXML.Add('							<thead>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th colspan="3">Ausgaben variabel:</th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</thead>');
    slFileXML.Add('              <tbody>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th class="big">Empfänger:</th>');
    slFileXML.Add('									<th class="big">Beschreibung:</th>');
    slFileXML.Add('									<th class="small">Betrag:</th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</tbody>');
    dm_PCM.qry_work.SQL.Text:= 'SELECT * FROM manager_finanzen_ausgaben where id_benutzer = :id_benutzer and Gueltig_monat = :Monat and Gueltig_jahr = :Jahr and fixkosten = false order by Name';
    dm_PCM.qry_work.ParamByName('id_benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.ParamByName('Monat').AsInteger:= iMonat;
    dm_PCM.qry_work.ParamByName('Jahr').AsInteger:= ijahr;
    dm_PCM.qry_work.open;
    fAusvar:= 0;
    while not dm_PCM.qry_work.Eof do
    begin
      slFileXML.Add('							<tbody>');
      slFileXML.Add('								<tr>');
      slFileXML.Add('									<th class="big">' + dm_PCM.qry_work.FieldByName('Name').AsString + '</th>');
      slFileXML.Add('									<th class="big">' + dm_PCM.qry_work.FieldByName('Bezeichnung').AsString + '</th>');
      slFileXML.Add('									<th class="small">' + Format('%.2f €', [dm_PCM.qry_work.FieldByName('Betrag').AsFloat]) + '</th>');
      slFileXML.Add('								</tr> ');
      slFileXML.Add('							</tbody>');
      fAusvar:= fAusvar + dm_PCM.qry_work.FieldByName('Betrag').AsFloat;
      dm_PCM.qry_work.Next
    end;
    slFileXML.Add('              <tbody>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th class="big">Ausgaben variabel gesamt:</th>');
    slFileXML.Add('									<th class="big"> </th>');
    slFileXML.Add('									<th class="small">' + Format('%.2f €', [fAusvar]) + '</th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</tbody>');
    ////////////////////////////////////////////////////////////////////////////
    // Ausgaben Fix                                                           //
    ////////////////////////////////////////////////////////////////////////////
    slFileXML.Add('							<thead>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th colspan="3">Ausgaben fix:</th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</thead>');
    slFileXML.Add('              <tbody>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th class="big">Empfänger:</th>');
    slFileXML.Add('									<th class="big">Beschreibung:</th>');
    slFileXML.Add('									<th class="small">Betrag:</th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</tbody>');
    dm_PCM.qry_work.SQL.Text:= 'SELECT * FROM manager_finanzen_ausgaben where id_benutzer = :id_benutzer and  fixkosten = ''true'' order by Name';
    dm_PCM.qry_work.ParamByName('id_benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_work.open;
    fAusfix:= 0;
    while not dm_PCM.qry_work.Eof do
    begin
      slFileXML.Add('							<tbody>');
      slFileXML.Add('								<tr>');
      slFileXML.Add('									<th class="big">' + dm_PCM.qry_work.FieldByName('Name').AsString + '</th>');
      slFileXML.Add('									<th class="big">' + dm_PCM.qry_work.FieldByName('Beschreibung').AsString + '</th>');
      slFileXML.Add('									<th class="small">' + Format('%.2f €', [dm_PCM.qry_work.FieldByName('Betrag').AsFloat]) + '</th>');
      slFileXML.Add('								</tr> ');
      slFileXML.Add('							</tbody>');
      fAusfix:= fAusfix + dm_PCM.qry_work.FieldByName('Betrag').AsFloat;
      dm_PCM.qry_work.Next
    end;
    slFileXML.Add('              <tbody>');
    slFileXML.Add('								<tr>');
    slFileXML.Add('									<th class="big">Ausgaben fix gesamt:</th>');
    slFileXML.Add('									<th class="big"> </th>');
    slFileXML.Add('									<th class="small">' + Format('%.2f €', [fAusfix]) + '</th>');
    slFileXML.Add('								</tr>');
    slFileXML.Add('							</tbody>');
    slFileXML.Add('							<tfoot>');
    slFileXML.Add('								<tr/>');
    slFileXML.Add('								<th class="big">verfügbare Restsumme:</th>');
    slFileXML.Add('								<th class="big"></th>');
    slFileXML.Add('								<th class="small">' + Format('%.2f €', [fEinSum - fAusfix - fAusvar ]) + '</th>');
    slFileXML.Add('							</tfoot>');
    slFileXML.Add('						</table>');
    slFileXML.Add('					</div>');
    slFileXML.Add('				</div>');
    slFileXML.Add('			</div>');
    slFileXML.Add('    </div>');
    slFileXML.Add('    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>');
    slFileXML.Add('    <script type="text/javascript">$(document).ready(function()');
    slFileXML.Add('{');
    slFileXML.Add('	$(''#search'').keyup(function()');
    slFileXML.Add('	{');
    slFileXML.Add('		searchTable($(this).val());');
    slFileXML.Add('	});');
    slFileXML.Add('});');
    slFileXML.Add('function searchTable(inputVal)');
    slFileXML.Add('{');
    slFileXML.Add('	// Tabellenvariable festlegen');
    slFileXML.Add('	var table = $(''#tblData'');');
    slFileXML.Add('	// Tabelleninhalt Tr finden');
    slFileXML.Add('	table.find(''tr'').each(function(index, row)');
    slFileXML.Add('	{');
    slFileXML.Add('		var allCells = $(row).find(''td'');');
    slFileXML.Add('		if(allCells.length > 0)');
    slFileXML.Add('		{');
    slFileXML.Add('			var found = false;');
    slFileXML.Add('			allCells.each(function(index, td)');
    slFileXML.Add('			{');
    slFileXML.Add('				var regExp = new RegExp(inputVal, ''i'');');
    slFileXML.Add('				if(regExp.test($(td).text()))');
    slFileXML.Add('				{');
    slFileXML.Add('					found = true;');
    slFileXML.Add('					return false;');
    slFileXML.Add('				}');
    slFileXML.Add('			});');
    slFileXML.Add('			if(found == true)$(row).show();else $(row).hide();');
    slFileXML.Add('		};');
    slFileXML.Add('		if(allCells.length < 1)');
    slFileXML.Add('		{');
    slFileXML.Add('			var allCells = $(row).find(''th'');');
    slFileXML.Add('			if(allCells.length > 0)');
    slFileXML.Add('			{');
    slFileXML.Add('				var found = false;');
    slFileXML.Add('				allCells.each(function(index, td)');
    slFileXML.Add('				{');
    slFileXML.Add('					var regExp = new RegExp(inputVal, ''i'');');
    slFileXML.Add('					if(regExp.test($(td).text()))');
    slFileXML.Add('					{');
    slFileXML.Add('						found = true;');
    slFileXML.Add('						return false;');
    slFileXML.Add('					}');
    slFileXML.Add('				});');
    slFileXML.Add('				if(found == true)$(row).show();else $(row).hide();');
    slFileXML.Add('			};');
    slFileXML.Add('		};');
    slFileXML.Add('	});');
    slFileXML.Add('}</script>');
    slFileXML.Add('  </body>');
    slFileXML.Add('</html>');
    slFileXML.SaveToFile(TPath.Combine(TPath.GetDirectoryName(Application.ExeName), 'Report') + '_Finanzübersicht.html');
    Application.CreateForm(Tfrm_Browser_FullScreen, frm_Browser_FullScreen);
    frm_Browser_FullScreen.Execute(True,'PCM - Manager: Finanzübersicht',TPath.Combine(TPath.GetDirectoryName(Application.ExeName), 'Report') + '_Finanzübersicht.html');
  finally
    slFileXML.Free;
  end;
end;

end.
