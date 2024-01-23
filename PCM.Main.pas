unit PCM.Main;

interface

uses
  SYSTEM.uitypes, Winapi.Windows, Winapi.Messages, System.SysUtils,
  System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ImgList, Vcl.Menus, NTTranslator, Strutils, DateUtils,shellapi, Vcl.Themes,
  FireDAC.Phys.ADSDef, FireDAC.Phys.MSSQLDef, FireDAC.Stan.Param,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQL, FireDAC.Phys.ADS,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, cxGeometry, cxVariants, dxCustomData,
  cxCustomCanvas, dxCoreGraphics, dxChartCore, dxChartData, dxChartLegend,
  dxChartSimpleDiagram, dxChartXYDiagram, dxChartXYSeriesLineView,
  dxChartXYSeriesAreaView, dxChartMarkers, dxChartXYSeriesBarView,
  dxChartDBData, dxCoreClasses, dxChartControl, VCLTee.TeeDBCrossTab,
  cxGridChartView, cxPivotGridChartConnection, cxCustomPivotGrid, cxDBPivotGrid,
  dxSkinWXI, dxBarExtItems, cxBarEditItem,
  cxSplitter, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxEdit, cxClasses, System.ImageList, cxContainer, dxBarBuiltInMenu,
  Vcl.ExtCtrls, cxPC, dxNavBarCollns, dxNavBarBase, dxNavBar, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxBar, cxLocalization, cxLabel, cxGroupBox, dxNavBarStyles,inifiles;

type
  TdxBarControlAccess = class(TdxBarControl);
  TdxBarAccess = class(TdxBar);
  TdxBarManagerAccess = class(TdxBarManager);

type
  TMethod = procedure of object;
  TModuleType = (mtForm, mtEvent);
  TModule = class(TCollectionItem)
  protected
    FFormClass: TFormClass;
    FInstance: Pointer;
    FEvent: TMethod;
    FType: TModuleType;
    FRight: Integer;
    FModuleName: String;
    FImageIndex: Integer;

    procedure SetFormClass(Value: TFormClass);
    procedure SetEvent(Value: TMethod);
  public
    property FormClass: TFormClass read FFormClass write SetFormClass;
    property Instance: Pointer read FInstance write FInstance;
    property Event: TMethod read FEvent write SetEvent;
    property Typ: TModuleType read FType;
    property Right: Integer read FRight write FRight;
    property ModuleName: String read FModuleName write FModuleName;
    property ImageIndex: Integer read FImageIndex write FImageIndex;
  end;

type
  TIC_Options = record
    StundenProArbeitstag: Double;
    Jira_Basic_URL: String;
    AdressSelf, AdressGes: integer;
    EVENTS,TODO:String;
  end;

