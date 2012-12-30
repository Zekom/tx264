unit UnitAdvancedOptions;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, JvExMask, JvSpin, Inifiles, sSkinProvider,
  Vcl.Buttons, sBitBtn, sComboBox, sCheckBox, sPanel;

type
  TAdvancedOptionsForm = class(TForm)
    PageControl: TPageControl;
    CloseBtn: TsBitBtn;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    FastFirstPassBtn: TsCheckBox;
    MBTreeRCBtn: TsCheckBox;
    Label1: TLabel;
    FrameLookEdit: TJvSpinEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    MEMethodList: TsComboBox;
    Label2: TLabel;
    Label3: TLabel;
    MESubpixelEdit: TJvSpinEdit;
    MEMaxsearhcRangeEdit: TJvSpinEdit;
    Label4: TLabel;
    MEPredictModeList: TsComboBox;
    MeWeightPList: TsComboBox;
    MeWeightBBtn: TsCheckBox;
    MEConstrainedBtn: TsCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Prediction1Btn: TsCheckBox;
    Prediction2Btn: TsCheckBox;
    Prediction3Btn: TsCheckBox;
    Prediction4Btn: TsCheckBox;
    Prediction5Btn: TsCheckBox;
    Prediction6Btn: TsCheckBox;
    GroupBox5: TGroupBox;
    FrameCABACBtn: TsCheckBox;
    FrameLoopBtn: TsCheckBox;
    FrameOpenGOPBtn: TsCheckBox;
    FrameInterlacedBtn: TsCheckBox;
    FrameInterlacedList: TsComboBox;
    FrameGopList: TsComboBox;
    FrameMaxRefEdit: TJvSpinEdit;
    FrameLoopThrEdit: TJvSpinEdit;
    FrameLoopStrEdit: TJvSpinEdit;
    Label7: TLabel;
    GroupBox6: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    FrameAdaptiveBList: TsComboBox;
    FrameRefList: TsComboBox;
    FrameBBiasEdit: TJvSpinEdit;
    FrameMaxConBEdit: TJvSpinEdit;
    GroupBox7: TGroupBox;
    FrameIIntraBtn: TsCheckBox;
    FrameIGOPMinEdit: TJvSpinEdit;
    FrameIThresholdEdit: TJvSpinEdit;
    FrameIGOPMaxEdit: TJvSpinEdit;
    Label12: TLabel;
    Label13: TLabel;
    GroupBox8: TGroupBox;
    AnalysisMixedRefBtn: TsCheckBox;
    AnalysisChromaBtn: TsCheckBox;
    AnalysisTrellisBtn: TsCheckBox;
    AnalysisFastSkipBtn: TsCheckBox;
    AnalysisDCTBtn: TsCheckBox;
    AnalysisTrellisList: TsComboBox;
    AnalysisNoiseEdit: TJvSpinEdit;
    AnalysisPTrellistEdit: TJvSpinEdit;
    AnalysisPRateEdit: TJvSpinEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox9: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    AnalysisLuma2Edit: TJvSpinEdit;
    AnalysisLuma1Edit: TJvSpinEdit;
    AnalysisMatrixList: TsComboBox;
    Label19: TLabel;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    MinQuantEdit: TJvSpinEdit;
    MaxQuantEdit: TJvSpinEdit;
    QauntStepEdit: TJvSpinEdit;
    IPQuantEdit: TJvSpinEdit;
    PBQuantEdit: TJvSpinEdit;
    CLQuantEdit: TJvSpinEdit;
    QuantCurve1Edit: TJvSpinEdit;
    QuantCurve2Edit: TJvSpinEdit;
    QuantCurve3Edit: TJvSpinEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    VarianceAQBtn: TsCheckBox;
    VarianceAQList: TsComboBox;
    AdaptiveEdit: TJvSpinEdit;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    VBFMaxBitrateEdit: TJvSpinEdit;
    VBFBufferSizeEdit: TJvSpinEdit;
    VBFInitialEdit: TJvSpinEdit;
    Slice1Edit: TJvSpinEdit;
    Slice2Edit: TJvSpinEdit;
    Slice3Edit: TJvSpinEdit;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ResetBtn: TsBitBtn;
    procedure CloseBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrameLoopBtnClick(Sender: TObject);
    procedure FrameOpenGOPBtnClick(Sender: TObject);
    procedure FrameInterlacedBtnClick(Sender: TObject);
    procedure AnalysisTrellisBtnClick(Sender: TObject);
    procedure LoadOptions();
    procedure SaveOptions();
    procedure FormCreate(Sender: TObject);
    procedure VarianceAQBtnClick(Sender: TObject);
    procedure ResetBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FrameCABACBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdvancedOptionsForm: TAdvancedOptionsForm;

