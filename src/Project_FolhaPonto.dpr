program Project_FolhaPonto;

uses
  Vcl.Forms,
  FormTelaInicial in 'FormTelaInicial.pas' {TelaInicial},
  Vcl.Themes,
  Vcl.Styles,
  Vcl.Controls,
  DataConexao in 'DataConexao.pas' {dtmConexao: TDataModule},
  DataTelaInicial in 'DataTelaInicial.pas' {dtmTelaInicial: TDataModule},
  FormPrincipalBase in 'FormPrincipalBase.pas' {Form1},
  FrameConfiguracao in 'FrameConfiguracao.pas' {ConfigFrame: TFrame},
  FrameRelatorio in 'FrameRelatorio.pas' {RelatorioFrame: TFrame},
  DataPrincipalBase in 'DataPrincipalBase.pas' {dtmPrincipalBase: TDataModule},
  FormConfirmacao in 'FormConfirmacao.pas' {Confirmacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //
  Application.Title := 'Folha de ponto';
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.CreateForm(TdtmTelaInicial, dtmTelaInicial);
  Application.CreateForm(TdtmPrincipalBase, dtmPrincipalBase);
  Application.CreateForm(TConfirmacao, Confirmacao);
  //
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(TPrincipalBase, PrincipalBase);
  Application.Run;
end.
