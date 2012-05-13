unit UnitLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvExStdCtrls, JvListBox, Vcl.ComCtrls, sSkinProvider,
  Vcl.ExtCtrls, sPanel, sListBox, Vcl.Buttons, sBitBtn;

type
  TLogForm = class(TForm)
    OutputList: TsListBox;
    SaveBtn: TsBitBtn;
    ClearBtn: TsBitBtn;
    SaveDialog1: TSaveDialog;
    CloseBtn: TsBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    FullOutputList: TsListBox;
    sSkinProvider1: TsSkinProvider;
    procedure ClearBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure OutputListAddString(Sender: TObject; Item: string);
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

uses UnitMain;

procedure TLogForm.ClearBtnClick(Sender: TObject);
begin

  case PageControl1.ActivePageIndex of
    0:
      begin
        if OutputList.Items.Count > 0 then
        begin
          OutputList.Items.Clear;
          MainForm.UpdateListboxScrollBox(OutputList);
        end;
      end;
    1:
      begin
        if FullOutputList.Items.Count > 0 then
        begin
          FullOutputList.Items.Clear;
          MainForm.UpdateListboxScrollBox(FullOutputList)
        end;
      end;
    // 2:
    // begin
    // if MplayerOutputList.Items.Count > 0 then
    // begin
    // MplayerOutputList.Items.Clear;
    // MainForm.UpdateListboxScrollBox(MplayerOutputList)
    // end;
    // end;
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

procedure TLogForm.OutputListAddString(Sender: TObject; Item: string);
begin

  OutputList.TopIndex := OutputList.Items.Count - 1;

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
