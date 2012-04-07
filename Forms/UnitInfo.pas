unit UnitInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    CloseBtn: TButton;
    InfoList: TListBox;
    SaveDialog1: TSaveDialog;
    SaveBtn: TButton;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure InfoListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.CloseBtnClick(Sender: TObject);
begin

  Self.Close;

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  InfoList.Items.Clear;

end;

procedure TForm2.InfoListDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin

  with Control as TListBox, Canvas do
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
      Brush.Color := (Control as TListBox).Color;
      Font.Color := (Control as TListBox).Font.Color;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top, Items[Index])

    end;

  end;

end;

procedure TForm2.SaveBtnClick(Sender: TObject);
begin

  if InfoList.Items.Count > 0 then
  begin

    if SaveDialog1.Execute then
    begin
      InfoList.Items.SaveToFile(SaveDialog1.FileName);
    end;

  end;

end;

end.
