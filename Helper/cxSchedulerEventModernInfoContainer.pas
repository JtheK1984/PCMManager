{********************************************************************}
{                                                                    }
{           Developer Express Visual Component Library               }
{           ExpressScheduler                                         }
{                                                                    }
{           Copyright (c) 2003-2025 Developer Express Inc.           }
{           ALL RIGHTS RESERVED                                      }
{                                                                    }
{   The entire contents of this file is protected by U.S. and        }
{   International Copyright Laws. Unauthorized reproduction,         }
{   reverse-engineering, and distribution of all or any portion of   }
{   the code contained in this file is strictly prohibited and may   }
{   result in severe civil and criminal penalties and will be        }
{   prosecuted to the maximum extent possible under the law.         }
{                                                                    }
{   RESTRICTIONS                                                     }
{                                                                    }
{   THIS SOURCE CODE AND ALL RESULTING INTERMEDIATE FILES            }
{   (DCU, OBJ, DLL, ETC.) ARE CONFIDENTIAL AND PROPRIETARY TRADE     }
{   SECRETS OF DEVELOPER EXPRESS INC. THE REGISTERED DEVELOPER IS    }
{   LICENSED TO DISTRIBUTE THE EXPRESSSCHEDULER AND ALL ACCOMPANYING }
{   VCL CONTROLS AS PART OF AN EXECUTABLE PROGRAM ONLY.              }
{                                                                    }
{   THE SOURCE CODE CONTAINED WITHIN THIS FILE AND ALL RELATED       }
{   FILES OR ANY PORTION OF ITS CONTENTS SHALL AT NO TIME BE         }
{   COPIED, TRANSFERRED, SOLD, DISTRIBUTED, OR OTHERWISE MADE        }
{   AVAILABLE TO OTHER INDIVIDUALS WITHOUT EXPRESS WRITTEN CONSENT   }
{   AND PERMISSION FROM DEVELOPER EXPRESS INC.                       }
{                                                                    }
{   CONSULT THE END USER LICENSE AGREEMENT FOR INFORMATION ON        }
{   ADDITIONAL RESTRICTIONS.                                         }
{                                                                    }
{********************************************************************}

unit cxSchedulerEventModernInfoContainer;

{$I cxVer.inc}

interface

uses
  System.UITypes, System.AnsiStrings,
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxForms,
  dxCore, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, cxGroupBox,
  cxGeometry, cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerStorage, cxSchedulerStrs,
  Vcl.ExtCtrls, cxImage, cxClasses, cxSchedulerUtils, dxLayoutContainer, dxLayoutLookAndFeels, dxLayoutControl,
  dxLayoutcxEditAdapters, cxProgressBar, dxUIAClasses, cxTextEdit, cxMemo;

