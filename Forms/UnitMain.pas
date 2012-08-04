unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvExMask, JvSpin, XPMan, ExtCtrls,
  Menus,
  JvBaseDlg, JvBrowseFolder, JvExStdCtrls, JvToolEdit,
  JvComponentBase,
  JvCreateProcess, JvThread, ComCtrls, JvExComCtrls, ShellAPI,
  StrUtils,
  MediaInfoDll, JvComputerInfoEx, IniFiles, JvDragDrop,
  JvUrlListGrabber, JvUrlGrabbers, CommCtrl, sSkinProvider, sSkinManager,
  sPanel,
  sButton, sLabel, sListBox, sCheckBox, sComboBox, sEdit, sGauge, sBitBtn,
  Vcl.ImgList, acAlphaImageList, JvSearchFiles, Vcl.Samples.Spin, JvBackgrounds,
  JvListView;

type
  TMainForm = class(TForm)
    RemoveBtn: TsBitBtn;
    RemoveAllBtn: TsBitBtn;
    UpBtn: TsBitBtn;
    DownBtn: TsBitBtn;
    OutputBtn: TsBitBtn;
    StartBtn: TsBitBtn;
    StopBtn: TsBitBtn;
    EncodeModeList: TsComboBox;
    QuantEdit: TJvSpinEdit;
    XPManifest1: TXPManifest;
    BitrateEdit: TJvSpinEdit;
    CustomVideoOptionsEdit: TEdit;
    AddMenu: TPopupMenu;
    AddFiles1: TMenuItem;
    AddFolder1: TMenuItem;
    OpenDialog: TOpenDialog;
    OpenFolderDialog: TJvBrowseForFolderDialog;
    DirectoryEdit: TJvDirectoryEdit;
    Label1: TLabel;
    Process: TJvCreateProcess;
    LogThread: TJvThread;
    LogsBtn: TsBitBtn;
    PositionTimer: TTimer;
    AddBtn: TsBitBtn;
    CRFEdit: TJvSpinEdit;
    Label4: TLabel;
    AboutBtn: TsBitBtn;
    Label10: TsLabel;
    ResizeBtn: TsCheckBox;
    WidthEdit: TJvSpinEdit;
    HeightEdit: TJvSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    ResizeMethodList: TsComboBox;
    CropBtn: TsCheckBox;
    CropLeftEdit: TJvSpinEdit;
    CropTopEdit: TJvSpinEdit;
    CropBottomEdit: TJvSpinEdit;
    CropRightEdit: TJvSpinEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    PresetsList: TsComboBox;
    ProfileList: TsComboBox;
    TuneList: TsComboBox;
    ContainerList: TsComboBox;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TsPanel;
    Panel2: TsPanel;
    SystemInfo: TJvComputerInfoEx;
    TabSheet4: TTabSheet;
    Panel4: TsPanel;
    CustomAudioOptionsEdit: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    ConstantFPSBtn: TsCheckBox;
    BitrateTolEdit: TJvSpinEdit;
    Label24: TLabel;
    SubtitleBtn: TsCheckBox;
    TabSheet5: TTabSheet;
    CustomMKVEdit: TEdit;
    CustomMP4Edit: TEdit;
    CustomMKVExtractEdit: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    VideoSizeList: TsComboBox;
    Panel5: TsPanel;
    ThreadsBtn: TsCheckBox;
    SliceThreadsBtn: TsCheckBox;
    ThreadsEdit: TJvSpinEdit;
    SliceThreadsEdit: TJvSpinEdit;
    AudioPages: TPageControl;
    FAAC: TTabSheet;
    TabSheet7: TTabSheet;
    Panel3: TsPanel;
    FAACEncodeList: TsComboBox;
    FAACQualityEdit: TJvSpinEdit;
    FAACBitrateEdit: TJvSpinEdit;
    Label17: TLabel;
    Label20: TLabel;
    Panel6: TsPanel;
    NeroEncodingList: TsComboBox;
    NeroQualityEdit: TJvSpinEdit;
    NeroBitrateEdit: TJvSpinEdit;
    NeroProfileList: TsComboBox;
    Label31: TLabel;
    Label32: TLabel;
    Panel8: TsPanel;
    DragDrop: TJvDragDrop;
    InfoBtn: TsBitBtn;
    UpdateThread: TJvThread;
    UpdateChecker: TJvHttpUrlGrabber;
    CheckUpdateBtn: TsCheckBox;
    TabSheet6: TTabSheet;
    Panel7: TsPanel;
    QaacEncodeMethodList: TsComboBox;
    QaacQualityList: TsComboBox;
    QaacBitrateEdit: TJvSpinEdit;
    QaacvQualityEdit: TJvSpinEdit;
    Label34: TLabel;
    Label35: TLabel;
    QaacHEBtn: TsCheckBox;
    TabSheet8: TTabSheet;
    Panel9: TsPanel;
    TabSheet9: TTabSheet;
    Panel10: TsPanel;
    OggencodeList: TsComboBox;
    OggQualityEdit: TJvSpinEdit;
    OggBitrateEdit: TJvSpinEdit;
    OggManagedBitrateBtn: TsCheckBox;
    Label38: TLabel;
    Label39: TLabel;
    AftenEncodeList: TsComboBox;
    AftenQualityEdit: TJvSpinEdit;
    AftenBitrateEdit: TJvSpinEdit;
    Label41: TLabel;
    Label42: TLabel;
    NoNeroNotifyBtn: TsCheckBox;
    CopyChapertBtn: TsCheckBox;
    AdvancedBtn: TsBitBtn;
    FullLogBtn: TsCheckBox;
    SplittingMethodList: TsComboBox;
    SplitEdit: TJvSpinEdit;
    SplittingBtn: TsCheckBox;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    BitrateTolBtn: TsCheckBox;
    UpdateBtn: TsBitBtn;
    MainMenu: TMainMenu;
    File1: TMenuItem;
    AddFiles2: TMenuItem;
    AddFolder2: TMenuItem;
    Exit1: TMenuItem;
    Edit1: TMenuItem;
    Up1: TMenuItem;
    Down1: TMenuItem;
    Remove1: TMenuItem;
    RemoveAll1: TMenuItem;
    ools1: TMenuItem;
    LogsOutput1: TMenuItem;
    Info1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    CheckUpdate1: TMenuItem;
    ListMenu: TPopupMenu;
    AddFiles3: TMenuItem;
    AddFolder3: TMenuItem;
    Remove2: TMenuItem;
    Clear1: TMenuItem;
    OpenDirectory1: TMenuItem;
    Info2: TMenuItem;
    SameAsSourceBtn: TsCheckBox;
    AudioEffectsBtn: TsBitBtn;
    ProgressPanel: TsPanel;
    Log2Btn: TsBitBtn;
    PageImages: TsAlphaImageList;
    AudioTrackList: TsComboBox;
    FileSearch: TJvSearchFiles;
    AddFolderTree1: TMenuItem;
    Play1: TMenuItem;
    AddFolderTree2: TMenuItem;
    AddMoreBtn: TsBitBtn;
    AudioMethodList: TsComboBox;
    TabSheet11: TTabSheet;
    TabSheet13: TTabSheet;
    sPanel1: TsPanel;
    LameEncodeList: TsComboBox;
    LameBitrateEdit: TJvSpinEdit;
    LameVBREdit: TJvSpinEdit;
    Label7: TLabel;
    Label13: TLabel;
    LameQualityEdit: TJvSpinEdit;
    Label14: TLabel;
    SummaryView: TTreeView;
    OpenOut2Btn: TsBitBtn;
    ConsoleOutputList: TsListBox;
    sPanel2: TsPanel;
    AddFolderTree3: TMenuItem;
    ProgressList: TListView;
    ProgressImages: TsAlphaImageList;
    FileList: TListView;
    ListImage: TsAlphaImageList;
    PostEncodeList: TsComboBox;
    Timer: TTimer;
    FileSizeBtn: TsCheckBox;
    FileSizeEdit: TJvSpinEdit;
    SARBtn: TsCheckBox;
    SARList: TsComboBox;
    SAR1Edit: TJvSpinEdit;
    SAR2Edit: TJvSpinEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    TabSheet16: TTabSheet;
    sPanel3: TsPanel;
    FLACCompList: TsComboBox;
    FLACEMSBtn: TsCheckBox;
    LevelList: TsComboBox;
    AudioEncoderList: TsComboBox;
    PredefList: TsComboBox;
    ApplyBtn: TsBitBtn;
    SaveCurrentAsBtn: TsBitBtn;
    sBitBtn1: TsBitBtn;
    Force32bitBtn: TsCheckBox;
    AutoLogSave: TsCheckBox;
    AdvancedOptionsList: TsComboBox;
    PreviewProcess: TJvCreateProcess;
    PreViewBtn: TsBitBtn;
    FastPreviewBtn: TsCheckBox;
    PreviewEdit: TJvSpinEdit;
    sLabel3: TsLabel;
    FilterPreview1: TMenuItem;
    TempEdit: TJvDirectoryEdit;
    Label15: TLabel;
    Button1: TButton;
    TabSheet10: TTabSheet;
    sPanel4: TsPanel;
    Mp4IsmaBtn: TsCheckBox;
    Mp4WebBtn: TsCheckBox;
    Mp4WebEdit: TJvSpinEdit;
    Mp4SBRBtn: TsCheckBox;
    AudioLangList: TsComboBox;
    AudioLangCopyBtn: TsCheckBox;
    CurrentProgressBar: TsGauge;
    TotalProgressBar: TsGauge;
    ConsoleOutputEdit: TsLabel;
    GeneralBtn: TsBitBtn;
    FiltersBtn: TsBitBtn;
    CustomOptionsBtn: TsBitBtn;
    ContainerBtn: TsBitBtn;
    AudioBtn: TsBitBtn;
    OtherBtn: TsBitBtn;
    Bevel1: TBevel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    SummaryBtn: TsBitBtn;
    ProgressBtn: TsBitBtn;
    ConsoleOutputBtn: TsBitBtn;
    sLabel6: TsLabel;
    MKVSBRBtn: TsCheckBox;
    TimePassedLabel: TsLabelFX;
    TabSheet12: TTabSheet;
    sPanel5: TsPanel;
    FHGMethodList: TsComboBox;
    FHGProfileList: TsComboBox;
    FHGQualityEdit: TJvSpinEdit;
    FHGBitrateEdit: TJvSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
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
    procedure InfoBtnClick(Sender: TObject);
    procedure UpdateThreadExecute(Sender: TObject; Params: Pointer);
    procedure UpdateCheckerDoneFile(Sender: TObject; FileName: string;
      FileSize: Integer; Url: string);
    procedure QaacHEBtnClick(Sender: TObject);
    procedure QaacEncodeMethodListChange(Sender: TObject);
    procedure OggencodeListChange(Sender: TObject);
    procedure AftenEncodeListChange(Sender: TObject);
    procedure AdvancedBtnClick(Sender: TObject);
    procedure SplittingBtnClick(Sender: TObject);

    procedure UpdateListboxScrollBox(ListBox: TsListBox);

    // check if string is numeric
    function IsStringNumeric(Str: string): Boolean;
    procedure UpdateBtnClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure OpenDirectory1Click(Sender: TObject);
    procedure MplayerProcessTerminate(Sender: TObject; ExitCode: Cardinal);
    procedure PreviewBtnClick(Sender: TObject);
    procedure AudioEffectsBtnClick(Sender: TObject);
    procedure FileListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure FileListClick(Sender: TObject);
    procedure AudioTrackListChange(Sender: TObject);
    procedure AddFolderTree1Click(Sender: TObject);
    procedure FileSearchProgress(Sender: TObject);
    procedure FileSearchFindFile(Sender: TObject; const AName: string);
    procedure Play1Click(Sender: TObject);
    procedure AddMoreBtnClick(Sender: TObject);
    procedure AudioMethodListChange(Sender: TObject);
    procedure LameEncodeListChange(Sender: TObject);
    procedure ProgressListResize(Sender: TObject);
    procedure FileListResize(Sender: TObject);
    procedure FileListAdvancedCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure TimerTimer(Sender: TObject);
    procedure FileSizeBtnClick(Sender: TObject);
    procedure SARBtnClick(Sender: TObject);
    procedure SARListChange(Sender: TObject);
    procedure AudioEncoderListChange(Sender: TObject);
    procedure SaveCurrentAsBtnClick(Sender: TObject);
    procedure PredefListChange(Sender: TObject);
    procedure ApplyBtnClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure Force32bitBtnClick(Sender: TObject);
    procedure AdvancedOptionsListChange(Sender: TObject);
    procedure PreviewProcessTerminate(Sender: TObject; ExitCode: Cardinal);
    procedure PreviewProcessRead(Sender: TObject; const S: string;
      const StartsOnNewLine: Boolean);
    procedure SameAsSourceBtnClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure TempEditChange(Sender: TObject);
    procedure AudioLangCopyBtnClick(Sender: TObject);
    procedure GeneralBtnClick(Sender: TObject);
    procedure FiltersBtnClick(Sender: TObject);
    procedure AudioBtnClick(Sender: TObject);
    procedure ContainerBtnClick(Sender: TObject);
    procedure CustomOptionsBtnClick(Sender: TObject);
    procedure OtherBtnClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ProgressBtnClick(Sender: TObject);
    procedure SummaryBtnClick(Sender: TObject);
    procedure ConsoleOutputBtnClick(Sender: TObject);
    procedure Mp4WebBtnClick(Sender: TObject);
  private
    { Private declarations }
    CommandLines: TStringList;
    ProcessTypeList: TStringList;
    { 1=x264, 2=ffmpeg, 3=mkv, 4=mp4box, 5=mkvextract, 6=faac, 7=neroaac, 8=qaac,
      9=mp4box_extract, 10=oggenc, 11=aften, 12=mkvextract-chapter, 13=mp4box-chapter,
      14=ffmpeg-encoding, 15=sox, 16=lame, 17=flac, 18=fhg }
    Durations: TStringList;
    Infos: TStringList;
    FilesToDelete: TStringList;
    SubtitleFiles: TStringList;
    AudioIndexes: TStringList;
    AudioTracks: TStringList;
    CurrentFileIndexes: TStringList;
    Files: TStringList;
    FilesToCheck: TStringList;
    FilesAddedLater: TStringList;
    PreviewProcessIndex: integer;

    x264Path, FFMpegPath, Mp4BoxPath, MkvMergePath, MkvExtractPath, QaacPath,
      AftenPath, OggEncPath, SoxPath, LamePath, FLACPath: string;
    NeroAACPath, FAACPath, FHGPath: string;
    ConsoleOutput: string;

    FileIndex: Integer;
    DurationIndex: Integer;
    StoppedByUser: Boolean;
    LastPercent: Integer;

    LastDirectory: string;

    TimePassed: Integer;

    // returns % done
    function x264Percentage(const x264Output: string): Integer;
    function FFMpegPercentage(const FFMpegOutput: string): Integer;
    function Mp4BoxPercentage(const Mp4BoxOutput: string): Integer; // !!!
    function MkvExtractPercentage(const MkvExtractOutput: string): Integer;
    function NeroPercentage(const NeroOutput: string): Integer;
    function FAACPercentage(const FAACOutput: string): Integer;
    function AftenPercentage(const AftenOutput: string): Integer;
    function SoXPercentage(const SoxOutput: string): Integer;
    function LamePercentage(const LameOutput: string): Integer;
    function FLACPercentage(const FLACOutput: string): Integer;

    // get full info for selected file
    procedure GetFullInfo(const FileName: string);

    // hh:mm:ss to int
    function TimeToInt(const TimeStr: string): Integer;

    // gets duration of a file in seconds
    function GetDuration(Index: integer): string;
    function GetDurationEx(const FileName: string): integer;

    // gets frame per second info of a file
    function GetFPS(Index: Integer): string;

    // deletes temp. files
    procedure DeleteTempFiles;

    // checks output files to detect errors
    function CheckOutputFiles: Boolean;

    // checks a single output file
    function CheckOutputFile(const FileIndex: integer): Boolean;

    // disable/enable UI
    procedure DisableUI();
    procedure EnableUI();

    // get height/width
    function GetHeight(Index: Integer): Integer;
    function GetWidth(Index: Integer): Integer;

    // adds command line for x264.exe
    procedure AddCommandLine(Index: Integer; AdvancedOptions: string);

    // gets number of frames
    function GetNumberOfFrames(Index: integer): integer;

    // creates a temp file for preview
    procedure CreatePreview(Index: integer);

    // calculates bitrate for a curtain file size
    function CalculateBitrate(const TargetSize: integer;
      const FileLength: integer; const AudioStreamSize: integer): string;

    // gets audio streams size
    function GetAudioSize(const FileName: string;
      const AudioIndex: integer): integer;

    // fills summary list
    procedure FillSummaryList();
    procedure FillProgressList();

    // gets audio codec
    function GetAudioKind(const FileName: string; AudioID: Integer): string;

    // creates advanced command line
    function CreateAdvancedCommandLine: string;

    // gets subtitle count from file
    function GetSubtitleCount(Index: integer): Integer;

    // gets subtitle's id in the ile
    function GetSubtitleID(Index: Integer; SubIndex: Integer): string;

    // gets subtitle kind
    function GetSubtitleKind(Index: Integer; SubIndex: Integer): string;

    // finds external subtitles
    procedure GetExternalSubtitles(Index: Integer);

    function IntToTime(IntTime: Integer): string;

    // save/load options
    procedure LoadOptions();
    procedure SaveOptions();

    // adds a file to the file list extracting audio info
    procedure AddFile(const FileName: string; const AddingLater: Boolean);

    // checks if source has chapters
    function HasChapters(const FileName: string): Boolean;

    // loads predefines
    procedure LoadPreDefines();

    // applies selected predef
    procedure ApplyPreDef(const PreDefName: string);

    // saves current state into a predef file
    procedure SavePreDef(const PreDefName: string);

    // checks if os is 64-bit
    function IsOS64Bit: Boolean;
    procedure Set32_64Backend();

    // returns audio lang option
    function GetAudioLang(Index: integer; AudioIndex: integer): string;
  public
    { Public declarations }
    AppFolder: string;
    TempFolder: string;
    AddingStopped: Boolean;
  end;

const
  BuildInt = 2485;

var
  MainForm: TMainForm;

implementation

uses UnitLog, windows7taskbar, UnitInfo, UnitAbout, UnitAdvancedOptions,
  UnitUpdater, UnitSox, UnitProgress;

{$R *.dfm}

procedure TMainForm.AboutBtnClick(Sender: TObject);
begin

  Self.Enabled := False;
  AboutForm.show;

end;

procedure TMainForm.AddBtnClick(Sender: TObject);
begin

  AddMenu.Popup(AddBtn.Left + Self.Left + AddBtn.Width, Self.Top + AddBtn.Top +
    AddBtn.Height * 2)

end;

function TMainForm.GetWidth(Index: Integer): Integer;
var
  MediaInfoHandle: Cardinal;
  Height: string;
  FileName: string;
begin

  FileName := Files[Index];

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
        Height := MediaInfo_Get(MediaInfoHandle, Stream_Video, 0, 'Width',
          Info_Text, Info_Name);

        if not IsStringNumeric(Height) then
        begin
          Height := '240';
        end;

        Result := StrToInt(Height);

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TMainForm.GetHeight(Index: Integer): Integer;
var
  MediaInfoHandle: Cardinal;
  Height: string;
  FileName: string;
begin

  FileName := Files[Index];

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
        Height := MediaInfo_Get(MediaInfoHandle, Stream_Video, 0, 'Height',
          Info_Text, Info_Name);

        if not IsStringNumeric(Height) then
        begin
          Height := '240';
        end;

        Result := StrToInt(Height);

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TMainForm.GetNumberOfFrames(Index: integer): integer;
var
  MediaInfoHandle: Cardinal;
  FrameCount: string;
  FileName: string;
begin

  FileName := Files[Index];
  FrameCount := '0';

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
        FrameCount := MediaInfo_Get(MediaInfoHandle, Stream_Video, 0,
          'FrameCount', Info_Text, Info_Name);

        if not IsStringNumeric(FrameCount) then
        begin
          FrameCount := '0';
        end;

        Result := StrToInt(FrameCount);

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

procedure TMainForm.AddCommandLine(Index: Integer; AdvancedOptions: string);
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
  SubtitleCount: Integer;
  SubtitleStr: string;
  SubtitleID: string;
  subtitleMergeCMD: string;
  ChapterStr: string;
  ChapterOutName: string;
  i, j: Integer;
  SplittingStr: string;
  FileIndex: integer;
  TmpFileName: string;
  SARValue1, SARValue2: string;
  FilterCMD: string;
  MKVSBRStr: string;
