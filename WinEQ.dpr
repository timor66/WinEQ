program Wineq;

uses
  Forms,
  SysUtils,
  windows,
  Equ in 'Equ.pas' {Form1},
  About in 'About.pas' {AboutBox},
  Meter in 'Meter.pas' {Form2},
  Scope in 'Scope.pas' {Form3},
  PlayCtrl in 'PlayCtrl.pas' {Playcontrol};

{$R *.RES}

var
  PrevWnd: HWnd;
begin
        if OpenMutex(MUTEX_ALL_ACCESS,False,'WinEQ') <> 0 then
        begin
            PrevWnd := FindWindow(PChar('TForm1'), PChar('WinEQ'));
            if PrevWnd <> 0 then
                PrevWnd := GetWindow(PrevWnd, GW_OWNER);
            if PrevWnd <> 0 then
            begin
                if IsIconic(PrevWnd) then
                    ShowWindow(PrevWnd, SW_SHOWNORMAL)
                else
                    SetForegroundWindow(PrevWnd);
                Application.Terminate;
            end;
        end;
        Application.Initialize;
        Application.Title := 'WinEQ';
        Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TPlaycontrol, Playcontrol);
  Application.Run;
end.
