unit eInterface.Model.PessoaFisica;

interface

uses
  eInterface.Model.Interfaces;

type

  TModelPessoaFisica = class(TInterfacedObject, iPessoa)
  private
    FNome : String;
    FSobrenome : String;
    FDisplay : TEvDisplay;
    //Exemplo de utilização de propertys
    //FCPF: String;
    function Nome (Value : String) : iPessoa; overload;
    function Nome : String; overload;
    function SobreNome (Value : String) : iPessoa;
    function NomeCompleto : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa;
    //Exemplo de utilização de propertys
    //procedure SetCPF(const Value: String);
    //function GetFCPF: String;
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iPessoa;

    //Exemplo de utilização de propertys
    //property CPF : String read GetFCPF write SetCPF;
  end;

implementation

{ TModelPessoa }

constructor TModelPessoaFisica.Create;
begin

end;

destructor TModelPessoaFisica.Destroy;
begin

  inherited;
end;

function TModelPessoaFisica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

//Exemplo de utilização de propertys
//function TModelPessoaFisica.GetFCPF: String;
//begin
//  Result := FCPF;
//end;

class function TModelPessoaFisica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaFisica.Nome: String;
begin
  Result := FNome;
end;

function TModelPessoaFisica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome + ' ' + FSobreNome);
end;

//Exemplo de utilização de propertys
//procedure TModelPessoaFisica.SetCPF(const Value: String);
//begin
//  FCPF := Value;
//end;

function TModelPessoaFisica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
