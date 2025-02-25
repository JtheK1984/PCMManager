unit PCMManager.Modul.C_Contacts.Neu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  dxGDIPlusClasses, Vcl.ExtCtrls,Data.DB,
  cxImage, cxLabel, cxGroupBox, system.UITypes, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxClasses, dxLayoutControl;

type
  Tfrm_PCManagerNewContact = class(TForm)
    edt_Name: TcxTextEdit;
    edt_SurName: TcxTextEdit;
    cmbbx_Anrede: TcxComboBox;
    btn_PCManagerLogin_Cancel: TcxButton;
    btn_PCManagerLogin_Ok: TcxButton;
    img_Contact: TcxImage;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
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

uses PCM.Data, PCM.Strings;

{$Region Buttons}
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_PCManagerNewContact.btn_PCManagerLogin_OkClick(Sender: TObject);
begin
  ModalResult:= mrOK;
end;
procedure Tfrm_PCManagerNewContact.btn_PCManagerLogin_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;
{$EndRegion}
{$Region Execute}
////////////////////////////////////////////////////////////////////////////////
// Execute                                                                    //
////////////////////////////////////////////////////////////////////////////////
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
        MessageDlg(rs_PCMManager_Vorname,mtWarning,[mbOk],0);
        exit;
      end
      else begin
        Vorname:= edt_Name.Text
      end;
      if edt_Name.Text = '' then
      begin
        MessageDlg(rs_PCMManager_nachname,mtWarning,[mbOk],0);
        exit;
      end
      else begin
        Name:= edt_SurName.Text
      end;
      result:= true;
    end;
  end;
end;
{$EndRegion}
end.

