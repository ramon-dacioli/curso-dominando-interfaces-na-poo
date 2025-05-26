unit eInterface.Model.PessoaJuridica;

interface

uses
  eInterface.Model.Interfaces;

type

  TModelPessoaJuridica = class(TInterfacedObject, iPessoa)
  private
    FNome : String;
    FSobrenome : String;
    FDisplay : TEvDisplay;
    //Exemplo de utilização de propertys
    //FCPF : String;
    function Nome (Value : String) : iPessoa; overload;
    function Nome : String; overload;
    function SobreNome (Value : String) : iPessoa;
    function NomeCompleto : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa;
    //Exemplo de utilização de propertys
    //function GetFCPF: String;
    //procedure SetCPF(const Value: String);
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iPessoa;

    //Exemplo de utilização de propertys
    //property CPF : String read GetFCPF write SetCPF;
  end;

implementation

{ TModelPessoa }

constructor TModelPessoaJuridica.Create;
begin

end;

destructor TModelPessoaJuridica.Destroy;
begin

  inherited;
end;

function TModelPessoaJuridica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

//Exemplo de utilização de propertys
//function TModelPessoaJuridica.GetFCPF: String;
//begin
//  Result := FCPF;
//end;

class function TModelPessoaJuridica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaJuridica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaJuridica.Nome: String;
begin
  Result := FNome;
end;

function TModelPessoaJuridica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome + ' ' + FSobreNome + ' LTDA ME');
end;

//Exemplo de utilização de propertys
//procedure TModelPessoaJuridica.SetCPF(const Value: String);
//begin
//
//end;

function TModelPessoaJuridica.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
