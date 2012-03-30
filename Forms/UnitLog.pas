unit UnitLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvListBox;

type
  TForm3 = class(TForm)
    OutputList: TJvListBox;
    SaveBtn: TButton;
    ClearBtn: TButton;
    SaveDialog1: TSaveDialog;
    CloseBtn: TButton;
    procedure ClearBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ClearBtnClick(Sender: TObject);
begin

  if OutputList.Items.Count > 0 then
  begin
    OutputList.Items.Clear;
  end;

end;

procedure TForm3.CloseBtnClick(Sender: TObject);
begin

  Self.Close;

end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_ESCAPE then
  begin
    CloseBtn.OnClick(self);
  end;

end;

procedure TForm3.SaveBtnClick(Sender: TObject);
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
