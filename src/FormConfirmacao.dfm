object Confirmacao: TConfirmacao
  AlignWithMargins = True
  Left = 480
  Top = 354
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Configura'#231#227'o do banco de dados'
  ClientHeight = 129
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 15
  object pnlPricipal: TPanel
    Left = 0
    Top = 0
    Width = 385
    Height = 129
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object grdpnl1: TGridPanel
      Left = 0
      Top = 0
      Width = 385
      Height = 129
      Align = alTop
      BevelOuter = bvNone
      Caption = 'grdpnl1'
      ColumnCollection = <
        item
          Value = 7.000000000000000000
        end
        item
          Value = 42.819078411686450000
        end
        item
          Value = 42.992825047216020000
        end
        item
          Value = 7.188096541097536000
        end>
      ControlCollection = <
        item
          Column = 1
          ColumnSpan = 2
          Control = pnlLabel
          Row = 0
        end
        item
          Column = 1
          ColumnSpan = 2
          Control = pnlEdit
          Row = 1
        end
        item
          Column = 1
          Control = Btn1
          Row = 2
        end
        item
          Column = 2
          Control = Btn2
          Row = 2
        end>
      RowCollection = <
        item
          Value = 35.000000000000000000
        end
        item
          Value = 30.000000000000000000
        end
        item
          Value = 35.000000000000000000
        end>
      ShowCaption = False
      TabOrder = 0
      object pnlLabel: TPanel
        Left = 27
        Top = 0
        Width = 330
        Height = 45
        Align = alClient
        AutoSize = True
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 30
        ExplicitTop = 3
        ExplicitWidth = 325
        ExplicitHeight = 26
        object Lbl1: TLabel
          Left = 0
          Top = 0
          Width = 330
          Height = 45
          Align = alClient
          AutoSize = False
          Caption = 'Texto do label'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Layout = tlBottom
          WordWrap = True
          ExplicitTop = 11
          ExplicitWidth = 129
          ExplicitHeight = 30
        end
      end
      object pnlEdit: TPanel
        Left = 27
        Top = 45
        Width = 330
        Height = 39
        Align = alClient
        AutoSize = True
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        Visible = False
        ExplicitLeft = 30
        ExplicitTop = 35
        ExplicitWidth = 325
        ExplicitHeight = 26
        object Edt1: TEdit
          AlignWithMargins = True
          Left = 0
          Top = 5
          Width = 330
          Height = 34
          Margins.Left = 0
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 0
          TextHint = 'Digite seu texto'
          OnKeyPress = Edt1KeyPress
          ExplicitTop = 0
          ExplicitWidth = 324
          ExplicitHeight = 31
        end
      end
      object Btn1: TPanel
        AlignWithMargins = True
        Left = 27
        Top = 89
        Width = 160
        Height = 35
        Cursor = crHandPoint
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Caption = 'Sim'
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        StyleElements = [seBorder]
        OnClick = Btn1Click
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 120
      end
      object Btn2: TPanel
        AlignWithMargins = True
        Left = 197
        Top = 89
        Width = 160
        Height = 35
        Cursor = crHandPoint
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alClient
        Caption = 'N'#227'o'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        StyleElements = [seBorder]
        OnClick = Btn2Click
        ExplicitLeft = 265
        ExplicitTop = 4
        ExplicitWidth = 120
        ExplicitHeight = 33
      end
    end
  end
end
