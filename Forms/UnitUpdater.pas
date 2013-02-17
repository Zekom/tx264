unit UnitUpdater;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sListBox, sCheckListBox,
  Vcl.Buttons, sBitBtn, JvUrlListGrabber, JvUrlGrabbers, JvComponentBase,
  JvThread, sLabel, sGauge, ShellAPI, Vcl.ComCtrls, UbuntuProgress;

type
  TUpdaterForm = class(TForm)
    UpdateBtn: TsBitBtn;
    CancelBtn: TsBitBtn;
    Downloader: TJvHttpUrlGrabber;
    ChangeList: TsListBox;
    WNDownloader: TJvHttpUrlGrabber;
    sLabel1: TsLabel;
    UpdateDownloader: TJvHttpUrlGrabber;
    ProgressBar: TProgressBar;
    UpdateThread: TJvThread;
    procedure UpdateThreadExecute(Sender: TObject; Params: Pointer);
    procedure DownloaderDoneFile(Sender: TObject; FileName: string;
      FileSize: Integer; Url: string);
    procedure WNDownloaderDoneFile(Sender: TObject; FileName: string;
      FileSize: Integer; Url: string);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UpdateBtnClick(Sender: TObject);
    procedure UpdateDownloaderProgress(Sender: TObject;
      Position, TotalSize: Int64; Url: string; var Continue: Boolean);
    procedure UpdateDownloaderDoneFile(Sender: TObject; FileName: string;
      FileSize: Integer; Url: string);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ChangeListDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UpdaterForm: TUpdaterForm;

const
  Build = 3057;

implementation

{$R *.dfm}

uses UnitMain;

procedure TUpdaterForm.CancelBtnClick(Sender: TObject);
begin

  if UpdateDownloader.Status <> gsStopped then
  begin
    UpdateDownloader.Stop;
  end;

  while UpdateDownloader.Status <> gsStopped do
  begin
    Application.ProcessMessages;
    Sleep(10);
  end;

  Self.Caption := 'Updater';
  ChangeList.Items.Clear;
  CancelBtn.Enabled := false;
  UpdateBtn.Enabled := false;
  ProgressBar.Visible := false;
  ProgressBar.Position := 0;

  Self.Close;

end;

procedure TUpdaterForm.ChangeListDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin

  if (Control as TsListBox).Items.Count < 1 then
    Exit;

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

procedure TUpdaterForm.DownloaderDoneFile(Sender: TObject; FileName: string;
  FileSize: Integer; Url: string);
var
  VersionFile: TStringList;
  LatestVersion: Integer;
begin

  // check if there is a newer version
  VersionFile := TStringList.Create;
  try

    VersionFile.LoadFromFile(FileName);

    if VersionFile.Count = 1 then
    begin

      if MainForm.IsStringNumeric(VersionFile.Strings[0]) then
      begin
        LatestVersion := StrToInt(VersionFile.Strings[0]);

        if LatestVersion > Build then
        begin

          // download what's new
          with WNDownloader do
          begin
            Url := 'http://dl.dropbox.com/u/9617171/tx264wn.txt';
            FileName := MainForm.SystemInfo.Folders.Temp + '\TX264\wn.txt';
            Start;
          end;

        end
        else
        begin
          Application.MessageBox('You have the latest version.', 'Info',
            MB_ICONINFORMATION);
          Self.Caption := 'Updater';
          Self.Close;
        end;

      end;

    end;

  finally
    FreeAndNil(VersionFile);
  end;

end;

procedure TUpdaterForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if not UpdateThread.Terminated then
  begin
    UpdateThread.Terminate;
  end;

  while not UpdateThread.Terminated do
  begin
    Application.ProcessMessages;
    Sleep(10);
  end;

  MainForm.Enabled := true;
  MainForm.BringToFront;

end;

procedure TUpdaterForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  // if (UpdateDownloader.Status <> gsStopped) or (Downloader.Status <> gsStopped)
  // or (WNDownloader.Status <> gsStopped) then
  // begin
  // CanClose := false;
  // end
  // else
  // begin
  // CanClose := true;
  // end;

end;

procedure TUpdaterForm.FormShow(Sender: TObject);
begin

  Self.Color := clInactiveCaption;

  Self.Caption := 'Updater [Checking update please wait...]';
  ChangeList.Items.Clear;
  CancelBtn.Enabled := false;
  UpdateBtn.Enabled := false;
  ProgressBar.Visible := false;
  ProgressBar.Position := 0;

  UpdateThread.Execute(nil);

end;

procedure TUpdaterForm.UpdateBtnClick(Sender: TObject);
begin

  with UpdateDownloader do
  begin
    // Url := 'http://dl.dropbox.com/u/9617171/updater.exe';
    Url := 'http://sourceforge.net/projects/tx264/files/update.exe/download';
    FileName := ExtractFileDir(Application.ExeName) + '\updater.exe';
    Start;
  end;

  ProgressBar.Visible := true;
  UpdateBtn.Enabled := false;
  CancelBtn.Enabled := true;

end;

procedure TUpdaterForm.UpdateDownloaderDoneFile(Sender: TObject;
  FileName: string; FileSize: Integer; Url: string);
begin

  Self.Caption := 'Updater';
  ProgressBar.Visible := false;
  UpdateBtn.Enabled := false;
  CancelBtn.Enabled := false;

  if FileExists(FileName) then
  begin

    if ID_YES = Application.MessageBox
      ('Downloaded update.exe. Would you like to close TX264 and run updater.exe?',
      'New Version', MB_ICONQUESTION or MB_YESNO) then
    begin
      Application.MessageBox('Please say "Yes to all" when asked.', 'Info',
        MB_ICONINFORMATION);

      ShellExecute(0, 'open', PWideChar(FileName), nil, nil, SW_SHOWNORMAL);
      // //Self.Close;
      // MainForm.Enabled := True;
      // MainForm.Close;
      Application.Terminate;
    end;

  end;

end;

procedure TUpdaterForm.UpdateDownloaderProgress(Sender: TObject;
  Position, TotalSize: Int64; Url: string; var Continue: Boolean);
begin

  if (TotalSize > 0) then
  begin
    Self.Caption := 'Updater [' + FloatToStr((Position div 1024) div 1024) +
      'MB of ' + FloatToStr((TotalSize div 1024) div 1024) + 'MB ]';
    ProgressBar.Position := (100 * Position) div TotalSize;
  end;

end;

procedure TUpdaterForm.UpdateThreadExecute(Sender: TObject; Params: Pointer);
begin

  // check update
  with Downloader do
  begin
    Url := 'http://dl.dropbox.com/u/9617171/tx264.txt';
    FileName := MainForm.SystemInfo.Folders.Temp + '\TX264\version.txt';
    Start;
  end;

  UpdateThread.CancelExecute;

end;

procedure TUpdaterForm.WNDownloaderDoneFile(Sender: TObject; FileName: string;
  FileSize: Integer; Url: string);
begin

  if FileExists(FileName) then
  begin

    ChangeList.Items.LoadFromFile(FileName);
    MainForm.UpdateListboxScrollBox(ChangeList);

    Self.Caption := 'Updater';

    if ChangeList.Items.Count > 0 then
    begin
      UpdateBtn.Enabled := true;
    end
    else
    begin
      Application.MessageBox
        ('There seems to be a new version but TX264 could not download what''s new info!.',
        'Error', MB_ICONERROR);
    end;

  end;

end;

end.
