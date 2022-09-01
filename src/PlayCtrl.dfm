object Playcontrol: TPlaycontrol
  Left = 201
  Top = 270
  BorderStyle = bsToolWindow
  Caption = 'Playcontrol'
  ClientHeight = 186
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 120
    Width = 42
    Height = 37
    Alignment = taCenter
    AutoSize = False
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 144
    Top = 120
    Width = 40
    Height = 37
    Alignment = taCenter
    AutoSize = False
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 132
    Top = 117
    Width = 9
    Height = 37
    Alignment = taCenter
    AutoSize = False
    Caption = ':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 24
    Top = 112
    Width = 225
    Height = 57
  end
  object FR: TButton
    Left = 16
    Top = 16
    Width = 49
    Height = 33
    Caption = '<<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Play: TButton
    Left = 64
    Top = 16
    Width = 49
    Height = 33
    Caption = '>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = PlayClick
  end
  object FF: TButton
    Left = 112
    Top = 16
    Width = 49
    Height = 33
    Caption = '>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = FFClick
  end
  object Pause: TButton
    Left = 160
    Top = 16
    Width = 49
    Height = 33
    Caption = '| |'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = PauseClick
  end
  object Power: TButton
    Left = 208
    Top = 16
    Width = 49
    Height = 33
    Caption = 'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = PowerClick
  end
  object Fpos: TNarrowTrackBar
    Left = 16
    Top = 72
    Width = 241
    Height = 25
    Orientation = trHorizontal
    Frequency = 1
    Position = 0
    SelEnd = 0
    SelStart = 0
    TabOrder = 5
    ThumbLength = 15
    TickMarks = tmTopLeft
    TickStyle = tsNone
    OnChange = FposChange
    EnableSelRange = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 216
    Top = 112
  end
end