begin

  // paths and files
  FileName := Files[Index];
  case ContainerList.ItemIndex of
    0:
      OutFileName := ChangeFileExt(FileName, '.mkv');
    1:
      OutFileName := ChangeFileExt(FileName, '.mp4');
  end;
  OutFileName := TempFolder + '\' + ExtractFileName(OutFileName);

  TmpFileName := FileName;
  // if file exists add index
  case ContainerList.ItemIndex of
    0:
      begin
        // same as source
        if not SameAsSourceBtn.Checked then
        begin
          TmpFileName := DirectoryEdit.Text + '\' +
            ExtractFileName(TmpFileName);
        end;

        OutMuxerFile := ChangeFileExt(TmpFileName, '.mkv');

        FileIndex := 0;
        if FileExists(OutMuxerFile) then
        begin
          while FileExists(OutMuxerFile) do
          begin
            Inc(FileIndex);
            OutMuxerFile := ChangeFileExt(TmpFileName,
              '_' + FloatToStr(FileIndex) + '.mkv');

          end;
        end;

      end;
    1:
      begin
        // same as source
        if not SameAsSourceBtn.Checked then
        begin
          TmpFileName := DirectoryEdit.Text + '\' +
            ExtractFileName(TmpFileName);
        end;
        OutMuxerFile := ChangeFileExt(TmpFileName, '.mp4');

        FileIndex := 0;
        if FileExists(OutMuxerFile) then
        begin
          while FileExists(OutMuxerFile) do
          begin
            Inc(FileIndex);
            OutMuxerFile := ChangeFileExt(TmpFileName,
              '_' + FloatToStr(FileIndex) + '.mp4');

          end;
        end;
      end;
  end;

  // rate control
  case EncodeModeList.ItemIndex of
    0:
      TmpStr := TmpStr + ' --crf ' + ReplaceStr(FloatToStr(CRFEdit.Value),
        ',', '.');
    1:
      TmpStr := TmpStr + ' --qp ' + FloatToStr(QuantEdit.Value);
    2 .. 3:
      begin

        if not FileSizeBtn.Checked then
        begin
          TmpStr := TmpStr + ' --bitrate ' + FloatToStr(BitrateEdit.Value);
        end
        else
        begin
          TmpStr := TmpStr + ' --bitrate ' +
            CalculateBitrate(Round(FileSizeEdit.Value), GetDurationEx(FileName),
            GetAudioSize(FileName, StrToInt(AudioIndexes[Index])));
        end;

        // bitrate tolerance
        if BitrateTolBtn.Checked then
        begin
          TmpStr := TmpStr + ' --ratetol ' + ReplaceStr(BitrateTolEdit.Text,
            ',', '.');
        end;

      end;
  end;

  // advanced options - presets
  case AdvancedOptionsList.ItemIndex of
    0: // presets
      begin
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

        // level
        if LevelList.ItemIndex > 0 then
        begin
          TmpStr := TmpStr + ' --level ' + LevelList.Text;
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
      end;
    1: // advanced
      begin
        TmpStr := TmpStr + ' ' + AdvancedOptions;
      end;
    2: // presets+advanced
      begin

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

        // level
        if LevelList.ItemIndex > 0 then
        begin
          TmpStr := TmpStr + ' --level ' + LevelList.Text;
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

        // advanced
        TmpStr := TmpStr + ' ' + AdvancedOptions;
      end;
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
  FilterCMD := '';
  // Crop
  if CropBtn.Checked then
  begin
    FilterCMD := FilterCMD + '  --video-filter crop:' + CropLeftEdit.Text + ','
      + CropTopEdit.Text + ',' + CropRightEdit.Text + ',' + CropBottomEdit.Text;
  end;

  // resize
  if ResizeBtn.Checked then
  begin
    if Length(FilterCMD) > 0 then
    begin
      FilterCMD := FilterCMD + '/resize:width=' + WidthEdit.Text + ',height=' +
        HeightEdit.Text + ',method=' + LowerCase(ResizeMethodList.Text);
    end
    else
    begin
      FilterCMD := FilterCMD + ' --video-filter resize:width=' + WidthEdit.Text
        + ',height=' + HeightEdit.Text + ',method=' +
        LowerCase(ResizeMethodList.Text);
    end;

    // resize+SAR
    if SARBtn.Checked then
    begin
      SARValue1 := FloatToStr(SAR1Edit.Value / SAR2Edit.Value);
      SARValue2 := FloatToStr(WidthEdit.Value / HeightEdit.Value);
      SARValue1 := ReplaceText(SARValue1, ',', '');
      SARValue1 := ReplaceText(SARValue1, '.', '');
      SARValue2 := ReplaceText(SARValue2, ',', '');
      SARValue2 := ReplaceText(SARValue2, '.', '');

      if Length(SARValue1) > 5 then
      begin
        Delete(SARValue1, 4, MAXINT);
      end;

      if Length(SARValue2) > 5 then
      begin
        Delete(SARValue2, 4, MAXINT);
      end;

      FilterCMD := FilterCMD + ',sar=' + SARValue1 + ':' + SARValue2;
    end;

  end
  else
  begin
    if Length(FilterCMD) > 0 then
    begin
      // SAR+crop
      if SARBtn.Checked then
      begin
        SARValue1 := FloatToStr(SAR1Edit.Value / SAR2Edit.Value);
        SARValue2 := FloatToStr(WidthEdit.Value / HeightEdit.Value);
        SARValue1 := ReplaceText(SARValue1, ',', '');
        SARValue1 := ReplaceText(SARValue1, '.', '');
        SARValue2 := ReplaceText(SARValue2, ',', '');
        SARValue2 := ReplaceText(SARValue2, '.', '');

        if Length(SARValue1) > 5 then
        begin
          Delete(SARValue1, 4, MAXINT);
        end;

        if Length(SARValue2) > 5 then
        begin
          Delete(SARValue2, 4, MAXINT);
        end;

        FilterCMD := FilterCMD + '/resize:sar=' + SARValue1 + ':' + SARValue2;
      end;
    end
    else
    begin
      // just SAR
      if SARBtn.Checked then
      begin
        SARValue1 := FloatToStr(SAR1Edit.Value / SAR2Edit.Value);
        SARValue2 := FloatToStr(WidthEdit.Value / HeightEdit.Value);
        SARValue1 := ReplaceText(SARValue1, ',', '');
        SARValue1 := ReplaceText(SARValue1, '.', '');
        SARValue2 := ReplaceText(SARValue2, ',', '');
        SARValue2 := ReplaceText(SARValue2, '.', '');

        if Length(SARValue1) > 5 then
        begin
          Delete(SARValue1, 4, MAXINT);
        end;

        if Length(SARValue2) > 5 then
        begin
          Delete(SARValue2, 4, MAXINT);
        end;

        FilterCMD := FilterCMD + ' --video-filter resize:sar=' + SARValue1 + ':'
          + SARValue2;
      end;
    end;
  end;

  // filters
  TmpStr := TmpStr + FilterCMD;

  // custom video options
  TmpStr := TmpStr + ' ' + CustomVideoOptionsEdit.Text;

  // add command line
  if EncodeModeList.ItemIndex = 2 then
  begin
    // two pass bitrate
    CommandLines.Add(' --pass 1 ' + TmpStr + ' --stats "' +
      ChangeFileExt(OutFileName, '.stats') + '" --output NUL "' +
      FileName + '"');
    CommandLines.Add(' --pass 2 ' + TmpStr + ' --stats "' +
      ChangeFileExt(OutFileName, '.stats') + '" --output "' + OutFileName +
      '" "' + FileName + '"');
    CurrentFileIndexes.Add(FloatToStr(Index));
    CurrentFileIndexes.Add(FloatToStr(Index));

    Infos.Add('Encoding video (1/2)');
    Infos.Add('Encoding video (2/2)');

    ProcessTypeList.Add('1');
    ProcessTypeList.Add('1');
  end
  else
  begin
    // others
    CommandLines.Add(TmpStr + ' --output "' + OutFileName + '" "' +
      FileName + '"');
    CurrentFileIndexes.Add(FloatToStr(Index));

    Infos.Add('Encoding video');

    ProcessTypeList.Add('1');
  end;

  // audio encoding
  case AudioMethodList.ItemIndex of
    0: // encode audio
      begin

        // avs files no audio encoding
        if AudioIndexes[Index] <> '-1' then
        begin
          // audio decoding
          AudioStr := ' -y -i "' + FileName + '" -vn  -f wav -map 0:' +
            AudioIndexes[Index] + ' ';

          // audio channels carried here because sox caused problems
          if SoXForm.EnableBtn.Checked then
          begin
            case SoXForm.ChannelList.ItemIndex of
              1:
                AudioStr := AudioStr + ' -ac 1';
              2:
                AudioStr := AudioStr + ' -ac 2';
              3:
                AudioStr := AudioStr + ' -ac 6';
            end;
          end;

          TempAudioFile := ChangeFileExt(FileName, '.wav');
          TempAudioFile := TempFolder + '\' + ExtractFileName(TempAudioFile);
          AudioStr := AudioStr + ' "' + TempAudioFile + '"';
          CommandLines.Add(AudioStr);
          CurrentFileIndexes.Add(FloatToStr(Index));
          Durations.Add(GetDuration(index));
          Infos.Add('Extracting audio');

          ProcessTypeList.Add('2');

          // audio filters
          AudioStr := '';

          with SoXForm do
          begin

            if EnableBtn.Checked then
            begin

              // channels
              // case ChannelList.ItemIndex of
              // 1:
              // AudioStr := AudioStr + ' --channels 1';
              // 2:
              // AudioStr := AudioStr + ' -c 2';
              // 3:
              // AudioStr := AudioStr + ' -c 6';
              // end;

              // sample rate
              if SampleList.ItemIndex > 0 then
              begin
                AudioStr := AudioStr + ' -r ' + SampleList.Text;
              end;

              // normalize
              if NormBtn.Checked then
              begin
                AudioStr := AudioStr + ' --norm ';
              end;

              // volume
              if VolumeBtn.Checked then
              begin
                AudioStr := AudioStr + ' −−vol ' + ReplaceText(VolumeEdit.Text,
                  ',', '.');
              end;

              // thread mode
              if ThreadsBtn.Checked then
              begin
                AudioStr := AudioStr + ' −−multi-threaded ';
              end;

              if AudioStr <> '' then
              begin
                AudioStr := AudioStr + ' "' + TempAudioFile + '"';
                TempAudioFile := TempFolder + '\sox.wav';
                AudioStr := AudioStr + ' -V6 --show-progress "' +
                  TempAudioFile + '"';

                CommandLines.Add(AudioStr);
                CurrentFileIndexes.Add(FloatToStr(Index));
                Infos.Add('Applying effects to audio');

                ProcessTypeList.Add('15');
              end;

            end;
          end;

          // audio encoding
          AudioStr := '';

          // dest audio file path
          case AudioPages.ActivePageIndex of
            0 .. 2:
              OutAudioFile := ChangeFileExt(FileName, '.aac');
            3:
              OutAudioFile := ChangeFileExt(FileName, '.ac3');
            4:
              OutAudioFile := ChangeFileExt(FileName, '.ogg');
            5:
              OutAudioFile := ChangeFileExt(FileName, '.mp3');
            6:
              OutAudioFile := ChangeFileExt(FileName, '.wav');
            7:
              OutAudioFile := ChangeFileExt(FileName, '.flac');
            8:
              OutAudioFile := ChangeFileExt(FileName, '.m4a');
          end;
          OutAudioFile := TempFolder + '\' + ExtractFileName(OutAudioFile);

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
                CurrentFileIndexes.Add(FloatToStr(Index));

                Infos.Add('Encoding audio');

                ProcessTypeList.Add('6');

              end;
            1: // neroaac
              begin

                // encoding mode
                case NeroEncodingList.ItemIndex of
                  0: // quality
                    begin
                      AudioStr := AudioStr + ' -q ' +
                        ReplaceStr(NeroQualityEdit.Text, ',', '.');
                    end;
                  1: // abr
                    begin
                      AudioStr := AudioStr + ' -br ' +
                        NeroBitrateEdit.Text + '000';
                    end;
                  2: // cbr
                    begin
                      AudioStr := AudioStr + ' -cbr ' +
                        NeroBitrateEdit.Text + '000';
                    end;
                end;

                // profile
                case NeroProfileList.ItemIndex of
                  1:
                    AudioStr := AudioStr + ' -lc';
                  2:
                    AudioStr := AudioStr + ' -he';
                  3:
                    AudioStr := AudioStr + ' -hev2';
                end;

                // last cmd
                AudioStr := AudioStr + ' -if "' + TempAudioFile + '" -of "' +
                  OutAudioFile + '"';

                CommandLines.Add(AudioStr);
                CurrentFileIndexes.Add(FloatToStr(Index));
                Durations.Add(GetDuration(index));

                Infos.Add('Encoding audio');

                ProcessTypeList.Add('7');

              end;
            2: // qaac
              begin
                // encoding mode
                case QaacEncodeMethodList.ItemIndex of
                  0: // abr
                    begin
                      AudioStr := AudioStr + ' --abr ' + QaacBitrateEdit.Text;
                    end;
                  1: // tvbr
                    begin
                      AudioStr := AudioStr + ' --tvbr ' + QaacvQualityEdit.Text;
                    end;
                  2: // cvbr
                    begin
                      AudioStr := AudioStr + ' --cvbr ' + QaacBitrateEdit.Text;
                    end;
                  3: // cbr
                    begin
                      AudioStr := AudioStr + ' --cbr ' + QaacBitrateEdit.Text;
                    end;
                end;

                // profile
                if QaacHEBtn.Checked then
                begin
                  AudioStr := AudioStr + ' --he';
                end;

                // last cmd
                AudioStr := AudioStr + ' --threading --rate keep "' +
                  TempAudioFile + '" -o "' + OutAudioFile + '"';

                CommandLines.Add(AudioStr);
                CurrentFileIndexes.Add(FloatToStr(Index));
                // Durations.Add(GetDuration(index));

                Infos.Add('Encoding audio');

                ProcessTypeList.Add('8');
              end;
            3: // ac3
              begin
                // encoding mode
                case AftenEncodeList.ItemIndex of
                  0: // quality
                    begin
                      AudioStr := AudioStr + ' -q ' + AftenQualityEdit.Text;
                    end;
                  1: // cbr
                    begin
                      AudioStr := AudioStr + ' -b ' + AftenBitrateEdit.Text;
                    end;
                end;

                // last cmd
                AudioStr := AudioStr + ' -y -v 1 -threads 1 "' + TempAudioFile +
                  '" "' + OutAudioFile + '"';

                CommandLines.Add(AudioStr);
                CurrentFileIndexes.Add(FloatToStr(Index));
                Durations.Add(GetDuration(index));

                Infos.Add('Encoding audio');

                ProcessTypeList.Add('11');
              end;
            4: // oggenc
              begin
                // encoding mode
                case QaacEncodeMethodList.ItemIndex of
                  0: // quality
                    begin
                      AudioStr := AudioStr + ' -q ' + OggQualityEdit.Text;
                    end;
                  1: // bitrate
                    begin
                      AudioStr := AudioStr + ' -b ' + OggBitrateEdit.Text;

                      // managed bitrate mode
                      if OggManagedBitrateBtn.Checked then
                      begin
                        AudioStr := AudioStr + ' --managed ';
                      end;

                    end;
                end;

                // last cmd
                AudioStr := AudioStr + '  "' + TempAudioFile + '" -o "' +
                  OutAudioFile + '"';

                CommandLines.Add(AudioStr);
                CurrentFileIndexes.Add(FloatToStr(Index));

                Infos.Add('Encoding audio');

                ProcessTypeList.Add('10');
              end;
            5: // lame
              begin

                case LameEncodeList.ItemIndex of
                  0: // cbr
                    begin
                      AudioStr := AudioStr + ' --cbr -b ' +
                        LameBitrateEdit.Text;
                    end;
                  1: // abr
                    begin
                      AudioStr := AudioStr + ' --abr ' + LameBitrateEdit.Text;
                    end;
                  2: // vbr
                    begin
                      AudioStr := AudioStr + ' -V ' +
                        ReplaceStr(LameVBREdit.Text, ',', '.');
                    end;
                end;

                AudioStr := AudioStr + ' --verbose  -q ' + LameQualityEdit.Text;

                // last cmd
                AudioStr := AudioStr + '  "' + TempAudioFile + '" -o "' +
                  OutAudioFile + '"';

                CommandLines.Add(AudioStr);
                CurrentFileIndexes.Add(FloatToStr(Index));

                Infos.Add('Encoding audio');

                ProcessTypeList.Add('16');

              end;
            6: // wav
              begin
                OutAudioFile := TempAudioFile;
              end;
            7: // flac
              begin

                AudioStr := AudioStr + ' -' +
                  FloatToStr(FLACCompList.ItemIndex);

                if FLACEMSBtn.Checked then
                begin
                  AudioStr := AudioStr + ' -e ';
                end;

                // last cmd
                AudioStr := AudioStr + '  "' + TempAudioFile + '" -o "' +
                  OutAudioFile + '"';

                CommandLines.Add(AudioStr);
                CurrentFileIndexes.Add(FloatToStr(Index));

                Infos.Add('Encoding audio');

                ProcessTypeList.Add('17');
              end;
            8: // FHG
              begin

                // encoding mode
                case FHGMethodList.ItemIndex of
                  0: // cbr
                    begin
                      AudioStr := AudioStr + ' --cbr ' + FHGBitrateEdit.Text;

                      // profile
                      case FHGProfileList.ItemIndex of
                        0:
                          AudioStr := AudioStr + ' --profile auto';
                        1:
                          AudioStr := AudioStr + ' --profile lc';
                        2:
                          AudioStr := AudioStr + ' --profile he';
                        3:
                          AudioStr := AudioStr + ' --profile hev2';
                      end;
                    end;
                  1: // vbr
                    begin
                      AudioStr := AudioStr + ' --vbr ' + FHGQualityEdit.Text;
                    end;
                end;

                // last cmd
                AudioStr := AudioStr + ' "' + TempAudioFile + '" "' +
                  OutAudioFile + '"';

                CommandLines.Add(AudioStr);
                CurrentFileIndexes.Add(FloatToStr(Index));
                Durations.Add(GetDuration(index));

                Infos.Add('Encoding audio');

                ProcessTypeList.Add('18');

              end;
          end;
        end;

      end;
    1: // copy audio
      begin
        if AudioIndexes[Index] <> '-1' then
        begin
          AudioStr := ' -y -i "' + FileName + '" -vn -acodec copy -map 0:' +
            AudioIndexes[Index] + ' ';

          TempAudioFile := ChangeFileExt(FileName,
            GetAudioKind(FileName, StrToInt(AudioIndexes[Index])));
          TempAudioFile := TempFolder + '\' + ExtractFileName(TempAudioFile);
          AudioStr := AudioStr + ' "' + TempAudioFile + '"';
          CommandLines.Add(AudioStr);
          CurrentFileIndexes.Add(FloatToStr(Index));
          Durations.Add(GetDuration(index));
          Infos.Add('Copying audio');
          OutAudioFile := TempAudioFile;

          ProcessTypeList.Add('2');
        end;
      end;
    2: // no audio
      begin
        // nothing to do here
      end;
  end;

  // chapters
  if (CopyChapertBtn.Checked) and (HasChapters(FileName)) then
  begin
    // mkv source
    if LowerCase(ExtractFileExt(FileName)) = '.mkv' then
    begin
      // temp chapter file
      ChapterOutName := TempFolder + '\chapters.txt';

      ChapterStr := ' chapters -s "' + FileName + '"';

      CommandLines.Add(ChapterStr + ' ' + CustomMKVExtractEdit.Text);
      CurrentFileIndexes.Add(FloatToStr(Index));
      Infos.Add('Extracting chapters');
      ProcessTypeList.Add('12'); // mkvextract-chapter
    end
    else if LowerCase(ExtractFileExt(FileName)) = '.mp4' then
    begin
      // mp4 source

      // temp chapter file
      ChapterOutName := ChangeFileExt(FileName, '.chap');
      FilesToDelete.Add(ChapterOutName);

      ChapterStr := ' "' + FileName + '" -dump-chap';

      CommandLines.Add(ChapterStr + ' ' + CustomMP4Edit.Text);
      CurrentFileIndexes.Add(FloatToStr(Index));
      Infos.Add('Extracting chapters');
      ProcessTypeList.Add('13'); // mp4box-chapter
    end;

  end;

  // subtitles
  if SubtitleBtn.Checked then
  begin

    // check external subtitle files first
    GetExternalSubtitles(Index);

    // try to find subtitle within the source file.
    // get subtitle stream count
    SubtitleCount := GetSubtitleCount(Index);
    if SubtitleCount > 0 then
    begin

      // extract subtitle streams
      for I := 1 to SubtitleCount do
      begin
        Application.ProcessMessages;
        SubtitleID := GetSubtitleID(index, i - 1);

        // temp subtitle file

        // mp4 files do not accept ass files
        if (ContainerList.ItemIndex = 0) or
          (GetSubtitleKind(index, i - 1) <> 'ass') then
        begin
          OutSubName := ChangeFileExt(FileName, FloatToStr(i) + '.' +
            GetSubtitleKind(index, i - 1));

          // mkv source
          if LowerCase(ExtractFileExt(FileName)) = '.mkv' then
          begin
            // output to the temp folder
            OutSubName := TempFolder + '\' + ExtractFileName(OutSubName);

            SubtitleStr := SubtitleStr + ' ' + SubtitleID + ':"' +
              OutSubName + '"';
          end
          else if LowerCase(ExtractFileExt(FileName)) = '.mp4' then
          begin
            // mp4 source

            // output to the file directory.
            OutSubName := ChangeFileExt(FileName,
              '_' + FloatToStr(StrToInt(SubtitleID) + 1) + '_text.' +
              GetSubtitleKind(index, i - 1));

            // mp4 source
            // this requires to extract each subtitle stream seperately
            CommandLines.Add(' -srt ' + FloatToStr(StrToInt(SubtitleID) + 1) +
              ' "' + FileName + '"' + ' ' + CustomMP4Edit.Text);
            CurrentFileIndexes.Add(FloatToStr(Index));
            Infos.Add('Extracting subtitle');
            ProcessTypeList.Add('9'); // mp4box-extract
          end;

          SubtitleFiles.Add(OutSubName);
          FilesToDelete.Add(OutSubName);

        end;

      end;

    end;

    // if any subtitle files found -external or within the source file-
    // add command line that'll mux them to the output
    if SubtitleFiles.Count > 0 then
    begin

      // copy to the output

      // mkv destination
      if ContainerList.ItemIndex = 0 then
      begin
        // search subtitle files in temp folder
        // FindSubtitles();

        if SubtitleFiles.Count > 0 then
        begin

          for j := 0 to SubtitleFiles.Count - 1 do
          begin
            Application.ProcessMessages;
            // first one
            if j = 0 then
            begin
              subtitleMergeCMD := '"' + SubtitleFiles.Strings[j] + '" ';
            end
            else
            begin
              subtitleMergeCMD := subtitleMergeCMD + ' "' +
                SubtitleFiles.Strings[j] + '" ';
            end;

          end;

          // for the next time
          SubtitleFiles.Clear;
        end
        else
        begin
          subtitleMergeCMD := '';
        end;

      end
      else
      begin
        // mp4 destination
        // todo: mp4 may require to convert!!!

        // this lines will be added during muxing process

        if SubtitleFiles.Count > 0 then
        begin

          for j := 0 to SubtitleFiles.Count - 1 do
          begin
            Application.ProcessMessages;
            // first one
            if j = 0 then
            begin
              subtitleMergeCMD := ' -add "' + SubtitleFiles.Strings[j] +
                '"#subtitle ';
            end
            else
            begin
              subtitleMergeCMD := subtitleMergeCMD + ' -add "' +
                SubtitleFiles.Strings[j] + '"#subtitle ';
            end;

          end;

          // for the next time
          SubtitleFiles.Clear;
        end
        else
        begin
          subtitleMergeCMD := '';
        end;

      end;

      // add subtitle extraction codes to the command lines
      // mkv source
      if LowerCase(ExtractFileExt(FileName)) = '.mkv' then
      begin
        CommandLines.Add(' tracks "' + FileName + '" ' + SubtitleStr + ' ' +
          CustomMKVExtractEdit.Text);
        CurrentFileIndexes.Add(FloatToStr(Index));
        Infos.Add('Extracting subtitle');
        ProcessTypeList.Add('5'); // mkvextract
      end
      else if LowerCase(ExtractFileExt(FileName)) = '.mp4' then
      begin
        // mp4 source
        // tihs is done for each stream seperately
      end;

    end;

  end;

  // splitting
  if SplittingBtn.Checked then
  begin

    case ContainerList.ItemIndex of
      0: // mkv
        begin

          case SplittingMethodList.ItemIndex of
            0: // time
              begin
                SplittingStr := ' --split ' +
                  IntToTime(Round(SplitEdit.Value)) + ' ';
              end;
            1: // size
              begin
                SplittingStr := ' --split ' + SplitEdit.Text + 'm ';
              end;
          end;

        end;
      1: // mp4
        begin

          case SplittingMethodList.ItemIndex of
            0: // time
              begin
                SplittingStr := ' -split ' + SplitEdit.Text;
              end;
            1: // size
              begin
                SplittingStr := ' -split-size ' +
                  FloatToStr(Round(1024 * SplitEdit.Value));
              end;
          end;

        end;
    end;

  end
  else
  begin
    SplittingStr := '';
  end;

  // muxer
  MuxerStr := '';

  case ContainerList.ItemIndex of
    0: // mkv
      begin
        // container options
        if MKVSBRBtn.Checked then
        begin
          MKVSBRStr := ' --aac-is-sbr 1';
        end;

        // include chapter info from source
        if (CopyChapertBtn.Checked) and (Length(ChapterOutName) > 0) then
        begin
          MuxerStr := MuxerStr + ' --chapters "' + ChapterOutName + '"';
        end;

        // with subtitle
        if subtitleMergeCMD <> '' then
        begin
          // no audio
          if (AudioMethodList.ItemIndex = 2) or (AudioIndexes[Index] = '-1')
          then
          begin
            MuxerStr := MuxerStr + SplittingStr + ' -o "' + OutMuxerFile + '" '
              + subtitleMergeCMD + ' "' + OutFileName + '"';
          end
          else
          begin
            MuxerStr := MuxerStr + SplittingStr + ' -o "' + OutMuxerFile + '" "'
              + OutFileName + '" "' + OutAudioFile + '" ' + MKVSBRStr + ' ' +
              subtitleMergeCMD + ' --default-language ' +
              GetAudioLang(Index, StrToInt(AudioIndexes[Index]) - 1);
          end;
        end
        else
        begin
          // without subtitle
          // no audio
          if (AudioMethodList.ItemIndex = 2) or (AudioIndexes[Index] = '-1')
          then
          begin
            MuxerStr := MuxerStr + SplittingStr + ' -o "' + OutMuxerFile + '" "'
              + OutFileName + '"';
          end
          else
          begin
            MuxerStr := MuxerStr + SplittingStr + ' -o "' + OutMuxerFile + '" "'
              + OutFileName + '" "' + OutAudioFile + '"' +
              ' --default-language  ' + GetAudioLang(Index,
              StrToInt(AudioIndexes[Index]) - 1) + MKVSBRStr + ' ';
          end;
        end;

        CommandLines.Add(MuxerStr + ' ' + CustomMKVEdit.Text);
        CurrentFileIndexes.Add(FloatToStr(Index));
        Infos.Add('Muxing');
        ProcessTypeList.Add('3'); // mkv

        // add output file to the files to check
        FilesToCheck.Add(OutMuxerFile);
      end;
    1: // mp4
      begin
        // container options
        if Mp4WebBtn.Checked then
        begin
          MuxerStr := MuxerStr + ' -inter ' + ReplaceStr(Mp4WebEdit.Text,
            ',', '.');
        end;
        if Mp4IsmaBtn.Checked then
        begin
          MuxerStr := MuxerStr + ' -isma '
        end;
        if Mp4SBRBtn.Checked then
        begin
          MuxerStr := MuxerStr + ' -sbr '
        end;

        // include chapter info from source
        if (CopyChapertBtn.Checked) and (Length(ChapterOutName) > 0) then
        begin
          MuxerStr := MuxerStr + ' -chap "' + ChapterOutName + '" -fps ' +
            GetFPS(Index);
        end;

        // with subtitle
        if subtitleMergeCMD <> '' then
        begin
          // no audio
          if (AudioMethodList.ItemIndex = 2) or (AudioIndexes[Index] = '-1')
          then
          begin
            MuxerStr := MuxerStr + SplittingStr + ' -add "' + OutFileName +
              '#video" ' + subtitleMergeCMD + ' -new "' + OutMuxerFile + '"';
          end
          else
          begin
            MuxerStr := MuxerStr + SplittingStr + ' -add "' + OutFileName +
              '#video" -add "' + OutAudioFile + '#audio" -lang 2=' +
              GetAudioLang(Index, StrToInt(AudioIndexes[Index]) - 1) + ' ' +
              subtitleMergeCMD + ' -new "' + OutMuxerFile + '"';
          end;
        end
        else
        begin
          // without subtitle
          // no audioe
          if (AudioMethodList.ItemIndex = 2) or (AudioIndexes[Index] = '-1')
          then
          begin
            MuxerStr := MuxerStr + SplittingStr + ' -add "' + OutFileName +
              '#video:fps=' + GetFPS(Index) + '" -new "' + OutMuxerFile + '"';
          end
          else
          begin
            MuxerStr := MuxerStr + SplittingStr + ' -add "' + OutFileName +
              '#video:fps=' + GetFPS(Index) + '" -add "' + OutAudioFile +
              '#audio" -lang 2=' + GetAudioLang(Index,
              StrToInt(AudioIndexes[Index]) - 1) + ' -new "' +
              OutMuxerFile + '"';
          end;
        end;

        CommandLines.Add(MuxerStr + ' ' + CustomMP4Edit.Text);
        CurrentFileIndexes.Add(FloatToStr(Index));
        Infos.Add('Muxing');
        ProcessTypeList.Add('4'); // mp4

        // add output file to the files to check
        FilesToCheck.Add(OutMuxerFile);
      end;
  end;

