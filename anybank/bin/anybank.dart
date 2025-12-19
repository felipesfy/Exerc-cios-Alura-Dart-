import 'package:anybank/conta.dart';


void main() {

  ContaCorrente contaCorrenteDenize = ContaCorrente('Denize', 1500);
  contaCorrenteDenize.enviar(1801);

  ContaPoupanca contaPoupancaFelipe = ContaPoupanca('Felipe', 5000);
  contaPoupancaFelipe.calculaRendimento();

  ContaSalario contaSalarioCatarina = ContaSalario('1564-4548', 'Empresa Prodata', 'Catarina', 7000);

  contaSalarioCatarina.imprimeSalario(5000);

  contaSalarioCatarina.imprimeSaldo();




}


