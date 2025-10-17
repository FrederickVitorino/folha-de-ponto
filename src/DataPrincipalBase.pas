unit DataPrincipalBase;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Forms, Winapi.Windows, Vcl.Controls;

type
  TdtmPrincipalBase = class(TDataModule)
    fdqryDadosUser: TFDQuery;
    fdqryDadosUsernome_completo: TWideStringField;
    fdqryDadosUserlogin: TWideStringField;
    fdqryDadosUseremail: TWideStringField;
    fdqryDadosUseradmin: TBooleanField;
  private
    { Private declarations }
  public
    procedure ShowFrame<T: TFrame>;
    procedure HideAllFrames;
    procedure RestaurarApp();
  end;

var
  dtmPrincipalBase: TdtmPrincipalBase;

implementation

uses
  FormPrincipalBase;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdtmPrincipalBase.ShowFrame<T>;
var
  Frame: T;
begin
  with PrincipalBase do
  begin
    HideAllFrames;

    Frame := T(FindComponent(T.ClassName));

    if not Assigned(Frame) then
    begin
      Frame := T.Create(PrincipalBase);
      Frame.Name := T.ClassName;;
      Frame.Parent := pnlTela;
      Frame.Align := alClient;
    end;

    Frame.Visible := True;
    PrincipalBase.ActiveFrame := Frame;
  end;
end;

procedure TdtmPrincipalBase.HideAllFrames;
var
  i: Integer;
begin
  with PrincipalBase do
  begin
    for i := 0 to pnlTela.ControlCount - 1 do
    begin
      if pnlTela.Controls[i] is TFrame then
        pnlTela.Controls[i].Visible := False;
    end;
  end;
end;

procedure TdtmPrincipalBase.RestaurarApp;
begin
  with PrincipalBase do
  begin
    Show;
    WindowState := wsMaximized;
    BringToFront;
    SetForegroundWindow(Handle);
  end;
end;

end.
