class Conta{
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
  
  ContaSalario(super.titular, super._saldo);
}