end;

procedure TMainForm.AddFile(const FileName: string; const AddingLater: Boolean);
var
  MediaInfoHandle: Cardinal;
  VDuration: string;
  ABitrate: string;
  ASampleRate: string;
  AChannels: string;
  ACodec: string;
  ALang: string;
  AudioCount: string;
  VideoCount: string;
  AudioID: string;
  i: Integer;
  NewItemStr: string;
  OldID: integer;
  NewItem: TListItem;
  VideoID: string;
begin

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

        if Length(Trim(VDuration)) < 1 then
        begin
          VDuration := MediaInfo_Get(MediaInfoHandle, Stream_General, 0,
            'Duration', Info_Text, Info_Name);
          LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) + '] File: ' +
            FileName + ' [Video duration failed. Trying general duration: ' +
            VDuration + ']');
        end;

        // get number of audio tracks
        AudioCount := MediaInfo_Get(MediaInfoHandle, Stream_Audio, 0,
          'StreamCount', Info_Text, Info_Name);

        if not IsStringNumeric(AudioCount) then
        begin
          AudioCount := '0';
        end;

        // if duration is valid
        if (LowerCase(ExtractFileExt(FileName)) <> '.avs') then
        begin

          if IsStringNumeric(VDuration) then
          begin

            VideoCount := MediaInfo_Get(MediaInfoHandle, Stream_Video, 0,
              'StreamCount', Info_Text, Info_Name);

            if IsStringNumeric(VideoCount) then
            begin

              if (StrToInt(VideoCount) > 0) then
              begin

                VideoID := MediaInfo_Get(MediaInfoHandle, Stream_Video, 0, 'ID',
                  Info_Text, Info_Name);

                if StrToInt(AudioCount) < 1 then
                begin
                  AudioTracks.Add('No audio');
                  AudioIndexes.Add('-1');

                  Files.Add(FileName);
                  if AddingLater then
                    FilesAddedLater.Add(FileName);

                  NewItem := FileList.Items.Add;
                  NewItem.Caption := ExtractFileName(FileName);
                  NewItem.SubItems.Add(IntToTime(GetDurationEx(FileName)));
                end
                else
                begin

                  // fill audio track list
                  for i := 0 to StrToInt(AudioCount) - 1 do
                  begin
                    Application.ProcessMessages;

                    // get info
                    ABitrate := MediaInfo_Get(MediaInfoHandle, Stream_Audio, i,
                      'BitRate/String', Info_Text, Info_Name);

                    ACodec := MediaInfo_Get(MediaInfoHandle, Stream_Audio, i,
                      'Codec/String', Info_Text, Info_Name);

                    AChannels := MediaInfo_Get(MediaInfoHandle, Stream_Audio, i,
                      'Channel(s)/String', Info_Text, Info_Name);

                    ASampleRate := MediaInfo_Get(MediaInfoHandle, Stream_Audio,
                      i, 'SamplingRate/String', Info_Text, Info_Name);

                    ALang := MediaInfo_Get(MediaInfoHandle, Stream_Audio, i,
                      'Language/String3', Info_Text, Info_Name);

                    AudioID := MediaInfo_Get(MediaInfoHandle, Stream_Audio, i,
                      'ID', Info_Text, Info_Name);

                    if Length(ABitrate) < 1 then
                    begin
                      ABitrate := '0';
                    end;

                    if Length(ACodec) < 1 then
                    begin
                      ACodec := 'unknown';
                    end;

                    if Length(AChannels) < 1 then
                    begin
                      AChannels := '0';
                    end;

                    if Length(ASampleRate) < 1 then
                    begin
                      ASampleRate := '0';
                    end;

                    if Length(ALang) < 1 then
                    begin
                      ALang := 'unknown';
                    end;

                    if Length(AudioID) < 1 then
                    begin
                      AudioID := '1';
                    end;

                    // fill new item
                    if i = 0 then
                    begin

                      // select first audio track
                      if (VideoID = '0') then
                      begin
                        AudioIndexes.Add(AudioID);
                      end
                      else
                      begin
                        AudioIndexes.Add(FloatToStr(StrToInt(AudioID) - 1));
                        AudioID := FloatToStr(StrToInt(AudioID) - 1);
                      end;

                      NewItemStr := AudioID + ', ' + ACodec + ', ' + ABitrate +
                        ', ' + AChannels + ', ' + ASampleRate + ', ' + ALang;
                    end
                    else
                    begin
                      if (VideoID <> '0') then
                      begin
                        AudioID := FloatToStr(StrToInt(AudioID) - 1);
                      end;
                      NewItemStr := NewItemStr + '|' + AudioID + ', ' + ACodec +
                        ', ' + ABitrate + ', ' + AChannels + ', ' + ASampleRate
                        + ', ' + ALang;
                    end;

                  end;

                  AudioTracks.Add(NewItemStr);

                  Files.Add(FileName);
                  if AddingLater then
                    FilesAddedLater.Add(FileName);

                  NewItem := FileList.Items.Add;
                  NewItem.Caption := ExtractFileName(FileName);
                  NewItem.SubItems.Add(IntToTime(GetDurationEx(FileName)));

                end;

              end;

            end
            else
            begin
              LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) +
                '] Cannot add file: ' + FileName + ' [No video stream found: ' +
                VideoCount + ']');
            end;

          end
          else
          begin
            LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) +
              '] Cannot add file: ' + FileName + ' [Duration is not numeric: ' +
              VDuration + ']');
          end;

        end
        else
        begin

          AudioTracks.Add('No audio');
          AudioIndexes.Add('-1');

          Files.Add(FileName);
          if AddingLater then
            FilesAddedLater.Add(FileName);

          NewItem := FileList.Items.Add;
          NewItem.Caption := ExtractFileName(FileName);
          NewItem.SubItems.Add('00:00:00');

        end;

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

procedure TMainForm.AddFiles1Click(Sender: TObject);
var
  i: Integer;
begin

  OpenDialog.InitialDir := LastDirectory;
  AddingStopped := False;
  if OpenDialog.Execute then
  begin

    Self.Enabled := False;
    ProgressForm.ProgressBar.MaxValue := OpenDialog.Files.Count - 1;
    ProgressForm.show;
    try

      for I := 0 to OpenDialog.Files.Count - 1 do
      begin
        Application.ProcessMessages;

        if AddingStopped then
        begin
          Break;
        end
        else
        begin
          AddFile(OpenDialog.Files[i], False);
          ProgressForm.ProgressBar.Progress := i;
          ProgressForm.ProgressLabel.Caption :=
            ExtractFileName(OpenDialog.Files[i]);
        end;

      end;

    finally
      Self.Enabled := True;
      ProgressForm.Close;
      Self.BringToFront;
    end;
    LastDirectory := ExtractFileDir(OpenDialog.FileName);

  end;

end;

procedure TMainForm.AddFolder1Click(Sender: TObject);
var
  Search: TSearchRec;
  FileName: String;
  Extension: String;
begin

  OpenFolderDialog.Directory := LastDirectory;

  if OpenFolderDialog.Execute then
  begin
    SetCurrentDir(OpenFolderDialog.Directory);

    FileList.Items.BeginUpdate;
    Self.Enabled := False;
    ProgressForm.show;
    AddingStopped := False;
    try

      if (FindFirst('*.*', faAnyFile, Search) = 0) then
      Begin
        repeat
          Application.ProcessMessages;

          FileName := GetCurrentDir + '\' + Search.Name;

          Extension := LowerCase(ExtractFileExt(FileName));

          if AddingStopped then
            Break;

          if (Extension = '.mp4') or (Extension = '.mov') or
            (Extension = '.m4v') or (Extension = '.mkv') or
            (Extension = '.mpeg') or (Extension = '.mpg') or
            (Extension = '.flv') or (Extension = '.avi') or (Extension = '.vob')
            or (Extension = '.avs') or (Extension = '.divx') or
            (Extension = '.wmv') or (Extension = '.rmvb') then
          begin
            ProgressForm.ProgressLabel.Caption := ExtractFileName(FileName);
            AddFile(FileName, False);
            LastDirectory := ExtractFileDir(FileName);
          end;

        until (FindNext(Search) <> 0) and (not AddingStopped);
        FindClose(Search);
      end;

    finally
      FileList.Items.EndUpdate;
      LastDirectory := OpenFolderDialog.Directory;

      Self.Enabled := True;
      ProgressForm.Close;
      Self.BringToFront;
    end;

  end;

end;

procedure TMainForm.AddFolderTree1Click(Sender: TObject);
begin

  OpenFolderDialog.Directory := LastDirectory;
  AddingStopped := False;

  if OpenFolderDialog.Execute then
  begin
    FileSearch.RootDirectory := OpenFolderDialog.Directory;

    FileList.Items.BeginUpdate;
    try
      Self.Enabled := False;
      ProgressForm.show;

      LastDirectory := OpenFolderDialog.Directory;

      FileSearch.Search;
    finally
      FileList.Items.EndUpdate;

      Self.Enabled := True;
      ProgressForm.Close;
      Self.BringToFront;

    end;

  end;

end;

procedure TMainForm.AddMoreBtnClick(Sender: TObject);
var
  CMDCountBefore, i: Integer;
  AdvancedOptions: string;
  NewItem: TListItem;

begin

  { add files during encoding }

  OpenDialog.InitialDir := LastDirectory;
  if OpenDialog.Execute then
  begin
    CMDCountBefore := FileList.Items.Count;
    FilesAddedLater.Clear;

    // generate advanced options
    if AdvancedOptionsList.ItemIndex = 1 then
    begin
      AdvancedOptions := CreateAdvancedCommandLine();
    end;

    // add to main files list
    for I := 0 to OpenDialog.Files.Count - 1 do
    begin
      Application.ProcessMessages;

      // add to file list
      AddFile(OpenDialog.Files[i], True);
      LastDirectory := ExtractFileDir(OpenDialog.Files[i]);

    end;

    // add new files to command lines
    // and progress list
    for I := 0 to FilesAddedLater.Count - 1 do
    begin
      // add to commandline
      AddCommandLine(i + CMDCountBefore, AdvancedOptions);

      // add to progress list
      with ProgressList.Items do
      begin
        NewItem := Add;

        with NewItem do
        begin
          Caption := '';
          SubItems.Add(ExtractFileName(FilesAddedLater[i]));
          SubItems.Add('Waiting');
          StateIndex := 1;
        end;

      end;
    end;

    // add to log
    LogForm.OutputList.Lines.Add('');
    LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) +
      '] Added more files: ');
    LogForm.OutputList.Lines.AddStrings(OpenDialog.Files);
    LogForm.OutputList.Lines.Add('');

    // re-calculate
    LastPercent := Round((TotalProgressBar.MaxValue * FileIndex)
      div CommandLines.Count);

  end;

end;

procedure TMainForm.AdvancedBtnClick(Sender: TObject);
begin

  Self.Enabled := False;
  AdvancedOptionsForm.show;

end;

procedure TMainForm.AdvancedOptionsListChange(Sender: TObject);
begin

  case AdvancedOptionsList.ItemIndex of
    0: // profile
      begin
        AdvancedBtn.Enabled := False;
        ProfileList.Enabled := True;
        LevelList.Enabled := True;
        TuneList.Enabled := True;
        PresetsList.Enabled := True;
      end;
    1: // advanced
      begin
        AdvancedBtn.Enabled := True;
        ProfileList.Enabled := False;
        LevelList.Enabled := False;
        TuneList.Enabled := False;
        PresetsList.Enabled := False;
      end;
    2: // p+a
      begin
        AdvancedBtn.Enabled := True;
        ProfileList.Enabled := True;
        LevelList.Enabled := True;
        TuneList.Enabled := True;
        PresetsList.Enabled := True;
      end;
  end;

end;

procedure TMainForm.AftenEncodeListChange(Sender: TObject);
begin

  if AftenEncodeList.ItemIndex = 0 then
  begin
    AftenQualityEdit.Enabled := True;
    AftenBitrateEdit.Enabled := False;
  end
  else
  begin
    AftenQualityEdit.Enabled := False;
    AftenBitrateEdit.Enabled := True;
  end;

end;

function TMainForm.AftenPercentage(const AftenOutput: string): Integer;
var
  StrPos1, StrPos2: Integer;
  FConsoleOutput: string;
begin

  Result := 0;

  FConsoleOutput := Trim(AftenOutput);

  if Length(FConsoleOutput) > 0 then
  begin
    StrPos1 := Pos('progress', FConsoleOutput);
    StrPos2 := Pos('% |', FConsoleOutput);

    if StrPos2 > StrPos1 then
    begin
      FConsoleOutput := Trim(Copy(FConsoleOutput, StrPos1 + 1,
        StrPos2 - StrPos1 - 1));
      LogForm.OutputList.Lines.Add('percent:' + FConsoleOutput);
    end;

    if IsStringNumeric(FConsoleOutput) then
    begin
      Result := StrToInt(FConsoleOutput);
    end

  end;

end;

procedure TMainForm.ApplyBtnClick(Sender: TObject);
begin

  if PresetsList.ItemIndex > -1 then
    ApplyPreDef(PredefList.Text);

end;

procedure TMainForm.ApplyPreDef(const PreDefName: string);
var
  PreDefFile: TIniFile;
begin

  PreDefFile := TIniFile.Create(AppFolder + '\PreDefs\' + PreDefName + '.pdo');
  try

    with PreDefFile do
    begin
      EncodeModeList.ItemIndex := ReadInteger('Settings', 'EncodeMode', 3);
      ProfileList.ItemIndex := ReadInteger('Settings', 'Profile', 0);
      PresetsList.ItemIndex := ReadInteger('Settings', 'Preset', 6);
      TuneList.ItemIndex := ReadInteger('Settings', 'Tune', 0);
      LevelList.ItemIndex := ReadInteger('Settings', 'Level', 0);
      BitrateEdit.Text := ReadString('Settings', 'Bitrate', '512');
      QuantEdit.Text := ReadString('Settings', 'Quant', '21');
      CRFEdit.Text := ReadString('Settings', 'CRF', '21');
      AdvancedOptionsList.ItemIndex := ReadInteger('Settings', 'Advanced1', 1);

      ConstantFPSBtn.Checked := ReadBool('Settings', 'CFR', False);
      SubtitleBtn.Checked := ReadBool('Settings', 'Subtitle', False);
      BitrateTolBtn.Checked := ReadBool('Settings', 'BitrateTol', False);
      BitrateTolEdit.Text := ReadString('Settings', 'BitrateTolValue', '0,01');
      ContainerList.ItemIndex := ReadInteger('Settings', 'Container', 1);
      CopyChapertBtn.Checked := ReadBool('Settings', 'Chapters', False);

      ResizeBtn.Checked := ReadBool('Settings', 'Resize', False);
      WidthEdit.Text := ReadString('Settings', 'Width', '320');
      HeightEdit.Text := ReadString('Settings', 'Height', '240');
      VideoSizeList.ItemIndex := ReadInteger('Settings', 'SizeList', 3);
      ResizeMethodList.ItemIndex := ReadInteger('Settings', 'ResizeMethod', 0);

      CropBtn.Checked := ReadBool('Settings', 'Crop', False);
      CropLeftEdit.Text := ReadString('Settings', 'CropLeft', '0');
      CropTopEdit.Text := ReadString('Settings', 'CropTop', '0');
      CropBottomEdit.Text := ReadString('Settings', 'CropBottom', '0');
      CropRightEdit.Text := ReadString('Settings', 'CropRight', '0');

      AudioPages.ActivePageIndex := ReadInteger('Settings', 'AudioPage', 0);

      FAACEncodeList.ItemIndex := ReadInteger('Settings', 'FAACEncode', 0);
      FAACQualityEdit.Text := ReadString('Settings', 'FAACQuality', '10');
      FAACBitrateEdit.Text := ReadString('Settings', 'FAACBitrate', '80');

      NeroEncodingList.ItemIndex := ReadInteger('Settings', 'NeroEncode', 0);
      NeroQualityEdit.Text := ReadString('Settings', 'NeroQuality', '0,50');
      NeroBitrateEdit.Text := ReadString('Settings', 'NeroBitrate', '80');
      NeroProfileList.ItemIndex := ReadInteger('Settings', 'NeroProfile', 0);

      QaacEncodeMethodList.ItemIndex := ReadInteger('Settings',
        'QaacEncode', 0);
      QaacvQualityEdit.Text := ReadString('Settings', 'QaacQuality', '64');
      QaacBitrateEdit.Text := ReadString('Settings', 'QaacBitrate', '80');
      QaacQualityList.ItemIndex := ReadInteger('Settings', 'QaacProfile', 2);
      QaacHEBtn.Checked := ReadBool('Settings', 'QaacHE', False);

      AudioMethodList.ItemIndex := ReadInteger('Settings', 'AudioMethod', 0);

      OggencodeList.ItemIndex := ReadInteger('Settings', 'OggEncode', 0);
      OggQualityEdit.Text := ReadString('Settings', 'OggQuality', '6');
      OggBitrateEdit.Text := ReadString('Settings', 'OggBitrate', '80');
      OggManagedBitrateBtn.Checked := ReadBool('Settings', 'OggManaged', False);

      LameEncodeList.ItemIndex := ReadInteger('Settings', 'LAmeEncode', 0);
      LameVBREdit.Text := ReadString('Settings', 'LameVBR', '2,00');
      LameBitrateEdit.Text := ReadString('Settings', 'LameBit', '128');
      LameQualityEdit.Text := ReadString('Settings', 'LameQ', '3');

      AftenEncodeList.ItemIndex := ReadInteger('Settings', 'AftenEncode', 0);
      AftenQualityEdit.Text := ReadString('Settings', 'AftenQuality', '240');
      AftenBitrateEdit.Text := ReadString('Settings', 'AftenBitrate', '320');

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
        FloatToStr(SystemInfo.CPU.LogicalCore));
      AdvancedOptionsList.ItemIndex := ReadInteger('Settings', 'Advanced1', 0);

      SplittingMethodList.ItemIndex := ReadInteger('Settings', 'SplitM', 1);
      SplitEdit.Text := ReadString('Settings', 'SplitE', '1');
      SplittingBtn.Checked := ReadBool('Settings', 'SplitB', False);

      FileSizeEdit.Text := ReadString('Settings', 'FileSize1', '1');
      FileSizeBtn.Checked := ReadBool('Settings', 'FileSize2', False);

      FLACCompList.ItemIndex := ReadInteger('Settings', 'FlacComp', 5);
      FLACEMSBtn.Checked := ReadBool('Settings', 'FlacEMS', False);

      SARBtn.Checked := ReadBool('Settings', 'SAR', False);
      SARList.ItemIndex := ReadInteger('Settings', 'SarIndex', 0);
      SAR1Edit.Text := ReadString('Settings', 'SAR1', '1');
      SAR2Edit.Text := ReadString('Settings', 'SAR2', '1');

      // advanced options
      with AdvancedOptionsForm do
      begin
        FastFirstPassBtn.Checked := ReadBool('RC', 'FastFirst', True);
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
        AnalysisPTrellistEdit.Text := ReadString('Analysis',
          'ptrellis1', '0,00');
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
      end;

    end;

  finally
    PreDefFile.Free;

    BitrateTolBtn.OnClick(Self);
    EncodeModeList.OnChange(Self);
    ResizeBtn.OnClick(Self);
    CropBtn.OnClick(Self);
    FAACEncodeList.OnChange(Self);
    NeroEncodingList.OnChange(Self);
    QaacEncodeMethodList.OnChange(Self);
    OggencodeList.OnChange(Self);
    AftenEncodeList.OnChange(Self);
    ThreadsBtn.OnClick(Self);
    SliceThreadsBtn.OnClick(Self);
    AdvancedOptionsList.OnChange(Self);
    SplittingBtn.OnClick(Self);
    AudioMethodList.OnChange(Self);
    LameEncodeList.OnChange(Self);
    FileSizeBtn.OnClick(Self);
    SARBtn.OnClick(Self);
    AudioEncoderList.ItemIndex := AudioPages.ActivePageIndex;
    AdvancedOptionsList.OnChange(Self);

    with AdvancedOptionsForm do
    begin
      FrameOpenGOPBtn.OnClick(Self);
      FrameInterlacedBtn.OnClick(Self);
      AnalysisTrellisBtn.OnClick(Self);
      VarianceAQBtn.OnClick(Self);
    end;
  end;

end;

procedure TMainForm.AudioBtnClick(Sender: TObject);
begin

  PageControl.ActivePageIndex := 2;
  GeneralBtn.Down := True;
  FiltersBtn.Down := True;
  AudioBtn.Down := False;
  ContainerBtn.Down := True;
  CustomOptionsBtn.Down := True;
  OtherBtn.Down := True;

end;

procedure TMainForm.AudioEffectsBtnClick(Sender: TObject);
begin

  SoXForm.show;

end;

procedure TMainForm.AudioEncoderListChange(Sender: TObject);
begin

  AudioPages.ActivePageIndex := AudioEncoderList.ItemIndex;

end;

procedure TMainForm.AudioLangCopyBtnClick(Sender: TObject);
begin

  AudioLangList.Enabled := not AudioLangCopyBtn.Checked;

end;

procedure TMainForm.AudioMethodListChange(Sender: TObject);
begin

  if AudioMethodList.ItemIndex <> 0 then
  begin
    AudioPages.Enabled := False;
    AudioEncoderList.Enabled := False;
    AudioEffectsBtn.Enabled := False;
  end
  else
  begin
    AudioPages.Enabled := True;
    AudioEncoderList.Enabled := True;
    AudioEffectsBtn.Enabled := True;
  end;

end;

