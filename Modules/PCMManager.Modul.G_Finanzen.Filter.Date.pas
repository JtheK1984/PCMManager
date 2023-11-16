unit PCMManager.Modul.G_Finanzen.Filter.Date;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons, System.ImageList, Vcl.ImgList, dxSkinsCore, dxSkinMetropolisDark,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel, cxGroupBox,system.UITypes,
  dxSkinWXI;

type
  Tfrm_PCManagerChooseDate = class(TForm)
    btn_PCManagerChooseDate_Ok: TcxButton;
    btn_PCManagerChooseDate_Cancel: TcxButton;
    cbx_PCManagerChooseDate_Year: TcxComboBox;
    cbx_PCManagerChooseDate_Month: TcxComboBox;
    cxGroupBox1: TcxGroupBox;
    lbl_PCManagerChooseDate_Month: TcxLabel;
    lbl_PCManagerChooseDate_Year: TcxLabel;
    procedure btn_PCManagerChooseDate_CancelClick(Sender: TObject);
    procedure btn_PCManagerChooseDate_OkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
    FShowModal: boolean;
  public
    { Public-Deklarationen }
    function Execute(const AShowModal: Boolean; out AMonat, AJahr: integer) : boolean;
  end;

var
  frm_PCManagerChooseDate: Tfrm_PCManagerChooseDate;

implementation

{$R *.dfm}

uses
      PCM.Data,
      PCMManager.Modul.G_Finanzen;

function Tfrm_PCManagerChooseDate.Execute(const AShowModal: Boolean;out AMonat, AJahr: integer) : boolean;
begin
  AMonat := cbx_PCManagerChooseDate_Month.ItemIndex;
  Ajahr:= StrToInt(cbx_PCManagerChooseDate_Year.properties.Items[cbx_PCManagerChooseDate_Year.ItemIndex]);
  FShowModal := AShowModal;
  result:= true;
  if FShowModal then
  begin
    ShowModal;
    if ModalResult = mrOK then
    begin
      AMonat:= cbx_PCManagerChooseDate_Month.ItemIndex + 1;
      AJahr:= StrToInt(cbx_PCManagerChooseDate_Year.Properties.Items[cbx_PCManagerChooseDate_Year.ItemIndex]);
      result:= true;
    end;
  end;
end;

procedure Tfrm_PCManagerChooseDate.FormCreate(Sender: TObject);
var
  str_Year: string;
  str_Month: string;
begin
  str_Month:=FormatDateTime('mmmm', now);
  cbx_PCManagerChooseDate_Month.ItemIndex := cbx_PCManagerChooseDate_Month.properties.Items.IndexOf(str_Month);
  str_Year:=FormatDateTime('yyyy', now);
  cbx_PCManagerChooseDate_Year.ItemIndex := cbx_PCManagerChooseDate_Year.properties.Items.IndexOf(str_year);
end;

procedure Tfrm_PCManagerChooseDate.btn_PCManagerChooseDate_OkClick(Sender: TObject);
//var
//  dbl_Einnahmen: Double;
//  dbl_varKosten: Double;
//  dbl_fixKosten: Double;
//  str_Monat: string;
//  str_Jahr: string;
begin
  if cbx_PCManagerChooseDate_Month.ItemIndex = -1 then
  begin
    MessageDlg('Bitte Monat wählen.', mtWarning, [mbOk], 0);
    exit;
  end;

  if cbx_PCManagerChooseDate_Year.ItemIndex = -1 then
  begin
   MessageDlg('Bitte Jahr wählen.', mtWarning, [mbOk], 0);
   exit;
  end;
  Modalresult:= mrOk;
end;

procedure Tfrm_PCManagerChooseDate.btn_PCManagerChooseDate_CancelClick(Sender: TObject);
begin
  Modalresult:= mrOk;
end;
end.
