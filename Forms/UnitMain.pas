unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvExMask, JvSpin, XPMan, ExtCtrls,
  Menus,
  JvBaseDlg, JvBrowseFolder, JvExStdCtrls, JvListBox, JvToolEdit,
  JvComponentBase,
  JvCreateProcess, JvThread, ComCtrls, JvExComCtrls, ShellAPI,
  StrUtils,
  MediaInfoDll, JvComputerInfoEx, IniFiles, JvDragDrop, Gauges;

type
  TForm1 = class(TForm)
    RemoveBtn: TButton;
    RemoveAllBtn: TButton;
    UpBtn: TButton;
    DownBtn: TButton;
    OutputBtn: TButton;
    StartBtn: TButton;
    StopBtn: TButton;
    ConsoleOutputEdit: TEdit;
    EncodeModeList: TComboBox;
    QuantEdit: TJvSpinEdit;
    XPManifest1: TXPManifest;
    BitrateEdit: TJvSpinEdit;
    CustomVideoOptionsEdit: TEdit;
    AddMenu: TPopupMenu;
    AddFiles1: TMenuItem;
    AddFolder1: TMenuItem;
    OpenDialog: TOpenDialog;
    OpenFolderDialog: TJvBrowseForFolderDialog;
    FileList: TJvListBox;
    DirectoryEdit: TJvDirectoryEdit;
    Label1: TLabel;
    Process: TJvCreateProcess;
    LogThread: TJvThread;
    LogsBtn: TButton;
    PositionTimer: TTimer;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    AddBtn: TButton;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    CRFEdit: TJvSpinEdit;
    Label4: TLabel;
    AboutBtn: TButton;
    Label10: TLabel;
    ResizeBtn: TCheckBox;
    WidthEdit: TJvSpinEdit;
    HeightEdit: TJvSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    ResizeMethodList: TComboBox;
    Label7: TLabel;
    CropBtn: TCheckBox;
    CropLeftEdit: TJvSpinEdit;
    CropTopEdit: TJvSpinEdit;
    CropBottomEdit: TJvSpinEdit;
    CropRightEdit: TJvSpinEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox6: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    PresetsList: TComboBox;
    ProfileList: TComboBox;
    TuneList: TComboBox;
    AudioSampleRateList: TComboBox;
    AudioChannelList: TComboBox;
    Label18: TLabel;
    Label19: TLabel;
    ContainerList: TComboBox;
    Label21: TLabel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    InfoEdit: TEdit;
    SystemInfo: TJvComputerInfoEx;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    CustomAudioOptionsEdit: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    ConstantFPSBtn: TCheckBox;
    BitrateTolBtn: TCheckBox;
    BitrateTolEdit: TJvSpinEdit;
    Label24: TLabel;
    SubtitleBtn: TCheckBox;
    TabSheet5: TTabSheet;
    CustomMKVEdit: TEdit;
    CustomMP4Edit: TEdit;
    CustomMKVExtractEdit: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    VideoSizeList: TComboBox;
    Label28: TLabel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    ThreadsBtn: TCheckBox;
    SliceThreadsBtn: TCheckBox;
    ThreadsEdit: TJvSpinEdit;
    SliceThreadsEdit: TJvSpinEdit;
    AudioPages: TPageControl;
    FAAC: TTabSheet;
    TabSheet7: TTabSheet;
    Panel3: TPanel;
    FAACEncodeList: TComboBox;
    FAACQualityEdit: TJvSpinEdit;
    FAACBitrateEdit: TJvSpinEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Panel6: TPanel;
    NeroEncodingList: TComboBox;
    NeroQualityEdit: TJvSpinEdit;
    NeroBitrateEdit: TJvSpinEdit;
    NeroProfileList: TComboBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Panel8: TPanel;
    DragDrop: TJvDragDrop;
    CurrentProgressBar: TGauge;
    TotalProgressBar: TGauge;
    procedure AddFiles1Click(Sender: TObject);
    procedure AddFolder1Click(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StartBtnClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure StopBtnClick(Sender: TObject);
    procedure ProcessRead(Sender: TObject; const S: string;
      const StartsOnNewLine: Boolean);
    procedure ProcessTerminate(Sender: TObject; ExitCode: Cardinal);
    procedure PositionTimerTimer(Sender: TObject);
    procedure LogThreadExecute(Sender: TObject; Params: Pointer);
    procedure LogsBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure OutputBtnClick(Sender: TObject);
    procedure RemoveBtnClick(Sender: TObject);
    procedure RemoveAllBtnClick(Sender: TObject);
    procedure UpBtnClick(Sender: TObject);
    procedure DownBtnClick(Sender: TObject);
    procedure EncodeModeListChange(Sender: TObject);
    procedure AboutBtnClick(Sender: TObject);
    procedure ResizeBtnClick(Sender: TObject);
    procedure CropBtnClick(Sender: TObject);
    procedure BitrateTolBtnClick(Sender: TObject);
    procedure VideoSizeListChange(Sender: TObject);
    procedure ThreadsBtnClick(Sender: TObject);
    procedure SliceThreadsBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FAACEncodeListChange(Sender: TObject);
    procedure NeroEncodingListChange(Sender: TObject);
    procedure DragDropDrop(Sender: TObject; Pos: TPoint; Value: TStrings);
    procedure AudioPagesChange(Sender: TObject);
  private
    { Private declarations }
    CommandLines: TStringList;
    ProcessTypeList: TStringList;
    // 1=x264, 2=ffmpeg, 3=mkv, 4=mp4box, 5=mkvextract, 6=faac, 7=neroaac, 8=lame, 9=mp4box_extract
    Durations: TStringList;
    Infos: TStringList;
    log: TStringList;

    x264Path, FFMpegPath, Mp4BoxPath, MkvMergePath, MkvExtractPath: string;
    NeroAACPath, FAACPath: string;
    TempFolder: string;
    AppFolder: string;

    FileIndex: Integer;
    DurationIndex: Integer;
    StoppedByUser: Boolean;
    LastPercent: Integer;

    // returns % done
    function x264Percentage(const x264Output: string): Integer;
    function FFMpegPercentage(const FFMpegOutput: string): Integer;
    function Mp4BoxPercentage(const Mp4BoxOutput: string): Integer; // !!!
    function MkvExtractPercentage(const MkvExtractOutput: string): Integer;
    function NeroPercentage(const NeroOutput: string): Integer;
    function FAACPercentage(const FAACOutput: string):Integer;

    // hh:mm:ss to int
    function TimeToInt(const TimeStr: string): Integer;
    // check if string is numeric
    function IsStringNumeric(Str: string): Boolean;

    // gets duration of a file in seconds
    function GetDuration(Index: integer): string;

    // gets frame per second info of a file
    function GetFPS(Index: Integer): string;

    // deletes temp. files
    procedure DeleteTempFiles;

    // disable/enable UI
    procedure DisableUI();
    procedure EnableUI();

    // adds command line for x264.exe
    procedure AddCommandLine(Index: Integer);

    // gets subtitle count from file
    function GetSubtitleCount(Index: integer): Integer;

    // gets subtitle's id in the ile
    function GetSubtitleID(Index: Integer; SubIndex: Integer): string;

    // gets subtitle kind
    function GetSubtitleKind(Index: Integer; SubIndex: Integer): string;

    // finds external subntitles
    function GetExternalSubtitles(Index: Integer): string;

    // save/load options
    procedure LoadOptions();
    procedure SaveOptions();

  public
    { Public declarations }
  end;

const
  Build = '201';
  BuildInt = 201;

var
  Form1: TForm1;

implementation

uses UnitLog, windows7taskbar;

{$R *.dfm}

procedure TForm1.AboutBtnClick(Sender: TObject);
var
  Msg: string;
begin

  Msg := 'TX264 - GUI for x264.exe ' + #13#10 + 'Build: ' + Build + #13#10 +
    '2012 ozok ozok26@gmail.com' + #13#10 +
    'Licenced under the terms of GPL 2 or above.' + #13#10 + #13#10 + 'Uses:' +
    #13#10 + 'x264.exe' + #13#10 + 'FFMpeg.exe' + #13#10 + 'Mp4Box.exe' + #13#10
    + 'mkvmerge.exe' + #13#10 + 'MediaInfo.dll 0.7.54' + #13#10 + 'JVCL 3.4' +
    #13#10 + #13#10 + 'Feel free to send bug reports, suggestions etc.';

  Application.MessageBox(PwideChar(Msg), 'About', MB_ICONINFORMATION);

end;

procedure TForm1.AddBtnClick(Sender: TObject);
begin

  AddMenu.Popup(AddBtn.Left + Form1.Left + 15, Form1.Top + AddBtn.Top +
    AddBtn.Height * 2 + 15)

end;

procedure TForm1.AddCommandLine(Index: Integer);
var
  OutFileName: string;
  OutAudioFile: string;
  TempAudioFile: string;
  OutMuxerFile: string;
  OutSubName: string;
  FileName: string;
  TmpStr: string;
  AudioStr: string;
  MuxerStr: string;
  SubFileName: string;
  SubtitleCount: Integer;
  SubtitleStr: string;
  SubtitleID: string;
  i: Integer;
  Tmp: string;
begin

  // custom video options
  TmpStr := CustomVideoOptionsEdit.Text;

  // rate control
  case EncodeModeList.ItemIndex of
    0:
      TmpStr := TmpStr + ' --crf ' + FloatToStr(CRFEdit.Value);
    1:
      TmpStr := TmpStr + ' --qp ' + FloatToStr(QuantEdit.Value);
    2 .. 3:
      begin
        TmpStr := TmpStr + ' --bitrate ' + FloatToStr(BitrateEdit.Value);

        // bitrate tolerance
        if BitrateTolBtn.Checked then
        begin
          TmpStr := TmpStr + ' --ratetol ' + ReplaceStr(BitrateTolEdit.Text,
            ',', '.');
        end;

      end;
  end;

  // profile
  case ProfileList.ItemIndex of
    1:
      TmpStr := TmpStr + ' --profile baseline';
    2:
      TmpStr := TmpStr + ' --profile main';
    3:
      TmpStr := TmpStr + ' --profile high';
    4:
      TmpStr := TmpStr + ' --profile high10';
    5:
      TmpStr := TmpStr + ' --profile high422';
    6:
      TmpStr := TmpStr + ' --profile high444';
  end;

  // presets
  case PresetsList.ItemIndex of
    1:
      TmpStr := TmpStr + ' --preset ultrafast';
    2:
      TmpStr := TmpStr + ' --preset superfast';
    3:
      TmpStr := TmpStr + ' --preset veryfast';
    4:
      TmpStr := TmpStr + ' --preset faster';
    5:
      TmpStr := TmpStr + ' --preset fast';
    6:
      TmpStr := TmpStr + ' --preset medium';
    7:
      TmpStr := TmpStr + ' --preset slow';
    8:
      TmpStr := TmpStr + ' --preset slower';
    9:
      TmpStr := TmpStr + ' --preset veryslow';
    10:
      TmpStr := TmpStr + ' --preset placebo';
  end;

  // tune
  case TuneList.ItemIndex of
    1:
      TmpStr := TmpStr + ' --tune film';
    2:
      TmpStr := TmpStr + ' --tune animation';
    3:
      TmpStr := TmpStr + ' --tune grain';
    4:
      TmpStr := TmpStr + ' --tune stillimage';
    5:
      TmpStr := TmpStr + ' --tune psnr';
    6:
      TmpStr := TmpStr + ' --tune ssim';
    7:
      TmpStr := TmpStr + ' --tune fastdecode';
    8:
      TmpStr := TmpStr + ' --tune zerolatency';
  end;

  // constant fps
  if ConstantFPSBtn.Checked then
  begin
    TmpStr := TmpStr + ' --force-cfr --fps ' + GetFPS(Index);
  end;

  // threads
  if ThreadsBtn.Checked then
  begin
    TmpStr := TmpStr + ' --threads ' + ThreadsEdit.Text;
  end;
  if SliceThreadsBtn.Checked then
  begin
    TmpStr := TmpStr + ' --slice-threads ' + SliceThreadsEdit.Text;
  end;

  // filters
  if ResizeBtn.Checked then
  begin

    TmpStr := TmpStr + ' --video-filter resize:width=' + WidthEdit.Text +
      ',height=' + HeightEdit.Text;

    if CropBtn.Checked then
    begin
      TmpStr := TmpStr + '/crop:' + CropLeftEdit.Text + ',' + CropTopEdit.Text +
        ',' + CropRightEdit.Text + ',' + CropBottomEdit.Text;
    end;

  end
  else
  begin

    if CropBtn.Checked then
    begin
      TmpStr := TmpStr + ' --video-filter crop:' + CropLeftEdit.Text + ',' +
        CropTopEdit.Text + ',' + CropRightEdit.Text + ',' + CropBottomEdit.Text;
    end;

  end;

  // paths and files
  FileName := FileList.Items.Strings[Index];
  case ContainerList.ItemIndex of
    0:
      OutFileName := ChangeFileExt(FileName, '.mkv');
    1:
      OutFileName := ChangeFileExt(FileName, '.mp4');
  end;
  OutFileName := TempFolder + '\' + ExtractFileName(OutFileName);

  case ContainerList.ItemIndex of
    0:
      OutMuxerFile := ChangeFileExt(FileName, '.mkv');
    1:
      OutMuxerFile := ChangeFileExt(FileName, '.mp4');
  end;
  OutMuxerFile := DirectoryEdit.Text + '\' + ExtractFileName(OutMuxerFile);

  if EncodeModeList.ItemIndex = 2 then
  begin
    // two pass bitrate
    CommandLines.Add(' --pass 1 ' + TmpStr + ' --output NUL "' +
      FileName + '"');
    CommandLines.Add(' --pass 2 ' + TmpStr + ' --output "' + OutFileName + '" "'
      + FileName + '"');

    Infos.Add('Encoding video(1/2): ' + ExtractFileName(FileName) + ' (' +
      FloatToStr(Index + 1) + '/' + FloatToStr(FileList.Items.Count) + ')');
    Infos.Add('Encoding video(2/2): ' + ExtractFileName(FileName) + ' (' +
      FloatToStr(Index + 1) + '/' + FloatToStr(FileList.Items.Count) + ')');

    ProcessTypeList.Add('1');
    ProcessTypeList.Add('1');
  end
  else
  begin
    // others
    CommandLines.Add(TmpStr + ' --output "' + OutFileName + '" "' +
      FileName + '"');

    Infos.Add('Encoding video: ' + ExtractFileName(FileName) + ' (' +
      FloatToStr(Index + 1) + '/' + FloatToStr(FileList.Items.Count) + ')');

    ProcessTypeList.Add('1');
  end;

  // audio decoding
  AudioStr := ' -y -i "' + FileName + '" -f wav ';

  TempAudioFile := ChangeFileExt(FileName, '.wav');
  TempAudioFile := TempFolder + '\' + ExtractFileName(TempAudioFile);

  // remove spaces
  for i := 1 to Length(TempAudioFile) do
  begin

    if TempAudioFile[i] <> ' ' then
    begin
      Tmp := Tmp + TempAudioFile[i];
    end;

  end;
  TempAudioFile := Tmp;

  // channels
  case AudioChannelList.ItemIndex of
    1:
      AudioStr := AudioStr + ' -ac 1';
    2:
      AudioStr := AudioStr + ' -ac 2';
    3:
      AudioStr := AudioStr + ' -ac 6';
  end;

  // sample rate
  if AudioSampleRateList.ItemIndex > 0 then
  begin
    AudioStr := AudioStr + ' -ar ' + AudioSampleRateList.Text;
  end;

  AudioStr := AudioStr + ' "' + TempAudioFile + '"';

  CommandLines.Add(AudioStr);
  Durations.Add(GetDuration(index));

  Infos.Add('Decoding audio: ' + ExtractFileName(FileName) + ' (' +
    FloatToStr(Index + 1) + '/' + FloatToStr(FileList.Items.Count) + ')');

  ProcessTypeList.Add('2');

  // audio encoding
  AudioStr := '';

  // path
  case AudioPages.ActivePageIndex of
    0 .. 1:
      begin
        OutAudioFile := ChangeFileExt(FileName, '.aac');
      end;
    2:
      begin
        OutAudioFile := ChangeFileExt(FileName, '.mp3');
      end;
  end;
  OutAudioFile := TempFolder + '\' + ExtractFileName(OutAudioFile);
  Tmp := '';
  // remove spaces
  for i := 1 to Length(OutAudioFile) do
  begin

    if OutAudioFile[i] <> ' ' then
    begin
      Tmp := Tmp + OutAudioFile[i];
    end;

  end;
  OutAudioFile := Tmp;

  // custom audio options
  AudioStr := AudioStr + CustomAudioOptionsEdit.Text;

  case AudioPages.ActivePageIndex of
    0: // faac
      begin

        // encoding mode
        case FAACEncodeList.ItemIndex of
          0: // quality
            begin
              AudioStr := AudioStr + ' -q ' + FAACQualityEdit.Text;
            end;
          1: // bitrate
            begin
              AudioStr := AudioStr + ' -b ' + FAACBitrateEdit.Text;
            end;
        end;

        // last cmd
        AudioStr := AudioStr + ' "' + TempAudioFile + '" -o "' +
          OutAudioFile + '"';

        CommandLines.Add(AudioStr);

        Infos.Add('Encoding audio(FAAC): ' + ExtractFileName(FileName) + ' (' +
          FloatToStr(Index + 1) + '/' + FloatToStr(FileList.Items.Count) + ')');

        ProcessTypeList.Add('6');

      end;
    1: // neroaac
      begin

        // encoding mode
        case NeroEncodingList.ItemIndex of
          0: // quality
            begin
              AudioStr := AudioStr + ' -q ' + ReplaceStr(NeroQualityEdit.Text,
                ',', '.');
            end;
          1: // abr
            begin
              AudioStr := AudioStr + ' -br ' + NeroBitrateEdit.Text + '000';
            end;
          2: // cbr
            begin
              AudioStr := AudioStr + ' -cbr ' + NeroBitrateEdit.Text + '000';
            end;
        end;

        // profile
        case NeroProfileList.ItemIndex of
          0:
            begin
            end
        else
          begin
            AudioStr := AudioStr + ' -' + NeroProfileList.Text;
          end;
        end;

        // last cmd
        AudioStr := AudioStr + ' -if "' + TempAudioFile + '" -of "' +
          OutAudioFile + '"';

        CommandLines.Add(AudioStr);
        Durations.Add(GetDuration(index));

        Infos.Add('Encoding audio(NeroAAC): ' + ExtractFileName(FileName) + ' ('
          + FloatToStr(Index + 1) + '/' +
          FloatToStr(FileList.Items.Count) + ')');

        ProcessTypeList.Add('7');

      end;
  end;

  // subtitles
  if SubtitleBtn.Checked then
  begin

    // check external subtitle files first
    SubFileName := GetExternalSubtitles(Index);
    if not FileExists(SubFileName) then
    begin
      // if external subtitle file doesn't exist
      // try to find subtitle within the source file
      SubtitleCount := GetSubtitleCount(Index);
      if SubtitleCount > 0 then
      begin
        // here we get first sub title from stream. But in the future
        // we'll get this according to user's options.
        // only from mkv and mp4

        // get subtitle id within the file
        // todo: change 0 to user selection
        SubtitleID := GetSubtitleID(index, 0);

        // temp subttle file
        OutSubName := ChangeFileExt(FileName, '.' + GetSubtitleKind(index, 0));
        OutSubName := DirectoryEdit.Text + '\' + ExtractFileName(OutSubName);

        // mkv source
        if LowerCase(ExtractFileExt(FileName)) = '.mkv' then
        begin
          SubtitleStr := SubtitleStr + ' tracks "' + FileName + '" ' +
            SubtitleID + ':"' + OutSubName + '"';

          CommandLines.Add(SubtitleStr + ' ' + CustomMKVExtractEdit.Text);
          Infos.Add('Extracting subtitle: ' + ExtractFileName(FileName) + ' (' +
            FloatToStr(Index + 1) + '/' +
            FloatToStr(FileList.Items.Count) + ')');
          ProcessTypeList.Add('5'); // mkvextract
        end
        else if LowerCase(ExtractFileExt(FileName)) = '.mp4' then
        begin
          // mp4 source
          SubtitleStr := SubtitleStr + ' -srt ' + SubtitleID + ' "' +
            FileName + '"';

          CommandLines.Add(SubtitleStr + ' ' + CustomMP4Edit.Text);
          Infos.Add('Extracting subtitle: ' + ExtractFileName(FileName) + ' (' +
            FloatToStr(Index + 1) + '/' +
            FloatToStr(FileList.Items.Count) + ')');
          ProcessTypeList.Add('4'); // mp4box
        end;

      end;

    end;

  end;

  // muxer
  MuxerStr := '';

  case ContainerList.ItemIndex of
    0: // mkv
      begin
        MuxerStr := MuxerStr + ' -o "' + OutMuxerFile + '" "' + OutFileName +
          '" "' + OutAudioFile + '"';

        CommandLines.Add(MuxerStr + ' ' + CustomMKVEdit.Text);
        Infos.Add('Muxing(MKV): ' + ExtractFileName(FileName) + ' (' +
          FloatToStr(Index + 1) + '/' + FloatToStr(FileList.Items.Count) + ')');
        ProcessTypeList.Add('3'); // mkv
      end;
    1: // mp4
      begin
        MuxerStr := MuxerStr + ' -add "' + OutFileName + '#video:fps=25" -add "'
          + OutAudioFile + '#audio" -new "' + OutMuxerFile + '"';

        CommandLines.Add(MuxerStr + ' ' + CustomMP4Edit.Text);
        Infos.Add('Muxing(MP4): ' + ExtractFileName(FileName) + ' (' +
          FloatToStr(Index + 1) + '/' + FloatToStr(FileList.Items.Count) + ')');
        ProcessTypeList.Add('4'); // mp4
      end;
  end;

end;

procedure TForm1.AddFiles1Click(Sender: TObject);
begin

  if OpenDialog.Execute then
  begin
    FileList.Items.AddStrings(OpenDialog.Files);
  end;

end;

procedure TForm1.AddFolder1Click(Sender: TObject);
var
  Search: TSearchRec;
  FileName: String;
  Extension: String;
begin

  if OpenFolderDialog.Execute then
  begin
    SetCurrentDir(OpenFolderDialog.Directory);

    FileList.Items.BeginUpdate;
    try

      if (FindFirst('*.*', faAnyFile, Search) = 0) then
      Begin
        repeat
          Application.ProcessMessages;

          FileName := GetCurrentDir + '\' + Search.Name;

          Extension := LowerCase(ExtractFileExt(FileName));

          if (Extension = '.mp4') or (Extension = '.mov') or
            (Extension = '.m4v') or (Extension = '.mkv') or
            (Extension = '.mpeg') or (Extension = '.mpg') or
            (Extension = '.flv') or (Extension = '.avi') then
          begin
            FileList.Items.Add(FileName);
          end;

        until (FindNext(Search) <> 0);
        FindClose(Search);
      end;

    finally
      FileList.Items.EndUpdate;
      // LastMusicDir := SelectDirectory.Directory;
    end;

  end;

end;

procedure TForm1.AudioPagesChange(Sender: TObject);
begin

  // neroaac
  if AudioPages.ActivePageIndex = 1 then
  begin

    if not FileExists(NeroAACPath) then
    begin

      if Application.MessageBox
        ('Cannot find neroaacenc.exe! If you want to download it please click Yes. After downloading, put neroaacenc.exe into tools/aduio folder.',
        'NeroAACEnc', MB_ICONWARNING or MB_YESNO) = IDYES then
      begin
        ShellExecute(Form1.Handle, 'open',
          'http://www.nero.com/eng/downloads-nerodigital-nero-aac-codec.php',
          nil, nil, SW_NORMAL);
      end
      else
      begin
        AudioPages.ActivePageIndex := 0;
      end;

    end;

  end;

end;

procedure TForm1.BitrateTolBtnClick(Sender: TObject);
begin

  BitrateTolEdit.Enabled := BitrateTolBtn.Checked;

end;

procedure TForm1.CropBtnClick(Sender: TObject);
begin

  CropLeftEdit.Enabled := CropBtn.Checked;
  CropTopEdit.Enabled := CropBtn.Checked;
  CropBottomEdit.Enabled := CropBtn.Checked;
  CropRightEdit.Enabled := CropBtn.Checked;

end;

procedure TForm1.DeleteTempFiles;
var
  Search: TSearchRec;
begin

  SetCurrentDir(TempFolder);

  if (FindFirst('*.*', faAnyFile, Search) = 0) then
  Begin
    repeat
      Application.ProcessMessages;

      DeleteFile(GetCurrentDir + '\' + Search.Name);
    until (FindNext(Search) <> 0);
    FindClose(Search);
  end;

end;

procedure TForm1.DisableUI;
begin

  PageControl.Enabled := False;
  GroupBox2.Enabled := False;
  AboutBtn.Enabled := False;
  StartBtn.Enabled := False;
  StopBtn.Enabled := True;
  DirectoryEdit.Enabled := False;

end;

procedure TForm1.DownBtnClick(Sender: TObject);
begin

  FileList.MoveSelectedDown;

end;

procedure TForm1.DragDropDrop(Sender: TObject; Pos: TPoint; Value: TStrings);
var
  i: Integer;
  Extension: string;
begin

  for i := 0 to Value.Count - 1 do
  begin
    Application.ProcessMessages;

    Extension := LowerCase(ExtractFileExt(Value[i]));

    if (Extension = '.mp4') or (Extension = '.mov') or (Extension = '.m4v') or
      (Extension = '.mkv') or (Extension = '.mpeg') or (Extension = '.mpg') or
      (Extension = '.flv') or (Extension = '.avi') then
    begin
      FileList.Items.Add(Value[i]);
    end;

  end;

end;

procedure TForm1.EnableUI;
begin

  PageControl.Enabled := True;
  GroupBox2.Enabled := True;
  AboutBtn.Enabled := True;
  StartBtn.Enabled := True;
  StopBtn.Enabled := False;
  DirectoryEdit.Enabled := True;

end;

procedure TForm1.EncodeModeListChange(Sender: TObject);
begin

  case EncodeModeList.ItemIndex of
    0:
      begin
        CRFEdit.Enabled := True;
        QuantEdit.Enabled := False;
        BitrateEdit.Enabled := False;
      end;
    1:
      begin
        CRFEdit.Enabled := False;
        QuantEdit.Enabled := True;
        BitrateEdit.Enabled := False;
      end;
    2 .. 3:
      begin
        CRFEdit.Enabled := False;
        QuantEdit.Enabled := False;
        BitrateEdit.Enabled := True;
      end;
  end;

end;

procedure TForm1.FAACEncodeListChange(Sender: TObject);
begin

  if FAACEncodeList.ItemIndex = 0 then
  begin
    FAACQualityEdit.Enabled := True;
    FAACBitrateEdit.Enabled := False;
  end
  else
  begin
    FAACQualityEdit.Enabled := False;
    FAACBitrateEdit.Enabled := True;
  end;

end;

function TForm1.FAACPercentage(const FAACOutput: string): Integer;
var
  TmpPos: Integer;
  StrPos1, StrPos2: Integer;
  FConsoleOutput: string;
begin

  Result := 0;

  FConsoleOutput := Trim(FAACOutput);

  if Length(FConsoleOutput) > 0 then
  begin
    StrPos1 := Pos('(', FConsoleOutput);
    StrPos2 := Pos('%)|', FConsoleOutput);

    if StrPos2 > StrPos1 then
    begin
      FConsoleOutput := Trim(Copy(FConsoleOutput, StrPos1 + 1, StrPos2 - StrPos1 - 1));
    end;

    if IsStringNumeric(FConsoleOutput) then
    begin
      Result := StrToInt(FConsoleOutput);
    end

  end;

end;

function TForm1.FFMpegPercentage(const FFMpegOutput: string): Integer;
var
  pos1: Integer;
  pos2: Integer;
  Text: String;
  prog: String;
  last: String;
  PositionInt: Integer;
begin

  Result := 0;

  if (Length(FFMpegOutput) > 0) then
  begin
    Text := FFMpegOutput;
    // pos1 := Pos('frame=', FFmpegOutput);
    // pos2 := Pos('fps=', FFmpegOutput);
    // prog := Copy(Text, pos1 + 1, (pos2 - pos1 - 1));
    // last := Copy(prog, 6, Length(prog) - 4);
    pos1 := Pos('time=', FFMpegOutput);
    pos2 := Pos('bitrate=', FFMpegOutput);
    prog := Copy(Text, pos1 + 1, (pos2 - pos1 - 1));
    last := Copy(prog, 5, Length(prog) - 4);

    PositionInt := TimeToInt(LeftBStr(Trim(last), 8));

    if IsStringNumeric(Durations[DurationIndex]) then
    begin
      Result := (100 * PositionInt) div StrToInt(Durations[DurationIndex]);
    end;

  end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if Process.ProcessInfo.hProcess > 0 then
  begin
    TerminateProcess(Process.ProcessInfo.hProcess, 0);
    StoppedByUser := True;
  end;

  if not LogThread.Terminated then
  begin
    LogThread.Terminate;
  end;

  while not LogThread.Terminated do
  begin
    Application.ProcessMessages;
    Sleep(10);
  end;

  SaveOptions();
  log.SaveToFile('C:\consoleoutput.txt');

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
begin

  if not FileExists(ExtractFileDir(Application.ExeName) +
    '\tools\x264.exe') then
  begin
    Application.MessageBox('Can''t find x264.exe. Please re-install.', 'Error',
      MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    x264Path := ExtractFileDir(Application.ExeName) + '\tools\x264.exe';
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) +
    '\tools\ffmpeg.exe') then
  begin
    Application.MessageBox('Can''t find ffmpeg.exe. Please re-install.',
      'Error', MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    FFMpegPath := ExtractFileDir(Application.ExeName) + '\tools\ffmpeg.exe';
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) +
    '\tools\mkvmerge.exe') then
  begin
    Application.MessageBox('Can''t find mkvmerge.exe. Please re-install.',
      'Error', MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    MkvMergePath := ExtractFileDir(Application.ExeName) + '\tools\mkvmerge.exe';
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) +
    '\tools\mkvextract.exe') then
  begin
    Application.MessageBox('Can''t find mkvextract.exe. Please re-install.',
      'Error', MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    MkvExtractPath := ExtractFileDir(Application.ExeName) +
      '\tools\mkvextract.exe';
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) +
    '\tools\Mp4Box\mp4box.exe') then
  begin
    Application.MessageBox('Can''t find mp4box.exe. Please re-install.',
      'Error', MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    Mp4BoxPath := ExtractFileDir(Application.ExeName) +
      '\tools\Mp4Box\mp4box.exe';
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) +
    '\tools\audio\faac.exe') then
  begin
    Application.MessageBox('Can''t find faac.exe. Please re-install.', 'Error',
      MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    FAACPath := ExtractFileDir(Application.ExeName) + '\tools\audio\faac.exe';
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) +
    '\tools\audio\neroAacEnc.exe') then
  begin
    Application.MessageBox('Can''t find neroaacenc.exe.', 'Error',
      MB_ICONERROR);
    NeroAACPath := ''; // will be checked
  end
  else
  begin
    NeroAACPath := ExtractFileDir(Application.ExeName) +
      '\tools\audio\neroAacEnc.exe';
  end;

  if not MediaInfoDLL_Load(ExtractFileDir(Application.ExeName) +
    '\MediaInfo.dll') then
  begin
    Application.MessageBox('Cannot load MediaInfo.dll!', 'Fatal Error',
      MB_ICONERROR);
    Application.Terminate;
  end;

  TempFolder := SystemInfo.Folders.Temp + '\TX264\';

  if not DirectoryExists(TempFolder) then
  begin

    if not CreateDir(TempFolder) then
    begin
      Application.MessageBox('Cannot create temp folder!', 'Fatal Error',
        MB_ICONERROR);
      Application.Terminate;
    end;

  end;

  AppFolder := ExtractFileDir(Application.ExeName) + '\';

  CommandLines := TStringList.Create;
  ProcessTypeList := TStringList.Create;
  Durations := TStringList.Create;
  Infos := TStringList.Create;
  log := TStringList.Create;

  // windows 7 taskbar
  if CheckWin32Version(6, 1) then
  begin

    if not InitializeTaskbarAPI then
    begin
      Application.MessageBox
        ('You seem to have Windows 7 but TX264 can''t start taskbar progressbar!',
        'Error', MB_ICONERROR);
    end;

  end;

  ThreadsEdit.Value := Round(1.5 * SystemInfo.CPU.ProcessorCount);
  SliceThreadsEdit.Value := SystemInfo.CPU.ProcessorCount;

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin

  FreeAndNil(CommandLines);
  FreeAndNil(Durations);
  FreeAndNil(ProcessTypeList);
  FreeAndNil(Infos);
  FreeAndNil(log);