procedure TMainForm.AudioPagesChange(Sender: TObject);
begin

  // neroaac
  if AudioPages.ActivePageIndex = 1 then
  begin

    if not FileExists(NeroAACPath) then
    begin

      if Application.MessageBox
        ('Cannot find neroaacenc.exe! If you want to download it please click Yes. After downloading, put neroaacenc.exe into tools folder.',
        'NeroAACEnc', MB_ICONWARNING or MB_YESNO) = IDYES then
      begin
        ShellExecute(Self.Handle, 'open',
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

procedure TMainForm.AudioTrackListChange(Sender: TObject);
var
  StrPos: integer;
begin

  if AudioTrackList.Items.Count > 0 then
  begin

    if FileList.ItemIndex > -1 then
    begin
      StrPos := Pos(',', AudioTrackList.Text);
      AudioIndexes[FileList.ItemIndex] := Copy(AudioTrackList.Text, 1,
        StrPos - 1);
    end;

  end;

end;

procedure TMainForm.BitrateTolBtnClick(Sender: TObject);
begin

  BitrateTolEdit.Enabled := BitrateTolBtn.Checked;

end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  TempEdit.Text := SystemInfo.Folders.Temp + '\TX264\';

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
end;

function TMainForm.CalculateBitrate(const TargetSize, FileLength: integer;
  const AudioStreamSize: integer): string;
var
  AudioSize: integer;
  TotalSize: integer;
  AudioBitrate: integer;
begin

  Result := '512';

  if FileLength > 0 then
  begin

    case AudioMethodList.ItemIndex of
      0: // encode
        begin
          // decide audio size
          // todo: for wav and FLAC
          case AudioEncoderList.ItemIndex of
            0:
              AudioBitrate := StrToInt(FAACBitrateEdit.Text);
            1:
              AudioBitrate := StrToInt(NeroBitrateEdit.Text);
            2:
              AudioBitrate := StrToInt(QaacBitrateEdit.Text);
            3:
              AudioBitrate := StrToInt(AftenBitrateEdit.Text);
            4:
              AudioBitrate := StrToInt(OggBitrateEdit.Text);
            5:
              AudioBitrate := 0;
            6:
              AudioBitrate := 0;
          end;

          AudioSize := ((AudioBitrate * 1024) div 8) * FileLength;
        end;
      1: // copy
        begin
          AudioSize := AudioStreamSize;
        end;
      2: // none
        begin
          AudioSize := 0;
        end;
    end;

    TotalSize := 1024 * 1024 * TargetSize;

    Result := FloatToStr((((TotalSize - AudioSize) div FileLength) *
      8) div 1024)
  end;

end;

function TMainForm.CheckOutputFile(const FileIndex: integer): Boolean;
var
  OutputName: string;
begin

  if FileIndex < FilesToCheck.Count then
    Result := FileExists(FilesToCheck[FileIndex]);

  if SplittingBtn.Checked then
    Result := True;

end;

function TMainForm.CheckOutputFiles: Boolean;
var
  i: integer;
  MsgStr: string;
begin

  Result := True;
  MsgStr := '';

  // check each file
  for I := 0 to FilesToCheck.Count - 1 do
  begin

    if (not FileExists(FilesToCheck[i])) then
    begin

      // add to log
      LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) +
        '] Cannot find output file ' + FilesToCheck[i]);

      Result := False;

      MsgStr := MsgStr + #10#13 + '-' + ExtractFileName(FilesToCheck[i])

    end;

  end;

  if SplittingBtn.Checked then
  begin
    Result := True;

    LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) +
      '] Since splitting enabled, output files cannot be checked for now.');
  end;

  // show a warning to the user
  if Result = False then
  begin
    Application.MessageBox(PwideChar('Following files could not be created: ' +
      MsgStr + #10#13 + #10#13 + 'See log for more detail.'),
      'Error while converting', MB_ICONERROR);
  end
  else
  begin
    // add to log
    LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) +
      '] TX264 could locate all the output files');
  end;

end;

procedure TMainForm.ConsoleOutputBtnClick(Sender: TObject);
begin

  ProgressList.Visible := False;
  SummaryView.Visible := False;
  ConsoleOutputList.Visible := True;
  ProgressBtn.Down := True;
  SummaryBtn.Down := True;
  ConsoleOutputBtn.Down := False;

end;

procedure TMainForm.ContainerBtnClick(Sender: TObject);
begin

  PageControl.ActivePageIndex := 3;
  GeneralBtn.Down := True;
  FiltersBtn.Down := True;
  AudioBtn.Down := True;
  ContainerBtn.Down := False;
  CustomOptionsBtn.Down := True;
  OtherBtn.Down := True;

end;

function TMainForm.CreateAdvancedCommandLine: string;
var
  TmpStr: string;
  Partition: string;
begin

  with AdvancedOptionsForm do
  begin
    // rate control
    if FastFirstPassBtn.Checked then
    begin
      TmpStr := TmpStr + ' --slow-firstpass';
    end;
    if not MBTreeRCBtn.Checked then
    begin
      TmpStr := TmpStr + ' --no-mbtree';
    end;
    TmpStr := TmpStr + ' --rc-lookahead ' + FrameLookEdit.Text;

    // motion estimation
    case MEMethodList.ItemIndex of
      0:
        TmpStr := TmpStr + ' --me dia';
      1:
        TmpStr := TmpStr + ' --me hex';
      2:
        TmpStr := TmpStr + ' --me umh';
      3:
        TmpStr := TmpStr + ' --me esa';
      4:
        TmpStr := TmpStr + ' --me tesa';
    end;
    TmpStr := TmpStr + ' --subme ' + MESubpixelEdit.Text;
    TmpStr := TmpStr + ' --merange ' + MEMaxsearhcRangeEdit.Text;
    if not MeWeightBBtn.Checked then
    begin
      TmpStr := TmpStr + ' --no-weightb';
    end;
    case MEPredictModeList.ItemIndex of
      0:
        TmpStr := TmpStr + ' --direct none ';
      1:
        TmpStr := TmpStr + ' --direct spatial';
      2:
        TmpStr := TmpStr + ' --direct temporal';
      3:
        TmpStr := TmpStr + ' --direct auto';
    end;
    if MEConstrainedBtn.Checked then
    begin
      TmpStr := TmpStr + ' --constrained-intra';
    end;
    TmpStr := TmpStr + ' --weightp ' + FloatToStr(MeWeightPList.ItemIndex);

    // partition
    Partition := ' --partitions ';
    if not Prediction1Btn.Checked then
    begin
      TmpStr := TmpStr + ' --no-8x8dct';
    end;
    if Prediction2Btn.Checked then
    begin
      Partition := Partition + ' p8x8,';
    end;
    if Prediction3Btn.Checked then
    begin
      Partition := Partition + 'b8x8,';
    end;
    if Prediction4Btn.Checked then
    begin
      Partition := Partition + 'p4x4,';
    end;
    if Prediction5Btn.Checked then
    begin
      Partition := Partition + 'i8x8,';
    end;
    if Prediction6Btn.Checked then
    begin
      Partition := Partition + 'i4x4';
    end;
    TmpStr := TmpStr + ' ' + Partition;

    // frame
    if not FrameCABACBtn.Checked then
    begin
      TmpStr := TmpStr + ' --no-cabac';
    end;
    if FrameLoopBtn.Checked then
    begin
      TmpStr := TmpStr + ' --deblock ' + FrameLoopStrEdit.Text + ':' +
        FrameLoopThrEdit.Text;
    end
    else
    begin
      TmpStr := TmpStr + ' --no-deblock';
    end;
    if FrameOpenGOPBtn.Checked then
    begin
      // case FrameGopList.ItemIndex of
      // 0:
      // TmpStr := TmpStr + ' --open-gop normal';
      // 1:
      // TmpStr := TmpStr + ' --open-gop bluray';
      // end;
      TmpStr := TmpStr + ' --open-gop '
    end;
    if FrameInterlacedBtn.Checked then
    begin
      case FrameInterlacedList.ItemIndex of
        0:
          TmpStr := TmpStr + ' --bff';
        1:
          TmpStr := TmpStr + ' --tff';
        2:
          TmpStr := TmpStr + ' --fake-interlaced';
      end;
    end;
    TmpStr := TmpStr + ' --ref ' + FrameMaxRefEdit.Text;
    TmpStr := TmpStr + ' --bframes ' + FrameMaxConBEdit.Text;
    TmpStr := TmpStr + ' --b-bias ' + FrameBBiasEdit.Text;
    TmpStr := TmpStr + ' --b-adapt ' + FloatToStr(FrameAdaptiveBList.ItemIndex);
    case FrameRefList.ItemIndex of
      0:
        TmpStr := TmpStr + ' --b-pyramid none';
      1:
        TmpStr := TmpStr + ' --b-pyramid strict';
      2:
        TmpStr := TmpStr + ' --b-pyramid normal';
    end;
    // todo: I-frame stuff is not done!

    // analysis
    if not AnalysisMixedRefBtn.Checked then
    begin
      TmpStr := TmpStr + ' --no-mixed-refs';
    end;
    if not AnalysisChromaBtn.Checked then
    begin
      TmpStr := TmpStr + ' --no-chroma-me';
    end;
    if AnalysisTrellisBtn.Checked then
    begin
      TmpStr := TmpStr + ' --trellis ' +
        FloatToStr(AnalysisTrellisList.ItemIndex + 1);
    end
    else
    begin

      TmpStr := TmpStr + ' --trellis 0 ';
    end;
    if not AnalysisFastSkipBtn.Checked then
    begin
      TmpStr := TmpStr + ' --no-fast-pskip';
    end;
    if not AnalysisDCTBtn.Checked then
    begin
      TmpStr := TmpStr + ' --no-dct-decimate';
    end;
    TmpStr := TmpStr + ' --psy-rd ' + ReplaceStr(AnalysisPRateEdit.Text, ',',
      '.') + ':' + ReplaceStr(AnalysisPTrellistEdit.Text, ',', '.');
    TmpStr := TmpStr + ' --nr ' + AnalysisNoiseEdit.Text;
    TmpStr := TmpStr + ' --deadzone-intra ' + AnalysisLuma1Edit.Text;
    TmpStr := TmpStr + ' --deadzone-inter ' + AnalysisLuma2Edit.Text;
    case AnalysisMatrixList.ItemIndex of
      0:
        TmpStr := TmpStr + ' --cqm flat';
      1:
        TmpStr := TmpStr + ' --cqm jvt';
    end;

    // quantiser
    TmpStr := TmpStr + ' --qpmin ' + MinQuantEdit.Text;
    TmpStr := TmpStr + ' --qpmax ' + MaxQuantEdit.Text;
    TmpStr := TmpStr + ' --qpstep ' + QauntStepEdit.Text;
    TmpStr := TmpStr + ' --ipratio ' + ReplaceStr(IPQuantEdit.Text, ',', '.');
    TmpStr := TmpStr + ' --pbratio ' + ReplaceStr(PBQuantEdit.Text, ',', '.');
    TmpStr := TmpStr + ' --chroma-qp-offset ' + CLQuantEdit.Text;
    TmpStr := TmpStr + ' --qcomp ' + ReplaceStr(QuantCurve1Edit.Text, ',', '.');
    TmpStr := TmpStr + ' --cplxblur ' + ReplaceStr(QuantCurve2Edit.Text,
      ',', '.');
    TmpStr := TmpStr + ' --qblur ' + ReplaceStr(QuantCurve3Edit.Text, ',', '.');
    if VarianceAQBtn.Checked then
    begin
      TmpStr := TmpStr + ' --aq-mode ' +
        FloatToStr(VarianceAQList.ItemIndex + 1);
    end
    else
    begin
      TmpStr := TmpStr + ' --aq-mode 0';
    end;
    TmpStr := TmpStr + ' --aq-strength ' + ReplaceStr(AdaptiveEdit.Text,
      ',', '.');

    // advanced
    TmpStr := TmpStr + ' --vbv-maxrate ' + VBFMaxBitrateEdit.Text;
    TmpStr := TmpStr + ' --vbv-bufsize ' + VBFBufferSizeEdit.Text;
    TmpStr := TmpStr + ' --vbv-init ' + ReplaceStr(VBFInitialEdit.Text,
      ',', '.');
    TmpStr := TmpStr + ' --slices ' + Slice3Edit.Text;
    TmpStr := TmpStr + ' --slice-max-size ' + Slice1Edit.Text;
    TmpStr := TmpStr + ' --slice-max-mbs ' + Slice2Edit.Text;
  end;

  Result := TmpStr;

end;

procedure TMainForm.CreatePreview(Index: integer);
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
  SubtitleCount: Integer;
  SubtitleStr: string;
  SubtitleID: string;
  subtitleMergeCMD: string;
  ChapterStr: string;
  ChapterOutName: string;
  i, j: Integer;
  SplittingStr: string;
  FileIndex: integer;
  TmpFileName: string;
  SARValue1, SARValue2: string;
  NumberOfFrames, FrameInterval: integer;
  FilterStr: string;
  FrameStr: string;
  FPS: integer;
  NumberOfFramesToEncode: integer;
  FilterCMD: string;
begin

  // paths and files
  FileName := Files[Index];
  case ContainerList.ItemIndex of
    0:
      OutFileName := ChangeFileExt(FileName, '.mkv');
    1:
      OutFileName := ChangeFileExt(FileName, '.mp4');
  end;
  OutFileName := TempFolder + '\preview.mp4';

  // fast mode
  if FastPreviewBtn.Checked then
  begin
    // very fast options
    TmpStr := TmpStr + ' --bitrate 256 --ratetol 0.02 --profile baseline ' +
      ' --preset ultrafast --tune stillimage --level 1 ';
  end
  else
  begin
    // options specified by user

    // rate control
    case EncodeModeList.ItemIndex of
      0:
        TmpStr := TmpStr + ' --crf ' + ReplaceStr(FloatToStr(CRFEdit.Value),
          ',', '.');
      1:
        TmpStr := TmpStr + ' --qp ' + FloatToStr(QuantEdit.Value);
      2 .. 3:
        begin

          if not FileSizeBtn.Checked then
          begin
            TmpStr := TmpStr + ' --bitrate ' + FloatToStr(BitrateEdit.Value);
          end
          else
          begin
            TmpStr := TmpStr + ' --bitrate ' +
              CalculateBitrate(Round(FileSizeEdit.Value),
              GetDurationEx(FileName), GetAudioSize(FileName,
              StrToInt(AudioIndexes[Index])));
          end;

          // bitrate tolerance
          if BitrateTolBtn.Checked then
          begin
            TmpStr := TmpStr + ' --ratetol ' + ReplaceStr(BitrateTolEdit.Text,
              ',', '.');
          end;

        end;
    end;

    // advanced options - presets
    case AdvancedOptionsList.ItemIndex of
      0: // presets
        begin
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

          // level
          if LevelList.ItemIndex > 0 then
          begin
            TmpStr := TmpStr + ' --level ' + LevelList.Text;
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
        end;
      1: // advanced
        begin
          TmpStr := TmpStr;
        end;
      2: // presets+advanced
        begin

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

          // level
          if LevelList.ItemIndex > 0 then
          begin
            TmpStr := TmpStr + ' --level ' + LevelList.Text;
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

        end;
    end;
  end;

  // filters
  FilterCMD := '';
  // Crop
  if CropBtn.Checked then
  begin
    FilterCMD := FilterCMD + '  --video-filter crop:' + CropLeftEdit.Text + ','
      + CropTopEdit.Text + ',' + CropRightEdit.Text + ',' + CropBottomEdit.Text;
  end;

  // resize
  if ResizeBtn.Checked then
  begin
    if Length(FilterCMD) > 0 then
    begin
      FilterCMD := FilterCMD + '/resize:width=' + WidthEdit.Text + ',height=' +
        HeightEdit.Text + ',method=' + LowerCase(ResizeMethodList.Text);
    end
    else
    begin
      FilterCMD := FilterCMD + ' --video-filter resize:width=' + WidthEdit.Text
        + ',height=' + HeightEdit.Text + ',method=' +
        LowerCase(ResizeMethodList.Text);
    end;

    // resize+SAR
    if SARBtn.Checked then
    begin
      SARValue1 := FloatToStr(SAR1Edit.Value / SAR2Edit.Value);
      SARValue2 := FloatToStr(WidthEdit.Value / HeightEdit.Value);
      SARValue1 := ReplaceText(SARValue1, ',', '');
      SARValue1 := ReplaceText(SARValue1, '.', '');
      SARValue2 := ReplaceText(SARValue2, ',', '');
      SARValue2 := ReplaceText(SARValue2, '.', '');

      if Length(SARValue1) > 5 then
      begin
        Delete(SARValue1, 4, MAXINT);
      end;

      if Length(SARValue2) > 5 then
      begin
        Delete(SARValue2, 4, MAXINT);
      end;

      FilterCMD := FilterCMD + ',sar=' + SARValue1 + ':' + SARValue2;
    end;

  end
  else
  begin
    if Length(FilterCMD) > 0 then
    begin
      // SAR+crop
      if SARBtn.Checked then
      begin
        SARValue1 := FloatToStr(SAR1Edit.Value / SAR2Edit.Value);
        SARValue2 := FloatToStr(WidthEdit.Value / HeightEdit.Value);
        SARValue1 := ReplaceText(SARValue1, ',', '');
        SARValue1 := ReplaceText(SARValue1, '.', '');
        SARValue2 := ReplaceText(SARValue2, ',', '');
        SARValue2 := ReplaceText(SARValue2, '.', '');

        if Length(SARValue1) > 5 then
        begin
          Delete(SARValue1, 4, MAXINT);
        end;

        if Length(SARValue2) > 5 then
        begin
          Delete(SARValue2, 4, MAXINT);
        end;

        FilterCMD := FilterCMD + '/resize:sar=' + SARValue1 + ':' + SARValue2;
      end;
    end
    else
    begin
      // just SAR
      if SARBtn.Checked then
      begin
        SARValue1 := FloatToStr(SAR1Edit.Value / SAR2Edit.Value);
        SARValue2 := FloatToStr(WidthEdit.Value / HeightEdit.Value);
        SARValue1 := ReplaceText(SARValue1, ',', '');
        SARValue1 := ReplaceText(SARValue1, '.', '');
        SARValue2 := ReplaceText(SARValue2, ',', '');
        SARValue2 := ReplaceText(SARValue2, '.', '');

        if Length(SARValue1) > 5 then
        begin
          Delete(SARValue1, 4, MAXINT);
        end;

        if Length(SARValue2) > 5 then
        begin
          Delete(SARValue2, 4, MAXINT);
        end;

        FilterCMD := FilterCMD + ' --video-filter resize:sar=' + SARValue1 + ':'
          + SARValue2;
      end;
    end;
  end;

  // filters
  TmpStr := TmpStr + FilterCMD;

  // encode given length
  NumberOfFrames := GetNumberOfFrames(Index);
  if NumberOfFrames > 0 then
  begin

    if StrToInt(GetDuration(Index)) < Round(PreviewEdit.Value) then
    begin
      NumberOfFramesToEncode := NumberOfFrames;
    end
    else
    begin
      NumberOfFramesToEncode := Round(PreviewEdit.Value) *
        Round(StrToFloat(ReplaceText(GetFPS(index), '.', ',')));

      TmpStr := TmpStr + ' --seek ' +
        FloatToStr((NumberOfFrames - NumberOfFramesToEncode) div 2) +
        ' --frames ' + FloatToStr(NumberOfFramesToEncode);
    end;
    // if NumberOfFrames <= 10 then
    // begin
    // FrameInterval := 1
    // end
    // else
    // begin
    // FrameInterval := NumberOfFrames div 10;
    // end;
    //
    // if FrameInterval > 0 then
    // begin
    //
    // FrameStr := FloatToStr(FrameInterval) + ',1';
    //
    // if Length(FilterStr) > 0 then
    // begin
    // FilterStr := FilterStr + '/select_every:' + FrameStr;
    // end
    // else
    // begin
    // FilterStr := FilterStr + ' --video-filter select_every:' + FrameStr;
    // end;
    //
    // end;

  end
  else
  begin
    Application.MessageBox('Number of frames seems to be zero!', 'Error',
      MB_ICONERROR);
  end;

  TmpStr := TmpStr + FilterStr;

  // add command line
  if EncodeModeList.ItemIndex = 2 then
  begin
    // two pass bitrate
    CommandLines.Add(' --pass 1 ' + TmpStr + ' --stats "' +
      ChangeFileExt(OutFileName, '.stats') + '" --output NUL "' +
      FileName + '"');
    CommandLines.Add(' --pass 2 ' + TmpStr + ' --stats "' +
      ChangeFileExt(OutFileName, '.stats') + '" --output "' + OutFileName +
      '" "' + FileName + '"');
    CurrentFileIndexes.Add(FloatToStr(Index));
    CurrentFileIndexes.Add(FloatToStr(Index));

    Infos.Add('Creating preview (1/2)');
    Infos.Add('Creating preview (2/2)');

    ProcessTypeList.Add('1');
    ProcessTypeList.Add('1');
  end
  else
  begin
    // others
    CommandLines.Add(TmpStr + ' --output "' + OutFileName + '" "' +
      FileName + '"');
    CurrentFileIndexes.Add(FloatToStr(Index));

    Infos.Add('Creating preview');

    ProcessTypeList.Add('1');
  end;

  // CommandLines.Add('-y -i "' + OutFileName +
  // '" -f image2 -sameq -vcodec mjpeg "' + TempFolder + '\img-%10d.jpg"');
  // CurrentFileIndexes.Add(FloatToStr(Index));
  // Durations.Add(GetDuration(index));
  // Infos.Add('Extracting audio');
  //
  // ProcessTypeList.Add('18');

end;

procedure TMainForm.CropBtnClick(Sender: TObject);
begin

  CropLeftEdit.Enabled := CropBtn.Checked;
  CropTopEdit.Enabled := CropBtn.Checked;
  CropBottomEdit.Enabled := CropBtn.Checked;
  CropRightEdit.Enabled := CropBtn.Checked;

end;

procedure TMainForm.CustomOptionsBtnClick(Sender: TObject);
begin

  PageControl.ActivePageIndex := 4;
  GeneralBtn.Down := True;
  FiltersBtn.Down := True;
  AudioBtn.Down := True;
  ContainerBtn.Down := True;
  CustomOptionsBtn.Down := False;
  OtherBtn.Down := True;

end;

procedure TMainForm.DeleteTempFiles;
var
  Search: TSearchRec;
  i: Integer;
  DeletedCount: Integer;
begin

  LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) + ']' +
    ' Started deleting temp files...');

  DeletedCount := 0;

  // clear temp folder
  SetCurrentDir(TempFolder);
  if (FindFirst('*.*', faAnyFile, Search) = 0) then
  Begin
    repeat
      Application.ProcessMessages;

      if FileExists(GetCurrentDir + '\' + Search.Name) then
      begin

        if not DeleteFile(GetCurrentDir + '\' + Search.Name) then
        begin
          LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) + ']' +
            ' Can''t delete: ' + Search.Name);
        end
        else
        begin
          Inc(DeletedCount);
        end;

      end;

    until (FindNext(Search) <> 0);
    FindClose(Search);
  end;

  // delete specified files
  for I := 0 to FilesToDelete.Count - 1 do
  begin

    if not DeleteFile(FilesToDelete.Strings[i]) then
    begin
      LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) + ']' +
        ' Can''t delete: ' + ExtractFileName(FilesToDelete.Strings[i]));
    end;

  end;

  LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) + ']' + ' Deleted ' +
    IntToStr(DeletedCount) + ' file(s).');
  LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) + ']' +
    ' Finished deleting temp files.');
  LogForm.OutputList.Lines.Add('');
  // UpdateListboxScrollBox(LogForm.OutputList);
  // LogForm.OutputList.TopIndex := LogForm.OutputList.Items.Count - 1;

end;

procedure TMainForm.DisableUI;
begin

  PageControl.Enabled := False;
  AboutBtn.Enabled := False;
  StartBtn.Enabled := False;
  StopBtn.Enabled := True;
  DirectoryEdit.Enabled := False;
  SameAsSourceBtn.Enabled := False;
  ProgressPanel.Visible := True;
  ProgressPanel.BringToFront;

  Self.Menu := nil;
  DragDrop.DropTarget := nil;

end;

procedure TMainForm.DownBtnClick(Sender: TObject);
var
  i: Integer;
  lv2, lv: TListItem;
begin

  for i := FileList.Items.Count - 1 downto 0 do
  begin

    if i < FileList.Items.Count then
    begin

      if FileList.Items.Item[i].Selected then
      begin
        lv2 := FileList.Items[i];
        lv := FileList.Items.Insert(i + 2);
        lv.Assign(lv2);
        lv2.Delete;
        lv.Selected := True;
        lv.Focused := True;

        Files.Exchange(i, i + 1);

        AudioTracks.Exchange(i, i + 1);
        AudioIndexes.Exchange(i, i + 1);
      end;

    end;

  end;

end;

procedure TMainForm.DragDropDrop(Sender: TObject; Pos: TPoint; Value: TStrings);
var
  i: Integer;
  Extension: string;
begin

  Self.Enabled := False;
  ProgressForm.show;
  ProgressForm.ProgressBar.MaxValue := Value.Count - 1;
  AddingStopped := False;
  try

    for i := 0 to Value.Count - 1 do
    begin
      Application.ProcessMessages;

      Extension := LowerCase(ExtractFileExt(Value[i]));

      if AddingStopped then
      begin
        Break;
      end
      else
      begin
        if (Extension = '.mp4') or (Extension = '.mov') or (Extension = '.m4v')
          or (Extension = '.mkv') or (Extension = '.mpeg') or
          (Extension = '.mpg') or (Extension = '.flv') or (Extension = '.avi')
          or (Extension = '.vob') or (Extension = '.avs') or
          (Extension = '.divx') or (Extension = '.wmv') or (Extension = '.rmvb')
        then
        begin
          AddFile(Value[i], False);
          ProgressForm.ProgressBar.Progress := i;
          ProgressForm.ProgressLabel.Caption := ExtractFileName(Value[i]);
        end;
      end;

    end;

  finally
    Self.Enabled := True;
    ProgressForm.Close;
    Self.BringToFront;
  end;

end;

procedure TMainForm.EnableUI;
begin

  PageControl.Enabled := True;
  AboutBtn.Enabled := True;
  StartBtn.Enabled := True;
  StopBtn.Enabled := False;
  DirectoryEdit.Enabled := True;
  SameAsSourceBtn.Enabled := True;
  ProgressPanel.Visible := False;
  ProgressPanel.SendToBack;
  ConsoleOutputEdit.Caption := '';
  ConsoleOutputList.Items.Clear;

  Self.Menu := MainMenu;
  DragDrop.DropTarget := MainForm;

