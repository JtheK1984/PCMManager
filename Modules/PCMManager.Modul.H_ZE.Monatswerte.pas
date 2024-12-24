unit PCMManager.Modul.H_ZE.Monatswerte;

interface

uses
  {$Region uses}
  cxButtons,
  cxClasses,
  cxContainer,
  cxControls,
  cxCustomData,
  cxData,
  cxDataStorage,
  cxDBData,
  cxDBEdit,
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
  cxImageList,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxMaskEdit,
  cxNavigator,
  cxPC,
  cxSpinEdit,
  cxStyles,
  cxTextEdit,
  cxTimeEdit,
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
  system.dateutils,
  System.ImageList,
  System.SysUtils,
  System.Variants,
  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.NumberBox,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion uses}
type
  {$Region Type}
  Tfrm_monatswerte = class(TForm)
    AuswertungsJahr: TcxSpinEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    brmgr_MW: TdxBarManager;
    btn_01: TdxBarLargeButton;
    btn_02: TdxBarLargeButton;
    btn_03: TdxBarLargeButton;
    btn_04: TdxBarLargeButton;
    btn_05: TdxBarLargeButton;
    btn_06: TdxBarLargeButton;
    btn_07: TdxBarLargeButton;
    btn_08: TdxBarLargeButton;
    btn_09: TdxBarLargeButton;
    btn_10: TdxBarLargeButton;
    btn_11: TdxBarLargeButton;
    btn_12: TdxBarLargeButton;
    cxGroupBox11: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel21: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    ds_Day: TDataSource;
    dxBarDockControl1: TdxBarDockControl;
    grd_Tag: TcxGrid;
    grd_TagDBTableView1: TcxGridDBTableView;
    grd_TagDBTableView1BA: TcxGridDBColumn;
    grd_TagDBTableView1Datum: TcxGridDBColumn;
    grd_TagDBTableView1Fehltag: TcxGridDBColumn;
    grd_TagDBTableView1Feiertag: TcxGridDBColumn;
    grd_TagDBTableView1Mehrarbeit: TcxGridDBColumn;
    grd_TagDBTableView1Pause: TcxGridDBColumn;
    grd_TagDBTableView1Sollstunden: TcxGridDBColumn;
    grd_TagDBTableView1Tag: TcxGridDBColumn;
    grd_TagDBTableView1Tagesbrutto: TcxGridDBColumn;
    grd_TagDBTableView1Tagesnetto: TcxGridDBColumn;
    grd_TagDBTableView2: TcxGridDBTableView;
    grd_TagLevel1: TcxGridLevel;
    grpbx_Jahr: TcxGroupBox;
    grpbx_JahrDetail: TcxGroupBox;
    grpbx_MonatInfo: TcxGroupBox;
    grpbx_MonatInfoDetail: TcxGroupBox;
    grpbx_MWDetail: TcxGroupBox;
    grpbx_MWMonat: TcxGroupBox;
    grpbx_MWtag: TcxGroupBox;
    grpbx_Personal: TcxGroupBox;
    grpbx_Stat: TcxGroupBox;
    grpbx_Statistik: TcxGroupBox;
    imglst_16x16: TcxImageList;
    lbl_bezKr: TcxLabel;
    lbl_BHOGes: TcxLabel;
    lbl_BHOGesDez: TcxLabel;
    lbl_Buero: TcxLabel;
    lbl_BueroDez: TcxLabel;
    lbl_D1: TcxLabel;
    lbl_D2: TcxLabel;
    lbl_D3: TcxLabel;
    lbl_D4: TcxLabel;
    lbl_D5: TcxLabel;
    lbl_D6: TcxLabel;
    lbl_D7: TcxLabel;
    lbl_FT: TcxLabel;
    lbl_FTM: TcxLabel;
    lbl_FTMDez: TcxLabel;
    lbl_genULGes: TcxLabel;
    lbl_geplULGes: TcxLabel;
    lbl_HO: TcxLabel;
    lbl_HODez: TcxLabel;
    lbl_HomeOffGes: TcxLabel;
    lbl_kr: TcxLabel;
    lbl_krDez: TcxLabel;
    lbl_krunb: TcxLabel;
    lbl_krunbdez: TcxLabel;
    lbl_MWBuero: TcxLabel;
    lbl_MWFT: TcxLabel;
    lbl_MWGLZ: TcxLabel;
    lbl_MWGLZAkt: TcxLabel;
    lbl_MWGLZVM: TcxLabel;
    lbl_MWHomeoffice: TcxLabel;
    lbl_MWIStBrutto: TcxLabel;
    lbl_MWIstNetto: TcxLabel;
    lbl_MWKrbez: TcxLabel;
    lbl_MWKrunbez: TcxLabel;
    lbl_MWPausen: TcxLabel;
    lbl_MWRestUL: TcxLabel;
    lbl_MWSoll: TcxLabel;
    lbl_MWSumWorkDays: TcxLabel;
    lbl_MWULgen: TcxLabel;
    lbl_MWULgepl: TcxLabel;
    lbl_MWULunbez: TcxLabel;
    lbl_nachname: TcxLabel;
    lbl_name: TcxLabel;
    lbl_OfficeGes: TcxLabel;
    lbl_RulVJ: TcxLabel;
    lbl_T1: TcxLabel;
    lbl_T2: TcxLabel;
    lbl_T3: TcxLabel;
    lbl_T4: TcxLabel;
    lbl_T5: TcxLabel;
    lbl_T6: TcxLabel;
    lbl_T7: TcxLabel;
    lbl_TG1: TcxLabel;
    lbl_TG1Dez: TcxLabel;
    lbl_TG2: TcxLabel;
    lbl_TG2Dez: TcxLabel;
    lbl_TG3: TcxLabel;
    lbl_TG3Dez: TcxLabel;
    lbl_ULunb: TcxLabel;
    lbl_ULunbDez: TcxLabel;
    lbl_unbKr: TcxLabel;
    lbl_unbUL: TcxLabel;
    lbl_VerfUL: TcxLabel;
    Panel13: TPanel;
    Panel16: TPanel;
    qry_Day: TFDQuery;
    sclbx_MW: TScrollBox;
    tb_MW: TdxBar;
    tvTageswerte: TcxGridDBTableView;
    tvTageswerteAuftragNr: TcxGridDBColumn;
    tvTageswerteBSumme: TcxGridDBColumn;
    tvTageswerteBuchungsArt: TcxGridDBColumn;
    tvTageswerteKostenstelle: TcxGridDBColumn;
    tvTageswerteMe1: TcxGridDBColumn;
    tvTageswerteMe2: TcxGridDBColumn;
    tvTageswerteTaetigkNr: TcxGridDBColumn;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    Monatsbericht1: TdxBarButton;
    Monatsbericht2: TdxBarButton;
    procedure AuswertungsJahrPropertiesChange(Sender: TObject);
    procedure SetMonatswerte(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Monatsbericht1Click(Sender: TObject);
  private
    { Private-Deklarationen }
    function GetMonthFromButton: integer;
    procedure GetData(Amonat,AJahr: integer);
    procedure SetMonth(AMonth: Integer);
  public
    { Public-Deklarationen }
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_monatswerte: Tfrm_monatswerte;
  {$EndRegion var}

implementation

{$R *.dfm}

uses
  {$Region Type}
  PCM.Calculate,
  PCM.Reports,
  PCM.Data,
  PCM.Functions.Synch.Wait,
  PCMManager.Modul.H_ZE;
  {$EndRegion Type}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_monatswerte.GetMonthFromButton: integer;
begin
  if btn_01.LargeImageIndex = 0 then
    Result:= 1;
  if btn_02.LargeImageIndex = 0 then
    Result:= 2;
  if btn_03.LargeImageIndex = 0 then
    Result:= 3;
  if btn_04.LargeImageIndex = 0 then
    Result:= 4;
  if btn_05.LargeImageIndex = 0 then
    Result:= 5;
  if btn_06.LargeImageIndex = 0 then
    Result:= 6;
  if btn_07.LargeImageIndex = 0 then
    Result:= 7;
  if btn_08.LargeImageIndex = 0 then
    Result:= 8;
  if btn_09.LargeImageIndex = 0 then
    Result:= 9;
  if btn_10.LargeImageIndex = 0 then
    Result:= 10;
  if btn_11.LargeImageIndex = 0 then
    Result:= 11;
  if btn_12.LargeImageIndex = 0 then
    Result:= 12;
end;
procedure Tfrm_monatswerte.Monatsbericht1Click(Sender: TObject);
begin
  Drucke_PCM_ZE_Monatsbericht(GetMonthFromButton,AuswertungsJahr.EditingValue);
end;
procedure Tfrm_monatswerte.GetData(Amonat,AJahr: integer);
var
  iJahr,iMonat,iTag: Word;
  iULVJ,iULANsp,iULgepl,iULgen: double;
  iVMonat,iVJahr,iGLZVMonat,iGLZ,iAktGLZ: integer;
      sHour,sMin: String;
begin
  iULgen:= 0;
  iULgepl:= 0;
  iVMonat:= AMonat - 1;
  iVJahr:= AJahr ;
  if iVMonat = 0 then
  begin
    iVMonat:= 12;
    iVJahr:= AJahr -1 ;
  end;

  DecodeDate(Date,iJahr,iMonat,iTag);
  // Urlaubsanspruch
  iULANsp:= GetULAnspruch;
  grpbx_Stat.Caption:= 'Statistik: Urlaubsanspruch für Jahr ' + IntToStr(AJahr) + ' ' + FormatFloat('0.0', iULANsp) + ' Tage';
  // Urlaub Vorjahr
  iULVJ:= GetULVorJahr(AJahr -1,12);
  lbl_RulVJ.Caption:= FormatFloat('0.0', iULVJ);
  // Urlaub geplan genommen
  if AJahr <  iJAhr then
  begin
    iULgepl:= 0;
    iULgen:=  GetFehltagSum(1, 1, 1,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31));
    lbl_genULGes.Caption:= FormatFloat('0.0', iULgen);
    lbl_geplULGes.Caption:= FormatFloat('0.0', iULgepl);;
  end;
  if AJahr =  iJAhr then
  begin
    iULgen:=  GetFehltagSum(1, 1, 1,EncodeDate(AJahr,1,1),EncodeDate(AJahr,iMonat,iTag));
    lbl_genULGes.Caption:= FormatFloat('0.0', iULgen);
    iULgepl:= GetFehltagSum(1, 1, 1,EncodeDate(AJahr,iMonat,iTag),EncodeDate(AJahr,12,31));
    lbl_geplULGes.Caption:= FormatFloat('0.0', iULgepl);
  end;
  if AJahr >  iJAhr then
  begin
    iULgepl:= GetFehltagSum(1, 1, 1,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31));
    iULgen:= 0;
    lbl_geplULGes.Caption:= FormatFloat('0.0', iULgepl);
    lbl_genULGes.Caption:= FormatFloat('0.0', iULgen);
  end;
  if iULVJ + iULANsp - iULgepl - iULgen < 0 then
    lbl_VerfUL.Caption:= FormatFloat('0.0',( iULVJ + iULANsp - iULgepl - iULgen) *-1) + '-'
  else
    lbl_VerfUL.Caption:= FormatFloat('0.0', iULVJ + iULANsp - iULgepl - iULgen);
  lbl_bezKr.Caption:= FormatFloat('0.0',GetFehltagSum(1, 2, 1,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
  lbl_unbKr.Caption:= FormatFloat('0.0',GetFehltagSum(1, 2, 2,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
  lbl_unbUL.Caption:= FormatFloat('0.0',  GetFehltagSum(1, 1, 0,EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
  lbl_OfficeGes.Caption:= IntToStr(GetBuchungsart(0, EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
  lbl_HomeOffGes.Caption:= IntToStr(GetBuchungsart(1, EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));
  lbl_FT.Caption:= FormatFloat('0.0', GetFeiertage(EncodeDate(AJahr,1,1),EncodeDate(AJahr,12,31)));


  dm_PCM.qry_Work.SQL.Text:=  'SELECT Mehrarbeit,cast(SEC_TO_TIME(Mehrarbeit * 60) AS char) as MehrarbeitT, Mehrarbeit / 60 as MehrarbeitD FROM manager_Monatswerte WHERE Monat = :Monat AND Jahr = :Jahr';
  dm_PCM.qry_Work.ParamByName('Monat').AsInteger:= iVMonat;
  dm_PCM.qry_Work.ParamByName('Jahr').AsInteger:= iVJahr;
  dm_PCM.qry_Work.open;
  iGLZVMonat:= dm_PCM.qry_Work.FieldByName('Mehrarbeit').AsInteger;
  lbl_D6.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat);
  if iGLZVMonat < 0 then
  begin
    lbl_T6.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Mehrarbeit').asInteger * -1) + '-';
    lbl_D6.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat * -1) + '-';
  end
  else begin
    lbl_T6.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Mehrarbeit').asInteger);
    lbl_D6.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat);
  end;
  dm_PCM.qry_Work.Close;

  dm_PCM.qry_Work.SQL.Text:=  'SELECT ' +
                              'IStzeit + Pausen AS Brutto,cast(SEC_TO_TIME((IStzeit + Pausen) * 60) AS char) AS BruttoT, (IStzeit + Pausen) /60 AS BruttoD, ' +
                              'Pausen,cast(SEC_TO_TIME(Pausen * 60) AS char) as PausenT, Pausen / 60 as PausenD, ' +
                              'IStzeit,cast(SEC_TO_TIME(IStzeit * 60) AS char) as IStzeitT, IStzeit / 60 as IStzeitD, ' +
                              'Sollzeit,cast(SEC_TO_TIME(Sollzeit * 60) AS char) as SollzeitT, Sollzeit / 60 as SollzeitD, ' +
                              'Mehrarbeit,cast(SEC_TO_TIME(Mehrarbeit * 60) AS char) as MehrarbeitT, Mehrarbeit / 60 as MehrarbeitD,' +
                              'aktuelleMehrarbeit,cast(SEC_TO_TIME(aktuelleMehrarbeit * 60) AS char) as MehrarbeitT, aktuelleMehrarbeit / 60 as MehrarbeitD,' +
                              'Resturlaub ' +
                              'FROM manager_Monatswerte WHERE Monat = :Monat AND Jahr = :Jahr';
  dm_PCM.qry_Work.ParamByName('Monat').AsInteger:= AMonat;
  dm_PCM.qry_Work.ParamByName('Jahr').AsInteger:= AJahr;
  dm_PCM.qry_Work.open;


  lbl_T1.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Brutto').asInteger);
  lbl_D1.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('BruttoD').AsFloat);
  lbl_T2.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Pausen').asInteger);
  lbl_D2.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('PausenD').AsFloat);
  lbl_T3.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('IStzeit').asInteger);
  lbl_D3.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('IStzeitD').AsFloat);
  lbl_T4.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Sollzeit').asInteger);
  lbl_D4.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('SollzeitD').AsFloat);
  iGLZ:= dm_PCM.qry_Work.FieldByName('Mehrarbeit').asInteger;
  if dm_PCM.qry_Work.FieldByName('Resturlaub').AsFloat < 0 then
  begin
     lbl_TG3.Caption:=  FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('Resturlaub').AsFloat * -1) + '-';;
     lbl_TG3Dez.Caption:=GetTimeValue(dm_PCM.qry_Work.FieldByName('Resturlaub').asInteger * -1  * 480) + '-';
  end
  else begin
    lbl_TG3.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('Resturlaub').AsFloat);
    lbl_TG3Dez.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Resturlaub').asInteger * 480);
  end;
  if iGLZ < 0 then
  begin
    lbl_T5.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Mehrarbeit').asInteger * -1) + '-';
    lbl_D5.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat * -1) + '-';
  end
  else begin
    lbl_T5.Caption:= GetTimeValue(dm_PCM.qry_Work.FieldByName('Mehrarbeit').asInteger);
    lbl_D5.Caption:= FormatFloat('0.00',dm_PCM.qry_Work.FieldByName('MehrarbeitD').AsFloat);
  end;

  dm_PCM.qry_Work.open;
  var ift:= GetFeiertage(StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
  lbl_FTM.caption:= FormatFloat('0.00',ift);
  lbl_FTMDEz.caption:= GetTimeValue(Round(ift * 480 ));
  var iunbUL:= GetFehltagSum(1, 1, 0, StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
  lbl_ULunb.caption:= FormatFloat('0.00',iunbUL);
  lbl_ULunbDez.caption:= GetTimeValue(Round(iunbUL * 480 ));
  var ikr:=  GetFehltagSum(1, 2, 1, StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
  lbl_kr.caption:= FormatFloat('0.00',ikr);
  lbl_krDez.caption:= GetTimeValue(Round(ikr * 480 ));
  var ikrunb:=  GetFehltagSum(1, 2, 0, StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
  lbl_krunb.caption:= FormatFloat('0.00',ikrunb);
  lbl_krunbDez.caption:= GetTimeValue(Round(ikrunb * 480 ));
  var iBuero:=  GetBuchungsart(0, StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
  lbl_Buero.caption:= FormatFloat('0.00',iBuero);
  lbl_BueroDez.caption:= GetTimeValue(Round(iBuero * 480 ));
  var iHO:=  GetBuchungsart(1, StartOfAMonth(AJahr,AMonat),EndOfAMonth(AJahr,AMonat));
  lbl_HO.caption:= FormatFloat('0.00',iHO);
  lbl_HODez.caption:= GetTimeValue(Round(iHO * 480 ));
  lbl_BHOGes.Caption:= FormatFloat('0.00',iHO + iBuero);
  lbl_BHOGesDez.Caption:= GetTimeValue(Round((iHO + iBuero) * 480));
  iAktGLZ:= dm_PCM.qry_Work.FieldByName('aktuelleMehrarbeit').asInteger;
  if iAktGLZ < 0 then
  begin
    iAktGLZ:= iAktGLZ * -1;
    var iHour:= iAktGLZ div 60;
    var iMin:= iAktGLZ mod 60;
    if iHour < 10 then
      sHour:= '0' + IntToStr(iHour)
    else
      sHour:= IntToStr(iHour);
    if iMin < 10 then
      sMin:= '0' + IntToStr(iMin)
    else
      sMin:= IntToStr(iMin);
    lbl_T7.Caption:= sHour + ':' + sMin + '-';
    lbl_D7.Caption:= FormatFloat('0.00',iAktGLZ / 60) + '-';
  end
  else begin
    var iHour:= iAktGLZ div 60;
    var iMin:= iAktGLZ mod 60;
    if iHour < 10 then
      sHour:= '0' + IntToStr(iHour)
    else
      sHour:= IntToStr(iHour);
    if iMin < 10 then
      sMin:= '0' + IntToStr(iMin)
    else
      sMin:= IntToStr(iMin);
    lbl_T7.Caption:= sHour + ':' + sMin;
    lbl_D7.Caption:= FormatFloat('0.00',iAktGLZ / 60);
  end;

  if AJahr * 100 + Amonat <  iJahr * 100 + iMonat then
  begin
    lbl_TG1.Caption:= FormatFloat('0.0', GetFehltagSum(1, 1, 1, EncodeDate(AJahr,AMonat,1),EndOfAMonth(AJahr,AMonat)));
    lbl_TG1Dez.Caption:= GetTimeValue(Round(GetFehltagSum(1, 1, 1, EncodeDate(AJahr,AMonat,1),EndOfAMonth(AJahr,AMonat)) * 480));
    lbl_TG2.Caption:= '0,0';
    lbl_TG2Dez.Caption:= '00:00';
  end;


  if AJahr * 100 + Amonat =  iJahr * 100 + iMonat then
  begin
    lbl_TG1.Caption:= FormatFloat('0.0', GetFehltagSum(1, 1, 1, EncodeDate(AJahr,AMonat,1),EncodeDate(AJahr,iMonat,iTag)));
    lbl_TG1Dez.Caption:= GetTimeValue(Round(GetFehltagSum(1, 1, 1, EncodeDate(AJahr,AMonat,1),EncodeDate(AJahr,iMonat,iTag)) * 480));

    lbl_TG2.Caption:= FormatFloat('0.0', GetFehltagSum(1, 1, 1, EncodeDate(AJahr,AMonat,iTag),EndOfAMonth(AJahr,AMonat)));
    lbl_TG2Dez.Caption:= GetTimeValue(Round(GetFehltagSum(1, 1, 1, EncodeDate(AJahr,AMonat,itag),EndOfAMonth(AJahr,AMonat)) * 480));
  end;




  if AJahr * 100 + Amonat >  iJahr * 100 + iMonat then
  begin
    dm_PCM.qry_Work.SQL.Text:=  'SELECT Sum(Zeb.SollstundenI / zeft.faktor) / 480 as Anzahl ' +
                                'FROM manager_buchungen zeb ' +
                                'LEFT OUTER JOIN manager_kontakte zeu ON ID_Zeiterfasser = :ID ' +
                                'LEFT OUTER JOIN manager_Fehltag zeft ON zeft.Kuerzel = zeb.Fehltag ' +
                                'WHERE zeb.SollstundenI > 0 and Feiertag <> 1 and zeb.Datum > :Von and zeb.Datum <= :Bis AND zeft.Typ = 1 AND zeft.Bezahlt = 1';
    dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_Work.ParamByName('Von').asDate:= EncodeDate(AJahr,AMonat,1);
    dm_PCM.qry_Work.ParamByName('Bis').asDate:= EndOfAMonth(AJahr,AMonat);
    dm_PCM.qry_Work.open;
    iULgepl:= dm_PCM.qry_Work.FieldByName('Anzahl').AsFloat;
    lbl_TG1.Caption:= '0.0';
    lbl_TG1Dez.Caption:= '00:00';
    lbl_TG2.Caption:= FormatFloat('0.0', iULgepl);
    dm_PCM.qry_Work.Close;
  end;









  qry_Day.SQL.Text:=  'Select Datum, Tag, Sollstunden, ' +
                      'SEC_TO_TIME((ArbeitszeitI + PausenI)*60) as Tagesbrutto,' +
                      'SEC_TO_TIME(ArbeitszeitI*60) as Tagesnetto,' +
                      'Mehrarbeit AS Mehrarbeit,' +
                      'SEC_TO_TIME(PausenI*60) as Pause, Fehltag, Feiertag, ' +
                      'if(Buchungsart = -1,'''', if(Buchungsart = 0 , ''Büro'',''Homeoffice'')) as BA ' +
                      'from manager_buchungen ' +
                      'WHERE MONTH(Datum) = :Monat AND YEAR(Datum) = :Jahr ' +
                      'ORDER by datum';
  qry_Day.ParamByName('Monat').asInteger := AMonat;
  qry_Day.ParamByName('Jahr').asInteger := AJahr;
  qry_Day.Open;

//  dm_PCM.qry_Work.SQL.Text:=


end;
procedure Tfrm_monatswerte.SetMonth(AMonth: Integer);
begin
  btn_01.LargeImageIndex:= -1 + AMonth;
  btn_02.LargeImageIndex:= -2 + AMonth;
  btn_03.LargeImageIndex:= -3 + AMonth;
  btn_04.LargeImageIndex:= -4 + AMonth;
  btn_05.LargeImageIndex:= -5 + AMonth;
  btn_06.LargeImageIndex:= -6 + AMonth;
  btn_07.LargeImageIndex:= -7 + AMonth;
  btn_08.LargeImageIndex:= -8 + AMonth;
  btn_09.LargeImageIndex:= -9 + AMonth;
  btn_10.LargeImageIndex:= -10 + AMonth;
  btn_11.LargeImageIndex:= -11 + AMonth;
  btn_12.LargeImageIndex:= -12 + AMonth;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_monatswerte.AuswertungsJahrPropertiesChange(Sender: TObject);
begin
  SetMonth(1);
  grpbx_MonatInfo.Caption:= 'Auswertung von ' + DateToStr(StartOfAMonth(AuswertungsJahr.value,1))
                          + ' bis ' + DateToStr(EndOfAMonth(AuswertungsJahr.value,1));
  GetData(1,AuswertungsJahr.value);
end;
procedure Tfrm_monatswerte.SetMonatswerte(Sender: TObject);
var
  iMonat: integer;
begin
  iMonat := (Sender as TComponent).Tag;
  SetMonth(iMonat);
  grpbx_MonatInfo.Caption:= 'Auswertung von ' + DateToStr(StartOfAMonth(AuswertungsJahr.value,iMonat))
                      + ' bis ' + DateToStr(EndOfAMonth(AuswertungsJahr.value,iMonat));
  GetData(iMonat,AuswertungsJahr.value);
end;
procedure Tfrm_monatswerte.cxButton1Click(Sender: TObject);
begin
  ShowWaitForm(TForm(frm_monatswerte), PWideChar('Berechne Monat'),1 ,417, 65);
  BerechneTage(0,GetMonthFromButton,StrToint(AuswertungsJahr.EditingValue));
  CloseWaitForm;
end;
{$EndRegion Buttons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}


procedure Tfrm_monatswerte.FormShow(Sender: TObject);
begin
  AuswertungsJahr.value:= StrToint(frm_Ze.cbx_FilterYear.EditValue);
  SetMonth(frm_Ze.cbx_FilterMonth.itemindex+1);
  grpbx_MonatInfo.Caption:= 'Auswertung von ' + DateToStr(StartOfAMonth(StrToint(frm_Ze.cbx_FilterYear.EditValue),frm_Ze.cbx_FilterMonth.itemindex+1))
                      + ' bis ' + DateToStr(EndOfAMonth(StrToint(frm_Ze.cbx_FilterYear.EditValue),frm_Ze.cbx_FilterMonth.itemindex+1));
  dm_PCM.qry_Work.SQL.Text:= 'Select vorName, Nachname from manager_kontakte where ID_Zeiterfasser = :ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').asInteger := dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  lbl_name.Caption:= dm_pcm.qry_Work.FieldByName('vorName').AsString;
  lbl_nachname.Caption:=dm_pcm.qry_Work.FieldByName('Nachname').AsString;
  dm_PCM.qry_Work.Close;
  GetData(frm_Ze.cbx_FilterMonth.itemindex+1,AuswertungsJahr.value);
end;
{$EndRegion FormFunktionen}
end.
