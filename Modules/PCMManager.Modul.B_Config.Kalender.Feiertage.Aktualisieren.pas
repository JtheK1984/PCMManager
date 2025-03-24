unit PCMManager.Modul.B_Config.Kalender.Feiertage.Aktualisieren;

interface

uses
  {$Region Uses}
  Buttons,
  Classes,
  Controls,
  cxButtons,
  cxCalendar,
  cxClasses,
  cxContainer,
  cxControls,
  cxDateUtils,
  cxDropDownEdit,
  cxEdit,
  cxGraphics,
  cxGroupBox,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxMaskEdit,
  cxTextEdit,
  Dialogs,
  dxCore,
  dxLayoutContainer,
  dxLayoutControl,
  dxLayoutControlAdapters,
  dxLayoutcxEditAdapters,
  dxUIAClasses,
  Forms,
  Graphics,
  Menus,
  Messages,
  StdCtrls,
  System.UITypes,
  SysUtils,
  Variants,
  Vcl.ComCtrls,
  Windows;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_FeiertageAktualisieren = class(TForm)
    btn_Abort: TcxButton;
    btn_OK: TcxButton;
    dEdt_Bis: TcxDateEdit;
    dEdt_Von: TcxDateEdit;
    lactrl_FeiertageRefresh: TdxLayoutControl;
    lactrl_FeiertageRefreshGroup: TdxLayoutGroup;
    lactrl_FeiertageRefreshGroup_Root: TdxLayoutGroup;
    lactrl_FeiertageRefreshGroupButtons: TdxLayoutGroup;
    lactrl_FeiertageRefreshGroupZeitraum: TdxLayoutGroup;
    lactrl_FeiertageRefreshHinweis: TdxLayoutGroup;
    laitem_FeiertageRefreshGroupBis: TdxLayoutItem;
    laitem_FeiertageRefreshGroupCancel: TdxLayoutItem;
    laitem_FeiertageRefreshGroupHinweis: TdxLayoutLabeledItem;
    laitem_FeiertageRefreshGroupOk: TdxLayoutItem;
    laitem_FeiertageRefreshGroupVon: TdxLayoutItem;
    procedure btn_AbortClick(Sender: TObject);
    procedure btn_OKClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function Execute(out von, bis: TDateTime): Boolean;
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_FeiertageAktualisieren: Tfrm_FeiertageAktualisieren;
  {$EndRegion var}
implementation

{$R *.dfm}

uses
  {$Region uses}
  DateUtils,
  PCM.Data,
  PCM.Strings;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_FeiertageAktualisieren.Execute(out von, bis: TDateTime): Boolean;
begin
  dEdt_Von.Date := StartOfTheYear(Date);
  dEdt_Bis.Date := EndOfTheYear(Date);
  if ShowModal = mrOk then
  begin
    von := dedt_Von.Date;
    bis := dEdt_Bis.Date;
    Result := True;
  end
  else
    Result := False;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttonfunktionen                                                           //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttonfunktionen}
procedure Tfrm_FeiertageAktualisieren.btn_AbortClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;
procedure Tfrm_FeiertageAktualisieren.btn_OKClick(Sender: TObject);
begin
  if (dedt_Von.EditValue = Null) or (dEdt_Bis.EditValue = Null) then
    MessageDlg(rs_PCMManager_DatumUngueltig + rs_PCMManager_DatumVonBis,mtWarning, [mbOk],0)
  else if dedt_Von.Date < dEdt_Bis.Date then
    ModalResult := mrOk
  else
    MessageDlg(rs_PCMManager_DatumUngueltig + rs_PCMManager_DatumBisVon,mtWarning, [mbOk],0);
end;
{$EndRegion Buttonfunktionen}
end.