type
  Tfrm_PCM_Main = class(TForm)
    img_Icons: TImageList;
    loc_Lang: TcxLocalizer;
    lafCtrl_Main: TcxLookAndFeelController;
    navbr_main: TdxNavBar;
    navbrgrp_Optionen: TdxNavBarGroup;
    navbrgrp_Kontake: TdxNavBarGroup;
    navbrgrp_Kalender: TdxNavBarGroup;
    navbrgrp_Passwort: TdxNavBarGroup;
    navbrgrp_Finanzen: TdxNavBarGroup;
    navbrgrp_Info: TdxNavBarGroup;
    navbrgrp_Programm: TdxNavBarGroup;
    iKontakte: TdxNavBarItem;
    iPasswoerter: TdxNavBarItem;
    iSysteminfo: TdxNavBarItem;
    iBeenden: TdxNavBarItem;
    iMonatsuebersicht: TdxNavBarItem;
    iAusgaben: TdxNavBarItem;
    iEinnahmen: TdxNavBarItem;
    iSerials: TdxNavBarItem;
    iBenutzerverwaltung: TdxNavBarItem;
    iKonfiguration: TdxNavBarItem;
    iInfo: TdxNavBarItem;
    navbrit_Verfuegung: TdxNavBarItem;
    iKalender: TdxNavBarItem;
    iStundenplan: TdxNavBarItem;
    iEMails: TdxNavBarItem;
    iAbmelden: TdxNavBarItem;
    navbrit_ChangePW: TdxNavBarItem;
    navbrStyleIt_main: TdxNavBarStyleItem;
    pcmain: TcxPageControl;
    navbrit_Belege: TdxNavBarItem;
    navbrit_Gutscheine: TdxNavBarItem;
    iAufgaben: TdxNavBarItem;
    td_Dashboard: TcxTabSheet;
    pnl_chartBottom: TcxGroupBox;
    chartctrl_Finance: TdxChartControl;
    chartctrl_FinanceChart: TdxChartXYDiagram;
    chartctrl_FinanceSeries1: TdxChartXYSeries;
    chartctrl_FinanceSeries2: TdxChartXYSeries;
    pc_Chart: TcxPageControl;
    ts_E_FinanceChart: TcxTabSheet;
    ts_B_Cal_TodoChart: TcxTabSheet;
    pnl_DashboardCalToDO: TcxGroupBox;
    pnl_CalToDOMiddle: TcxGroupBox;
    chartctrl_Cal: TdxChartControl;
    chartctrl_Calchart: TdxChartSimpleDiagram;
    chartctrl_CalSeries: TdxChartSimpleSeries;
    pnl_CalToDORight: TcxGroupBox;
    chartctrl_CalCategories: TdxChartControl;
    chartctrl_CalCategoriesChart: TdxChartSimpleDiagram;
    chartctrl_CalCategoriesSeries: TdxChartSimpleSeries;
    pnl_CalToDOtop: TcxGroupBox;
    chartctrl_ToDo: TdxChartControl;
    chartctrl_ToDoChart: TdxChartSimpleDiagram;
    chartctrl_ToDoSeries: TdxChartSimpleSeries;
    spl_ChartCalToDoMain: TcxSplitter;
    spl_ChartCalToDoLeft: TcxSplitter;
    grpbx_FinanzenUebersicht: TcxGroupBox;
    grpbx_FinanzenUebersicht_Left: TcxGroupBox;
    pnl_EinSoll: TcxGroupBox;
    lbl_EinSoll: TcxLabel;
    lbl_EinSollLabel: TcxLabel;
    pnl_FixSoll: TcxGroupBox;
    lbl_AusFixSoll: TcxLabel;
    lbl_AusFixSollLabel: TcxLabel;
    pnl_VarISoll: TcxGroupBox;
    lbl_AusVarSoll: TcxLabel;
    lbl_AusVarSollLabel: TcxLabel;
    pnl_GesSoll: TcxGroupBox;
    pnl_VerfSoll: TcxGroupBox;
    lbl_SollSumLabel: TcxLabel;
    lbl_SollSum: TcxLabel;
    pnl_VerfEinSoll: TcxGroupBox;
    lbl_EinSollSumLabel: TcxLabel;
    lbl_EinSollSum: TcxLabel;
    pnl_VerfvarSoll: TcxGroupBox;
    lbl_AusVarSollSumLabel: TcxLabel;
    lbl_AusVarSollSum: TcxLabel;
    pnl_TrennSoll: TPanel;
    pnl_VerffixSoll: TcxGroupBox;
    lbl_AusFixSollSumLabel: TcxLabel;
    lbl_AusFixSollSum: TcxLabel;
    grpbx_FinanzenUebersicht_Right: TcxGroupBox;
    pnl_EinIst: TcxGroupBox;
    lbl_EinIst: TcxLabel;
    lbl_EinIstLabel: TcxLabel;
    pnl_FixIst: TcxGroupBox;
    lbl_AusFixIst: TcxLabel;
    lbl_AusFixIstLabel: TcxLabel;
    pnl_VarISt: TcxGroupBox;
    lbl_AusvarIst: TcxLabel;
    lbl_AusVarIstLabel: TcxLabel;
    pnl_GesIst: TcxGroupBox;
    pnl_VerfIst: TcxGroupBox;
    lbl_IstSumLabel: TcxLabel;
    lbl_IstSum: TcxLabel;
    pnl_VerfEinIst: TcxGroupBox;
    lbl_EinIstSumLabel: TcxLabel;
    lbl_EinIstSum: TcxLabel;
    pnl_VerfvarIst: TcxGroupBox;
    lbl_AusvarIstSumLabel: TcxLabel;
    lbl_AusvarIstSum: TcxLabel;
    pnl_TrennIst: TPanel;
    pnl_VerffixIst: TcxGroupBox;
    lbl_AusFixIstSumLabel: TcxLabel;
    lbl_AusFixIstSum: TcxLabel;
    grpbx_FinanzenUebersicht_middle: TcxGroupBox;
    pnl_EinDiff: TcxGroupBox;
    lbl_EinDiff: TcxLabel;
    lbl_EinDiffLabel: TcxLabel;
    pnl_FixDiff: TcxGroupBox;
    lbl_AusFixDiff: TcxLabel;
    lbl_AusFixDiffLabel: TcxLabel;
    pnl_VarIDiff: TcxGroupBox;
    lbl_AusvarDiff: TcxLabel;
    lbl_AusVarDiffLabel: TcxLabel;
    pnl_GesDiff: TcxGroupBox;
    pnl_VerfDiff: TcxGroupBox;
    lbl_SollDiff: TcxLabel;
    lbl_DiffSum: TcxLabel;
    pnl_VerfEinDiff: TcxGroupBox;
    lbl_EinDiffSumLabel: TcxLabel;
    lbl_EinDiffSum: TcxLabel;
    pnl_VerfvarDiff: TcxGroupBox;
    lbl_AusvarDiffSumLabel: TcxLabel;
    lbl_AusvarDiffSum: TcxLabel;
    pnl_TrennDiff: TPanel;
    pnl_VerffixDiff: TcxGroupBox;
    lbl_AusFixDiffSumLabel: TcxLabel;
    lbl_AusFixDiffSum: TcxLabel;
    ts_A_ContactChart: TcxTabSheet;
    ts_C_PasswortChart: TcxTabSheet;
    pnl_ContactTop: TcxGroupBox;
    spl_ChartContactsMain: TcxSplitter;
    pnl_Contactmiddle: TcxGroupBox;
    chartctrl_Birthday: TdxChartControl;
    chartctrl_BirthdayChart: TdxChartSimpleDiagram;
    chartctrl_BirthdaySeries: TdxChartSimpleSeries;
    pnl_Contactright: TcxGroupBox;
    chartctrl_Adresses: TdxChartControl;
    chartctrl_AdressesChart: TdxChartSimpleDiagram;
    chartctrl_AdressesSeries: TdxChartSimpleSeries;
    spl_ChartContactsLeft: TcxSplitter;
    pnl_DashboardContacts: TcxGroupBox;
    chartctrl_Contact: TdxChartControl;
    chartctrl_ContactChart: TdxChartSimpleDiagram;
    chartctrl_ContactSeries: TdxChartSimpleSeries;
    pnl_DashboardPWDSerial: TcxGroupBox;
    pnl_PWDSerialmiddle: TcxGroupBox;
    chartctrl_PWDCategories: TdxChartControl;
    chartctrl_PWDCategoriesChart: TdxChartSimpleDiagram;
    chartctrl_PWDCategoriesSeries: TdxChartSimpleSeries;
    pnl_PWDSerialright: TcxGroupBox;
    spl_ChartPWDSerialLeft: TcxSplitter;
    chartctrl_SerialsCategories: TdxChartControl;
    chartctrl_SerialsCategoriesChart: TdxChartSimpleDiagram;
    chartctrl_SerialsCategoriesSeries: TdxChartSimpleSeries;
    pnl_PWDSerialTop: TcxGroupBox;
    chartctrl_PWDSerials: TdxChartControl;
    chartctrl_PWDSerialsChart: TdxChartSimpleDiagram;
    chartctrl_PWDSerialsSeries: TdxChartSimpleSeries;
    spl_ChartPWDSerialMain: TcxSplitter;
    pnl_Design: TcxGroupBox;
    trayic_Main: TTrayIcon;
    ppm_Main: TPopupMenu;
    ppmbtn_Benutzer: TMenuItem;
    ppmbtn_Konfiguration: TMenuItem;
    ppmbtn_Contacts: TMenuItem;
    ppmbtn_kalender: TMenuItem;
    ppmbtn_Aufgaben: TMenuItem;
    ppmbtn_Stundenplan: TMenuItem;
    ppmbtn_Email: TMenuItem;
    ppmbtn_Passwoerter: TMenuItem;
    ppmbtn_Trenn1: TMenuItem;
    ppmbtn_Trenn2: TMenuItem;
    ppmbtn_Trenn3: TMenuItem;
    ppmbtn_Serials: TMenuItem;
    ppmbtn_Trenn4: TMenuItem;
    ppmbtn_Monatsuebersicht: TMenuItem;
    ppmbtn_Einnahmen: TMenuItem;
    ppmbtn_Ausgaben: TMenuItem;
    ppmbtn_Trenn5: TMenuItem;
    ppmbtn_Systeminfo: TMenuItem;
    ppmbtn_Info: TMenuItem;
    ppmbtn_Beenden: TMenuItem;
    ppmbtn_Trenn6: TMenuItem;
    iHandbuch: TdxNavBarItem;
    ppmbtn_Handbuch: TMenuItem;
    iSprache: TdxNavBarItem;
    ppmbtn_Sprache: TMenuItem;
    ppmbtn_Abmelden: TMenuItem;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    barOpenModule: TdxBarStatic;
    btnModulleiste: TdxBarLargeButton;
    btnRefreshRights: TdxBarLargeButton;
    btnCloseModul: TdxBarLargeButton;
    barUser: TdxBarStatic;
    dxBarButton1: TdxBarButton;
    Menuezurueck: TdxBarButton;
    dxBarGroup1: TdxBarGroup;
    ppmbtn_Design: TMenuItem;
    iDesign: TdxNavBarItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ppmbtn_BenutzerClick(Sender: TObject);
    procedure ppmbtn_KonfigurationClick(Sender: TObject);
    procedure ppmbtn_ContactsClick(Sender: TObject);
    procedure ppmbtn_kalenderClick(Sender: TObject);
    procedure ppmbtn_AufgabenClick(Sender: TObject);
    procedure ppmbtn_StundenplanClick(Sender: TObject);
    procedure ppmbtn_EmailClick(Sender: TObject);
    procedure ppmbtn_PasswoerterClick(Sender: TObject);
    procedure ppmbtn_SerialsClick(Sender: TObject);
    procedure ppmbtn_MonatsuebersichtClick(Sender: TObject);
    procedure ppmbtn_EinnahmenClick(Sender: TObject);
    procedure ppmbtn_AusgabenClick(Sender: TObject);
    procedure ppmbtn_SysteminfoClick(Sender: TObject);
    procedure ppmbtn_InfoClick(Sender: TObject);
    procedure ppmbtn_AbmeldenClick(Sender: TObject);
    procedure ppmbtn_BeendenClick(Sender: TObject);
    procedure ppmbtn_HandbuchClick(Sender: TObject);
    procedure ppmbtn_SpracheClick(Sender: TObject);
    procedure NavBarClick(Sender: TObject);
    procedure pcmainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
    procedure btnModulleisteClick(Sender: TObject);
    procedure btnRefreshRightsClick(Sender: TObject);
    procedure btnCloseModulClick(Sender: TObject);
    procedure iSpracheClick(Sender: TObject);
    procedure btnCloseAllGroupsClick(Sender: TObject);
    procedure ppmbtn_DesignClick(Sender: TObject);
  private
    { Private-Deklarationen }
    Modules: TCollection;
    procedure RegisterForm(SideBarItemName: string; FormClass: TFormClass; Instance: Pointer; Right: Integer);
    procedure RegisterEvent(SideBarItemName: string; Event: TMethod);
    procedure BarResize;
    procedure RegisterNavBarItems;
    procedure CloseModules;
    procedure Handbuch;
    function CurrentModule: TForm;
    procedure LoadSQLs;
    procedure Abmelden;
    procedure InitializeRights;
  public
    { Public-Deklarationen }
    FOptions: TIC_Options;
    bAbmelden: Boolean;
  end;

