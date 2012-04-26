unit UnitLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvListBox, Vcl.ComCtrls;

type
  TLogForm = class(TForm)
    OutputList: TJvListBox;
    SaveBtn: TButton;
    ClearBtn: TButton;
    SaveDialog1: TSaveDialog;
    CloseBtn: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    FullOutputList: TJvListBox;
    procedure ClearBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OutputListAddString(Sender: TObject; Item: string);
    procedure OutputListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FullOutputListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FullOutputListChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogForm: TLogForm;

implementation

{$R *.dfm}

procedure TLogForm.ClearBtnClick(Sender: TObject);
begin

  case PageControl1.ActivePageIndex of
    0:
      begin
        if OutputList.Items.Count > 0 then
        begin
          OutputList.Items.Clear;
        end;
      end;
    1:
      begin
        if FullOutputList.Items.Count > 0 then
        begin
          FullOutputList.Items.Clear;
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

  FullOutputList.TopIndex := FullOutputList.Items.Count - 1;

end;

procedure TLogForm.FullOutputListDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin

  with Control as TJvListBox, Canvas do
  begin

    // item selected
    if odSelected in State then
    begin

      Brush.Color := Self.Color;
      Font.Color := clBlack;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top, Items[Index])

    end
    else
    begin
      // item not selected
      Brush.Color := (Control as TJvListBox).Color;
      Font.Color := (Control as TJvListBox).Font.Color;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top, Items[Index])

    end;

  end;

end;

procedure TLogForm.OutputListAddString(Sender: TObject; Item: string);
begin

  OutputList.TopIndex := OutputList.Items.Count - 1;

end;

procedure TLogForm.OutputListDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin

  with Control as TJvListBox, Canvas do
  begin

    // item selected
    if odSelected in State then
    begin

      Brush.Color := Self.Color;
      Font.Color := clBlack;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top, Items[Index])

    end
    else
    begin
      // item not selected
      Brush.Color := (Control as TJvListBox).Color;
      Font.Color := (Control as TJvListBox).Font.Color;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top, Items[Index])

    end;

  end;

end;

procedure TLogForm.SaveBtnClick(Sender: TObject);
begin

  case PageControl1.ActivePageIndex of
    0:
      begin
        if OutputList.Items.Count > 0 then
        begin
          if SaveDialog1.Execute then
          begin
            OutputList.Items.SaveToFile(SaveDialog1.FileName);
          end;
        end;
      end;
    1:
      begin
        if FullOutputList.Items.Count > 0 then
        begin
          if SaveDialog1.Execute then
          begin
            FullOutputList.Items.SaveToFile(SaveDialog1.FileName);
          end;
        end;
      end;
  end;

end;

end.
