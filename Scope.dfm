object Form3: TForm3
  Left = 342
  Top = 151
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = 'Scope'
  ClientHeight = 245
  ClientWidth = 262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 233
    Height = 217
    TabOrder = 0
    object Image1: TImage
      Left = 14
      Top = 20
      Width = 204
      Height = 180
      Stretch = True
      OnClick = Image1Click
    end
  end
end