var
  frm_PCM_Main: Tfrm_PCM_Main;

implementation

{$R *.dfm}

uses  PCM.Benutzerverwaltung,
      PCM.Data,
      PCM.Design,
      PCM.Functions,
      PCM.Functions.Appinfo,
      PCM.Functions.ChangePW,
      PCM.Functions.Languages,
      PCM.Functions.Login,
      PCM.Handbuch,
      PCM.Helper,
			PCM.Strings,
      PCM.SQL,
      PCMManager.Modul.B_Config,
      PCMManager.Modul.C_Contacts,
      PCMManager.Modul.D_Calendar,
      PCMManager.Modul.E_Mail,
      PCMManager.Modul.F_Passwort,
      PCMManager.Modul.G_Finanzen;

////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
procedure TModule.SetFormClass(Value: TFormClass);
begin
  if Value <> FFormClass then
  begin
    FFormClass := Value;
    FType := mtForm;
  end;
end;
procedure TModule.SetEvent(Value: TMethod);
begin
  if @Value <> @FEvent then
  begin
    FEvent := Value;
    FType := mtEvent;
  end;
end;
procedure Tfrm_PCM_Main.btnModulleisteClick(Sender: TObject);
begin
  navbr_main.Visible := not navbr_main.Visible;
  if navbr_main.Visible then
    btnModulleiste.Caption := rs_PCM_Modulliste_verstecken
  else
    btnModulleiste.Caption := rs_PCM_Modulliste_anzeigen;
end;
procedure Tfrm_PCM_Main.BarResize;
var
  rRect: TRect;
  iTemp, iUsedSpace: Integer;
  BarControl: TdxBarControlAccess;
begin
  if (dxBarManager1.Bars[0] <> nil) and (dxBarManager1.Bars[0].Control <> nil) then
  begin
    BarControl := TdxBarControlAccess(dxBarManager1.Bars[0].Control);

    iUsedSpace := 0;

    barOpenModule.Width := 0;

    for iTemp := 0 to BarControl.Bar.ItemLinks.Count - 1 do
    begin
      if BarControl.Bar.ItemLinks.Items[iTemp].Item = btnModulleiste then
      begin
        Inc(iUsedSpace, 0);
      end
      else
      begin
        if BarControl.Bar.ItemLinks.Items[iTemp].Item <> barOpenModule then
        begin
          Inc(iUsedSpace, BarControl.Bar.ItemLinks.Items[iTemp].ItemRect.Width);
        end;
      end;
    end;

    if BarControl.MarkExists then
    begin
      rRect := BarControl.MarkRect;
      Inc(iUsedSpace, rRect.Right - rRect.Left);
    end;
     dxBarManager1.BeginUpdate;
    Try
      barOpenModule.Width := (dxBarManager1.Bars[0].Control as TdxBarControl).Width -  iUsedSpace - btnModulleiste.Width  - 45;
    Finally
      dxBarManager1.EndUpdate();
    End;
  end;
end;
procedure Tfrm_PCM_Main.RegisterForm(SideBarItemName: string; FormClass: TFormClass; Instance: Pointer; Right: Integer);
var
  NewModule: TModule;
  Item: TdxNavBarItem;
begin
  Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(SideBarItemName).index];
  if Assigned(Item) then
  begin
    NewModule := TModule(Modules.Add);
    Item.Tag := NewModule.ID;
    NewModule.FormClass := FormClass;
    NewModule.Instance := Instance;
    NewModule.Right := Right;
    NewModule.ModuleName := SideBarItemName;
    NewModule.ImageIndex := Item.SmallImageIndex;
  end;
end;
procedure Tfrm_PCM_Main.RegisterNavBarItems;
begin
  Modules.Clear;
  RegisterForm('iBenutzerverwaltung', Tfrm_User, @frm_User, 1);
  RegisterForm('iKonfiguration', Tfrm_config, @frm_config, 1);
  RegisterForm('iKontakte',Tfrm_Contact, @frm_Contact, 1);
  RegisterForm('iKalender',Tfrm_Calendar, @frm_Calendar, 1);
  RegisterForm('iAufgaben',Tfrm_Calendar, @frm_Calendar, 1);
  RegisterForm('iStundenplan',Tfrm_Calendar, @frm_Calendar, 1);
  RegisterForm('iEMails',Tfrm_mail, @frm_mail, 1);
  RegisterForm('iPasswoerter',Tfrm_password, @frm_password, 1);
  RegisterForm('iSerials',Tfrm_password, @frm_password, 1);
  RegisterForm('iMonatsuebersicht',Tfrm_finanzen, @frm_finanzen, 1);
  RegisterForm('iEinnahmen',Tfrm_finanzen, @frm_finanzen, 1);
  RegisterForm('iAusgaben',Tfrm_finanzen, @frm_finanzen, 1);
  RegisterForm('iSysteminfo',Tfrm_PCM_System, @frm_PCM_System, 1);
  RegisterForm('iInfo',Tfrm_PCM_InfoApp, @frm_PCM_InfoApp, 1);
  RegisterForm('iHandbuch',Tfrm_Handbuch, @frm_Handbuch, 1);
  RegisterEvent('iAbmelden', Abmelden);
  RegisterEvent('iBeenden', Close);
