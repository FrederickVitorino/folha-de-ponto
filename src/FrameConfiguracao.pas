unit FrameConfiguracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrameConfig = class(TFrame)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    lblTituloConfig: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrameConfig: TFrameConfig;

implementation

{$R *.dfm}

end.
