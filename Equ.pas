unit Equ;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, ComCtrls, Gauges, ExtCtrls, Menus, Buttons, Math, MMSystem, Meter,
    Registry, NarrowTrackBar, Scope;

type
    TForm1 = class(TForm)
        Label2: TLabel;
        Label3: TLabel;
        Label4: TLabel;
        Label5: TLabel;
        Label6: TLabel;
        Label13: TLabel;
        Label14: TLabel;
        Label15: TLabel;
        Label16: TLabel;
        Label17: TLabel;
        Label25: TLabel;
        Label26: TLabel;
        Label27: TLabel;
        Label28: TLabel;
        Label29: TLabel;
        Label30: TLabel;
        Label31: TLabel;
        Label32: TLabel;
        Label33: TLabel;
        Label34: TLabel;
        MainMenu1: TMainMenu;
        Program1: TMenuItem;
        Presets: TMenuItem;
    About_WinEQ: TMenuItem;
        Close1: TMenuItem;
        Loudness: TMenuItem;
        Bass: TMenuItem;
        BassBoost: TMenuItem;
        BassCut: TMenuItem;
        Middle: TMenuItem;
        MiddleCut: TMenuItem;
        MiddleBoost: TMenuItem;
        Treble: TMenuItem;
        TrebleBoost: TMenuItem;
        TrebleCut: TMenuItem;
        LoadPreset: TMenuItem;
        SavePreset: TMenuItem;
        UserPreset1: TMenuItem;
        SavePresetDialog: TSaveDialog;
        OpenPresetDialog: TOpenDialog;
        N1: TMenuItem;
        N3: TMenuItem;
        N4: TMenuItem;
        Bevel1: TBevel;
        Bevel2: TBevel;
        Bevel4: TBevel;
        Shape1: TShape;
        Shape2: TShape;
        _16kHz_NarrowTrackBar: TNarrowTrackBar;
        _8kHz_NarrowTrackBar: TNarrowTrackBar;
        _4kHz_NarrowTrackBar: TNarrowTrackBar;
        _2kHz_NarrowTrackBar: TNarrowTrackBar;
        _1kHz_NarrowTrackBar: TNarrowTrackBar;
        _500Hz_NarrowTrackBar: TNarrowTrackBar;
        _250Hz_NarrowTrackBar: TNarrowTrackBar;
        _125Hz_NarrowTrackBar: TNarrowTrackBar;
        _62Hz_NarrowTrackBar: TNarrowTrackBar;
        _31Hz_NarrowTrackBar: TNarrowTrackBar;
        s_31_NarrowTrackBar: TNarrowTrackBar;
        q_62_NarrowTrackBar: TNarrowTrackBar;
        q_125_NarrowTrackBar: TNarrowTrackBar;
        q_250_NarrowTrackBar: TNarrowTrackBar;
        q_500_NarrowTrackBar: TNarrowTrackBar;
        q_1k_NarrowTrackBar: TNarrowTrackBar;
        q_2k_NarrowTrackBar: TNarrowTrackBar;
        q_4k_NarrowTrackBar: TNarrowTrackBar;
        q_8k_NarrowTrackBar: TNarrowTrackBar;
        s_16k_NarrowTrackBar: TNarrowTrackBar;
    Effects1: TMenuItem;
    Phaser1: TMenuItem;
    Meters1: TMenuItem;
    VU1: TMenuItem;
    Scope1: TMenuItem;
    gain_NarrowTrackBar: TNarrowTrackBar;
    Label35: TLabel;
    Label36: TLabel;
    Playfile: TMenuItem;
    N2: TMenuItem;
    OpenFileDialog: TOpenDialog;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Bevel3: TBevel;
    Label11: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Linear: TButton;
    Image1: TImage;
    Image2: TImage;
    Label38: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label47: TLabel;
    Label43: TLabel;
    Label48: TLabel;
    Label44: TLabel;
    Label49: TLabel;
    Label45: TLabel;
    Label50: TLabel;
    Label46: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Bevel5: TBevel;
    Label55: TLabel;
    Label56: TLabel;
    Shape4: TShape;
    Shape3: TShape;
    Label57: TLabel;
    Label58: TLabel;
    Shape5: TShape;
    Shape6: TShape;
        procedure FormCreate(Sender: TObject);
        procedure ExitClick(Sender: TObject);
        procedure About_WinEQClick(Sender: TObject);
        procedure LoudnessClick(Sender: TObject);
        procedure BassBoostClick(Sender: TObject);
        procedure BassCutClick(Sender: TObject);
        procedure TrebleBoostClick(Sender: TObject);
        procedure TrebleCutClick(Sender: TObject);
        procedure MiddleBoostClick(Sender: TObject);
        procedure MiddleCutClick(Sender: TObject);
        procedure LoadPresetClick(Sender: TObject);
        procedure SavePresetClick(Sender: TObject);
        procedure UserPreset1Click(Sender: TObject);
        procedure _16kHz_NarrowTrackBarChange(Sender: TObject);
        procedure _8kHz_NarrowTrackBarChange(Sender: TObject);
        procedure _4kHz_NarrowTrackBarChange(Sender: TObject);
        procedure _2kHz_NarrowTrackBarChange(Sender: TObject);
        procedure _1kHz_NarrowTrackBarChange(Sender: TObject);
        procedure _500Hz_NarrowTrackBarChange(Sender: TObject);
        procedure _250Hz_NarrowTrackBarChange(Sender: TObject);
        procedure _125Hz_NarrowTrackBarChange(Sender: TObject);
        procedure _62Hz_NarrowTrackBarChange(Sender: TObject);
        procedure _31Hz_NarrowTrackBarChange(Sender: TObject);
        procedure s_31_NarrowTrackBarChange(Sender: TObject);
        procedure q_62_NarrowTrackBarChange(Sender: TObject);
        procedure q_125_NarrowTrackBarChange(Sender: TObject);
        procedure q_250_NarrowTrackBarChange(Sender: TObject);
        procedure q_500_NarrowTrackBarChange(Sender: TObject);
        procedure q_1k_NarrowTrackBarChange(Sender: TObject);
        procedure q_2k_NarrowTrackBarChange(Sender: TObject);
        procedure q_4k_NarrowTrackBarChange(Sender: TObject);
        procedure q_8k_NarrowTrackBarChange(Sender: TObject);
        procedure s_16k_NarrowTrackBarChange(Sender: TObject);
        procedure LinearMouseUp(Sender: TObject; Button: TMouseButton;
                    Shift: TShiftState; X, Y: Integer);
        procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormShow(Sender: TObject);
    procedure Phaser1Click(Sender: TObject);
    procedure VU1Click(Sender: TObject);
    procedure Scope1Click(Sender: TObject);
    procedure gain_NarrowTrackBarChange(Sender: TObject);
    procedure PlayfileClick(Sender: TObject);
    private
        HWaveIn:PHWaveIn;
        HWaveOut:PHWaveOut;
        HMixer: PHMixer;
        close_invoked, close_complete: Boolean;
        out_count, in_count: Integer;
        procedure MMInDone(var msg: Tmessage); message MM_WIM_DATA;
        procedure MMOutDone(var msg: Tmessage); message MM_WOM_DONE;
    public
        procedure DisplayHint(Sender: TObject);
        procedure AcceptFiles( var msg : TMessage ); message WM_DROPFILES;
end;
        procedure CalcCoeffs();
        procedure Phase();

{type    complex = record
            re: Double;
            im: Double;
        end;

        procedure fftinit(); external 'fft.obj';
        procedure fftswap(aks, n: Integer); external 'fft.obj';}
{        procedure fft2(complex x[2]); external;
        procedure fft4(complex x[4]); external;
        procedure fft16(complex x[16]); external;
        procedure fft64(complex x[64]); external;
        procedure fft256(complex x[256]); external;}
{        procedure fft1024(aks: complex); external 'fft.obj';}
{        function fftn(complex x[], nu: Integer); external;}


{        function GetCPUTick: Int64;
        function TicksToStr(const Value: int64): string;
        function CalibrateCPU: int64;}

const   SampleRate = 44100;
        memBlockLength = 6000;
        Q = 1.414;
        NZEROS = 22;
        GAIN = 1.563866935e+00;
        poles: array [0 .. 11] of Double = (0.3609, 2.7412, 11.1573, 44.7581, 179.6242, 798.4578,
                         1.2524, 5.5671, 22.3423, 89.6271, 364.7914, 2770.1114);
{        xcoeffs: array [0 .. 22] of Double = (
    +0.0072727273, +0.0000000000, +0.0170025972, +0.0000000000,
    +0.0498441563, +0.0000000000, +0.1210929651, +0.0000000000,
    +0.2804119792, +0.0000000000, +0.9813667679, +0.0000000000,
    -0.9813667679, -0.0000000000, -0.2804119792, -0.0000000000,
    -0.1210929651, -0.0000000000, -0.0498441563, -0.0000000000,
    -0.0170025972, -0.0000000000, -0.0072727273);}






type    TMemBlock = array[0 .. memBlockLength-1] of Byte;
        PMemBlock = ^TMemBlock;
        sBuffer = array [0 .. ((memBlockLength div 2)-1)] of Double;
        fBuffer = array [0 .. ((memBlockLength)-1)] of Byte;
        cBuffer = array [0 .. 100] of Double;
        tBuffer = array [0 .. 2] of Double;
        qBuffer = array [0 .. 6] of Double;
        eBuffer = array [0 .. MAXERRORLENGTH] of Char;
        pBuffer = array [0 .. 19] of ShortInt;
        lbl = array [0 .. 6] of MIXERCONTROLDETAILS_LISTTEXT;
        val = array [0 .. 6] of MIXERCONTROLDETAILS_BOOLEAN;
{        xv = array [0 .. NZEROS+1] of Double;}
        polfreq = array [0 .. 11] of Double;
        rrcc = array [0 .. 11] of Double;
        alfa = array [0 .. 11] of Double;
        betha = array [0 .. 11] of Double;
        xnm2 = array [0 .. 11] of Double;
        ynm2 = array [0 .. 11] of Double;
        coef2 = array [0 .. 11] of Double;



var
    Form1: TForm1;
    Reg: TRegistry;
{    CPUClock: Extended;
    Ticks: Int64;}
    MLBitmap_n72: TBitmap;
    MLBitmap_n70: TBitmap;
    MLBitmap_n68: TBitmap;
    MLBitmap_n66: TBitmap;
    MLBitmap_n64: TBitmap;
    MLBitmap_n62: TBitmap;
    MLBitmap_n60: TBitmap;
    MLBitmap_n58: TBitmap;
    MLBitmap_n56: TBitmap;
    MLBitmap_n54: TBitmap;
    MLBitmap_n52: TBitmap;
    MLBitmap_n50: TBitmap;
    MLBitmap_n48: TBitmap;
    MLBitmap_n46: TBitmap;
    MLBitmap_n44: TBitmap;
    MLBitmap_n42: TBitmap;
    MLBitmap_n40: TBitmap;
    MLBitmap_n38: TBitmap;
    MLBitmap_n36: TBitmap;
    MLBitmap_n34: TBitmap;
    MLBitmap_n32: TBitmap;
    MLBitmap_n30: TBitmap;
    MLBitmap_n28: TBitmap;
    MLBitmap_n26: TBitmap;
    MLBitmap_n24: TBitmap;
    MLBitmap_n22: TBitmap;
    MLBitmap_n20: TBitmap;
    MLBitmap_n18: TBitmap;
    MLBitmap_n16: TBitmap;
    MLBitmap_n14: TBitmap;
    MLBitmap_n12: TBitmap;
    MLBitmap_n10: TBitmap;
    MLBitmap_n8: TBitmap;
    MLBitmap_n6: TBitmap;
    MLBitmap_n4: TBitmap;
    MLBitmap_n2: TBitmap;
    MLBitmap_np0: TBitmap;
    MLBitmap_p2: TBitmap;
    MLBitmap_p4: TBitmap;
    MLBitmap_p6: TBitmap;
    MLBitmap_p8: TBitmap;
    MLBitmap_p10: TBitmap;

    MRBitmap_n72: TBitmap;
    MRBitmap_n70: TBitmap;
    MRBitmap_n68: TBitmap;
    MRBitmap_n66: TBitmap;
    MRBitmap_n64: TBitmap;
    MRBitmap_n62: TBitmap;
    MRBitmap_n60: TBitmap;
    MRBitmap_n58: TBitmap;
    MRBitmap_n56: TBitmap;
    MRBitmap_n54: TBitmap;
    MRBitmap_n52: TBitmap;
    MRBitmap_n50: TBitmap;
    MRBitmap_n48: TBitmap;
    MRBitmap_n46: TBitmap;
    MRBitmap_n44: TBitmap;
    MRBitmap_n42: TBitmap;
    MRBitmap_n40: TBitmap;
    MRBitmap_n38: TBitmap;
    MRBitmap_n36: TBitmap;
    MRBitmap_n34: TBitmap;
    MRBitmap_n32: TBitmap;
    MRBitmap_n30: TBitmap;
    MRBitmap_n28: TBitmap;
    MRBitmap_n26: TBitmap;
    MRBitmap_n24: TBitmap;
    MRBitmap_n22: TBitmap;
    MRBitmap_n20: TBitmap;
    MRBitmap_n18: TBitmap;
    MRBitmap_n16: TBitmap;
    MRBitmap_n14: TBitmap;
    MRBitmap_n12: TBitmap;
    MRBitmap_n10: TBitmap;
    MRBitmap_n8: TBitmap;
    MRBitmap_n6: TBitmap;
    MRBitmap_n4: TBitmap;
    MRBitmap_n2: TBitmap;
    MRBitmap_np0: TBitmap;
    MRBitmap_p2: TBitmap;
    MRBitmap_p4: TBitmap;
    MRBitmap_p6: TBitmap;
    MRBitmap_p8: TBitmap;
    MRBitmap_p10: TBitmap;
    t, mro, mlo, mbl, mbl2, mbl44, lol, lom, loj, rol, rom, roj, ul, ll, po, no, z, pli, pdb, twy, pgz, hf,
    xn1, yn1, xn2, yn2,
    Slope_31, Slope_16k, Q_31, Q_62, Q_125, Q_250, Q_500, Q_1k, Q_2k, Q_4k, Q_8k, Q_16k, dbgain,
    a0_lop, a1_lop, a2_lop, b0_lop, b1_lop, b2_lop,
    a0_hip, a1_hip, a2_hip, b0_hip, b1_hip, b2_hip,
    a0_allp1, a1_allp1, a2_allp1, b0_allp1, b1_allp1, b2_allp1,
    a0_allp2, a1_allp2, a2_allp2, b0_allp2, b1_allp2, b2_allp2,
    a0_allp3, a1_allp3, a2_allp3, b0_allp3, b1_allp3, b2_allp3,
    a0_allp4, a1_allp4, a2_allp4, b0_allp4, b1_allp4, b2_allp4, cfr, sum, duo, Qp, phi, zz_hip, zz_lop, eght: Double;
    bw: qBuffer;
    bypass, e, up1, b, o, up, down, phaser, fplay, fopen: Boolean;
    lpText: eBuffer;
    p: ShortInt;
    F: file of ShortInt;
    F2: file of ShortInt;
    i, ctrlval, DCDI, l, j, m, jj, pl, pr, mbl4, tp31, tp62, tp125, tp250, tp500, tp1k, tp2k, tp4k, tp8k, tp16k,
    tps31, tpq62, tpq125, tpq250, tpq500, tpq1k, tpq2k, tpq4k, tpq8k, tps16k, tpgain,
    pos31, pos62, pos125, pos250, pos500, pos1k, pos2k, pos4k, pos8k, pos16k: Integer;
    a0_31_a, a1_31_a, a2_31_a, b0_31_a, b1_31_a, b2_31_a,
    a0_62_a, a1_62_a, a2_62_a, b0_62_a, b1_62_a, b2_62_a,
    a0_125_a, a1_125_a, a2_125_a, b0_125_a, b1_125_a, b2_125_a,
    a0_250_a, a1_250_a, a2_250_a, b0_250_a, b1_250_a, b2_250_a,
    a0_500_a, a1_500_a, a2_500_a, b0_500_a, b1_500_a, b2_500_a,
    a0_1k_a, a1_1k_a, a2_1k_a, b0_1k_a, b1_1k_a, b2_1k_a,
    a0_2k_a, a1_2k_a, a2_2k_a, b0_2k_a, b1_2k_a, b2_2k_a,
    a0_4k_a, a1_4k_a, a2_4k_a, b0_4k_a, b1_4k_a, b2_4k_a,
    a0_8k_a, a1_8k_a, a2_8k_a, b0_8k_a, b1_8k_a, b2_8k_a,
    a0_16k_a, a1_16k_a, a2_16k_a, b0_16k_a, b1_16k_a, b2_16k_a,
    zz_31, zz_62, zz_125, zz_250, zz_500, zz_1k, zz_2k, zz_4k, zz_8k, zz_16k: cBuffer;
    LeftIn, RightIn: sBuffer;
    fsIn: fBuffer;
    tLeftOut, tLeftOut0, tLeftOut90, tRightOut, tRightOut0, tRightOut90, tRightIn, tLeftIn, RightOut_31, RightOut_62, RightOut_125,
    RightOut_250, RightOut_500, RightOut_1k, RightOut_2k, RightOut_4k,
    RightOut_8k, RightOut_16k, LeftOut_31, LeftOut_62, LeftOut_125,
    LeftOut_250, LeftOut_500, LeftOut_1k, LeftOut_2k, LeftOut_4k,
    LeftOut_8k, LeftOut_16k, RightOut_lop, LeftOut_lop, RightOut_hip, LeftOut_hip,
    RightOut_allp1, LeftOut_allp1, RightOut_allp2, LeftOut_allp2,
    RightOut_allp3, LeftOut_allp3, RightOut_allp4, LeftOut_allp4: tBuffer;
    LastSliderPos: pBuffer;
{    xval: xv;}
    polefreq: polfreq;
    rc: rrcc;
    alpha2: alfa;
    beta2: betha;
    xnm1: xnm2;
    ynm1: ynm2;
    coef: coef2;
    mixCaps: PMixerCaps;
    mixLine: PMixerLine;
    mixControl: PMixerControl;
    mixLineControls: PMixerLineControls;
    mixControlDetails: PMixerControlDetails;
    mixListText: lbl;
    mixControlValue: val;
implementation

uses About, PlayCtrl, ShellAPI;

{$R *.DFM}
{$R CR.RES}
{$R led.res}

procedure TForm1.FormCreate(Sender: TObject);
var
    WaveFormat:PWaveFormatEx;
    Header:PWaveHdr;
    memBlock:PMemBlock;