end;

procedure TMainForm.EncodeModeListChange(Sender: TObject);
begin

  case EncodeModeList.ItemIndex of
    0: // crf
      begin
        CRFEdit.Enabled := True;
        QuantEdit.Enabled := False;
        FileSizeBtn.Enabled := False;
        FileSizeEdit.Enabled := False;
        BitrateEdit.Enabled := False;
        BitrateTolBtn.Enabled := False;
        BitrateTolEdit.Enabled := False;
      end;
    1: // cq
      begin
        CRFEdit.Enabled := False;
        QuantEdit.Enabled := True;
        FileSizeBtn.Enabled := False;
        FileSizeEdit.Enabled := False;
        BitrateEdit.Enabled := False;
        BitrateTolBtn.Enabled := False;
        BitrateTolEdit.Enabled := False;
      end;
    2 .. 3: // bitrate
      begin
        CRFEdit.Enabled := False;
        QuantEdit.Enabled := False;
        BitrateTolBtn.Enabled := True;
        BitrateTolBtn.OnClick(Self);
        BitrateEdit.Enabled := True;
        FileSizeBtn.Enabled := True;
        FileSizeBtn.OnClick(Self);
      end;
  end;

end;

procedure TMainForm.Exit1Click(Sender: TObject);
begin

  Application.Terminate;

end;

procedure TMainForm.FAACEncodeListChange(Sender: TObject);
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

function TMainForm.FAACPercentage(const FAACOutput: string): Integer;
var
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
      FConsoleOutput := Trim(Copy(FConsoleOutput, StrPos1 + 1,
        StrPos2 - StrPos1 - 1));
    end;

    if IsStringNumeric(FConsoleOutput) then
    begin
      Result := StrToInt(FConsoleOutput);
    end

  end;

end;

function TMainForm.FFMpegPercentage(const FFMpegOutput: string): Integer;
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
      if (StrToInt(Durations[DurationIndex]) > 0) then
      begin
        Result := (CurrentProgressBar.MaxValue * PositionInt)
          div StrToInt(Durations[DurationIndex]);
      end;
    end;

  end;

end;

procedure TMainForm.FileListAdvancedCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
begin

  if (Item.Index mod 2) = 0 then
  begin
    Sender.Canvas.Font.Color := clBlack;
  end
  else
  begin
    Sender.Canvas.Font.Color := clGrayText;
  end;

end;

procedure TMainForm.FileListClick(Sender: TObject);
var
  index: Integer;
  StrPos: integer;
  i: integer;
begin

  index := FileList.ItemIndex;

  AudioTrackList.Items.Clear;

  if index > -1 then
  begin
    AudioTrackList.Items.DelimitedText := AudioTracks[index];

    if AudioTrackList.Items.Count > 0 then
    begin

      for I := 0 to AudioTrackList.Items.Count - 1 do
      begin
        Application.ProcessMessages;

        StrPos := Pos(',', AudioTrackList.Items[i]);
        if AudioIndexes[index] = Copy(AudioTrackList.Items[i], 1, StrPos - 1)
        then
        begin
          AudioTrackList.ItemIndex := i;
        end
        else
        begin
          AudioTrackList.ItemIndex := 0;
        end;

      end;

    end;

  end
  else
  begin
    AudioTrackList.Items.Clear;
  end;

end;

procedure TMainForm.FileListDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin

  if (Control as TsListBox).Items.Count < 1 then
    exit;

  with Control as TsListBox, Canvas do
  begin

    // item selected
    if odSelected in State then
    begin

      Brush.Color := Self.Color;
      Font.Color := clBlack;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top + 2, Items[Index])

    end
    else
    begin
      // item not selected
      Brush.Color := (Control as TsListBox).Color;
      Font.Color := (Control as TsListBox).Font.Color;
      FillRect(Rect);
      TextOut(Rect.Left + 2, Rect.Top + 2, Items[Index])
    end;

  end;

end;

procedure TMainForm.FileListResize(Sender: TObject);
begin

  FileList.Columns[0].Width := FileList.ClientWidth - 100;

end;

procedure TMainForm.FileSearchFindFile(Sender: TObject; const AName: string);
begin

  ProgressForm.ProgressLabel.Caption := ExtractFileName(AName);
  AddFile(AName, False);

end;

procedure TMainForm.FileSearchProgress(Sender: TObject);
begin

  Application.ProcessMessages;

end;

procedure TMainForm.FileSizeBtnClick(Sender: TObject);
begin

  FileSizeEdit.Enabled := FileSizeBtn.Checked;
  BitrateEdit.Enabled := not FileSizeBtn.Checked;

end;

procedure TMainForm.FillProgressList;
var
  i: integer;
  NewItem: TListItem;
begin

  with ProgressList.Items do
  begin
    Clear;

    for I := 0 to FileList.Items.Count - 1 do
    begin
      Application.ProcessMessages;

      NewItem := Add;

      with NewItem do
      begin
        Caption := '';
        SubItems.Add(ExtractFileName(Files[i]));
        SubItems.Add('Waiting');
        StateIndex := 1;
      end;
    end;

  end;

  // for first item
  ProgressList.Items[0].SubItems[1] := Infos[0];
  ProgressList.Items[0].StateIndex := 0;
  ProgressList.ItemIndex := 0;

end;

procedure TMainForm.FillSummaryList;
var
  NewNode: TTreeNode;
begin

  SummaryView.Items.Clear;

  with SummaryView.Items do
  begin
    // video
    NewNode := AddChild(nil, 'Video');

    AddChild(NewNode, 'Encode Mode: ' + EncodeModeList.Text);
    case EncodeModeList.ItemIndex of
      0:
        AddChild(NewNode, 'CRF: ' + CRFEdit.Text);
      1:
        AddChild(NewNode, 'Quantizer: ' + QuantEdit.Text);
      2 .. 3:
        begin
          if FileSizeBtn.Checked then
          begin
            AddChild(NewNode, 'File Size: ' + FileSizeEdit.Text + ' mb');
          end
          else
          begin
            AddChild(NewNode, 'Bitrate: ' + BitrateEdit.Text + ' kbps');

            if BitrateTolBtn.Checked then
            begin
              AddChild(NewNode, 'Bitrate tolerance: ' + BitrateTolEdit.Text);
            end;
          end;

        end;
    end;

    if AdvancedOptionsList.ItemIndex = 1 then
    begin
      AddChild(NewNode, 'Using advanced options');
    end
    else if AdvancedOptionsList.ItemIndex = 2 then
    begin
      AddChild(NewNode, 'Using advanced options and presets');
      AddChild(NewNode, 'Preset: ' + PresetsList.Text);
      AddChild(NewNode, 'Profile: ' + ProfileList.Text);
      AddChild(NewNode, 'Tune: ' + TuneList.Text);
      AddChild(NewNode, 'Level: ' + LevelList.Text);
    end
    else
    begin
      AddChild(NewNode, 'Preset: ' + PresetsList.Text);
      AddChild(NewNode, 'Profile: ' + ProfileList.Text);
      AddChild(NewNode, 'Tune: ' + TuneList.Text);
      AddChild(NewNode, 'Level: ' + LevelList.Text);
    end;
    AddChild(NewNode, 'Force const FPS: ' +
      BoolToStr(ConstantFPSBtn.Checked, True));
    NewNode.Expand(True);

    NewNode := AddChild(nil, 'Subtitles: ' +
      BoolToStr(SubtitleBtn.Checked, True));
    NewNode := AddChild(nil, 'Chapter: ' +
      BoolToStr(CopyChapertBtn.Checked, True));
    NewNode := AddChild(nil, 'Container: ' + ContainerList.Text);

    // filters
    NewNode := AddChild(nil, 'Resize');
    if ResizeBtn.Checked then
    begin
      AddChild(NewNode, 'Size: ' + WidthEdit.Text + 'x' + HeightEdit.Text);
      AddChild(NewNode, 'Method: ' + ResizeMethodList.Text);
    end
    else
    begin
      AddChild(NewNode, 'Disabled');
    end;
    NewNode.Expand(True);
    NewNode := AddChild(nil, 'Crop');
    if CropBtn.Checked then
    begin
      AddChild(NewNode, 'Top: ' + CropTopEdit.Text);
      AddChild(NewNode, 'Bottom: ' + CropBottomEdit.Text);
      AddChild(NewNode, 'Left: ' + CropLeftEdit.Text);
      AddChild(NewNode, 'Right: ' + CropRightEdit.Text);
    end
    else
    begin
      AddChild(NewNode, 'Disabled');
    end;
    NewNode.Expand(True);
    NewNode := AddChild(nil, 'Aspect ratio');
    if SARBtn.Checked then
    begin
      AddChild(NewNode, 'Aspect ratio: ' + SAR1Edit.Text + ':' + SAR2Edit.Text);
    end
    else
    begin
      AddChild(NewNode, 'Disabled');
    end;
    NewNode.Expand(True);

    // audio
    NewNode := AddChild(nil, 'Audio');
    case AudioMethodList.ItemIndex of
      0:
        begin
          // codec
          case AudioPages.ActivePageIndex of
            0:
              begin
                AddChild(NewNode, 'Encoder: FAAC');
                AddChild(NewNode, 'Mode: ' + FAACEncodeList.Text);
                case FAACEncodeList.ItemIndex of
                  1:
                    AddChild(NewNode, 'Bitrate: ' + FAACBitrateEdit.Text
                      + ' kbps');
                  0:
                    AddChild(NewNode, 'Quality: ' + FAACQualityEdit.Text);
                end;
              end;
            1:
              begin
                AddChild(NewNode, 'Encoder: Nero AAC');
                case NeroEncodingList.ItemIndex of
                  0:
                    AddChild(NewNode, 'Quality: ' + NeroQualityEdit.Text);
                  1:
                    AddChild(NewNode, 'ABR: ' + NeroBitrateEdit.Text + ' kbps');
                  2:
                    AddChild(NewNode, 'CBR: ' + NeroBitrateEdit.Text + ' kbps');
                end;
                AddChild(NewNode, 'Profile: ' + NeroProfileList.Text);
              end;
            2:
              begin
                AddChild(NewNode, 'Encoder: QAAC');
                case QaacEncodeMethodList.ItemIndex of
                  0:
                    AddChild(NewNode, 'ABR: ' + QaacBitrateEdit.Text + ' kbps');
                  1:
                    AddChild(NewNode, 'TVBR: ' + QaacvQualityEdit.Text
                      + ' kbps');
                  2:
                    AddChild(NewNode, 'CVBR: ' + QaacBitrateEdit.Text +
                      ' kbps');
                  3:
                    AddChild(NewNode, 'CBR: ' + QaacBitrateEdit.Text + ' kbps');
                end;
                AddChild(NewNode, 'Encoding quality: ' + QaacQualityList.Text);
                AddChild(NewNode, 'HE AAC mode: ' +
                  BoolToStr(QaacHEBtn.Checked, True));
              end;
            3:
              begin
                AddChild(NewNode, 'Encoder: Aften');
                case AftenEncodeList.ItemIndex of
                  0:
                    AddChild(NewNode, 'Quality: ' + AftenQualityEdit.Text);
                  1:
                    AddChild(NewNode, 'CBR: ' + AftenBitrateEdit.Text +
                      ' kbps');
                end;
              end;
            4:
              begin
                AddChild(NewNode, 'Encoder: Ogg Vorbis');
                case OggencodeList.ItemIndex of
                  0:
                    AddChild(NewNode, 'Quality: ' + OggQualityEdit.Text);
                  1:
                    begin
                      AddChild(NewNode, 'Bitrate: ' + OggBitrateEdit.Text
                        + ' kbps');
                      AddChild(NewNode, 'Managed bitrate: ' +
                        BoolToStr(OggManagedBitrateBtn.Checked, True));
                    end;
                end;
              end;
            5:
              begin
                AddChild(NewNode, 'Encoder: Lame');
                case LameEncodeList.ItemIndex of
                  0:
                    AddChild(NewNode, 'CBR: ' + LameBitrateEdit.Text + ' kbps');
                  1:
                    AddChild(NewNode, 'ABR: ' + LameBitrateEdit.Text + ' kbps');
                  2:
                    AddChild(NewNode, 'VBR: ' + LameVBREdit.Text);
                end;
                AddChild(NewNode, 'Algorithm quality: ' + LameQualityEdit.Text);
              end;
            6:
              begin
                AddChild(NewNode, 'Encoder: Wav');
              end;
            7:
              begin
                AddChild(NewNode, 'Encoder: FLAC');
                AddChild(NewNode, 'Compression Level: ' +
                  FloatToStr(FLACCompList.ItemIndex));
                if FLACEMSBtn.Checked then
                begin
                  AddChild(NewNode, 'Exhaustive model search: True');
                end
                else
                begin
                  AddChild(NewNode, 'Exhaustive model search: False');
                end;
              end;
          end;
          NewNode.Expand(True);
          // effects
          with SoXForm do
          begin
            NewNode := AddChild(NewNode, 'Effects');
            if EnableBtn.Checked then
            begin
              AddChild(NewNode, 'Normalize: ' +
                BoolToStr(NormBtn.Checked, True));
              AddChild(NewNode, 'Change volume: ' +
                BoolToStr(VolumeBtn.Checked, True));
              AddChild(NewNode, 'Volume: ' + VolumeEdit.Text);
              AddChild(NewNode, 'Multithreaded: ' +
                BoolToStr(ThreadBtn.Checked, True));
              AddChild(NewNode, 'Samplerate: ' + SampleList.Text);
              AddChild(NewNode, 'Channels: ' + ChannelList.Text);
              NewNode.Expand(True)
            end
            else
            begin
              AddChild(NewNode, 'Disabled')
            end;

          end;
        end;
      1:
        begin
          AddChild(NewNode, 'Copying audio');
        end;
      2:
        begin
          AddChild(NewNode, 'No audio');
        end;
    end;

    // splitting
    NewNode := AddChild(nil, 'Splitting');
    if SplittingBtn.Checked then
    begin
      case SplittingMethodList.ItemIndex of
        0:
          AddChild(NewNode, 'Time(sec): ' + SplitEdit.Text);
        1:
          AddChild(NewNode, 'Size(mb): ' + SplitEdit.Text);
      end;

    end
    else
    begin
      AddChild(NewNode, 'Disabled');
    end;
    NewNode.Expand(True);

  end;

  SummaryView.Items.Item[0].Selected := True;
  SummaryView.Items.Item[0].SelectedIndex := 0;

end;

procedure TMainForm.FiltersBtnClick(Sender: TObject);
begin

  PageControl.ActivePageIndex := 1;
  GeneralBtn.Down := True;
  FiltersBtn.Down := False;
  AudioBtn.Down := True;
  ContainerBtn.Down := True;
  CustomOptionsBtn.Down := True;
  OtherBtn.Down := True;

end;

function TMainForm.FLACPercentage(const FLACOutput: string): Integer;
var
  StrPos1, StrPos2: integer;
  PercentStr: string;
begin

  Result := 0;

  if Length(FLACOutput) > 0 then
  begin
    StrPos1 := Pos(':', FLACOutput);
    StrPos2 := Pos('%', FLACOutput);

    PercentStr := Trim(Copy(FLACOutput, StrPos1 + 1, StrPos2 - StrPos1 - 1));

    if IsStringNumeric(PercentStr) then
    begin
      Result := StrToInt(PercentStr);
    end;

  end;

end;

procedure TMainForm.Force32bitBtnClick(Sender: TObject);
begin

  Set32_64Backend();

end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
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

  if not UpdateThread.Terminated then
  begin
    UpdateThread.Terminate;
  end;

  while not UpdateThread.Terminated do
  begin
    Application.ProcessMessages;
    Sleep(10);
  end;

  SaveOptions();
  DeleteTempFiles();

  // save log
  if AutoLogSave.Checked then
  begin
    LogForm.OutputList.Lines.SaveToFile(AppFolder + '\log.txt');
  end;

end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  i: integer;
  SettingsFile: TIniFile;
