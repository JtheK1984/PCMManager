unit PCMManager.Modul.B_Config.Kalender.Feiertage.Aktualisieren;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxButtons, cxGraphics, cxLookAndFeels, Buttons,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinMetropolisDark,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel, dxSkinWXI;

type
  Tfrm_FeiertageAktualisieren = class(TForm)
    grpbx_Hinweis: TcxGroupBox;
    grpbx_Data: TcxGroupBox;
    dEdt_Von: TcxDateEdit;
    dEdt_Bis: TcxDateEdit;
    btn_OK: TcxButton;
    btn_Abort: TcxButton;
    lbl_Von: TcxLabel;
    lbl_Bis: TcxLabel;
    lbl_Hinweis: TcxLabel;
    grpbx_DesignMain: TcxGroupBox;
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
  DateUtils;

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
    Application.MessageBox(PChar('Bitte geben Sie ein "Von"- und ein "Bis"-Datum an.'), PChar('Datum ungültig.'), MB_OK or MB_ICONINFORMATION)
  else if dedt_Von.Date < dEdt_Bis.Date then
    ModalResult := mrOk
  else
    Application.MessageBox(PChar('"Von" ist größer als "Bis" - bitte korrigieren.'), PChar('Datum ungültig.'), MB_OK or MB_ICONINFORMATION);
end;
procedure Tfrm_FeiertageAktualisieren.btn_AbortClick(Sender: TObject);
begin
  // 5.9.0.29
  ModalResult := mrCancel;
end;

end.

