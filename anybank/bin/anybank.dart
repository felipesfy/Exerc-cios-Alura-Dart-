import 'package:anybank/conta.dart';


void main() {
/*   Conta contaMatheus = Conta('Matheus', 1000);
  Conta contaRoberta = Conta('Roberta', 2000);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for (Conta conta in contas){
    conta.imprimeSaldo();
  }

  contaRoberta.receber(5000);

  contaMatheus.imprimeSaldo();

  contaMatheus.receber(500);

  contaMatheus.enviar(200); */

  ContaCorrente contaCorrenteDenize = ContaCorrente('Denize', 1500);
  contaCorrenteDenize.enviar(1801);

  ContaPoupanca contaPoupancaFelipe = ContaPoupanca('Felipe', 5000);
  contaPoupancaFelipe.calculaRendimento();


}


