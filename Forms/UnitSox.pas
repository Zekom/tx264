unit UnitSox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, sBitBtn,
  Vcl.Mask, JvExMask, JvSpin, sComboBox, sCheckBox, Inifiles, sLabel;

type
  TSoXForm = class(TForm)
    NormBtn: TsCheckBox;
    EnableBtn: TsCheckBox;
    VolumeBtn: TsCheckBox;
    ChannelList: TsComboBox;
    SampleList: TsComboBox;
    VolumeEdit: TJvSpinEdit;
    CloseBtn: TsBitBtn;
    ThreadBtn: TsCheckBox;
    DRCBtn: TsCheckBox;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    DecayEdit: TJvSpinEdit;
    AttackEdit: TJvSpinEdit;
    procedure CloseBtnClick(Sender: TObject);
    procedure VolumeBtnClick(Sender: TObject);
    procedure EnableBtnClick(Sender: TObject);

    procedure LoadSettings();
    procedure SaveSettings();
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DRCBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SoXForm: TSoXForm;

implementation

{$R *.dfm}

uses UnitMain;

procedure TSoXForm.CloseBtnClick(Sender: TObject);
begin

  Self.Close;

end;

procedure TSoXForm.DRCBtnClick(Sender: TObject);
begin

  AttackEdit.Enabled := DRCBtn.Checked;
  DecayEdit.Enabled := DRCBtn.Checked;

end;

procedure TSoXForm.EnableBtnClick(Sender: TObject);
begin

  NormBtn.Enabled := EnableBtn.Checked;
  VolumeBtn.Enabled := EnableBtn.Checked;
  VolumeEdit.Enabled := EnableBtn.Checked;
  ThreadBtn.Enabled := EnableBtn.Checked;
  SampleList.Enabled := EnableBtn.Checked;
  ChannelList.Enabled := EnableBtn.Checked;
  DRCBtn.Enabled := EnableBtn.Checked;

  if EnableBtn.Checked then
  begin
    VolumeBtn.OnClick(Self);
    DRCBtn.OnClick(Self);
  end;

end;

procedure TSoXForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  SaveSettings();

end;

procedure TSoXForm.FormCreate(Sender: TObject);
begin

  LoadSettings();

end;

procedure TSoXForm.LoadSettings;
var
  SettingsFile: TIniFile;
begin

  SettingsFile := TIniFile.Create(MainForm.AppFolder + 'settings.ini');
  try

    with SettingsFile do
    begin
      SampleList.ItemIndex := ReadInteger('sox', 'Sample', 0);
      ChannelList.ItemIndex := ReadInteger('soc', 'Channel', 0);

      EnableBtn.Checked := ReadBool('sox', 'Enable', False);
      NormBtn.Checked := ReadBool('sox', 'Norm', False);
      VolumeBtn.Checked := ReadBool('sox', 'Vol', False);
      VolumeEdit.Text := ReadString('sox', 'VolEdit', '1,00');
      ThreadBtn.Checked := ReadBool('sox', 'Thread', False);

      DRCBtn.Checked := ReadBool('sox', 'DRC', False);
      AttackEdit.Text := ReadString('sox', 'DRC1', '0,30');
      DecayEdit.Text := ReadString('sox', 'DRC2', '0.80');
    end;

  finally
    SettingsFile.Free;

    EnableBtn.OnClick(Self);
  end;

end;

procedure TSoXForm.SaveSettings;
var
  SettingsFile: TIniFile;
begin

  SettingsFile := TIniFile.Create(MainForm.AppFolder + 'settings.ini');
  try

    with SettingsFile do
    begin
      WriteInteger('sox', 'Sample', SampleList.ItemIndex);
      WriteInteger('soc', 'Channel', ChannelList.ItemIndex);

      WriteBool('sox', 'Enable', EnableBtn.Checked);
      WriteBool('sox', 'Norm', NormBtn.Checked);
      WriteBool('sox', 'Vol', VolumeBtn.Checked);
      WriteString('sox', 'VolEdit', VolumeEdit.Text);
      WriteBool('sox', 'Thread', ThreadBtn.Checked);

      WriteBool('sox', 'DRC', DRCBtn.Checked);
      WriteString('sox', 'DRC1', AttackEdit.Text);
      WriteString('sox', 'DRC2', DecayEdit.Text);
    end;

  finally
    SettingsFile.Free;
  end;

end;

procedure TSoXForm.VolumeBtnClick(Sender: TObject);
begin

  VolumeEdit.Enabled := VolumeBtn.Checked;

end;

end.
