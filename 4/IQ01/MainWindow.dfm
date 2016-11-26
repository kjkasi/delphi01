object Form1: TForm1
  Left = 278
  Top = 56
  Width = 697
  Height = 336
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RightPanel: TPanel
    Left = 504
    Top = 0
    Width = 185
    Height = 261
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object Label4: TLabel
      Left = 16
      Top = 152
      Width = 55
      Height = 13
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090':'
    end
    object MyResult: TLabel
      Left = 24
      Top = 168
      Width = 24
      Height = 49
      Caption = '?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -43
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 261
    Width = 689
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object RightBottomCorner: TPanel
      Left = 545
      Top = 0
      Width = 144
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Button1: TButton
        Left = 32
        Top = 8
        Width = 99
        Height = 25
        Caption = #1047#1072#1082#1086#1085#1095#1080#1090#1100' '#1090#1077#1089#1090
        TabOrder = 0
        OnClick = Button1Click
      end
    end
  end
  object MainArea: TPanel
    Left = 0
    Top = 0
    Width = 504
    Height = 261
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object Cards: TPageControl
      Left = 0
      Top = 0
      Width = 504
      Height = 261
      ActivePage = Astronomy
      Align = alClient
      TabOrder = 0
      object History: TTabSheet
        Caption = #1048#1089#1090#1086#1088#1080#1103
        object QHistory: TLabel
          Left = 24
          Top = 16
          Width = 275
          Height = 20
          Caption = #1047#1076#1077#1089#1100' '#1073#1091#1076#1077#1090' '#1080#1089#1090#1086#1088#1080#1095#1077#1089#1082#1080#1081' '#1074#1086#1087#1088#1086#1089'...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object History1: TButton
          Left = 72
          Top = 88
          Width = 120
          Height = 40
          Caption = #1042#1072#1088#1080#1072#1085#1090' 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = History1Click
        end
        object History3: TButton
          Left = 72
          Top = 160
          Width = 120
          Height = 40
          Caption = #1042#1072#1088#1080#1072#1085#1090' 3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = History3Click
        end
        object History2: TButton
          Left = 320
          Top = 88
          Width = 120
          Height = 40
          Caption = #1042#1072#1088#1080#1072#1085#1090' 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = History2Click
        end
        object History4: TButton
          Left = 320
          Top = 160
          Width = 120
          Height = 40
          Caption = #1042#1072#1088#1080#1072#1085#1090' 4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = History4Click
        end
      end
      object Geography: TTabSheet
        Caption = #1043#1077#1086#1075#1088#1072#1092#1080#1103
        ImageIndex = 1
        object QGeography: TLabel
          Left = 24
          Top = 16
          Width = 260
          Height = 18
          Caption = #1047#1076#1077#1089#1100' '#1073#1091#1076#1077#1090' '#1074#1086#1087#1088#1086#1089' '#1087#1086' '#1075#1077#1086#1075#1088#1072#1092#1080#1080'...'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Geo: TRadioGroup
          Left = 24
          Top = 56
          Width = 425
          Height = 113
          Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1088#1072#1074#1080#1083#1100#1085#1099#1081' '#1074#1072#1088#1080#1072#1085#1090': '
          Columns = 2
          Items.Strings = (
            #1042#1072#1088#1080#1072#1085#1090' 1'
            #1042#1072#1088#1080#1072#1085#1090' 2'
            #1042#1072#1088#1080#1072#1085#1090' 3'
            #1042#1072#1088#1080#1072#1085#1090' 4')
          TabOrder = 0
        end
        object Button6: TButton
          Left = 24
          Top = 184
          Width = 75
          Height = 25
          Caption = #1054#1090#1074#1077#1090#1080#1090#1100
          TabOrder = 1
          OnClick = Button6Click
        end
      end
      object Astronomy: TTabSheet
        Caption = #1040#1089#1090#1088#1086#1085#1086#1084#1080#1103
        ImageIndex = 2
        object QAstronomy: TLabel
          Left = 24
          Top = 16
          Width = 54
          Height = 18
          Caption = #1042#1086#1087#1088#1086#1089
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Planets: TListBox
          Left = 48
          Top = 64
          Width = 121
          Height = 97
          ItemHeight = 13
          Items.Strings = (
            #1042#1072#1088#1080#1072#1085#1090' 1'
            #1042#1072#1088#1080#1072#1085#1090' 2'
            #1042#1072#1088#1080#1072#1085#1090' 3'
            #1042#1072#1088#1080#1072#1085#1090' 4')
          TabOrder = 0
        end
        object Button7: TButton
          Left = 32
          Top = 184
          Width = 75
          Height = 25
          Caption = #1054#1090#1074#1077#1090#1080#1090#1100
          TabOrder = 1
          OnClick = Button7Click
        end
      end
      object TabSheet4: TTabSheet
        Caption = #1051#1080#1090#1077#1088#1072#1090#1091#1088#1072
        ImageIndex = 3
      end
      object TabSheet5: TTabSheet
        Caption = #1041#1080#1086#1083#1086#1075#1080#1103
        ImageIndex = 4
      end
    end
  end
end
