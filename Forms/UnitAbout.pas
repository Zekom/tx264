unit UnitAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acPNG, ExtCtrls, StdCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

uses UnitMain;

{$R *.dfm}

procedure TAboutForm.CloseBtnClick(Sender: TObject);
begin

  Self.Close;

end;

procedure TAboutForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  Form1.Enabled := True;

end;

end.
