{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvExButtons.pas, released on 2004-01-04

The Initial Developer of the Original Code is Andreas Hausladen [Andreas.Hausladen@gmx.de]
Portions created by Andreas Hausladen are Copyright (C) 2004 Andreas Hausladen.
All Rights Reserved.

Contributor(s): -

Last Modified: 2004-01-13

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}
{$I jvcl.inc}

{ Do not edit this file.
  This file is autogenerated from the source in devtools/JvExVCL. }

unit JvExButtons;
interface
uses
  {$IFDEF VCL}
  Windows, Messages, Graphics, Controls, Forms, Buttons, StdCtrls,
  {$ENDIF VCL}
  {$IFDEF VisualCLX}
  Qt, QGraphics, QControls, QForms, QButtons, QStdCtrls, QWindows,
  {$ENDIF VisualCLX}
  Classes, SysUtils,
  JvTypes, JvThemes, JVCLVer, JvExControls;

{$IFDEF VCL}
 {$DEFINE NeedMouseEnterLeave}
{$ENDIF VCL}
{$IFDEF VisualCLX}
 {$IF not declared(PatchedVCLX)}
  {$DEFINE NeedMouseEnterLeave}
 {$IFEND}
{$ENDIF VisualCLX}

type
  TJvExSpeedButton = class(TSpeedButton, IJvControlEvents)
  {$IFDEF VCL}
  protected
   // IJvControlEvents
    procedure VisibleChanged; dynamic;
    procedure EnabledChanged; dynamic;
    procedure TextChanged; dynamic;
    procedure FontChanged; dynamic;
    procedure ColorChanged; dynamic;
    procedure ParentFontChanged; dynamic;
    procedure ParentColorChanged; dynamic;
    procedure ParentShowHintChanged; dynamic;
    function WantKey(Key: Integer; Shift: TShiftState;
      const KeyText: WideString): Boolean; virtual;
    function HintShow(var HintInfo: THintInfo): Boolean; dynamic;
    function HitTest(X, Y: Integer): Boolean; dynamic;
    procedure MouseEnter(Control: TControl); dynamic;
    procedure MouseLeave(Control: TControl); dynamic;
    {$IFNDEF HASAUTOSIZE}
     {$IFNDEF COMPILER6_UP}
    procedure SetAutoSize(Value: Boolean); virtual;
     {$ENDIF !COMPILER6_UP}
    {$ENDIF !HASAUTOSIZE}
  public
    procedure Dispatch(var Msg); override;
  {$ENDIF VCL}
  {$IFDEF VisualCLX}
  protected
    procedure MouseEnter(Control: TControl); override;
    procedure MouseLeave(Control: TControl); override;
    procedure ParentColorChanged; override;
  {$ENDIF VisualCLX}
  private
    FHintColor: TColor;
    FSavedHintColor: TColor;
    FMouseOver: Boolean;
    FOnParentColorChanged: TNotifyEvent;
  {$IFDEF NeedMouseEnterLeave}
    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;
  protected
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
  {$ENDIF NeedMouseEnterLeave}
  protected
    procedure CMFocusChanged(var Msg: TCMFocusChanged); message CM_FOCUSCHANGED;
    procedure DoFocusChanged(Control: TWinControl); dynamic;

    property MouseOver: Boolean read FMouseOver write FMouseOver;
    property HintColor: TColor read FHintColor write FHintColor default clInfoBk;
    property OnParentColorChange: TNotifyEvent read FOnParentColorChanged write FOnParentColorChanged;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  private
  {$IFDEF VCL}
    FAboutJVCL: TJVCLAboutInfo;
  published
    property AboutJVCL: TJVCLAboutInfo read FAboutJVCL write FAboutJVCL stored False;
  {$ENDIF VCL}
  {$IFDEF VisualCLX}
    FAboutJVCLX: TJVCLAboutInfo;
  published
    property AboutJVCLX: TJVCLAboutInfo read FAboutJVCLX write FAboutJVCLX stored False;
  {$ENDIF VisuaLCLX}
  
  end;
  TJvExPubSpeedButton = class(TJvExSpeedButton)
  {$IFDEF VCL}
  published
    property BiDiMode;
    property DragCursor;
    property DragKind;
    property DragMode;
    property ParentBiDiMode;
    property OnEndDock;
    property OnStartDock;
  {$ENDIF VCL}
  end;
  
  TJvExBitBtn = class(TBitBtn, IJvWinControlEvents, IJvControlEvents)
  {$IFDEF VCL}
  protected
   // IJvControlEvents
    procedure VisibleChanged; dynamic;
    procedure EnabledChanged; dynamic;
    procedure TextChanged; dynamic;
    procedure FontChanged; dynamic;
    procedure ColorChanged; dynamic;
    procedure ParentFontChanged; dynamic;
    procedure ParentColorChanged; dynamic;
    procedure ParentShowHintChanged; dynamic;
    function WantKey(Key: Integer; Shift: TShiftState;
      const KeyText: WideString): Boolean; virtual;
    function HintShow(var HintInfo: THintInfo): Boolean; dynamic;
    function HitTest(X, Y: Integer): Boolean; dynamic;
    procedure MouseEnter(Control: TControl); dynamic;
    procedure MouseLeave(Control: TControl); dynamic;
    {$IFNDEF HASAUTOSIZE}
     {$IFNDEF COMPILER6_UP}
    procedure SetAutoSize(Value: Boolean); virtual;
     {$ENDIF !COMPILER6_UP}
    {$ENDIF !HASAUTOSIZE}
  public
    procedure Dispatch(var Msg); override;
  protected
   // IJvWinControlEvents
    procedure CursorChanged; dynamic;
    procedure ShowingChanged; dynamic;
    procedure ShowHintChanged; dynamic;
    procedure ControlsListChanging(Control: TControl; Inserting: Boolean); dynamic;
    procedure ControlsListChanged(Control: TControl; Inserting: Boolean); dynamic;
  {$IFDEF JVCLThemesEnabledD56}
  private
    function GetParentBackground: Boolean;
  protected
    procedure SetParentBackground(Value: Boolean); virtual;
    property ParentBackground: Boolean read GetParentBackground write SetParentBackground;
  {$ENDIF JVCLThemesEnabledD56}
  {$ENDIF VCL}
  {$IFDEF VisualCLX}
  protected
    procedure MouseEnter(Control: TControl); override;
    procedure MouseLeave(Control: TControl); override;
    procedure ParentColorChanged; override;
  protected
    procedure BoundsChanged; override;
    function NeedKey(Key: Integer; Shift: TShiftState;
      const KeyText: WideString): Boolean; override;
    procedure Painting(Sender: QObjectH; EventRegion: QRegionH); override;
  {$ENDIF VisualCLX}
  private
    FHintColor: TColor;
    FSavedHintColor: TColor;
    FMouseOver: Boolean;
    FOnParentColorChanged: TNotifyEvent;
  {$IFDEF NeedMouseEnterLeave}
    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;
  protected
    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;
  {$ENDIF NeedMouseEnterLeave}
  protected
    procedure CMFocusChanged(var Msg: TCMFocusChanged); message CM_FOCUSCHANGED;
    procedure DoFocusChanged(Control: TWinControl); dynamic;

    property MouseOver: Boolean read FMouseOver write FMouseOver;
    property HintColor: TColor read FHintColor write FHintColor default clInfoBk;
    property OnParentColorChange: TNotifyEvent read FOnParentColorChanged write FOnParentColorChanged;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  private
  {$IFDEF VCL}
    FAboutJVCL: TJVCLAboutInfo;
  published
    property AboutJVCL: TJVCLAboutInfo read FAboutJVCL write FAboutJVCL stored False;
  {$ENDIF VCL}
  {$IFDEF VisualCLX}
    FAboutJVCLX: TJVCLAboutInfo;
  published
    property AboutJVCLX: TJVCLAboutInfo read FAboutJVCLX write FAboutJVCLX stored False;
  {$ENDIF VisuaLCLX}
  protected
    procedure DoGetDlgCode(var Code: TDlgCodes); virtual;
    procedure DoSetFocus(FocusedWnd: HWND); dynamic;
    procedure DoKillFocus(FocusedWnd: HWND); dynamic;
    procedure DoBoundsChanged; dynamic;
    function DoPaintBackground(Canvas: TCanvas; Param: Integer): Boolean; virtual;
  {$IFDEF VisualCLX}
  private
    FCanvas: TCanvas;
  protected
    procedure Paint; virtual;
    property Canvas: TCanvas read FCanvas;
  {$ENDIF VisualCLX}
  end;
  TJvExPubBitBtn = class(TJvExBitBtn)
  {$IFDEF VCL}
  published
    property BiDiMode;
    property DragCursor;
    property DragKind;
    property DragMode;
    property ParentBiDiMode;
    property OnEndDock;
    property OnStartDock;
  {$ENDIF VCL}
  end;
  

