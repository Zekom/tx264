unit UnitProgress;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons,
  sBitBtn, sSkinProvider, sGauge, UbuntuProgress;

type
  TProgressForm = class(TForm)
    ProgressLabel: TLabel;
    AbortBtn: TsBitBtn;
    ProgressBar: TProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AbortBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProgressForm: TProgressForm;

implementation

{$R *.dfm}

uses UnitMain;

procedure TProgressForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  ProgressBar.Position := 0;
  ProgressLabel.Caption := 'Adding files...';

end;

procedure TProgressForm.FormShow(Sender: TObject);
begin
  Self.Color := clInactiveCaption;
end;

procedure TProgressForm.AbortBtnClick(Sender: TObject);
begin

  if MainForm.FileSearch.Searching then
  begin
    MainForm.FileSearch.Abort;
  end
  else
  begin
    MainForm.AddingStopped := True;
  end;

end;

end.