end;

procedure TForm1.FormShow(Sender: TObject);
begin

  LoadOptions();
  DeleteTempFiles();

end;

function TForm1.GetDuration(Index: integer): string;
var
  MediaInfoHandle: Cardinal;
  VDuration: string;
  FileName: string;
begin

  FileName := FileList.Items.Strings[Index];

  if (FileExists(FileName)) then
  begin

    // New handle for mediainfo
    MediaInfoHandle := MediaInfo_New();

    if MediaInfoHandle <> 0 then
    begin

      try
        // Open a file in complete mode
        MediaInfo_Open(MediaInfoHandle, PwideChar(FileName));
        MediaInfo_Option(0, 'Complete', '1');

        // get length
        VDuration := MediaInfo_Get(MediaInfoHandle, Stream_Video, 0, 'Duration',
          Info_Text, Info_Name);

        if Length(VDuration) < 1 then
        begin
          VDuration := '0';
        end;

        Result := FloatToStr(StrToInt64(VDuration) div 1000);

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TForm1.GetExternalSubtitles(Index: Integer): string;
var
  FileName: string;
  SrtFile, AssFile, SubFile: string;
begin

  Result := '';

  FileName := FileList.Items.Strings[Index];

  if FileExists(FileName) then
  begin

    SrtFile := ChangeFileExt(FileName, 'srt');
    AssFile := ChangeFileExt(FileName, 'ass');
    SubFile := ChangeFileExt(FileName, 'sub');

    if FileExists(SrtFile) then
    begin
      Result := SrtFile;
    end
    else
    begin

      if FileExists(AssFile) then
      begin
        Result := AssFile;
      end
      else
      begin

        if FileExists(SubFile) then
        begin
          Result := SubFile;
        end;

      end;

    end;

  end;

