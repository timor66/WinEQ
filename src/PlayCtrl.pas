unit PlayCtrl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, NarrowTrackBar, ExtCtrls;

type
  TPlaycontrol = class(TForm)
    FR: TButton;
    Play: TButton;
    FF: TButton;
    Pause: TButton;
    Power: TButton;
    Fpos: TNarrowTrackBar;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    procedure PowerClick(Sender: TObject);
    procedure PlayClick(Sender: TObject);
    procedure PauseClick(Sender: TObject);
    procedure FFClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FposChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Playcontrol: TPlaycontrol;
  fpause, tt: Boolean;
  fts, ftm: double;

implementation

uses Equ;

{$R *.dfm}

procedure TPlaycontrol.PowerClick(Sender: TObject);
begin
    PlayControl.Hide;
    fplay := False;
    if (fopen) then CloseFile(f2);
    fopen := False;
    fpause := False;
end;

procedure TPlaycontrol.PlayClick(Sender: TObject);
begin
    if not (fpause) then
        fplay := True;
end;

procedure TPlaycontrol.PauseClick(Sender: TObject);
begin
    if (fplay) then
    begin
        fplay := False;
        fpause := true
    end
    else
    begin
        fplay := True;
        fpause := false;
    end;
end;

procedure TPlaycontrol.FFClick(Sender: TObject);
begin
    Seek(f2, FilePos(f2)+7000);
end;

procedure TPlaycontrol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    fplay := False;
    if (fopen) then CloseFile(f2);
    fopen := False;
    fpause := False;

end;

procedure TPlaycontrol.FormShow(Sender: TObject);
begin
  fts := trunc((FileSize(f2)-44)/(2*Samplerate));
  Fpos.Max := trunc(fts-1);
  FPos.Frequency := trunc(fts/10);
end;

procedure TPlaycontrol.FposChange(Sender: TObject);
begin
        if not (tt) then
        begin
            Seek(f2, FPos.Position*(4*Samplerate));
    Label1.Caption := FormatFloat('00',ftm);
    Label2.Caption := FormatFloat('00',fts);
            end;
end;

procedure TPlaycontrol.Timer1Timer(Sender: TObject);
begin
        if (fplay) then
        begin
            tt := true;
            FPos.Position := trunc(FilePos(f2)/(4*SampleRate));
            tt := false;
    fts := trunc(FilePos(f2)/(4*Samplerate));
    ftm := trunc(fts/60);
    fts := (((fts/60)-ftm)*60);
    Label1.Caption := FormatFloat('00',ftm);
    Label2.Caption := FormatFloat('00',fts);
        end;
end;

end.