end;
procedure Tfrm_PCM_Main.RegisterEvent(SideBarItemName: string; Event: TMethod);
var
  NewModule: TModule;
  Item: TdxNavBarItem;
begin
  Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(SideBarItemName).index];
  if Assigned(Item) then
  begin
    NewModule := TModule(Modules.Add);
    Item.Tag := NewModule.ID;
    NewModule.Event := Event;
    NewModule.ModuleName := SideBarItemName;
  end
end;
procedure Tfrm_PCM_Main.CloseModules;
var
  iPage: Integer;
begin
  for iPage := pcMain.PageCount - 1 downto 1 do
  begin
    try
      TForm(pcMain.Pages[iPage].Controls[0]).Close;
      TForm(pcMain.Pages[iPage].Controls[0]).Free;
    except
    end;
    pcMain.Pages[iPage].Free;
  end;
end;
procedure Tfrm_PCM_Main.pcmainPageChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  barOpenModule.Caption := NewPage.Caption;
end;
procedure Tfrm_PCM_Main.btnRefreshRightsClick(Sender: TObject);
var
  Item: TdxNavBarItem;
  Module: TModule;
begin
  btnRefreshRights.Enabled := False;
  try
    if pcMain.PageCount > 1 then
    begin
      Module := TModule(Modules.FindItemID(pcMain.ActivePage.Tag));
      if Module.Typ = mtForm then
      begin
        Item := navbr_main.Items.Items[navbr_main.Items.ItemByName(Module.ModuleName).index];
        TForm(pcMain.ActivePage.Controls[0]).Close;
        TForm(pcMain.ActivePage.Controls[0]).Free;
        pcMain.ActivePage.Free;
        NavBarClick(Item);
      end;
    end;
  finally
    btnRefreshRights.Enabled := True;
  end;
end;
procedure Tfrm_PCM_Main.btnCloseAllGroupsClick(Sender: TObject);
var
  iCount: Integer;
begin
  for iCount := 1 to navbr_main.Groups.Count -1 do
  begin
    navbr_main.Groups[iCount].Expanded := False;
  end;
end;
procedure Tfrm_PCM_Main.btnCloseModulClick(Sender: TObject);
begin
  if pcMain.PageCount > 1 then
  begin
    TForm(pcMain.ActivePage.Controls[0]).Close;
    TForm(pcMain.ActivePage.Controls[0]).Free;
    pcMain.ActivePage.Free;
  end;
end;
procedure Tfrm_PCM_Main.InitializeRights;
begin
  dm_PCM.qry_Work.SQL.Text:=  ASSQL_GetAllRights[dm_PCM.iDBType];
  dm_PCM.qry_Work.ParamByName('ID').AsInteger := dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  dm_PCM.iBenutzer:= dm_PCM.qry_Work.FieldByName('Benutzer').asInteger;
  dm_PCM.iKonfiguration:= dm_PCM.qry_Work.FieldByName('Konfiguration').asInteger;
  dm_PCM.iDesign:= dm_PCM.qry_Work.FieldByName('Design').asInteger;
  dm_PCM.iKontakte:= dm_PCM.qry_Work.FieldByName('Kontakte').asInteger;
  dm_PCM.iKalender:= dm_PCM.qry_Work.FieldByName('Kalender').asInteger;
  dm_PCM.iStundenplan:= dm_PCM.qry_Work.FieldByName('Stundenplan').asInteger;
  dm_PCM.iEmail:= dm_PCM.qry_Work.FieldByName('Email').asInteger;
  dm_PCM.iPassword:= dm_PCM.qry_Work.FieldByName('Password').asInteger;
  dm_PCM.iSerials:= dm_PCM.qry_Work.FieldByName('Serials').asInteger;
  dm_PCM.iMonatsuebersicht:= dm_PCM.qry_Work.FieldByName('Monatsuebersicht').asInteger;
  dm_PCM.iVerfuegung:= dm_PCM.qry_Work.FieldByName('Verfuegung').asInteger;
  dm_PCM.iEinnahmen:= dm_PCM.qry_Work.FieldByName('Einnahmen').asInteger;
  dm_PCM.iAusgaben:= dm_PCM.qry_Work.FieldByName('Ausgaben').asInteger;
  dm_PCM.qry_Work.Close;

  // Benutzerverwaltung / Kein Recht
  if (dm_PCM.iBenutzer = 0) and (dm_PCM.iKonfiguration = 0) and (dm_PCM.iDesign = 0) then
  begin
    navbrgrp_Optionen.Visible:= false;
    iBenutzerverwaltung.Visible:= false;
    iKonfiguration.Visible:= false;
  end;

  // Benutzerverwaltung / Lesen / Ändern / Vollzugriff
  case dm_PCM.iBenutzer of
  0: iBenutzerverwaltung.Visible:= false;
  1,2,3:
    begin
      navbrgrp_Optionen.Visible:= true;
      iBenutzerverwaltung.Visible:= true;
    end;
  end;

  // Optionen / Lesen / Ändern / Vollzugriff
  case dm_PCM.iKonfiguration of
  0: iKonfiguration.Visible:= false;
  1,2,3:
    begin
      navbrgrp_Optionen.Visible:= true;
      iKonfiguration.Visible:= true;
    end;
  end;

  // Kontakte / Kein Recht
  case dm_PCM.iKontakte of
  0: navbrgrp_Kontake.Visible:= false;
  // Kontakte / Lesen / Ändern / Vollzugriff
  1,2,3: navbrgrp_Kontake.Visible:= true;
  end;

  // Kalender / Stundenplan / Mail
  if (dm_PCM.iKalender = 0) and (dm_PCM.iStundenplan = 0) and (dm_PCM.iEmail = 0) then
  begin
    navbrgrp_Kalender.Visible:= false;
    iKalender.Visible:= false;
    iAufgaben.Visible:= false;
    iStundenplan.Visible:= false;
  end;
  // Kalender / Kein Recht
  case dm_PCM.iKalender of
  0: iKalender.Visible:= false;
  // Kalender / Lesen / Schreiben / Vollzugriff
  1,2,3:
    begin
      navbrgrp_Kalender.Visible:= true;
      iKalender.Visible:= true;
    end;
  end;

  // Stundenplan / Kein Recht
  case dm_PCM.iStundenplan of
  0: iStundenplan.Visible:= false;
  // Stundenplan / Lesen / Schreiben / Vollzugriff
  1,2,3:
    begin
      navbrgrp_Kalender.Visible:= true;
      iStundenplan.Visible:= true;
    end;
  end;

  // Mails / Kein Recht
  case dm_PCM.iEmail of
  0: iEMails.Visible:= false;
  // Mails / Lesen / Schreiben / Vollzugriff
  1,2,3:
    begin
      navbrgrp_Kalender.Visible:= true;
      iEMails.Visible:= true;
    end;
  end;

  // Passwörter / Serials
  if (dm_PCM.iPassword = 0) and (dm_PCM.iSerials = 0)  then
  begin
    navbrgrp_Passwort.Visible:= false;
    iPasswoerter.Visible:= false;
    iSerials.Visible:= false;
  end;

  // Passwort / kein Recht
  case dm_PCM.iPassword of
  0: iPasswoerter.Visible:= false;
  // Passwort / Lesen / Schreiben / Vollzugriff
  1,2,3:
    begin
      iPasswoerter.Visible:= true;
      navbrgrp_Passwort.Visible:= true;
    end;
  end;

  // Serial / Kein Recht
  case dm_PCM.iSerials of
  0: iSerials.Visible:= false;
  // Serials / Lesen / Schreiben / Vollzugriff
  1,2,3:
    begin
      iSerials.Visible:= true;
      navbrgrp_Passwort.Visible:= true;
    end;
  end;

  // Finanzen / Kein Recht
  case dm_PCM.iMonatsuebersicht of
  0: navbrgrp_Finanzen.Visible:= false;
  // Finanzen / Lesen / Schreiben / Vollzugriff
  1,2,3:  navbrgrp_Finanzen.Visible:= true;
  end;
