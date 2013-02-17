unit UnitAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ShellAPI, sSkinProvider, sButton, Vcl.Buttons,
  sBitBtn;

type
  TAboutForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CloseBtn: TsBitBtn;
    HomepageBtn: TsBitBtn;
    Memo1: TMemo;
    sButton1: TsButton;
    sButton2: TsButton;
    Memo2: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure HomepageBtnClick(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

const
  Build = '3057';

implementation

uses UnitMain;

{$R *.dfm}

procedure TAboutForm.CloseBtnClick(Sender: TObject);
begin

  Self.Close;

end;

procedure TAboutForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  MainForm.Enabled := True;

end;

procedure TAboutForm.FormCreate(Sender: TObject);
begin
  Label1.Caption := 'TX264 0.9.4 Build: ' + Build;
  Self.Color := clInactiveCaption;
end;

procedure TAboutForm.HomepageBtnClick(Sender: TObject);
begin

  ShellExecute(Application.Handle, 'open',
    'http://tx264.sourceforge.net/', nil, nil, SW_SHOWNORMAL);

end;

procedure TAboutForm.sButton1Click(Sender: TObject);
begin

  ShellExecute(Application.Handle, 'open',
    'http://forum.doom9.org/showthread.php?t=164606', nil, nil, SW_SHOWNORMAL);

end;

procedure TAboutForm.sButton2Click(Sender: TObject);
begin

  ShellExecute(Application.Handle, 'open',
    'http://doom10.org/index.php?topic=2194.0', nil, nil, SW_SHOWNORMAL);

end;

end.