begin

  // this must done here because if user wants to use 32bit backends
  // and doesnt change settings before he starts, 64bit backends may be
  // fired.
  SettingsFile := TIniFile.Create(ExtractFileDir(Application.ExeName) +
    '\settings.ini');
  try
    Force32bitBtn.Checked := SettingsFile.ReadBool('Settings',
      'Force32', False);
  finally
    SettingsFile.Free;
  end;

  // check necessary files.
  if IsOS64Bit then
  begin

    if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\x264_64.exe')
    then
    begin
      Application.MessageBox('Can''t find x264_64.exe. Please re-install.',
        'Error', MB_ICONERROR);
      Application.Terminate;
    end
    else
    begin
      x264Path := ExtractFileDir(Application.ExeName) + '\tools\x264_64.exe';
    end;

  end
  else
  begin

    if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\x264.exe')
    then
    begin
      Application.MessageBox('Can''t find x264.exe. Please re-install.',
        'Error', MB_ICONERROR);
      Application.Terminate;
    end
    else
    begin
      x264Path := ExtractFileDir(Application.ExeName) + '\tools\x264.exe';
    end;

  end;

  if not FileExists(ExtractFileDir(Application.ExeName) +
    '\tools\fhgaacenc\fhgaacenc.exe') then
  begin
    Application.MessageBox('Can''t find fhgaacenc.exe. Please re-install.',
      'Error', MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    FHGPath := ExtractFileDir(Application.ExeName) +
      '\tools\fhgaacenc\fhgaacenc.exe';
  end;

  if IsOS64Bit then
  begin

    if not FileExists(ExtractFileDir(Application.ExeName) +
      '\tools\ffmpeg_64.exe') then
    begin
      Application.MessageBox('Can''t find ffmpeg.exe. Please re-install.',
        'Error', MB_ICONERROR);
      Application.Terminate;
    end
    else
    begin
      FFMpegPath := ExtractFileDir(Application.ExeName) +
        '\tools\ffmpeg_64.exe';
    end;

  end
  else
  begin

    if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\ffmpeg.exe')
    then
    begin
      Application.MessageBox('Can''t find ffmpeg.exe. Please re-install.',
        'Error', MB_ICONERROR);
      Application.Terminate;
    end
    else
    begin
      FFMpegPath := ExtractFileDir(Application.ExeName) + '\tools\ffmpeg.exe';
    end;

    FFMpegPath := ExtractFileDir(Application.ExeName) + '\tools\ffmpeg.exe';
  end;

  if IsOS64Bit then
  begin
    if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\lame_64.exe')
    then
    begin
      Application.MessageBox('Can''t find lame.exe. Please re-install.',
        'Error', MB_ICONERROR);
      Application.Terminate;
    end
    else
    begin
      LamePath := ExtractFileDir(Application.ExeName) + '\tools\lame_64.exe';
    end;
  end
  else
  begin
    if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\lame.exe')
    then
    begin
      Application.MessageBox('Can''t find lame.exe. Please re-install.',
        'Error', MB_ICONERROR);
      Application.Terminate;
    end
    else
    begin
      LamePath := ExtractFileDir(Application.ExeName) + '\tools\lame.exe';
    end;
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\mkvmerge.exe')
  then
  begin
    Application.MessageBox('Can''t find mkvmerge.exe. Please re-install.',
      'Error', MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    MkvMergePath := ExtractFileDir(Application.ExeName) + '\tools\mkvmerge.exe';
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\flac.exe')
  then
  begin
    Application.MessageBox('Can''t find flac.exe. Please re-install.', 'Error',
      MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    FLACPath := ExtractFileDir(Application.ExeName) + '\tools\flac.exe';
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\sox\sox.exe')
  then
  begin
    Application.MessageBox('Can''t find sox.exe. Please re-install.', 'Error',
      MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    SoxPath := ExtractFileDir(Application.ExeName) + '\tools\sox\sox.exe';
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

  if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\faac.exe')
  then
  begin
    Application.MessageBox('Can''t find faac.exe. Please re-install.', 'Error',
      MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    FAACPath := ExtractFileDir(Application.ExeName) + '\tools\faac.exe';
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\qaac\qaac.exe')
  then
  begin
    Application.MessageBox('Can''t find qaac.exe. Please re-install.', 'Error',
      MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    QaacPath := ExtractFileDir(Application.ExeName) + '\tools\qaac\qaac.exe';
  end;

  if not FileExists(ExtractFileDir(Application.ExeName) +
    '\tools\aften\aften.exe') then
  begin
    Application.MessageBox('Can''t find aften.exe. Please re-install.', 'Error',
      MB_ICONERROR);
    Application.Terminate;
  end
  else
  begin
    AftenPath := ExtractFileDir(Application.ExeName) + '\tools\aften\aften.exe';
  end;

  if IsOS64Bit then
  begin
    if not FileExists(ExtractFileDir(Application.ExeName) +
      '\tools\oggenc2_64.exe') then
    begin
      Application.MessageBox('Can''t find oggenc2.exe. Please re-install.',
        'Error', MB_ICONERROR);
      Application.Terminate;
    end
    else
    begin
      OggEncPath := ExtractFileDir(Application.ExeName) +
        '\tools\oggenc2_64.exe';
    end;
  end
  else
  begin
    if not FileExists(ExtractFileDir(Application.ExeName) + '\tools\oggenc2.exe')
    then
    begin
      Application.MessageBox('Can''t find oggenc2.exe. Please re-install.',
        'Error', MB_ICONERROR);
      Application.Terminate;
    end
    else
    begin
      OggEncPath := ExtractFileDir(Application.ExeName) + '\tools\oggenc2.exe';
    end;
  end;

  if not MediaInfoDLL_Load(ExtractFileDir(Application.ExeName) +
    '\MediaInfo.dll') then
  begin
    Application.MessageBox('Cannot load MediaInfo.dll!', 'Fatal Error',
      MB_ICONERROR);
    Application.Terminate;
  end;

  if FileExists(ExtractFileDir(Application.ExeName) + '\updater.exe') then
  begin
    if not DeleteFile(ExtractFileDir(Application.ExeName) + '\updater.exe') then
    begin
      Application.MessageBox('Can''t delete updater.exe.', 'Error',
        MB_ICONERROR);
    end;

  end;

  AppFolder := ExtractFileDir(Application.ExeName) + '\';

  CommandLines := TStringList.Create;
  ProcessTypeList := TStringList.Create;
  Durations := TStringList.Create;
  Infos := TStringList.Create;
  FilesToDelete := TStringList.Create;
  SubtitleFiles := TStringList.Create;
  AudioIndexes := TStringList.Create;
  AudioTracks := TStringList.Create;
  CurrentFileIndexes := TStringList.Create;
  Files := TStringList.Create;
  FilesToCheck := TStringList.Create;
  FilesAddedLater := TStringList.Create;

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

  AudioTrackList.Items.Delimiter := '|';
  AudioTrackList.Items.StrictDelimiter := True;

  for I := 0 to AudioPages.PageCount - 1 do
  begin
    AudioPages.Pages[i].TabVisible := False;
    AudioPages.Pages[i].BorderWidth := 0;
  end;
  AudioPages.ActivePageIndex := 0;

  for I := 0 to PageControl.PageCount - 1 do
  begin
    PageControl.Pages[i].TabVisible := False;
    PageControl.Pages[i].BorderWidth := 0;
  end;
  PageControl.ActivePageIndex := 0;

end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin

  FreeAndNil(CommandLines);
  FreeAndNil(Durations);
  FreeAndNil(ProcessTypeList);
  FreeAndNil(Infos);
  FreeAndNil(FilesToDelete);
  FreeAndNil(SubtitleFiles);
  FreeAndNil(AudioTracks);
  FreeAndNil(AudioIndexes);
  FreeAndNil(CurrentFileIndexes);
  FreeAndNil(Files);
  FreeAndNil(FilesToCheck);
  FreeAndNil(FilesAddedLater);

end;

procedure TMainForm.FormResize(Sender: TObject);
var
  ButtonWidth: integer;
begin

  ButtonWidth := (PageControl.Width - 15) div 6;

  GeneralBtn.Width := ButtonWidth;
  FiltersBtn.Width := ButtonWidth;
  AudioBtn.Width := ButtonWidth;
  ContainerBtn.Width := ButtonWidth;
  CustomOptionsBtn.Width := ButtonWidth;
  OtherBtn.Width := ButtonWidth;

  GeneralBtn.Left := PageControl.Left;
  FiltersBtn.Left := GeneralBtn.Left + GeneralBtn.Width + 3;
  AudioBtn.Left := FiltersBtn.Left + FiltersBtn.Width + 3;
  ContainerBtn.Left := AudioBtn.Left + AudioBtn.Width + 3;
  CustomOptionsBtn.Left := ContainerBtn.Left + ContainerBtn.Width + 3;
  OtherBtn.Left := CustomOptionsBtn.Left + CustomOptionsBtn.Width + 3;

  ProgressBtn.Width := (ProgressList.Width - 6) div 3;
  SummaryBtn.Width := ProgressBtn.Width;
  ConsoleOutputBtn.Width := ProgressBtn.Width;

  ProgressBtn.Left := ProgressList.Left;
  SummaryBtn.Left := ProgressBtn.Left + ProgressBtn.Width + 3;
  ConsoleOutputBtn.Left := SummaryBtn.Left + SummaryBtn.Width + 3;

end;

procedure TMainForm.FormShow(Sender: TObject);
begin

  LoadPreDefines();
  LoadOptions();
  DeleteTempFiles();

  TempFolder := TempEdit.Text;

  if not DirectoryExists(TempFolder) then
  begin

    if not CreateDir(TempFolder) then
    begin
      Application.MessageBox('Cannot create temp folder!', 'Fatal Error',
        MB_ICONERROR);
      Application.Terminate;
    end;

  end;

  if not FileExists(ExtractFileDir(Application.ExeName) +
    '\tools\neroAacEnc.exe') then
  begin

    if not NoNeroNotifyBtn.Checked then
    begin
      Application.MessageBox
        ('Due to copyright issues NeroAacEnc.exe is not included. Please, download it and place it in "Tools" folder. You can disable this warning under "Other Options" tab.',
        'Missing Component', MB_ICONERROR);

      PageControl.ActivePageIndex := 5;
      OtherBtn.OnClick(Self);
    end;

    NeroAACPath := ''; // will be checked
  end
  else
  begin
    NeroAACPath := ExtractFileDir(Application.ExeName) +
      '\tools\neroAacEnc.exe';
  end;

  if CheckUpdateBtn.Checked then
  begin
    UpdateThread.Execute(nil);
  end;

  // to make sure filelist's columns resize correctly
  Self.Width := Self.Width + 1;
  Self.Width := Self.Width - 1;

  // colors
  DirectoryEdit.Color := AudioTrackList.Color;
  TempEdit.Color := AudioTrackList.Color;

end;

procedure TMainForm.GeneralBtnClick(Sender: TObject);
begin

  PageControl.ActivePageIndex := 0;
  GeneralBtn.Down := False;
  FiltersBtn.Down := True;
  AudioBtn.Down := True;
  ContainerBtn.Down := True;
  CustomOptionsBtn.Down := True;
  OtherBtn.Down := True;

end;

function TMainForm.GetAudioKind(const FileName: string;
  AudioID: Integer): string;
var
  MediaInfoHandle: Cardinal;
  TmpStr: string;
  VideoID: string;
  AudioCount: string;
  AudioCodecs: TStringList;
  AudioCodec: string;
  i: integer;
begin

  Result := ExtractFileExt(FileName);

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

        VideoID := MediaInfo_Get(MediaInfoHandle, Stream_Video, 0, 'ID',
          Info_Text, Info_Name);
        if VideoID = '0' then
        begin
          AudioID := AudioID - 1;
        end;

        AudioCount := MediaInfo_Get(MediaInfoHandle, Stream_Audio, 0,
          'StreamCount', Info_Text, Info_Name);

        if IsStringNumeric(AudioCount) then
        begin

          if AudioCount <> '0' then
          begin
            AudioCodecs := TStringList.Create;
            try
              // fill codec list
              for I := 0 to StrToInt(AudioCount) - 1 do
              begin
                Application.ProcessMessages;

                AudioCodec := '';

                TmpStr := LowerCase
                  (Trim(ReplaceStr(MediaInfo_Get(MediaInfoHandle, Stream_Audio,
                  i, 'Codec', Info_Text, Info_Name), ' ', '')));

                if ContainsText(TmpStr, 'vorbis') then
                begin
                  AudioCodec := '.ogg';
                end
                else if ContainsText(TmpStr, 'mp3') or
                  ContainsText(TmpStr, 'lame') or ContainsText(TmpStr, 'mpeg')
                  or ContainsText(TmpStr, 'mpa1l3') then
                begin
                  AudioCodec := '.mp3';
                end
                else if ContainsText(TmpStr, 'aac') then
                begin
                  AudioCodec := '.aac';
                end
                else if ContainsText(TmpStr, 'ac3') then
                begin
                  AudioCodec := '.ac3';
                end
                else if ContainsText(TmpStr, 'wav') or
                  ContainsText(TmpStr, 'pcm') then
                begin
                  AudioCodec := '.wav';
                end
                else if ContainsText(TmpStr, 'mp2') then
                begin
                  AudioCodec := '.mp2';
                end
                else if ContainsText(TmpStr, 'mpa1l2') then
                begin
                  AudioCodec := '.mp2';
                end
                else
                begin
                  TmpStr := LowerCase
                    (Trim(ReplaceStr(MediaInfo_Get(MediaInfoHandle,
                    Stream_Audio, i, 'Codec ID/Hint', Info_Text, Info_Name),
                    ' ', '')));

                  if ContainsText(TmpStr, 'vorbis') then
                  begin
                    AudioCodec := '.ogg';
                  end
                  else if ContainsText(TmpStr, 'mp3') or
                    ContainsText(TmpStr, 'lame') or ContainsText(TmpStr, 'mpeg')
                    or ContainsText(TmpStr, 'mpa1l3') then
                  begin
                    AudioCodec := '.mp3';
                  end
                  else if ContainsText(TmpStr, 'aac') then
                  begin
                    AudioCodec := '.aac';
                  end
                  else if ContainsText(TmpStr, 'ac3') then
                  begin
                    AudioCodec := '.ac3';
                  end
                  else if ContainsText(TmpStr, 'wav') or
                    ContainsText(TmpStr, 'pcm') then
                  begin
                    AudioCodec := '.wav';
                  end
                  else if ContainsText(TmpStr, 'mp2') then
                  begin
                    AudioCodec := '.mp2';
                  end
                  else if ContainsText(TmpStr, 'mpa1l2') then
                  begin
                    AudioCodec := '.mp2';
                  end
                  else
                  begin
                    TmpStr := LowerCase
                      (Trim(ReplaceStr(MediaInfo_Get(MediaInfoHandle,
                      Stream_Audio, i, 'Codec/String', Info_Text, Info_Name),
                      ' ', '')));

                    if ContainsText(TmpStr, 'vorbis') then
                    begin
                      AudioCodec := '.ogg';
                    end
                    else if ContainsText(TmpStr, 'mp3') or
                      ContainsText(TmpStr, 'lame') or
                      ContainsText(TmpStr, 'mpeg') or
                      ContainsText(TmpStr, 'mpa1l3') then
                    begin
                      AudioCodec := '.mp3';
                    end
                    else if ContainsText(TmpStr, 'aac') then
                    begin
                      AudioCodec := '.aac';
                    end
                    else if ContainsText(TmpStr, 'ac3') then
                    begin
                      AudioCodec := '.ac3';
                    end
                    else if ContainsText(TmpStr, 'wav') or
                      ContainsText(TmpStr, 'pcm') then
                    begin
                      AudioCodec := '.wav';
                    end
                    else if ContainsText(TmpStr, 'mp2') then
                    begin
                      AudioCodec := '.mp2';
                    end
                    else if ContainsText(TmpStr, 'mpa1l2') then
                    begin
                      AudioCodec := '.mp2';
                    end;
                  end;
                end;

                if Length(AudioCodec) > 0 then
                begin
                  AudioCodecs.Add(AudioCodec);
                end
                else
                begin
                  LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) +
                    '] Empty audio codec name.');
                end;

              end;

              //
              if AudioCodecs.Count > 0 then
              begin
                if AudioID = 0 then
                begin
                  Result := AudioCodecs[AudioID];
                end
                else
                begin
                  Result := AudioCodecs[AudioID - 1];
                end;
              end
              else
              begin
                LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) +
                  '] Empty audio codecs list.');
              end;

            finally
              FreeAndNil(AudioCodecs);
            end;
          end;

        end;

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TMainForm.GetAudioLang(Index: integer; AudioIndex: integer): string;
var
  MediaInfoHandle: Cardinal;
  Lang: string;
  FileName: string;
begin

  FileName := Files[Index];
  Lang := 'und';

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

        // get lang
        if AudioLangCopyBtn.Checked then
        begin
          Lang := Trim(MediaInfo_Get(MediaInfoHandle, Stream_Audio, AudioIndex,
            'Language/String3', Info_Text, Info_Name));
        end
        else
        begin
          Lang := AudioLangList.Text;
        end;

        if (Length(Lang) < 1) then
        begin
          Lang := 'und';
        end;

        Result := LowerCase(Lang);

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TMainForm.GetAudioSize(const FileName: string;
  const AudioIndex: integer): integer;
var
  MediaInfoHandle: Cardinal;
  AudioSize: string;
begin

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
        AudioSize := MediaInfo_Get(MediaInfoHandle, Stream_Audio,
          AudioIndex - 1, 'StreamSize', Info_Text, Info_Name);

        if Length(AudioSize) < 1 then
        begin
          AudioSize := '0';
        end;

        if IsStringNumeric(AudioSize) then
        begin
          Result := StrToInt64(AudioSize);
        end;

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TMainForm.GetDuration(Index: integer): string;
var
  MediaInfoHandle: Cardinal;
  VDuration: string;
  FileName: string;
begin

  FileName := Files[Index];

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
          if Length(Trim(VDuration)) < 1 then
          begin
            VDuration := MediaInfo_Get(MediaInfoHandle, Stream_General, 0,
              'Duration', Info_Text, Info_Name);
            LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) + '] File: ' +
              FileName + ' [Video duration failed. Trying general duration: ' +
              VDuration + ']');
          end
          else
          begin
            VDuration := '0';
          end;
        end;

        Result := FloatToStr(StrToInt64(VDuration) div 1000);

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

function TMainForm.GetDurationEx(const FileName: string): integer;
var
  MediaInfoHandle: Cardinal;
  VDuration: string;
begin

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
        VDuration := MediaInfo_Get(MediaInfoHandle, Stream_Video, 0, 'Duration',
          Info_Text, Info_Name);

        if Length(VDuration) < 1 then
        begin
          if Length(Trim(VDuration)) < 1 then
          begin
            VDuration := MediaInfo_Get(MediaInfoHandle, Stream_General, 0,
              'Duration', Info_Text, Info_Name);
            LogForm.OutputList.Lines.Add('[' + DateTimeToStr(Now) + '] File: ' +
              FileName + ' [Video duration failed. Trying general duration: ' +
              VDuration + ']');
          end
          else
          begin
            VDuration := '0';
          end;
        end;

        Result := StrToInt64(VDuration) div 1000;

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

procedure TMainForm.GetExternalSubtitles(Index: Integer);
var
  FileName: string;
  SrtFile, AssFile, SubFile: string;
begin

  FileName := Files[Index];

  if FileExists(FileName) then
  begin

    SrtFile := ChangeFileExt(FileName, '.srt');
    AssFile := ChangeFileExt(FileName, '.ass');
    SubFile := ChangeFileExt(FileName, '.sub');

    if FileExists(SrtFile) then
    begin
      SubtitleFiles.Add(SrtFile);
    end;

    if FileExists(AssFile) then
    begin

      // mp4 files do not accept ass files
      if ContainerList.ItemIndex <> 1 then
      begin
        SubtitleFiles.Add(AssFile)
      end;

    end;

    if FileExists(SubFile) then
    begin
      SubtitleFiles.Add(SubFile);
    end;

  end;

end;

function TMainForm.GetFPS(Index: Integer): string;
var
  MediaInfoHandle: Cardinal;
  FPS: string;
  FileName: string;
begin

  FileName := Files[Index];

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

procedure TMainForm.GetFullInfo(const FileName: string);
var
  MediaInfoHandle: Cardinal;
  i: Integer;
  DotPos: Integer;
  NewItem: TListItem;
  Line: string;
begin

  if (FileExists(FileName)) then
  begin

    // New handle for mediainfo
    MediaInfoHandle := MediaInfo_New();

    if MediaInfoHandle <> 0 then
    begin

      try
        // Open a file in complete mode
        MediaInfo_Open(MediaInfoHandle, PwideChar(FileName));
        MediaInfo_Option(0, 'Complete', '');

        InfoForm.InfoTMP.Text := string(MediaInfo_Inform(MediaInfoHandle, 0));

        if InfoForm.InfoTMP.Count > 0 then
        begin

          for I := 0 to InfoForm.InfoTMP.Count - 1 do
          begin
            Application.ProcessMessages;

            Line := InfoForm.InfoTMP.Strings[i];

            DotPos := Pos(':', Line);

            if DotPos > 0 then
            begin

              NewItem := InfoForm.InfoList.Items.Add;

              with NewItem do
              begin
                Caption := Copy(Line, 1, DotPos - 1);
                SubItems.Add(Copy(Line, DotPos + 1, MAXINT));
              end;

            end
            else
            begin

              if Length(Line) > 0 then
              begin
                NewItem := InfoForm.InfoList.Items.Add;

                with NewItem do
                begin
                  Caption := Line;
                  SubItems.Add('');
                end;

              end;

            end;

          end;

        end;

      finally
        MediaInfo_Close(MediaInfoHandle);
        // UpdateListboxScrollBox(InfoForm.InfoList);
      end;

    end;

  end;

end;

function TMainForm.GetSubtitleCount(Index: integer): Integer;
var
  MediaInfoHandle: Cardinal;
  SubCount: string;
  FileName: string;
begin

  FileName := Files[Index];

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
        SubCount := MediaInfo_Get(MediaInfoHandle, Stream_Text, 0,
          'StreamCount', Info_Text, Info_Name);

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

function TMainForm.GetSubtitleID(Index, SubIndex: Integer): string;
var
  MediaInfoHandle: Cardinal;
  SubID: string;
  FileName: string;
begin

  FileName := Files[Index];
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

function TMainForm.GetSubtitleKind(Index, SubIndex: Integer): string;
var
  MediaInfoHandle: Cardinal;
  SubKind: string;
  FileName: string;
begin

  FileName := Files[Index];
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

        if (Length(SubKind) < 1) or (LowerCase(SubKind) = 'utf-8') or
          (LowerCase(SubKind) = 'timed text') then
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

function TMainForm.HasChapters(const FileName: string): Boolean;
var
  MediaInfoHandle: Cardinal;
  ChapterCount: string;
begin

  Result := False;

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
        ChapterCount := Trim(MediaInfo_Get(MediaInfoHandle, Stream_Menu, 0,
          'StreamCount', Info_Text, Info_Name));

        if Length(ChapterCount) < 1 then
        begin
          Result := False
        end
        else
        begin

          if IsStringNumeric(ChapterCount) then
          begin

            if StrToInt(ChapterCount) > 0 then
            begin
              Result := True;
            end;

          end
          else
          begin
            Result := False;
          end;

        end;

      finally
        MediaInfo_Close(MediaInfoHandle);
      end;

    end;

  end;

end;

procedure TMainForm.InfoBtnClick(Sender: TObject);
var
  index: Integer;
begin

  index := FileList.ItemIndex;

  if index > -1 then
  begin
    GetFullInfo(Files[index]);
    InfoForm.show;
  end;

end;

function TMainForm.IntToTime(IntTime: Integer): string;
var
  hour: Integer;
  second: Integer;
  minute: Integer;
  strhour: string;
  strminute: string;
  strsecond: String;
begin

  if (Time > 0) then
  begin

    hour := IntTime div 3600;
    minute := (IntTime div 60) - (hour * 60);
    second := (IntTime mod 60);

    if (second < 10) then
    begin
      strsecond := '0' + FloatToStr(second);
    end
    else
    begin
      strsecond := FloatToStr(second);
    end;

    if (minute < 10) then
    begin
      strminute := '0' + FloatToStr(minute);
    end
    else
    begin
      strminute := FloatToStr(minute);
    end;

    if (hour < 10) then
    begin
      strhour := '0' + FloatToStr(hour);
    end
    else
    begin
      strhour := FloatToStr(hour);
    end;

    Result := strhour + ':' + strminute + ':' + strsecond;
  end
  else
  begin
    Result := '00:00:00';
  end;

end;

function TMainForm.IsOS64Bit: Boolean;
type
  TIsWow64Process = function(Handle: THandle; var IsWow64: BOOL): BOOL; stdcall;
var
  hKernel32: Integer;
  IsWow64Process: TIsWow64Process;
  IsWow64: BOOL;
begin
  // that function is copied from: http://stackoverflow.com/questions/601089/detect-whether-current-windows-version-is-32-bit-or-64-bit

  // we can check if the operating system is 64-bit by checking whether
  // we are running under Wow64 (we are 32-bit code). We must check if this
  // function is implemented before we call it, because some older versions
  // of kernel32.dll (eg. Windows 2000) don't know about it.
  // see http://msdn.microsoft.com/en-us/library/ms684139%28VS.85%29.aspx

  // if user forces to use 32bit
  if Force32bitBtn.Checked then
  begin
    Result := False;
  end
  else
  begin
    Result := False;
    hKernel32 := LoadLibrary('kernel32.dll');
    if (hKernel32 = 0) then
      RaiseLastOSError;
    @IsWow64Process := GetProcAddress(hKernel32, 'IsWow64Process');
    if Assigned(IsWow64Process) then
    begin
      IsWow64 := False;
      if (IsWow64Process(GetCurrentProcess, IsWow64)) then
      begin
        Result := IsWow64;
      end
      else
        RaiseLastOSError;
    end;
    FreeLibrary(hKernel32);
  end;

end;

function TMainForm.IsStringNumeric(Str: string): Boolean;
var
  p: PChar;
begin

  if Length(Str) < 1 then
  begin
    Result := False;
    exit;
  end;

  p := PChar(Str);
  Result := False;

  while p^ <> #0 do
  begin
    Application.ProcessMessages;

    if (Not CharInSet(p^, ['0' .. '9'])) then
    begin
      exit;
    end;

    Inc(p);
  end;

  Result := True;
end;

procedure TMainForm.LameEncodeListChange(Sender: TObject);
begin

  if LameEncodeList.ItemIndex = 2 then
  begin
    LameVBREdit.Enabled := True;
    LameBitrateEdit.Enabled := False;
  end
  else
  begin
    LameVBREdit.Enabled := False;
    LameBitrateEdit.Enabled := True;
  end;

end;

function TMainForm.LamePercentage(const LameOutput: string): Integer;
var
  pos1: Integer;
  pos2: Integer;
  prog: String;
  Tmp: string;
begin

  Result := 0;

  if (Length(LameOutput) > 0) then
  begin
    Tmp := LameOutput;

    pos1 := Pos('(', Trim(Tmp));
    pos2 := Pos('%', Trim(Tmp));

    // Self.Caption := FloatToStr(pos1) + '/' + FloatToStr(pos2);
    prog := Copy(Text, pos1 + 1, (pos2 - pos1 - 1));
    // Self.Caption := prog;

    if IsStringNumeric(prog) then
    begin
      Result := StrToInt(prog);
    end;

  end;

end;

procedure TMainForm.LoadOptions;
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
      PresetsList.ItemIndex := ReadInteger('Settings', 'Preset', 6);
      TuneList.ItemIndex := ReadInteger('Settings', 'Tune', 0);
      LevelList.ItemIndex := ReadInteger('Settings', 'Level', 0);
      BitrateEdit.Text := ReadString('Settings', 'Bitrate', '512');
      QuantEdit.Text := ReadString('Settings', 'Quant', '21');
      CRFEdit.Text := ReadString('Settings', 'CRF', '21');
      TempEdit.Text := ReadString('Settings', 'Temp', SystemInfo.Folders.Temp +
        '\TX264\');

      ConstantFPSBtn.Checked := ReadBool('Settings', 'CFR', False);
      SubtitleBtn.Checked := ReadBool('Settings', 'Subtitle', False);
      BitrateTolBtn.Checked := ReadBool('Settings', 'BitrateTol', False);
      BitrateTolEdit.Text := ReadString('Settings', 'BitrateTolValue', '0,01');
      ContainerList.ItemIndex := ReadInteger('Settings', 'Container', 1);
      CopyChapertBtn.Checked := ReadBool('Settings', 'Chapters', False);

      ResizeBtn.Checked := ReadBool('Settings', 'Resize', False);
      WidthEdit.Text := ReadString('Settings', 'Width', '320');
      HeightEdit.Text := ReadString('Settings', 'Height', '240');
      VideoSizeList.ItemIndex := ReadInteger('Settings', 'SizeList', 3);
      ResizeMethodList.ItemIndex := ReadInteger('Settings', 'ResizeMethod', 0);

      CropBtn.Checked := ReadBool('Settings', 'Crop', False);
      CropLeftEdit.Text := ReadString('Settings', 'CropLeft', '0');
      CropTopEdit.Text := ReadString('Settings', 'CropTop', '0');
      CropBottomEdit.Text := ReadString('Settings', 'CropBottom', '0');
      CropRightEdit.Text := ReadString('Settings', 'CropRight', '0');

      AudioPages.ActivePageIndex := ReadInteger('Settings', 'AudioPage', 0);

      FAACEncodeList.ItemIndex := ReadInteger('Settings', 'FAACEncode', 0);
      FAACQualityEdit.Text := ReadString('Settings', 'FAACQuality', '10');
      FAACBitrateEdit.Text := ReadString('Settings', 'FAACBitrate', '80');

      NeroEncodingList.ItemIndex := ReadInteger('Settings', 'NeroEncode', 0);
      NeroQualityEdit.Text := ReadString('Settings', 'NeroQuality', '0,50');
      NeroBitrateEdit.Text := ReadString('Settings', 'NeroBitrate', '80');
      NeroProfileList.ItemIndex := ReadInteger('Settings', 'NeroProfile', 0);

      QaacEncodeMethodList.ItemIndex := ReadInteger('Settings',
        'QaacEncode', 0);
      QaacvQualityEdit.Text := ReadString('Settings', 'QaacQuality', '64');
      QaacBitrateEdit.Text := ReadString('Settings', 'QaacBitrate', '80');
      QaacQualityList.ItemIndex := ReadInteger('Settings', 'QaacProfile', 2);
      QaacHEBtn.Checked := ReadBool('Settings', 'QaacHE', False);

      AudioMethodList.ItemIndex := ReadInteger('Settings', 'AudioMethod', 0);

      OggencodeList.ItemIndex := ReadInteger('Settings', 'OggEncode', 0);
      OggQualityEdit.Text := ReadString('Settings', 'OggQuality', '6');
      OggBitrateEdit.Text := ReadString('Settings', 'OggBitrate', '80');
      OggManagedBitrateBtn.Checked := ReadBool('Settings', 'OggManaged', False);

      LameEncodeList.ItemIndex := ReadInteger('Settings', 'LAmeEncode', 0);
      LameVBREdit.Text := ReadString('Settings', 'LameVBR', '2,00');
      LameBitrateEdit.Text := ReadString('Settings', 'LameBit', '128');
      LameQualityEdit.Text := ReadString('Settings', 'LameQ', '3');

      AftenEncodeList.ItemIndex := ReadInteger('Settings', 'AftenEncode', 0);
      AftenQualityEdit.Text := ReadString('Settings', 'AftenQuality', '240');
      AftenBitrateEdit.Text := ReadString('Settings', 'AftenBitrate', '320');

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
        FloatToStr(SystemInfo.CPU.LogicalCore));
      CheckUpdateBtn.Checked := ReadBool('Settings', 'Update', True);
      NoNeroNotifyBtn.Checked := ReadBool('Settings', 'NeroCheck', False);
      AdvancedOptionsList.ItemIndex := ReadInteger('Settings', 'Advanced1', 0);
      FullLogBtn.Checked := ReadBool('Settings', 'FullLog', False);

      SplittingMethodList.ItemIndex := ReadInteger('Settings', 'SplitM', 1);
      SplitEdit.Text := ReadString('Settings', 'SplitE', '1');
      SplittingBtn.Checked := ReadBool('Settings', 'SplitB', False);
      SameAsSourceBtn.Checked := ReadBool('Settings', 'SameAsSource', False);

      LastDirectory := ReadString('Settings', 'LastDir', AppFolder);

      PostEncodeList.ItemIndex := ReadInteger('Settings', 'Post', 0);

      FileSizeEdit.Text := ReadString('Settings', 'FileSize1', '1');
      FileSizeBtn.Checked := ReadBool('Settings', 'FileSize2', False);

      FLACCompList.ItemIndex := ReadInteger('Settings', 'FlacComp', 5);
      FLACEMSBtn.Checked := ReadBool('Settings', 'FlacEMS', False);

      SARBtn.Checked := ReadBool('Settings', 'SAR', False);
      SARList.ItemIndex := ReadInteger('Settings', 'SarIndex', 0);
      SAR1Edit.Text := ReadString('Settings', 'SAR1', '1');
      SAR2Edit.Text := ReadString('Settings', 'SAR2', '1');

      PredefList.ItemIndex := ReadInteger('Settings', 'PreDefIndex', -1);

      Force32bitBtn.Checked := ReadBool('Settings', 'Force32', False);
      AutoLogSave.Checked := ReadBool('Settings', 'AutoLogSave', True);

      FastPreviewBtn.Checked := ReadBool('Settings', 'FastPreview', False);
      PreviewEdit.Text := ReadString('Settings', 'PreviewDur', '10');

      AudioLangList.ItemIndex := ReadInteger('Settings', 'ALang', 0);
      AudioLangCopyBtn.Checked := ReadBool('Settings', 'LangCopy', True);

      Mp4IsmaBtn.Checked := ReadBool('MP4', 'ISMA', False);
      Mp4WebBtn.Checked := ReadBool('MP4', 'WebB', False);
      Mp4WebEdit.Text := ReadString('MP4', 'WebE', '0,05');
      Mp4SBRBtn.Checked := ReadBool('MP4', 'SBR', False);
      MKVSBRBtn.Checked := ReadBool('MKV', 'SBR', False);
    end;

  finally
    SettingsFile.Free;

    FileSizeBtn.OnClick(Self);
    BitrateTolBtn.OnClick(Self);
    EncodeModeList.OnChange(Self);
    ResizeBtn.OnClick(Self);
    CropBtn.OnClick(Self);
    FAACEncodeList.OnChange(Self);
    NeroEncodingList.OnChange(Self);
    QaacEncodeMethodList.OnChange(Self);
    OggencodeList.OnChange(Self);
    AftenEncodeList.OnChange(Self);
    ThreadsBtn.OnClick(Self);
    SliceThreadsBtn.OnClick(Self);
    AdvancedOptionsList.OnChange(Self);
    SplittingBtn.OnClick(Self);
    AudioMethodList.OnChange(Self);
    LameEncodeList.OnChange(Self);
    SARBtn.OnClick(Self);
    AudioEncoderList.ItemIndex := AudioPages.ActivePageIndex;
    SameAsSourceBtn.OnClick(Self);
    AudioLangCopyBtn.OnClick(Self);
    Mp4WebBtn.OnClick(Self);

    case PageControl.ActivePageIndex of
      0:
        GeneralBtn.OnClick(Self);
      1:
        FiltersBtn.OnClick(Self);
      2:
        AudioBtn.OnClick(Self);
      3:
        ContainerBtn.OnClick(Self);
      4:
        CustomOptionsBtn.OnClick(Self);
      5:
        OtherBtn.OnClick(Self);
    end;
  end;

