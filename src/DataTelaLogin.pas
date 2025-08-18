unit DataTelaLogin;

interface

uses
  System.SysUtils, System.Classes, DataConexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Forms;

type
  TDataModuleTelaLogin = class(TDataModule)
    fdqryUser: TFDQuery;
  private
    { Private declarations }
  public
    function ValidaLogin(Login, Senha: string): Integer;
    procedure FazerLogin(Login: string; Senha: string);
  end;

var
  DataModuleTelaLogin: TDataModuleTelaLogin;

implementation

uses
  Vcl.Dialogs, FormPrincipalBase, FormTelaLogin;

{$R *.dfm}

{ TDataModuleTelaLogin }

procedure TDataModuleTelaLogin.FazerLogin(Login, Senha: string);
var
  user_id: Integer;
begin
  fdqryUser.Close;
  fdqryUser.Open;
  user_id := ValidaLogin(Login, Senha);

  if user_id = -1 then
  begin
    ShowMessage('Senha ou login incorreto!!');
    exit;
  end;

  if not Assigned(PrincipalBase) then
    TPrincipalBase.Create(nil);

  PrincipalBase.UserId := user_id;
  TelaLogin.Hide;
  PrincipalBase.Show;
end;

function TDataModuleTelaLogin.ValidaLogin(Login, Senha: string): Integer;
var
  auxLogin, auxSenha: string;
  user_id: Integer;
begin
  user_id := -1;
  while not fdqryUser.Eof do
  begin
    auxLogin := fdqryUser.FieldByName('login').AsString;
    auxSenha := fdqryUser.FieldByName('senha').AsString;

    if (auxLogin = Login) and (auxSenha = Senha) then
    begin
      user_id := fdqryUser.FieldByName('user_id').AsInteger;
      Break;
    end
    else
      fdqryUser.Next;
  end;
  Result := user_id;
end;

end.
