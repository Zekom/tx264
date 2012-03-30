program TX264;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  UnitMain in 'Forms\UnitMain.pas' {Form1} ,
  UnitLog in 'Forms\UnitLog.pas' {Form3} ,
  windows7taskbar in 'Units\windows7taskbar.pas',
  MediaInfoDLL in 'Units\MediaInfoDLL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.Title := 'TX264';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;

end.