end;
procedure Tfrm_PCM_Main.Abmelden;
begin
  bAbmelden := True;
  dm_PCM.bLogin := false;
  dm_PCM.bStyle:= false;
  Hide;
  Show;
end;
procedure Tfrm_PCM_Main.LoadSQLs;
var
  iZaehler: integer;
  dEinnahmeSoll, dEinnahmeIst: Double;
  dKostenVarSoll, dKostenVarIst: Double;
  dKostenFixSoll, dKostenFixIst: Double;
  iAnzahl: integer;
begin
  dm_PCM.qry_Work.SQL.Text:= 'Select Benutzer from Benutzer Where ID = :ID';
  dm_PCM.qry_Work.ParamByName('ID').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  barUser.Caption:= dm_PCM.qry_Work.FieldByName('Benutzer').AsString;
  dm_PCM.qry_Work.Close;

  dEinnahmeSoll:=0;
  dEinnahmeIst:=0;
  dKostenVarSoll:=0;
  dKostenVarIst:=0;
  dKostenFixSoll:=0;
  dKostenFixIst:=0;
  dm_PCM.qry_Work.SQL.Text:=  'UPDATE manager_kalender ' +
                              'SET START = TIMESTAMPADD(Year, Year(NOW()) - Year(START) , START), ' +
                              'Finish = TIMESTAMPADD(Year, Year(NOW()) - Year(Finish) , Finish), ' +
                              'Reminderdate  = TIMESTAMPADD(Year, Year(NOW()) - Year(Reminderdate) , Reminderdate) ' +
                              'WHERE Kalendername = ''Geburtstag''';
  dm_PCM.qry_Work.ExecSQL;
  dm_PCM.qry_Work.SQL.Text:=  'UPDATE manager_kalender ' +
                              'SET START = TIMESTAMPADD(Year, Year(NOW()) - Year(START)+1 , START), ' +
                              'Finish = TIMESTAMPADD(Year, Year(NOW()) - Year(Finish)+1 , Finish), ' +
                              'Reminderdate  = TIMESTAMPADD(Year, Year(NOW()) - Year(Reminderdate) , Reminderdate) ' +
                               'WHERE Date(start) < Date(Now()) and Kalendername = ''Geburtstag''';
  dm_PCM.qry_Work.ExecSQL;
  dm_PCM.qry_Work.SQL.Text:=  'UPDATE manager_kalender ' +
                              'SET Bearbeitetam = Now() ' +
                              'WHERE Date(start) < Date(Now()) and (Kalendername = ''Müll'' or Kalendername like ''Feiertage %'')' ;
  dm_PCM.qry_Work.ExecSQL;
  dm_PCM.qry_Work.sql.text:= 'Select Count(*) as Anzahl From manager_kalender_optionen where ID_Benutzer = :ID_Benutzer';
  dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
  dm_PCM.qry_Work.Open;
  iAnzahl:= dm_PCM.qry_Work.FieldByName('Anzahl').AsInteger;
  dm_PCM.qry_Work.Close;

  if iAnzahl = 0 then
  begin
    dm_PCM.qry_Work.sql.text:=  'Insert into manager_kalender_optionen (StundenProArbeitstag, Standard_Faelligkeit_Aufgaben_In_Tagen,ID_benutzer) Values ' +
                                '(8,3,:ID_Benutzer)';
    dm_PCM.qry_Work.ParamByName('ID_Benutzer').AsInteger:= dm_PCM.iIDBenutzerPCM;
    dm_PCM.qry_Work.Execsql;
  end;

  dm_PCM.qry_Work.sql.text:= 'Select StundenProArbeitstag, Jira_Basic_URL,Adresse_Eigene,Adresse_Firma,Account_Privat,Account_Geschaeftlich From manager_kalender_optionen';
  dm_PCM.qry_Work.Open;
  FOptions.StundenProArbeitstag := dm_PCM.qry_Work.FieldByName('StundenProArbeitstag').AsFloat;
  FOptions.Jira_Basic_URL := dm_PCM.qry_Work.FieldByName('Jira_Basic_URL').AsString;
  FOptions.AdressSelf := dm_PCM.qry_Work.FieldByName('Adresse_Eigene').asInteger;
  FOptions.AdressGes := dm_PCM.qry_Work.FieldByName('Adresse_Firma').asInteger;
  FOptions.EVENTS :=dm_PCM.qry_Work.FieldByName('Account_Privat').asString;
  FOptions.TODO :=dm_PCM.qry_Work.FieldByName('Account_Geschaeftlich').asString;
  dm_PCM.qry_Work.Close;


  if dm_PCM.qry_ChartGeburtstage.Active then
  begin
    dm_PCM.qry_ChartGeburtstage.Refresh;
  end
  else begin
    dm_PCM.qry_ChartGeburtstage.Open;
    dm_PCM.qry_ChartGeburtstage.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartGeburtstage.Filtered:= true;
  end;

  if dm_PCM.qry_ChartKontaktart.Active then
  begin
    dm_PCM.qry_ChartKontaktart.Refresh;
  end
  else begin
    dm_PCM.qry_ChartKontaktart.Open;
    dm_PCM.qry_ChartKontaktart.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartKontaktart.Filtered:= true;
  end;

  if dm_PCM.qry_ChartAdressen.Active then
  begin
    dm_PCM.qry_ChartAdressen.Refresh;
  end
  else begin
    dm_PCM.qry_ChartAdressen.Open;
    dm_PCM.qry_ChartAdressen.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartAdressen.Filtered:= true;
  end;

  if dm_PCM.qry_ChartKalender.Active then
  begin
    dm_PCM.qry_ChartKalender.Refresh;
  end
  else begin
    dm_PCM.qry_ChartKalender.Open;
    dm_PCM.qry_ChartKalender.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartKalender.Filtered:= true;
  end;

  if dm_PCM.qry_ChartKategorie.Active then
  begin
    dm_PCM.qry_ChartKategorie.Refresh;
  end
  else begin
    dm_PCM.qry_ChartKategorie.open;
  end;

  if dm_PCM.qry_ChartAufgabe.Active  then
  begin
    dm_PCM.qry_ChartAufgabe.Refresh;
  end
  else begin
    dm_PCM.qry_ChartAufgabe.open;
    dm_PCM.qry_ChartAufgabe.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartAufgabe.Filtered:= true;
  end;

  if dm_PCM.qry_ChartFinance.Active then
  begin
    dm_PCM.qry_ChartFinance.Refresh;
  end
  else begin
    dm_PCM.qry_ChartFinance.Open;
    dm_PCM.qry_ChartFinance.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartFinance.Filtered:= true;
  end;

  if dm_PCM.qry_ChartPWDSerials.Active then
  begin
    dm_PCM.qry_ChartPWDSerials.Refresh;
  end
  else begin
    dm_PCM.qry_ChartPWDSerials.Open;
    dm_PCM.qry_ChartPWDSerials.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartPWDSerials.Filtered:= true;
  end;

  if dm_PCM.qry_ChartPWD_Kategorie.Active  then
  begin
    dm_PCM.qry_ChartPWD_Kategorie.Refresh;
  end
  else begin
    dm_PCM.qry_ChartPWD_Kategorie.Open;
    dm_PCM.qry_ChartPWD_Kategorie.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartPWD_Kategorie.Filtered:= true;
  end;

  if dm_PCM.qry_ChartSerialKategorie.Active then
  begin
    dm_PCM.qry_ChartSerialKategorie.Refresh;
  end
  else begin
    dm_PCM.qry_ChartSerialKategorie.Open;
    dm_PCM.qry_ChartSerialKategorie.Filter:= 'ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM);
    dm_PCM.qry_ChartSerialKategorie.Filtered:= true;
  end;

  if dm_PCM.qry_ChartFinance.Active then
  begin
    dm_PCM.qry_ChartFinance.Refresh;
  end
  else begin
    dm_PCM.qry_ChartFinance.Open;
  end;

  dm_PCM.qry_ChartFinance.First;
  iZaehler:= 0;
  while not dm_PCM.qry_ChartFinance.eof do
  begin
    iZaehler:= iZaehler + 1;
    case iZaehler of
    1:
      begin
       dEinnahmeSoll:= dm_PCM.qry_ChartFinance.FieldByName('Soll').Asfloat;
       dEinnahmeIst:= dm_PCM.qry_ChartFinance.FieldByName('Ist').Asfloat;
      end;
    2:
      begin
        dKostenFixSoll:= dm_PCM.qry_ChartFinance.FieldByName('Soll').Asfloat;
        dKostenFixIst:= dm_PCM.qry_ChartFinance.FieldByName('Ist').Asfloat;
      end;
    3:
      begin
        dKostenVarSoll:= dm_PCM.qry_ChartFinance.FieldByName('Soll').Asfloat;
        dKostenVarIst:= dm_PCM.qry_ChartFinance.FieldByName('Ist').Asfloat;
      end;
    end;
    dm_PCM.qry_ChartFinance.Next;
  end;
  // SOLL
  lbl_EinSoll.caption:= Format('%.2f €',[dEinnahmeSoll]);
  lbl_EinIst.caption:= Format('%.2f €',[dEinnahmeIst]);
  lbl_EinDiff.caption:= Format('%.2f €',[dEinnahmeSoll-dEinnahmeIst]);
  // FIXKOSTEN
  lbl_AusFixSoll.caption:= Format('%.2f €',[dKostenFixSoll]);
  lbl_AusFixIst.caption:= Format('%.2f €',[dKostenFixIst]);
  lbl_AusFixDiff.caption:= Format('%.2f €',[dKostenFixSoll-dKostenFixIst]);
  // varKosten
  lbl_AusVarSoll.caption:= Format('%.2f €',[dKostenvarSoll]);
  lbl_AusvarIst.caption:= Format('%.2f €',[dKostenVarIst]);
  lbl_AusvarDiff.caption:= Format('%.2f €',[dKostenvarSoll-dKostenVarIst]);

  //Summen Soll
  lbl_EinSollSum.caption:= Format('%.2f €',[dEinnahmeSoll]);
  lbl_EinIstSum.caption:= Format('%.2f €',[dEinnahmeIst]);
  lbl_EinDiffSum.caption:= Format('%.2f €',[dEinnahmeSoll-dEinnahmeIst]);
  //Summen Fixkosten
  lbl_AusFixSollSum.caption:= Format('%.2f €',[dKostenFixSoll]);
  lbl_AusFixIstSum.caption:= Format('%.2f €',[dKostenFixIst]);
  lbl_AusFixDiffSum.caption:= Format('%.2f €',[dKostenFixSoll-dKostenFixIst]);
  // varKosten
  lbl_AusVarSollSum.caption:= Format('%.2f €',[dKostenvarSoll]);
  lbl_AusvarIstSum.caption:= Format('%.2f €',[dKostenVarIst]);
  lbl_AusvarDiffSum.caption:= Format('%.2f €',[dKostenvarSoll-dKostenVarIst]);
  //SUMME
  lbl_SollSum.caption:= Format('%.2f €',[dEinnahmeSoll - dKostenFixSoll - dKostenvarSoll]);
  lbl_IstSum.caption:= Format('%.2f €',[dEinnahmeist - dKostenFixIst - dKostenvarIst]);
  lbl_DiffSUm.caption:= Format('%.2f €',[(dEinnahmeSoll - dEinnahmeist) - (dKostenFixSoll - dKostenFixIst) -  (dKostenvarSoll - dKostenvarIst)]);
  dm_PCM.qry_Kalender_Aufgaben.Filter:= '';
  dm_PCM.qry_work.sql.text:= 'Select COUNT(*) AS AufgabenTermine , ('+
                             'Select COUNT(*) From manager_kalender Where gelesenam is null and bearbeitetam is NULL AND Typ IN (0) and ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM) +' ) AS Nachrichten ' +
                              'From manager_Kalender ' +
                              'Where ID_Benutzer = ' + IntToStr(dm_PCM.iIDBenutzerPCM) +' and  gelesenam is null and bearbeitetam is NULL AND Typ IN (1,2)';
  dm_PCM.qry_work.open;
  trayIC_Main.Hint:= PCM_Programmname + slinebreak + slinebreak +
  dm_PCM.qry_work.Fieldbyname('AufgabenTermine').asString + ' ungelesene Aufgaben und Termine' + slinebreak +
  dm_PCM.qry_work.Fieldbyname('Nachrichten').asString + ' ungelesene Nachrichten';
  dm_PCM.qry_work.close;