type
  TcxSchedulerEventModernInfoContainer = class(TdxForm)
    lcMainGroup_Root: TdxLayoutGroup;
    lcMain: TdxLayoutControl;
    pbEvent: TPaintBox;
    liEventCaption: TdxLayoutItem;
    liStartCaption: TdxLayoutLabeledItem;
    liEndCaption: TdxLayoutLabeledItem;
    liStart: TdxLayoutLabeledItem;
    liEnd: TdxLayoutLabeledItem;
    lsiSpace1: TdxLayoutEmptySpaceItem;
    liLocationCaption: TdxLayoutLabeledItem;
    liReminderCaption: TdxLayoutLabeledItem;
    liLocation: TdxLayoutLabeledItem;
    liReminder: TdxLayoutLabeledItem;
    lgStartAndEnd: TdxLayoutGroup;
    lgStartAndEndCaptions: TdxLayoutGroup;
    lgStartAndEndFields: TdxLayoutGroup;
    lgLocationAndReminder: TdxLayoutGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    pbTaskComplete: TcxProgressBar;
    liTaskComplete: TdxLayoutItem;
    lsiSpace2: TdxLayoutEmptySpaceItem;
    lgLocation: TdxLayoutGroup;
    lgReminder: TdxLayoutGroup;
    esiLocationSpace: TdxLayoutEmptySpaceItem;
    lgResources: TdxLayoutGroup;
    liResourcesCaption: TdxLayoutLabeledItem;
    liResources: TdxLayoutLabeledItem;
    AlignmentConstraint1: TdxLayoutAlignmentConstraint;
    lgDescription: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    liKalender: TdxLayoutLabeledItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutLabeledItem3: TdxLayoutLabeledItem;
    procedure pbEventPaint(Sender: TObject);
  private
    FEventBitmap: TcxAlphaBitmap;
    FEventCell: TcxSchedulerEventCellViewInfo;
    FEventInfo: TcxSchedulerEventModernStyleHintInfo;
    FScheduler: TcxCustomScheduler;
    function GetScaleFactor: TdxScaleFactor;
  protected
    procedure CheckCaptions; virtual;
    procedure CheckVisibility; virtual;
    procedure CreateEventBitmap(AWidth, AHeight: Integer); virtual;
    function GetCaptionFullHeight(const ACaptionRect: TRect; const ACaption: string; AFont: TFont): Integer;
    function GetCaptionOutFlags(ACenterVert: Boolean): Integer; virtual;
    procedure InitializeInfo; virtual;
    procedure PrepareEventBitmap; virtual;

    property EventBitmap: TcxAlphaBitmap read FEventBitmap;
    property ScaleFactor: TdxScaleFactor read GetScaleFactor;
  public
    constructor Create(AScheduler: TcxCustomScheduler); reintroduce; virtual;
    destructor Destroy; override;
    procedure Initialize(AEventCell: TcxSchedulerEventCellViewInfo; AEventInfo: TcxSchedulerEventModernStyleHintInfo);

    property EventCell: TcxSchedulerEventCellViewInfo read FEventCell;
    property EventInfo: TcxSchedulerEventModernStyleHintInfo read FEventInfo;
  end;

  TcxSchedulerEventModernInfoContainerClass = class of TcxSchedulerEventModernInfoContainer;

var
  cxSchedulerEventModernInfoContainerClass: TcxSchedulerEventModernInfoContainerClass = TcxSchedulerEventModernInfoContainer;
  EventID: Integer;

implementation

{$R *.dfm}

uses System.Math, cxDrawTextUtils,PCM.Data;


type
  TcxCustomSchedulerAccess = class(TcxCustomScheduler);
  TcxSchedulerEventCellViewInfoAccess = class(TcxSchedulerEventCellViewInfo);

{ TcxSchedulerAdvancedEventInfo }

constructor TcxSchedulerEventModernInfoContainer.Create(AScheduler: TcxCustomScheduler);
var
  mem_Des: TCXMemo;
begin
  inherited Create(nil);

  FScheduler := AScheduler;
end;

destructor TcxSchedulerEventModernInfoContainer.Destroy;
begin
  FreeAndNil(FEventBitmap);
  inherited Destroy;
end;

procedure TcxSchedulerEventModernInfoContainer.Initialize(AEventCell: TcxSchedulerEventCellViewInfo;
  AEventInfo: TcxSchedulerEventModernStyleHintInfo);
begin
  dxLayoutSkinLookAndFeel1.LookAndFeel := TcxCustomSchedulerAccess(FScheduler).LookAndFeel;
  dxLayoutSkinLookAndFeel1.LookAndFeel.ScrollbarMode := sbmClassic;
  dxLayoutCxLookAndFeel1.LookAndFeel := TcxCustomSchedulerAccess(FScheduler).LookAndFeel;
  dxLayoutCxLookAndFeel1.LookAndFeel.ScrollbarMode := sbmClassic;
  FEventCell := AEventCell;
  FEventInfo := AEventInfo;
  CheckCaptions;
  InitializeInfo;
  CheckVisibility;
  lcMain.HandleNeeded;
  PrepareEventBitmap;
end;

