unit Scope;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    Image1: TImage;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  sample: Integer;
  BitMap1: TBitMap;
  BitMap2: TBitMap;
  start, im1h, im1w: Integer;
  im1d: Boolean;
implementation

uses Equ, Meter;

{$R *.dfm}

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    BitMap1.Free;
    BitMap2.Free;
    o := FALSE;
    if (Form1.Scope1.Checked) then Form1.Scope1.Checked := False;
end;

procedure TForm3.FormPaint(Sender: TObject);
var
        i: Integer;
begin
        BitMap1.Canvas.Draw(0, 0, BitMap2);
        BitMap1.Canvas.Pen.Color := rgb(0, 168, 255);
        BitMap1.Canvas.MoveTo(start, ((im1h)+(trunc(LeftIn[start]/-321))));
        for i := start to (Image1.Width-start) do
        begin
                sample := trunc(LeftIn[i]/-321);
                if (sample > 77) or (sample < -90)then
                        BitMap1.Canvas.Pen.Mode := pmnotcopy
                else
                        BitMap1.Canvas.Pen.Mode := pmCopy;

                BitMap1.Canvas.Pixels[i, ((im1h)+sample)] := RGB(0, 168, 255);
                BitMap1.Canvas.LineTo(i, ((im1h)+sample));
        end;
        BitMap1.Canvas.Pen.Color := rgb(255, 168, 0);
        BitMap1.Canvas.MoveTo(start, ((im1h)+(trunc(RightIn[start]/-321))));
        for i := start to (Image1.Width-start) do
        begin
                sample := trunc(RightIn[i]/-321);
                if (sample > 77) or (sample < -90)then
                        BitMap1.Canvas.Pen.Mode := pmnotcopy
                else
                        BitMap1.Canvas.Pen.Mode := pmCopy;

                BitMap1.Canvas.Pixels[i, ((im1h)+sample)] := RGB(255, 168, 0);
                BitMap1.Canvas.LineTo(i, ((im1h)+sample));
        end;
        Image1.Canvas.Draw(0, 0, BitMap1);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
    Bitmap1 := TBitmap.Create;
    Bitmap2 := TBitmap.Create;
    BitMap1.Width := Image1.Width;
    BitMap1.Height := Image1.Height;
    BitMap2.Width := Image1.Width;
    BitMap2.Height := Image1.Height;
    BitMap1.LoadFromResourceName(hInstance, 'oscMittaritausta');
    BitMap2.LoadFromResourceName(hInstance, 'oscMittaritausta');
    BitMap1.HandleType := bmDDB;
    BitMap2.HandleType := bmDDB;
    BitMap1.IgnorePalette := TRUE;
    BitMap2.IgnorePalette := TRUE;
    BitMap1.Canvas.Pen.Color := rgb(0, 168, 255);
    GroupBox1.DoubleBuffered := True;
    im1h := Image1.Height div 2;
    im1w := Image1.Width div 2;
    start := 0;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Form3.Destroy;
end;

procedure TForm3.Image1Click(Sender: TObject);
begin
        if not im1d then
        begin
        Form3.Width := Form3.Width*2;
        Form3.Height := Form3.Height*2;
        Image1.Width := Image1.Width*2;
        Image1.Height := Image1.Height*2;
        Image1.Left := Image1.Left*2;
        Image1.Top := Image1.Top*2;
        BitMap1.Width := BitMap1.Width*2;
        BitMap1.Height := BitMap1.Height*2;
        BitMap2.Width := BitMap2.Width*2;
        BitMap2.Height := BitMap2.Height*2;
        groupBox1.Width := GroupBox1.Width*2;
        groupBox1.Height := GroupBox1.Height*2;
        groupBox1.Left := GroupBox1.Left*2;
        groupBox1.Top := GroupBox1.Top*2;
{        start := start div 2; }
        im1h := Image1.Height div 4;
        im1w := Image1.Width div 4;
        im1d := true;
        end
        else
        begin
        Form3.Width := Form3.Width div 2;
        Form3.Height := Form3.Height div 2;
        Image1.Width := Image1.Width div 2;
        Image1.Height := Image1.Height div 2;
        Image1.Left := Image1.Left div 2;
        Image1.Top := Image1.Top div 2;
        BitMap1.Width := BitMap1.Width div 2;
        BitMap1.Height := BitMap1.Height div 2;
        BitMap2.Width := BitMap2.Width div 2;
        BitMap2.Height := BitMap2.Height div 2;
        groupBox1.Width := GroupBox1.Width div 2;
        groupBox1.Height := GroupBox1.Height div 2;
        groupBox1.Left := GroupBox1.Left div 2;
        groupBox1.Top := GroupBox1.Top div 2;
{        start := start div 2; }
        im1h := Image1.Height div 2;
        im1w := Image1.Width div 2;
        im1d := false;
        end;
end;

end.