end;
procedure Tfrm_PCM_Main.Handbuch;
begin
  ShellExecute(0, 'Open', PChar(PCM_Logname + '.pdf'), nil, '', SW_SHOWNORMAL);
end;
function Tfrm_PCM_Main.CurrentModule: TForm;
begin
  if pcMain.ControlCount > 0 then
    Result := TForm(pcMain.ActivePage.Controls[0])
  else
    Result := nil;
end;
////////////////////////////////////////////////////////////////////////////////
// Navbarfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_PCM_Main.NavBarClick(Sender: TObject);
var
  Module: TModule;
  fTabForm: TForm;
  iPageIndex: Integer;

  function TabExist(sTabName: String): Integer;
  var
    iCount: Integer;
  begin
    Result := -1;
    for iCount := 0 to pcMain.PageCount -1 do
    begin
      if pcMain.Pages[iCount].Name = sTabName then
      begin
        Result := iCount;
        Break;
      end;
    end;
  end;

  function CreateNewTabSheet(sTabName: String): Integer;
  var
    tshNew: TcxTabSheet;
  begin
    tshNew := TcxTabSheet.Create(pcMain);
    tshNew.PageControl := pcMain;
    tshNew.Name := sTabName;
    pcMain.ActivePage := tshNew;
    Result := pcMain.ActivePageIndex;
  end;
