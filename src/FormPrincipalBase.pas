unit FormPrincipalBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, DataConexao,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, FrameConfiguracao, FrameRelatorio,
  Vcl.Menus;

type
  TPrincipalBase = class(TForm)
    fdqryDadosUser: TFDQuery;
    Panel1: TPanel;
    pnlTela: TPanel;
    Panel2: TPanel;
    btnConfiguracao: TSpeedButton;
    btnRelatorio: TSpeedButton;
    Panel3: TPanel;
    Image1: TImage;
    lblNomeCompleto: TLabel;
    btnSair: TSpeedButton;
    TrayIcon: TTrayIcon;
    PopupMenu: TPopupMenu;
    miRestaurar: TMenuItem;
    miSair: TMenuItem;
    pnlBarra: TPanel;
    btnFechar: TSpeedButton;
    btnMinimizar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfiguracaoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure miRestaurarClick(Sender: TObject);
    procedure miSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure btnMinimizarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    FUserId: Integer;
    FActiveFrame: TFrame;
    procedure SetUserId(const Value: Integer);
    procedure ShowFrame<T: TFrame>;
    procedure HideAllFrames;
    procedure RestaurarApp;
    { Private declarations }
  public
    { Public declarations }
  published
    property UserId: Integer read FUserId write SetUserId;
  end;

var
  PrincipalBase: TPrincipalBase;

implementation

uses
  FormTelaLogin;

{$R *.dfm}

{ TPrincipalBase }

procedure TPrincipalBase.SetUserId(const Value: Integer);
begin
  FUserId := Value;
end;

procedure TPrincipalBase.TrayIconDblClick(Sender: TObject);
begin
  RestaurarApp;
end;

procedure TPrincipalBase.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPrincipalBase.FormCreate(Sender: TObject);
begin
  SetBounds(0, 0, Screen.Width, Screen.Height);
  TrayIcon.Icon := Application.Icon;
  TrayIcon.Visible := True;

  fdqryDadosUser.Close;
  fdqryDadosUser.ParamByName('USER_ID').AsInteger := UserId;
  fdqryDadosUser.Open;

  {TrayIcon.BalloonTitle := 'Sistema Minimizado';
  TrayIcon.BalloonHint := 'O sistema foi minimizado para a área de notificação.';
  TrayIcon.ShowBalloonHint; }
end;

procedure TPrincipalBase.FormResize(Sender: TObject);
begin
  if Self.WindowState = wsMinimized then
  begin
    Hide;
    TrayIcon.Visible := True;
  end;
end;

procedure TPrincipalBase.HideAllFrames;
var
  i: Integer;
begin
  for i := 0 to pnlTela.ControlCount - 1 do
  begin
    if pnlTela.Controls[i] is TFrame then
      pnlTela.Controls[i].Visible := False;
  end;
end;

procedure TPrincipalBase.RestaurarApp;
begin
  Self.Show;
  Self.WindowState := wsMaximized;
  Self.BringToFront;
  SetForegroundWindow(Handle);
end;

procedure TPrincipalBase.miRestaurarClick(Sender: TObject);
begin
  RestaurarApp;
end;

procedure TPrincipalBase.miSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TPrincipalBase.ShowFrame<T>;
var
  Frame: T;
begin
  HideAllFrames;

  Frame := T(FindComponent(T.ClassName));

  if not Assigned(Frame) then
  begin
    Frame := T.Create(Self);
    Frame.Name := T.ClassName;;
    Frame.Parent := pnlTela;
    Frame.Align := alClient;
  end;

  Frame.Visible := True;
  FActiveFrame := Frame;
end;

procedure TPrincipalBase.btnConfiguracaoClick(Sender: TObject);
begin
  ShowFrame<TFrameConfig>;
end;

procedure TPrincipalBase.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TPrincipalBase.btnMinimizarClick(Sender: TObject);
begin
  Self.WindowState := wsMinimized;
end;

procedure TPrincipalBase.btnRelatorioClick(Sender: TObject);
begin
  ShowFrame<TRelatorioFrame>;
end;

procedure TPrincipalBase.btnSairClick(Sender: TObject);
begin
  HideAllFrames;
  Self.Close;
end;

end.
