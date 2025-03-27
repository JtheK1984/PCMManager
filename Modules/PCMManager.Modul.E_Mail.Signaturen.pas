unit PCMManager.Modul.E_Mail.Signaturen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tfrm_Signatur = class(TForm)
    procedure cxButton1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frm_Signatur: Tfrm_Signatur;

implementation

{$R *.dfm}

uses
  PCM.Data;

procedure Tfrm_Signatur.cxButton1Click(Sender: TObject);
begin
//  SynMemo1.Lines.SaveToFile('Signatur.html');
//  WebBrowser1.Navigate('E:\Projekte\Windows\PCMManager\Win64\Debug\Signatur.html');
end;

end.