procedure TcxSchedulerEventModernInfoContainer.CheckCaptions;
begin
  liStartCaption.CaptionOptions.Text := 'Start:';
  liEndCaption.CaptionOptions.Text := 'Ende:';
  liLocationCaption.CaptionOptions.Text := 'Ort:';
  liResourcesCaption.CaptionOptions.Text := cxGetResourceString(@scxModernStyleHintResources);
  liReminderCaption.CaptionOptions.Text := 'Erinnerung:';
  liTaskComplete.CaptionOptions.Text := cxGetResourceString(@scxModernStyleHintComplete);
end;

procedure TcxSchedulerEventModernInfoContainer.CheckVisibility;
begin
  liStartCaption.Visible := EventInfo.ShowStart;
  liStart.Visible := liStartCaption.Visible;
  liEndCaption.Visible := EventInfo.ShowFinish;
  liEnd.Visible := liEndCaption.Visible;
  lgStartAndEnd.Visible := EventInfo.ShowStart or EventInfo.ShowFinish;
  lsiSpace1.Visible := lgStartAndEnd.Visible;
  lgLocation.Visible := EventInfo.ShowLocation;
  lgResources.Visible := EventInfo.ShowResources;
  lgReminder.Visible := EventInfo.ShowReminder;
  liTaskComplete.Visible := EventInfo.ShowTaskComplete;
  lgLocationAndReminder.Visible := lgLocation.Visible or lgResources.Visible or lgReminder.Visible;
  lsiSpace2.Visible := lgLocationAndReminder.Visible and liTaskComplete.Visible;
end;

procedure TcxSchedulerEventModernInfoContainer.CreateEventBitmap(AWidth, AHeight: Integer);
begin
  FEventBitmap := TcxAlphaBitmap.CreateSize(AWidth, AHeight);
end;

function TcxSchedulerEventModernInfoContainer.GetCaptionOutFlags(ACenterVert: Boolean): Integer;
const
  AAlignmentHorz: array[Boolean] of Word = (CXTO_LEFT, CXTO_RIGHT);
  AAlignmentVert: array[Boolean] of Word = (CXTO_TOP, CXTO_CENTER_VERTICALLY);
begin
  Result := AAlignmentHorz[UseRightToLeftAlignment] or AAlignmentVert[ACenterVert] or
    CXTO_EXCELSTYLE or CXTO_END_ELLIPSIS or CXTO_EDITCONTROL or CXTO_WORDBREAK;
end;

function TcxSchedulerEventModernInfoContainer.GetCaptionFullHeight(const ACaptionRect: TRect;
  const ACaption: string; AFont: TFont): Integer;
var
  DC: HDC;
  AFontHandle: HFONT;
  ATextRows: TcxTextRows;
  ATextParams: TcxTextParams;
  ALineCount: Integer;
  R: TRect;
begin
  Result := 0;
  if ACaption = '' then Exit;
  R := ACaptionRect;
  DC := GetDC(0);
  try
    AFontHandle := SelectObject(DC, AFont.Handle);
    ATextParams := cxCalcTextParams(DC, GetCaptionOutFlags(False) or CXTO_CALCROWCOUNT);
    cxMakeTextRows(DC, PChar(ACaption), Length(ACaption), R, ATextParams, ATextRows, ALineCount);
    SelectObject(DC, AFontHandle);
    R.Bottom := R.Top + ALineCount * ATextParams.FullRowHeight;
    cxResetTextRows(ATextRows);
  finally
    ReleaseDC(0, DC);
  end;
  Result := cxRectHeight(R);
end;

