object Form1: TForm1
  Left = 375
  Top = 130
  Width = 593
  Height = 313
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 128
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Image1: TImage
    Left = 344
    Top = 56
    Width = 105
    Height = 105
  end
  object Edit1: TEdit
    Left = 40
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 184
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = N2Click
  end
  object BitBtn1: TBitBtn
    Left = 200
    Top = 136
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 2
  end
  object ControlBar1: TControlBar
    Left = 280
    Top = 168
    Width = 233
    Height = 50
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 11
      Top = 2
      Width = 23
      Height = 22
    end
    object SpeedButton2: TSpeedButton
      Left = 47
      Top = 2
      Width = 34
      Height = 22
    end
    object SpeedButton3: TSpeedButton
      Left = 94
      Top = 2
      Width = 0
      Height = 22
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 240
    Width = 585
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Text = 'fsdf'
        Width = 50
      end
      item
        Text = 'dsfd'
        Width = 50
      end
      item
        Width = 50
      end>
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 585
    Height = 29
    Caption = 'ToolBar1'
    TabOrder = 5
  end
  object MainMenu1: TMainMenu
    Left = 528
    Top = 152
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object N2: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
        OnClick = N2Click
      end
    end
  end
end