end;

function TForm1.GetFPS(Index: Integer): string;
var
  MediaInfoHandle: Cardinal;
  FPS: string;
  FileName: string;
begin

  FileName := FileList.Items.Strings[Index];

  if (FileExists(FileName)) then
  begin

    // New handle for mediainfo
    MediaInfoHandle := MediaInfo_New();

    if MediaInfoHandle <> 0 then
    begin

      try
        // Open a file in complete mode
        MediaInfo_Open(MediaInfoHandle, PwideChar(FileName));
        MediaInfo_Option(0, 'Complete', '1');

        // get length
        FPS := MediaInfo_Get(MediaInfoHandle, Stream_Video, 0, 'FrameRate',
          Info_Text, Info_Name);

        if Length(FPS) < 1 then
        begin
          FPS := '25';
        end;

        Result := FPS;

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TForm1.GetSubtitleCount(Index: integer): Integer;
var
  MediaInfoHandle: Cardinal;
  SubCount: string;
  FileName: string;
begin

  FileName := FileList.Items.Strings[Index];

  Result := 0;

  if (FileExists(FileName)) then
  begin

    // New handle for mediainfo
    MediaInfoHandle := MediaInfo_New();

    if MediaInfoHandle <> 0 then
    begin

      try
        // Open a file in complete mode
        MediaInfo_Open(MediaInfoHandle, PwideChar(FileName));
        MediaInfo_Option(0, 'Complete', '1');

        // get length
        SubCount := MediaInfo_Get(MediaInfoHandle, Stream_Text, 0, 'Count',
          Info_Text, Info_Name);

        if Length(SubCount) < 1 then
        begin
          SubCount := '0';
        end;

        if not IsStringNumeric(SubCount) then
        begin
          Result := 0;
        end
        else
        begin
          Result := StrToInt(SubCount);
        end;

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TForm1.GetSubtitleID(Index, SubIndex: Integer): string;
var
  MediaInfoHandle: Cardinal;
  SubID: string;
  FileName: string;
