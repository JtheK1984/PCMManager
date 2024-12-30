unit PCMManager.Modul.G_Finanzen.Filter.Date;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  cxButtons, System.ImageList, Vcl.ImgList, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, cxGroupBox,system.UITypes;

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
    function Execute(const AShowModal: Boolean; out AMonat, AJahr: integer) : boolean; overload;
    function Execute(const AShowModal,AOnlyYear: Boolean; out AJahr: integer) : boolean; overload;
  end;

var
  frm_PCManagerChooseDate: Tfrm_PCManagerChooseDate;

implementation

{$R *.dfm}

uses
      PCM.Data,
      PCMManager.Modul.G_Finanzen, PCM.Strings;

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
function Tfrm_PCManagerChooseDate.Execute(const AShowModal,AOnlyYear: Boolean;out AJahr: integer) : boolean;
begin
  if AOnlyYear then
  begin
    lbl_PCManagerChooseDate_Month.Visible:= false;
    cbx_PCManagerChooseDate_Month.Visible:= false;
    lbl_PCManagerChooseDate_Year.Left:= 8;
    cbx_PCManagerChooseDate_Year.left:= 8;
    cbx_PCManagerChooseDate_Year.Width:= 258;
  end
  else begin
    lbl_PCManagerChooseDate_Month.Visible:= true;
    cbx_PCManagerChooseDate_Month.Visible:= true;
    lbl_PCManagerChooseDate_Year.Left:= 140;
    cbx_PCManagerChooseDate_Year.left:= 140;
    cbx_PCManagerChooseDate_Year.Width:= 126;
  end;
  Ajahr:= StrToInt(cbx_PCManagerChooseDate_Year.properties.Items[cbx_PCManagerChooseDate_Year.ItemIndex]);
  FShowModal := AShowModal;
  result:= true;
  if FShowModal then
  begin
    ShowModal;
    if ModalResult = mrOK then
    begin
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
begin
  if cbx_PCManagerChooseDate_Month.ItemIndex = -1 then
  begin
    MessageDlg(rs_PCMManager_Monatwaehlen, mtWarning, [mbOk], 0);
    exit;
  end;

  if cbx_PCManagerChooseDate_Year.ItemIndex = -1 then
  begin
   MessageDlg(rs_PCMManager_Jahrwaehlen, mtWarning, [mbOk], 0);
   exit;
  end;
  Modalresult:= mrOk;
end;
procedure Tfrm_PCManagerChooseDate.btn_PCManagerChooseDate_CancelClick(Sender: TObject);
begin
  Modalresult:= mrOk;
end;
end.
