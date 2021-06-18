unit Meter;

interface

uses
  Windows, Graphics, Forms, SysUtils,
  Math, ExtCtrls, StdCtrls, Controls, Classes;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    procedure FormPaint(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{        function GetCPUTick: Int64;
        function TicksToStr(const Value: int64): string;
        function CalibrateCPU: int64;}

var
{    Ticks1, Ticks2: DWORD;
    CPUClock: Extended;
    Ticks: Int64;}
    Form2: TForm2;
    fpos: TPosition;
    BitMap1: TBitMap;
    BitMap2: TBitMap;
    a, i, x, y, x6, y6, vu, imw2, imh1, six: Integer;
    n, k, two, tw, h, inf, gz, li, ri, d, fi: double;

implementation

uses Equ;

{$R *.dfm}
{$R Meter.res}

procedure TForm2.FormPaint(Sender: TObject);
var
    l: Integer;
    d, r, sri, sli: double;
begin

    // Left

{    Ticks1 := GetTickCount;
    Ticks := GetCPUTick;}
    BitMap1.Canvas.Draw(0,0,BitMap2);
    asm
        FINIT
        FLD mlo
        FCOMP gz
        FSTSW AX
        SAHF
        JA @nz
        FLDZ
        FDIV h
        FABS
        FST li
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD li
        FYL2X
        FST d
{        FST sd }
        JMP @z
@nz:    FLD mlo
        FDIV h
        FABS
        FST li
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD li
        FYL2X
{        FST sd}
        FLDZ
        FCOMP ST(1)
        FSTSW AX
        SAHF
        JA @oz
        FLD h
        FDIV h
        FABS
        FST li
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD li
        FYL2X
        FST d
        JMP @z
@oz:    FLD mlo
        FDIV h
        FABS
        FST li
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD li
        FYL2X
        FST d

{        FINIT
        FLD slo
        FDIV h
        FABS
        FST sli
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD sli
        FYL2X
        FST sd}
@z:
    end;
{    d := d + (-20.0/20);
    if (20*d) <= -70.0 then
    begin
        d := -70.0/20;
    end;}
    if pl = 1 then
    begin
        BitMap1.Canvas.Brush.Color := clYellow;
        BitMap1.Canvas.FloodFill(89, 58, clOlive, fsSurface);
        pl := 0;
    end
    else if pl = 0 then
    begin
        BitMap1.Canvas.Brush.Color := clOlive;
        BitMap1.Canvas.FloodFill(89, 58, clYellow, fsSurface);
        pl := 0;
    end;
    if not IsInfinite(d) then
    begin
        asm
            FINIT
            FLD d
            FMUL tw
            FMUL two
            FST r
            FLDPI
            FMUL r
            FDIV n
            FCOS
            FMUL k
            FRNDINT
            FIST x
            FIDIV six
            FIST x6
            FILD x
            FIADD imw2
            FIST x
            FILD x6
            FIADD imw2
            FIST x6
            FINIT
            FLD d
            FMUL tw
            FMUL two
            FST r
            FLDPI
            FMUL r
            FDIV n
            FSIN
            FMUL k
            FRNDINT
            FIST y
            FIDIV six
            FIST y6
            FILD y
            FIADD imh1
            FIST y
            FILD y6
            FIADD imh1
            FIST y6
        end;
    end
    else
    begin
        asm
            FINIT
            FLD inf
            FMUL tw
            FMUL two
            FST r
            FLDPI
            FMUL r
            FDIV n
            FCOS
            FMUL k
            FCHS
            FRNDINT
            FIST x
            FIDIV six
            FIST x6
            FILD x
            FIADD imw2
            FIST x
            FILD x6
            FIADD imw2
            FIST x6
            FINIT
            FLD inf
            FMUL tw
            FMUL two
            FST r
            FLDPI
            FMUL r
            FDIV n
            FSIN
            FMUL k
            FRNDINT
            FST y
            FIDIV six
            FIST y6
            FILD y
            FIADD imh1
            FIST y
            FILD y6
            FIADD imh1
            FIST y6
        end;
    end;
    BitMap1.Canvas.MoveTo(x6, y6);
    Bitmap1.Canvas.LineTo(x, y);
{    BitMap1.Canvas.Pen.Color := clWhite;
    BitMap1.Canvas.MoveTo(Image1.Width div 2-1,Image1.Height-1);
    Bitmap1.Canvas.LineTo(Image1.Width div 2+x-1, (Image1.Height-1)+y);
    BitMap1.Canvas.Pen.Color := clGray;
    BitMap1.Canvas.MoveTo(Image1.Width div 2+(x div 6),(Image1.Height-1)+(y div 6));
    Bitmap1.Canvas.LineTo(Image1.Width div 2+x, (Image1.Height-1)+y);}
    Image1.Canvas.Draw(0,0,BitMap1);

    //  Right

    BitMap1.Canvas.Draw(0,0,BitMap2);
    asm
        FINIT
        FLD mro
        FCOMP gz
        FSTSW AX
        SAHF
        JA @nz
        FLDZ
        FDIV h
        FABS
        FST ri
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD ri
        FYL2X
        FST d
{        FST sd}
        JMP @z
@nz:    FLD mro
        FDIV h
        FABS
        FST ri
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD ri
        FYL2X
        FLDZ
        FCOMP ST(1)
        FSTSW AX
        SAHF
        JA @oz
        FLD h
        FDIV h
        FABS
        FST ri
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD ri
        FYL2X
        FST d
        JMP @z
@oz:    FLD mro
        FDIV h
        FABS
        FST ri
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD ri
        FYL2X
        FST d
{        FINIT
        FLD sro
        FDIV h
        FABS
        FST sri
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD sri
        FYL2X
        FST sd}
@z:
    end;
{    d := d + (-20.0/20);
    if (20*d) <= -60.0 then
    begin
        d := -60.0/20;
    end;}
    if pr = 1 then
    begin
        BitMap1.Canvas.Brush.Color := clYellow;
        BitMap1.Canvas.FloodFill(89, 58, clOlive, fsSurface);
        pr := 0;
    end
    else if pr = 0 then
    begin
        BitMap1.Canvas.Brush.Color := clOlive;
        BitMap1.Canvas.FloodFill(89, 58, clYellow, fsSurface);
        pr := 0;
    end;
    if not IsInfinite(d) then
    begin
        asm
            FINIT
            FLD d
            FMUL tw
            FMUL two
            FST r
            FLDPI
            FMUL r
            FDIV n
            FCOS
            FMUL k
            FRNDINT
            FIST x
            FIDIV six
            FIST x6
            FILD x
            FIADD imw2
            FIST x
            FILD x6
            FIADD imw2
            FIST x6
            FINIT
            FLD d
            FMUL tw
            FMUL two
            FST r
            FLDPI
            FMUL r
            FDIV n
            FSIN
            FMUL k
            FRNDINT
            FIST y
            FIDIV six
            FIST y6
            FILD y
            FIADD imh1
            FIST y
            FILD y6
            FIADD imh1
            FIST y6
        end;
    end
    else
    begin
        asm
            FINIT
            FLD inf
            FMUL tw
            FMUL two
            FST r
            FLDPI
            FMUL r
            FDIV n
            FCOS
            FMUL k
            FCHS
            FRNDINT
            FIST x
            FIDIV six
            FIST x6
            FILD x
            FIADD imw2
            FIST x
            FILD x6
            FIADD imw2
            FIST x6
            FINIT
            FLD inf
            FMUL tw
            FMUL two
            FST r
            FLDPI
            FMUL r
            FDIV n
            FSIN
            FMUL k
            FRNDINT
            FIST y
            FIDIV six
            FIST y6
            FILD y
            FIADD imh1
            FIST y
            FILD y6
            FIADD imh1
            FIST y6
        end;
    end;
    BitMap1.Canvas.MoveTo(x6, y6);
    Bitmap1.Canvas.LineTo(x, y);
{    BitMap1.Canvas.MoveTo(Image2.Width div 2+3+(x div 7), (Image2.Height-1)+(y div 7));
    Bitmap1.Canvas.LineTo(Image2.Width div 2+3+x, (Image2.Height-1)+y);}

{    BitMap1.Canvas.Pen.Color := clWhite;
    BitMap1.Canvas.MoveTo(Image2.Width div 2-1,Image2.Height-1);
    Bitmap1.Canvas.LineTo(Image2.Width div 2+x-1, (Image2.Height-1)+y);
    BitMap1.Canvas.Pen.Color := clGray;
    BitMap1.Canvas.MoveTo(((Image2.Width div 2)+1)+(x div 6),(Image2.Height-1)+(y div 6)+1);
    Bitmap1.Canvas.LineTo(Image2.Width div 2+x+1, (Image2.Height-1)+y);}
    Image2.Canvas.Draw(0,0,BitMap1);
{    label3.Caption := tickstostr(getcputick-ticks)};
{    Form1.Refresh;}
end;

procedure TForm2.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
{    BitMap1.ReleaseHandle;
    BitMap2.ReleaseHandle;}
    BitMap1.Free;
    BitMap2.Free;
    b := FALSE;
    if (Form1.VU1.Checked) then Form1.VU1.Checked := False;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
{    CalibrateCPU;}
    Bitmap1 := TBitmap.Create;
    Bitmap2 := TBitmap.Create;
    BitMap1.LoadFromResourceName(hInstance, 'vuMittaritausta');
    BitMap2.LoadFromResourceName(hInstance, 'vuMittaritausta');
    BitMap1.HandleType := bmDDB;
    BitMap2.HandleType := bmDDB;
    BitMap1.IgnorePalette := TRUE;
    BitMap2.IgnorePalette := TRUE;
    a := 16;
    for i := 0 to 8 do
    begin
        if i < 1 then
            BitMap1.Canvas.Pen.Color := clRed
        else if i < 2 then
            BitMap1.Canvas.Pen.Color := clYellow
        else
            BitMap1.Canvas.Pen.Color := clLime;
        x := (Image1.Width div 2) + Round(70*Cos(a*Pi/180));
        y := Image1.Height - Round(70*Sin(a*Pi/180));
        BitMap1.Canvas.MoveTo(x, y);
        x := (Image1.Width div 2) + Round(60*Cos(a*Pi/180));
        y := Image1.Height - Round(60*Sin(a*Pi/180));
        BitMap1.Canvas.LineTo(x, y);
        a := a + 20;
    end;
    a := 16;
    for i := 0 to 8 do
    begin
        if i < 1 then
            BitMap2.Canvas.Pen.Color := clRed
        else if i < 2 then
            BitMap2.Canvas.Pen.Color := clYellow
        else
            BitMap2.Canvas.Pen.Color := clLime;
        x := (Image1.Width div 2) + Round(70*Cos(a*Pi/180));
        y := Image1.Height - Round(70*Sin(a*Pi/180));
        BitMap2.Canvas.MoveTo(x, y);
        x := (Image1.Width div 2) + Round(60*Cos(a*Pi/180));
        y := Image1.Height - Round(60*Sin(a*Pi/180));
        BitMap2.Canvas.LineTo(x, y);
        a := a + 20;
    end;
    a := 6;
    for i := 0 to 8 do
    begin
        if i < 1 then
            BitMap1.Canvas.Pen.Color := clRed
        else if i < 2 then
            BitMap1.Canvas.Pen.Color := clYellow
        else
            BitMap1.Canvas.Pen.Color := clLime;
        x := (Image1.Width div 2) + Round(70*Cos(a*Pi/180));
        y := Image1.Height - Round(70*Sin(a*Pi/180));
        BitMap1.Canvas.MoveTo(x, y);
        x := (Image1.Width div 2) + Round(65*Cos(a*Pi/180));
        y := Image1.Height - Round(65*Sin(a*Pi/180));
        BitMap1.Canvas.LineTo(x, y);
        a := a + 20;
    end;
    a := 6;
    for i := 0 to 8 do
    begin
        if i < 1 then
            BitMap2.Canvas.Pen.Color := clRed
        else if i < 2 then
            BitMap2.Canvas.Pen.Color := clYellow
        else
            BitMap2.Canvas.Pen.Color := clLime;
        x := (Image1.Width div 2) + Round(70*Cos(a*Pi/180));
        y := Image1.Height - Round(70*Sin(a*Pi/180));
        BitMap2.Canvas.MoveTo(x, y);
        x := (Image1.Width div 2) + Round(65*Cos(a*Pi/180));
        y := Image1.Height - Round(65*Sin(a*Pi/180));
        BitMap2.Canvas.LineTo(x, y);
        a := a + 20;
    end;
    a := 11;
    for i := 0 to 2 do
    begin
        if (i < 1) then
            BitMap1.Canvas.Pen.Color := clRed
        else if (i < 3) then
            BitMap1.Canvas.Pen.Color := clYellow
        else
            BitMap1.Canvas.Pen.Color := clLime;
        x := (Image1.Width div 2) + Round(70*Cos(a*Pi/180));
        y := Image1.Height - Round(70*Sin(a*Pi/180));
        BitMap1.Canvas.MoveTo(x, y);
        x := (Image1.Width div 2) + Round(67*Cos(a*Pi/180));
        y := Image1.Height - Round(67*Sin(a*Pi/180));
        BitMap1.Canvas.LineTo(x, y);
        a := a + 10;
    end;
    a := 11;
    for i := 0 to 2 do
    begin
        if (i < 1) then
            BitMap2.Canvas.Pen.Color := clRed
        else if (i < 3) then
            BitMap2.Canvas.Pen.Color := clYellow
        else
            BitMap2.Canvas.Pen.Color := clLime;
        x := (Image1.Width div 2) + Round(70*Cos(a*Pi/180));
        y := Image1.Height - Round(70*Sin(a*Pi/180));
        BitMap2.Canvas.MoveTo(x, y);
        x := (Image1.Width div 2) + Round(67*Cos(a*Pi/180));
        y := Image1.Height - Round(67*Sin(a*Pi/180));
        BitMap2.Canvas.LineTo(x, y);
        a := a + 10;
    end;
    BitMap1.Canvas.Pen.Width := 1;
    BitMap2.Canvas.Pen.Width := 1;
    BitMap1.Canvas.Pen.Color := clBlack;
    BitMap2.Canvas.Pen.Color := clBlack;
    BitMap1.Canvas.Brush.Color := clOlive;
    BitMap2.Canvas.Brush.Color := clOlive;
    BitMap1.Canvas.Ellipse(87, 55, 94, 62);
    BitMap2.Canvas.Ellipse(87, 55, 94, 62);
    BitMap1.Canvas.Pen.Color := clWhite;
    BitMap2.Canvas.Pen.Color := clWhite;
    BitMap1.Canvas.Arc(Image1.Width div 2-10, Image1.Height-10, Image1.Width div 2+10, Image1.Height+10, Image1.Width div 2, Image1.Height, Image1.Width div 2, Image1.Height);
    BitMap2.Canvas.Arc(Image1.Width div 2-10, Image1.Height-10, Image1.Width div 2+10, Image1.Height+10, Image1.Width div 2, Image1.Height, Image1.Width div 2, Image1.Height);
    BitMap1.Canvas.Pen.Color := clBtnFace;
    BitMap2.Canvas.Pen.Color := clBtnFace;
    BitMap1.Canvas.Arc(Image1.Width div 2-9, Image1.Height-10, Image1.Width div 2+10, Image1.Height+10, Image1.Width div 2, Image1.Height, Image1.Width div 2, Image1.Height);
    BitMap2.Canvas.Arc(Image1.Width div 2-9, Image1.Height-10, Image1.Width div 2+10, Image1.Height+10, Image1.Width div 2, Image1.Height, Image1.Width div 2, Image1.Height);
    Bitmap1.Canvas.Brush.Color := clBtnFace;
    Bitmap2.Canvas.Brush.Color := clBtnFace;
    Bitmap1.Canvas.Brush.Style := bsSolid;
    Bitmap2.Canvas.Brush.Style := bsSolid;
    BitMap1.Canvas.FloodFill(Image1.Width div 2, Image1.Height-2, clBlack, fsSurface);
    BitMap2.Canvas.FloodFill(Image1.Width div 2, Image1.Height-2, clBlack, fsSurface);
    Bitmap1.Canvas.Brush.Color := clBlack;
    Bitmap2.Canvas.Brush.Color := clBlack;
    BitMap1.Canvas.Font.Color := clGray;
    BitMap2.Canvas.Font.Color := clGray;
    BitMap1.Canvas.Font.Name := 'Small Fonts';
    BitMap2.Canvas.Font.Name := 'Small Fonts';
    BitMap1.Canvas.Font.Size :=5;
    BitMap2.Canvas.Font.Size := 5;
    a := 16;
    for i := 0 to 8 do
    begin
        x := (Image1.Width div 2) + Round(82*Cos(a*Pi/180));
        y := Image1.Height - Round(82*Sin(a*Pi/180));
        vu := -(a div 2)+18;
        if (vu > 0) then
        begin
            BitMap1.Canvas.TextOut(x-6, y-2, '+' + IntToStr(vu));
            BitMap2.Canvas.TextOut(x-6, y-2, '+' + IntToStr(vu));
        end
        else if (vu <= 0) and (vu > -70) then
        begin
                BitMap1.Canvas.TextOut(x-6, y-2, IntToStr(vu));
                BitMap2.Canvas.TextOut(x-6, y-2, IntToStr(vu));
        end
        else
        begin
            BitMap1.Canvas.TextOut(x-6, y-4, IntToStr(vu));
            BitMap2.Canvas.TextOut(x-6, y-4, IntToStr(vu));
        end;
        a := a + 20;
    end;
    BitMap1.Canvas.Pen.Color := clGray;
    BitMap2.Canvas.Pen.Color := clGray;
    GroupBox1.DoubleBuffered := TRUE;
    GroupBox2.DoubleBuffered := TRUE;
    n := 180.0;
    k := 70.0;
    two := 2.0;
    six := 6;
    tw := 20.0;
    h := 32768.0;
    gz := 1.0362151436839745395093974366397;
    inf := 90.0;
    fi := -35.0;
    imw2 := Image1.Width div 2;
    imh1 := Image1.Height - 1;
{    BitMap1.Dormant;
    BitMap2.Dormant;
    BitMap1.FreeImage;
    BitMap2.FreeImage;}
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Form2.Destroy;
end;

{function GetCPUTick: Int64;
asm
    DB $0F,$31 // this is RDTSC command. Assembler, built in Delphi,
              // does not support it,
              // that is why one needs to overcome this obstacle.
end;

function CalibrateCPU: int64;
var
    t: cardinal;
begin
    t := GetTickCount;
    while t=GetTickCount do;
        Result := GetCPUTick; //get the time-stamp counter value
    while GetTickCount<(t+400) do;   // delay for 0,4 sec
        Result := GetCPUTick - result; // clock cycle number in 0,4 second
    CPUClock := 2.5e-6*Result; // clock cycle number in 1 microsecond
end;

function TicksToStr(const Value: int64): string;
begin
    Result := FloatToStrF(Value/CPUClock,fffixed,10,2)+ ' ms';
end;}


procedure TForm2.FormDblClick(Sender: TObject);
begin
    if (Form2.Width < 494) and (Form2.Height < 224) then
    begin
        Image1.Height := Image1.Height*2;
        Image1.Width := Image1.Width*2;
        Image2.Height := Image2.Height*2;
        Image2.Width := Image2.Width*2;
        Image1.Left := Image1.Left*2;
        Image1.Top := Image1.Top*2;
        Image2.Left := Image2.Left*2;
        Image2.Top := Image2.Top*2;
        GroupBox1.Font.Size := 12;
        GroupBox2.Font.Size := 12;
        GroupBox1.Top := GroupBox1.Top*2;
        GroupBox1.Left := GroupBox1.Left*2;
        GroupBox2.Top := GroupBox2.Top*2;
        GroupBox2.Left := GroupBox2.Left*2{.Width+GroupBox1.Left+23};
        GroupBox1.Height := GroupBox1.Height*2{.Height+51};
        GroupBox1.Width := GroupBox1.Width*2{.Width+45};
        GroupBox2.Height := GroupBox2.Height*2{.Height+51};
        GroupBox2.Width := GroupBox2.Width*2{.Width+45};
        Form2.Width := Form2.Width*2{(GroupBox1.Width*2)+70};
        Form2.Height := Form2.Height*2{.Height+65};
        Label1.Font.Size := 18;
        Label2.Font.Size := 18;
        Label1.Width := Label1.Width*2;
        Label1.Height := Label1.Height*2;
        Label2.Width := Label2.Width*2;
        Label2.Height := Label2.Height*2;
        Label1.Left := (GroupBox2.Width div 2)-33;
        Label1.Top := (GroupBox2.Height div 2)+39;
        Label2.Left := (GroupBox1.Width div 2)-33;
        Label2.Top := (GroupBox1.Height div 2)+39;
        Bevel1.Width := Bevel1.Width*2{.Width+4};
        Bevel1.Height := Bevel1.Height*2{.Height+4};
        Bevel2.Width := Bevel2.Width*2{.Width+4};
        Bevel2.Height := Bevel2.Height*2{.Height+4};
        Bevel1.Top := Bevel1.Top*2;
        Bevel1.Left := Bevel1.Left*2;
        Bevel2.Top := Bevel2.Top*2;
        Bevel2.Left := Bevel2.Left*2;
        Shape3.Width := Shape3.Width*2;
        Shape3.Left := Shape3.Left*2{(Image1.Width div 2)+3};
        Shape3.Top := (Shape3.Top*2)+2{.Top+Image1.Height};
        Shape4.Width := Shape4.Width*2;
        Shape4.Height := Shape4.Height*2;
        Shape4.Left := Shape4.Left*2{.Left-2};
        Shape4.Top := Shape4.Top*2{.Top+Image1.Height};
        Shape5.Width := Shape5.Width*2;
        Shape5.Left := Shape5.Left*2{(Image1.Width div 2)+3};
        Shape5.Top := (Shape5.Top*2)+2{Image1.Top+Image1.Height};
        Shape6.Width := Shape6.Width*2;
        Shape6.Height := Shape6.Height*2;
        Shape6.Left := Shape6.Left*2;
        Shape6.Top := Shape6.Top*2{Image1.Top+Image1.Height};
        Form2.Position := poDesktopCenter;
    end
    else
    begin
        Form2.Width := 493;
        Form2.Height := 216;
        Image1.Height := Image1.Height div 2;
        Image1.Width := Image1.Width div 2;
        Image2.Height := Image2.Height div 2;
        Image2.Width := Image2.Width div 2;
        Image1.Left := Image1.Left div 2;
        Image1.Top := Image1.Top div 2;
        Image2.Left := Image2.Left div 2;
        Image2.Top := Image2.Top div 2;
        GroupBox1.Top := GroupBox1.Top div 2;
        GroupBox2.Top := GroupBox2.Top div 2;
        GroupBox1.Height := GroupBox1.Height div 2{.Height+51};
        GroupBox1.Width := GroupBox1.Width div 2{.Width+45};
        GroupBox2.Height := GroupBox2.Height div 2{.Height+51};
        GroupBox2.Width := GroupBox2.Width div 2{.Width+45};
        GroupBox1.Left := GroupBox1.Left div 2;
        GroupBox2.Left := GroupBox2.Left div 2{.Width+GroupBox1.Left+13};
        GroupBox1.Font.Size := 8;;
        GroupBox2.Font.Size := 8;
        Label1.Font.Size := Label1.Font.Size div 2;
        Label1.Width := Label1.Width div 2;
        Label1.Height := Label1.Height div 2;
        Label1.Left := (GroupBox2.Width div 2)-16;
        Label1.Top := (GroupBox2.Height div 2)+19;
        Label2.Font.Size := Label2.Font.Size div 2;
        Label2.Width := Label2.Width div 2;
        Label2.Height := Label2.Height div 2;
        Label2.Left := (GroupBox1.Width div 2)-16;
        Label2.Top := (GroupBox1.Height div 2)+19;
        Bevel1.Width := Bevel1.Width div 2{.Width+4};
        Bevel1.Height := Bevel1.Height div 2{.Height+4};
        Bevel2.Width := Bevel2.Width div 2{.Width+4};
        Bevel2.Height := Bevel2.Height div 2{.Height+4};
        Bevel1.Top := Bevel1.Top div 2;
        Bevel1.Left := Bevel1.Left div 2;
        Bevel2.Top := Bevel2.Top div 2;
        Bevel2.Left := Bevel2.Left div 2;
        Shape3.Width := Shape3.Width div 2;
        Shape3.Left := Shape3.Left div 2{(Image1.Width div 2)+12};
        Shape3.Top := (Shape3.Top div 2)-1{.Top+Image1.Height};
        Shape4.Width := Shape4.Width div 2;
        Shape4.Height := Shape4.Height div 2;
        Shape4.Left := Shape4.Left div 2;
        Shape4.Top := Shape4.Top div 2{.Top+Image1.Height};
        Shape5.Width := Shape5.Width div 2;
        Shape5.Left := Shape5.Left div 2{(Image1.Width div 2)+12};
        Shape5.Top := (Shape5.Top div 2)-1{Image2.Top+Image2.Height};
        Shape6.Width := Shape6.Width div 2;
        Shape6.Height := Shape6.Height div 2;
        Shape6.Left := Shape6.Left div 2;
        Shape6.Top := Shape6.Top div 2{Image2.Top+Image2.Height};
        Form2.Position := poMainFormCenter;
    end;
{    Form2.Top := Form1.Top - Form2.Height;
    Form2.Left := Form1.Left;}
end;

end.

