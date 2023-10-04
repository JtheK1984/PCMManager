unit PCMManager.Modul.C_Contacts.Staatsangehoerigkeit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, ComCtrls, ToolWin, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxCore,
  cxCheckBox, cxCheckComboBox, cxMaskEdit,
  dxDateRanges, dxScrollbarAnnotations, dxSkinBasic, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxBar, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_PCM_Staatsangehoerigkeit = class(TForm)
    grd_Staatsangehoerigkeit: TcxGrid;
    grdDBTblView_Staatsangehoerigkeit: TcxGridDBTableView;
    grdlvl_Staatsangehoerigkeit: TcxGridLevel;
    grdDBTblView_StaatsangehoerigkeitBezeichnung: TcxGridDBColumn;
    brmgr_Staatsangehoerigkeit: TdxBarManager;
    tb_Staatsangehoerigkeit: TdxBar;
    btn_StaatsangehoerigkeitNew: TdxBarLargeButton;
    btn_StaatsangehoerigkeitCancel: TdxBarLargeButton;
    btn_StaatsangehoerigkeitSave: TdxBarLargeButton;
    btn_StaatsangehoerigkeitClose: TdxBarLargeButton;
    btn_StaatsangehoerigkeitDelete: TdxBarLargeButton;
    procedure btn_StaatsangehoerigkeitCloseClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitNewClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitSaveClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitCancelClick(Sender: TObject);
    procedure btn_StaatsangehoerigkeitDeleteClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function Execute(Caption: string; Recht: integer) :boolean;
  end;

var
  frm_PCM_Staatsangehoerigkeit: Tfrm_PCM_Staatsangehoerigkeit;
  sTable: string;

implementation


{$R *.dfm}

uses PCMManager.Modul.C_Contacts,
     PCM.Data;

procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitCancelClick(Sender: TObject);
begin
  dm_PCM.qry_Contact_Staatsangehoerigkeit.Cancel;
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitDeleteClick(Sender: TObject);
begin
  if dm_PCM.qry_Contact_Staatsangehoerigkeit.FieldByName('ID').AsInteger > 0 then
  begin
    dm_PCM.qry_Contact_Staatsangehoerigkeit.Delete;
  end
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitNewClick(Sender: TObject);
begin
  if dm_PCM.qry_Contact_Staatsangehoerigkeit.State in [dsInsert, dsedit] then
    dm_PCM.qry_Contact_Staatsangehoerigkeit.Post;
  dm_PCM.qry_Contact_Staatsangehoerigkeit.Append;
  dm_PCM.qry_Contact_Staatsangehoerigkeit.Insert;
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitSaveClick(Sender: TObject);
begin
  if dm_PCM.qry_Contact_Staatsangehoerigkeit.State in [dsInsert, dsEdit] then
  begin
    dm_PCM.qry_Contact_Staatsangehoerigkeit.Post;
  end;
end;
function Tfrm_PCM_Staatsangehoerigkeit.Execute(Caption: string; Recht: integer) :boolean;
begin
  dm_PCM.qry_Contact_Staatsangehoerigkeit.Open;
  Self.Caption := Caption;
  // Lesen
  if Recht = 1  then
  begin
    btn_StaatsangehoerigkeitNew.Enabled:= false;
    btn_StaatsangehoerigkeitSave.Enabled:= false;
    btn_StaatsangehoerigkeitCancel.Enabled:= false;
    btn_StaatsangehoerigkeitDelete.Enabled:= false;
  end;
  // Ändern
  if Recht = 2  then
  begin
    btn_StaatsangehoerigkeitNew.Enabled:= true;
    btn_StaatsangehoerigkeitSave.Enabled:= true;
    btn_StaatsangehoerigkeitCancel.Enabled:= true;
    btn_StaatsangehoerigkeitDelete.Enabled:= False;
  end;
  // Vollugriff
  if Recht = 3  then
  begin
    btn_StaatsangehoerigkeitNew.Enabled:= true;
    btn_StaatsangehoerigkeitSave.Enabled:= true;
    btn_StaatsangehoerigkeitCancel.Enabled:= true;
    btn_StaatsangehoerigkeitDelete.Enabled:= true;
  end;
  ShowModal;
  result:= true;
  Release;
end;
procedure Tfrm_PCM_Staatsangehoerigkeit.btn_StaatsangehoerigkeitCloseClick(Sender: TObject);
begin
  Close;
end;

end.

