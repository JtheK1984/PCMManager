unit PCMManager.Modul.C_Contacts.Neu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  dxGDIPlusClasses, Vcl.ExtCtrls,Data.DB, dxSkinsCore, dxSkinMetropolisDark,
  cxImage, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxLabel, cxGroupBox, system.UITypes;

type
  Tfrm_PCManagerNewContact = class(TForm)
    edt_Name: TcxTextEdit;
    edt_SurName: TcxTextEdit;
    cmbbx_Anrede: TcxComboBox;
    btn_PCManagerLogin_Cancel: TcxButton;
    btn_PCManagerLogin_Ok: TcxButton;
    img_Contact: TcxImage;
    grpbx_Design: TcxGroupBox;
    lbl_Anrede: TcxLabel;
    lbl_Name: TcxLabel;
    lbl_SurName: TcxLabel;
    procedure btn_PCManagerLogin_CancelClick(Sender: TObject);
    procedure btn_PCManagerLogin_OkClick(Sender: TObject);
  private
    { Private-Deklarationen }
    FShowModal : boolean;
  public
    { Public-Deklarationen }
    function Execute(AModal: boolean; out Anrede : Integer; out Vorname, Name: string): Boolean;
  end;

var
  frm_PCManagerNewContact: Tfrm_PCManagerNewContact;

implementation

{$R *.dfm}

uses PCM.Data;


procedure Tfrm_PCManagerNewContact.btn_PCManagerLogin_OkClick(Sender: TObject);
begin
  ModalResult:= mrOK;
end;
function Tfrm_PCManagerNewContact.Execute(AModal: boolean; out Anrede : Integer; out Vorname, Name: string): Boolean;
begin
  result:= false;
  cmbbx_Anrede.clear;
  dm_PCM.qry_Work.SQL.Text:= 'SELECT ID, Bezeichnung FROM manager_anrede order by Bezeichnung asc';
  dm_PCM.qry_Work.open;
  dm_PCM.qry_Work.First;
  while not dm_PCM.qry_Work.EOF do begin
    cmbbx_Anrede.Properties.Items.AddObject(dm_PCM.qry_Work.FieldByName('Bezeichnung').AsString, TObject(dm_PCM.qry_Work.FieldByName('ID').AsInteger));
    dm_PCM.qry_Work.Next;
  end;
  edt_SurName.Text:= '';
  edt_Name.Text:= '';
  FShowModal := AModal;
  if FShowModal then
  begin
    ShowModal;
    if ModalResult = mrOK then
    begin
      if cmbbx_Anrede.ItemIndex <> -1 then
        Anrede := Integer(cmbbx_Anrede.Properties.Items.Objects[cmbbx_Anrede.ItemIndex])
      else
        Anrede := 0;
      if edt_SurName.Text = '' then
      begin
        MessageDlg('Bitte Vorname eingeben!',mtWarning,[mbOk],0);
        exit;
      end
      else begin
        Vorname:= edt_SurName.Text
      end;
      if edt_Name.Text = '' then
      begin
        MessageDlg('Bitte Nachnname eingeben!',mtWarning,[mbOk],0);
        exit;
      end
      else begin
        Name:= edt_Name.Text
      end;
      result:= true;
    end;
  end;
end;
procedure Tfrm_PCManagerNewContact.btn_PCManagerLogin_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

end.