end;

procedure TMainForm.LoadPreDefines;
var
  Search: TSearchRec;
begin

  if not DirectoryExists(AppFolder + '\Predefs') then
  begin

    if not CreateDir(AppFolder + '\Predefs') then
    begin
      Application.MessageBox
        ('Cannot find and create "Predefs" fodler in program folder.', 'Error',
        MB_ICONERROR);
      exit;
    end;

  end;

  PredefList.Items.Clear;

  SetCurrentDir(AppFolder + '\Predefs');
  // search for files
  if (FindFirst('*.pdo', faAnyFile, Search) = 0) then
  Begin
    repeat
      Application.ProcessMessages;

      PredefList.Items.Add(ChangeFileExt(Search.Name, ''));
    until (FindNext(Search) <> 0) and (not AddingStopped);
    FindClose(Search);
  end;

end;

procedure TMainForm.LogsBtnClick(Sender: TObject);
begin

  LogForm.show;

end;

procedure TMainForm.LogThreadExecute(Sender: TObject; Params: Pointer);
begin

  if not Assigned(LogForm) then
  begin
    exit;
  end;

  with LogForm.OutputList.Lines do
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

function TMainForm.MkvExtractPercentage(const MkvExtractOutput: string)
  : Integer;
var
  TmpInt: Integer;
  FConsoleOutput: string;
begin

  Result := 0;

  FConsoleOutput := Trim(MkvExtractOutput);

  if Length(FConsoleOutput) > 0 then
  begin

    if Copy(FConsoleOutput, 0, 9) = 'Progress:' then
    begin
      FConsoleOutput := Trim(ReplaceStr(FConsoleOutput, '%', ''));
      FConsoleOutput := Trim(Copy(FConsoleOutput, 10, MAXINT));

      if TryStrToInt(FConsoleOutput, TmpInt) then
      begin
        Result := TmpInt;
      end;

    end;

  end;

end;

function TMainForm.Mp4BoxPercentage(const Mp4BoxOutput: string): Integer;
var
  TmpStr: string;
  FConsoleOutput: string;
  StrPos: Integer;
  pos1, pos2: Integer;
begin

  Result := 0;

  FConsoleOutput := Mp4BoxOutput;

  if Length(FConsoleOutput) > 0 then
  begin

    if Copy(FConsoleOutput, 1, 16) = 'ISO File Writing' then
    begin
      StrPos := Pos('| (', FConsoleOutput);

      if StrPos > -1 then
      begin
        TmpStr := Copy(FConsoleOutput, StrPos, MAXINT);

        pos1 := Pos('(', TmpStr);
        pos2 := Pos('/', TmpStr);

        TmpStr := Copy(TmpStr, pos1 + 1, (pos2 - pos1 - 1));

        if IsStringNumeric(TmpStr) then
        begin
          Result := StrToInt(TmpStr);
        end;

      end;

    end;

  end;

end;

procedure TMainForm.Mp4WebBtnClick(Sender: TObject);
begin

  Mp4WebEdit.Enabled := Mp4WebBtn.Checked;

end;

procedure TMainForm.MplayerProcessTerminate(Sender: TObject;
  ExitCode: Cardinal);
begin

  // with LogForm.MplayerOutputList.Items do
  // begin
  // Add('[' + DateToStr(Now) + ']');
  // Add('MPlayer command line: ' + MplayerProcess.CommandLine);
  // AddStrings(MplayerProcess.ConsoleOutput);
  // Add('');
  // end;
  //
  // UpdateListboxScrollBox(LogForm.MplayerOutputList);

end;

procedure TMainForm.NeroEncodingListChange(Sender: TObject);
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

function TMainForm.NeroPercentage(const NeroOutput: string): Integer;
var
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
      if (StrToInt(Durations[DurationIndex]) > 0) then
      begin
        Result := (CurrentProgressBar.MaxValue * StrToInt(FConsoleOutput))
          div StrToInt(Durations[DurationIndex]);
      end;
    end

  end;

end;

procedure TMainForm.OggencodeListChange(Sender: TObject);
begin

  if OggencodeList.ItemIndex = 0 then
  begin
    OggQualityEdit.Enabled := True;
    OggBitrateEdit.Enabled := False;
    OggManagedBitrateBtn.Enabled := False;
  end
  else
  begin
    OggQualityEdit.Enabled := False;
    OggBitrateEdit.Enabled := True;
    OggManagedBitrateBtn.Enabled := True;
  end;

end;

procedure TMainForm.OpenDirectory1Click(Sender: TObject);
var
  FileDir: string;
  index: Integer;
begin

  index := FileList.ItemIndex;

  if index > -1 then
  begin
    FileDir := ExtractFileDir(Files[index]);

    if DirectoryExists(FileDir) then
    begin

      ShellExecute(Handle, 'open', 'explorer',
        PChar(' /n,/select, ' + '"' + Files[index] + '"'), nil, SW_SHOWNORMAL);

    end;

  end;

end;

procedure TMainForm.OtherBtnClick(Sender: TObject);
begin

  PageControl.ActivePageIndex := 5;
  GeneralBtn.Down := True;
  FiltersBtn.Down := True;
  AudioBtn.Down := True;
  ContainerBtn.Down := True;
  CustomOptionsBtn.Down := True;
  OtherBtn.Down := False;

end;

procedure TMainForm.OutputBtnClick(Sender: TObject);
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

procedure TMainForm.Play1Click(Sender: TObject);
var
  index: Integer;
begin

  index := FileList.ItemIndex;

  if index > -1 then
  begin
    ShellExecute(Application.Handle, 'open', PChar(Files[index]), nil, nil,
      SW_SHOWNORMAL);
  end;

end;

procedure TMainForm.PositionTimerTimer(Sender: TObject);
begin

  if Process.ProcessInfo.hProcess > 0 then
  begin

    // decide running process kind
    if ProcessTypeList[FileIndex] = '1' then
    begin
      // video encoding
      CurrentProgressBar.Progress := x264Percentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '2' then
    begin
      // audio decoding
      CurrentProgressBar.Progress := FFMpegPercentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '3' then
    begin
      // mkvmerge
      CurrentProgressBar.Progress := MkvExtractPercentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '4' then
    begin
      // mp4box
      CurrentProgressBar.Progress := Mp4BoxPercentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '5' then
    begin
      // mkvextract
      CurrentProgressBar.Progress := MkvExtractPercentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '6' then
    begin
      // faac
      CurrentProgressBar.Progress := FAACPercentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '7' then
    begin
      // neroaacenc
      CurrentProgressBar.Progress := NeroPercentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '8' then
    begin
      // qaac
      CurrentProgressBar.Progress := x264Percentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '9' then
    begin
      // mp4box - demux
    end
    else if ProcessTypeList[FileIndex] = '10' then
    begin
      // ogg vorbis
      CurrentProgressBar.Progress := x264Percentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '11' then
    begin
      // aften
      CurrentProgressBar.Progress := AftenPercentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '12' then
    begin
      // mkvextract - chapter
    end
    else if ProcessTypeList[FileIndex] = '13' then
    begin
      // mp4box - chapter
    end
    else if ProcessTypeList[FileIndex] = '14' then
    begin
      // ffmpeg-video encoding
      CurrentProgressBar.Progress := FFMpegPercentage(ConsoleOutput);
    end
    else if ProcessTypeList[FileIndex] = '15' then
    begin
      // sox
      CurrentProgressBar.Progress := SoXPercentage(ConsoleOutput)
    end
    else if ProcessTypeList[FileIndex] = '16' then
    begin
      // ffmpeg
      CurrentProgressBar.Progress := LamePercentage(ConsoleOutput)
    end
    else if ProcessTypeList[FileIndex] = '17' then
    begin
      // flac
      CurrentProgressBar.Progress := FLACPercentage(ConsoleOutput)
    end
    else if ProcessTypeList[FileIndex] = '18' then
    begin
      // fhg
      CurrentProgressBar.Progress := MkvExtractPercentage(ConsoleOutput);
    end;

    if ConsoleOutputList.Visible then
    begin
      ConsoleOutputList.Items.Text := Process.ConsoleOutput.Text;
      ConsoleOutputList.TopIndex := ConsoleOutputList.Items.Count - 1;
      UpdateListboxScrollBox(ConsoleOutputList);
    end;

  end
  else if PreviewProcess.ProcessInfo.hProcess > 0 then
  begin
    if ProcessTypeList[FileIndex] = '1' then
    begin
      // video encoding
      CurrentProgressBar.Progress := x264Percentage(ConsoleOutput);
    end;

    if ConsoleOutputList.Visible then
    begin
      ConsoleOutputList.Items.Text := PreviewProcess.ConsoleOutput.Text;
      ConsoleOutputList.TopIndex := ConsoleOutputList.Items.Count - 1;
      UpdateListboxScrollBox(ConsoleOutputList);
    end;
  end;

  if CommandLines.Count > 0 then
  begin
    TotalProgressBar.Progress := LastPercent +
      (CurrentProgressBar.Progress div CommandLines.Count);
  end;

  Self.Caption := FloatToStr(CurrentProgressBar.Progress) + '% / ' +
    FloatToStr(TotalProgressBar.Progress) + '% [TX264]';

  SetProgressValue(Self.Handle, TotalProgressBar.Progress,
    TotalProgressBar.MaxValue);

end;

procedure TMainForm.RemoveAllBtnClick(Sender: TObject);
begin

  FileList.Items.Clear;
  AudioTracks.Clear;
  AudioIndexes.Clear;
  AudioTrackList.Items.Clear;
  Files.Clear;

end;

procedure TMainForm.RemoveBtnClick(Sender: TObject);
var
  i: Integer;
begin

  for I := FileList.Items.Count - 1 downto 0 do
  begin
    Application.ProcessMessages;

    if FileList.Items.Item[i].Selected then
    begin
      FileList.Items.Item[i].Delete;
      AudioTracks.Delete(i);
      AudioIndexes.Delete(i);
      Files.Delete(i);
    end;

  end;

  FileList.OnClick(Self);

end;

procedure TMainForm.ResizeBtnClick(Sender: TObject);
begin

  WidthEdit.Enabled := ResizeBtn.Checked;
  HeightEdit.Enabled := ResizeBtn.Checked;
  ResizeMethodList.Enabled := ResizeBtn.Checked;
  VideoSizeList.Enabled := ResizeBtn.Checked;

end;

procedure TMainForm.SameAsSourceBtnClick(Sender: TObject);
begin

  DirectoryEdit.Enabled := not SameAsSourceBtn.Checked;

end;

procedure TMainForm.SARBtnClick(Sender: TObject);
begin

  SARList.Enabled := SARBtn.Checked;
  SAR1Edit.Enabled := SARBtn.Checked;
  SAR2Edit.Enabled := SARBtn.Checked;

end;

procedure TMainForm.SARListChange(Sender: TObject);
begin

  case SARList.ItemIndex of
    0:
      begin
        SAR1Edit.Text := '1';
        SAR2Edit.Text := '1';
      end;
    1:
      begin
        SAR1Edit.Text := '16';
        SAR2Edit.Text := '9';
      end;
    2:
      begin
        SAR1Edit.Text := '4';
        SAR2Edit.Text := '3';
      end;
    3:
      begin
        SAR1Edit.Text := '166';
        SAR2Edit.Text := '100';
      end;
    4:
      begin
        SAR1Edit.Text := '239';
        SAR2Edit.Text := '100';
      end;
    5:
      begin
        SAR1Edit.Text := '185';
        SAR2Edit.Text := '100';
      end;
    6:
      begin
        SAR1Edit.Text := '275';
        SAR2Edit.Text := '100';
      end;
  end;

end;

procedure TMainForm.SaveCurrentAsBtnClick(Sender: TObject);
var
  StateName: string;
begin

  if IDYES = Application.MessageBox
    ('Are you sure you want to save current state as a new predef?', 'Save',
    MB_ICONQUESTION or MB_YESNO) then
  begin

    StateName := InputBox('Predef name', 'Enter predef name:', '');

    while Length(Trim(StateName)) < 1 do
    begin
      StateName := InputBox('Predef name', 'Enter predef name:', '');
    end;

    SavePreDef(StateName);
    LoadPreDefines;

  end;

end;

procedure TMainForm.SaveOptions;
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
      WriteInteger('Settings', 'Level', LevelList.ItemIndex);
      WriteString('Settings', 'Bitrate', BitrateEdit.Text);
      WriteString('Settings', 'Quant', QuantEdit.Text);
      WriteString('Settings', 'CRF', CRFEdit.Text);
      WriteString('Settings', 'Temp', TempEdit.Text);

      WriteBool('Settings', 'CFR', ConstantFPSBtn.Checked);
      WriteBool('Settings', 'Subtitle', SubtitleBtn.Checked);
      WriteBool('Settings', 'BitrateTol', BitrateTolBtn.Checked);
      WriteString('Settings', 'BitrateTolValue', BitrateTolEdit.Text);
      WriteInteger('Settings', 'Container', ContainerList.ItemIndex);
      WriteBool('Settings', 'Chapters', CopyChapertBtn.Checked);

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

      WriteInteger('Settings', 'FAACEncode', FAACEncodeList.ItemIndex);
      WriteString('Settings', 'FAACQuality', FAACQualityEdit.Text);
      WriteString('Settings', 'FAACBitrate', FAACBitrateEdit.Text);

      WriteInteger('Settings', 'NeroEncode', NeroEncodingList.ItemIndex);
      WriteString('Settings', 'NeroQuality', NeroQualityEdit.Text);
      WriteString('Settings', 'NeroBitrate', NeroBitrateEdit.Text);
      WriteInteger('Settings', 'NeroProfile', NeroProfileList.ItemIndex);

      WriteInteger('Settings', 'QaacEncode', QaacEncodeMethodList.ItemIndex);
      WriteString('Settings', 'QaacQuality', QaacvQualityEdit.Text);
      WriteString('Settings', 'QaacBitrate', QaacBitrateEdit.Text);
      WriteInteger('Settings', 'QaacProfile', QaacQualityList.ItemIndex);
      WriteBool('Settings', 'QaacHE', QaacHEBtn.Checked);

      WriteInteger('Settings', 'OggEncode', OggencodeList.ItemIndex);
      WriteString('Settings', 'OggQuality', OggQualityEdit.Text);
      WriteString('Settings', 'OggBitrate', OggBitrateEdit.Text);
      WriteBool('Settings', 'OggManaged', OggManagedBitrateBtn.Checked);

      WriteInteger('Settings', 'LAmeEncode', LameEncodeList.ItemIndex);
      WriteString('Settings', 'LameVBR', LameVBREdit.Text);
      WriteString('Settings', 'LameBit', LameBitrateEdit.Text);
      WriteString('Settings', 'LameQ', LameQualityEdit.Text);

      WriteInteger('Settings', 'AftenEncode', AftenEncodeList.ItemIndex);
      WriteString('Settings', 'AftenQuality', AftenQualityEdit.Text);
      WriteString('Settings', 'AftenBitrate', AftenBitrateEdit.Text);

      WriteInteger('Settings', 'AudioMethod', AudioMethodList.ItemIndex);

      WriteString('Settings', 'CustomVideo', CustomVideoOptionsEdit.Text);
      WriteString('Settings', 'CustomAudio', CustomAudioOptionsEdit.Text);
      WriteString('Settings', 'CustomMKV', CustomMKVEdit.Text);
      WriteString('Settings', 'CustomMP4', CustomMP4Edit.Text);
      WriteString('Settings', 'CustomSub', CustomMKVExtractEdit.Text);

      WriteBool('Settings', 'thread', ThreadsBtn.Checked);
      WriteString('Settings', 'ThreadStr', ThreadsEdit.Text);
      WriteBool('Settings', 'Slice', SliceThreadsBtn.Checked);
      WriteString('Settings', 'SliceThreadStr', SliceThreadsEdit.Text);
      WriteBool('Settings', 'Update', CheckUpdateBtn.Checked);
      WriteBool('Settings', 'NeroCheck', NoNeroNotifyBtn.Checked);
      WriteInteger('Settings', 'Advanced1', AdvancedOptionsList.ItemIndex);
      WriteBool('Settings', 'FullLog', FullLogBtn.Checked);

      WriteInteger('Settings', 'SplitM', SplittingMethodList.ItemIndex);
      WriteString('Settings', 'SplitE', SplitEdit.Text);
      WriteBool('Settings', 'SplitB', SplittingBtn.Checked);
      WriteBool('Settings', 'SameAsSource', SameAsSourceBtn.Checked);

      WriteString('Settings', 'LastDir', LastDirectory);

      WriteInteger('Settings', 'Post', PostEncodeList.ItemIndex);

      WriteString('Settings', 'FileSize1', FileSizeEdit.Text);
      WriteBool('Settings', 'FileSize2', FileSizeBtn.Checked);

      WriteInteger('Settings', 'FlacComp', FLACCompList.ItemIndex);
      WriteBool('Settings', 'FlacEMS', FLACEMSBtn.Checked);

      WriteBool('Settings', 'SAR', SARBtn.Checked);
      WriteInteger('Settings', 'SarIndex', SARList.ItemIndex);
      WriteString('Settings', 'SAR1', SAR1Edit.Text);
      WriteString('Settings', 'SAR2', SAR2Edit.Text);

      WriteInteger('Settings', 'PreDefIndex', PredefList.ItemIndex);

      WriteBool('Settings', 'Force32', Force32bitBtn.Checked);
      WriteBool('Settings', 'AutoLogSave', AutoLogSave.Checked);

      WriteBool('Settings', 'FastPreview', FastPreviewBtn.Checked);
      WriteString('Settings', 'PreviewDur', PreviewEdit.Text);

      WriteInteger('Settings', 'ALang', AudioLangList.ItemIndex);
      WriteBool('Settings', 'LangCopy', AudioLangCopyBtn.Checked);

      WriteBool('MP4', 'ISMA', Mp4IsmaBtn.Checked);
      WriteBool('MP4', 'WebB', Mp4WebBtn.Checked);
      WriteString('MP4', 'WebE', Mp4WebEdit.Text);
      WriteBool('MP4', 'SBR', Mp4SBRBtn.Checked);
      WriteBool('MKV', 'SBR', MKVSBRBtn.Checked);
    end;

  finally
    SettingsFile.Free;
  end;

end;

procedure TMainForm.SavePreDef(const PreDefName: string);
var
  PreDefFile: TIniFile;
