object Form2: TForm2
  Left = 325
  Top = 239
  AlphaBlendValue = 200
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'VU Meters'
  ClientHeight = 189
  ClientWidth = 485
  Color = clBtnFace
  UseDockManager = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDblClick = FormDblClick
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 10
    Top = 16
    Width = 225
    Height = 161
    Caption = 'Left'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    object Bevel1: TBevel
      Left = 19
      Top = 25
      Width = 184
      Height = 114
    end
    object Image1: TImage
      Left = 21
      Top = 27
      Width = 180
      Height = 110
      Stretch = True
    end
    object Label2: TLabel
      Left = 96
      Top = 100
      Width = 32
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'VU'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Shape3: TShape
      Left = 102
      Top = 137
      Width = 19
      Height = 2
      Pen.Color = clBtnFace
    end
    object Shape4: TShape
      Left = 101
      Top = 137
      Width = 1
      Height = 2
      Pen.Color = clWhite
    end
  end
  object GroupBox2: TGroupBox
    Left = 250
    Top = 16
    Width = 225
    Height = 161
    Caption = 'Right'
    TabOrder = 1
    object Bevel2: TBevel
      Left = 19
      Top = 25
      Width = 184
      Height = 114
    end
    object Image2: TImage
      Left = 21
      Top = 27
      Width = 180
      Height = 110
      Stretch = True
    end
    object Label1: TLabel
      Left = 96
      Top = 100
      Width = 32
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'VU'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Shape5: TShape
      Left = 102
      Top = 137
      Width = 19
      Height = 2
      Pen.Color = clBtnFace
    end
    object Shape6: TShape
      Left = 101
      Top = 137
      Width = 1
      Height = 2
      Pen.Color = clWhite
    end
  end
end
