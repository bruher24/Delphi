object Form1: TForm1
  Left = 210
  Top = 118
  Width = 723
  Height = 470
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 11
    Height = 20
    Caption = 'N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 88
    Width = 36
    Height = 20
    Caption = 'Xmin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 136
    Width = 40
    Height = 20
    Caption = 'Xmax'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 184
    Width = 9
    Height = 20
    Caption = 'h'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 192
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Label5'
  end
  object Label6: TLabel
    Left = 200
    Top = 80
    Width = 32
    Height = 13
    Caption = 'Label6'
  end
  object Edit1: TEdit
    Left = 64
    Top = 40
    Width = 81
    Height = 21
    TabOrder = 0
    Text = '10'
  end
  object Edit2: TEdit
    Left = 64
    Top = 88
    Width = 81
    Height = 21
    TabOrder = 1
    Text = '1'
  end
  object Edit3: TEdit
    Left = 64
    Top = 136
    Width = 81
    Height = 21
    TabOrder = 2
    Text = '3'
  end
  object Edit4: TEdit
    Left = 64
    Top = 176
    Width = 81
    Height = 21
    TabOrder = 3
    Text = '0,5'
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 240
    Width = 129
    Height = 41
    Caption = #1056#1072#1089#1095#1077#1090
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object Chart1: TChart
    Left = 256
    Top = 120
    Width = 409
    Height = 273
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    BottomAxis.Title.Caption = 'X'
    LeftAxis.Title.Angle = 180
    TabOrder = 5
    object Series1: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'S.re'
      LinePen.Color = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series2: TFastLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'S.im'
      LinePen.Color = clGreen
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
end