implementation

{$R *.dfm}

uses UnitMain;

procedure TAdvancedOptionsForm.AnalysisTrellisBtnClick(Sender: TObject);
begin

  AnalysisTrellisList.Enabled := AnalysisTrellisBtn.Checked;

end;

procedure TAdvancedOptionsForm.CloseBtnClick(Sender: TObject);
begin

  MainForm.Enabled := True;
  Self.Close;

end;

procedure TAdvancedOptionsForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  SaveOptions();
  MainForm.Enabled := True;
  MainForm.BringToFront;

end;

procedure TAdvancedOptionsForm.FormCreate(Sender: TObject);
begin

  LoadOptions();

end;

procedure TAdvancedOptionsForm.FormShow(Sender: TObject);
begin
  Self.Color := clInactiveCaption;
end;

procedure TAdvancedOptionsForm.FrameCABACBtnClick(Sender: TObject);
begin

  if FrameCABACBtn.Checked then
  begin
    AnalysisTrellisBtn.Enabled := True;
    AnalysisTrellisBtn.OnClick(Self);
  end
  else
  begin
    AnalysisTrellisBtn.Enabled := False;
    AnalysisTrellisList.Enabled := False;
  end;

end;

procedure TAdvancedOptionsForm.FrameInterlacedBtnClick(Sender: TObject);
begin

  FrameInterlacedList.Enabled := FrameInterlacedBtn.Checked;

end;

procedure TAdvancedOptionsForm.FrameLoopBtnClick(Sender: TObject);
begin

  FrameLoopThrEdit.Enabled := FrameLoopBtn.Checked;
  FrameLoopStrEdit.Enabled := FrameLoopBtn.Checked;

end;

procedure TAdvancedOptionsForm.FrameOpenGOPBtnClick(Sender: TObject);
begin

  FrameGopList.Enabled := FrameOpenGOPBtn.Checked;

end;

procedure TAdvancedOptionsForm.LoadOptions;
var
  SettingsFile: TIniFile;