procedure TcxSchedulerEventModernInfoContainer.InitializeInfo;
  procedure SetValues(AID: integer);
  Var
    sTel: String;
    sMobil: String;
    sEmial: String;
    sAnspr: string;
  begin
    dm_PCM.qry_work.SQL.Text:= 'Select ID_Adr_Wurzel, Kalendername,Message,Location From manager_kalender Where ID = :ID';
    dm_PCM.qry_work.ParamByName('ID').AsInteger:= AID;
    dm_PCM.qry_work.open;
    liKalender.CaptionOptions.Text:= dm_PCM.qry_work.FieldByName('Kalendername').AsString;
    if dm_PCM.qry_work.FieldByName('Message').AsString <> '' then
    begin
      dm_PCM.qry_work1.SQL.Text:= 'Select Firma,Vorname,nachname,Strasse_ges,PLZ_ges,Ort_Ges,Telefon_Ges,Zentrale_Ges,Handy_Ges,E_mail_Zentral,E_Mail_ges From manager_kontakte Where ID = :ID';
      dm_PCM.qry_work1.ParamByName('ID').AsInteger:= dm_PCM.qry_work.FieldByName('ID_Adr_Wurzel').AsInteger;
      dm_PCM.qry_work1.open;
      if dm_PCM.qry_work1.FieldByName('Telefon_Ges').asString <> '' then
      begin
        sTel:= Slinebreak + '[B]Telefon:[/B] ' + dm_PCM.qry_work1.FieldByName('Telefon_Ges').asString;
      end
      else begin
        if dm_PCM.qry_work1.FieldByName('Zentrale_Ges').asString <> '' then
        begin
          sTel:= Slinebreak + '[B]Telefon:[/B] ' + dm_PCM.qry_work1.FieldByName('Zentrale_Ges').asString;
        end
        else begin
          sTel:= '';
        end;
      end;
      if dm_PCM.qry_work1.FieldByName('Handy_Ges').asString <> '' then
      begin
        sMobil:= Slinebreak + '[B]Mobil:[/B] ' + dm_PCM.qry_work1.FieldByName('Handy_Ges').asString;
      end;

      if dm_PCM.qry_work1.FieldByName('E_Mail_ges').asString <> '' then
      begin
        sEmial:= Slinebreak + '[B]E-Mail:[/B] ' + dm_PCM.qry_work1.FieldByName('E_Mail_ges').asString;
      end
      else begin
        if dm_PCM.qry_work1.FieldByName('E_mail_Zentral').asString <> '' then
        begin
          sEmial:= Slinebreak + '[B]E-Mail:[/B] ' + dm_PCM.qry_work1.FieldByName('E_mail_Zentral').asString;
        end
        else begin
          sEmial:= '';
        end;
      end;


      if (dm_PCM.qry_work1.FieldByName('Vorname').asString <> '') or (dm_PCM.qry_work1.FieldByName('nachname').asString <> '') then
        sAnspr:= slinebreak + '[B]Anspr.:[/B] ' +  dm_PCM.qry_work1.FieldByName('Vorname').asString + ' ' + dm_PCM.qry_work1.FieldByName('Nachname').asString
      else
        sAnspr:='';
      lgDescription.Visible:= true;
      dxLayoutLabeledItem3.CaptionOptions.Text:= dm_PCM.qry_work.FieldByName('Message').AsString;
      if dm_PCM.qry_work.FieldByName('ID_Adr_Wurzel').AsString <> '' then
      begin
        case AnsiIndexStr(dm_PCM.qry_work.FieldByName('location').AsString, ['Kita', 'im Büro','Schule','beim Kunden','beim Arzt']) of
        0,1,2,3,4:
          begin
            dxLayoutLabeledItem3.CaptionOptions.Text:= dxLayoutLabeledItem3.CaptionOptions.Text +
            slinebreak +
            slinebreak +
            '[B]Kontakt[/B]: ' +
            slinebreak +
            dm_PCM.qry_work1.FieldByName('Firma').asString +
            slinebreak +
            dm_PCM.qry_work1.FieldByName('Strasse_Ges').asString +
            slinebreak +
            dm_PCM.qry_work1.FieldByName('PLZ_Ges').asString + ' ' + dm_PCM.qry_work1.FieldByName('Ort_Ges').asString +
            sAnspr + sTel + sMobil + sEmial;
          end;
        end;
      end;
    end
    else begin
      lgDescription.Visible:= false;
    end;


    dm_PCM.qry_work.Close;
  end;