implementation

{$IFDEF VCL}
procedure TJvExSpeedButton.Dispatch(var Msg);
begin
  DispatchMsg(Self, Msg);
end;

procedure TJvExSpeedButton.VisibleChanged;
begin
  InheritMsg(Self, CM_VISIBLECHANGED);
end;

procedure TJvExSpeedButton.EnabledChanged;
begin
  InheritMsg(Self, CM_ENABLEDCHANGED);
end;

procedure TJvExSpeedButton.TextChanged;
begin
  InheritMsg(Self, CM_TEXTCHANGED);
end;

procedure TJvExSpeedButton.FontChanged;
begin
  InheritMsg(Self, CM_FONTCHANGED);
end;

procedure TJvExSpeedButton.ColorChanged;
begin
  InheritMsg(Self, CM_COLORCHANGED);
end;

procedure TJvExSpeedButton.ParentColorChanged;
begin
  InheritMsg(Self, CM_PARENTCOLORCHANGED);
  if Assigned(FOnParentColorChanged) then
    FOnParentColorChanged(Self);
end;

procedure TJvExSpeedButton.ParentFontChanged;
begin
  InheritMsg(Self, CM_PARENTFONTCHANGED);
end;

procedure TJvExSpeedButton.ParentShowHintChanged;
begin
  InheritMsg(Self, CM_PARENTSHOWHINTCHANGED);
