unit PCMManager.Modul.E_Mail.Mailbox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons,system.uitypes, dxUIAClasses;

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
      PCM.Data, PCM.Strings;

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
        MessageDlg(rs_PCMManager_MSChooseMailbox,mtWarning,[mbOk],0);
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
