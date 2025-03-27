unit PCMManager.Modul.C_Contacts.Neu;

interface

uses
  {$Region Uses}
  cxButtons,
  cxClasses,
  cxContainer,
  cxControls,
  cxDropDownEdit,
  cxEdit,
  cxGraphics,
  cxGroupBox,
  cxImage,
  cxLabel,
  cxLookAndFeelPainters,
  cxLookAndFeels,
  cxMaskEdit,
  cxTextEdit,
  dxGDIPlusClasses,
  dxLayoutContainer,
  dxLayoutControl,
  dxLayoutControlAdapters,
  dxLayoutcxEditAdapters,
  dxUIAClasses,
  System.Classes,
  System.ImageList,
  System.SysUtils,
  system.UITypes,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,Data.DB,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.StdCtrls,
  Winapi.Messages,
  Winapi.Windows;
  {$EndRegion Uses}
type
  {$Region type}
  Tfrm_PCManagerNewContact = class(TForm)
    btn_PCManagerLogin_Cancel: TcxButton;
    btn_PCManagerLogin_Ok: TcxButton;
    cmbbx_Anrede: TcxComboBox;
    edt_Name: TcxTextEdit;
    edt_SurName: TcxTextEdit;
    img_Contact: TcxImage;
    lactrl_Contact: TdxLayoutControl;
    lactrl_ContactGroup_Root: TdxLayoutGroup;
    lagrp_Contact: TdxLayoutGroup;
    lagrp_ContactButtons: TdxLayoutGroup;
    lagrp_ContactDetail: TdxLayoutGroup;
    lagrp_ContactWithImg: TdxLayoutGroup;
    laitm_ContactAbbrechen: TdxLayoutItem;
    laitm_ContactAnlegen: TdxLayoutItem;
    laitm_ContactAnrede: TdxLayoutItem;
    laitm_ContactImage: TdxLayoutItem;
    laitm_ContactNachname: TdxLayoutItem;
    laitm_ContactVorname: TdxLayoutItem;
    procedure btn_PCManagerLogin_CancelClick(Sender: TObject);
    procedure btn_PCManagerLogin_OkClick(Sender: TObject);
  private
    { Private-Deklarationen }
    FShowModal : boolean;
  public
    { Public-Deklarationen }
    function Execute(AModal: boolean; out Anrede : Integer; out Vorname, Name: string): Boolean;
  end;
  {$EndRegion type}
var
  {$Region uses}
  frm_PCManagerNewContact: Tfrm_PCManagerNewContact;
  {$EndRegion uses}
implementation
{$R *.dfm}
uses
  {$Region uses}
  PCM.Data,
  PCM.Strings;
  {$EndRegion uses}
////////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen                                                            //
////////////////////////////////////////////////////////////////////////////////
{$Region Hilfsfunktionen}
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
////////////////////////////////////////////////////////////////////////////////
// Buttons                                                                    //
////////////////////////////////////////////////////////////////////////////////
{$Region Buttons}
procedure Tfrm_PCManagerNewContact.btn_PCManagerLogin_OkClick(Sender: TObject);
begin
  ModalResult:= mrOK;
end;
procedure Tfrm_PCManagerNewContact.btn_PCManagerLogin_CancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;
{$EndRegion}

end.