var
  sModul,sModulCaption: String;
begin
  if navbr_main.Enabled then
  begin
    navbr_main.Enabled := False;
    TRY
      Module := TModule(Modules.FindItemID((Sender AS TdxNavBarItem).Tag));
      if Assigned(Module) then
      begin
        sModul:= Module.ModuleName;
        sModulCaption:= Module.ModuleName;
        case AnsiIndexStr(sModul, ['iBenutzerverwaltung','iKonfiguration','iDesign','iKontakte','iKalender','iAufgaben','iStundenplan','iEMails','iPasswoerter','iSerials','iMonatsuebersicht','iEinnahmen','iAusgaben','iSysteminfo','iInfo','iHandbuch']) of
        0:
          begin
            sModulCaption := 'i'  + rs_PCM_Benutzerverwaltung;
            dm_PCM.iModulTab:= 1;
          end;
        1:
          begin
            sModulCaption := 'i'  + rs_PCM_Konfiguration ;
            dm_PCM.iModulTab:= 1;
          end;
        2:
          begin
            sModulCaption := 'i'  + rs_PCM_Design;
            dm_PCM.iModulTab:= 1;
          end;
        3:
          begin
            sModulCaption := 'i'  + rs_PCMManager_Kontakt;
            dm_PCM.iModulTab:= 1;
          end;
        4:
          begin
            sModul:= 'Kalender_Aufgaben_Stundenplan';
            sModulCaption := 'i'  + rs_PCMManager_KalenderStundenplan;
            dm_PCM.iModulTab:= 1;
          end;
        5:
          begin
            sModul:= 'Kalender_Aufgaben_Stundenplan';
            sModulCaption := 'i'  + rs_PCMManager_KalenderStundenplan;
            dm_PCM.iModulTab:= 3;
          end;
        6:
          begin
            sModul:= 'Kalender_Aufgaben_Stundenplan';
            sModulCaption := 'i'  + rs_PCMManager_KalenderStundenplan;
            dm_PCM.iModulTab:= 2;
          end;
        7:
          begin
            sModul:= 'Email';
            sModulCaption := 'i'  + rs_PCMManager_EMails;
          end;
        8:
          begin
            sModul:= 'Passwort_Serials';
            sModulCaption := 'i'  + rs_PCMManager_Passwoerter_Serialkeys;
            dm_PCM.iModulTab:= 1;
          end;
        9:
          begin
            sModul:= 'Passwort_Serials';
            sModulCaption := 'i'  + rs_PCMManager_Passwoerter_Serialkeys;
            dm_PCM.iModulTab:= 2;
          end;
        10:
          begin
            sModul:= 'Finanzen';
            sModulCaption := 'i'  + rs_PCMManager_Finanzuebersicht;
            dm_PCM.iModulTab:= 1;
          end;
        11:
          begin
            sModul:= 'Finanzen';
            sModulCaption := 'i'  + rs_PCMManager_Finanzuebersicht;
            dm_PCM.iModulTab:= 2;
          end;
        12:
          begin
            sModul:= 'Finanzen';
            sModulCaption := 'i'  + rs_PCMManager_Finanzuebersicht;
            dm_PCM.iModulTab:= 3;
          end;
        13:
          begin
            sModulCaption := 'i'  + rs_PCM_Systeminformation;
            dm_PCM.iModulTab:= 3;
          end;
        14:
          begin
            sModulCaption := 'i'  + rs_PCM_Programminfo;
            dm_PCM.iModulTab:= 3;
          end;
        15:
          begin
            sModulCaption := 'i'  + rs_PCM_Handbuch;
            dm_PCM.iModulTab:= 3;
          end;
        end;
        iPageIndex := TabExist('tsh' + sModul);
        if iPageIndex > -1 then
        begin
          pcMain.ActivePageIndex := iPageIndex;
          fTabForm := CurrentModule;
          if fTabForm <> nil then
            if not fTabForm.Focused then
              if Assigned(fTabForm.OnActivate) then
              begin
                fTabForm.OnActivate(Sender);
                barOpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
              end;
          Exit;
        end;
        if Module.Typ = mtForm then
        begin
          Screen.Cursor := crHourglass;
          try
            TForm(Module.Instance^) := Module.FormClass.Create(Nil);
          finally
            Screen.Cursor := crDefault;
          end;
          fTabForm := TForm((Module.Instance)^);
          iPageIndex := CreateNewTabSheet('tsh' + sModul);
          fTabForm.Parent := pcMain.Pages[iPageIndex];
          pcMain.Pages[iPageIndex].Caption := Copy(sModulCaption, 2, Length(sModulCaption));
          pcMain.Pages[iPageIndex].Tag := (Sender AS TdxNavBarItem).Tag;
          pcMain.Pages[iPageIndex].ImageIndex := Module.ImageIndex;
          pcMain.Pages[iPageIndex].InsertComponent(fTabForm);
          fTabForm.BorderStyle := bsNone;
          fTabForm.ALign:= AlClient;
          fTabForm.Enabled := True;
          fTabForm.Show;
          barOpenModule.Caption := Copy(sModulCaption, 2, Length(sModulCaption));
        end
        else
          if Module.Typ = mtEvent then
          begin
            Module.Event;
          end;
      end
    FINALLY
      navbr_main.Enabled := True;
      Application.ProcessMessages;
    END;
  end;
end;
procedure Tfrm_PCM_Main.iSpracheClick(Sender: TObject);
var
  iniFile: TIniFile;