end;

function TJvExSpeedButton.WantKey(Key: Integer; Shift: TShiftState;
  const KeyText: WideString): Boolean;
begin
  Result := InheritMsg(Self, CM_DIALOGCHAR, Word(Key), ShiftStateToKeyData(Shift)) <> 0;
end;

function TJvExSpeedButton.HintShow(var HintInfo: THintInfo): Boolean;
begin
  Result := InheritMsg(Self, CM_HINTSHOW, 0, Integer(@HintInfo)) <> 0;
end;

function TJvExSpeedButton.HitTest(X, Y: Integer): Boolean;
begin
  Result := InheritMsg(Self, CM_HITTEST, 0, Integer(PointToSmallPoint(Point(X, Y)))) <> 0;
end;

procedure TJvExSpeedButton.MouseEnter(Control: TControl);
begin
  if (not FMouseOver) and not (csDesigning in ComponentState) then
  begin
    FMouseOver := True;
    FSavedHintColor := Application.HintColor;
    if FHintColor <> clNone then
      Application.HintColor := FHintColor;
  end;
  InheritMsg(Self, CM_MOUSEENTER, 0, Integer(Control));
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
end;

procedure TJvExSpeedButton.MouseLeave(Control: TControl);
begin
  if FMouseOver then
  begin
    FMouseOver := False;
    Application.HintColor := FSavedHintColor;
  end;
  InheritMsg(Self, CM_MOUSELEAVE, 0, Integer(Control));
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
end;

{$IFNDEF HASAUTOSIZE}
 {$IFNDEF COMPILER6_UP}
procedure TJvExSpeedButton.SetAutoSize(Value: Boolean);
begin
  TOpenControl_SetAutoSize(Self, Value);
end;
 {$ENDIF !COMPILER6_UP}
{$ENDIF !HASAUTOSIZE}
{$ENDIF VCL}
{$IFDEF VisualCLX}
procedure TJvExSpeedButton.MouseEnter(Control: TControl);
begin
  if (not FMouseOver) and not (csDesigning in ComponentState) then
  begin
    FMouseOver := True;
    FSavedHintColor := Application.HintColor;
    if FHintColor <> clNone then
      Application.HintColor := FHintColor;
  end;
  inherited MouseEnter(Control);
  {$IF not declared(PatchedVCLX)}
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
  {$IFEND}
end;

procedure TJvExSpeedButton.MouseLeave(Control: TControl);
begin
  if FMouseOver then
  begin
    FMouseOver := False;
    Application.HintColor := FSavedHintColor;
  end;
  inherited MouseLeave(Control);
  {$IF not declared(PatchedVCLX)}
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
  {$IFEND}
end;