begin

  PreDefFile := TIniFile.Create(AppFolder + '\PreDefs\' + PreDefName + '.pdo');
  try

    with PreDefFile do
    begin
      WriteInteger('Settings', 'EncodeMode', EncodeModeList.ItemIndex);
      WriteInteger('Settings', 'Profile', ProfileList.ItemIndex);
      WriteInteger('Settings', 'Preset', PresetsList.ItemIndex);
      WriteInteger('Settings', 'Tune', TuneList.ItemIndex);
      WriteInteger('Settings', 'Level', LevelList.ItemIndex);
      WriteString('Settings', 'Bitrate', BitrateEdit.Text);
      WriteString('Settings', 'Quant', QuantEdit.Text);
      WriteString('Settings', 'CRF', CRFEdit.Text);
      WriteInteger('Settings', 'Advanced1', AdvancedOptionsList.ItemIndex);

      WriteBool('Settings', 'CFR', ConstantFPSBtn.Checked);
      WriteBool('Settings', 'Subtitle', SubtitleBtn.Checked);
      WriteBool('Settings', 'BitrateTol', BitrateTolBtn.Checked);
      WriteString('Settings', 'BitrateTolValue', BitrateTolEdit.Text);
      WriteInteger('Settings', 'Container', ContainerList.ItemIndex);
      WriteBool('Settings', 'Chapters', CopyChapertBtn.Checked);

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

      WriteInteger('Settings', 'FAACEncode', FAACEncodeList.ItemIndex);
      WriteString('Settings', 'FAACQuality', FAACQualityEdit.Text);
      WriteString('Settings', 'FAACBitrate', FAACBitrateEdit.Text);

      WriteInteger('Settings', 'NeroEncode', NeroEncodingList.ItemIndex);
      WriteString('Settings', 'NeroQuality', NeroQualityEdit.Text);
      WriteString('Settings', 'NeroBitrate', NeroBitrateEdit.Text);
      WriteInteger('Settings', 'NeroProfile', NeroProfileList.ItemIndex);

      WriteInteger('Settings', 'QaacEncode', QaacEncodeMethodList.ItemIndex);
      WriteString('Settings', 'QaacQuality', QaacvQualityEdit.Text);
      WriteString('Settings', 'QaacBitrate', QaacBitrateEdit.Text);
      WriteInteger('Settings', 'QaacProfile', QaacQualityList.ItemIndex);
      WriteBool('Settings', 'QaacHE', QaacHEBtn.Checked);

      WriteInteger('Settings', 'OggEncode', OggencodeList.ItemIndex);
      WriteString('Settings', 'OggQuality', OggQualityEdit.Text);
      WriteString('Settings', 'OggBitrate', OggBitrateEdit.Text);
      WriteBool('Settings', 'OggManaged', OggManagedBitrateBtn.Checked);

      WriteInteger('Settings', 'LAmeEncode', LameEncodeList.ItemIndex);
      WriteString('Settings', 'LameVBR', LameVBREdit.Text);
      WriteString('Settings', 'LameBit', LameBitrateEdit.Text);
      WriteString('Settings', 'LameQ', LameQualityEdit.Text);

      WriteInteger('Settings', 'AftenEncode', AftenEncodeList.ItemIndex);
      WriteString('Settings', 'AftenQuality', AftenQualityEdit.Text);
      WriteString('Settings', 'AftenBitrate', AftenBitrateEdit.Text);

      WriteInteger('Settings', 'AudioMethod', AudioMethodList.ItemIndex);

      WriteString('Settings', 'CustomVideo', CustomVideoOptionsEdit.Text);
      WriteString('Settings', 'CustomAudio', CustomAudioOptionsEdit.Text);
      WriteString('Settings', 'CustomMKV', CustomMKVEdit.Text);
      WriteString('Settings', 'CustomMP4', CustomMP4Edit.Text);
      WriteString('Settings', 'CustomSub', CustomMKVExtractEdit.Text);

      WriteBool('Settings', 'thread', ThreadsBtn.Checked);
      WriteString('Settings', 'ThreadStr', ThreadsEdit.Text);
      WriteBool('Settings', 'Slice', SliceThreadsBtn.Checked);
      WriteString('Settings', 'SliceThreadStr', SliceThreadsEdit.Text);
      WriteInteger('Settings', 'Advanced1', AdvancedOptionsList.ItemIndex);

      WriteInteger('Settings', 'SplitM', SplittingMethodList.ItemIndex);
      WriteString('Settings', 'SplitE', SplitEdit.Text);
      WriteBool('Settings', 'SplitB', SplittingBtn.Checked);

      WriteString('Settings', 'FileSize1', FileSizeEdit.Text);
      WriteBool('Settings', 'FileSize2', FileSizeBtn.Checked);

      WriteInteger('Settings', 'FlacComp', FLACCompList.ItemIndex);
      WriteBool('Settings', 'FlacEMS', FLACEMSBtn.Checked);

      WriteBool('Settings', 'SAR', SARBtn.Checked);
      WriteInteger('Settings', 'SarIndex', SARList.ItemIndex);
      WriteString('Settings', 'SAR1', SAR1Edit.Text);
      WriteString('Settings', 'SAR2', SAR2Edit.Text);

      with AdvancedOptionsForm do
      begin
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
      end;
    end;

  finally
    PreDefFile.Free;
  end;

end;

procedure TMainForm.sBitBtn1Click(Sender: TObject);
begin

  ShellExecute(Self.Handle, 'open',
    'http://www.nero.com/eng/downloads-nerodigital-nero-aac-codec.php', nil,
    nil, SW_NORMAL);

end;

procedure TMainForm.Set32_64Backend;
begin

  if IsOS64Bit then
  begin
    x264Path := ExtractFileDir(Application.ExeName) + '\tools\x264_64.exe';
  end
  else
  begin
    x264Path := ExtractFileDir(Application.ExeName) + '\tools\x264.exe';
  end;

  if IsOS64Bit then
  begin
    FFMpegPath := ExtractFileDir(Application.ExeName) + '\tools\ffmpeg_64.exe';
  end
  else
  begin
    FFMpegPath := ExtractFileDir(Application.ExeName) + '\tools\ffmpeg.exe';
  end;

  if IsOS64Bit then
  begin
    LamePath := ExtractFileDir(Application.ExeName) + '\tools\lame_64.exe';
  end
  else
  begin
    LamePath := ExtractFileDir(Application.ExeName) + '\tools\lame.exe';
  end;

  if IsOS64Bit then
  begin
    OggEncPath := ExtractFileDir(Application.ExeName) + '\tools\oggenc2_64.exe';
  end
  else
  begin
    OggEncPath := ExtractFileDir(Application.ExeName) + '\tools\oggenc2.exe';
  end;

end;

procedure TMainForm.SliceThreadsBtnClick(Sender: TObject);
begin

  SliceThreadsEdit.Enabled := SliceThreadsBtn.Checked;

end;

function TMainForm.SoXPercentage(const SoxOutput: string): Integer;
begin

  Result := 0;

  if (Length(ConsoleOutputEdit.Caption) > 0) then
  begin

    if Copy(ConsoleOutputEdit.Caption, 3, 3) = '100' then
    begin
      Result := 100;
    end
    else if IsStringNumeric(Copy(ConsoleOutputEdit.Caption, 3, 2)) then
    begin
      Result := StrToInt(Copy(ConsoleOutputEdit.Caption, 3, 2));
    end;

  end;

end;

procedure TMainForm.SplittingBtnClick(Sender: TObject);
begin

  SplittingMethodList.Enabled := SplittingBtn.Checked;
  SplitEdit.Enabled := SplittingBtn.Checked;

end;

procedure TMainForm.StartBtnClick(Sender: TObject);
var
  i: Integer;
  AdvancedOptions: string;
begin

  if FileList.Items.Count > 0 then
  begin

    if not DirectoryExists(TempEdit.Text) then
    begin
      Application.MessageBox('Cannot find temp folder!', 'Error', MB_ICONERROR);
      exit;
    end;

    if DirectoryExists(DirectoryEdit.Text) or SameAsSourceBtn.Checked then
    begin

      // neroaac
      if (AudioPages.ActivePageIndex = 1) and (not FileExists(NeroAACPath)) then
      begin
        Application.MessageBox
          ('Cannot find neroaacenc.exe! Please select an other audio encoder!',
          'Error', MB_ICONERROR);
      end
      else
      begin
        CommandLines.Clear;
        Durations.Clear;
        ProcessTypeList.Clear;
        Infos.Clear;
        Process.ConsoleOutput.Clear;
        CurrentFileIndexes.Clear;
        SummaryView.Items.Clear;
        ProgressList.Items.Clear;
        ConsoleOutputList.Items.Clear;
        FilesToCheck.Clear;
        TimePassed := 0;

        Self.Caption := 'Encoding [TX264]';

        DeleteTempFiles();
        FilesToDelete.Clear;
        DisableUI;

        // generate advanced options
        if (AdvancedOptionsList.ItemIndex = 1) or
          (AdvancedOptionsList.ItemIndex = 2) then
        begin
          AdvancedOptions := CreateAdvancedCommandLine();
        end;

        Self.Enabled := False;
        try

          for i := 0 to FileList.Items.Count - 1 do
          begin
            Application.ProcessMessages;

            Self.Caption := 'Creating commands (' + FloatToStr(i + 1) + '/' +
              FloatToStr(FileList.Items.Count) + ')';
            // create and add command line to CommandLines
            AddCommandLine(i, AdvancedOptions);
          end;

        finally
          Self.Enabled := True;
          Self.Caption := 'Encoding [TX264]';
        end;

        // add commandlines to the log
        with LogForm.OutputList.Lines do
        begin
          Add('--------------------------------------------');
          Add('[' + DateTimeToStr(Now) + ']' + ' Starting encoding process');
          Add('[' + DateTimeToStr(Now) + ']' + ' Command lines:');
          AddStrings(CommandLines);
          Add('--------------------------------------------');
          Add('');
        end;
        // UpdateListboxScrollBox(LogForm.OutputList);
        // LogForm.OutputList.TopIndex := LogForm.OutputList.Items.Count - 1;

        FileIndex := 0;
        DurationIndex := 0;
        LastPercent := 0;
        StoppedByUser := False;

        Process.ApplicationName := x264Path;
        Process.CommandLine := CommandLines.Strings[0];
        FillSummaryList();
        FillProgressList();
        Process.Run;

        PositionTimer.Enabled := True;
        Timer.Enabled := True;
        SetProgressState(Self.Handle, tbpsNormal);

      end;

    end
    else
    begin
      Application.MessageBox('Output folder does not exist!', 'Error',
        MB_ICONERROR);
    end;

  end
  else
  begin
    Application.MessageBox('Add files first!', 'Error', MB_ICONERROR);
  end;

end;

procedure TMainForm.StopBtnClick(Sender: TObject);
begin

  if Process.ProcessInfo.hProcess > 0 then
  begin

    if ID_YES = Application.MessageBox('Stop encoding?', 'Stop',
      MB_ICONQUESTION or MB_YESNO) then
    begin
      TerminateProcess(Process.ProcessInfo.hProcess, 0);
      StoppedByUser := True;
    end;

  end
  else if PreviewProcess.ProcessInfo.hProcess > 0 then
  begin

    if ID_YES = Application.MessageBox('Stop creating preview?', 'Stop',
      MB_ICONQUESTION or MB_YESNO) then
    begin
      TerminateProcess(PreviewProcess.ProcessInfo.hProcess, 0);
      StoppedByUser := True;
    end;

  end;

end;

procedure TMainForm.SummaryBtnClick(Sender: TObject);
begin

  ProgressList.Visible := False;
  SummaryView.Visible := True;
  ConsoleOutputList.Visible := False;
  ProgressBtn.Down := True;
  SummaryBtn.Down := False;
  ConsoleOutputBtn.Down := True;

end;

procedure TMainForm.TempEditChange(Sender: TObject);
begin

  TempFolder := TempEdit.Text;

end;

procedure TMainForm.ThreadsBtnClick(Sender: TObject);
begin

  ThreadsEdit.Enabled := ThreadsBtn.Checked;

end;

procedure TMainForm.TimerTimer(Sender: TObject);
begin

  Inc(TimePassed);
  TimePassedLabel.Caption := 'Time Passed: ' + IntToTime(TimePassed);

end;

function TMainForm.TimeToInt(const TimeStr: string): Integer;
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

procedure TMainForm.UpBtnClick(Sender: TObject);
var
  i: Integer;
  lv2, lv: TListItem;
begin

  for i := 0 to FileList.Items.Count - 1 do
  begin

    if i > 0 then
    begin

      if FileList.Items.Item[i].Selected then
      begin
        lv2 := FileList.Items[i];
        lv := FileList.Items.Insert(i - 1);
        lv.Assign(lv2);
        lv2.Delete;
        lv.Selected := True;
        lv.Focused := True;

        Files.Exchange(i, i - 1);

        AudioTracks.Exchange(i, i - 1);
        AudioIndexes.Exchange(i, i - 1);
      end;

    end;

  end;

end;

procedure TMainForm.UpdateBtnClick(Sender: TObject);
begin

  Self.Enabled := False;
  UpdaterForm.show;

end;

procedure TMainForm.UpdateCheckerDoneFile(Sender: TObject; FileName: string;
  FileSize: Integer; Url: string);
var
  VersionFile: TStringList;
  LatestVersion: Integer;
begin

  VersionFile := TStringList.Create;
  try

    VersionFile.LoadFromFile(FileName);

    if VersionFile.Count = 1 then
    begin

      if IsStringNumeric(VersionFile.Strings[0]) then
      begin
        LatestVersion := StrToInt(VersionFile.Strings[0]);

        if LatestVersion > BuildInt then
        begin

          if ID_YES = Application.MessageBox
            ('There is a new version. Would you like to download updater?',
            'New Version', MB_ICONQUESTION or MB_YESNO) then
          begin
            Self.Enabled := False;
            UpdaterForm.show;
          end;

        end;

      end;

    end;

  finally
    FreeAndNil(VersionFile);
  end;

end;

procedure TMainForm.UpdateListboxScrollBox(ListBox: TsListBox);
var
  j: Integer;
  MaxWidth: Integer;
begin

  MaxWidth := 0;

  for j := 0 to ListBox.Items.Count - 1 do
  begin

    if MaxWidth < ListBox.Canvas.TextWidth(ListBox.Items[j]) then
    begin
      MaxWidth := ListBox.Canvas.TextWidth(ListBox.Items[j]);
    end;

  end;

  SendMessage(ListBox.Handle, LB_SETHORIZONTALEXTENT, MaxWidth + 5, 0);
end;

procedure TMainForm.UpdateThreadExecute(Sender: TObject; Params: Pointer);
begin

  with UpdateChecker do
  begin
    Url := 'http://dl.dropbox.com/u/9617171/tx264.txt';
    FileName := SystemInfo.Folders.Temp + '\TX264\version.txt';
    Start;
  end;

  UpdateThread.CancelExecute;

end;

procedure TMainForm.VideoSizeListChange(Sender: TObject);
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

function TMainForm.x264Percentage(const x264Output: string): Integer;
var
  TmpStr: string;
  TmpInt: Integer;
  FConsoleOutput: string;
  StrPos: Integer;
begin

  Result := 0;

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

procedure TMainForm.PredefListChange(Sender: TObject);
begin

  if PresetsList.ItemIndex > -1 then
    ApplyPreDef(PredefList.Text);

end;

procedure TMainForm.PreviewBtnClick(Sender: TObject);
var
  index: Integer;
begin

  index := FileList.ItemIndex;

  if index > -1 then
  begin
    CommandLines.Clear;
    Durations.Clear;
    ProcessTypeList.Clear;
    Infos.Clear;
    Process.ConsoleOutput.Clear;
    CurrentFileIndexes.Clear;
    SummaryView.Items.Clear;
    ProgressList.Items.Clear;
    ConsoleOutputList.Items.Clear;
    FilesToCheck.Clear;
    TimePassed := 0;
    PreviewProcessIndex := 0;
    LastPercent := 0;

    Self.Caption := 'Creating preview [TX264]';

    DeleteTempFiles();
    FilesToDelete.Clear;
    DisableUI;

    Self.Enabled := False;
    try
      CreatePreview(Index);
    finally
      Self.Enabled := True;
    end;

    // add commandlines to the log
    with LogForm.OutputList.Lines do
    begin
      Add('--------------------------------------------');
      Add('[' + DateTimeToStr(Now) + ']' + ' Starting preview');
      Add('[' + DateTimeToStr(Now) + ']' + ' Command lines:');
      AddStrings(CommandLines);
      Add('--------------------------------------------');
      Add('');
    end;

    FileIndex := 0;
    DurationIndex := 0;
    LastPercent := 0;
    StoppedByUser := False;

    PreviewProcess.ApplicationName := x264Path;
    PreviewProcess.CommandLine := CommandLines.Strings[0];
    FillSummaryList();
    FillProgressList();
    PreviewProcess.Run;

    PositionTimer.Enabled := True;
    Timer.Enabled := True;
    SetProgressState(Self.Handle, tbpsNormal);
  end;

end;

procedure TMainForm.PreviewProcessRead(Sender: TObject; const S: string;
  const StartsOnNewLine: Boolean);
begin

  if FullLogBtn.Checked then
  begin
    LogForm.FullOutputList.Lines.Add(S);
  end;

  ConsoleOutput := Trim(S);

  ConsoleOutputEdit.Caption := ConsoleOutput;

end;

procedure TMainForm.PreviewProcessTerminate(Sender: TObject;
  ExitCode: Cardinal);
begin

  LastPercent := TotalProgressBar.Progress;

  if FullLogBtn.Checked then
  begin
    LogForm.FullOutputList.Lines.Add('');
  end;
  with LogForm.OutputList.Lines do
  begin
    case StrToInt(ProcessTypeList[FileIndex]) of
      1:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done video encoding with x264 for preview');
          AddStrings(PreviewProcess.ConsoleOutput);
          Add('');
          PreviewProcess.ConsoleOutput.Clear;
        end;
      18:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done preview creation iwth FFMpeg');
          AddStrings(PreviewProcess.ConsoleOutput);
          Add('');
          PreviewProcess.ConsoleOutput.Clear;
        end;
    end;
  end;

  if StoppedByUser then
  begin
    EnableUI;

    Self.Caption := 'TX264';

    TotalProgressBar.Progress := 0;
    SetProgressValue(Self.Handle, 0, 100);
    SetProgressState(Self.Handle, tbpsNone);
    PositionTimer.Enabled := False;
    Timer.Enabled := False;
    TimePassed := 0;
    TimePassedLabel.Caption := 'Time Passed: 00:00:00';
    CurrentProgressBar.Progress := 0;

  end
  else
  begin
    Inc(PreviewProcessIndex);

    if PreviewProcessIndex < CommandLines.Count then
    begin
      PreviewProcess.CommandLine := CommandLines[PreviewProcessIndex];
      PreviewProcess.Run;
    end
    else
    begin
      EnableUI;

      Self.Caption := 'TX264';

      TotalProgressBar.Progress := 0;
      SetProgressValue(Self.Handle, 0, 100);
      SetProgressState(Self.Handle, tbpsNone);
      PositionTimer.Enabled := False;
      Timer.Enabled := False;
      TimePassed := 0;
      TimePassedLabel.Caption := 'Time Passed: 00:00:00';
      CurrentProgressBar.Progress := 0;

      if FileExists(TempFolder + '\preview.mp4') then
      begin
        ShellExecute(Application.Handle, 'open',
          PChar(TempFolder + '\preview.mp4'), nil, nil, SW_SHOWNORMAL);
      end;
    end;
  end;

end;

procedure TMainForm.ProcessRead(Sender: TObject; const S: string;
  const StartsOnNewLine: Boolean);
begin

  if FullLogBtn.Checked then
  begin
    LogForm.FullOutputList.Lines.Add(S);
  end;

  ConsoleOutput := Trim(S);

  ConsoleOutputEdit.Caption := ConsoleOutput;

end;

procedure TMainForm.ProcessTerminate(Sender: TObject; ExitCode: Cardinal);
var
  I: Integer;
begin

  ConsoleOutput := '';

  // add to log
  if FullLogBtn.Checked then
  begin
    LogForm.FullOutputList.Lines.Add('');
  end;
  with LogForm.OutputList.Lines do
  begin
    case StrToInt(ProcessTypeList[FileIndex]) of
      1:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done video encoding with x264');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      2:
        begin
          Add('[' + DateTimeToStr(Now) + ']' + ' Done audio decoding ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      3:
        begin
          Add('[' + DateTimeToStr(Now) + ']' + ' Done muxing to mkv ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      4:
        begin
          Add('[' + DateTimeToStr(Now) + ']' + ' Done muxing to mp4 ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      5:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done extracting subtitle from mkv ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      6:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done audio encoding with faac ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      7:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done audio encoding with neroaac ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      8:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done audio encoding with qaac ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      9:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done extracting subtitle from mp4 ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      10:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done audio encoding with oggenc ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      11:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done audio encoding with aften ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      12:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done extracting chapters from mkv ');
          AddStrings(Process.ConsoleOutput);
          Add('');

          // save output to temp chapter file
          Process.ConsoleOutput.SaveToFile(TempFolder + '\chapters.txt');

          Process.ConsoleOutput.Clear;
        end;
      13:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done extracting chapters from mp4 ');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      14:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done video encoding with ffmpeg');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      15:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done applying effects with SoX');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      16:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done audio encoding with lame');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      17:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done audio encoding with FLAC');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
      18:
        begin
          Add('[' + DateTimeToStr(Now) + ']' +
            ' Done audio encoding with FHG AAC');
          AddStrings(Process.ConsoleOutput);
          Add('');
          Process.ConsoleOutput.Clear;
        end;
    end;
  end;

  // if muxer clear temp folder
  if (ProcessTypeList[FileIndex] = '3') or (ProcessTypeList[FileIndex] = '4')
  then
  begin
    DeleteTempFiles();
  end;

  // to the next item
  Inc(FileIndex);

  if FileIndex < ProcessTypeList.Count then
  begin

    // if encoding was something that required
    // duration info
    if (ProcessTypeList[FileIndex] = '2') or (ProcessTypeList[FileIndex] = '7')
      or (ProcessTypeList[FileIndex] = '14') then
    begin
      Inc(DurationIndex); // to next item in the list

      if DurationIndex >= Durations.Count then
      begin
        DurationIndex := Durations.Count - 1;
      end;

    end;

  end;

  LastPercent := Round((TotalProgressBar.MaxValue * FileIndex)
    div CommandLines.Count);

  if StoppedByUser then
  begin
    EnableUI;

    Self.Caption := 'TX264';

    TotalProgressBar.Progress := 0;
    SetProgressValue(Self.Handle, 0, 100);
    SetProgressState(Self.Handle, tbpsNone);
    PositionTimer.Enabled := False;
    Timer.Enabled := False;
    TimePassed := 0;
    TimePassedLabel.Caption := 'Time Passed: 00:00:00';
    CurrentProgressBar.Progress := 0;

    // post-encode action
    case PostEncodeList.ItemIndex of
      0:
        begin

        end;
      1:
        begin
          Application.Terminate;
        end;
      2:
        begin
          OutputBtn.OnClick(Self);
        end;
    end;
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
        // audio decoding
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
      end
      else if ProcessTypeList[FileIndex] = '8' then
      begin
        // mp4box
        Process.ApplicationName := QaacPath;
      end
      else if ProcessTypeList[FileIndex] = '9' then
      begin
        // mp4box
        Process.ApplicationName := Mp4BoxPath;
      end
      else if ProcessTypeList[FileIndex] = '10' then
      begin
        // oggenc
        Process.ApplicationName := OggEncPath;
      end
      else if ProcessTypeList[FileIndex] = '11' then
      begin
        // aften
        Process.ApplicationName := AftenPath;
      end
      else if ProcessTypeList[FileIndex] = '12' then
      begin
        // mkvextract-chapter
        Process.ApplicationName := MkvExtractPath;
      end
      else if ProcessTypeList[FileIndex] = '13' then
      begin
        // mp4box-chapter
        Process.ApplicationName := Mp4BoxPath;
      end
      else if ProcessTypeList[FileIndex] = '14' then
      begin
        // ffmpeg-video encoding
        Process.ApplicationName := FFMpegPath;
      end
      else if ProcessTypeList[FileIndex] = '15' then
      begin
        // sox
        Process.ApplicationName := SoxPath;
      end
      else if ProcessTypeList[FileIndex] = '16' then
      begin
        // lame
        Process.ApplicationName := LamePath;
      end
      else if ProcessTypeList[FileIndex] = '17' then
      begin
        // flac
        Process.ApplicationName := FLACPath;
      end
      else if ProcessTypeList[FileIndex] = '18' then
      begin
        // fhg
        Process.ApplicationName := FHGPath;
      end;

      if not FileExists(Process.ApplicationName) then
      begin
        Application.MessageBox('Cannot find encoder!', 'Fatal Error',
          MB_ICONERROR);
        StoppedByUser := True;

        EnableUI;

        Self.Caption := 'TX264';

        TotalProgressBar.Progress := 0;
        SetProgressValue(Self.Handle, 0, 100);
        SetProgressState(Self.Handle, tbpsNone);
        PositionTimer.Enabled := False;
        Timer.Enabled := False;
        TimePassed := 0;
        TimePassedLabel.Caption := 'Time Passed: 00:00:00';
        CurrentProgressBar.Progress := 0;

        // post-encode action
        case PostEncodeList.ItemIndex of
          0:
            begin

            end;
          1:
            begin
              Application.Terminate;
            end;
          2:
            begin
              OutputBtn.OnClick(Self);
            end;
        end;
      end
      else
      begin
        // update progresslist
        for I := 0 to ProgressList.Items.Count - 1 do
        begin
          Application.ProcessMessages;

          with ProgressList.Items do
          begin

            if StrToInt(CurrentFileIndexes[FileIndex]) > i then
            begin
              // todo: checking does not work with splitting
              if CheckOutputFile(i) then
              begin
                Item[i].StateIndex := 2;
                Item[i].SubItems[1] := 'Done';
              end
              else
              begin
                Item[i].StateIndex := 3;
                Item[i].SubItems[1] := 'Error';
              end;
            end
            else if StrToInt(CurrentFileIndexes[FileIndex]) < i then
            begin
              Item[i].StateIndex := 1;
              Item[i].SubItems[1] := 'Waiting';
            end
            else
            begin
              Item[i].StateIndex := 0;
              Item[i].SubItems[1] := Infos[FileIndex];
              ProgressList.ItemIndex := i;
            end;

          end;

        end;

        Process.CommandLine := CommandLines.Strings[FileIndex];
        Process.Run;
      end;

    end
    else
    begin
      EnableUI;

      Self.Caption := 'TX264';

      TotalProgressBar.Progress := 0;
      SetProgressValue(Self.Handle, 0, 100);
      SetProgressState(Self.Handle, tbpsNone);
      PositionTimer.Enabled := False;
      Timer.Enabled := False;
      TimePassed := 0;
      TimePassedLabel.Caption := 'Time Passed: 00:00:00';
      CurrentProgressBar.Progress := 0;

      // post-encode action
      case PostEncodeList.ItemIndex of
        0:
          begin

            // checks if all the output files created
            if CheckOutputFiles then
            begin
              //
            end;

          end;
        1:
          begin
            Application.Terminate;
          end;
        2:
          begin
            OutputBtn.OnClick(Self);
          end;
      end;
    end;

  end;

end;

procedure TMainForm.ProgressBtnClick(Sender: TObject);
begin

  ProgressList.Visible := True;
  SummaryView.Visible := False;
  ConsoleOutputList.Visible := False;
  ProgressBtn.Down := False;
  SummaryBtn.Down := True;
  ConsoleOutputBtn.Down := True;

end;

procedure TMainForm.ProgressListResize(Sender: TObject);
begin

  ProgressList.Columns[1].Width := ProgressList.Width - 190;

end;

procedure TMainForm.QaacEncodeMethodListChange(Sender: TObject);
begin

  if QaacEncodeMethodList.ItemIndex = 1 then
  begin
    QaacvQualityEdit.Enabled := True;
    QaacBitrateEdit.Enabled := False;
  end
  else
  begin
    QaacvQualityEdit.Enabled := False;
    QaacBitrateEdit.Enabled := True;
  end;

  if QaacHEBtn.Checked then
  begin

    if QaacEncodeMethodList.ItemIndex = 1 then
    begin
      Application.MessageBox('TVBR is not available with HE AAC mode.',
        'Warning', MB_ICONWARNING);
      QaacHEBtn.Checked := False;
    end;

  end;

end;

procedure TMainForm.QaacHEBtnClick(Sender: TObject);
begin

  if QaacHEBtn.Checked then
  begin

    if QaacEncodeMethodList.ItemIndex = 1 then
    begin
      Application.MessageBox('TVBR is not available with HE AAC mode.',
        'Warning', MB_ICONWARNING);
      QaacHEBtn.Checked := False;
    end;

  end;

end;

end.
