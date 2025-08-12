unit PCMManager.Helper.Calendar.ReminderCustomited;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,PCMManager.Helper.Calendar.Reminder, ComCtrls, Menus,
  cxLookAndFeelPainters, cxGraphics, ExtCtrls, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, StdCtrls, cxButtons, cxControls, cxContainer,
  cxListView, cxSchedulerDialogs, cxLookAndFeels, cxSchedulerStorage,
  DB,  cxLabel, dxLayoutContainer,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, cxClasses,
  dxLayoutLookAndFeels, dxLayoutControl, dxSkinsCore, dxSkinMetropolisDark,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinWXI, dxUIAClasses;

type
  TcxSchedulerReminderFormCustomized = class(TcxSchedulerReminderForm)
    lblAdresse: TcxLabel;
    procedure ButtonClick(Sender: TObject);
    procedure lvItemsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  cxSchedulerReminderFormCustomized: TcxSchedulerReminderFormCustomized;

implementation

uses PCM.Main,
     PCM.Manager.Strings;

{$R *.dfm}


procedure TcxSchedulerReminderFormCustomized.ButtonClick(Sender: TObject);
begin
  inherited;
//

end;

procedure TcxSchedulerReminderFormCustomized.FormShow(Sender: TObject);
begin
  inherited;
  dxLayoutCxLookAndFeel.LookAndFeel.SkinName:= frm_pcm_main.lafCtrl_Main.SkinName;
end;

procedure TcxSchedulerReminderFormCustomized.lvItemsSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  inherited;
  begin
    btnOpenItem.Caption := rs_PCMManager_Terminopen;
  end;
end;

initialization
  cxReminderFormClass := TcxSchedulerReminderFormCustomized;

end.