begin
    CreateMutex(nil, False, 'WinEQ');
    DragAcceptFiles( Handle, True );
    Application.OnHint := DisplayHint;
    SetPrecisionMode(pmExtended);
    Form1.DoubleBuffered := TRUE;
    Form1.AlphaBlend := FALSE;
    Form1.AlphaBlendValue := 255;
    Linear.DoubleBuffered := TRUE;
    MLBitmap_n72 := TBitmap.Create;
    MLBitmap_n70 := TBitmap.Create;
    MLBitmap_n68 := TBitmap.Create;
    MLBitmap_n66 := TBitmap.Create;
    MLBitmap_n64 := TBitmap.Create;
    MLBitmap_n62 := TBitmap.Create;
    MLBitmap_n60 := TBitmap.Create;
    MLBitmap_n58 := TBitmap.Create;
    MLBitmap_n56 := TBitmap.Create;
    MLBitmap_n54 := TBitmap.Create;
    MLBitmap_n52 := TBitmap.Create;
    MLBitmap_n50 := TBitmap.Create;
    MLBitmap_n48 := TBitmap.Create;
    MLBitmap_n46 := TBitmap.Create;
    MLBitmap_n44 := TBitmap.Create;
    MLBitmap_n42 := TBitmap.Create;
    MLBitmap_n40 := TBitmap.Create;
    MLBitmap_n38 := TBitmap.Create;
    MLBitmap_n36 := TBitmap.Create;
    MLBitmap_n34 := TBitmap.Create;
    MLBitmap_n32 := TBitmap.Create;
    MLBitmap_n30 := TBitmap.Create;
    MLBitmap_n28 := TBitmap.Create;
    MLBitmap_n26 := TBitmap.Create;
    MLBitmap_n24 := TBitmap.Create;
    MLBitmap_n22 := TBitmap.Create;
    MLBitmap_n20 := TBitmap.Create;
    MLBitmap_n18 := TBitmap.Create;
    MLBitmap_n16 := TBitmap.Create;
    MLBitmap_n14 := TBitmap.Create;
    MLBitmap_n12 := TBitmap.Create;
    MLBitmap_n10 := TBitmap.Create;
    MLBitmap_n8 := TBitmap.Create;
    MLBitmap_n6 := TBitmap.Create;
    MLBitmap_n4 := TBitmap.Create;
    MLBitmap_n2 := TBitmap.Create;
    MLBitmap_np0 := TBitmap.Create;
    MLBitmap_p2 := TBitmap.Create;
    MLBitmap_p4 := TBitmap.Create;
    MLBitmap_p6 := TBitmap.Create;
    MLBitmap_p8 := TBitmap.Create;
    MLBitmap_p10 := TBitmap.Create;

    MRBitmap_n72 := TBitmap.Create;
    MRBitmap_n70 := TBitmap.Create;
    MRBitmap_n68 := TBitmap.Create;
    MRBitmap_n66 := TBitmap.Create;
    MRBitmap_n64 := TBitmap.Create;
    MRBitmap_n62 := TBitmap.Create;
    MRBitmap_n60 := TBitmap.Create;
    MRBitmap_n58 := TBitmap.Create;
    MRBitmap_n56 := TBitmap.Create;
    MRBitmap_n54 := TBitmap.Create;
    MRBitmap_n52 := TBitmap.Create;
    MRBitmap_n50 := TBitmap.Create;
    MRBitmap_n48 := TBitmap.Create;
    MRBitmap_n46 := TBitmap.Create;
    MRBitmap_n44 := TBitmap.Create;
    MRBitmap_n42 := TBitmap.Create;
    MRBitmap_n40 := TBitmap.Create;
    MRBitmap_n38 := TBitmap.Create;
    MRBitmap_n36 := TBitmap.Create;
    MRBitmap_n34 := TBitmap.Create;
    MRBitmap_n32 := TBitmap.Create;
    MRBitmap_n30 := TBitmap.Create;
    MRBitmap_n28 := TBitmap.Create;
    MRBitmap_n26 := TBitmap.Create;
    MRBitmap_n24 := TBitmap.Create;
    MRBitmap_n22 := TBitmap.Create;
    MRBitmap_n20 := TBitmap.Create;
    MRBitmap_n18 := TBitmap.Create;
    MRBitmap_n16 := TBitmap.Create;
    MRBitmap_n14 := TBitmap.Create;
    MRBitmap_n12 := TBitmap.Create;
    MRBitmap_n10 := TBitmap.Create;
    MRBitmap_n8 := TBitmap.Create;
    MRBitmap_n6 := TBitmap.Create;
    MRBitmap_n4 := TBitmap.Create;
    MRBitmap_n2 := TBitmap.Create;
    MRBitmap_np0 := TBitmap.Create;
    MRBitmap_p2 := TBitmap.Create;
    MRBitmap_p4 := TBitmap.Create;
    MRBitmap_p6 := TBitmap.Create;
    MRBitmap_p8 := TBitmap.Create;
    MRBitmap_p10 := TBitmap.Create;


    MLBitmap_n72.LoadFromResourceName(HInstance, 'N72');
    MLBitmap_n70.LoadFromResourceName(HInstance, 'N70');
    MLBitmap_n68.LoadFromResourceName(HInstance, 'N68');
    MLBitmap_n66.LoadFromResourceName(HInstance, 'N66');
    MLBitmap_n64.LoadFromResourceName(HInstance, 'N64');
    MLBitmap_n62.LoadFromResourceName(HInstance, 'N62');
    MLBitmap_n60.LoadFromResourceName(HInstance, 'N60');
    MLBitmap_n58.LoadFromResourceName(HInstance, 'N58');
    MLBitmap_n56.LoadFromResourceName(HInstance, 'N56');
    MLBitmap_n54.LoadFromResourceName(HInstance, 'N54');
    MLBitmap_n52.LoadFromResourceName(HInstance, 'N52');
    MLBitmap_n50.LoadFromResourceName(HInstance, 'N50');
    MLBitmap_n48.LoadFromResourceName(HInstance, 'N48');
    MLBitmap_n46.LoadFromResourceName(HInstance, 'N46');
    MLBitmap_n44.LoadFromResourceName(HInstance, 'N44');
    MLBitmap_n42.LoadFromResourceName(HInstance, 'N42');
    MLBitmap_n40.LoadFromResourceName(HInstance, 'N40');
    MLBitmap_n38.LoadFromResourceName(HInstance, 'N38');
    MLBitmap_n36.LoadFromResourceName(HInstance, 'N36');
    MLBitmap_n34.LoadFromResourceName(HInstance, 'N34');
    MLBitmap_n32.LoadFromResourceName(HInstance, 'N32');
    MLBitmap_n30.LoadFromResourceName(HInstance, 'N30');
    MLBitmap_n28.LoadFromResourceName(HInstance, 'N28');
    MLBitmap_n26.LoadFromResourceName(HInstance, 'N26');
    MLBitmap_n24.LoadFromResourceName(HInstance, 'N24');
    MLBitmap_n22.LoadFromResourceName(HInstance, 'N22');
    MLBitmap_n20.LoadFromResourceName(HInstance, 'N20');
    MLBitmap_n18.LoadFromResourceName(HInstance, 'N18');
    MLBitmap_n16.LoadFromResourceName(HInstance, 'N16');
    MLBitmap_n14.LoadFromResourceName(HInstance, 'N14');
    MLBitmap_n12.LoadFromResourceName(HInstance, 'N12');
    MLBitmap_n10.LoadFromResourceName(HInstance, 'N10');
    MLBitmap_n8.LoadFromResourceName(HInstance, 'N8');
    MLBitmap_n6.LoadFromResourceName(HInstance, 'N6');
    MLBitmap_n4.LoadFromResourceName(HInstance, 'N4');
    MLBitmap_n2.LoadFromResourceName(HInstance, 'N2');
    MLBitmap_np0.LoadFromResourceName(HInstance, 'NP0');
    MLBitmap_p2.LoadFromResourceName(HInstance, 'P2');
    MLBitmap_p4.LoadFromResourceName(HInstance, 'P4');
    MLBitmap_p6.LoadFromResourceName(HInstance, 'P6');
    MLBitmap_p8.LoadFromResourceName(HInstance, 'P8');
    MLBitmap_p10.LoadFromResourceName(HInstance, 'P10');

    MRBitmap_n72.LoadFromResourceName(HInstance, 'N72');
    MRBitmap_n70.LoadFromResourceName(HInstance, 'N70');
    MRBitmap_n68.LoadFromResourceName(HInstance, 'N68');
    MRBitmap_n66.LoadFromResourceName(HInstance, 'N66');
    MRBitmap_n64.LoadFromResourceName(HInstance, 'N64');
    MRBitmap_n62.LoadFromResourceName(HInstance, 'N62');
    MRBitmap_n60.LoadFromResourceName(HInstance, 'N60');
    MRBitmap_n58.LoadFromResourceName(HInstance, 'N58');
    MRBitmap_n56.LoadFromResourceName(HInstance, 'N56');
    MRBitmap_n54.LoadFromResourceName(HInstance, 'N54');
    MRBitmap_n52.LoadFromResourceName(HInstance, 'N52');
    MRBitmap_n50.LoadFromResourceName(HInstance, 'N50');
    MRBitmap_n48.LoadFromResourceName(HInstance, 'N48');
    MRBitmap_n46.LoadFromResourceName(HInstance, 'N46');
    MRBitmap_n44.LoadFromResourceName(HInstance, 'N44');
    MRBitmap_n42.LoadFromResourceName(HInstance, 'N42');
    MRBitmap_n40.LoadFromResourceName(HInstance, 'N40');
    MRBitmap_n38.LoadFromResourceName(HInstance, 'N38');
    MRBitmap_n36.LoadFromResourceName(HInstance, 'N36');
    MRBitmap_n34.LoadFromResourceName(HInstance, 'N34');
    MRBitmap_n32.LoadFromResourceName(HInstance, 'N32');
    MRBitmap_n30.LoadFromResourceName(HInstance, 'N30');
    MRBitmap_n28.LoadFromResourceName(HInstance, 'N28');
    MRBitmap_n26.LoadFromResourceName(HInstance, 'N26');
    MRBitmap_n24.LoadFromResourceName(HInstance, 'N24');
    MRBitmap_n22.LoadFromResourceName(HInstance, 'N22');
    MRBitmap_n20.LoadFromResourceName(HInstance, 'N20');
    MRBitmap_n18.LoadFromResourceName(HInstance, 'N18');
    MRBitmap_n16.LoadFromResourceName(HInstance, 'N16');
    MRBitmap_n14.LoadFromResourceName(HInstance, 'N14');
    MRBitmap_n12.LoadFromResourceName(HInstance, 'N12');
    MRBitmap_n10.LoadFromResourceName(HInstance, 'N10');
    MRBitmap_n8.LoadFromResourceName(HInstance, 'N8');
    MRBitmap_n6.LoadFromResourceName(HInstance, 'N6');
    MRBitmap_n4.LoadFromResourceName(HInstance, 'N4');
    MRBitmap_n2.LoadFromResourceName(HInstance, 'N2');
    MRBitmap_np0.LoadFromResourceName(HInstance, 'NP0');
    MRBitmap_p2.LoadFromResourceName(HInstance, 'P2');
    MRBitmap_p4.LoadFromResourceName(HInstance, 'P4');
    MRBitmap_p6.LoadFromResourceName(HInstance, 'P6');
    MRBitmap_p8.LoadFromResourceName(HInstance, 'P8');
    MRBitmap_p10.LoadFromResourceName(HInstance, 'P10');
    _31Hz_NarrowTrackBar.DoubleBuffered := TRUE;
    _62Hz_NarrowTrackBar.DoubleBuffered := TRUE;
    _125Hz_NarrowTrackBar.DoubleBuffered := TRUE;
    _250Hz_NarrowTrackBar.DoubleBuffered := TRUE;
    _500Hz_NarrowTrackBar.DoubleBuffered := TRUE;
    _1kHz_NarrowTrackBar.DoubleBuffered := TRUE;
    _2kHz_NarrowTrackBar.DoubleBuffered := TRUE;
    _4kHz_NarrowTrackBar.DoubleBuffered := TRUE;
    _8kHz_NarrowTrackBar.DoubleBuffered := TRUE;
    _16kHz_NarrowTrackBar.DoubleBuffered := TRUE;
    s_31_NarrowTrackBar.DoubleBuffered := TRUE;
    q_62_NarrowTrackBar.DoubleBuffered := TRUE;
    q_125_NarrowTrackBar.DoubleBuffered := TRUE;
    q_250_NarrowTrackBar.DoubleBuffered := TRUE;
    q_500_NarrowTrackBar.DoubleBuffered := TRUE;
    q_1k_NarrowTrackBar.DoubleBuffered := TRUE;
    q_2k_NarrowTrackBar.DoubleBuffered := TRUE;
    q_4k_NarrowTrackBar.DoubleBuffered := TRUE;
    q_8k_NarrowTrackBar.DoubleBuffered := TRUE;
    s_16k_NarrowTrackBar.DoubleBuffered := TRUE;
    gain_NarrowTrackBar.DoubleBuffered := TRUE;
    gain_NarrowTrackBar.ShowHint := TRUE;

    bw[0] := 1/(1/2);
    bw[1] := 1/(2/3);
    bw[2] := 1/(3/4);
    bw[3] := 1;
    bw[4] := 1/(1+(1/4));
    bw[5] := 1/(1+(1/3));
    bw[6] := 1/(1+(1/2));
    Slope_31 := abs(-6+(s_31_NarrowTrackBar.Position-1))/6;
    Q_62 := Power(2, (1/(2*bw[q_62_NarrowTrackBar.Position])))/(Power(2,(1/bw[q_62_NarrowTrackBar.Position]))-1);
    Q_125 := Power(2, (1/(2*bw[q_125_NarrowTrackBar.Position])))/(Power(2,(1/bw[q_125_NarrowTrackBar.Position]))-1);
    Q_250 := Power(2, (1/(2*bw[q_250_NarrowTrackBar.Position])))/(Power(2,(1/bw[q_250_NarrowTrackBar.Position]))-1);
    Q_500 := Power(2, (1/(2*bw[q_500_NarrowTrackBar.Position])))/(Power(2,(1/bw[q_500_NarrowTrackBar.Position]))-1);
    Q_1k := Power(2, (1/(2*bw[q_1k_NarrowTrackBar.Position])))/(Power(2,(1/bw[q_1k_NarrowTrackBar.Position]))-1);
    Q_2k := Power(2, (1/(2*bw[q_2k_NarrowTrackBar.Position])))/(Power(2,(1/bw[q_2k_NarrowTrackBar.Position]))-1);
    Q_4k := Power(2, (1/(2*bw[q_4k_NarrowTrackBar.Position])))/(Power(2,(1/bw[q_4k_NarrowTrackBar.Position]))-1);
    Q_8k := Power(2, (1/(2*bw[q_8k_NarrowTrackBar.Position])))/(Power(2,(1/bw[q_8k_NarrowTrackBar.Position]))-1);
    Slope_16k := s_16k_NarrowTrackBar.Position/6;

    eght := 18.0;
    Qp := 0.3535;
    duo := 2.0;
    cfr := 125;
    ul := 32767.0;
    ll := -32768.0;
    twy := 20.0;
    pgz := 1.0362151436839745395093974366397;
    hf := 0.5;
    po := 1.0;
    no := -1.0;
    phi := 180.0;
    z := 0;
    l := 0;
    j := 0;
    m := 0;
    mbl := memBlockLength;
    mbl2 := memBlockLength div 2;
    mbl4 := (memBlockLength div 4)-1;
    mbl44 := memBlockLength div 4;

    if WaveOutGetNumDevs=0 then
    begin
        Application.MessageBox('Error', 'No sound playing card', mb_OK);
        e := TRUE;
    end;
    if waveInGetNumDevs=0 then
    begin
        Application.MessageBox('Error','No recording sound card',mb_ok);
        e := TRUE;
    end;

    WaveFormat:=new(PWaveFormatEx);
    WaveFormat.wFormatTag := WAVE_FORMAT_PCM;
    WaveFormat.nChannels:=2;
    WaveFormat.wBitsPerSample:=16;
    WaveFormat.nSamplesPerSec:=SampleRate;
    WaveFormat.nBlockAlign:=(WaveFormat.wBitsPerSample div 8)*WaveFormat.nChannels;
    WaveFormat.nAvgBytesPerSec:= WaveFormat.nBlockAlign*WaveFormat.nSamplesPerSec;

    if not e then
    begin
        i:=waveOutOpen(nil,WAVE_MAPPER,PWaveFormatEx(WaveFormat),0,0,WAVE_FORMAT_QUERY);
        if i<>0 then
        begin
            i:=waveOutGetErrorText(i, lpText, SizeOf(lpText));
            Application.MessageBox(lpText, 'Error', mb_OK);
            e := TRUE;
        end;
    end;

    if not e then
    begin
        i:=waveInOpen(nil,WAVE_MAPPER,PWaveFormatEx(WaveFormat),0,0,WAVE_FORMAT_QUERY);
        if i<>0 then
        begin
            i:=waveInGetErrorText(i, lpText, SizeOf(lpText));
            Application.MessageBox(lpText, 'Error', mb_OK);
            e := TRUE;
        end;
    end;

    HWaveOut:=new(PHWaveOut);
    if not e then
    begin
        i:=waveOutOpen(HWaveOut,WAVE_MAPPER,PWaveformatEx(WaveFormat), Form1.Handle, 0, CALLBACK_WINDOW or WAVE_ALLOWSYNC);
        if i<>0 then
        begin
            i:=waveOutGetErrorText(i, lpText, SizeOf(lpText));
            Application.Messagebox(lpText, 'Error', mb_OK);
            e := TRUE;
        end;
    end;

    HWaveIn:=new(PHWaveIn);
    if not e then
    begin
        i:=waveInOpen(HWaveIn,WAVE_MAPPER,PWaveFormatEx(WaveFormat), Form1.Handle, 0, CALLBACK_WINDOW or WAVE_ALLOWSYNC);
        if i<>0 then
        begin
            i:=waveInGetErrorText(i, lpText, SizeOf(lpText));
            Application.MessageBox(lpText, 'Error', mb_OK);
            e := TRUE;
        end;
    end;

    HMixer := new(PHMixer);
    mixCaps := new(PMixerCaps);
    mixLine := new(PMixerLine);
    mixControl := new(PMixerControl);
    mixLineControls := new(PMixerLineControls);
    mixControlDetails := new(PMixerControlDetails);

    if not e then
    begin
        if mixerOpen(HMixer, HwaveIn^, 0, 0, MIXER_OBJECTF_HWAVEIN) = MMSYSERR_NOERROR then
        begin
            if mixerGetDevCaps(0, mixCaps, sizeOf(mixCaps^)) = MMSYSERR_NOERROR then
            begin
                mixLine.dwComponentType := MIXERLINE_COMPONENTTYPE_DST_WAVEIN;
                mixLine.cbStruct := sizeof(mixLine^);
                if mixerGetLineInfo(HMixer^, mixLine, MIXER_GETLINEINFOF_COMPONENTTYPE) = MMSYSERR_NOERROR then
                begin
                    zeroMemory(mixLineControls, sizeof(mixLineControls^));
                    mixLineControls.cbStruct := sizeof(mixLineControls^);
                    mixLineControls.dwLineID := mixLine.dwLineID;
                    mixLineControls.cControls := 1;
                    mixLineControls.dwControlType := MIXERCONTROL_CONTROLTYPE_MIXER;
                    mixLineControls.pamxctrl := mixControl;
                    mixLineControls.cbmxctrl := sizeof(mixControl^);
                    if mixerGetLineControls(HMixer^, mixLineControls, MIXER_GETLINECONTROLSF_ONEBYTYPE) = MMSYSERR_NOERROR then
                    begin
                        zeroMemory(addr(mixListText), sizeof(mixControlDetails^)*mixControl.cMultipleItems);
                        mixControlDetails.cbStruct := sizeof(mixControlDetails^);
                        mixControlDetails.dwControlID := mixControl.dwControlID;
                        mixControlDetails.cChannels := 1;
                        mixControlDetails.cMultipleItems := mixControl.cMultipleItems;
                        mixControlDetails.paDetails := addr(mixListText);
                        mixControlDetails.cbDetails := sizeof(MIXERCONTROLDETAILS_LISTTEXT);
                        if mixerGetControlDetails(HMixer^, mixControlDetails, MIXER_GETCONTROLDETAILSF_LISTTEXT) = MMSYSERR_NOERROR then
                        begin
                            for jj := 0 to mixControl.cMultipleItems-1 do
                            begin
                                mixLine.cbStruct := sizeof(mixLine^);
                                mixLine.dwLineID := mixListText[jj].dwParam1;
                                i := mixerGetLineInfo(HMixer^, mixLine, MIXER_GETLINEINFOF_LINEID);
                                if mixLine.dwComponentType = MIXERLINE_COMPONENTTYPE_SRC_DIGITAL then
                                begin
                                    DCDI := jj;
                                    break;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;


    {these are the count of the number of blocks sent to}
    {the audio device}
    in_count:=0;
    out_count:=0;

    {need to add some buffers to the recording queue}
    {in case the messages that blocks have been recorded}
    {are delayed}
    for jj := 1 to 4 do
    begin
        {make a new block}
        Header:=new(PWaveHdr);
        memBlock:=new(PMemBlock);

        Header:=new(PWaveHdr);
        with Header^ do
        begin
            lpData:=pointer(memBlock);
            dwBufferLength:=memBlockLength;
            dwBytesRecorded:=0;
            dwUser:=0;
            dwFlags:=0;
            dwLoops:=0;
        end;

        {prepare the new block}
        if not e then
        begin
            i:=waveInPrepareHeader(HWaveIn^,Header,SizeOf(TWaveHdr));
            if i<>0 then
            begin
                i:=waveInGetErrorText(i, lpText, SizeOf(lpText));
                Application.MessageBox(lpText, 'Error', mb_OK);
                e := TRUE;
            end;
        end;

        {add it to the buffer}
        if not e then
        begin
            i:=waveInAddBuffer(HWaveIn^,Header,SizeOf(TWaveHdr));
            if i<>0 then
            begin
                i:=waveInGetErrorText(i, lpText, SizeOf(lpText));
                Application.MessageBox(lpText, 'Error', mb_OK);
                e := TRUE;
            end;
        end;

        inc(in_count);

    end; {of loop}

    CalcCoeffs;

   {finally start recording}
    if not e then
    begin
        i:=waveInStart(HWaveIn^);
        if i<>0 then
        begin
            i:=waveInGetErrorText(i, lpText, SizeOf(lpText));
            Application.MessageBox(lpText, 'Error', mb_OK);
            e := TRUE;
        end;
    end;

    close_invoked:=false;
    close_complete:=false;
    b := false;

    // Load last slider and window positions from registry

    Reg := TRegistry.Create;
    try
        Reg.RootKey := HKEY_CURRENT_USER;
        if Reg.OpenKey('\Software\WinEQ\1.0\LastSPos', False) then
        begin
            Reg.ReadBinaryData('LastSPos', LastSliderPos, 20);
            Reg.CloseKey;
            for jj := 0 to 19 do
            begin
                if jj = 0 then _31Hz_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 1 then _62Hz_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 2 then _125Hz_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 3 then _250Hz_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 4 then _500Hz_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 5 then _1kHz_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 6 then _2kHz_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 7 then _4kHz_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 8 then _8kHz_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 9 then _16kHz_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 10 then s_31_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 11 then q_62_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 12 then q_125_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 13 then q_250_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 14 then q_500_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 15 then q_1k_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 16 then q_2k_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 17 then q_4k_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 18 then q_8k_NarrowTrackBar.Position := LastSliderPos[jj];
                if jj = 19 then s_16k_NarrowTrackBar.Position := LastSliderPos[jj];
            end;
        end;
        if Reg.OpenKey('\Software\WinEQ\1.0\LastWPos\Top', False) then
        begin
            Form1.Top := Reg.ReadInteger('Top');
            Reg.CloseKey;
        end;
        if Reg.OpenKey('\Software\WinEQ\1.0\LastWPos\Left', False) then
        begin
            Form1.Left := Reg.ReadInteger('Left');
            Reg.CloseKey;
        end;
    finally
        Reg.Free;
        inherited;
    end;
{    Assignfile(f, 'c:\wave0.wav');
    Assignfile(f2, 'd:\prince2.pcm');}
{    Rewrite(f);}
{    Reset(f2);
    Seek(f2, 0);}

end;


procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    {reset the output channel}
    if HWaveOut<>nil then WaveOutReset(HWaveOut^);

    {reset the input channel}
    if HWaveIn<>nil then WaveInReset(HWaveIn^);

    if e then
    begin
        WaveInClose(HWaveIn^);
        HwaveIn:=nil;

        WaveOutClose(HWaveOut^);
        HwaveIn:=nil;
    end;

    close_invoked:=true;
    canclose:=close_complete;

    // Save last slider and window position to registry

    for i := 0 to 19 do
    begin
        if i = 0 then p := _31Hz_NarrowTrackBar.Position;
        if i = 1 then p := _62Hz_NarrowTrackBar.Position;
        if i = 2 then p := _125Hz_NarrowTrackBar.Position;
        if i = 3 then p := _250Hz_NarrowTrackBar.Position;
        if i = 4 then p := _500Hz_NarrowTrackBar.Position;
        if i = 5 then p := _1kHz_NarrowTrackBar.Position;
        if i = 6 then p := _2kHz_NarrowTrackBar.Position;
        if i = 7 then p := _4kHz_NarrowTrackBar.Position;
        if i = 8 then p := _8kHz_NarrowTrackBar.Position;
        if i = 9 then p := _16kHz_NarrowTrackBar.Position;
        if i = 10 then p := s_31_NarrowTrackBar.Position;
        if i = 11 then p := q_62_NarrowTrackBar.Position;
        if i = 12 then p := q_125_NarrowTrackBar.Position;
        if i = 13 then p := q_250_NarrowTrackBar.Position;
        if i = 14 then p := q_500_NarrowTrackBar.Position;
        if i = 15 then p := q_1k_NarrowTrackBar.Position;
        if i = 16 then p := q_2k_NarrowTrackBar.Position;
        if i = 17 then p := q_4k_NarrowTrackBar.Position;
        if i = 18 then p := q_8k_NarrowTrackBar.Position;
        if i = 19 then p := s_16k_NarrowTrackBar.Position;
        LastSliderPos[i] := p;
    end;
    Reg := TRegistry.Create;
    Reg.LazyWrite := FALSE;
    try
        Reg.RootKey := HKEY_CURRENT_USER;
        if Reg.OpenKey('\Software\WinEQ\1.0\LastSPos', True) then
        begin
            Reg.WriteBinaryData('LastSPos', LastSliderPos, 20);
            Reg.CloseKey;
        end;
        if Reg.OpenKey('\Software\WinEQ\1.0\LastWPos\Top', True) then
        begin
            Reg.WriteInteger('Top', Form1.Top);
            Reg.CloseKey;
        end;
        if Reg.OpenKey('\Software\WinEQ\1.0\LastWPos\Left', True) then
        begin
            Reg.WriteInteger('Left', Form1.Left);
            Reg.CloseKey;
        end;
    finally
        Reg.Free;
    inherited;
  end;

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if HMixer<>nil then
    begin
        if mixerClose(HMixer^) = MMSYSERR_NOERROR then
        begin
            dispose(HMixer);
            HMixer := nil;
        end;
    end;
    if mixCaps<>nil then
    begin
        dispose(mixCaps);
        mixCaps := nil;
    end;
    if mixLine<>nil then
    begin
        dispose(mixLine);
        mixLine := nil;
    end;
    if mixLineControls<>nil then
    begin
        dispose(mixLineControls);
        mixLineControls := nil;
    end;
    if mixControl<>nil then
    begin
        dispose(mixControl);
        mixControl := nil;
    end;
    if mixControlDetails<>nil then
    begin
        dispose(mixControlDetails);
        mixControlDetails := nil;
    end;
{  closefile(f);}
    if (fopen) then
  closefile(f2);
end;

procedure TForm1.ExitClick(Sender: TObject);
begin
    Close;
end;

procedure TForm1.LoudnessClick(Sender: TObject);
begin
    if not bypass then
    begin
        _31Hz_NarrowTrackBar.Position := -20;
        _62Hz_NarrowTrackBar.Position := -10;
        _125Hz_NarrowTrackBar.Position := 0;
        _250Hz_NarrowTrackBar.Position := 0;
        _500Hz_NarrowTrackBar.Position := 0;
        _1kHz_NarrowTrackBar.Position := 0;
        _2kHz_NarrowTrackBar.Position := 0;
        _4kHz_NarrowTrackBar.Position := 0;
        _8kHz_NarrowTrackBar.Position := -10;
        _16kHz_NarrowTrackBar.Position := -20;
        If UserPreset1.Checked then
        begin
            UserPreset1.Checked := FALSE;
            up1 := FALSE;
        end;
    end;
end;

procedure TForm1.BassBoostClick(Sender: TObject);
begin
    if not bypass then
    begin
        _31Hz_NarrowTrackBar.Position := -20;
        _62Hz_NarrowTrackBar.Position := -10;
        _125Hz_NarrowTrackBar.Position := 0;
        _250Hz_NarrowTrackBar.Position := 0;
        _500Hz_NarrowTrackBar.Position := 0;
        _1kHz_NarrowTrackBar.Position := 0;
        _2kHz_NarrowTrackBar.Position := 0;
        _4kHz_NarrowTrackBar.Position := 0;
        _8kHz_NarrowTrackBar.Position := 0;
        _16kHz_NarrowTrackBar.Position := 0;
        If UserPreset1.Checked then
        begin
            UserPreset1.Checked := FALSE;
            up1 := FALSE;
        end;
    end;
end;

procedure TForm1.BassCutClick(Sender: TObject);
begin
    if not bypass then
    begin
        _31Hz_NarrowTrackBar.Position := 20;
        _62Hz_NarrowTrackBar.Position := 10;
        _125Hz_NarrowTrackBar.Position := 0;
        _250Hz_NarrowTrackBar.Position := 0;
        _500Hz_NarrowTrackBar.Position := 0;
        _1kHz_NarrowTrackBar.Position := 0;
        _2kHz_NarrowTrackBar.Position := 0;
        _4kHz_NarrowTrackBar.Position := 0;
        _8kHz_NarrowTrackBar.Position := 0;
        _16kHz_NarrowTrackBar.Position := 0;
        If UserPreset1.Checked then
        begin
            UserPreset1.Checked := FALSE;
            up1 := FALSE;
        end;
    end;
end;

procedure TForm1.MiddleBoostClick(Sender: TObject);
begin
    if not bypass then
    begin
        _31Hz_NarrowTrackBar.Position := 0;
        _62Hz_NarrowTrackBar.Position := 0;
        _125Hz_NarrowTrackBar.Position := 0;
        _250Hz_NarrowTrackBar.Position := -5;
        _500Hz_NarrowTrackBar.Position := -10;
        _1kHz_NarrowTrackBar.Position := -10;
        _2kHz_NarrowTrackBar.Position := -5;
        _4kHz_NarrowTrackBar.Position := 0;
        _8kHz_NarrowTrackBar.Position := 0;
        _16kHz_NarrowTrackBar.Position := 0;
        If UserPreset1.Checked then
        begin
            UserPreset1.Checked := FALSE;
            up1 := FALSE;
        end;
    end;
end;

procedure TForm1.MiddleCutClick(Sender: TObject);
begin
    if not bypass then
    begin
        _31Hz_NarrowTrackBar.Position := 0;
        _62Hz_NarrowTrackBar.Position := 0;
        _125Hz_NarrowTrackBar.Position := 0;
        _250Hz_NarrowTrackBar.Position := 5;
        _500Hz_NarrowTrackBar.Position := 10;
        _1kHz_NarrowTrackBar.Position := 10;
        _2kHz_NarrowTrackBar.Position := 5;
        _4kHz_NarrowTrackBar.Position := 0;
        _8kHz_NarrowTrackBar.Position := 0;
        _16kHz_NarrowTrackBar.Position := 0;
        If UserPreset1.Checked then
        begin
            UserPreset1.Checked := FALSE;
            up1 := FALSE;
        end;
    end;
end;

procedure TForm1.TrebleBoostClick(Sender: TObject);
begin
    if not bypass then
    begin
        _31Hz_NarrowTrackBar.Position := 0;
        _62Hz_NarrowTrackBar.Position := 0;
        _125Hz_NarrowTrackBar.Position := 0;
        _250Hz_NarrowTrackBar.Position := 0;
        _500Hz_NarrowTrackBar.Position := 0;
        _1kHz_NarrowTrackBar.Position := 0;
        _2kHz_NarrowTrackBar.Position := 0;
        _4kHz_NarrowTrackBar.Position := 0;
        _8kHz_NarrowTrackBar.Position := -10;
        _16kHz_NarrowTrackBar.Position := -20;
        If UserPreset1.Checked then
        begin
            UserPreset1.Checked := FALSE;
            up1 := FALSE;
        end;
    end;
end;

procedure TForm1.TrebleCutClick(Sender: TObject);
begin
    if not bypass then
    begin
        _31Hz_NarrowTrackBar.Position := 0;
        _62Hz_NarrowTrackBar.Position := 0;
        _125Hz_NarrowTrackBar.Position := 0;
        _250Hz_NarrowTrackBar.Position := 0;
        _500Hz_NarrowTrackBar.Position := 0;
        _1kHz_NarrowTrackBar.Position := 0;
        _2kHz_NarrowTrackBar.Position := 0;
        _4kHz_NarrowTrackBar.Position := 0;
        _8kHz_NarrowTrackBar.Position := 10;
        _16kHz_NarrowTrackBar.Position := 20;
        If UserPreset1.Checked then
        begin
            UserPreset1.Checked := FALSE;
            up1 := FALSE;
        end;
    end;
end;

procedure TForm1.About_WinEQClick(Sender: TObject);
begin
    About.ShowAboutBox;
end;

procedure TForm1.LoadPresetClick(Sender: TObject);
var v: ShortInt;
    preset: string;
    slen: Integer;
begin
    OpenPresetDialog.InitialDir := ExtractFilePath(Application.ExeName) + 'Presets';
    if not bypass then
    begin
        if OpenPresetDialog.Execute then
        begin
            try
                AssignFile(F, OpenPresetDialog.FileName);
                {$I-}
                System.Reset(F);
                {$I+}
                Read(F, v);
                _31Hz_NarrowTrackBar.Position := v;
                pos31 := v;
                Read(F, v);
                _62Hz_NarrowTrackBar.Position := v;
                pos62 := v;
                Read(F, v);
                _125Hz_NarrowTrackBar.Position := v;
                pos125 := v;
                Read(F, v);
                _250Hz_NarrowTrackBar.Position := v;
                pos250 := v;
                Read(F, v);
                _500Hz_NarrowTrackBar.Position := v;
                pos500 := v;
                Read(F, v);
                _1kHz_NarrowTrackBar.Position := v;
                pos1k := v;
                Read(F, v);
                _2kHz_NarrowTrackBar.Position := v;
                pos2k := v;
                Read(F, v);
                _4kHz_NarrowTrackBar.Position := v;
                pos4k := v;
                Read(F, v);
                _8kHz_NarrowTrackBar.Position := v;
                pos8k := v;
                Read(F, v);
                _16kHz_NarrowTrackBar.Position := v;
                pos16k := v;
            finally
                CloseFile(F);
            end;
            N4.Visible := TRUE;
            preset := ExtractFileName(OpenPresetDialog.FileName);
            slen := Length(preset)-4;
            SetLength(preset, slen);
            UserPreset1.Caption := preset;
            UserPreset1.Visible := TRUE;
            UserPreset1.Checked := TRUE;
            up1 := TRUE;
        end;
    end;
end;

procedure TForm1.SavePresetClick(Sender: TObject);
begin
    SavePresetDialog.InitialDir := ExtractFilePath(Application.ExeName) + 'Presets';
    if not bypass then
    begin
        if SavePresetDialog.Execute then
        begin
            try
                AssignFile(F, SavePresetDialog.Filename);
                Rewrite(F);
                Write(F, _31Hz_NarrowTrackBar.Position, _62Hz_NarrowTrackBar.Position,
                _125Hz_NarrowTrackBar.Position, _250Hz_NarrowTrackBar.Position,
                _500Hz_NarrowTrackBar.Position, _1kHz_NarrowTrackBar.Position,
                _2kHz_NarrowTrackBar.Position, _4kHz_NarrowTrackBar.Position,
                _8kHz_NarrowTrackBar.Position, _16kHz_NarrowTrackBar.Position);
            finally
                CloseFile(F);
            end;
        end;
    end;
end;

procedure TForm1.UserPreset1Click(Sender: TObject);
begin
    _31Hz_NarrowTrackBar.Position := pos31;
    _62Hz_NarrowTrackBar.Position := pos62;
    _125Hz_NarrowTrackBar.Position := pos125;
    _250Hz_NarrowTrackBar.Position := pos250;
    _500Hz_NarrowTrackBar.Position := pos500;
    _1kHz_NarrowTrackBar.Position := pos1k;
    _2kHz_NarrowTrackBar.Position := pos2k;
    _4kHz_NarrowTrackBar.Position := pos4k;
    _8kHz_NarrowTrackBar.Position := pos8k;
    _16kHz_NarrowTrackBar.Position := pos16k;
    if not bypass and not UserPreset1.Checked then
    begin
        UserPreset1.Checked := TRUE;
        up1 := TRUE;
    end;
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

procedure TForm1.MMOutDone(var msg: Tmessage);
var
    Header:PWaveHdr;
