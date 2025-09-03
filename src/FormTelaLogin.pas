unit FormTelaLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, DataTelaLogin;

type
  TTelaLogin = class(TForm)
    pnlBackground: TPanel;
    lbledtLogin: TLabeledEdit;
    lbledtSenha: TLabeledEdit;
    btnEntrar: TButton;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  end;

var
  TelaLogin: TTelaLogin;

implementation

{$R *.dfm}

procedure TTelaLogin.btnEntrarClick(Sender: TObject);
var
  Login, Senha: string;
begin
  Login := lbledtLogin.Text;
  Senha := lbledtSenha.Text;
  try
    if (Login <> '') and (Senha <> '') then
      DataModuleTelaLogin.FazerLogin(Login, Senha)
    else
     ShowMessage('Preencha todos os campos.');
  finally
    lbledtLogin.Clear;
    lbledtSenha.Clear;
  end;
end;

procedure TTelaLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnEntrar.Click;
end;

end.
