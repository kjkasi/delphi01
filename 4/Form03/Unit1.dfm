object Form1: TForm1
  Left = 480
  Top = 215
  Width = 475
  Height = 272
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 128
    Width = 409
    Height = 72
    Caption = '0'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    PopupMenu = PopupMenu1
  end
  object CurrentTime: TLabel
    Left = 8
    Top = 8
    Width = 6
    Height = 13
    Caption = '0'
    PopupMenu = PopupMenu2
  end
  object Edit1: TEdit
    Left = 48
    Top = 40
    Width = 121
    Height = 44
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '0'
  end
  object Edit2: TEdit
    Left = 296
    Top = 40
    Width = 121
    Height = 44
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = '0'
  end
  object Button1: TButton
    Left = 184
    Top = 24
    Width = 41
    Height = 33
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 24
    Width = 41
    Height = 33
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button3: TButton
    Left = 184
    Top = 72
    Width = 41
    Height = 33
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Button4: TButton
    Left = 240
    Top = 72
    Width = 41
    Height = 33
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 416
    Top = 96
  end
  object MainMenu1: TMainMenu
    Left = 384
    Top = 96
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N7: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N7Click
      end
    end
    object N2: TMenuItem
      Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
      object N4: TMenuItem
        Caption = #1054#1087#1077#1088#1072#1094#1080#1080
        object N5: TMenuItem
          Caption = #1057#1083#1086#1078#1077#1085#1080#1077
          OnClick = Button1Click
        end
        object N6: TMenuItem
          Caption = #1042#1099#1095#1080#1090#1072#1085#1080#1077
        end
      end
    end
    object N3: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 96
    object N8: TMenuItem
      Caption = #1057#1083#1086#1078#1077#1085#1080#1077
      OnClick = Button1Click
    end
    object N9: TMenuItem
      Caption = #1042#1099#1095#1080#1090#1072#1085#1080#1077
    end
    object N10: TMenuItem
      Caption = #1059#1084#1085#1086#1078#1077#1085#1080#1077
    end
    object N11: TMenuItem
      Caption = #1044#1077#1083#1077#1085#1080#1077
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 320
    Top = 96
    object N12: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N7Click
    end
  end
end
