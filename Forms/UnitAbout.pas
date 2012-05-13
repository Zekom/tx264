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
    sSkinProvider1: TsSkinProvider;
    Memo1: TMemo;
    sButton1: TsButton;
    sButton2: TsButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure HomepageBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

const
  Build = '1050';

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

procedure TAboutForm.FormShow(Sender: TObject);
begin

  Label1.Caption := 'TX264 0.7.1 Alpha Build: ' + Build;

end;

procedure TAboutForm.HomepageBtnClick(Sender: TObject);
begin

  ShellExecute(Application.Handle, 'open',
    'https://sourceforge.net/projects/tx264/', nil, nil, SW_SHOWNORMAL);

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