begin

  FileName := FileList.Items.Strings[Index];
  SubID := '';
  if (FileExists(FileName)) then
  begin

    // New handle for mediainfo
    MediaInfoHandle := MediaInfo_New();

    if MediaInfoHandle <> 0 then
    begin

      try
        // Open a file in complete mode
        MediaInfo_Open(MediaInfoHandle, PwideChar(FileName));
        MediaInfo_Option(0, 'Complete', '1');

        // get id
        SubID := MediaInfo_Get(MediaInfoHandle, Stream_Text, SubIndex, 'ID',
          Info_Text, Info_Name);

        if Length(SubID) < 1 then
        begin
          SubID := '';
        end;

        if not IsStringNumeric(SubID) then
        begin
          Result := '';
        end
        else
        begin
          Result := IntToStr(StrToInt(SubID) - 1);
        end;

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TForm1.GetSubtitleKind(Index, SubIndex: Integer): string;
var
  MediaInfoHandle: Cardinal;
  SubKind: string;
  FileName: string;
begin

  FileName := FileList.Items.Strings[Index];
  SubKind := 'srt';
  if (FileExists(FileName)) then
  begin

    // New handle for mediainfo
    MediaInfoHandle := MediaInfo_New();

    if MediaInfoHandle <> 0 then
    begin

      try
        // Open a file in complete mode
        MediaInfo_Open(MediaInfoHandle, PwideChar(FileName));
        MediaInfo_Option(0, 'Complete', '1');

        // get id
        SubKind := MediaInfo_Get(MediaInfoHandle, Stream_Text, SubIndex,
          'Format', Info_Text, Info_Name);

        if (Length(SubKind) < 1) or (LowerCase(SubKind) = 'utf-8') then
        begin
          SubKind := 'srt';
        end;

        Result := LowerCase(SubKind);

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TForm1.IsStringNumeric(Str: string): Boolean;
var
  p: PChar;
