class Conta{
  String titular;
  double _saldo;

  void receber(double valor){
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor){
    if (valor > _saldo){
      _saldo -= valor;
      imprimeSaldo();
    }
  }

  void imprimeSaldo(){
    print('O saldo atual de $titular, é: R\$$_saldo');
  }

  Conta(this.titular, this._saldo);
}