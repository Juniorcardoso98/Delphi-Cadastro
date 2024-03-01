unit Projeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons;

type
  TForm1 = class(TForm)
    Conexao: TFDConnection;
    Q_cadastro: TFDQuery;
    Ds_cadastro: TDataSource;
    Panel1: TPanel;
    Q_cadastroID_CONTATO: TIntegerField;
    Q_cadastroNOME: TStringField;
    Q_cadastroTELEFONE: TStringField;
    Q_cadastroCELULAR: TStringField;
    Q_cadastroEMAIL: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    db_nome: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    bt_novo: TBitBtn;
    bt_editar: TBitBtn;
    bt_deletar: TBitBtn;
    bt_gravar: TBitBtn;
    bt_cancelar: TBitBtn;
    bt_atualizar: TBitBtn;
    bt_sair: TBitBtn;
    procedure bt_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bt_novoClick(Sender: TObject);
var prox:integer;
begin
Q_cadastro.Active:=true;
Q_cadastro.last;
prox:=Q_cadastroID_CONTATO.AsInteger + 1;
Q_cadastro.Append;
Q_cadastroID_CONTATO.AsInteger:=prox;
db_nome.SetFocus;
end;

end.
