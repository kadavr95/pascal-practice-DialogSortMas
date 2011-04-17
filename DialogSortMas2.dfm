object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 639
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Open: TButton
    Left = 8
    Top = 600
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = OpenClick
  end
  object Save: TButton
    Left = 89
    Top = 600
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 1
    OnClick = SaveClick
  end
  object odlg: TOpenDialog
    Left = 128
    Top = 88
  end
  object sdlg: TSaveDialog
    Left = 208
    Top = 88
  end
  object tme: TTimer
    Interval = 1
    OnTimer = tmeTimer
  end
end