begin

  if Length(Str) < 1 then
  begin
    Result := False;
    Exit;
  end;

  p := PChar(Str);
  Result := False;

  while p^ <> #0 do
  begin
    Application.ProcessMessages;

    if (Not CharInSet(p^, ['0' .. '9'])) then
    begin
      Exit;
    end;

    Inc(p);
  end;

  Result := True;
end;

procedure TForm1.LoadOptions;
var
  SettingsFile: TIniFile;
begin

  SettingsFile := TIniFile.Create(AppFolder + 'settings.ini');
  try

    with SettingsFile do
    begin
      DirectoryEdit.Text := ReadString('Settings', 'OutDir', AppFolder);

      PageControl.ActivePageIndex := ReadInteger('Settings', 'PageIndex', 0);
      EncodeModeList.ItemIndex := ReadInteger('Settings', 'EncodeMode', 3);
      ProfileList.ItemIndex := ReadInteger('Settings', 'Profile', 0);
      PresetsList.ItemIndex := ReadInteger('Settings', 'Preset', 5);
      TuneList.ItemIndex := ReadInteger('Settings', 'Tune', 0);
      BitrateEdit.Text := ReadString('Settings', 'Bitrate', '512');
      QuantEdit.Text := ReadString('Settings', 'Quant', '21');
      CRFEdit.Text := ReadString('Settings', 'CRF', '21');

      ConstantFPSBtn.Checked := ReadBool('Settings', 'CFR', False);
      SubtitleBtn.Checked := ReadBool('Settings', 'Subtitle', False);
      BitrateTolBtn.Checked := ReadBool('Settings', 'BitrateTol', False);
      BitrateTolEdit.Text := ReadString('Settings', 'BitrateTolValue', '0,01');
      ContainerList.ItemIndex := ReadInteger('Settings', 'Container', 1);

      ResizeBtn.Checked := ReadBool('Settings', 'Resize', False);
      WidthEdit.Text := ReadString('Settings', 'Width', '320');
      HeightEdit.Text := ReadString('Settings', 'Height', '240');
      VideoSizeList.ItemIndex := ReadInteger('Settings', 'SizeList', 4);
      ResizeMethodList.ItemIndex := ReadInteger('Settings', 'ResizeMethod', 0);

      CropBtn.Checked := ReadBool('Settings', 'Crop', False);
      CropLeftEdit.Text := ReadString('Settings', 'CropLeft', '0');
      CropTopEdit.Text := ReadString('Settings', 'CropTop', '0');
      CropBottomEdit.Text := ReadString('Settings', 'CropBottom', '0');
      CropRightEdit.Text := ReadString('Settings', 'CropRight', '0');

      AudioPages.ActivePageIndex := ReadInteger('Settings', 'AudioPage', 0);
      AudioSampleRateList.ItemIndex := ReadInteger('Settings', 'Samplerate', 0);
      AudioChannelList.ItemIndex := ReadInteger('Settings', 'Channel', 0);

      FAACEncodeList.ItemIndex := ReadInteger('Settings', 'FAACEncode', 0);
      FAACQualityEdit.Text := ReadString('Settings', 'FAACQuality', '10');
      FAACBitrateEdit.Text := ReadString('Settings', 'FAACBitrate', '80');

      NeroEncodingList.ItemIndex := ReadInteger('Settings', 'NeroEncode', 0);
      NeroQualityEdit.Text := ReadString('Settings', 'NeroQuality', '0,50');
      NeroBitrateEdit.Text := ReadString('Settings', 'NeroBitrate', '80');
      NeroProfileList.ItemIndex := ReadInteger('Settings', 'NeroProfile', 0);

      CustomVideoOptionsEdit.Text := ReadString('Settings', 'CustomVideo', '');
      CustomAudioOptionsEdit.Text := ReadString('Settings', 'CustomAudio', '');
      CustomMKVEdit.Text := ReadString('Settings', 'CustomMKV', '');
      CustomMP4Edit.Text := ReadString('Settings', 'CustomMP4', '');
      CustomMKVExtractEdit.Text := ReadString('Settings', 'CustomSub', '');

      ThreadsBtn.Checked := ReadBool('Settings', 'thread', False);
      ThreadsEdit.Text := ReadString('Settings', 'ThreadStr',
        FloatToStr(Round(SystemInfo.CPU.LogicalCore * 1.5)));
      SliceThreadsBtn.Checked := ReadBool('Settings', 'Slice', False);
      SliceThreadsEdit.Text := ReadString('Settings', 'SliceThreadStr',
        FloatToStr(SystemInfo.CPU.LogicalCore))
    end;

  finally
    SettingsFile.Free;

    BitrateTolBtn.OnClick(self);
    EncodeModeList.OnChange(self);
    ResizeBtn.OnClick(self);
    CropBtn.OnClick(self);
    FAACEncodeList.OnChange(self);
    NeroEncodingList.OnChange(self);
    ThreadsBtn.OnClick(self);
    SliceThreadsBtn.OnClick(self);
  end;