begin

  SettingsFile := TIniFile.Create(MainForm.AppFolder + 'advanced.ini');

  with SettingsFile do
  begin
    try
      FastFirstPassBtn.Checked := ReadBool('RC', 'FastFirst', False);
      MBTreeRCBtn.Checked := ReadBool('RC', 'MBTree', True);
      FrameLookEdit.Text := ReadString('RC', 'Lookahead', '40');

      MEMethodList.ItemIndex := ReadInteger('ME', 'MeMethod', 1);
      MESubpixelEdit.Text := ReadString('ME', 'Subpixel', '7');
      MEMaxsearhcRangeEdit.Text := ReadString('ME', 'MeRange', '16');
      MEPredictModeList.ItemIndex := ReadInteger('ME', 'MePredict', 1);
      MeWeightPList.ItemIndex := ReadInteger('ME', 'MeWP', 1);
      MeWeightBBtn.Checked := ReadBool('ME', 'MEWeP', True);
      MEConstrainedBtn.Checked := ReadBool('ME', 'MeCons', False);

      Prediction1Btn.Checked := ReadBool('Partition', '1', True);
      Prediction2Btn.Checked := ReadBool('Partition', '2', True);
      Prediction3Btn.Checked := ReadBool('Partition', '3', True);
      Prediction4Btn.Checked := ReadBool('Partition', '4', False);
      Prediction5Btn.Checked := ReadBool('Partition', '5', True);
      Prediction6Btn.Checked := ReadBool('Partition', '6', True);

      FrameCABACBtn.Checked := ReadBool('Frame', 'Cabac', True);
      FrameLoopBtn.Checked := ReadBool('Frame', 'loop', True);
      FrameLoopThrEdit.Text := ReadString('Frame', 'loop1', '0');
      FrameLoopStrEdit.Text := ReadString('Frame', 'loop2', '0');
      FrameOpenGOPBtn.Checked := ReadBool('Frame', 'gop', True);
      FrameGopList.ItemIndex := ReadInteger('Frame', 'gop2', 0);
      FrameInterlacedBtn.Checked := ReadBool('Frame', 'interlaced', True);
      FrameInterlacedList.ItemIndex := ReadInteger('Frame', 'interlaced2', 0);
      FrameMaxRefEdit.Text := ReadString('Frame', 'MaxRef', '3');
      FrameMaxConBEdit.Text := ReadString('Frame', 'MaxConB', '3');
      FrameBBiasEdit.Text := ReadString('Frame', 'BBias', '0');
      FrameAdaptiveBList.ItemIndex := ReadInteger('Frame', 'AdaptiveB', 1);
      FrameRefList.ItemIndex := ReadInteger('Frame', 'Ref', 1);
      // todo: I frame stuff!!!!

      AnalysisMixedRefBtn.Checked := ReadBool('Analysis', 'MixedRef', True);
      AnalysisChromaBtn.Checked := ReadBool('Analysis', 'Chroma', True);
      AnalysisTrellisBtn.Checked := ReadBool('Analysis', 'trellis', True);
      AnalysisFastSkipBtn.Checked := ReadBool('Analysis', 'skip', True);
      AnalysisDCTBtn.Checked := ReadBool('Analysis', 'dct', True);
      AnalysisTrellisList.ItemIndex := ReadInteger('Analysis', 'trellis2', 0);
      AnalysisMatrixList.ItemIndex := ReadInteger('Analysis', 'matrix', 0);
      AnalysisPTrellistEdit.Text := ReadString('Analysis', 'ptrellis1', '0,00');
      AnalysisPRateEdit.Text := ReadString('Analysis', 'ptrellis2', '1,00');
      AnalysisNoiseEdit.Text := ReadString('Analysis', 'noise', '0');
      AnalysisLuma1Edit.Text := ReadString('Analysis', 'luma1', '11');
      AnalysisLuma2Edit.Text := ReadString('Analysis', 'luma2', '21');

      MinQuantEdit.Text := ReadString('Quant', 'minquant', '0');
      MaxQuantEdit.Text := ReadString('Quant', 'maxquant', '51');
      QauntStepEdit.Text := ReadString('Quant', 'step', '4');
      IPQuantEdit.Text := ReadString('Quant', 'ip', '1,40');
      PBQuantEdit.Text := ReadString('Quant', 'pb', '1');
      CLQuantEdit.Text := ReadString('Quant', 'cl', '0');
      QuantCurve1Edit.Text := ReadString('Quant', 'curve1', '60');
      QuantCurve2Edit.Text := ReadString('Quant', 'curve2', '22,00');
      QuantCurve3Edit.Text := ReadString('Quant', 'curve3', '0,50');
      AdaptiveEdit.Text := ReadString('Quant', 'adap', '0,50');
      VarianceAQList.ItemIndex := ReadInteger('Quant', 'var', 0);
      VarianceAQBtn.Checked := ReadBool('Quant', 'var2', True);

      VBFMaxBitrateEdit.Text := ReadString('Advanced', 'vbf1', '0');
      VBFBufferSizeEdit.Text := ReadString('Advanced', 'vbf2', '0');
      VBFInitialEdit.Text := ReadString('Advanced', 'vbf3', '0,90');
      Slice1Edit.Text := ReadString('Advanced', 'slice1', '0');
      Slice2Edit.Text := ReadString('Advanced', 'slice2', '0');
      Slice3Edit.Text := ReadString('Advanced', 'slice3', '0');
    finally
      Free;

      FrameOpenGOPBtn.OnClick(Self);
      FrameInterlacedBtn.OnClick(Self);
      AnalysisTrellisBtn.OnClick(Self);
      VarianceAQBtn.OnClick(Self);
      FrameCABACBtn.OnClick(Self);
    end;

  end;

end;

