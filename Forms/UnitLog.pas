unit UnitLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvListBox, Vcl.ComCtrls, sSkinProvider,
  Vcl.ExtCtrls, sPanel, sListBox, Vcl.Buttons, sBitBtn, JvExControls,
  JvEditorCommon, JvUnicodeEditor, JvUnicodeHLEditor;

type
  TLogForm = class(TForm)
    SaveBtn: TsBitBtn;
    ClearBtn: TsBitBtn;
    SaveDialog1: TSaveDialog;
    CloseBtn: TsBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    sSkinProvider1: TsSkinProvider;
    OutputList: TMemo;
    FullOutputList: TMemo;
    procedure ClearBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OutputListAddString(Sender: TObject; Item: string);
    procedure FullOutputListChange(Sender: TObject);
    procedure OutputListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FullOutputListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure OutputListChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogForm: TLogForm;

implementation

{$R *.dfm}

uses UnitMain;

procedure TLogForm.ClearBtnClick(Sender: TObject);
begin

  case PageControl1.ActivePageIndex of
    0:
      begin
        if OutputList.Lines.Count > 0 then
        begin
          OutputList.Lines.Clear;
        end;
      end;
    1:
      begin
        if FullOutputList.Lines.Count > 0 then
        begin
          FullOutputList.Lines.Clear;
        end;
      end;
  end;

end;

procedure TLogForm.CloseBtnClick(Sender: TObject);
begin

  Self.Close;

end;

procedure TLogForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_ESCAPE then
  begin
    CloseBtn.OnClick(Self);
  end;

end;

procedure TLogForm.FullOutputListChange(Sender: TObject);
begin

  SendMessage(FullOutputList.Handle, WM_VSCROLL, SB_BOTTOM, 0);

end;

procedure TLogForm.FullOutputListDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin

  if (Control as TsListBox).Items.Count < 1 then
    Exit;

  with Control as TsListBox, Canvas do
  begin

    // item selected
    if odSelected in State then
    begin

      Brush.Color := Self.Color;
      Font.Color := clBlack;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top + 2, Items[Index])

    end
    else
    begin
      // item not selected
      Brush.Color := (Control as TsListBox).Color;
      Font.Color := (Control as TsListBox).Font.Color;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top + 2, Items[Index])
    end;

  end;

end;

procedure TLogForm.OutputListAddString(Sender: TObject; Item: string);
begin

//  OutputList.TopIndex := OutputList.Items.Count - 1;

end;

procedure TLogForm.OutputListChange(Sender: TObject);
begin

  SendMessage(OutputList.Handle, WM_VSCROLL, SB_BOTTOM, 0);

end;

procedure TLogForm.OutputListDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin

  if (Control as TsListBox).Items.Count < 1 then
    Exit;

  with Control as TsListBox, Canvas do
  begin

    // item selected
    if odSelected in State then
    begin

      Brush.Color := Self.Color;
      Font.Color := clBlack;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top + 2, Items[Index])

    end
    else
    begin
      // item not selected
      Brush.Color := (Control as TsListBox).Color;
      Font.Color := (Control as TsListBox).Font.Color;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top + 2, Items[Index])
    end;

  end;

end;

procedure TLogForm.SaveBtnClick(Sender: TObject);
begin

  case PageControl1.ActivePageIndex of
    0:
      begin
        if OutputList.Lines.Count > 0 then
        begin
          if SaveDialog1.Execute then
          begin
            OutputList.Lines.SaveToFile(SaveDialog1.FileName);
          end;
        end;
      end;
    1:
      begin
        if FullOutputList.Lines.Count > 0 then
        begin
          if SaveDialog1.Execute then
          begin
            FullOutputList.Lines.SaveToFile(SaveDialog1.FileName);
          end;
        end;
      end;
    // 2:
    // begin
    // if MplayerOutputList.Items.Count > 0 then
    // begin
    // if SaveDialog1.Execute then
    // begin
    // MplayerOutputList.Items.SaveToFile(SaveDialog1.FileName);
    // end;
    // end;
    // end;
  end;

end;

end.
