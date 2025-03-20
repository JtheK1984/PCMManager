unit PCMManager.Modul.B_Config.Kalender.Feiertage.Aktualisieren;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxButtons, cxGraphics, cxLookAndFeels, Buttons,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel, System.UITypes,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxClasses,
  dxLayoutControl, dxUIAClasses;

type
  Tfrm_FeiertageAktualisieren = class(TForm)
    dEdt_Von: TcxDateEdit;
    dEdt_Bis: TcxDateEdit;
    btn_OK: TcxButton;
    btn_Abort: TcxButton;
    lactrl_FeiertageRefreshGroup_Root: TdxLayoutGroup;
    lactrl_FeiertageRefresh: TdxLayoutControl;
    dxLayoutGroup5: TdxLayoutGroup;
    lbl_Hinweis: TdxLayoutLabeledItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    procedure btn_OKClick(Sender: TObject);
    procedure btn_AbortClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function Execute(out von, bis: TDateTime): Boolean;
  end;

var
  frm_FeiertageAktualisieren: Tfrm_FeiertageAktualisieren;

implementation

{$R *.dfm}

uses
  PCM.Data,
  DateUtils,
  PCM.Strings;

{$Region Formfunctions}
////////////////////////////////////////////////////////////////////////////////
// Formfunctions                                                               //
////////////////////////////////////////////////////////////////////////////////
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
procedure Tfrm_FeiertageAktualisieren.btn_OKClick(Sender: TObject);
begin
  if (dedt_Von.EditValue = Null) or (dEdt_Bis.EditValue = Null) then
    MessageDlg(rs_PCMManager_DatumUngueltig + rs_PCMManager_DatumVonBis,mtWarning, [mbOk],0)
  else if dedt_Von.Date < dEdt_Bis.Date then
    ModalResult := mrOk
  else
    MessageDlg(rs_PCMManager_DatumUngueltig + rs_PCMManager_DatumBisVon,mtWarning, [mbOk],0);
end;
procedure Tfrm_FeiertageAktualisieren.btn_AbortClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;
{$EndRegion}
end.

