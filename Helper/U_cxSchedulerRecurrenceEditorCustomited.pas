unit U_cxSchedulerRecurrenceEditorCustomited;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxSchedulerRecurrenceEditor, Menus, cxLookAndFeelPainters,
  cxGraphics, cxDropDownEdit, cxCalendar, cxCheckBox, cxMaskEdit, StdCtrls,
  cxRadioGroup, ExtCtrls, cxTextEdit, cxSpinEdit, cxTimeEdit, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxButtons, cxDateUtils, cxLookAndFeels,
  ComCtrls, dxCore, dxBevel, cxLabel, dxSkinsCore, dxSkinBasic, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue,
  PCMManager.Helper.Calendar.Neu.Wiederholung, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxClasses, dxLayoutLookAndFeels, dxLayoutContainer,
  dxLayoutControl;

type
  TcxSchedulerRecurrenceEventEditorForm1 = class(TcxSchedulerRecurrenceEventEditorForm)
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
    procedure SelectDaysOfWeek(ADays: TDays);
  public
    { Public-Deklarationen }
  end;

var
  cxSchedulerRecurrenceEventEditorForm1: TcxSchedulerRecurrenceEventEditorForm1;

implementation

{$R *.dfm}

//uses U_DmIC_Main;


procedure TcxSchedulerRecurrenceEventEditorForm1.SelectDaysOfWeek(ADays: TDays);
  procedure Check(ACheckBox: TcxCheckBox);
  begin
    ACheckBox.Checked := TDay(ACheckBox.Tag - 1) in ADays;
  end;

begin
  Check(cbDayOfWeek1);
  Check(cbDayOfWeek2);
  Check(cbDayOfWeek3);
  Check(cbDayOfWeek4);
  Check(cbDayOfWeek5);
  Check(cbDayOfWeek6);
  Check(cbDayOfWeek7);
end;

procedure TcxSchedulerRecurrenceEventEditorForm1.FormShow(Sender: TObject);

begin
  inherited;
  ShowMessage('Ä');
  gbTime.Caption:= 'wiederholender Termin';
  SelectDaysOfWeek(Event.RecurrenceInfo.OccurDays);
  // Interval
  rbDaily.Caption:= 'Täglich';
  rbWeekly.Caption:= 'Wöchentlich';
  rbMonthly.Caption:= 'Monatlich';
  rbYearly.Caption:= 'Jährlich';
  // Täglich
  rbEvery.Caption:= 'Jeden/Alle';
  lbday.Caption:= 'Tage(e)';
  rbEveryWeekday.Caption:= 'Jeden Arbeitstag';
  // Wöchentlich
  lbRecurEvery.Caption:= 'Jede/Alle';
  lbWeeksOn.Caption:= 'Woche(n) am';
  // Monatlich
  rbDay.Caption:= 'Am';
  lbOfEvery.Caption:=  '.Tag jedes';
  lbMonths.caption:= '.Monats';
  rbThe.Caption:= 'Am';
  lbOfEvery1.Caption:= 'jeden/alle';
  lbMonths1.caption:= 'Monat(e)';
  // Jährlich
  rbEvery1.Caption:= 'Am';
  rbThe1.Caption:='Am';
  lbOccurrences.Caption:= 'Terminen';
  //Event.Duration := EncodeTime(2,0,0,0);
end;

end.
