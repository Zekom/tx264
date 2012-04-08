unit UnitAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ShellAPI;

type
  TAboutForm = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    CloseBtn: TButton;
    HomepageBtn: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseBtnClick(Sender: TObject);
    procedure HomepageBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

const
  Build = '420';

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

  Label1.Caption := 'TX264 0.2 Alpha Build: ' + Build;

end;

procedure TAboutForm.HomepageBtnClick(Sender: TObject);
begin

  ShellExecute(Application.Handle, 'open',
    'https://sourceforge.net/projects/tx264/', nil, nil, SW_SHOWNORMAL);

end;

end.