end;

procedure TForm1.LogsBtnClick(Sender: TObject);
begin

  Form3.Show;

end;

procedure TForm1.LogThreadExecute(Sender: TObject; Params: Pointer);
begin

  if not Assigned(Form3) then
  begin
    Exit;
  end;

  with Form3.OutputList.Items do
  begin
    Add('Command lines:');
    AddStrings(CommandLines);
    Add('');
    Add('Outputs:');
    AddStrings(Process.ConsoleOutput);
    Add('');
  end;

  LogThread.CancelExecute;

end;

function TForm1.MkvExtractPercentage(const MkvExtractOutput: string): Integer;
var
  StrPos: Integer;
  TmpInt: Integer;
  FConsoleOutput: string;
begin

  Result := 0;
  StrPos := -1;

  FConsoleOutput := Trim(MkvExtractOutput);

  if Length(FConsoleOutput) > 0 then
  begin

    if Copy(FConsoleOutput, 0, 9) = 'Progress:' then
    begin
      FConsoleOutput := Trim(ReplaceStr(FConsoleOutput, '%', ''));
      FConsoleOutput := Trim(Copy(FConsoleOutput, 10, MaxInt));
      log.Add('percent:' + FConsoleOutput);
      if TryStrToInt(FConsoleOutput, TmpInt) then
      begin
        Result := TmpInt;
      end;

    end;

  end;

end;

function TForm1.Mp4BoxPercentage(const Mp4BoxOutput: string): Integer;
var
  StrPos: Integer;
  TmpStr: string;
  TmpInt: Integer;
  FConsoleOutput: string;
begin

  Result := 0;
  StrPos := -1;

  FConsoleOutput := Trim(Mp4BoxOutput);

  if Length(FConsoleOutput) > 0 then
  begin

    if Copy(FConsoleOutput, 0, 16) = 'ISO File Writing' then
    begin
      StrPos := Pos('| (', FConsoleOutput);

      if StrPos > -1 then
      begin
        TmpStr := Copy(FConsoleOutput, StrPos, MaxInt);
        Delete(TmpStr, Length(TmpStr) - 6, 7);

        Form1.Caption := TmpStr;

        if TryStrToInt(TmpStr, TmpInt) then
        begin
          Result := TmpInt;
        end;

      end;

    end
    else
    begin
      Form1.Caption := Copy(FConsoleOutput, 0, 16);
    end;

  end;

end;

procedure TForm1.NeroEncodingListChange(Sender: TObject);
begin

  if NeroEncodingList.ItemIndex = 0 then
  begin
    NeroQualityEdit.Enabled := True;
    NeroBitrateEdit.Enabled := False;
  end
  else
  begin
    NeroQualityEdit.Enabled := False;
    NeroBitrateEdit.Enabled := True;
  end;

end;

function TForm1.NeroPercentage(const NeroOutput: string): Integer;
var
  TmpPos: Integer;
  FConsoleOutput: string;
begin

  Result := 0;

  FConsoleOutput := Trim(NeroOutput);

  if Length(FConsoleOutput) > 0 then
  begin

    FConsoleOutput := Trim(ReplaceStr(FConsoleOutput, 'Processed', ''));
    FConsoleOutput := Trim(ReplaceStr(FConsoleOutput, 'seconds...', ''));
    FConsoleOutput := Trim(FConsoleOutput);
    // form1.Caption := FloatToStr(DurationIndex);
    if IsStringNumeric(FConsoleOutput) then
    begin
      Result := (100 * StrToInt(FConsoleOutput))
        div StrToInt(Durations[DurationIndex]);
    end

  end;

end;

procedure TForm1.OutputBtnClick(Sender: TObject);
begin

  if (DirectoryExists(DirectoryEdit.Text)) then
  begin
    ShellExecute(Application.Handle, 'open', PChar(DirectoryEdit.Text), nil,
      nil, SW_SHOWNORMAL);
  end
  else
  begin
    Application.MessageBox
      ('Cannot open output folder because it does not exist!', 'Error',
      MB_ICONERROR);
  end;

