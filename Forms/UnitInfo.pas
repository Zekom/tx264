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