begin
  liStart.CaptionOptions.Text := EventInfo.Start;
  liEnd.CaptionOptions.Text := EventInfo.Finish;
  liLocation.CaptionOptions.Text := EventInfo.Location;
  liResources.CaptionOptions.Text := EventInfo.Resources;
  liReminder.CaptionOptions.Text := EventInfo.Reminder;
  pbTaskComplete.Position := EventInfo.TaskComplete;
  SetValues(EventID);
end;

procedure TcxSchedulerEventModernInfoContainer.PrepareEventBitmap;
var
  AStateRect, ACaptionRect: TRect;
  ACaption: string;
  AFont: TFont;
  ALabelColor, ATimeLineBorderColor: TColor;
  ANeedCaptionHeight, ATimeLineWidth: Integer;
begin
  ALabelColor := EventCell.Event.LabelColor;
  ATimeLineBorderColor := TcxSchedulerEventCellViewInfoAccess(EventCell).GetTimeLineBorderColor;

  CreateEventBitmap(pbEvent.ClientWidth, pbEvent.ClientHeight);
  if ALabelColor = clDefault then
  begin
    ALabelColor := TcxSchedulerEventCellViewInfoAccess(EventCell).Painter.DefaultSchedulerEventColor(False);
    EventBitmap.cxCanvas.FillRect(EventBitmap.ClientRect, ALabelColor);
    EventBitmap.cxCanvas.FrameRect(EventBitmap.ClientRect, TcxSchedulerEventCellViewInfoAccess(EventCell).GetLabelBasedBorderColor);
  end
  else
    EventBitmap.cxCanvas.FillRect(EventBitmap.ClientRect, ALabelColor);

  ATimeLineWidth := ScaleFactor.Apply(cxTimeLineWidth);
  ACaptionRect := cxRectInflate(EventBitmap.ClientRect, -ScaleFactor.Apply(cxTextOffset * 2));
  AStateRect := cxRect(0, 0, ATimeLineWidth, EventBitmap.Height);
  if UseRightToLeftAlignment then
  begin
    AStateRect := TdxRightToLeftLayoutConverter.ConvertRect(AStateRect, EventBitmap.ClientRect);
    Dec(ACaptionRect.Right, ATimeLineWidth);
  end
  else
    Inc(ACaptionRect.Left, ATimeLineWidth);
  TcxSchedulerEventCellViewInfoAccess(EventCell).PainterHelper.DrawState(EventBitmap.cxCanvas, AStateRect,
    EventCell.Event.State, [], ATimeLineBorderColor, svsModern);
  EventBitmap.cxCanvas.FrameRect(AStateRect, ATimeLineBorderColor);

  ACaption := EventInfo.Caption;
  AFont := EventBitmap.cxCanvas.Font;
  AFont.Assign(TcxSchedulerEventCellViewInfoAccess(EventCell).ViewParams.Font);
  AFont.Style := AFont.Style + [fsBold];
  ANeedCaptionHeight := GetCaptionFullHeight(ACaptionRect, ACaption, AFont);
  cxTextOut(EventBitmap.cxCanvas.Canvas, ACaption, ACaptionRect,
    GetCaptionOutFlags(ANeedCaptionHeight <= cxRectHeight(ACaptionRect)),
    0, 0, AFont, clNone, clNone, 0, 0, 0, AFont.Color);
end;

procedure TcxSchedulerEventModernInfoContainer.pbEventPaint(Sender: TObject);
begin
  cxBitBlt(pbEvent.Canvas.Handle, EventBitmap.Canvas.Handle, pbEvent.ClientRect, Point(0, 0), SRCCOPY);
end;

function TcxSchedulerEventModernInfoContainer.GetScaleFactor: TdxScaleFactor;
begin
  Result := TcxCustomSchedulerAccess(FScheduler).ScaleFactor;
end;

end.
