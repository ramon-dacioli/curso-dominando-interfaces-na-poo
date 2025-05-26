unit eInterface.Model.Pessoa;

interface

uses
  eInterface.Model.Interfaces;

type

  TModelPessoa = class(TInterfacedObject, iPessoa)
  private
    FNome : String;
    FSobrenome : String;
    function Nome (Value : String) : iPessoa;
    function SobreNome (Value : String) : iPessoa;
    function NomeCompleto : String;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TModelPessoa }

constructor TModelPessoa.Create;
begin

end;

destructor TModelPessoa.Destroy;
begin

  inherited;
end;

function TModelPessoa.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoa.NomeCompleto: String;
begin
  Result := FNome + ' ' + FSobreNome;
end;

function TModelPessoa.SobreNome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
