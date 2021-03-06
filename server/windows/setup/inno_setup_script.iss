; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Presentation Remote Server"
#define MyAppVersion "1.0"
#define MyAppPublisher "Mathieu Clement"
#define MyAppURL "http://www.mathieuclement.com/"
#define MyAppExeName "presentation_server.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F989C7C8-E76B-4E3D-A450-F2D9039C3FCF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=C:\Users\mathieu\git_repositories\presentation_remote\server\windows\setup\output
OutputBaseFilename=presentation_remote_server_setup
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
;Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "startauto"; Description: "Start automatically with my session"; GroupDescription: "Startup"; Flags: checkablealone


[Files]
Source: "C:\Users\mathieu\git_repositories\presentation_remote\server\windows\build\tray_icon_app.exe"; DestDir: "{app}"; DestName: "{#MyAppExeName}"; Flags: ignoreversion
Source: "C:\Users\mathieu\git_repositories\presentation_remote\server\windows\dll\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
;Source: "C:\Users\mathieu\git_repositories\presentation_remote\windows\resources\*"; DestDir: "{app}/resources"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
;Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{commonstartup}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}.exe"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "{#MyAppName}"; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletevalue; Tasks: startauto

[Code]
function InitializeUninstall(): Boolean;
  var ErrorCode: Integer;
begin
  ShellExec('open','taskkill.exe','/f /im {#MyAppExeName}','',SW_HIDE,ewNoWait,ErrorCode);
  ShellExec('open','tskill.exe',' {#MyAppName}','',SW_HIDE,ewNoWait,ErrorCode);
  result := True;
end;
