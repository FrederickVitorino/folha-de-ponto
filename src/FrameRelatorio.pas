unit FrameRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TRelatorioFrame = class(TFrame)
    lblTituloRelatorio: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelatorioFrame: TRelatorioFrame;

implementation

{$R *.dfm}

end.
