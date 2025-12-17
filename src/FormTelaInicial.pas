unit FormTelaInicial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, DataTelaInicial, Vcl.ComCtrls, Vcl.TabNotBk,
  Vcl.Imaging.pngimage, FormConfirmacao, Vcl.CheckLst;

type
  TTelaInicial = class(TForm)
    pnlBackground: TPanel;
    ntbkTelaInicial: TNotebook;
    pnlLogin: TPanel;
    btnEntrar: TButton;
    lbledtSenha: TLabeledEdit;
    lbledtLogin: TLabeledEdit;
    pnlConfig: TPanel;
    lbledtPortaServerBD: TLabeledEdit;
    lbledtIPServerBD: TLabeledEdit;
    lbledtSenhaBD: TLabeledEdit;
    lbledtUserBD: TLabeledEdit;
    lbledtNomeBD: TLabeledEdit;
    ImgConfig: TImage;
    ImgVoltar: TImage;
    grdpnl1: TGridPanel;
    pnl1: TPanel;
    grdpnl2: TGridPanel;
    Button3: TButton;
    btnSalvarConfigBD: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnEntrarClick(Sender: TObject);
    procedure btnSalvarConfigBDClick(Sender: TObject);
    procedure lbledtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure lbledtLoginKeyPress(Sender: TObject; var Key: Char);
    procedure ImgConfigClick(Sender: TObject);
    procedure ImgVoltarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ntbkTelaInicialPageChanged(Sender: TObject);
    private
      procedure SalvaConfigBD;
    public


  end;

var
  TelaInicial: TTelaInicial;

implementation

uses DataConexao;

{$R *.dfm}

procedure TTelaInicial.btnEntrarClick(Sender: TObject);
var
  Login, Senha: string;
begin
  Login := lbledtLogin.Text;
  Senha := lbledtSenha.Text;
  try
    if (Login <> '') and (Senha <> '') then
      dtmTelaInicial.FazerLogin(Login, Senha)
    else
      ShowMessage('Preencha todos os campos.');
  finally
    lbledtLogin.Clear;
    lbledtSenha.Clear;
  end;
end;

procedure TTelaInicial.btnSalvarConfigBDClick(Sender: TObject);
var
  TelaConfirmacao: TConfirmacao;
begin
  try
    TelaConfirmacao := TConfirmacao.Create(nil);

    if not Assigned(Confirmacao) then
      TelaConfirmacao := TConfirmacao.Create(nil);

    TelaConfirmacao.Lbl1.Caption := 'Deseja mesmo alterar as configurações?';
    TelaConfirmacao.pnlEdit.Visible := False;
    TelaConfirmacao.grdpnl1.RowCollection[1].Value := 0;
    TelaConfirmacao.grdpnl1.Realign;
    TelaConfirmacao.ClientHeight := TelaConfirmacao.grdpnl1.Height;
    TelaConfirmacao.Caption := 'Confirmação das alterações';
    if TelaConfirmacao.ShowModal = mrOk then
    begin
      SalvaConfigBD;
      dtmTelaInicial.TestarConexaoBanco;
    end;
  finally
    TelaConfirmacao.Free;
  end;
end;

procedure TTelaInicial.FormCreate(Sender: TObject);
begin
  ntbkTelaInicial.PageIndex := 0;
end;

procedure TTelaInicial.FormShow(Sender: TObject);
begin
  lbledtNomeBD.Text := dtmConexao.con.Params.Values['Database'];
  lbledtUserBD.Text := dtmConexao.con.Params.Values['User_Name'];
  lbledtSenhaBD.Text := dtmConexao.con.Params.Values['Password'];
  lbledtIPServerBD.Text := dtmConexao.con.Params.Values['Server'];
  lbledtPortaServerBD.Text := dtmConexao.con.Params.Values['Port'];
end;

procedure TTelaInicial.ImgVoltarClick(Sender: TObject);
begin
  ntbkTelaInicial.PageIndex := 0;
end;

procedure TTelaInicial.SalvaConfigBD;
var
  NomeBD: string;
  IP: string;
  Porta: string;
  Username: string;
  Senha: string;
begin
  NomeBD := lbledtNomeBD.Text;
  IP := lbledtIPServerBD.Text;
  Porta := lbledtPortaServerBD.Text;
  Username := lbledtUserBD.Text;
  Senha := lbledtSenhaBD.Text;
  dtmConexao.AtualizarArqConfigBD(NomeBD, IP, Porta, Username, Senha);
  dtmConexao.AlterarConfigBD(NomeBD, IP, Porta, Username, Senha);
end;

procedure TTelaInicial.ImgConfigClick(Sender: TObject);
var
  LConfirmacao: TConfirmacao;
begin
  LConfirmacao := TConfirmacao.Create(nil);
  try
    LConfirmacao.Lbl1.Caption := 'Digite a senha para alterar o banco de dados.';
    LConfirmacao.pnlEdit.Visible := True;


    if LConfirmacao.ShowModal = mrOk then
    begin
      if LConfirmacao.Edt1.Text = dtmConexao.Senha then
      begin
        ntbkTelaInicial.PageIndex := 1;
      end
      else
      begin
        ShowMessage('A senha informada está incorreta.');
      end;
    end;

  finally
    LConfirmacao.Free;
  end;
end;

procedure TTelaInicial.lbledtLoginKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnEntrar.Click;
  end;
end;
procedure TTelaInicial.lbledtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    btnEntrar.Click;
  end;
end;

procedure TTelaInicial.ntbkTelaInicialPageChanged(Sender: TObject);
var
  SL: TStringList;
begin
  if ntbkTelaInicial.PageIndex = 1 then
  begin
    SL := TStringList.Create;
    SL.LoadFromFile('.\Config\BDConfig.txt');

    lbledtNomeBD.Text := SL.Values['Database'];
    lbledtIPServerBD.Text := SL.Values['Server'];
    lbledtPortaServerBD.Text := SL.Values['Port'];
    lbledtUserBD.Text := SL.Values['User_Name'];
    lbledtSenhaBD.Text := SL.Values['Password'];
  end;
end;

end.