begin
    dec(out_count);
    {get the returned header}
    Header:=PWaveHdr(msg.LParam);
    if not e then
    begin
        i:=waveOutUnPrepareHeader(HWaveOut^,Header,SizeOf(TWaveHdr));
        if i<>0 then
        begin
            i:=waveInGetErrorText(i, lpText, SizeOf(lpText));
            Application.MessageBox(lpText, 'Error', mb_OK);
            e := TRUE;
            Form1.Close;
        end;
    end;

    {free the memory}
    dispose(Header^.lpdata);
    dispose(Header);

    {if there's no more blocks being recorded}
    if (out_count=0) then
    begin
        WaveOutClose(HWaveOut^);
        HWaveOut:=nil;
    end;

    {if there's nothing more to do then close}
    if (in_count=0) and (out_count=0) then
    begin
        close_complete:=true;
        Form1.close;
    end;
end;

procedure TForm1.MMInDone(var msg: Tmessage);
var
    Header:PWaveHdr;
    memBlock:PmemBlock;
    feof: Boolean;
    sum_r, sum_l, d, k, s, r, fty,
    tb31, tb62, tb125, tb250, tb500, tb1k, tb2k, tb4k, tb8k, tb16k, tbgain, fp, bs: Integer;
    sample, hisamp, fsample, fhisamp: SmallInt;
    li0, li1, li2, lo1, lo2, ri0, ri1, ri2, ro1, ro2, sli, sri, slo, sro,
    a31, a62, a125, a250, a500, a1k, a2k, a4k, a8k, a16k,
    a0_31, a1_31, a2_31, b0_31, b1_31, b2_31,
    a0_62, a1_62, a2_62, b0_62, b1_62, b2_62,
    a0_125, a1_125, a2_125, b0_125, b1_125, b2_125,
    a0_250, a1_250, a2_250, b0_250, b1_250, b2_250,
    a0_500, a1_500, a2_500, b0_500, b1_500, b2_500,
    a0_1k, a1_1k, a2_1k, b0_1k, b1_1k, b2_1k,
    a0_2k, a1_2k, a2_2k, b0_2k, b1_2k, b2_2k,
    a0_4k, a1_4k, a2_4k, b0_4k, b1_4k, b2_4k,
    a0_8k, a1_8k, a2_8k, b0_8k, b1_8k, b2_8k,
    a0_16k, a1_16k, a2_16k, b0_16k, b1_16k, b2_16k, dbell, ml, mr, dbml, dbmr, drl, dll, dri, dli: Double;
begin

    if b then
    begin
        Form2.Repaint;
    end;
    if (phaser) then
        Phase();
{    Ticks := GetCPUTick;}
    dec(in_count);
    {block has been recorded}
    Header:=PWaveHdr(msg.LParam);
    if not e then
    begin
        i:=waveInUnPrepareHeader(HWaveIn^,Header,sizeof(TWaveHdr));
        if i<>0 then
        begin
            i:=waveInGetErrorText(i, lpText, SizeOf(lpText));
            Application.MessageBox(lpText, 'Error', mb_OK);
            e := TRUE;
            Form1.Close;
        end;
    end;
    with header^ do
    begin

// Haetaan mikserin Digital CD input:in tila. Päällä = 1, pois päältä = 0.

        mixControlDetails.cbStruct := sizeof(mixControlDetails^);
        mixControlDetails.dwControlID := mixControl.dwControlID;
        mixControlDetails.cChannels := 1;
        mixControlDetails.cMultipleItems := mixControl.cMultipleItems;
        mixControlDetails.paDetails := addr(mixControlValue);
        mixControlDetails.cbDetails := sizeof(MIXERCONTROLDETAILS_BOOLEAN);
        i := mixerGetControlDetails(HMixer^, mixControlDetails, MIXER_GETCONTROLDETAILSF_VALUE);
        ctrlval := mixControlValue[DCDI].fValue;

        // Fill input buffers & calculate the sum of the samples
        //  __R__  __L__
        // /Lo Hi\/Lo Hi\...

{        sum_r := 0;
        sum_l := 0;
        k := 0;
        for i := 0 to ((memBlockLength) div 4) -1 do
        begin
            sample := byte(lpdata[k]);
            hisamp := byte(lpdata[k+1]);
            hisamp := hisamp shl 8;
            sample := sample xor hisamp;
            LeftIn[i] := sample;
            sum_r := sum_r + sample;

            sample := byte(lpdata[k+2]);
            hisamp := byte(lpdata[k+3]);
            hisamp := hisamp shl 8;
            sample := sample xor hisamp;
            RightIn[i] := sample;
            sum_l := sum_l + sample;

            k := k + 4;
        end;}


        if (fplay) then
        begin
        fp := FilePos(f2);
        {$I-}
        Blockread(f2, fsIn, 6000);
        {$I+}
        if (IOResult=100) and (fplay) then
        begin
            bs := FileSize(f2)-fp;
            Seek(f2, fp);
            BlockRead(f2, fsIn, bs);
            fplay := False;
        end;
        end;

// Jos ohitus-moodi on päällä niin lukujen arvo = 0, muuten liukujen arvot.

        if not bypass then
        begin
            tb31 := _31Hz_NarrowTrackBar.Position;
            tb62 := _62Hz_NarrowTrackBar.Position;
            tb125 := _125Hz_NarrowTrackBar.Position;
            tb250 := _250Hz_NarrowTrackBar.Position;
            tb500 := _500Hz_NarrowTrackBar.Position;
            tb1k := _1kHz_NarrowTrackBar.Position;
            tb2k := _2kHz_NarrowTrackBar.Position;
            tb4k := _4kHz_NarrowTrackBar.Position;
            tb8k := _8kHz_NarrowTrackBar.Position;
            tb16k := _16kHz_NarrowTrackBar.Position;
            tbgain := gain_NarrowTrackBar.Position;
        end
        else if bypass then
        begin
            tb31 := 0;
            tb62 := 0;
            tb125 := 0;
            tb250 := 0;
            tb500 := 0;
            tb1k := 0;
            tb2k := 0;
            tb4k := 0;
            tb8k := 0;
            tb16k := 0;
            tbgain := 0;
        end;

// Tämä osio vaihtaa liuun arvon etumerkin ja lisää siihen 50 jotta saadaan
// oikea indeksi kerrointaulukkoon, esm. Liuku 50:ssä => -50 + 50 = 0 tai
// liuku -50:ssä => 50 + 50 = 100. Tämä sen takia koska liukujen positiiviset
// arvot ovat alhalla ja negatiiviset ylhällä.

        fty := 50;
        asm
            FINIT
            FILD tb31
            FCHS
            FIADD fty
            FIST tb31
            FILD tb62
            FCHS
            FIADD fty
            FIST tb62
            FILD tb125
            FCHS
            FIADD fty
            FIST tb125
            FILD tb250
            FCHS
            FIADD fty
            FIST tb250
            FILD tb500
            FCHS
            FIADD fty
            FIST tb500
            FILD tb1k
            FCHS
            FIADD fty
            FIST tb1k
            FILD tb2k
            FCHS
            FIADD fty
            FIST tb2k
            FILD tb4k
            FCHS
            FIADD fty
            FIST tb4k
            FINIT
            FILD tb8k
            FCHS
            FIADD fty
            FIST tb8k
            FILD tb16k
            FCHS
            FIADD fty
            FIST tb16k
        end;

// Noudetaan kertoimet jokaiselle kaistalle.

        a1_31 := a1_31_a[tb31];
        a2_31 := a2_31_a[tb31];
        b0_31 := b0_31_a[tb31];
        b1_31 := b1_31_a[tb31];
        b2_31 := b2_31_a[tb31];

        a1_62 := a1_62_a[tb62];
        a2_62 := a2_62_a[tb62];
        b0_62 := b0_62_a[tb62];
        b1_62 := b1_62_a[tb62];
        b2_62 := b2_62_a[tb62];

        a1_125 := a1_125_a[tb125];
        a2_125 := a2_125_a[tb125];
        b0_125 := b0_125_a[tb125];
        b1_125 := b1_125_a[tb125];
        b2_125 := b2_125_a[tb125];

        a1_250 := a1_250_a[tb250];
        a2_250 := a2_250_a[tb250];
        b0_250 := b0_250_a[tb250];
        b1_250 := b1_250_a[tb250];
        b2_250 := b2_250_a[tb250];

        a1_500 := a1_500_a[tb500];
        a2_500 := a2_500_a[tb500];
        b0_500 := b0_500_a[tb500];
        b1_500 := b1_500_a[tb500];
        b2_500 := b2_500_a[tb500];

        a1_1k := a1_1k_a[tb1k];
        a2_1k := a2_1k_a[tb1k];
        b0_1k := b0_1k_a[tb1k];
        b1_1k := b1_1k_a[tb1k];
        b2_1k := b2_1k_a[tb1k];

        a1_2k := a1_2k_a[tb2k];
        a2_2k := a2_2k_a[tb2k];
        b0_2k := b0_2k_a[tb2k];
        b1_2k := b1_2k_a[tb2k];
        b2_2k := b2_2k_a[tb2k];

        a1_4k := a1_4k_a[tb4k];
        a2_4k := a2_4k_a[tb4k];
        b0_4k := b0_4k_a[tb4k];
        b1_4k := b1_4k_a[tb4k];
        b2_4k := b2_4k_a[tb4k];

        a1_8k := a1_8k_a[tb8k];
        a2_8k := a2_8k_a[tb8k];
        b0_8k := b0_8k_a[tb8k];
        b1_8k := b1_8k_a[tb8k];
        b2_8k := b2_8k_a[tb8k];

        a1_16k := a1_16k_a[tb16k];
        a2_16k := a2_16k_a[tb16k];
        b0_16k := b0_16k_a[tb16k];
        b1_16k := b1_16k_a[tb16k];
        b2_16k := b2_16k_a[tb16k];

// Varsinainen suodatus-osio. Haetaan sisääntulo-puskurista hi- ja lo-tavut,
// yhdistetään ne 16-bittiseksi ja lisätään se pyörö-puskuriin. Koska IIR
// suodatin tarvitsee edellisiä näytteitä, niin pyörö-puskuria (circular-buffer)
// tarvitaan koska edellisten näytteiden arvot säilyvät siinä.

        k := 0;
        lol := 0;
        lom := 0;
        loj := 0;
        rol := 0;
        rom := 0;
        roj := 0;
        ml := 0;
        mr := 0;
        mro := 0;
        mlo := 0;
        dBell := 0.0;
        for i := 0 to mbl4 do
        begin
            sample := byte(lpdata[k]);
            hisamp := byte(lpdata[k+1]);
            hisamp := hisamp shl 8;
            sample := sample xor hisamp;
            if (fplay) then
            begin
                fsample := byte(fsIn[k]);
                fhisamp := byte(fsIn[k+1]);
                fhisamp := fhisamp shl 8;
                fsample := fsample xor fhisamp;
                sample := (sample+fsample) div 2;
            end;
{            if ctrlval = 0 then
            begin
                s := memBlockLength;
                d := 2;
                asm
                    FINIT
                    FILD s
                    FIDIV d
                    FST t
                    FILD sum_r
                    FDIV t
                    FST t
                    FLD sri
                    FSUB t
                    FST sri
                end;
            end;}
            if (phaser) then
            begin
{                if (sample>0) then}
                    tRightIn[l] := ((sample)+(RightOut_allp4[l]))/2
{                else if (sample<0) then
                    tRightIn[l] := ((sample/32768)+(RightOut_allp4[l]))/2;}
            end
            else
            begin
{                if (sample>0) then}
                    tRightIn[l] := sample
{                else if (sample<0) then
                    tRightIn[l] := sample/32768;}
            end;


            asm
                PUSH EAX
                PUSH EBX
                PUSH ECX
                MOV ECX, [l]
                SUB ECX, 2
                CMP ECX, 0
                JE @je
                ADD ECX, 3
                MOV [j], ECX
                JMP @dj
            @je: MOV [j], 0
           @dj: MOV ECX, [l]
                SUB ECX, 1
                CMP ECX, 0
                JGE @mb
                ADD ECX, 3
                MOV [m], ECX
                JMP @d
            @mb: MOV ECX, [l]
                SUB ECX, 1
                MOV [m], ECX
            @d: POP ECX
                POP EBX
                POP EAX
            end;
{            j := l-2; if j < 0 then j := j+3;}
{            m := l-1; if m < 0 then m := m+3;}

{            ri0 := tRightIn[l];
            ri1 := tRightIn[m];
            ri2 := tRightIn[j];
            ro1 := RightOut_lop[m];
            ro2 := RightOut_lop[j];
            asm
                FINIT
                FLD ri0
                FMUL b0_lop
                FST ri0
                FLD ri1
                FMUL b1_lop
                FST ri1
                FLD ri2
                FMUL b2_lop
                FST ri2
                FLD ro1
                FMUL a1_lop
                FST ro1
                FLD ro2
                FMUL a2_lop
                FST ro2
                FLD ri0
                FADD ri1
                FADD ri2
                FSUB ro1
                FSUB ro2
                FST sro
            end;
            RightOut_lop[l] := sro;}

// Tässä tarkistetaan oliko Digital CD input päällä vai pois. Jos päällä niin
// yli-päästö suodatin ohitetaan koska sen kautta tulevassa signaalissa ei ole
// tasavirta-komponenttia (DC-offset).

            if ctrlval = 0 then
            begin
                if (phaser) then
                begin
                    ri0 := tRightIn[l];
                    ri1 := tRightIn[m];
                    ri2 := tRightIn[j];
                    ro1 := RightOut_allp1[m];
                    ro2 := RightOut_allp1[j];
                    asm
                        FINIT
                        FLD ri0
                        FMUL b0_allp1
                        FST ri0
                        FLD ri1
                        FMUL b1_allp1
                        FST ri1
                        FLD ri2
                        FMUL b2_allp1
                        FST ri2
                        FLD ro1
                        FMUL a1_allp1
                        FST ro1
                        FLD ro2
                        FMUL a2_allp1
                        FST ro2
                        FLD ri0
                        FADD ri1
                        FADD ri2
                        FSUB ro1
                        FSUB ro2
                        FST sro
                    end;
                    RightOut_allp1[l] := sro;

                    ri0 := RightOut_allp1[l];
                    ri1 := RightOut_allp1[m];
                    ri2 := RightOut_allp1[j];
                    ro1 := RightOut_allp2[m];
                    ro2 := RightOut_allp2[j];
                    asm
                        FINIT
                        FLD ri0
                        FMUL b0_allp2
                        FST ri0
                        FLD ri1
                        FMUL b1_allp2
                        FST ri1
                        FLD ri2
                        FMUL b2_allp2
                        FST ri2
                        FLD ro1
                        FMUL a1_allp2
                        FST ro1
                        FLD ro2
                        FMUL a2_allp2
                        FST ro2
                        FLD ri0
                        FADD ri1
                        FADD ri2
                        FSUB ro1
                        FSUB ro2
                        FST sro
                    end;
                    RightOut_allp2[l] := sro;

                    ri0 := RightOut_allp2[l];
                    ri1 := RightOut_allp2[m];
                    ri2 := RightOut_allp2[j];
                    ro1 := RightOut_allp3[m];
                    ro2 := RightOut_allp3[j];
                    asm
                        FINIT
                        FLD ri0
                        FMUL b0_allp3
                        FST ri0
                        FLD ri1
                        FMUL b1_allp3
                        FST ri1
                        FLD ri2
                        FMUL b2_allp3
                        FST ri2
                        FLD ro1
                        FMUL a1_allp3
                        FST ro1
                        FLD ro2
                        FMUL a2_allp3
                        FST ro2
                        FLD ri0
                        FADD ri1
                        FADD ri2
                        FSUB ro1
                        FSUB ro2
                        FST sro
                    end;
                    RightOut_allp3[l] := sro;

                    ri0 := RightOut_allp3[l];
                    ri1 := RightOut_allp3[m];
                    ri2 := RightOut_allp3[j];
                    ro1 := RightOut_allp4[m];
                    ro2 := RightOut_allp4[j];
                    asm
                        FINIT
                        FLD ri0
                        FMUL b0_allp4
                        FST ri0
                        FLD ri1
                        FMUL b1_allp4
                        FST ri1
                        FLD ri2
                        FMUL b2_allp4
                        FST ri2
                        FLD ro1
                        FMUL a1_allp4
                        FST ro1
                        FLD ro2
                        FMUL a2_allp4
                        FST ro2
                        FLD ri0
                        FADD ri1
                        FADD ri2
                        FSUB ro1
                        FSUB ro2
                        FST sro
                    end;
                    RightOut_allp4[l] := sro;
                end;

                if (phaser) then
                begin
                    ri0 := ((0.7*RightOut_allp4[l])+tRightIn[l])/2;
                    ri1 := ((0.7*RightOut_allp4[m])+tRightIn[m])/2;
                    ri2 := ((0.7*RightOut_allp4[j])+tRightIn[j])/2;
                end
                else
                begin
                    ri0 := tRightIn[l];
                    ri1 := tRightIn[m];
                    ri2 := tRightIn[j];
                end;
                ro1 := RightOut_hip[m];
                ro2 := RightOut_hip[j];
                asm
                    FINIT
                    FLD ri0
                    FMUL b0_hip
                    FST ri0
                    FLD ri1
                    FMUL b1_hip
                    FST ri1
                    FLD ri2
                    FMUL b2_hip
                    FST ri2
                    FLD ro1
                    FMUL a1_hip
                    FST ro1
                    FLD ro2
                    FMUL a2_hip
                    FST ro2
                    FLD ri0
                    FADD ri1
                    FADD ri2
                    FSUB ro1
                    FSUB ro2
                    FST sro
                end;
                RightOut_hip[l] := sro;

                ri0 := RightOut_hip[l];
                ri1 := RightOut_hip[m];
                ri2 := RightOut_hip[j];
                ro1 := RightOut_31[m];
                ro2 := RightOut_31[j];
                asm
                    FINIT
                    FLD ri0
                    FMUL b0_31
                    FST ri0
                    FLD ri1
                    FMUL b1_31
                    FST ri1
                    FLD ri2
                    FMUL b2_31
                    FST ri2
                    FLD ro1
                    FMUL a1_31
                    FST ro1
                    FLD ro2
                    FMUL a2_31
                    FST ro2
                    FLD ri0
                    FADD ri1
                    FADD ri2
                    FSUB ro1
                    FSUB ro2
                    FST sro
                end;
            end
            else if ctrlval = 1 then
            begin
                ri0 := tRightIn[l];
                ri1 := tRightIn[m];
                ri2 := tRightIn[j];
                ro1 := RightOut_31[m];
                ro2 := RightOut_31[j];
                asm
                    FINIT
                    FLD ri0
                    FMUL b0_31
                    FST ri0
                    FLD ri1
                    FMUL b1_31
                    FST ri1
                    FLD ri2
                    FMUL b2_31
                    FST ri2
                    FLD ro1
                    FMUL a1_31
                    FST ro1
                    FLD ro2
                    FMUL a2_31
                    FST ro2
                    FLD ri0
                    FADD ri1
                    FADD ri2
                    FSUB ro1
                    FSUB ro2
                    FST sro
                end;
            end;

            RightOut_31[l] := sro;

            ri0 := RightOut_31[l];
            ri1 := RightOut_31[m];
            ri2 := RightOut_31[j];
            ro1 := RightOut_62[m];
            ro2 := RightOut_62[j];
            asm
                FINIT
                FLD ri0
                FMUL b0_62
                FST ri0
                FLD ri1
                FMUL b1_62
                FST ri1
                FLD ri2
                FMUL b2_62
                FST ri2
                FLD ro1
                FMUL a1_62
                FST ro1
                FLD ro2
                FMUL a2_62
                FST ro2
                FLD ri0
                FADD ri1
                FADD ri2
                FSUB ro1
                FSUB ro2
                FST sro
            end;
            RightOut_62[l] := sro;

            ri0 := RightOut_62[l];
            ri1 := RightOut_62[m];
            ri2 := RightOut_62[j];
            ro1 := RightOut_125[m];
            ro2 := RightOut_125[j];
            asm
                FINIT
                FLD ri0
                FMUL b0_125
                FST ri0
                FLD ri1
                FMUL b1_125
                FST ri1
                FLD ri2
                FMUL b2_125
                FST ri2
                FLD ro1
                FMUL a1_125
                FST ro1
                FLD ro2
                FMUL a2_125
                FST ro2
                FLD ri0
                FADD ri1
                FADD ri2
                FSUB ro1
                FSUB ro2
                FST sro
            end;
            RightOut_125[l] := sro;

            ri0 := RightOut_125[l];
            ri1 := RightOut_125[m];
            ri2 := RightOut_125[j];
            ro1 := RightOut_250[m];
            ro2 := RightOut_250[j];
            asm
                FINIT
                FLD ri0
                FMUL b0_250
                FST ri0
                FLD ri1
                FMUL b1_250
                FST ri1
                FLD ri2
                FMUL b2_250
                FST ri2
                FLD ro1
                FMUL a1_250
                FST ro1
                FLD ro2
                FMUL a2_250
                FST ro2
                FLD ri0
                FADD ri1
                FADD ri2
                FSUB ro1
                FSUB ro2
                FST sro
            end;
            RightOut_250[l] := sro;

            ri0 := RightOut_250[l];
            ri1 := RightOut_250[m];
            ri2 := RightOut_250[j];
            ro1 := RightOut_500[m];
            ro2 := RightOut_500[j];
            asm
                FINIT
                FLD ri0
                FMUL b0_500
                FST ri0
                FLD ri1
                FMUL b1_500
                FST ri1
                FLD ri2
                FMUL b2_500
                FST ri2
                FLD ro1
                FMUL a1_500
                FST ro1
                FLD ro2
                FMUL a2_500
                FST ro2
                FLD ri0
                FADD ri1
                FADD ri2
                FSUB ro1
                FSUB ro2
                FST sro
            end;
            RightOut_500[l] := sro;

            ri0 := RightOut_500[l];
            ri1 := RightOut_500[m];
            ri2 := RightOut_500[j];
            ro1 := RightOut_1k[m];
            ro2 := RightOut_1k[j];
            asm
                FINIT
                FLD ri0
                FMUL b0_1k
                FST ri0
                FLD ri1
                FMUL b1_1k
                FST ri1
                FLD ri2
                FMUL b2_1k
                FST ri2
                FLD ro1
                FMUL a1_1k
                FST ro1
                FLD ro2
                FMUL a2_1k
                FST ro2
                FLD ri0
                FADD ri1
                FADD ri2
                FSUB ro1
                FSUB ro2
                FST sro
            end;
            RightOut_1k[l] := sro;

            ri0 := RightOut_1k[l];
            ri1 := RightOut_1k[m];
            ri2 := RightOut_1k[j];
            ro1 := RightOut_2k[m];
            ro2 := RightOut_2k[j];
            asm
                FINIT
                FLD ri0
                FMUL b0_2k
                FST ri0
                FLD ri1
                FMUL b1_2k
                FST ri1
                FLD ri2
                FMUL b2_2k
                FST ri2
                FLD ro1
                FMUL a1_2k
                FST ro1
                FLD ro2
                FMUL a2_2k
                FST ro2
                FLD ri0
                FADD ri1
                FADD ri2
                FSUB ro1
                FSUB ro2
                FST sro
            end;
            RightOut_2k[l] := sro;

            ri0 := RightOut_2k[l];
            ri1 := RightOut_2k[m];
            ri2 := RightOut_2k[j];
            ro1 := RightOut_4k[m];
            ro2 := RightOut_4k[j];
            asm
                FINIT
                FLD ri0
                FMUL b0_4k
                FST ri0
                FLD ri1
                FMUL b1_4k
                FST ri1
                FLD ri2
                FMUL b2_4k
                FST ri2
                FLD ro1
                FMUL a1_4k
                FST ro1
                FLD ro2
                FMUL a2_4k
                FST ro2
                FLD ri0
                FADD ri1
                FADD ri2
                FSUB ro1
                FSUB ro2
                FST sro
            end;
            RightOut_4k[l] := sro;

            ri0 := RightOut_4k[l];
            ri1 := RightOut_4k[m];
            ri2 := RightOut_4k[j];
            ro1 := RightOut_8k[m];
            ro2 := RightOut_8k[j];
            asm
                FINIT
                FLD ri0
                FMUL b0_8k
                FST ri0
                FLD ri1
                FMUL b1_8k
                FST ri1
                FLD ri2
                FMUL b2_8k
                FST ri2
                FLD ro1
                FMUL a1_8k
                FST ro1
                FLD ro2
                FMUL a2_8k
                FST ro2
                FLD ri0
                FADD ri1
                FADD ri2
                FSUB ro1
                FSUB ro2
                FST sro
            end;
            RightOut_8k[l] := sro;

            ri0 := RightOut_8k[l];
            ri1 := RightOut_8k[m];
            ri2 := RightOut_8k[j];
            ro1 := RightOut_16k[m];
            ro2 := RightOut_16k[j];
            asm
                FINIT
                FLD ri0
                FMUL b0_16k
                FST ri0
                FLD ri1
                FMUL b1_16k
                FST ri1
                FLD ri2
                FMUL b2_16k
                FST ri2
                FLD ro1
                FMUL a1_16k
                FST ro1
                FLD ro2
                FMUL a2_16k
                FST ro2
                FLD ri0
                FADD ri1
                FADD ri2
                FSUB ro1
                FSUB ro2
                FST sro
            end;
            RightOut_16k[l] := sro;
// Koska IIR-suodattimen (Infinite Impulse Respone) ulostulo ei koskaan mene
// täysin nollaan niin tämä osio varmistaa että jos sisääntulo on > -1 ja < 1
// mutta ei nolla, niin ulostulon arvo on 0. Tämä sen takia koska ohjelma
// lukkiutuu kun laskettavat arvot ovat luokkaa 3.9748467024e-321.
            asm
                    FINIT
            @tno:   FCOMP no
                    FSTSW AX
                    SAHF
                    JBE @done
            @tpo:   FLD sro
                    FCOMP po
                    FSTSW AX
                    SAHF
                    JAE @done
            @tz:    FLD sro
                    FCOMP z
                    FSTSW AX
                    SAHF
                    JE @done
                    FLDZ
                    FST sro
            @done:
                FLD sro
                FABS
                FMUL dBell
                FST mr
                FLD mro
                FADD mr
                FST mro
            end;
{                sro := sign(sro)*Power(ArcTan(Power(Abs(sro), 100)), (1/100));}
{                if (sro>0) then
                    tRightOut[l] := sro*32767
                else if (sro<0) then
                    tRightOut[l] := sro*(32768);}
            tRightOut[l] := sro;
{            tRightOut[l] := sro;}
{            tRightOut[l] := sro*(1/zz_31[tb31]);
            tRightOut[l] := sro*(1/zz_62[tb62]);
            tRightOut[l] := sro*(1/zz_125[tb125]);
            tRightOut[l] := sro*(1/zz_250[tb250]);
            tRightOut[l] := sro*(1/zz_500[tb500]);
            tRightOut[l] := sro*(1/zz_1k[tb1k]);
            tRightOut[l] := sro*(1/zz_2k[tb2k]);
            tRightOut[l] := sro*(1/zz_4k[tb4k]);
            tRightOut[l] := sro*(1/zz_8k[tb8k]);
            tRightOut[l] := sro*(1/zz_16k[tb16k]);}


// Jos VU-ikkuna on auki, niin tämä osio tarkistaa onko kolme perättäistä samplea
// > 32767 tai < -32768. Jos on, pr (peak-right) on tosi eli VU-mittarin pieni
// keltainen valo välähtää.

            if b then
            begin
                lol := tRightOut[l];
                lom := tRightOut[m];
                loj := tRightOut[j];
                asm
                    FINIT
                    FLD lol
                    FCOMP ul
                    FSTSW AX
                    SAHF
                    JB @blwul
                    FLD lom
                    FCOMP ul
                    FSTSW AX
                    SAHF
                    JB @blwul
                    FLD loj
                    FCOMP ul
                    FSTSW AX
                    SAHF
                    JB @blwul
                    FLD1
                    FIST pr
                    JMP @abvll
                @blwul:
                    FLD lol
                    FCOMP ll
                    FSTSW AX
                    SAHF
                    JA @abvll
                    FLD lom
                    FCOMP ll
                    FSTSW AX
                    SAHF
                    JA @abvll
                    FLD loj
                    FCOMP ll
                    FSTSW AX
                    SAHF
                    JA @abvll
                    FLD1
                    FIST pr
                @abvll:
                end;
            end;

            sample := byte(lpdata[k+2]);
            hisamp := byte(lpdata[k+3]);
            hisamp := hisamp shl 8;
            sample := sample xor hisamp;
            if (fplay) then
            begin
                fsample := byte(fsIn[k+2]);
                fhisamp := byte(fsIn[k+3]);
                fhisamp := fhisamp shl 8;
                fsample := fsample xor fhisamp;
                sample := (sample+fsample) div 2;
            end;
{                if ctrlval = 0 then
                begin
                    s := memBlockLength;
                    d := 2;
                    asm
                        FINIT
                        FILD s
                        FIDIV d
                        FST t
                        FILD sum_l
                        FDIV t
                        FST t
                        FLD sli
                        FSUB t
                        FST sli
                    end;
                end;}
            if (phaser) then
            begin
{                if (sample>0) then}
                    tLeftIn[l] := ((sample)+(LeftOut_allp4[l]))/2
{                else if (sample<0) then
                    tLeftIn[l] := ((sample/32768)+(LeftOut_allp4[l]))/2;}
            end
            else
            begin
{                if (sample>0) then}
                    tLeftIn[l] := sample
{                else if (sample<0) then
                    tLeftIn[l] := sample/32768;}
            end;
{                li0 := tLeftIn[l];
                li1 := tLeftIn[m];
                li2 := tLeftIn[j];
                lo1 := LeftOut_lop[m];
                lo2 := LeftOut_lop[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_lop
                    FST li0
                    FLD li1
                    FMUL b1_lop
                    FST li1
                    FLD li2
                    FMUL b2_lop
                    FST li2
                    FLD lo1
                    FMUL a1_lop
                    FST lo1
                    FLD lo2
                    FMUL a2_lop
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_lop[l] := slo;}

            if ctrlval = 0 then
            begin
                if (phaser) then
                begin
                    li0 := tLeftIn[l];
                    li1 := tLeftIn[m];
                    li2 := tLeftIn[j];
                    lo1 := LeftOut_allp1[m];
                    lo2 := LeftOut_allp1[j];
                    asm
                        FINIT
                        FLD li0
                        FMUL b0_allp1
                        FST li0
                        FLD li1
                        FMUL b1_allp1
                        FST li1
                        FLD li2
                        FMUL b2_allp1
                        FST li2
                        FLD lo1
                        FMUL a1_allp1
                        FST lo1
                        FLD lo2
                        FMUL a2_allp1
                        FST lo2
                        FLD li0
                        FADD li1
                        FADD li2
                        FSUB lo1
                        FSUB lo2
                        FST slo
                    end;
                    LeftOut_allp1[l] := slo;

                    li0 := LeftOut_allp1[l];
                    li1 := LeftOut_allp1[m];
                    li2 := LeftOut_allp1[j];
                    lo1 := LeftOut_allp2[m];
                    lo2 := LeftOut_allp2[j];
                    asm
                        FINIT
                        FLD li0
                        FMUL b0_allp2
                        FST li0
                        FLD li1
                        FMUL b1_allp2
                        FST li1
                        FLD li2
                        FMUL b2_allp2
                        FST li2
                        FLD lo1
                        FMUL a1_allp2
                        FST lo1
                        FLD lo2
                        FMUL a2_allp2
                        FST lo2
                        FLD li0
                        FADD li1
                        FADD li2
                        FSUB lo1
                        FSUB lo2
                        FST slo
                    end;
                    LeftOut_allp2[l] := slo;

                    li0 := LeftOut_allp2[l];
                    li1 := LeftOut_allp2[m];
                    li2 := LeftOut_allp2[j];
                    lo1 := LeftOut_allp3[m];
                    lo2 := LeftOut_allp3[j];
                    asm
                        FINIT
                        FLD li0
                        FMUL b0_allp3
                        FST li0
                        FLD li1
                        FMUL b1_allp3
                        FST li1
                        FLD li2
                        FMUL b2_allp3
                        FST li2
                        FLD lo1
                        FMUL a1_allp3
                        FST lo1
                        FLD lo2
                        FMUL a2_allp3
                        FST lo2
                        FLD li0
                        FADD li1
                        FADD li2
                        FSUB lo1
                        FSUB lo2
                        FST slo
                    end;
                    LeftOut_allp3[l] := slo;

                    li0 := LeftOut_allp3[l];
                    li1 := LeftOut_allp3[m];
                    li2 := LeftOut_allp3[j];
                    lo1 := LeftOut_allp4[m];
                    lo2 := LeftOut_allp4[j];
                    asm
                        FINIT
                        FLD li0
                        FMUL b0_allp4
                        FST li0
                        FLD li1
                        FMUL b1_allp4
                        FST li1
                        FLD li2
                        FMUL b2_allp4
                        FST li2
                        FLD lo1
                        FMUL a1_allp4
                        FST lo1
                        FLD lo2
                        FMUL a2_allp4
                        FST lo2
                        FLD li0
                        FADD li1
                        FADD li2
                        FSUB lo1
                        FSUB lo2
                        FST slo
                    end;
                    LeftOut_allp4[l] := slo;
                end;

                if (phaser) then
                begin
                    li0 := ((0.7*LeftOut_allp4[l])+tLeftIn[l])/2;
                    li1 := ((0.7*LeftOut_allp4[m])+tLeftIn[m])/2;
                    li2 := ((0.7*LeftOut_allp4[j])+tLeftIn[j])/2;
                end
                else
                begin
                    li0 := tLeftIn[l];
                    li1 := tLeftIn[m];
                    li2 := tLeftIn[j];
                end;
                lo1 := LeftOut_hip[m];
                lo2 := LeftOut_hip[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_hip
                    FST li0
                    FLD li1
                    FMUL b1_hip
                    FST li1
                    FLD li2
                    FMUL b2_hip
                    FST li2
                    FLD lo1
                    FMUL a1_hip
                    FST lo1
                    FLD lo2
                    FMUL a2_hip
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_hip[l] := slo;

                li0 := LeftOut_hip[l];
                li1 := LeftOut_hip[m];
                li2 := LeftOut_hip[j];
                lo1 := LeftOut_31[m];
                lo2 := LeftOut_31[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_31
                    FST li0
                    FLD li1
                    FMUL b1_31
                    FST li1
                    FLD li2
                    FMUL b2_31
                    FST li2
                    FLD lo1
                    FMUL a1_31
                    FST lo1
                    FLD lo2
                    FMUL a2_31
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
            end
            else if ctrlval = 1 then
            begin
                li0 := tLeftIn[l];
                li1 := tLeftIn[m];
                li2 := tLeftIn[j];
                lo1 := LeftOut_31[m];
                lo2 := LeftOut_31[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_31
                    FST li0
                    FLD li1
                    FMUL b1_31
                    FST li1
                    FLD li2
                    FMUL b2_31
                    FST li2
                    FLD lo1
                    FMUL a1_31
                    FST lo1
                    FLD lo2
                    FMUL a2_31
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
            end;
            LeftOut_31[l] := slo;

                li0 := LeftOut_31[l];
                li1 := LeftOut_31[m];
                li2 := LeftOut_31[j];
                lo1 := LeftOut_62[m];
                lo2 := LeftOut_62[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_62
                    FST li0
                    FLD li1
                    FMUL b1_62
                    FST li1
                    FLD li2
                    FMUL b2_62
                    FST li2
                    FLD lo1
                    FMUL a1_62
                    FST lo1
                    FLD lo2
                    FMUL a2_62
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_62[l] := slo;

                li0 := LeftOut_62[l];
                li1 := LeftOut_62[m];
                li2 := LeftOut_62[j];
                lo1 := LeftOut_125[m];
                lo2 := LeftOut_125[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_125
                    FST li0
                    FLD li1
                    FMUL b1_125
                    FST li1
                    FLD li2
                    FMUL b2_125
                    FST li2
                    FLD lo1
                    FMUL a1_125
                    FST lo1
                    FLD lo2
                    FMUL a2_125
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_125[l] := slo;

                li0 := LeftOut_125[l];
                li1 := LeftOut_125[m];
                li2 := LeftOut_125[j];
                lo1 := LeftOut_250[m];
                lo2 := LeftOut_250[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_250
                    FST li0
                    FLD li1
                    FMUL b1_250
                    FST li1
                    FLD li2
                    FMUL b2_250
                    FST li2
                    FLD lo1
                    FMUL a1_250
                    FST lo1
                    FLD lo2
                    FMUL a2_250
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_250[l] := slo;

                li0 := LeftOut_250[l];
                li1 := LeftOut_250[m];
                li2 := LeftOut_250[j];
                lo1 := LeftOut_500[m];
                lo2 := LeftOut_500[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_500
                    FST li0
                    FLD li1
                    FMUL b1_500
                    FST li1
                    FLD li2
                    FMUL b2_500
                    FST li2
                    FLD lo1
                    FMUL a1_500
                    FST lo1
                    FLD lo2
                    FMUL a2_500
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_500[l] := slo;

                li0 := LeftOut_500[l];
                li1 := LeftOut_500[m];
                li2 := LeftOut_500[j];
                lo1 := LeftOut_1k[m];
                lo2 := LeftOut_1k[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_1k
                    FST li0
                    FLD li1
                    FMUL b1_1k
                    FST li1
                    FLD li2
                    FMUL b2_1k
                    FST li2
                    FLD lo1
                    FMUL a1_1k
                    FST lo1
                    FLD lo2
                    FMUL a2_1k
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_1k[l] := slo;

                li0 := LeftOut_1k[l];
                li1 := LeftOut_1k[m];
                li2 := LeftOut_1k[j];
                lo1 := LeftOut_2k[m];
                lo2 := LeftOut_2k[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_2k
                    FST li0
                    FLD li1
                    FMUL b1_2k
                    FST li1
                    FLD li2
                    FMUL b2_2k
                    FST li2
                    FLD lo1
                    FMUL a1_2k
                    FST lo1
                    FLD lo2
                    FMUL a2_2k
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_2k[l] := slo;

                li0 := LeftOut_2k[l];
                li1 := LeftOut_2k[m];
                li2 := LeftOut_2k[j];
                lo1 := LeftOut_4k[m];
                lo2 := LeftOut_4k[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_4k
                    FST li0
                    FLD li1
                    FMUL b1_4k
                    FST li1
                    FLD li2
                    FMUL b2_4k
                    FST li2
                    FLD lo1
                    FMUL a1_4k
                    FST lo1
                    FLD lo2
                    FMUL a2_4k
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_4k[l] := slo;

                li0 := LeftOut_4k[l];
                li1 := LeftOut_4k[m];
                li2 := LeftOut_4k[j];
                lo1 := LeftOut_8k[m];
                lo2 := LeftOut_8k[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_8k
                    FST li0
                    FLD li1
                    FMUL b1_8k
                    FST li1
                    FLD li2
                    FMUL b2_8k
                    FST li2
                    FLD lo1
                    FMUL a1_8k
                    FST lo1
                    FLD lo2
                    FMUL a2_8k
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_8k[l] := slo;

                li0 := LeftOut_8k[l];
                li1 := LeftOut_8k[m];
                li2 := LeftOut_8k[j];
                lo1 := LeftOut_16k[m];
                lo2 := LeftOut_16k[j];
                asm
                    FINIT
                    FLD li0
                    FMUL b0_16k
                    FST li0
                    FLD li1
                    FMUL b1_16k
                    FST li1
                    FLD li2
                    FMUL b2_16k
                    FST li2
                    FLD lo1
                    FMUL a1_16k
                    FST lo1
                    FLD lo2
                    FMUL a2_16k
                    FST lo2
                    FLD li0
                    FADD li1
                    FADD li2
                    FSUB lo1
                    FSUB lo2
                    FST slo
                end;
                LeftOut_16k[l] := slo;

// Koska IIR-suodattimen (Infinite Impulse Respone) ulostulo ei koskaan mene
// täysin nollaan niin tämä osio varmistaa että jos sisääntulo on > -1 ja < 1
// mutta ei nolla, niin ulostulon arvo on 0. Tämä sen takia koska ohjelma
// lukkiutuu kun laskettavat arvot ovat luokkaa 3.9748467024e-321.

            asm
                    FINIT
            @tno:   FCOMP no
                    FSTSW AX
                    SAHF
                    JBE @done
            @tpo:   FLD slo
                    FCOMP po
                    FSTSW AX
                    SAHF
                    JAE @done
            @tz:    FLD slo
                    FCOMP z
                    FSTSW AX
                    SAHF
                    JE @done
                    FLDZ
                    FST slo
            @done:
                FLD slo
                FABS
                FMUL dBell
                FST ml
                FLD mlo
                FADD ml
                FST mlo
            end;
{                slo := sign(slo)*Power(ArcTan(Power(Abs(slo), 100)), (1/100));}
{                if (slo>0) then
                    tLeftOut[l] := slo;
                else if (slo<0) then
                    tLeftOut[l] := slo*(32768);}
            tleftOut[l] := slo;
{            tLeftOut[l] := slo;}
{            tLeftOut[l] := slo*(1/zz_31[tb31]);
            tLeftOut[l] := slo*(1/zz_62[tb62]);
            tLeftOut[l] := slo*(1/zz_125[tb125]);
            tLeftOut[l] := slo*(1/zz_250[tb250]);
            tLeftOut[l] := slo*(1/zz_500[tb500]);
            tLeftOut[l] := slo*(1/zz_1k[tb1k]);
            tLeftOut[l] := slo*(1/zz_2k[tb2k]);
            tLeftOut[l] := slo*(1/zz_4k[tb4k]);
            tLeftOut[l] := slo*(1/zz_8k[tb8k]);
            tLeftOut[l] := slo*(1/zz_16k[tb16k]);}

// Jos VU-ikkuna on auki, niin tämä osio tarkistaa onko kolme perättäistä samplea
// > 32767 tai < -32768. Jos on, pl (peak-left) on tosi eli VU-mittarin pieni
// keltainen valo välähtää.

            if b then
            begin
                lol := tLeftOut[l];
                lom := tLeftOut[m];
                loj := tLeftOut[j];
                asm
                    FINIT
                    FLD lol
                    FCOMP ul
                    FSTSW AX
                    SAHF
                    JB @blwul
                    FLD lom
                    FCOMP ul
                    FSTSW AX
                    SAHF
                    JB @blwul
                    FLD loj
                    FCOMP ul
                    FSTSW AX
                    SAHF
                    JB @blwul
                    FLD1
                    FIST pl
                    JMP @abvll
                @blwul:
                    FLD lol
                    FCOMP ll
                    FSTSW AX
                    SAHF
                    JA @abvll
                    FLD lom
                    FCOMP ll
                    FSTSW AX
                    SAHF
                    JA @abvll
                    FLD loj
                    FCOMP ll
                    FSTSW AX
                    SAHF
                    JA @abvll
                    FLD1
                    FIST pl
                @abvll:
                end;
           end;


            // Gain adjustment


            if gain_NarrowTrackBar.Position < 0 then
            begin
{                if IsNan(Power(10, (abs(gain_NarrowTrackBar.Position/20)))) then}
                    dBell := Power(10, (abs((tbgain/2)/20)));
                TRightOut[l] := TRightOut[l]*dBell;
                TLeftOut[l] := TLeftOut[l]*dBell;
            end
            else if gain_NarrowTrackBar.Position > 0 then
            begin
{                if IsNan(Power(10, (-gain_NarrowTrackBar.Position/20))) then}
                    dBell := Power(10, (-(tbgain/2)/20));
                TRightOut[l] := TRightOut[l]*dBell;
                TLeftOut[l] := TLeftOut[l]*dBell;
            end
            else
            begin
                dBell := 1.0;
            end;

{            asm
                FINIT
                FLD sro
                FCOM ul
                FSTSW AX
                SAHF
                JBE @rb
                FLD ul
                FST sro
                JMP @ra
            @rb: FLD sro
                FCOMP ll
                JBE @ra
                FLD ll
                FST sro
            @ra: FLD slo
                FCOM ul
                FSTSW AX
                SAHF
                JBE @lb
                FLD ul
                FST slo
                JMP @la
            @lb: FLD slo
                FCOMP ll
                JBE @la
                FLD ll
                FST slo
            @la:
            end;}

// Tämä osio varmistaa että ulostulo pysyy 16-bitin rajoissa.

            if tRightOut[l] > 32767.0 then tRightOut[l] := 32767.0;
            if tRightOut[l] < -32768.0 then tRightOut[l] := -32768.0;
            if tLeftOut[l] > 32767.0 then tLeftOut[l] := 32767.0;
            if tLeftOut[l] < -32768.0 then tLeftOut[l] := -32768.0;

{            tRightOut[l] := (tRightOut[l]+10000*sin((2*Pi*i)/180*5))/2;}
{       xn1 := tRightOut[j];
       for j := 0 to 5 do
       begin
            yn1 := coef[j] * (xn1 - ynm1[j]) + xnm1[j];
            xnm1[j] := xn1;
            ynm1[j] := yn1;
            xn1 := yn1;
       end;
       xn2 := tRightOut[l];
       for j := 6 to 11 do
       begin
           yn2 := coef[j] * (xn2 - ynm1[j]) + xnm1[j];
           xnm1[j] := xn2;
           ynm1[j] := yn2;
           xn2 := yn2;
       end;
       tRightOut0[l] := yn1;
       tRightOut90[l] := yn2;

       xn1 := tLeftOut[j];
       for j := 0 to 5 do
       begin
            yn1 := coef[j] * (xn1 - ynm1[j]) + xnm1[j];
            xnm1[j] := xn1;
            ynm1[j] := yn1;
            xn1 := yn1;
       end;
       xn2 := tLeftOut[l];
       for j := 6 to 11 do
       begin
           yn2 := coef[j] * (xn2 - ynm1[j]) + xnm1[j];
           xnm1[j] := xn2;
           ynm1[j] := yn2;
           xn2 := yn2;
       end;
       tLeftOut0[l] := yn1;
       tLeftOut90[l] := yn2;}

{y[n] = a ( x[n] + y[n-1] ) - x[n-1]
            b0_31 := pi*(8000/44100);
            a0_31 := (1-b0_31/1+b0_31);
            tLeftOut[l] := a0_31*(tLeftIn[l]+tLeftOut[j])-tLeftIn[j];}
            LeftIn[i] := tLeftOut[l];
            RightIn[i] := tRightOut[l];
{out(x) = a * in(x) + b * out(x-t)}
{            tRightOut[l] := 1*tRightOut[l]+0.5*tRightOut[j];}
{            y(n) = C * x(n) + x(n-1) - C * y(n-1)}
{            tRightOut[l] := (tRightOut[l]+tRightOut[trunc(100*sin(i))])/2;}
            {    y[n] = Ax[n] - x[n-1] + Ay[n-1]}
// Tämä osio palautta suodatetut näytteet takaisin sisääntulo-puskuriin.

{        for r := 0 to (NZEROS-1) do
        begin
             xval[r] := xval[r+1];
        end;
        xval[NZEROS] := tRightOut[l]/GAIN;
        sum := 0.0;
        for r := 0 to (NZEROS-1) do
        begin
            sum := sum + (xcoeffs[r] * xval[r]);
        end;
        tRightOut[l] := sum;}
{            tLeftOut90[l] := ((-0.707107*tRightOut0[l])+(-0.707107*tLeftOut90[l]))/2;
            tRightOut90[l] := ((0.707107*tLeftOut0[l])+(0.707107*tRightOut90[l]))/2;}

            lpdata[k] := char(lo(trunc(tLeftOut[l])));
            lpdata[k+1] := char(hi(trunc(tLeftOut[l])));
            lpdata[k+2] := char(lo(trunc(tRightOut[l])));
            lpdata[k+3] := char(hi(trunc(tRightOut[l])));
            k := k + 4;

            asm
                MOV ECX, [l]
                INC ECX
                CMP ECX, 2
                MOV [l], ECX
                JLE @le
                MOV [l], 0
            @le:
            end;

{* Digital filter designed by mkfilter/mkshape/gencode   A.J. Fisher
   Command line: /www/usr/fisher/helpers/mkshape -h 513 -w -l */}






{            Inc(l); if l > 2 then l := 0;}
        end;
    end;

// Lasketaan ulostulo-puskurista keskiarvo:
//
//          puskuri[n] + ... + puskuri[n-1]
//          -------------------------------         n = 0 -> n = n - 1
//                  puskurin koko
//
// jotta saadaan VU-mittariin soveltuva arvo.

    asm
        FINIT
        FLD mlo
        FDIV mbl44
        FST mlo

        FINIT
        FLD mro
        FDIV mbl44
        FST mro
    end;
    asm
        FINIT
        FLD mro
        FDIV ll
        FABS
        FST dri
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD dri
        FYL2X
        FMUL twy
        FADD eght
        FST dbmr

        FINIT
        FLD mlo
        FDIV ll
        FABS
        FST dli
        FLDL2T
        FLD1
        FDIV ST, ST(1)
        FLD dli
        FYL2X
        FMUL twy
        FADD eght
        FST dbml
end;
    if o then
    begin
        Form3.Repaint;
    end;
{       with header^ do
       begin
           blockwrite(f, lpdata^, memBlockLength);
        end;}
    if not(close_invoked) then
    begin
    {prepare it for play back}
        if not e then
        begin
            i:=waveOutPrepareHeader(HWaveOut^,Header,sizeof(TWavehdr));
            if i<>0 then
            begin
                i:=waveInGetErrorText(i, lpText, sizeOf(lpText));
                application.messagebox(lpText, 'Error', mb_OK);
                e := TRUE;
                Form1.Close;
            end;
        end;

        {add it to the playback queue}
        if not e then
        begin
            i:=waveOutWrite(HWaveOut^,Header,sizeof(TWaveHdr));
            if i<>0 then
            begin
                i:=waveInGetErrorText(i, lpText, sizeOf(lpText));
                application.messagebox(lpText, 'Error', mb_OK);
                e := TRUE;
                Form1.Close;
            end;
        end;

        inc(out_count);

        {make a new block}
        Header:=new(PWaveHdr);
        memBlock:=new(PmemBlock);

        Header:=new(PwaveHdr);
        with header^ do
        begin
            lpdata:=pointer(memBlock);
            dwbufferlength:=memblocklength;
            dwbytesrecorded:=0;
            dwUser:=0;
            dwflags:=0;
            dwloops:=0;
        end;

        {prepare the new block}
        if not e then
        begin
            i:=waveInPrepareHeader(HWaveIn^,Header,sizeof(TWavehdr));
            if i<>0 then
            begin
                i:=waveInGetErrorText(i, lpText, sizeOf(lpText));
                application.messagebox(lpText, 'Error', mb_OK);
                e := TRUE;
                Form1.Close;
            end;
        end;

        {add it to the buffer}
        if not e then
        begin
            i:=waveInAddBuffer(HWaveIn^,Header,sizeof(TWaveHdr));
            if i<>0 then
            begin
                i:=waveInGetErrorText(i, lpText, sizeOf(lpText));
                application.messagebox(lpText, 'Error', mb_OK);
                e := TRUE;
                Form1.Close;
            end;
        end;

        inc(in_count);
    end;

    {if there's no more blocks being recorded}
    if (in_count=0) then
    begin
        WaveInClose(HWaveIn^);
        HwaveIn:=nil;
    end;

    {if there's nothing more to do then close}
    if (in_count=0) and (out_count=0) then
    begin
        close_complete:=true;
        Form1.close;
    end;
    if not (close_complete) then
    begin
            if (dbml < -70) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n72);
            end;
            if ((dbml < -68) and (dbml >= -70)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n70);
            end;
            if ((dbml < -66) and (dbml >= -68)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n68);
            end;
            if ((dbml < -64) and (dbml >= -66)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n66);
            end;
            if ((dbml < -62) and (dbml >= -64)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n64);
            end;
            if ((dbml < -60) and (dbml >= -62)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n62);
            end;
            if ((dbml < -58) and (dbml >= -60)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n60);
            end;
            if ((dbml < -56) and (dbml >= -58)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n58);
            end;
            if ((dbml < -54) and (dbml >= -56)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n56);
            end;
            if ((dbml < -52) and (dbml >= -54)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n54);
            end;
            if ((dbml < -50) and (dbml >= -52)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n52);
            end;
            if ((dbml < -48) and (dbml >= -50)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n50);
            end;
            if ((dbml < -46) and (dbml >= -48)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n48);
            end;
            if ((dbml < -44) and (dbml >= -46)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n46);
            end;
            if ((dbml < -42) and (dbml >= -44)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n44);
            end;
            if ((dbml < -40) and (dbml >= -42)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n42);
            end;
            if ((dbml < -38) and (dbml >= -40)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n40);
            end;
            if ((dbml < -36) and (dbml >= -38)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n38);
            end;
            if ((dbml < -34) and (dbml >= -36)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n36);
            end;
            if ((dbml < -32) and (dbml >= -34)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n34);
            end;
            if ((dbml < -30) and (dbml >= -32)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n32);
            end;
            if ((dbml < -28) and (dbml >= -30)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n30);
            end;
            if ((dbml < -26) and (dbml >= -28)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n28);
            end;
            if ((dbml < -24) and (dbml >= -26)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n26);
            end;
            if ((dbml < -22) and (dbml >= -24)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n24);
            end;
            if ((dbml < -20) and (dbml >= -22)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n22);
            end;
            if ((dbml < -18) and (dbml >= -20)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n20);
            end;
            if ((dbml < -16) and (dbml >= -18)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n18);
            end;
            if ((dbml < -14) and (dbml >= -16)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n16);
            end;
            if ((dbml < -12) and (dbml >= -14)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n14);
            end;
            if ((dbml < -10) and (dbml >= -12)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n12);
            end;
            if ((dbml < -8) and (dbml >= -10)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n10);
            end;
            if ((dbml < -6) and (dbml >= -8)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n8);
            end;
            if ((dbml < -4) and (dbml >= -6)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n6);
            end;
            if ((dbml < -2) and (dbml >= -4)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n4);
            end;
            if ((dbml < 0) and (dbml >= -2)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_n2);
            end;
            if (dbml = 0) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_np0);
            end;
            if ((dbml > 0) and (dbml <= 2)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_p2);
            end;
            if ((dbml > 2) and (dbml <= 4)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_p4);
            end;
            if ((dbml > 4) and (dbml <= 6)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_p6);
            end;
            if ((dbml > 6) and (dbml <= 8)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_p8);
            end;
            if ((dbml > 8) and (dbml <= 10)) then
            begin
                Image1.Canvas.Draw(0, 0, MLBitmap_p10);
            end;


            if (dbmr < -70) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n72);
            end;
            if ((dbmr < -68) and (dbmr >= -70)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n70);
            end;
            if ((dbmr < -66) and (dbmr >= -68)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n68);
            end;
            if ((dbmr < -64) and (dbmr >= -66)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n66);
            end;
            if ((dbmr < -62) and (dbmr >= -64)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n64);
            end;
            if ((dbmr < -60) and (dbmr >= -62)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n62);
            end;
            if ((dbmr < -58) and (dbmr >= -60)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n60);
            end;
            if ((dbmr < -56) and (dbmr >= -58)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n58);
            end;
            if ((dbmr < -54) and (dbmr >= -56)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n56);
            end;
            if ((dbmr < -52) and (dbmr >= -54)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n54);
            end;
            if ((dbmr < -50) and (dbmr >= -52)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n52);
            end;
            if ((dbmr < -48) and (dbmr >= -50)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n50);
            end;
            if ((dbmr < -46) and (dbmr >= -48)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n48);
            end;
            if ((dbmr < -44) and (dbmr >= -46)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n46);
            end;
            if ((dbmr < -42) and (dbmr >= -44)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n44);
            end;
            if ((dbmr < -40) and (dbmr >= -42)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n42);
            end;
            if ((dbmr < -38) and (dbmr >= -40)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n40);
            end;
            if ((dbmr < -36) and (dbmr >= -38)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n38);
            end;
            if ((dbmr < -34) and (dbmr >= -36)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n36);
            end;
            if ((dbmr < -32) and (dbmr >= -34)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n34);
            end;
            if ((dbmr < -30) and (dbmr >= -32)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n32);
            end;
            if ((dbmr < -28) and (dbmr >= -30)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n30);
            end;
            if ((dbmr < -26) and (dbmr >= -28)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n28);
            end;
            if ((dbmr < -24) and (dbmr >= -26)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n26);
            end;
            if ((dbmr < -22) and (dbmr >= -24)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n24);
            end;
            if ((dbmr < -20) and (dbmr >= -22)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n22);
            end;
            if ((dbmr < -18) and (dbmr >= -20)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n20);
            end;
            if ((dbmr < -16) and (dbmr >= -18)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n18);
            end;
            if ((dbmr < -14) and (dbmr >= -16)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n16);
            end;
            if ((dbmr < -12) and (dbmr >= -14)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n14);
            end;
            if ((dbmr < -10) and (dbmr >= -12)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n12);
            end;
            if ((dbmr < -8) and (dbmr >= -10)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n10);
            end;
            if ((dbmr < -6) and (dbmr >= -8)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n8);
            end;
            if ((dbmr < -4) and (dbmr >= -6)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n6);
            end;
            if ((dbmr < -2) and (dbmr >= -4)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n4);
            end;
            if ((dbmr < 0) and (dbmr >= -2)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_n2);
            end;
            if (dbmr = 0) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_np0);
            end;
            if ((dbmr > 0) and (dbmr <= 2)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_p2);
            end;
            if ((dbmr > 2) and (dbmr <= 4)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_p4);
            end;
            if ((dbmr > 4) and (dbmr <= 6)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_p6);
            end;
            if ((dbmr > 6) and (dbmr <= 8)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_p8);
            end;
            if ((dbmr > 8) and (dbmr <= 10)) then
            begin
                Image2.Canvas.Draw(0, 0, MRBitmap_p10);
            end;
            if (dbmr > 10) then
            begin
                Shape3.Brush.Color := clRed;
            end
            else
            begin
                Shape3.Brush.Color := clMaroon;
            end;
            if (dbml > 10) then
            begin
                Shape6.Brush.Color := clRed;
            end
            else
            begin
                Shape6.Brush.Color := clMaroon;
            end;
    end;
{    Label35.Caption := TicksToStr(GetCPUTick-Ticks);}
end;




procedure CalcCoeffs();
var
    G, omega, ssin, ccos, alpha, beta, temp, cf, two, sr, z: Double;
    j: Integer;
begin
{    CalibrateCPU;}

    // Here are the coefficients calculated for one low-shelf, one high-shelf
    // and eight band-pass filters.

    // There are 100 coefficients per slider so when the adjustment range
    // is from -25dB to 25dB the resolution is 50/100 = 0.5dB.

    two := 2.0;
    sr := SampleRate;
    cf := 22000;
    omega := (2*Pi*cf)/sr;
    ssin := Sin(omega);
    ccos := Cos(omega);
    alpha := ssin/(2*Q);

    b0_lop :=  (1 - ccos)/2;
    b1_lop :=   1 - ccos;
    b2_lop :=  (1 - ccos)/2;
    a0_lop :=   1 + alpha;
    a1_lop :=  -2*ccos;
    a2_lop :=   1 - alpha;

    z := (sqrt(Sqr(b0_lop+b1_lop*cos(omega)+b2_lop*cos(2*omega))+Sqr(b1_lop*sin(omega)+b2_lop*sin(2*omega)))/
            sqrt(Sqr(a0_lop+a1_lop*cos(omega)+a2_lop*cos(2*omega))+Sqr(a1_lop*sin(omega)+a2_lop*sin(2*omega))));

    zz_lop := Sqr(z);

    cf := 10;
    omega := (2*Pi*cf)/sr;
    ssin := Sin(omega);
    ccos := Cos(omega);
    alpha := ssin/(2*Q);

    b0_hip :=  (1 + ccos)/2;
    b1_hip := -(1 + ccos);
    b2_hip :=  (1 + ccos)/2;
    a0_hip :=   1 + alpha;
    a1_hip :=  -2*ccos;
    a2_hip :=   1 - alpha;

    z := (sqrt(Sqr(b0_hip+b1_hip*cos(omega)+b2_hip*cos(2*omega))+Sqr(b1_hip*sin(omega)+b2_hip*sin(2*omega)))/
            sqrt(Sqr(a0_hip+a1_hip*cos(omega)+a2_hip*cos(2*omega))+Sqr(a1_hip*sin(omega)+a2_hip*sin(2*omega))));

    zz_hip := Sqr(z);


     for j := 0 to 11 do
     begin
        polefreq[j] := poles[j] * 15.0;
        rc[j] := 1.0 / (2.0 * PI * polefreq[j]);
        alpha2[j] := 1.0 / rc[j];
        beta2[j] := (1.0 - (alpha2[j] / (2.0 * sr))) /
                 (1.0 + (alpha2[j] / (2.0 * sr)));
        xnm1[j] := 0.0;
        ynm1[j] := 0.0;
        coef[j] := -beta2[j];
     end;


    for i := 0 to 100 do
    begin
        G := Power(10, (((i/2)-25)/40));
        cf := 31;
        asm
            FINIT
            FLDPI
            FMUL two
            FMUL cf
            FDIV sr
            FST omega
            FSIN
            FST ssin
            FLD omega
            FCOS
            FST ccos
        end;
        beta := Sqrt((Sqr(G)+1)/Slope_31 - Sqr(G-1));

        b0_31_a[i] :=    G*((G+1) - (G-1)*ccos + beta*ssin);
        b1_31_a[i] :=  2*G*((G-1) - (G+1)*ccos);
        b2_31_a[i] :=    G*((G+1) - (G-1)*ccos - beta*ssin);
        a0_31_a[i] :=       (G+1) + (G-1)*ccos + beta*ssin;
        a1_31_a[i] :=   -2*((G-1) + (G+1)*ccos);
        a2_31_a[i] :=       (G+1) + (G-1)*ccos - beta*ssin;

        z := (sqrt(Sqr(b0_31_a[i]+b1_31_a[i]*cos(omega)+b2_31_a[i]*cos(2*omega))+Sqr(b1_31_a[i]*sin(omega)+b2_31_a[i]*sin(2*omega)))/
            sqrt(Sqr(a0_31_a[i]+a1_31_a[i]*cos(omega)+a2_31_a[i]*cos(2*omega))+Sqr(a1_31_a[i]*sin(omega)+a2_31_a[i]*sin(2*omega))));

        zz_31[i] := zz_31[i] + z;

{        a0_31_a[i] := a0_31_a[i]*z;
        a1_31_a[i] := a1_31_a[i]*z;
        a2_31_a[i] := a2_31_a[i]*z;
        b0_31_a[i] := b0_31_a[i]*z;
        b1_31_a[i] := b1_31_a[i]*z;
        b2_31_a[i] := b2_31_a[i]*z;

        a1_31_a[i] := a1_31_a[i]/a0_31_a[i];
        a2_31_a[i] := a2_31_a[i]/a0_31_a[i];
        b0_31_a[i] := b0_31_a[i]/a0_31_a[i];
        b1_31_a[i] := b1_31_a[i]/a0_31_a[i];
        b2_31_a[i] := b2_31_a[i]/a0_31_a[i];}

        cf := 62;
        asm
            FINIT
            FLDPI
            FMUL two
            FMUL cf
            FDIV sr
            FST omega
            FSIN
            FST ssin
            FLD omega
            FCOS
            FST ccos
        end;
        alpha := ssin/(2*Q_62);

        a0_62_a[i] :=  1 + (alpha/G);
        a1_62_a[i] := -2*ccos;
        a2_62_a[i] :=  1 - (alpha/G);
        b0_62_a[i] :=  1 + (alpha*G);
        b1_62_a[i] := -2*ccos;
        b2_62_a[i] :=  1 - (alpha*G);

        z := (sqrt(Sqr(b0_62_a[i]+b1_62_a[i]*cos(omega)+b2_62_a[i]*cos(2*omega))+Sqr(b1_62_a[i]*sin(omega)+b2_62_a[i]*sin(2*omega)))/
            sqrt(Sqr(a0_62_a[i]+a1_62_a[i]*cos(omega)+a2_62_a[i]*cos(2*omega))+Sqr(a1_62_a[i]*sin(omega)+a2_62_a[i]*sin(2*omega))));

        zz_62[i] := z;

{        a0_62_a[i] := a0_62_a[i]*z;
        a1_62_a[i] := a1_62_a[i]*z;
        a2_62_a[i] := a2_62_a[i]*z;
        b0_62_a[i] := b0_62_a[i]*z;
        b1_62_a[i] := b1_62_a[i]*z;
        b2_62_a[i] := b2_62_a[i]*z;

        a1_62_a[i] := a1_62_a[i]/a0_62_a[i];
        a2_62_a[i] := a2_62_a[i]/a0_62_a[i];
        b0_62_a[i] := b0_62_a[i]/a0_62_a[i];
        b1_62_a[i] := b1_62_a[i]/a0_62_a[i];
        b2_62_a[i] := b2_62_a[i]/a0_62_a[i];}

        cf := 125;
        asm
            FINIT
            FLDPI
            FMUL two
            FMUL cf
            FDIV sr
            FST omega
            FSIN
            FST ssin
            FLD omega
            FCOS
            FST ccos
        end;
        alpha := ssin/(2*Q_125);

        a0_125_a[i] :=  1 + (alpha/G);
        a1_125_a[i] := -2*ccos;
        a2_125_a[i] :=  1 - (alpha/G);
        b0_125_a[i] :=  1 + (alpha*G);
        b1_125_a[i] := -2*ccos;
        b2_125_a[i] :=  1 - (alpha*G);

        z := (sqrt(Sqr(b0_125_a[i]+b1_125_a[i]*cos(omega)+b2_125_a[i]*cos(2*omega))+Sqr(b1_125_a[i]*sin(omega)+b2_125_a[i]*sin(2*omega)))/
            sqrt(Sqr(a0_125_a[i]+a1_125_a[i]*cos(omega)+a2_125_a[i]*cos(2*omega))+Sqr(a1_125_a[i]*sin(omega)+a2_125_a[i]*sin(2*omega))));

        zz_125[i] := zz_125[i] + z;

{        a0_125_a[i] := a0_125_a[i]*z;
        a1_125_a[i] := a1_125_a[i]*z;
        a2_125_a[i] := a2_125_a[i]*z;
        b0_125_a[i] := b0_125_a[i]*z;
        b1_125_a[i] := b1_125_a[i]*z;
        b2_125_a[i] := b2_125_a[i]*z;

        a1_125_a[i] := a1_125_a[i]/a0_125_a[i];
        a2_125_a[i] := a2_125_a[i]/a0_125_a[i];
        b0_125_a[i] := b0_125_a[i]/a0_125_a[i];
        b1_125_a[i] := b1_125_a[i]/a0_125_a[i];
        b2_125_a[i] := b2_125_a[i]/a0_125_a[i];}

        cf := 250;
        asm
            FINIT
            FLDPI
            FMUL two
            FMUL cf
            FDIV sr
            FST omega
            FSIN
            FST ssin
            FLD omega
            FCOS
            FST ccos
        end;
        alpha := ssin/(2*Q_250);

        a0_250_a[i] :=  1 + (alpha/G);
        a1_250_a[i] := -2*ccos;
        a2_250_a[i] :=  1 - (alpha/G);
        b0_250_a[i] :=  1 + (alpha*G);
        b1_250_a[i] := -2*ccos;
        b2_250_a[i] :=  1 - (alpha*G);

        z := (sqrt(Sqr(b0_250_a[i]+b1_250_a[i]*cos(omega)+b2_250_a[i]*cos(2*omega))+Sqr(b1_250_a[i]*sin(omega)+b2_250_a[i]*sin(2*omega)))/
            sqrt(Sqr(a0_250_a[i]+a1_250_a[i]*cos(omega)+a2_250_a[i]*cos(2*omega))+Sqr(a1_250_a[i]*sin(omega)+a2_250_a[i]*sin(2*omega))));

        zz_250[i] := z;

{        a0_250_a[i] := a0_250_a[i]*z;
        a1_250_a[i] := a1_250_a[i]*z;
        a2_250_a[i] := a2_250_a[i]*z;
        b0_250_a[i] := b0_250_a[i]*z;
        b1_250_a[i] := b1_250_a[i]*z;
        b2_250_a[i] := b2_250_a[i]*z;

        a1_250_a[i] := a1_250_a[i]/a0_250_a[i];
        a2_250_a[i] := a2_250_a[i]/a0_250_a[i];
        b0_250_a[i] := b0_250_a[i]/a0_250_a[i];
        b1_250_a[i] := b1_250_a[i]/a0_250_a[i];
        b2_250_a[i] := b2_250_a[i]/a0_250_a[i];}

        cf := 500;
        asm
            FINIT
            FLDPI
            FMUL two
            FMUL cf
            FDIV sr
            FST omega
            FSIN
            FST ssin
            FLD omega
            FCOS
            FST ccos
        end;
        alpha := ssin/(2*Q_500);

        a0_500_a[i] :=  1 + (alpha/G);
        a1_500_a[i] := -2*ccos;
        a2_500_a[i] :=  1 - (alpha/G);
        b0_500_a[i] :=  1 + (alpha*G);
        b1_500_a[i] := -2*ccos;
        b2_500_a[i] :=  1 - (alpha*G);

        z := (sqrt(Sqr(b0_500_a[i]+b1_500_a[i]*cos(omega)+b2_500_a[i]*cos(2*omega))+Sqr(b1_500_a[i]*sin(omega)+b2_500_a[i]*sin(2*omega)))/
            sqrt(Sqr(a0_500_a[i]+a1_500_a[i]*cos(omega)+a2_500_a[i]*cos(2*omega))+Sqr(a1_500_a[i]*sin(omega)+a2_500_a[i]*sin(2*omega))));

        zz_500[i] := z;

{        a0_500_a[i] := a0_500_a[i]*z;
        a1_500_a[i] := a1_500_a[i]*z;
        a2_500_a[i] := a2_500_a[i]*z;
        b0_500_a[i] := b0_500_a[i]*z;
        b1_500_a[i] := b1_500_a[i]*z;
        b2_500_a[i] := b2_500_a[i]*z;

        a1_500_a[i] := a1_500_a[i]/a0_500_a[i];
        a2_500_a[i] := a2_500_a[i]/a0_500_a[i];
        b0_500_a[i] := b0_500_a[i]/a0_500_a[i];
        b1_500_a[i] := b1_500_a[i]/a0_500_a[i];
        b2_500_a[i] := b2_500_a[i]/a0_500_a[i];}

        cf := 1000;
        asm
            FINIT
            FLDPI
            FMUL two
            FMUL cf
            FDIV sr
            FST omega
            FSIN
            FST ssin
            FLD omega
            FCOS
            FST ccos
        end;
        alpha := ssin/(2*Q_1k);

        a0_1k_a[i] :=  1 + (alpha/G);
        a1_1k_a[i] := -2*ccos;
        a2_1k_a[i] :=  1 - (alpha/G);
        b0_1k_a[i] :=  1 + (alpha*G);
        b1_1k_a[i] := -2*ccos;
        b2_1k_a[i] :=  1 - (alpha*G);

        z := (sqrt(Sqr(b0_1k_a[i]+b1_1k_a[i]*cos(omega)+b2_1k_a[i]*cos(2*omega))+Sqr(b1_1k_a[i]*sin(omega)+b2_1k_a[i]*sin(2*omega)))/
            sqrt(Sqr(a0_1k_a[i]+a1_1k_a[i]*cos(omega)+a2_1k_a[i]*cos(2*omega))+Sqr(a1_1k_a[i]*sin(omega)+a2_1k_a[i]*sin(2*omega))));

        zz_1k[i] := z;

{        a0_1k_a[i] := a0_1k_a[i]*z;
        a1_1k_a[i] := a1_1k_a[i]*z;
        a2_1k_a[i] := a2_1k_a[i]*z;
        b0_1k_a[i] := b0_1k_a[i]*z;
        b1_1k_a[i] := b1_1k_a[i]*z;
        b2_1k_a[i] := b2_1k_a[i]*z;

        a1_1k_a[i] := a1_1k_a[i]/a0_1k_a[i];
        a2_1k_a[i] := a2_1k_a[i]/a0_1k_a[i];
        b0_1k_a[i] := b0_1k_a[i]/a0_1k_a[i];
        b1_1k_a[i] := b1_1k_a[i]/a0_1k_a[i];
        b2_1k_a[i] := b2_1k_a[i]/a0_1k_a[i];}

        cf := 2000;
        asm
            FINIT
            FLDPI
            FMUL two
            FMUL cf
            FDIV sr
            FST omega
            FSIN
            FST ssin
            FLD omega
            FCOS
            FST ccos
        end;
        alpha := ssin/(2*Q_2k);

        a0_2k_a[i] :=  1 + (alpha/G);
        a1_2k_a[i] := -2*ccos;
        a2_2k_a[i] :=  1 - (alpha/G);
        b0_2k_a[i] :=  1 + (alpha*G);
        b1_2k_a[i] := -2*ccos;
        b2_2k_a[i] :=  1 - (alpha*G);

        z := (sqrt(Sqr(b0_2k_a[i]+b1_2k_a[i]*cos(omega)+b2_2k_a[i]*cos(2*omega))+Sqr(b1_2k_a[i]*sin(omega)+b2_2k_a[i]*sin(2*omega)))/
            sqrt(Sqr(a0_2k_a[i]+a1_2k_a[i]*cos(omega)+a2_2k_a[i]*cos(2*omega))+Sqr(a1_2k_a[i]*sin(omega)+a2_2k_a[i]*sin(2*omega))));

        zz_2k[i] := z;

{        a0_2k_a[i] := a0_2k_a[i]*z;
        a1_2k_a[i] := a1_2k_a[i]*z;
        a2_2k_a[i] := a2_2k_a[i]*z;
        b0_2k_a[i] := b0_2k_a[i]*z;
        b1_2k_a[i] := b1_2k_a[i]*z;
        b2_2k_a[i] := b2_2k_a[i]*z;

        a1_2k_a[i] := a1_2k_a[i]/a0_2k_a[i];
        a2_2k_a[i] := a2_2k_a[i]/a0_2k_a[i];
        b0_2k_a[i] := b0_2k_a[i]/a0_2k_a[i];
        b1_2k_a[i] := b1_2k_a[i]/a0_2k_a[i];
        b2_2k_a[i] := b2_2k_a[i]/a0_2k_a[i];}

        cf := 4000;
        asm
            FINIT
            FLDPI
            FMUL two
            FMUL cf
            FDIV sr
            FST omega
            FSIN
            FST ssin
            FLD omega
            FCOS
            FST ccos
        end;
        alpha := ssin/(2*Q_4k);

        a0_4k_a[i] :=  1 + (alpha/G);
        a1_4k_a[i] := -2*ccos;
        a2_4k_a[i] :=  1 - (alpha/G);
        b0_4k_a[i] :=  1 + (alpha*G);
        b1_4k_a[i] := -2*ccos;
        b2_4k_a[i] :=  1 - (alpha*G);

        z := (sqrt(Sqr(b0_4k_a[i]+b1_4k_a[i]*cos(omega)+b2_4k_a[i]*cos(2*omega))+Sqr(b1_4k_a[i]*sin(omega)+b2_4k_a[i]*sin(2*omega)))/
            sqrt(Sqr(a0_4k_a[i]+a1_4k_a[i]*cos(omega)+a2_4k_a[i]*cos(2*omega))+Sqr(a1_4k_a[i]*sin(omega)+a2_4k_a[i]*sin(2*omega))));

        zz_4k[i] := z;

{        a0_4k_a[i] := a0_4k_a[i]*z;
        a1_4k_a[i] := a1_4k_a[i]*z;
        a2_4k_a[i] := a2_4k_a[i]*z;
        b0_4k_a[i] := b0_4k_a[i]*z;
        b1_4k_a[i] := b1_4k_a[i]*z;
        b2_4k_a[i] := b2_4k_a[i]*z;

        a1_4k_a[i] := a1_4k_a[i]/a0_4k_a[i];
        a2_4k_a[i] := a2_4k_a[i]/a0_4k_a[i];
        b0_4k_a[i] := b0_4k_a[i]/a0_4k_a[i];
        b1_4k_a[i] := b1_4k_a[i]/a0_4k_a[i];
        b2_4k_a[i] := b2_4k_a[i]/a0_4k_a[i];}

        cf := 8000;
        asm
            FINIT
            FLDPI
            FMUL two
            FMUL cf
            FDIV sr
            FST omega
            FSIN
            FST ssin
            FLD omega
            FCOS
            FST ccos
        end;
        alpha := ssin/(2*Q_8k);

        a0_8k_a[i] :=  1 + (alpha/G);
        a1_8k_a[i] := -2*ccos;
        a2_8k_a[i] :=  1 - (alpha/G);
        b0_8k_a[i] :=  1 + (alpha*G);
        b1_8k_a[i] := -2*ccos;
        b2_8k_a[i] :=  1 - (alpha*G);

        z := (sqrt(Sqr(b0_8k_a[i]+b1_8k_a[i]*cos(omega)+b2_8k_a[i]*cos(2*omega))+Sqr(b1_8k_a[i]*sin(omega)+b2_8k_a[i]*sin(2*omega)))/
            sqrt(Sqr(a0_8k_a[i]+a1_8k_a[i]*cos(omega)+a2_8k_a[i]*cos(2*omega))+Sqr(a1_8k_a[i]*sin(omega)+a2_8k_a[i]*sin(2*omega))));

        zz_8k[i] := z;

{        a0_8k_a[i] := a0_8k_a[i]*z;
        a1_8k_a[i] := a1_8k_a[i]*z;
        a2_8k_a[i] := a2_8k_a[i]*z;
        b0_8k_a[i] := b0_8k_a[i]*z;
        b1_8k_a[i] := b1_8k_a[i]*z;
        b2_8k_a[i] := b2_8k_a[i]*z;

        a1_8k_a[i] := a1_8k_a[i]/a0_8k_a[i];
        a2_8k_a[i] := a2_8k_a[i]/a0_8k_a[i];
        b0_8k_a[i] := b0_8k_a[i]/a0_8k_a[i];
        b1_8k_a[i] := b1_8k_a[i]/a0_8k_a[i];
        b2_8k_a[i] := b2_8k_a[i]/a0_8k_a[i];}

        cf := 16000;
        asm
            FINIT
            FLDPI
            FMUL two
            FMUL cf
            FDIV sr
            FST omega
            FSIN
            FST ssin
            FLD omega
            FCOS
            FST ccos
        end;
        beta := Sqrt((Sqr(G)+1)/Slope_16k - Sqr(G-1));

        b0_16k_a[i] :=    G*((G+1) + (G-1)*ccos + beta*ssin);
        b1_16k_a[i] := -2*G*((G-1) + (G+1)*ccos);
        b2_16k_a[i] :=    G*((G+1) + (G-1)*ccos - beta*ssin);
        a0_16k_a[i] :=       (G+1) - (G-1)*ccos + beta*ssin;
        a1_16k_a[i] :=    2*((G-1) - (G+1)*ccos);
        a2_16k_a[i] :=       (G+1) - (G-1)*ccos - beta*ssin;

        z := (sqrt(Sqr(b0_16k_a[i]+b1_16k_a[i]*cos(omega)+b2_16k_a[i]*cos(2*omega))+Sqr(b1_16k_a[i]*sin(omega)+b2_16k_a[i]*sin(2*omega)))/
            sqrt(Sqr(a0_16k_a[i]+a1_16k_a[i]*cos(omega)+a2_16k_a[i]*cos(2*omega))+Sqr(a1_16k_a[i]*sin(omega)+a2_16k_a[i]*sin(2*omega))));

        zz_16k[i] := z;

{        a0_16k_a[i] := a0_16k_a[i]*z;
        a1_16k_a[i] := a1_16k_a[i]*z;
        a2_16k_a[i] := a2_16k_a[i]*z;
        b0_16k_a[i] := b0_16k_a[i]*z;
        b1_16k_a[i] := b1_16k_a[i]*z;
        b2_16k_a[i] := b2_16k_a[i]*z;

        a1_16k_a[i] := a1_16k_a[i]/a0_16k_a[i];
        a2_16k_a[i] := a2_16k_a[i]/a0_16k_a[i];
        b0_16k_a[i] := b0_16k_a[i]/a0_16k_a[i];
        b1_16k_a[i] := b1_16k_a[i]/a0_16k_a[i];
        b2_16k_a[i] := b2_16k_a[i]/a0_16k_a[i];}
    end;
{        zz_lop := zz_lop/Sqrt(zz_lop);
        a0_lop := a0_lop*zz_lop;
        a1_lop := a1_lop*zz_lop;
        a2_lop := a2_lop*zz_lop;
        b0_lop := b0_lop*zz_lop;
        b1_lop := b1_lop*zz_lop;
        b2_lop := b2_lop*zz_lop;

        a1_lop := a1_lop/a0_lop;
        a2_lop := a2_lop/a0_lop;
        b0_lop := b0_lop/a0_lop;
        b1_lop := b1_lop/a0_lop;
        b2_lop := b2_lop/a0_lop;}

{        zz_hip := zz_hip/Sqrt(zz_hip);
        a0_hip := a0_hip*zz_hip;
        a1_hip := a1_hip*zz_hip;
        a2_hip := a2_hip*zz_hip;
        b0_hip := b0_hip*zz_hip;
        b1_hip := b1_hip*zz_hip;
        b2_hip := b2_hip*zz_hip;}

    a1_hip := a1_hip/a0_hip;
    a2_hip := a2_hip/a0_hip;
    b0_hip := b0_hip/a0_hip;
    b1_hip := b1_hip/a0_hip;
    b2_hip := b2_hip/a0_hip;

    for i := 0 to 100 do
    begin

{        zz_31[i] := zz_31[i]/Sqrt(SumOfSquares(zz_31));
        a0_31_a[i] := a0_31_a[i]*zz_31[i];
        a1_31_a[i] := a1_31_a[i]*zz_31[i];
        a2_31_a[i] := a2_31_a[i]*zz_31[i];
        b0_31_a[i] := b0_31_a[i]*zz_31[i];
        b1_31_a[i] := b1_31_a[i]*zz_31[i];
        b2_31_a[i] := b2_31_a[i]*zz_31[i];}

        a1_31_a[i] := a1_31_a[i]/a0_31_a[i];
        a2_31_a[i] := a2_31_a[i]/a0_31_a[i];
        b0_31_a[i] := b0_31_a[i]/a0_31_a[i];
        b1_31_a[i] := b1_31_a[i]/a0_31_a[i];
        b2_31_a[i] := b2_31_a[i]/a0_31_a[i];

 {       zz_62[i] := zz_62[i]/Sqrt(SumOfSquares(zz_62));
        a0_62_a[i] := a0_62_a[i]*zz_62[i];
        a1_62_a[i] := a1_62_a[i]*zz_62[i];
        a2_62_a[i] := a2_62_a[i]*zz_62[i];
        b0_62_a[i] := b0_62_a[i]*zz_62[i];
        b1_62_a[i] := b1_62_a[i]*zz_62[i];
        b2_62_a[i] := b2_62_a[i]*zz_62[i];}

        a1_62_a[i] := a1_62_a[i]/a0_62_a[i];
        a2_62_a[i] := a2_62_a[i]/a0_62_a[i];
        b0_62_a[i] := b0_62_a[i]/a0_62_a[i];
        b1_62_a[i] := b1_62_a[i]/a0_62_a[i];
        b2_62_a[i] := b2_62_a[i]/a0_62_a[i];

{        zz_125[i] := zz_125[i]/Sqrt(SumOfSquares(zz_125));
        a0_125_a[i] := a0_125_a[i]*zz_125[i];
        a1_125_a[i] := a1_125_a[i]*zz_125[i];
        a2_125_a[i] := a2_125_a[i]*zz_125[i];
        b0_125_a[i] := b0_125_a[i]*zz_125[i];
        b1_125_a[i] := b1_125_a[i]*zz_125[i];
        b2_125_a[i] := b2_125_a[i]*zz_125[i];}

        a1_125_a[i] := a1_125_a[i]/a0_125_a[i];
        a2_125_a[i] := a2_125_a[i]/a0_125_a[i];
        b0_125_a[i] := b0_125_a[i]/a0_125_a[i];
        b1_125_a[i] := b1_125_a[i]/a0_125_a[i];
        b2_125_a[i] := b2_125_a[i]/a0_125_a[i];

{        zz_250[i] := zz_250[i]/Sqrt(SumOfSquares(zz_250));
        a0_250_a[i] := a0_250_a[i]*zz_250[i];
        a1_250_a[i] := a1_250_a[i]*zz_250[i];
        a2_250_a[i] := a2_250_a[i]*zz_250[i];
        b0_250_a[i] := b0_250_a[i]*zz_250[i];
        b1_250_a[i] := b1_250_a[i]*zz_250[i];
        b2_250_a[i] := b2_250_a[i]*zz_250[i];}

        a1_250_a[i] := a1_250_a[i]/a0_250_a[i];
        a2_250_a[i] := a2_250_a[i]/a0_250_a[i];
        b0_250_a[i] := b0_250_a[i]/a0_250_a[i];
        b1_250_a[i] := b1_250_a[i]/a0_250_a[i];
        b2_250_a[i] := b2_250_a[i]/a0_250_a[i];

{        zz_500[i] := zz_500[i]/Sqrt(SumOfSquares(zz_500));
        a0_500_a[i] := a0_500_a[i]*zz_500[i];
        a1_500_a[i] := a1_500_a[i]*zz_500[i];
        a2_500_a[i] := a2_500_a[i]*zz_500[i];
        b0_500_a[i] := b0_500_a[i]*zz_500[i];
        b1_500_a[i] := b1_500_a[i]*zz_500[i];
        b2_500_a[i] := b2_500_a[i]*zz_500[i];}

        a1_500_a[i] := a1_500_a[i]/a0_500_a[i];
        a2_500_a[i] := a2_500_a[i]/a0_500_a[i];
        b0_500_a[i] := b0_500_a[i]/a0_500_a[i];
        b1_500_a[i] := b1_500_a[i]/a0_500_a[i];
        b2_500_a[i] := b2_500_a[i]/a0_500_a[i];

{        zz_1k[i] := zz_1k[i]/Sqrt(SumOfSquares(zz_1k));
        a0_1k_a[i] := a0_1k_a[i]*zz_1k[i];
        a1_1k_a[i] := a1_1k_a[i]*zz_1k[i];
        a2_1k_a[i] := a2_1k_a[i]*zz_1k[i];
        b0_1k_a[i] := b0_1k_a[i]*zz_1k[i];
        b1_1k_a[i] := b1_1k_a[i]*zz_1k[i];
        b2_1k_a[i] := b2_1k_a[i]*zz_1k[i];}

        a1_1k_a[i] := a1_1k_a[i]/a0_1k_a[i];
        a2_1k_a[i] := a2_1k_a[i]/a0_1k_a[i];
        b0_1k_a[i] := b0_1k_a[i]/a0_1k_a[i];
        b1_1k_a[i] := b1_1k_a[i]/a0_1k_a[i];
        b2_1k_a[i] := b2_1k_a[i]/a0_1k_a[i];

{        zz_2k[i] := zz_2k[i]/Sqrt(SumOfSquares(zz_2k));
        a0_2k_a[i] := a0_2k_a[i]*zz_2k[i];
        a1_2k_a[i] := a1_2k_a[i]*zz_2k[i];
        a2_2k_a[i] := a2_2k_a[i]*zz_2k[i];
        b0_2k_a[i] := b0_2k_a[i]*zz_2k[i];
        b1_2k_a[i] := b1_2k_a[i]*zz_2k[i];
        b2_2k_a[i] := b2_2k_a[i]*zz_2k[i];}

        a1_2k_a[i] := a1_2k_a[i]/a0_2k_a[i];
        a2_2k_a[i] := a2_2k_a[i]/a0_2k_a[i];
        b0_2k_a[i] := b0_2k_a[i]/a0_2k_a[i];
        b1_2k_a[i] := b1_2k_a[i]/a0_2k_a[i];
        b2_2k_a[i] := b2_2k_a[i]/a0_2k_a[i];

{        zz_4k[i] := zz_4k[i]/Sqrt(SumOfSquares(zz_4k));
        a0_4k_a[i] := a0_4k_a[i]*zz_4k[i];
        a1_4k_a[i] := a1_4k_a[i]*zz_4k[i];
        a2_4k_a[i] := a2_4k_a[i]*zz_4k[i];
        b0_4k_a[i] := b0_4k_a[i]*zz_4k[i];
        b1_4k_a[i] := b1_4k_a[i]*zz_4k[i];
        b2_4k_a[i] := b2_4k_a[i]*zz_4k[i];}

        a1_4k_a[i] := a1_4k_a[i]/a0_4k_a[i];
        a2_4k_a[i] := a2_4k_a[i]/a0_4k_a[i];
        b0_4k_a[i] := b0_4k_a[i]/a0_4k_a[i];
        b1_4k_a[i] := b1_4k_a[i]/a0_4k_a[i];
        b2_4k_a[i] := b2_4k_a[i]/a0_4k_a[i];

{        zz_8k[i] := zz_8k[i]/Sqrt(SumOfSquares(zz_8k));
        a0_8k_a[i] := a0_8k_a[i]*zz_8k[i];
        a1_8k_a[i] := a1_8k_a[i]*zz_8k[i];
        a2_8k_a[i] := a2_8k_a[i]*zz_8k[i];
        b0_8k_a[i] := b0_8k_a[i]*zz_8k[i];
        b1_8k_a[i] := b1_8k_a[i]*zz_8k[i];
        b2_8k_a[i] := b2_8k_a[i]*zz_8k[i];}

        a1_8k_a[i] := a1_8k_a[i]/a0_8k_a[i];
        a2_8k_a[i] := a2_8k_a[i]/a0_8k_a[i];
        b0_8k_a[i] := b0_8k_a[i]/a0_8k_a[i];
        b1_8k_a[i] := b1_8k_a[i]/a0_8k_a[i];
        b2_8k_a[i] := b2_8k_a[i]/a0_8k_a[i];

{        zz_16k[i] := zz_16k[i]/Sqrt(SumOfSquares(zz_16k));
        a0_16k_a[i] := a0_16k_a[i]*zz_16k[i];
        a1_16k_a[i] := a1_16k_a[i]*zz_16k[i];
        a2_16k_a[i] := a2_16k_a[i]*zz_16k[i];
        b0_16k_a[i] := b0_16k_a[i]*zz_16k[i];
        b1_16k_a[i] := b1_16k_a[i]*zz_16k[i];
        b2_16k_a[i] := b2_16k_a[i]*zz_16k[i];}

        a1_16k_a[i] := a1_16k_a[i]/a0_16k_a[i];
        a2_16k_a[i] := a2_16k_a[i]/a0_16k_a[i];
        b0_16k_a[i] := b0_16k_a[i]/a0_16k_a[i];
        b1_16k_a[i] := b1_16k_a[i]/a0_16k_a[i];
        b2_16k_a[i] := b2_16k_a[i]/a0_16k_a[i];
    end;

{   AssignFile(f, 'c:\aani.wav');
    Rewrite(f);}
end;

procedure Phase();
var
    omega, ssin, ccos, alpha, sr: Double;
begin
    sr := SampleRate;
    if (cfr = 125) then
    begin
     down := False;
     up := True;
    end;
    if (cfr = 8000) then
    begin
     down := True;
     up := False;
    end;
    if (cfr < 8000) and (up) then cfr := cfr+25;
    if (cfr > 125) and (down) then cfr := cfr-25;
    {    cfr := 22050;}
    asm
        FINIT
        FLDPI
        FMUL duo
        FMUL cfr
        FDIV sr
        FST omega
        FLD omega
        FSIN
        FST ssin
        FLD omega
        FCOS
        FST ccos
        FLD Qp
        FMUL duo
        FLD ssin
        FDIV ST(0), ST(1)
        FST alpha
        FINIT
        FLD1
        FSUB alpha
        FST b0_allp1
        FLD duo
        FCHS
        FMUL ccos
        FST b1_allp1
        FLD1
        FADD alpha
        FST b2_allp1
        FLD1
        FADD alpha
        FST a0_allp1
        FLD duo
        FCHS
        FMUL ccos
        FST a1_allp1
        FLD1
        FSUB alpha
        FST a2_allp1
    end;

    asm
        FINIT
        FLDPI
        FMUL duo
        FMUL cfr
        FDIV sr
        FST omega
        FLD omega
        FSIN
        FST ssin
        FLD omega
        FCOS
        FST ccos
        FLD Qp
        FMUL duo
        FLD ssin
        FDIV ST(0), ST(1)
        FST alpha
        FINIT
        FLD1
        FSUB alpha
        FST b0_allp2
        FLD duo
        FCHS
        FMUL ccos
        FST b1_allp2
        FLD1
        FADD alpha
        FST b2_allp2
        FLD1
        FADD alpha
        FST a0_allp2
        FLD duo
        FCHS
        FMUL ccos
        FST a1_allp2
        FLD1
        FSUB alpha
        FST a2_allp2
    end;

    asm
        FINIT
        FLDPI
        FMUL duo
        FMUL cfr
        FDIV sr
        FST omega
        FLD omega
        FSIN
        FST ssin
        FLD omega
        FCOS
        FST ccos
        FLD Qp
        FMUL duo
        FLD ssin
        FDIV ST(0), ST(1)
        FST alpha
        FINIT
        FLD1
        FSUB alpha
        FST b0_allp3
        FLD duo
        FCHS
        FMUL ccos
        FST b1_allp3
        FLD1
        FADD alpha
        FST b2_allp3
        FLD1
        FADD alpha
        FST a0_allp3
        FLD duo
        FCHS
        FMUL ccos
        FST a1_allp3
        FLD1
        FSUB alpha
        FST a2_allp3
    end;

    asm
        FINIT
        FLDPI
        FMUL duo
        FMUL cfr
        FDIV sr
        FST omega
        FLD omega
        FSIN
        FST ssin
        FLD omega
        FCOS
        FST ccos
        FLD Qp
        FMUL duo
        FLD ssin
        FDIV ST(0), ST(1)
        FST alpha
        FINIT
        FLD1
        FSUB alpha
        FST b0_allp4
        FLD duo
        FCHS
        FMUL ccos
        FST b1_allp4
        FLD1
        FADD alpha
        FST b2_allp4
        FLD1
        FADD alpha
        FST a0_allp4
        FLD duo
        FCHS
        FMUL ccos
        FST a1_allp4
        FLD1
        FSUB alpha
        FST a2_allp4
    end;


    asm
        FINIT
        FLD a1_allp1
        FDIV a0_allp1
        FST a1_allp1
        FLD a2_allp1
        FDIV a0_allp1
        FST a2_allp1
        FLD b0_allp1
        FDIV a0_allp1
        FST b0_allp1
        FLD b1_allp1
        FDIV a0_allp1
        FST b1_allp1
        FLD b2_allp1
        FDIV a0_allp1
        FST b2_allp1

        FINIT
        FLD a1_allp2
        FDIV a0_allp2
        FST a1_allp2
        FLD a2_allp2
        FDIV a0_allp2
        FST a2_allp2
        FLD b0_allp2
        FDIV a0_allp2
        FST b0_allp2
        FLD b1_allp2
        FDIV a0_allp2
        FST b1_allp2
        FLD b2_allp2
        FDIV a0_allp2
        FST b2_allp2

        FINIT
        FLD a1_allp3
        FDIV a0_allp3
        FST a1_allp3
        FLD a2_allp3
        FDIV a0_allp3
        FST a2_allp3
        FLD b0_allp3
        FDIV a0_allp3
        FST b0_allp3
        FLD b1_allp3
        FDIV a0_allp3
        FST b1_allp3
        FLD b2_allp3
        FDIV a0_allp3
        FST b2_allp3

        FINIT
        FLD a1_allp4
        FDIV a0_allp4
        FST a1_allp4
        FLD a2_allp4
        FDIV a0_allp4
        FST a2_allp4
        FLD b0_allp4
        FDIV a0_allp4
        FST b0_allp4
        FLD b1_allp4
        FDIV a0_allp4
        FST b1_allp4
        FLD b2_allp4
        FDIV a0_allp4
        FST b2_allp4
    end;
end;

procedure TForm1._31Hz_NarrowTrackBarChange(Sender: TObject);
begin
    if UserPreset1.Checked then
    begin
        UserPreset1.Checked := FALSE;
        up1 := FALSE;
    end;
    if _31Hz_NarrowTrackBar.Position <= 0 then
        _31Hz_NarrowTrackBar.Hint := FloatToStrF((Abs(_31Hz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if _31Hz_NarrowTrackBar.Position > 0 then
        _31Hz_NarrowTrackBar.Hint := FloatToStrF((-_31Hz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1._62Hz_NarrowTrackBarChange(Sender: TObject);
begin
    if UserPreset1.Checked then
    begin
        UserPreset1.Checked := FALSE;
        up1 := FALSE;
    end;
    if _62Hz_NarrowTrackBar.Position <= 0 then
        _62Hz_NarrowTrackBar.Hint := FloatToStrF((Abs(_62Hz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if _62Hz_NarrowTrackBar.Position > 0 then
        _62Hz_NarrowTrackBar.Hint := FloatToStrF((-_62Hz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1._125Hz_NarrowTrackBarChange(Sender: TObject);
begin
    if UserPreset1.Checked then
    begin
        UserPreset1.Checked := FALSE;
        up1 := FALSE;
    end;
    if _125Hz_NarrowTrackBar.Position <= 0 then
        _125Hz_NarrowTrackBar.Hint := FloatToStrF((Abs(_125Hz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if _125Hz_NarrowTrackBar.Position > 0 then
        _125Hz_NarrowTrackBar.Hint := FloatToStrF((-_125Hz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1._250Hz_NarrowTrackBarChange(Sender: TObject);
begin
    if UserPreset1.Checked then
    begin
        UserPreset1.Checked := FALSE;
        up1 := FALSE;
    end;
    if _250Hz_NarrowTrackBar.Position <= 0 then
        _250Hz_NarrowTrackBar.Hint := FloatToStrF((Abs(_250Hz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if _250Hz_NarrowTrackBar.Position > 0 then
        _250Hz_NarrowTrackBar.Hint := FloatToStrF((-_250Hz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1._500Hz_NarrowTrackBarChange(Sender: TObject);
begin
    if UserPreset1.Checked then
    begin
        UserPreset1.Checked := FALSE;
        up1 := FALSE;
    end;
    if _500Hz_NarrowTrackBar.Position <= 0 then
        _500Hz_NarrowTrackBar.Hint := FloatToStrF((Abs(_500Hz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if _500Hz_NarrowTrackBar.Position > 0 then
        _500Hz_NarrowTrackBar.Hint := FloatToStrF((-_500Hz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1._1kHz_NarrowTrackBarChange(Sender: TObject);
begin
    if UserPreset1.Checked then
    begin
        UserPreset1.Checked := FALSE;
        up1 := FALSE;
    end;
    if _1kHz_NarrowTrackBar.Position <= 0 then
        _1kHz_NarrowTrackBar.Hint := FloatToStrF((Abs(_1kHz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if _1kHz_NarrowTrackBar.Position > 0 then
        _1kHz_NarrowTrackBar.Hint := FloatToStrF((-_1kHz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1._2kHz_NarrowTrackBarChange(Sender: TObject);
begin
    if UserPreset1.Checked then
    begin
        UserPreset1.Checked := FALSE;
        up1 := FALSE;
    end;
    if _2kHz_NarrowTrackBar.Position <= 0 then
        _2kHz_NarrowTrackBar.Hint := FloatToStrF((Abs(_2kHz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if _2kHz_NarrowTrackBar.Position > 0 then
        _2kHz_NarrowTrackBar.Hint := FloatToStrF((-_2kHz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1._4kHz_NarrowTrackBarChange(Sender: TObject);
begin
    if UserPreset1.Checked then
    begin
        UserPreset1.Checked := FALSE;
        up1 := FALSE;
    end;
    if _4kHz_NarrowTrackBar.Position <= 0 then
        _4kHz_NarrowTrackBar.Hint := FloatToStrF((Abs(_4kHz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if _4kHz_NarrowTrackBar.Position > 0 then
        _4kHz_NarrowTrackBar.Hint := FloatToStrF((-_4kHz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1._8kHz_NarrowTrackBarChange(Sender: TObject);
begin
    if UserPreset1.Checked then
    begin
        UserPreset1.Checked := FALSE;
        up1 := FALSE;
    end;
    if _8kHz_NarrowTrackBar.Position <= 0 then
        _8kHz_NarrowTrackBar.Hint := FloatToStrF((Abs(_8kHz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if _8kHz_NarrowTrackBar.Position > 0 then
        _8kHz_NarrowTrackBar.Hint := FloatToStrF((-_8kHz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1._16kHz_NarrowTrackBarChange(Sender: TObject);
begin
    if UserPreset1.Checked then
    begin
        UserPreset1.Checked := FALSE;
        up1 := FALSE;
    end;
    if _16kHz_NarrowTrackBar.Position <= 0 then
        _16kHz_NarrowTrackBar.Hint := FloatToStrF((Abs(_16kHz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if _16kHz_NarrowTrackBar.Position > 0 then
        _16kHz_NarrowTrackBar.Hint := FloatToStrF((-_16kHz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1.gain_NarrowTrackBarChange(Sender: TObject);
begin
    if gain_NarrowTrackBar.Position <= 0 then
        gain_NarrowTrackBar.Hint := FloatToStrF((Abs(gain_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
    else if gain_NarrowTrackBar.Position > 0 then
        gain_NarrowTrackBar.Hint := FloatToStrF((-gain_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1.LinearMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    if not bypass then
    begin
        if (Button = mbLeft) and not ((ssShift in Shift) or (ssRight in Shift)) then
        begin
            _31Hz_NarrowTrackBar.Position := 0;
            _62Hz_NarrowTrackBar.Position := 0;
            _125Hz_NarrowTrackBar.Position := 0;
            _250Hz_NarrowTrackBar.Position := 0;
            _500Hz_NarrowTrackBar.Position := 0;
            _1kHz_NarrowTrackBar.Position := 0;
            _2kHz_NarrowTrackBar.Position := 0;
            _4kHz_NarrowTrackBar.Position := 0;
            _8kHz_NarrowTrackBar.Position := 0;
            _16kHz_NarrowTrackBar.Position := 0;
            s_31_NarrowTrackBar.Position := 1;
            q_62_NarrowTrackBar.Position := 3;
            q_125_NarrowTrackBar.Position := 3;
            q_250_NarrowTrackBar.Position := 3;
            q_500_NarrowTrackBar.Position := 3;
            q_1k_NarrowTrackBar.Position := 3;
            q_2k_NarrowTrackBar.Position := 3;
            q_4k_NarrowTrackBar.Position := 3;
            q_8k_NarrowTrackBar.Position := 3;
            s_16k_NarrowTrackBar.Position := 6;
            gain_NarrowTrackBar.Position := 0;
            System.Exit;
        end;
    end;
    if (ssShift in Shift) or (ssRight in Shift) then
    begin
        if bypass then
        begin
            _31Hz_NarrowTrackBar.Position := tp31;
            _62Hz_NarrowTrackBar.Position := tp62;
            _125Hz_NarrowTrackBar.Position := tp125;
            _250Hz_NarrowTrackBar.Position := tp250;
            _500Hz_NarrowTrackBar.Position := tp500;
            _1kHz_NarrowTrackBar.Position := tp1k;
            _2kHz_NarrowTrackBar.Position := tp2k;
            _4kHz_NarrowTrackBar.Position := tp4k;
            _8kHz_NarrowTrackBar.Position := tp8k;
            _16kHz_NarrowTrackBar.Position := tp16k;
            s_31_NarrowTrackBar.Position := tps31;
            q_62_NarrowTrackBar.Position := tpq62;
            q_125_NarrowTrackBar.Position := tpq125;
            q_250_NarrowTrackBar.Position := tpq250;
            q_500_NarrowTrackBar.Position := tpq500;
            q_1k_NarrowTrackBar.Position := tpq1k;
            q_2k_NarrowTrackBar.Position := tpq2k;
            q_4k_NarrowTrackBar.Position := tpq4k;
            q_8k_NarrowTrackBar.Position := tpq8k;
            s_16k_NarrowTrackBar.Position := tps16k;
            gain_NarrowTrackBar.Position := tpgain;
            _31Hz_NarrowTrackBar.Enabled := TRUE;
            _62Hz_NarrowTrackBar.Enabled := TRUE;
            _125Hz_NarrowTrackBar.Enabled := TRUE;
            _250Hz_NarrowTrackBar.Enabled := TRUE;
            _500Hz_NarrowTrackBar.Enabled := TRUE;
            _1kHz_NarrowTrackBar.Enabled := TRUE;
            _2kHz_NarrowTrackBar.Enabled := TRUE;
            _4kHz_NarrowTrackBar.Enabled := TRUE;
            _8kHz_NarrowTrackBar.Enabled := TRUE;
            _16kHz_NarrowTrackBar.Enabled := TRUE;
            s_31_NarrowTrackBar.Enabled := TRUE;
            q_62_NarrowTrackBar.Enabled := TRUE;
            q_125_NarrowTrackBar.Enabled := TRUE;
            q_250_NarrowTrackBar.Enabled := TRUE;
            q_500_NarrowTrackBar.Enabled := TRUE;
            q_1k_NarrowTrackBar.Enabled := TRUE;
            q_2k_NarrowTrackBar.Enabled := TRUE;
            q_4k_NarrowTrackBar.Enabled := TRUE;
            q_8k_NarrowTrackBar.Enabled := TRUE;
            s_16k_NarrowTrackBar.Enabled := TRUE;
            gain_NarrowTrackBar.Enabled := TRUE;
            bypass := FALSE;
            if not UserPreset1.Enabled and up1 and UserPreset1.Checked then
                UserPreset1.Enabled := TRUE;
            System.Exit;
        end
        else if not bypass then
        begin
            tp31 := _31Hz_NarrowTrackBar.Position;
            tp62 := _62Hz_NarrowTrackBar.Position;
            tp125 := _125Hz_NarrowTrackBar.Position;
            tp250 := _250Hz_NarrowTrackBar.Position;
            tp500 := _500Hz_NarrowTrackBar.Position;
            tp1k := _1kHz_NarrowTrackBar.Position;
            tp2k := _2kHz_NarrowTrackBar.Position;
            tp4k := _4kHz_NarrowTrackBar.Position;
            tp8k := _8kHz_NarrowTrackBar.Position;
            tp16k := _16kHz_NarrowTrackBar.Position;
            tps31 := s_31_NarrowTrackBar.Position;
            tpq62 := q_62_NarrowTrackBar.Position;
            tpq125 := q_125_NarrowTrackBar.Position;
            tpq250 := q_250_NarrowTrackBar.Position;
            tpq500 := q_500_NarrowTrackBar.Position;
            tpq1k := q_1k_NarrowTrackBar.Position;
            tpq2k := q_2k_NarrowTrackBar.Position;
            tpq4k := q_4k_NarrowTrackBar.Position;
            tpq8k := q_8k_NarrowTrackBar.Position;
            tps16k := s_16k_NarrowTrackBar.Position;
            tpgain := gain_NarrowTrackBar.Position;
            _31Hz_NarrowTrackBar.Enabled := FALSE;
            _62Hz_NarrowTrackBar.Enabled := FALSE;
            _125Hz_NarrowTrackBar.Enabled := FALSE;
            _250Hz_NarrowTrackBar.Enabled := FALSE;
            _500Hz_NarrowTrackBar.Enabled := FALSE;
            _1kHz_NarrowTrackBar.Enabled := FALSE;
            _2kHz_NarrowTrackBar.Enabled := FALSE;
            _4kHz_NarrowTrackBar.Enabled := FALSE;
            _8kHz_NarrowTrackBar.Enabled := FALSE;
            _16kHz_NarrowTrackBar.Enabled := FALSE;
            s_31_NarrowTrackBar.Enabled := FALSE;
            q_62_NarrowTrackBar.Enabled := FALSE;
            q_125_NarrowTrackBar.Enabled := FALSE;
            q_250_NarrowTrackBar.Enabled := FALSE;
            q_500_NarrowTrackBar.Enabled := FALSE;
            q_1k_NarrowTrackBar.Enabled := FALSE;
            q_2k_NarrowTrackBar.Enabled := FALSE;
            q_4k_NarrowTrackBar.Enabled := FALSE;
            q_8k_NarrowTrackBar.Enabled := FALSE;
            s_16k_NarrowTrackBar.Enabled := FALSE;
            gain_NarrowTrackBar.Enabled := FALSE;
            If UserPreset1.Enabled and UserPreset1.Checked then
                UserPreset1.Enabled := FALSE;
            bypass := TRUE;
        end;
    end;
end;

procedure TForm1.s_31_NarrowTrackBarChange(Sender: TObject);
begin
    Slope_31 := abs(-6+(s_31_NarrowTrackBar.Position-1))/6;
    CalcCoeffs;
    Slope_31 := abs(-6+(s_31_NarrowTrackBar.Position-1))/6;
    CalcCoeffs;
    DisplayHint(Self);
end;

procedure TForm1.q_62_NarrowTrackBarChange(Sender: TObject);
begin
    Q_62 := Power(2, (1/(2*bw[q_62_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_62_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    Q_62 := Power(2, (1/(2*bw[q_62_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_62_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    DisplayHint(Self);
end;

procedure TForm1.q_125_NarrowTrackBarChange(Sender: TObject);
begin
    Q_125 := Power(2, (1/(2*bw[q_125_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_125_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    Q_125 := Power(2, (1/(2*bw[q_125_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_125_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    DisplayHint(Self);
end;

procedure TForm1.q_250_NarrowTrackBarChange(Sender: TObject);
begin
    Q_250 := Power(2, (1/(2*bw[q_250_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_250_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    Q_250 := Power(2, (1/(2*bw[q_250_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_250_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    DisplayHint(Self);
end;

procedure TForm1.q_500_NarrowTrackBarChange(Sender: TObject);
begin
    Q_500 := Power(2, (1/(2*bw[q_500_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_500_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    Q_500 := Power(2, (1/(2*bw[q_500_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_500_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    DisplayHint(Self);
end;

procedure TForm1.q_1k_NarrowTrackBarChange(Sender: TObject);
begin
    Q_1k := Power(2, (1/(2*bw[q_1k_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_1k_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    Q_1k := Power(2, (1/(2*bw[q_1k_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_1k_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    DisplayHint(Self);
end;

procedure TForm1.q_2k_NarrowTrackBarChange(Sender: TObject);
begin
    Q_2k := Power(2, (1/(2*bw[q_2k_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_2k_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    Q_2k := Power(2, (1/(2*bw[q_2k_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_2k_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    DisplayHint(Self);
end;

procedure TForm1.q_4k_NarrowTrackBarChange(Sender: TObject);
begin
    Q_4k := Power(2, (1/(2*bw[q_4k_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_4k_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    Q_4k := Power(2, (1/(2*bw[q_4k_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_4k_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    DisplayHint(Self);
end;

procedure TForm1.q_8k_NarrowTrackBarChange(Sender: TObject);
begin
    Q_8k := Power(2, (1/(2*bw[q_8k_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_8k_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    Q_8k := Power(2, (1/(2*bw[q_8k_NarrowTrackBar.Position])))/(Power(2, (1/bw[q_8k_NarrowTrackBar.Position])) - 1);
    CalcCoeffs;
    DisplayHint(Self);
end;

procedure TForm1.s_16k_NarrowTrackBarChange(Sender: TObject);
begin
    Slope_16k := s_16k_NarrowTrackBar.Position/6;
    CalcCoeffs;
    Slope_16k := s_16k_NarrowTrackBar.Position/6;
    CalcCoeffs;
    DisplayHint(Self);
end;

procedure TForm1.DisplayHint(Sender: TObject);
begin
  s_31_NarrowTrackBar.Hint := 'Slope = ' + FloatToStrF(Slope_31, ffNumber, 15, 2);
  q_62_NarrowTrackBar.Hint := 'Q: ' + FloatToStrF(Q_62, ffNumber, 15, 2);
  q_125_NarrowTrackBar.Hint := 'Q: ' + FloatToStrF(Q_125, ffNumber, 15, 2);
  q_250_NarrowTrackBar.Hint := 'Q: ' + FloatToStrF(Q_250, ffNumber, 15, 2);
  q_500_NarrowTrackBar.Hint := 'Q: ' + FloatToStrF(Q_500, ffNumber, 15, 2);
  q_1k_NarrowTrackBar.Hint := 'Q: ' + FloatToStrF(Q_1k, ffNumber, 15, 2);
  q_2k_NarrowTrackBar.Hint := 'Q: ' + FloatToStrF(Q_2k, ffNumber, 15, 2);
  q_4k_NarrowTrackBar.Hint := 'Q: ' + FloatToStrF(Q_4k, ffNumber, 15, 2);
  q_8k_NarrowTrackBar.Hint := 'Q: ' + FloatToStrF(Q_8k, ffNumber, 15, 2);
  s_16k_NarrowTrackBar.Hint := 'Slope = ' + FloatToStrF(Slope_16k, ffNumber, 15, 2);
  if _31Hz_NarrowTrackBar.Position <= 0 then
    _31Hz_NarrowTrackBar.Hint := FloatToStrF((Abs(_31Hz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if _31Hz_NarrowTrackBar.Position > 0 then
    _31Hz_NarrowTrackBar.Hint := FloatToStrF((-_31Hz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
  if _62Hz_NarrowTrackBar.Position <= 0 then
    _62Hz_NarrowTrackBar.Hint := FloatToStrF((Abs(_62Hz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if _62Hz_NarrowTrackBar.Position > 0 then
    _62Hz_NarrowTrackBar.Hint := FloatToStrF((-_62Hz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
  if _125Hz_NarrowTrackBar.Position <= 0 then
    _125Hz_NarrowTrackBar.Hint := FloatToStrF((Abs(_125Hz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if _125Hz_NarrowTrackBar.Position > 0 then
    _125Hz_NarrowTrackBar.Hint := FloatToStrF((-_125Hz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
  if _250Hz_NarrowTrackBar.Position <= 0 then
    _250Hz_NarrowTrackBar.Hint := FloatToStrF((Abs(_250Hz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if _250Hz_NarrowTrackBar.Position > 0 then
    _250Hz_NarrowTrackBar.Hint := FloatToStrF((-_250Hz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
  if _500Hz_NarrowTrackBar.Position <= 0 then
    _500Hz_NarrowTrackBar.Hint := FloatToStrF((Abs(_500Hz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if _500Hz_NarrowTrackBar.Position > 0 then
    _500Hz_NarrowTrackBar.Hint := FloatToStrF((-_500Hz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
  if _1kHz_NarrowTrackBar.Position <= 0 then
    _1kHz_NarrowTrackBar.Hint := FloatToStrF((Abs(_1kHz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if _1kHz_NarrowTrackBar.Position > 0 then
    _1kHz_NarrowTrackBar.Hint := FloatToStrF((-_1kHz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
  if _2kHz_NarrowTrackBar.Position <= 0 then
    _2kHz_NarrowTrackBar.Hint := FloatToStrF((Abs(_2kHz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if _2kHz_NarrowTrackBar.Position > 0 then
    _2kHz_NarrowTrackBar.Hint := FloatToStrF((-_2kHz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
  if _4kHz_NarrowTrackBar.Position <= 0 then
    _4kHz_NarrowTrackBar.Hint := FloatToStrF((Abs(_4kHz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if _4kHz_NarrowTrackBar.Position > 0 then
    _4kHz_NarrowTrackBar.Hint := FloatToStrF((-_4kHz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
  if _8kHz_NarrowTrackBar.Position <= 0 then
    _8kHz_NarrowTrackBar.Hint := FloatToStrF((Abs(_8kHz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if _8kHz_NarrowTrackBar.Position > 0 then
    _8kHz_NarrowTrackBar.Hint := FloatToStrF((-_8kHz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
  if _16kHz_NarrowTrackBar.Position <= 0 then
    _16kHz_NarrowTrackBar.Hint := FloatToStrF((Abs(_16kHz_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if _16kHz_NarrowTrackBar.Position > 0 then
    _16kHz_NarrowTrackBar.Hint := FloatToStrF((-_16kHz_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
  if gain_NarrowTrackBar.Position <= 0 then
    gain_NarrowTrackBar.Hint := FloatToStrF((Abs(gain_NarrowTrackBar.Position)/2), ffGeneral, 15, 1)
  else if gain_NarrowTrackBar.Position > 0 then
    gain_NarrowTrackBar.Hint := FloatToStrF((-gain_NarrowTrackBar.Position/2), ffGeneral, 15, 1);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
    if e then Application.Terminate;
end;


procedure TForm1.Phaser1Click(Sender: TObject);
begin
    if (phaser) then
    begin
        phaser := False;
        Phaser1.Checked := False;
    end
    else
    begin
        phaser := True;
        Phaser1.Checked := True;;
        cfr := 125;
        Phase();
    end;
end;

procedure TForm1.VU1Click(Sender: TObject);
begin
    if (VU1.Checked = False) then
    begin
        if (b = FALSE) then
        begin
            Form2:=TForm2.Create(self);
{       Form2.Visible := TRUE;}
            b := TRUE;
            VU1.Checked := True;
            Form2.Show;
        end;
    end
    else
    begin
        Form2.Close;
        VU1.Checked := False;
    end;
end;

procedure TForm1.Scope1Click(Sender: TObject);
begin
    if (Scope1.Checked = False) then
    begin
        if (o = FALSE) then
        begin
            Form3:=TForm3.Create(self);
            o := TRUE;
            Scope1.Checked := True;
            Form3.Show;
        end;
    end
    else
    begin
        Form3.Close;
        Scope1.Checked := False;
    end;
end;

procedure TForm1.PlayfileClick(Sender: TObject);
begin
    if OpenFileDialog.Execute then
    begin
        try
            Assignfile(f2, OpenFileDialog.FileName);
{    Rewrite(f);}
            Reset(f2);
            Seek(f2, 44);
            fopen := True;
            PlayControl.Show;
        except
            CloseFile(F);
        end;
    end;
end;

procedure TForm1.AcceptFiles( var msg : TMessage );
const
  cnMaxFileNameLen = 255;
var
  i,
  nCount     : integer;
  acFileName : array [0..cnMaxFileNameLen] of char;
begin
  // find out how many files we're accepting
  nCount := DragQueryFile( msg.WParam,
                           $FFFFFFFF,
                           acFileName,
                           cnMaxFileNameLen );

  // query Windows one at a time for the file name
  for i := 0 to nCount-1 do
  begin
    DragQueryFile( msg.WParam, i,
                   acFileName, cnMaxFileNameLen );

    // do your thing with the acFileName
        try
            Assignfile(f2, acFileName);
{    Rewrite(f);}
            Reset(f2);
            Seek(f2, 44);
            fopen := True;
            PlayControl.Show;
        except
            CloseFile(F);
        end;

{    MessageBox( Handle, acFileName, '', MB_OK );}
  end;

  // let Windows know that you're done
  DragFinish( msg.WParam );
end;



end.







