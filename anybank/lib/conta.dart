abstract class Conta{
  String titular;
  double _saldo;

  void receber(double valor){
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor){
    if (valor < _saldo){
      _saldo -= valor;
      imprimeSaldo();
    }
  }

  void imprimeSaldo(){
    print('O saldo atual de $titular, é: R\$$_saldo');
  }

  Conta(this.titular, this._saldo);
}

class ContaCorrente extends Conta{
  double emprestimo = 300;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor){
    if (valor <= _saldo + emprestimo){
      _saldo -= valor;
      imprimeSaldo();
    }
  }
}

class ContaPoupanca extends Conta{
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento(){
    _saldo += _saldo * rendimento;
    imprimeSaldo();
  }
}

class ContaSalario extends Conta{
  String cpnj;
  String nomeEmpresa;

  ContaSalario(this.cpnj, this.nomeEmpresa, super.titular, super._saldo);

  void imprimeSalario(double valor){
    _saldo += valor;
    print('O salário da empresa $nomeEmpresa, de CNPJ $cpnj no valor de R\$$valor, foi depositado!');
  }
}

mixin Imposto {
  double taxa = 0.03;

  double valorTaxado(double valor){
    return valor * taxa;
  }
}

class ContaEmpresa extends Conta with Imposto{
  ContaEmpresa(super.titular, super._saldo);

  @override
  void enviar(double valor){
    if(_saldo >= valor + valorTaxado(valor)){
      _saldo -= valor + valorTaxado(valor);
    }
  }

  @override
  void receber(double valor){
    _saldo += valor - valorTaxado(valor);
  }
}