procedure TJvExSpeedButton.ParentColorChanged;
begin
  inherited ParentColorChanged;
  if Assigned(FOnParentColorChanged) then
    FOnParentColorChanged(Self);
end;
{$ENDIF VisualCLX}
procedure TJvExSpeedButton.CMFocusChanged(var Msg: TCMFocusChanged);
begin
  inherited;
  DoFocusChanged(Msg.Sender);
end;

procedure TJvExSpeedButton.DoFocusChanged(Control: TWinControl);
begin
end;

constructor TJvExSpeedButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHintColor := clInfoBk;
  
end;

destructor TJvExSpeedButton.Destroy;
begin
  
  inherited Destroy;
end;
{$IFDEF VCL}
procedure TJvExBitBtn.Dispatch(var Msg);
begin
  DispatchMsg(Self, Msg);
end;

procedure TJvExBitBtn.VisibleChanged;
begin
  InheritMsg(Self, CM_VISIBLECHANGED);
end;

procedure TJvExBitBtn.EnabledChanged;
begin
  InheritMsg(Self, CM_ENABLEDCHANGED);
end;

procedure TJvExBitBtn.TextChanged;
begin
  InheritMsg(Self, CM_TEXTCHANGED);
end;

procedure TJvExBitBtn.FontChanged;
begin
  InheritMsg(Self, CM_FONTCHANGED);
end;

procedure TJvExBitBtn.ColorChanged;
begin
  InheritMsg(Self, CM_COLORCHANGED);
end;

procedure TJvExBitBtn.ParentColorChanged;
begin
  InheritMsg(Self, CM_PARENTCOLORCHANGED);
  if Assigned(FOnParentColorChanged) then
    FOnParentColorChanged(Self);
end;

procedure TJvExBitBtn.ParentFontChanged;
begin
  InheritMsg(Self, CM_PARENTFONTCHANGED);
end;

procedure TJvExBitBtn.ParentShowHintChanged;
begin
  InheritMsg(Self, CM_PARENTSHOWHINTCHANGED);
end;

function TJvExBitBtn.WantKey(Key: Integer; Shift: TShiftState;
  const KeyText: WideString): Boolean;
begin
  Result := InheritMsg(Self, CM_DIALOGCHAR, Word(Key), ShiftStateToKeyData(Shift)) <> 0;
end;

function TJvExBitBtn.HintShow(var HintInfo: THintInfo): Boolean;
begin
  Result := InheritMsg(Self, CM_HINTSHOW, 0, Integer(@HintInfo)) <> 0;
end;

function TJvExBitBtn.HitTest(X, Y: Integer): Boolean;
begin
  Result := InheritMsg(Self, CM_HITTEST, 0, Integer(PointToSmallPoint(Point(X, Y)))) <> 0;
end;

procedure TJvExBitBtn.MouseEnter(Control: TControl);
begin
  if (not FMouseOver) and not (csDesigning in ComponentState) then
  begin
    FMouseOver := True;
    FSavedHintColor := Application.HintColor;
    if FHintColor <> clNone then
      Application.HintColor := FHintColor;
  end;
  InheritMsg(Self, CM_MOUSEENTER, 0, Integer(Control));
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
end;

procedure TJvExBitBtn.MouseLeave(Control: TControl);
begin
  if FMouseOver then
  begin
    FMouseOver := False;
    Application.HintColor := FSavedHintColor;
  end;
  InheritMsg(Self, CM_MOUSELEAVE, 0, Integer(Control));
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
end;

{$IFNDEF HASAUTOSIZE}
 {$IFNDEF COMPILER6_UP}
procedure TJvExBitBtn.SetAutoSize(Value: Boolean);
begin
  TOpenControl_SetAutoSize(Self, Value);
end;
 {$ENDIF !COMPILER6_UP}
{$ENDIF !HASAUTOSIZE}
procedure TJvExBitBtn.CursorChanged;
begin
  InheritMsg(Self, CM_CURSORCHANGED);
end;

procedure TJvExBitBtn.ShowHintChanged;
begin
  InheritMsg(Self, CM_SHOWHINTCHANGED);
end;

procedure TJvExBitBtn.ShowingChanged;
begin
  InheritMsg(Self, CM_SHOWINGCHANGED);
end;

procedure TJvExBitBtn.ControlsListChanging(Control: TControl; Inserting: Boolean);
begin
  Control_ControlsListChanging(Self, Control, Inserting);
