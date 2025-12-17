object PrincipalBase: TPrincipalBase
  Left = 403
  Top = 213
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  Align = alClient
  AutoSize = True
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  ClientHeight = 605
  ClientWidth = 994
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 235
    Height = 580
    Align = alLeft
    TabOrder = 0
    StyleElements = [seClient, seBorder]
    object Panel2: TPanel
      Left = 1
      Top = 169
      Width = 233
      Height = 410
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object btnConfiguracao: TSpeedButton
        Left = 0
        Top = 41
        Width = 233
        Height = 39
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Configura'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnConfiguracaoClick
        ExplicitLeft = -2
      end
      object btnRelatorio: TSpeedButton
        Left = 0
        Top = 0
        Width = 233
        Height = 41
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Relat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnRelatorioClick
        ExplicitLeft = 3
        ExplicitTop = 14
        ExplicitWidth = 185
      end
      object btnSair: TSpeedButton
        Left = 0
        Top = 80
        Width = 233
        Height = 39
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -18
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnSairClick
        ExplicitTop = 297
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 233
      Height = 168
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        233
        168)
      object ImgUsuario: TImage
        Left = 68
        Top = 35
        Width = 97
        Height = 94
        Anchors = [akLeft, akTop, akRight, akBottom]
        Center = True
        Proportional = True
        Stretch = True
      end
      object lblNomeCompleto: TLabel
        AlignWithMargins = True
        Left = 0
        Top = 135
        Width = 233
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Caption = 'Nome Completo'
      end
    end
  end
  object pnlBarra: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 25
    Align = alTop
    TabOrder = 1
    object btnFechar: TSpeedButton
      Left = 960
      Top = 1
      Width = 33
      Height = 23
      Align = alRight
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnFecharClick
    end
    object btnMinimizar: TSpeedButton
      Left = 927
      Top = 1
      Width = 33
      Height = 23
      Align = alRight
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMinimizarClick
      ExplicitLeft = 960
    end
  end
  object pnlTela: TPanel
    Left = 235
    Top = 25
    Width = 759
    Height = 580
    Align = alClient
    TabOrder = 2
  end
  object TrayIcon: TTrayIcon
    Hint = 'Sistema de Folha de Ponto'
    PopupMenu = PopupMenu
    Left = 33
    Top = 17
  end
  object PopupMenu: TPopupMenu
    Left = 33
    Top = 81
    object miRestaurar: TMenuItem
      Caption = 'Restaurar'
    end
    object miSair: TMenuItem
      Caption = 'Sair'
    end
  end
end
