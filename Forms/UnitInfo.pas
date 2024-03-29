unit UnitInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sSkinProvider, sListBox, Vcl.Buttons, sBitBtn, Vcl.ComCtrls;

type
  TInfoForm = class(TForm)
    CloseBtn: TsBitBtn;
    SaveDialog1: TSaveDialog;
    SaveBtn: TsBitBtn;
    InfoList: TListView;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure InfoListAdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    InfoTMP: TStringList;
  end;

var
  InfoForm: TInfoForm;

implementation

{$R *.dfm}

procedure TInfoForm.CloseBtnClick(Sender: TObject);
begin

  Self.Close;

end;

procedure TInfoForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  InfoList.Items.Clear;
  InfoTMP.Clear;

end;

procedure TInfoForm.FormCreate(Sender: TObject);
begin

  InfoTMP := TStringList.Create;

end;

procedure TInfoForm.FormDestroy(Sender: TObject);
begin

  FreeAndNil(InfoTMP);

end;

procedure TInfoForm.FormShow(Sender: TObject);
begin
Self.Color := clInactiveCaption;
end;

procedure TInfoForm.InfoListAdvancedCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
begin

  if Item.SubItems[0] = '' then
  begin
    Sender.Canvas.Font.Style := [fsBold];
  end
  else
  begin
    Sender.Canvas.Font.Style := [];
  end;

end;

procedure TInfoForm.SaveBtnClick(Sender: TObject);
begin

  if InfoList.Items.Count > 0 then
  begin

    if SaveDialog1.Execute then
    begin
      InfoTMP.SaveToFile(SaveDialog1.FileName);
    end;

  end;

end;

end.
