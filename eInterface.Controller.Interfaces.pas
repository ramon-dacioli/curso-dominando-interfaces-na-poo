unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.Interfaces;

type

  TTypePessoa = (tpFisica, tpJuridica);

  iControllerPessoa = interface

    ['{66F164E6-F1A8-43C7-A229-B7F1F857B990}']

    function Pessoa(Value : TTypePessoa) : iPessoa;

  end;

implementation

end.