procedure TAdvancedOptionsForm.ResetBtnClick(Sender: TObject);
begin

  if IDYES = Application.MessageBox('Reset these values to defaults?', 'Reset',
    MB_ICONQUESTION or MB_YESNO) then
  begin
    try
      FastFirstPassBtn.Checked := False;
      MBTreeRCBtn.Checked := True;
      FrameLookEdit.Text := '40';

      MEMethodList.ItemIndex := 1;
      MESubpixelEdit.Text := '7';
      MEMaxsearhcRangeEdit.Text := '16';
      MEPredictModeList.ItemIndex := 1;
      MeWeightPList.ItemIndex := 1;
      MeWeightBBtn.Checked := True;
      MEConstrainedBtn.Checked := False;

      Prediction1Btn.Checked := True;
      Prediction2Btn.Checked := True;
      Prediction3Btn.Checked := True;
      Prediction4Btn.Checked := False;
      Prediction5Btn.Checked := True;
      Prediction6Btn.Checked := True;

      FrameCABACBtn.Checked := True;
      FrameLoopBtn.Checked := True;
      FrameOpenGOPBtn.Checked := True;
      FrameGopList.ItemIndex := 0;
      FrameInterlacedBtn.Checked := True;
      FrameInterlacedList.ItemIndex := 0;
      FrameMaxRefEdit.Text := '3';
      FrameMaxConBEdit.Text := '3';
      FrameBBiasEdit.Text := '0';
      FrameAdaptiveBList.ItemIndex := 1;
      FrameRefList.ItemIndex := 1;
      // todo: I frame stuff!!!!

      AnalysisMixedRefBtn.Checked := True;
      AnalysisChromaBtn.Checked := True;
      AnalysisTrellisBtn.Checked := True;
      AnalysisFastSkipBtn.Checked := True;
      AnalysisDCTBtn.Checked := True;
      AnalysisTrellisList.ItemIndex := 0;
      AnalysisMatrixList.ItemIndex := 0;
      AnalysisPTrellistEdit.Text := '0,00';
      AnalysisPRateEdit.Text := '1,00';
      AnalysisNoiseEdit.Text := '0';
      AnalysisLuma1Edit.Text := '11';
      AnalysisLuma2Edit.Text := '21';

      MinQuantEdit.Text := '0';
      MaxQuantEdit.Text := '51';
      QauntStepEdit.Text := '4';
      IPQuantEdit.Text := '1,40';
      PBQuantEdit.Text := '1';
      CLQuantEdit.Text := '0';
      QuantCurve1Edit.Text := '60';
      QuantCurve2Edit.Text := '22,00';
      QuantCurve3Edit.Text := '0,50';
      AdaptiveEdit.Text := '0,50';
      VarianceAQList.ItemIndex := 0;
      VarianceAQBtn.Checked := True;

      VBFMaxBitrateEdit.Text := '0';
      VBFBufferSizeEdit.Text := '0';
      VBFInitialEdit.Text := '0,90';
      Slice1Edit.Text := '0';
      Slice2Edit.Text := '0';
      Slice3Edit.Text := '0';
    finally
      FrameOpenGOPBtn.OnClick(Self);
      FrameInterlacedBtn.OnClick(Self);
      AnalysisTrellisBtn.OnClick(Self);
      VarianceAQBtn.OnClick(Self);
      FrameCABACBtn.OnClick(Self);
    end;
  end;

end;

procedure TAdvancedOptionsForm.SaveOptions;
var
  SettingsFile: TIniFile;
