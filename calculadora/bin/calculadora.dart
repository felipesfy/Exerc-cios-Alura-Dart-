import 'dart:io';

void main() {


  //MENSAGEM DE INICIO DO PROGRAMA
  print ("=================");
  print ("Calculadora 2000!");
  print ("=================");

  //INSERE, VERIFICA E ARMAZENA A OPERAÇÃO DESEJADA
  print ("Digite a operação desejada:");
  //print ("+ = Soma, - = Subtração, * = Multiplicação, / = Divisão, Sair");
  List<String> operacoes = <String>["+", "-", "*", "/", "Sair"];
  String operacao = "";
  double primeironumero = 0;
  double segundonumero = 0;
  String? entrada = "";

  // FUNÇÃO DE SOMA
  void soma (){
    print("A soma dos números é: ${primeironumero + segundonumero}");
  }
  //FUNÇÃO DE SUBTRAÇÃO
  void subtracao (){
    print ("A subtração dos números é: ${primeironumero - segundonumero}");
  }

  //FUNÇÃO DE MULTIPLICAÇÃO
  void multiplicacao (){
    print("A multiplicação dos números é: ${primeironumero * segundonumero}");
  }

  //FUNÇÃO DE DIVISÃO
  void divisao (){
    print("A divisão dos números é: ${primeironumero / segundonumero}");
  }


  //CONDIÇÕES DAS OPERAÇÕES
  void calcular(){
    switch(operacao){
      case "+" : soma();
      case "-" : subtracao();
      case "*" : multiplicacao();
      case "/" : divisao();
      case "Sair" : break;
    }
  }

  void getOperacao(){
    print('Digite uma operação ${operacoes.toString()}: ');
    entrada = stdin.readLineSync();
    if (entrada != null){
      if (operacoes.contains(entrada)){
        operacao = entrada!;
      } else{
        print('Operação inválida!');
        getOperacao();
      }
    }
  }


  getOperacao();

  print ("Digite o primeiro valor:");
  entrada = stdin.readLineSync();

  if(entrada != null){
    if(entrada != ""){
      primeironumero = double.parse(entrada!);
    }
  }

  print("Digite o segundo valor da soma:");
  entrada = stdin.readLineSync();

  if (entrada != null){
    if (entrada != ""){
      segundonumero = double.parse(entrada!);
    }
  }
  

  calcular();
    
}