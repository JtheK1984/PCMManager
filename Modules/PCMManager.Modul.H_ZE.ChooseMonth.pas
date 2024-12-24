unit PCMManager.Modul.H_ZE.ChooseMonth;

interface

uses
  {$Region Uses}
  cxButtons,
  cxContainer,
  cxControls,
  cxDropDownEdit,
  cxEdit,
  cxGraphics,
  cxGroupBox,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxMaskEdit,
  cxTextEdit,
  System.Classes,
  System.SysUtils,
  system.uitypes,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Menus,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion Uses}
type
  {$Region Type}
  Tfrm_ChooseDate = class(TForm)
    btn_Cancel: TcxButton;
    btn_Ok: TcxButton;
    cbx_Month: TcxComboBox;
    cbx_Year: TcxComboBox;
    lbl_Month: TcxLabel;
    lbl_Year: TcxLabel;
    grpbx_Design: TcxGroupBox;
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
    FShowModal: boolean;
  public
    { Public-Deklarationen }
    function Execute(const AShowModal: Boolean; out AMonat, AJahr: integer) : boolean;
  end;
  {$EndRegion Type}
var
  {$Region var}
  frm_ChooseDate: Tfrm_ChooseDate;
  {$EndRegion var}
implementation

{$R *.dfm}

uses
  {$Region Uses}
  PCM.Data,
  PCMManager.Modul.H_ZE,
  PCM.Strings;
  {$EndRegion Uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
function Tfrm_ChooseDate.Execute(const AShowModal: Boolean;out AMonat, AJahr: integer) : boolean;
begin
  AMonat := cbx_Month.ItemIndex;
  Ajahr:= StrToInt(cbx_Year.properties.Items[cbx_Year.ItemIndex]);
  FShowModal := AShowModal;
  result:= true;
  if FShowModal then
  begin
    ShowModal;
    if ModalResult = mrOK then
    begin
      AMonat:= cbx_Month.ItemIndex + 1;
      AJahr:= StrToInt(cbx_Year.Properties.Items[cbx_Year.ItemIndex]);
      result:= true;
    end;
  end;
end;
{$EndRegion Hilfsfunktionen}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_ChooseDate.btn_CancelClick(Sender: TObject);
begin
  Modalresult:= mrAbort;
end;
procedure Tfrm_ChooseDate.btn_OkClick(Sender: TObject);
begin
  if cbx_Month.ItemIndex = -1 then
  begin
    MessageDlg(rs_PCMManager_Monatwaehlen, mtWarning, [mbOk], 0);
    exit;
  end;

  if cbx_Year.ItemIndex = -1 then
  begin
   MessageDlg(rs_PCMManager_Jahrwaehlen, mtWarning, [mbOk], 0);
   exit;
  end;
  Modalresult:= mrOk;
end;
{$EndRegion Buttons}
////////////////////////////////////////////////////////////////////////////////
// Formfunktionen                                                             //
////////////////////////////////////////////////////////////////////////////////
{$Region FormFunktionen}
procedure Tfrm_ChooseDate.FormCreate(Sender: TObject);
var
  str_Year: string;
  str_Month: string;
  iJahr,iMonat, iTag: Word;
begin
  dm_PCM.qry_Work.SQL.Text:= 'Select COUNT(*) as ANzahl From manager_buchungen';
  DecodeDate(Now,iJahr,iMonat,iTag);
  case iMonat of
    1: str_Month:= 'Januar';
    2: str_Month:= 'Februar';
    3: str_Month:= 'März';
    4: str_Month:= 'April';
    5: str_Month:= 'Mai';
    6: str_Month:= 'Juni';
    7: str_Month:= 'Juli';
    8: str_Month:= 'August';
    9: str_Month:= 'September';
    10: str_Month:= 'Oktober';
    11: str_Month:= 'November';
    12: str_Month:= 'Dezember';
  end;
  str_Year:=InttoStr(iJahr);
  cbx_Month.ItemIndex := cbx_Month.properties.Items.IndexOf(str_Month);
  cbx_Year.ItemIndex := cbx_Year.properties.Items.IndexOf(str_year);
end;
{$EndRegion FormFunktionen}
end.
