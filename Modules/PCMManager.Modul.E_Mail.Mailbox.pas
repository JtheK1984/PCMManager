unit PCMManager.Modul.E_Mail.Mailbox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons,system.uitypes, dxSkinWXI;

type
  Tfrm_PCM_MailShow_Ordner = class(TForm)
    cmbbx_Ordner: TcxComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private-Deklarationen }
    FShowModal : boolean;
  public
    { Public-Deklarationen }
    function Execute(AModal: boolean; out Mailbox : Integer): Boolean;
  end;

var
  frm_PCM_MailShow_Ordner: Tfrm_PCM_MailShow_Ordner;

implementation

{$R *.dfm}

uses  PCMManager.Modul.E_Mail,
      PCM.Data;

function Tfrm_PCM_MailShow_Ordner.Execute(AModal: boolean; out Mailbox : Integer): Boolean;
begin
  result:= false;
  FShowModal := AModal;
  if FShowModal then
  begin
    ShowModal;
    if ModalResult = mrOK then
    begin
      if cmbbx_Ordner.ItemIndex <> -1 then
      begin
        Mailbox := Integer(cmbbx_Ordner.Properties.Items.Objects[cmbbx_Ordner.ItemIndex])
      end
      else
      begin
        MessageDlg('Bitte Ordner auswählen!',mtWarning,[mbOk],0);
        exit;
      end;
      result:= true;
    end;
  end;
end;


procedure Tfrm_PCM_MailShow_Ordner.cxButton1Click(Sender: TObject);
//var
//  itest: integer;
begin
  ModalResult:= mrOK;
end;

procedure Tfrm_PCM_MailShow_Ordner.cxButton2Click(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

end.