begin

  SettingsFile := TIniFile.Create(MainForm.AppFolder + 'advanced.ini');

  with SettingsFile do
  begin
    try
      WriteBool('RC', 'FastFirst', FastFirstPassBtn.Checked);
      WriteBool('RC', 'MBTree', MBTreeRCBtn.Checked);
      WriteString('RC', 'Lookahead', FrameLookEdit.Text);

      WriteInteger('ME', 'MeMethod', MEMethodList.ItemIndex);
      WriteString('ME', 'Subpixel', MESubpixelEdit.Text);
      WriteString('ME', 'MeRange', MEMaxsearhcRangeEdit.Text);
      WriteInteger('ME', 'MePredict', MEPredictModeList.ItemIndex);
      WriteInteger('ME', 'MeWP', MeWeightPList.ItemIndex);
      WriteBool('ME', 'MEWeP', MeWeightBBtn.Checked);
      WriteBool('ME', 'MeCons', MEConstrainedBtn.Checked);

      WriteBool('Partition', '1', Prediction1Btn.Checked);
      WriteBool('Partition', '2', Prediction2Btn.Checked);
      WriteBool('Partition', '3', Prediction3Btn.Checked);
      WriteBool('Partition', '4', Prediction4Btn.Checked);
      WriteBool('Partition', '5', Prediction5Btn.Checked);
      WriteBool('Partition', '6', Prediction6Btn.Checked);

      WriteBool('Frame', 'Cabac', FrameCABACBtn.Checked);
      WriteBool('Frame', 'loop', FrameLoopBtn.Checked);
      WriteString('Frame', 'loop1', FrameLoopThrEdit.Text);
      WriteString('Frame', 'loop2', FrameLoopStrEdit.Text);
      WriteBool('Frame', 'gop', FrameOpenGOPBtn.Checked);
      WriteInteger('Frame', 'gop2', FrameGopList.ItemIndex);
      WriteBool('Frame', 'interlaced', FrameInterlacedBtn.Checked);
      WriteInteger('Frame', 'interlaced2', FrameInterlacedList.ItemIndex);
      WriteString('Frame', 'MaxRef', FrameMaxRefEdit.Text);
      WriteString('Frame', 'MaxConB', FrameMaxConBEdit.Text);
      WriteString('Frame', 'BBias', FrameBBiasEdit.Text);
      WriteInteger('Frame', 'AdaptiveB', FrameAdaptiveBList.ItemIndex);
      WriteInteger('Frame', 'Ref', FrameRefList.ItemIndex);
      // todo: I frame stuff!!!!

      WriteBool('Analysis', 'MixedRef', AnalysisMixedRefBtn.Checked);
      WriteBool('Analysis', 'Chroma', AnalysisChromaBtn.Checked);
      WriteBool('Analysis', 'trellis', AnalysisTrellisBtn.Checked);
      WriteBool('Analysis', 'skip', AnalysisFastSkipBtn.Checked);
      WriteBool('Analysis', 'dct', AnalysisDCTBtn.Checked);
      WriteInteger('Analysis', 'trellis2', AnalysisTrellisList.ItemIndex);
      WriteInteger('Analysis', 'matrix', AnalysisMatrixList.ItemIndex);
      WriteString('Analysis', 'ptrellis1', AnalysisPTrellistEdit.Text);
      WriteString('Analysis', 'ptrellis2', AnalysisPRateEdit.Text);
      WriteString('Analysis', 'noise', AnalysisNoiseEdit.Text);
      WriteString('Analysis', 'luma1', AnalysisLuma1Edit.Text);
      WriteString('Analysis', 'luma2', AnalysisLuma2Edit.Text);

      WriteString('Quant', 'minquant', MinQuantEdit.Text);
      WriteString('Quant', 'maxquant', MaxQuantEdit.Text);
      WriteString('Quant', 'step', QauntStepEdit.Text);
      WriteString('Quant', 'ip', IPQuantEdit.Text);
      WriteString('Quant', 'pb', PBQuantEdit.Text);
      WriteString('Quant', 'cl', CLQuantEdit.Text);
      WriteString('Quant', 'curve1', QuantCurve1Edit.Text);
      WriteString('Quant', 'curve2', QuantCurve2Edit.Text);
      WriteString('Quant', 'curve3', QuantCurve3Edit.Text);
      WriteString('Quant', 'adap', AdaptiveEdit.Text);
      WriteInteger('Quant', 'var', VarianceAQList.ItemIndex);
      WriteBool('Quant', 'var2', VarianceAQBtn.Checked);

      WriteString('Advanced', 'vbf1', VBFMaxBitrateEdit.Text);
      WriteString('Advanced', 'vbf2', VBFBufferSizeEdit.Text);
      WriteString('Advanced', 'vbf3', VBFInitialEdit.Text);
      WriteString('Advanced', 'slice1', Slice1Edit.Text);
      WriteString('Advanced', 'slice2', Slice2Edit.Text);
      WriteString('Advanced', 'slice3', Slice3Edit.Text);
    finally
      Free;
    end;

  end;

end;

procedure TAdvancedOptionsForm.VarianceAQBtnClick(Sender: TObject);
begin

  VarianceAQList.Enabled := VarianceAQBtn.Checked;

end;

end.
