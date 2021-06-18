unit About;

interface

uses Windows, SysUtils, Forms, Controls, StdCtrls,
  Classes, ExtCtrls, Graphics, ShellAPI;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    OKButton: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Bevel1: TBevel;
    Name: TLabel;
    Year: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure NameMouseEnter(Sender: TObject);
    procedure NameMouseLeave(Sender: TObject);
    procedure NameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type

  TFontStyle = (fsBold, fsItalic, fsUnderline, fsStrikeOut);

  TFontStyles = set of TFontStyle;

var AboutBox: TAboutBox;

procedure ShowAboutBox;

implementation

{$R *.DFM}

procedure ShowAboutBox;
begin
  with TAboutBox.Create(Application) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TAboutBox.FormCreate(Sender: TObject);
begin
  Caption := Format('About %s', [Application.Title]);
  ProgramIcon.Picture.Assign(Application.Icon);
  ProductName.Caption := Application.Title;
end;


procedure TAboutBox.NameMouseEnter(Sender: TObject);
begin
    Name.Font.Style := Name.Font.Style+[Graphics.fsUnderline];
end;

procedure TAboutBox.NameMouseLeave(Sender: TObject);
begin
    Name.Font.Style := [];
end;

procedure TAboutBox.NameClick(Sender: TObject);
begin
    ShellExecute(Handle, nil, 'mailto:timor@jippii.fi', '', '', SW_SHOWNORMAL);
end;

end.

