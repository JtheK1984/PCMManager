unit PCMManager.Modul.G_Finanzen.Report;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Winapi.WebView2, Winapi.ActiveX,
  Vcl.Edge, system.IOUtils;

type
  Tfrm_PCM_Finanzreport = class(TForm)
    EdgeBrowser: TEdgeBrowser;
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  frm_PCM_Finanzreport: Tfrm_PCM_Finanzreport;

implementation

{$R *.dfm}

procedure Tfrm_PCM_Finanzreport.FormShow(Sender: TObject);
begin
    EdgeBrowser.UserDataFolder := TPath.Combine(TPath.GetDirectoryName(Application.ExeName), 'CustomCache');
    EdgeBrowser.Navigate(TPath.Combine(TPath.GetDirectoryName(Application.ExeName), 'Report') + '_Finanzübersicht.html');
end;

end.
