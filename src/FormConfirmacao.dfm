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
          Value = 7.018710097553784000
        end
        item
          Value = 85.945093732412260000
        end
        item
          Value = 7.036196170033955000
        end>
      ControlCollection = <
        item
          Column = 1
          Control = pnlLabel
          Row = 0
        end
        item
          Column = 1
          Control = pnlEdit
          Row = 1
        end
        item
          Column = 1
          Control = pnlBotoes
          Row = 2
        end>
      RowCollection = <
        item
          Value = 25.000000000000000000
        end
        item
          Value = 25.000000000000000000
        end
        item
          Value = 49.999999999999990000
        end>
      ShowCaption = False
      TabOrder = 0
      object pnlLabel: TPanel
        AlignWithMargins = True
        Left = 30
        Top = 3
        Width = 325
        Height = 26
        Align = alClient
        AutoSize = True
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitWidth = 379
        ExplicitHeight = 15
        object Lbl1: TLabel
          Left = 0
          Top = 11
          Width = 325
          Height = 15
          Align = alBottom
          Caption = 'Texto do label'
          WordWrap = True
          ExplicitWidth = 73
        end
      end
      object pnlEdit: TPanel
        AlignWithMargins = True
        Left = 30
        Top = 35
        Width = 325
        Height = 26
        Align = alClient
        AutoSize = True
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        Visible = False
        ExplicitLeft = 0
        ExplicitTop = 32
        ExplicitWidth = 385
        ExplicitHeight = 23
        object Edt1: TEdit
          Left = 0
          Top = 0
          Width = 325
          Height = 26
          Align = alClient
          PasswordChar = '*'
          TabOrder = 0
          TextHint = 'Digite seu texto'
          OnKeyPress = Edt1KeyPress
          ExplicitTop = 6
          ExplicitWidth = 331
          ExplicitHeight = 23
        end
      end
      object pnlBotoes: TPanel
        AlignWithMargins = True
        Left = 30
        Top = 67
        Width = 325
        Height = 41
        Align = alTop
        Anchors = []
        AutoSize = True
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 2
        object Btn1: TPanel
          Left = 0
          Top = 0
          Width = 153
          Height = 41
          Cursor = crHandPoint
          Caption = 'Sim'
          Color = clGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          StyleElements = [seBorder]
          OnClick = Btn1Click
        end
        object Btn2: TPanel
          Left = 175
          Top = 0
          Width = 153
          Height = 41
          Cursor = crHandPoint
          Caption = 'N'#227'o'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          StyleElements = [seBorder]
          OnClick = Btn2Click
        end
      end
    end
  end
end
