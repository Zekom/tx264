program TX264;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  UnitMain in 'Forms\UnitMain.pas' {MainForm} ,
  UnitLog in 'Forms\UnitLog.pas' {LogForm} ,
  windows7taskbar in 'Units\windows7taskbar.pas',
  MediaInfoDLL in 'Units\MediaInfoDLL.pas',
  UnitInfo in 'Forms\UnitInfo.pas' {InfoForm} ,
  UnitAbout in 'Forms\UnitAbout.pas' {AboutForm} ,
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.Title := 'TX264';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TLogForm, LogForm);
  Application.CreateForm(TInfoForm, InfoForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;

end.
