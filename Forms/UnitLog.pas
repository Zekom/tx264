unit UnitLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvListBox;

type
  TLogForm = class(TForm)
    OutputList: TJvListBox;
    SaveBtn: TButton;
    ClearBtn: TButton;
    SaveDialog1: TSaveDialog;
    CloseBtn: TButton;
    procedure ClearBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OutputListAddString(Sender: TObject; Item: string);
    procedure OutputListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
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

  if OutputList.Items.Count > 0 then
  begin
    OutputList.Items.Clear;
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

  if OutputList.Items.Count > 0 then
  begin

    if SaveDialog1.Execute then
    begin
      OutputList.Items.SaveToFile(SaveDialog1.FileName);
    end;

  end;

end;

end.