end;

procedure TForm1.PositionTimerTimer(Sender: TObject);

begin

  if Process.ProcessInfo.hProcess > 0 then
  begin

    // decide running process kind
    if ProcessTypeList[FileIndex] = '1' then
    begin
      // video encoding
      CurrentProgressBar.Progress := x264Percentage(ConsoleOutputEdit.Text);
    end
    else if ProcessTypeList[FileIndex] = '2' then
    begin
      // audio encoding
      CurrentProgressBar.Progress := FFMpegPercentage(ConsoleOutputEdit.Text);
    end
    else if ProcessTypeList[FileIndex] = '3' then
    begin
      // mkvmerge
    end
    else if ProcessTypeList[FileIndex] = '4' then
    begin
      // mp4box
      // CurrentProgressBar.Style := pbstNormal;
      // CurrentProgressBar.Position := Mp4BoxPercentage(ConsoleOutputEdit.Text);
    end
    else if ProcessTypeList[FileIndex] = '5' then
    begin
      // mkvextract
      CurrentProgressBar.Progress :=
        MkvExtractPercentage(ConsoleOutputEdit.Text);
    end
    else if ProcessTypeList[FileIndex] = '6' then
    begin
      // faac
      CurrentProgressBar.Progress := FAACPercentage(ConsoleOutputEdit.Text);
    end
    else if ProcessTypeList[FileIndex] = '7' then
    begin
      // neroaacenc
      CurrentProgressBar.Progress := NeroPercentage(ConsoleOutputEdit.Text);
    end;

    TotalProgressBar.Progress := LastPercent +
      (CurrentProgressBar.Progress div CommandLines.Count);

    Form1.Caption := FloatToStr(TotalProgressBar.Progress) + '% [TX264]';


    SetProgressValue(Form1.Handle, TotalProgressBar.Progress, 100);

  end;

end;

procedure TForm1.RemoveAllBtnClick(Sender: TObject);
begin

  FileList.Items.Clear;

end;

procedure TForm1.RemoveBtnClick(Sender: TObject);
begin

  FileList.DeleteSelected;

end;

procedure TForm1.ResizeBtnClick(Sender: TObject);
begin

  WidthEdit.Enabled := ResizeBtn.Checked;
  HeightEdit.Enabled := ResizeBtn.Checked;
  ResizeMethodList.Enabled := ResizeBtn.Checked;

end;

procedure TForm1.SaveOptions;
var
  SettingsFile: TIniFile;
begin

  SettingsFile := TIniFile.Create(AppFolder + 'settings.ini');
  try

    with SettingsFile do
    begin
      WriteString('Settings', 'OutDir', DirectoryEdit.Text);

      WriteInteger('Settings', 'PageIndex', PageControl.ActivePageIndex);
      WriteInteger('Settings', 'EncodeMode', EncodeModeList.ItemIndex);
      WriteInteger('Settings', 'Profile', ProfileList.ItemIndex);
      WriteInteger('Settings', 'Preset', PresetsList.ItemIndex);
      WriteInteger('Settings', 'Tune', TuneList.ItemIndex);
      WriteString('Settings', 'Bitrate', BitrateEdit.Text);
      WriteString('Settings', 'Quant', QuantEdit.Text);
      WriteString('Settings', 'CRF', CRFEdit.Text);

      WriteBool('Settings', 'CFR', ConstantFPSBtn.Checked);
      WriteBool('Settings', 'Subtitle', SubtitleBtn.Checked);
      WriteBool('Settings', 'BitrateTol', BitrateTolBtn.Checked);
      WriteString('Settings', 'BitrateTolValue', BitrateTolEdit.Text);
      WriteInteger('Settings', 'Container', ContainerList.ItemIndex);

      WriteBool('Settings', 'Resize', ResizeBtn.Checked);
      WriteString('Settings', 'Width', WidthEdit.Text);
      WriteString('Settings', 'Height', HeightEdit.Text);
      WriteInteger('Settings', 'SizeList', VideoSizeList.ItemIndex);
      WriteInteger('Settings', 'ResizeMethod', ResizeMethodList.ItemIndex);

      WriteBool('Settings', 'Crop', CropBtn.Checked);
      WriteString('Settings', 'CropLeft', CropLeftEdit.Text);
      WriteString('Settings', 'CropTop', CropTopEdit.Text);
      WriteString('Settings', 'CropBottom', CropBottomEdit.Text);
      WriteString('Settings', 'CropRight', CropRightEdit.Text);

      WriteInteger('Settings', 'AudioPage', AudioPages.ActivePageIndex);
      WriteInteger('Settings', 'Samplerate', AudioSampleRateList.ItemIndex);
      WriteInteger('Settings', 'Channel', AudioChannelList.ItemIndex);

      WriteInteger('Settings', 'FAACEncode', FAACEncodeList.ItemIndex);
      WriteString('Settings', 'FAACQuality', FAACQualityEdit.Text);
      WriteString('Settings', 'FAACBitrate', FAACBitrateEdit.Text);

      WriteInteger('Settings', 'NeroEncode', NeroEncodingList.ItemIndex);
      WriteString('Settings', 'NeroQuality', NeroQualityEdit.Text);
      WriteString('Settings', 'NeroBitrate', NeroBitrateEdit.Text);
      WriteInteger('Settings', 'NeroProfile', NeroProfileList.ItemIndex);

      WriteString('Settings', 'CustomVideo', CustomVideoOptionsEdit.Text);
      WriteString('Settings', 'CustomAudio', CustomAudioOptionsEdit.Text);
      WriteString('Settings', 'CustomMKV', CustomMKVEdit.Text);
      WriteString('Settings', 'CustomMP4', CustomMP4Edit.Text);
      WriteString('Settings', 'CustomSub', CustomMKVExtractEdit.Text);

      WriteBool('Settings', 'thread', ThreadsBtn.Checked);
      WriteString('Settings', 'ThreadStr', ThreadsEdit.Text);
      WriteBool('Settings', 'Slice', SliceThreadsBtn.Checked);
      WriteString('Settings', 'SliceThreadStr', SliceThreadsEdit.Text);
    end;

  finally
    SettingsFile.Free;
  end;

end;

procedure TForm1.SliceThreadsBtnClick(Sender: TObject);
begin

  SliceThreadsEdit.Enabled := SliceThreadsBtn.Checked;

end;

procedure TForm1.StartBtnClick(Sender: TObject);
var
  i: Integer;
begin

  if FileList.Items.Count > 0 then
  begin

    if DirectoryExists(DirectoryEdit.Text) then
    begin

      // neroaac
      if (AudioPages.ActivePageIndex = 1) and (not FileExists(NeroAACPath)) then
      begin
        Application.MessageBox('Cannot find neroaacenc.exe! Please select an other audio encoder!', 'Error', MB_ICONERROR);
      end
      else
      begin
        CommandLines.Clear;
        Durations.Clear;
        ProcessTypeList.Clear;
        Infos.Clear;

        Form1.Caption := 'Creating command lines, please wait...';
        DisableUI;

        for i := 0 to FileList.Items.Count - 1 do
        begin
          Application.ProcessMessages;

          // create and command line to VideoCommandLines
          AddCommandLine(i);
        end;
        CommandLines.SaveToFile('C:\CMD.txt');
        FileIndex := 0;
        DurationIndex := 0;
        LastPercent := 0;
        StoppedByUser := False;

        Form1.Caption := 'TX264';

        Process.ApplicationName := x264Path;;
        Process.CommandLine := CommandLines.Strings[0];
        InfoEdit.Text := Infos[0];
        Process.Run;

        PositionTimer.Enabled := True;
        SetProgressState(Form1.Handle, tbpsNormal);
      end;

    end;

  end;

end;

procedure TForm1.StopBtnClick(Sender: TObject);
begin

  if Process.ProcessInfo.hProcess > 0 then
  begin
    TerminateProcess(Process.ProcessInfo.hProcess, 0);
    StoppedByUser := True;
  end;