end;

procedure TJvExBitBtn.ControlsListChanged(Control: TControl; Inserting: Boolean);
begin
  Control_ControlsListChanged(Self, Control, Inserting);
end;

{$IFDEF JVCLThemesEnabledD56}
function TJvExBitBtn.GetParentBackground: Boolean;
begin
  Result := JvThemes.GetParentBackground(Self);
end;

procedure TJvExBitBtn.SetParentBackground(Value: Boolean);
begin
  JvThemes.SetParentBackground(Self, Value);
end;
{$ENDIF JVCLThemesEnabledD56}
{$ENDIF VCL}
{$IFDEF VisualCLX}
procedure TJvExBitBtn.MouseEnter(Control: TControl);
begin
  if (not FMouseOver) and not (csDesigning in ComponentState) then
  begin
    FMouseOver := True;
    FSavedHintColor := Application.HintColor;
    if FHintColor <> clNone then
      Application.HintColor := FHintColor;
  end;
  inherited MouseEnter(Control);
  {$IF not declared(PatchedVCLX)}
  if Assigned(FOnMouseEnter) then
    FOnMouseEnter(Self);
  {$IFEND}
end;

procedure TJvExBitBtn.MouseLeave(Control: TControl);
begin
  if FMouseOver then
  begin
    FMouseOver := False;
    Application.HintColor := FSavedHintColor;
  end;
  inherited MouseLeave(Control);
  {$IF not declared(PatchedVCLX)}
  if Assigned(FOnMouseLeave) then
    FOnMouseLeave(Self);
  {$IFEND}
end;

procedure TJvExBitBtn.ParentColorChanged;
begin
  inherited ParentColorChanged;
  if Assigned(FOnParentColorChanged) then
    FOnParentColorChanged(Self);
end;
procedure TJvExBitBtn.Painting(Sender: QObjectH; EventRegion: QRegionH);
begin
  if WidgetControl_Painting(Self, Canvas, EventRegion) <> nil then
  begin // returns an interface
    DoPaintBackground(Canvas, 0);
    Paint;
  end;
end;

function TJvExBitBtn.NeedKey(Key: Integer; Shift: TShiftState;
  const KeyText: WideString): Boolean;
begin
  Result := TWidgetControl_NeedKey(Self, Key, Shift, KeyText,
    inherited NeedKey(Key, Shift, KeyText));
end;

procedure TJvExBitBtn.BoundsChanged;
begin
  inherited BoundsChanged;
  DoBoundsChanged;
end;
{$ENDIF VisualCLX}
procedure TJvExBitBtn.CMFocusChanged(var Msg: TCMFocusChanged);
begin
  inherited;
  DoFocusChanged(Msg.Sender);
end;

procedure TJvExBitBtn.DoFocusChanged(Control: TWinControl);
begin
end;
procedure TJvExBitBtn.DoBoundsChanged;
begin
end;

procedure TJvExBitBtn.DoGetDlgCode(var Code: TDlgCodes);
begin
end;

procedure TJvExBitBtn.DoSetFocus(FocusedWnd: HWND);
begin
end;

procedure TJvExBitBtn.DoKillFocus(FocusedWnd: HWND);
begin
end;

function TJvExBitBtn.DoPaintBackground(Canvas: TCanvas; Param: Integer): Boolean;
begin
  {$IFDEF VCL}
  Result := InheritMsg(Self, WM_ERASEBKGND, Canvas.Handle, Param) <> 0;
  {$ENDIF VCL}
  {$IFDEF VisualCLX}
  Result := False; // Qt allways paints the background
  {$ENDIF VisualCLX}
end;

{$IFDEF VCL}
constructor TJvExBitBtn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHintColor := clInfoBk;
  
end;

destructor TJvExBitBtn.Destroy;
begin
  
  inherited Destroy;
end;
{$ENDIF VCL}
{$IFDEF VisualCLX}
constructor TJvExBitBtn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCanvas := TControlCanvas.Create;
  TControlCanvas(FCanvas).Control := Self;
  
end;

destructor TJvExBitBtn.Destroy;
begin
  
  FCanvas.Free;
  inherited Destroy;
end;

procedure TJvExBitBtn.Paint;
begin
  WidgetControl_DefaultPaint(Self, Canvas);
end;
{$ENDIF VisualCLX}

end.