begin
  Application.CreateForm(Tfrm_Language,frm_Language);
  frm_Language.Position:= poScreenCenter;
  frm_Language.ClientHeight:= 214;
  frm_Language.ShowModal;
  TNtTranslator.SetNew(dm_PCM.slocale,[],'de');
  TNtTranslator.TranslateForms;
  iniFile := TIniFile.Create(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\PCM.ini');
  try
    iniFile.WriteString(PCM_Logname, 'Language', dm_PCm.sLocale);
  finally
    iniFile.Free;
  end;
  Caption:= PCM_Programmname;
  trayic_Main.popupmenu:= ppm_Main;
  LoadSQLs;
  btnRefreshRightsClick(Self);
end;
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_PCM_Main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseModules;
  WriteLog(PCM_Logname,rs_PCM_Beenden,0);
end;
procedure Tfrm_PCM_Main.FormCreate(Sender: TObject);
begin
  Modules := TCollection.Create(TModule);
end;
procedure Tfrm_PCM_Main.FormDestroy(Sender: TObject);
begin
  Modules.Free;
end;
procedure Tfrm_PCM_Main.FormHide(Sender: TObject);
begin
  CloseModules;
end;
procedure Tfrm_PCM_Main.FormKeyPress(Sender: TObject; var Key: Char);
var
  m: TForm;
begin
  m := CurrentModule;
  if m <> nil then
    if not m.Focused then
      if Assigned(m.OnKeyPress) then
        m.OnKeyPress(Sender, Key);
end;
procedure Tfrm_PCM_Main.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  m: TForm;
begin
  m := CurrentModule;
  if m <> nil then
    if not m.Focused then
      if Assigned(m.OnKeyUp) then
        m.OnKeyUp(Sender, Key, Shift);
end;
procedure Tfrm_PCM_Main.FormResize(Sender: TObject);
begin
  pnl_CalToDOTop.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_CalToDOmiddle.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_CalToDOright.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_CalToDOmiddle.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
  pnl_CalToDORight.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);

  pnl_ContactTop.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_Contactmiddle.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_Contactright.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_Contactmiddle.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
  pnl_ContactRight.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);

  pnl_PWDSerialTop.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_PWDSerialmiddle.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_PWDSerialright.Height:= Trunc(ts_B_Cal_TodoChart.Height/2);
  pnl_PWDSerialmiddle.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);
  pnl_PWDSerialright.Width:= Trunc(ts_B_Cal_TodoChart.Width/2);

  grpbx_FinanzenUebersicht_Left.width:= Trunc((grpbx_FinanzenUebersicht.width - 8) / 3);
  grpbx_FinanzenUebersicht_middle.width:= Trunc((grpbx_FinanzenUebersicht.width - 8) / 3);
  grpbx_FinanzenUebersicht_Right.width:= Trunc((grpbx_FinanzenUebersicht.width - 8) / 3);
  BarResize;
end;
procedure Tfrm_PCM_Main.FormShow(Sender: TObject);
begin
  {$ifdef WIn32}
  iSprache.Visible:= false;
  ppmbtn_Sprache.Visible:= false;
  {$endif}
  lafCtrl_Main.NativeStyle:= false;
  trayIC_Main.Hint:= PCM_Programmname;
  dm_PCM.iDBType:= 0;
  if not ReadServerAdress then
  begin
    Application.Terminate;
  end
  else begin
  	lafCtrl_Main.SkinName:= dm_PCM.sDesign;
    try
      loc_lang.LoadFromFile(GetEnvironmentVariable('LOCALAPPDATA') + '\PCM\cxLocalLang.ini');
      loc_lang.LanguageIndex := 1;
    except
      on e:Exception do
      begin
        MessageDlg(rs_PCM_Sprachdatei, mtWarning, [mbOk], 0);
      end
    end;
    if dm_PCM.bStyle then
    begin
      NavBarClick(iKonfiguration);
    end
    else begin
      dm_PCM.bNewLiceneCheck:= false;
      CheckLizenzNew;
      if dm_PCm.bNewLiceneCheck = false then
      begin
        CheckLizenzNew;
        if dm_PCm.bNewLiceneCheck = false then
          Application.Terminate;
      end;
      if not bAbmelden then
        dm_PCM.bLogin := Autologin
      else
        dm_PCM.bLogin := false;
      if not dm_PCM.bLogin then
      begin
        Application.CreateForm(Tfrm_PCM_Login, frm_PCM_Login);
        dm_PCM.bLogin := frm_pcm_login.Login_User;
        frm_PCM_Login.Free;
      end;
      if not dm_PCM.bLogin then
        Application.Terminate;
      bAbmelden:= False;
      InitializeRights;
      LoadSQLs;
      FormResize(Self);
      WriteLog(PCM_Logname,rs_PCM_Start,0);
      Caption:= PCM_Programmname;

      trayIC_Main.PopupMenu:= ppm_main;
      if dm_PCM.bDemo then
        Caption:=PCM_Programmname + rs_PCM_Demolizenz + DateTostr(dm_PCM.dtGueltig);
      BarResize;
      RegisterNavBarItems;
    end;
  end;
end;
////////////////////////////////////////////////////////////////////////////////
// Traymenü                                                                   //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_PCM_Main.ppmbtn_BenutzerClick(Sender: TObject);
begin
  navbarclick(iBenutzerverwaltung);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_KonfigurationClick(Sender: TObject);
begin
  NavBarClick(iKonfiguration);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_ContactsClick(Sender: TObject);
begin
  navbarclick(ikontakte);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_DesignClick(Sender: TObject);
begin
  NavBarClick(iDesign);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;

procedure Tfrm_PCM_Main.ppmbtn_kalenderClick(Sender: TObject);
begin
  navbarclick(iKalender);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_AufgabenClick(Sender: TObject);
begin
  navbarclick(iAufgaben);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_StundenplanClick(Sender: TObject);
begin
  navbarclick(iStundenplan);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_EmailClick(Sender: TObject);
begin
  navbarclick(iEMails);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_PasswoerterClick(Sender: TObject);
begin
  navbarclick(iPasswoerter);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_SerialsClick(Sender: TObject);
begin
  navbarclick(iSerials);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_MonatsuebersichtClick(Sender: TObject);
begin
  navbarclick(iMonatsuebersicht);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_EinnahmenClick(Sender: TObject);
begin
  navbarclick(iEinnahmen);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_AusgabenClick(Sender: TObject);
begin
  navbarclick(iAusgaben);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_SysteminfoClick(Sender: TObject);
begin
  navbarclick(iSysteminfo);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_InfoClick(Sender: TObject);
begin
  navbarclick(iInfo);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_HandbuchClick(Sender: TObject);
begin
  navbarclick(iHandbuch);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_SpracheClick(Sender: TObject);
begin
  navbarclick(iSprache);
  WindowState:= TWindowState.wsMaximized;
  SetForegroundWindow(frm_PCM_main.Handle);
end;
procedure Tfrm_PCM_Main.ppmbtn_AbmeldenClick(Sender: TObject);
begin
  Abmelden
end;
procedure Tfrm_PCM_Main.ppmbtn_BeendenClick(Sender: TObject);
begin
  Close;
end;

end.