end;

procedure TForm1.ThreadsBtnClick(Sender: TObject);
begin

  ThreadsEdit.Enabled := ThreadsBtn.Checked;

end;

function TForm1.TimeToInt(const TimeStr: string): Integer;
var
  TimeList: TStringList;
  hour: Integer;
  minute: Integer;
  second: Integer;
begin

  Result := 0;

  if Length(TimeStr) = 8 then
  begin

    TimeList := TStringList.Create;
    try
      TimeList.Delimiter := ':';
      TimeList.StrictDelimiter := True;
      TimeList.DelimitedText := TimeStr;

      hour := 0;
      minute := 0;
      second := 0;

      if TimeList.Count = 3 then
      begin

        if IsStringNumeric(TimeList[0]) then
        begin
          hour := StrToInt(TimeList[0]);
        end;

        if IsStringNumeric(TimeList[1]) then
        begin
          minute := StrToInt(TimeList[1]);
        end;

        if IsStringNumeric(TimeList[2]) then
        begin
          second := StrToInt(TimeList[2]);
        end;

        Result := (hour * 3600) + (minute * 60) + second;

      end;

    finally
      FreeAndNil(TimeList);
    end;

  end;
end;

procedure TForm1.UpBtnClick(Sender: TObject);
begin

  FileList.MoveSelectedUp;

end;

procedure TForm1.VideoSizeListChange(Sender: TObject);
begin

  case VideoSizeList.ItemIndex of
    0:
      begin
        WidthEdit.Text := '160';
        HeightEdit.Text := '112';
      end;
    1:
      begin
        WidthEdit.Text := '176';
        HeightEdit.Text := '114';
      end;
    2:
      begin
        WidthEdit.Text := '220';
        HeightEdit.Text := '176';
      end;
    3:
      begin
        WidthEdit.Text := '320';
        HeightEdit.Text := '240';
      end;
    4:
      begin
        WidthEdit.Text := '352';
        HeightEdit.Text := '240';
      end;
    5:
      begin
        WidthEdit.Text := '352';
        HeightEdit.Text := '288';
      end;
    6:
      begin
        WidthEdit.Text := '368';
        HeightEdit.Text := '208';
      end;
    7:
      begin
        WidthEdit.Text := '480';
        HeightEdit.Text := '272';
      end;
    8:
      begin
        WidthEdit.Text := '480';
        HeightEdit.Text := '320';
      end;
    9:
      begin
        WidthEdit.Text := '480';
        HeightEdit.Text := '480';
      end;
    10:
      begin
        WidthEdit.Text := '480';
        HeightEdit.Text := '576';
      end;
    11:
      begin
        WidthEdit.Text := '512';
        HeightEdit.Text := '384';
      end;
    12:
      begin
        WidthEdit.Text := '640';
        HeightEdit.Text := '480';
      end;
    13:
      begin
        WidthEdit.Text := '720';
        HeightEdit.Text := '480';
      end;
    14:
      begin
        WidthEdit.Text := '720';
        HeightEdit.Text := '576';
      end;
    15:
      begin
        WidthEdit.Text := '1080';
        HeightEdit.Text := '720';
      end;
    16:
      begin
        WidthEdit.Text := '1280';
        HeightEdit.Text := '720';
      end;
    17:
      begin
        WidthEdit.Text := '1440';
        HeightEdit.Text := '1080';
      end;
    18:
      begin
        WidthEdit.Text := '1920';
        HeightEdit.Text := '1080';
      end;
  end;

end;

function TForm1.x264Percentage(const x264Output: string): Integer;
var
  StrPos: Integer;
  TmpStr: string;
  TmpInt: Integer;
  FConsoleOutput: string;
begin

  Result := 0;
  StrPos := -1;

  FConsoleOutput := Trim(x264Output);

  if Length(FConsoleOutput) > 0 then
  begin

    if Copy(FConsoleOutput, 0, 1) = '[' then
    begin
      StrPos := Pos('%]', FConsoleOutput);

      if StrPos > -1 then
      begin
        TmpStr := Copy(FConsoleOutput, 2, StrPos);
        Delete(TmpStr, Length(TmpStr) - 3, 4);

        if TryStrToInt(TmpStr, TmpInt) then
        begin
          Result := TmpInt;
        end;

      end;

    end;

  end;

end;

procedure TForm1.ProcessRead(Sender: TObject; const S: string;
  const StartsOnNewLine: Boolean);
begin
  log.Add(S);
  ConsoleOutputEdit.Text := Trim(S);

end;

procedure TForm1.ProcessTerminate(Sender: TObject; ExitCode: Cardinal);
begin

  // if muxer clear temp folder
  if (ProcessTypeList[FileIndex] = '3') or
    (ProcessTypeList[FileIndex] = '4') then
  begin
    DeleteTempFiles();
  end;

  Inc(FileIndex);

  // if (ProcessTypeList[FileIndex] = '2') or
  // (ProcessTypeList[FileIndex] = '7') then
  // begin
  // Inc(DurationIndex); // to next item in the list
  // end;

  LastPercent := Round((100 * FileIndex) div CommandLines.Count);

  if StoppedByUser then
  begin
    with Form3.OutputList.Items do
    begin
      Add('Command lines:');
      AddStrings(CommandLines);
      Add('');
      Add('Outputs:');
      AddStrings(Process.ConsoleOutput);
      Add('');
    end;

    EnableUI;

    ConsoleOutputEdit.Text := '';
    InfoEdit.Text := '';
    Form1.Caption := 'TX264';

    TotalProgressBar.Progress := 0;
    SetProgressValue(Form1.Handle, 0, 100);
    SetProgressState(Form1.Handle, tbpsNone);
    PositionTimer.Enabled := False;
    CurrentProgressBar.Progress := 0;

    DeleteTempFiles();
  end
  else
  begin

    if FileIndex < CommandLines.Count then
    begin

      if ProcessTypeList[FileIndex] = '1' then
      begin
        // video encoding
        Process.ApplicationName := x264Path;
      end
      else if ProcessTypeList[FileIndex] = '2' then
      begin
        // audio encoding
        Process.ApplicationName := FFMpegPath;
      end
      else if ProcessTypeList[FileIndex] = '3' then
      begin
        // mkvmerge
        Process.ApplicationName := MkvMergePath;
      end
      else if ProcessTypeList[FileIndex] = '4' then
      begin
        // mp4box
        Process.ApplicationName := Mp4BoxPath;
      end
      else if ProcessTypeList[FileIndex] = '5' then
      begin
        // mkvextract
        Process.ApplicationName := MkvExtractPath;
      end
      else if ProcessTypeList[FileIndex] = '6' then
      begin
        // faac
        Process.ApplicationName := FAACPath;
      end
      else if ProcessTypeList[FileIndex] = '7' then
      begin
        // neroaacenc
        Process.ApplicationName := NeroAACPath;
      end;

      if not FileExists(Process.ApplicationName) then
      begin
        Application.MessageBox('Cannot find encoder!', 'Fatal Error',
          MB_ICONERROR);
        StoppedByUser := True;
      end
      else
      begin
        Process.CommandLine := CommandLines.Strings[FileIndex];
        InfoEdit.Text := Infos[FileIndex];
        Process.Run;
      end;

    end
    else
    begin
      with Form3.OutputList.Items do
      begin
        Add('Command lines:');
        AddStrings(CommandLines);
        Add('');
        Add('Outputs:');
        AddStrings(Process.ConsoleOutput);
        Add('');
      end;

      EnableUI;

      ConsoleOutputEdit.Text := '';
      InfoEdit.Text := '';
      Form1.Caption := 'TX264';

      TotalProgressBar.Progress := 0;
      SetProgressValue(Form1.Handle, 0, 100);
      SetProgressState(Form1.Handle, tbpsNone);
      PositionTimer.Enabled := False;
      CurrentProgressBar.Progress := 0;

      DeleteTempFiles();
    end;

  end;

end;

end.
