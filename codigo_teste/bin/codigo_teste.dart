//import 'dart:io';




/* void main(){
    List<String> nomes = ['Joao', 'Ana', 'Maria', 'Jose'];
    for (int i = 0; i < nomes.length; i++){
      print(nomes[i]);
    }
  } */

/* void main(){
    for(int i = 0; i <= 5; i++){
      print(i);
    }
  } */

/* void main(){
    int valor = 1;
    while (valor <= 5){
      print(valor);
      valor++;
    }
  } */

/* void main(){
    List <String> operacoes = <String> ['deposito', 'retirada', 'transferencia', 'pagamento'];
    String? entrada = '';
    double? valor = 0;

    void getEntrada (){
      print('Digite uma operação $operacoes:');
      entrada = stdin.readLineSync();
      if (entrada != null && operacoes.contains(entrada)){
        print('Digite o valor da operação');
        valor = double.parse(stdin.readLineSync()!);
        print('Operação selecionada $entrada, valor da operação $valor');
      } else {
          print('Digite uma operação válida!');
          getEntrada();
      }
    }
    getEntrada();
  } */
/* void main(){
    Map <int, String> meses = {1 : 'Janeiro', 2 : 'Fevereiro', 3 : 'Março', 4 : 'Abril', 5 : 'Maio', 6 : 'Junho', 7 : 'Julho', 8 : 'Agosto', 9 : 'Setembro', 10 : 'Outubro', 11 : 'Novembro', 12 : 'Dezembro'};
    print('Digite um número de 1 a 12 para selecionar um mês do ano: ');
    int entrada = int.parse(stdin.readLineSync()!);
    print('O mês escolhido foi ${meses[entrada]}');
  } */

/* void main(){
    List <String> meses = <String>['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'];
    String? entrada = '';

    void getMes(){
      print('Digite o mês $meses: ');
      entrada = stdin.readLineSync();

      if (entrada != null){
        if (meses.contains(entrada)){
        print('O mês escolhido foi $entrada');
        } else {
          print('Mês incorreto!');
          getMes();
        }
      }
      //entrada = int.parse(stdin.readLineSync()!);
    }

    getMes();
  } */


/* void main(){
    List<String> tipoArquivos = <String>['jpg', 'png', 'pdf', 'docx'];
    String? entrada = '';

    void getArquivo(){
      print('Digite o tipo do arquivo $tipoArquivos: ');
      entrada = stdin.readLineSync();

      if (entrada != null){
        if(tipoArquivos.contains(entrada)){
          print('Tipo de arquivo digitado ($entrada), válido!');
        } else {
          print('Tipo de arquivo inválido: ');
          getArquivo();}
      }
    }

    getArquivo();
  } */



/* void main(){
    List<String> categorias = <String>['eletronicos', 'alimentos', 'vestuario', 'livros'];
    String? entrada = '';

    void getCategoria(){
      print('Digite uma categoria: ');
      entrada = stdin.readLineSync();
      if (entrada != null){
        if (categorias.contains(entrada)){

          print('Categoria válida: $entrada');
        } else{
          print('Categoria inválida!');
          getCategoria();
        }
      }
    }

    getCategoria();
  } */

/* void main(){
    Map <String, int> paises = {'BRASIL' : 18, 'JAPAO' : 20, 'EUA' : 16};

    print('Digite sua idade: ');
    int idade = int.parse(stdin.readLineSync()!);
    
    print('Digite seu país (BRASIL, JAPAO OU EUA): ');
    String pais = stdin.readLineSync()!;

    if (idade >= paises[pais]!){
      print('Você pode dirigir no país selecionado ($pais)');
    } else{
      print('Você não pode dirigir no país selecionado ($pais)');
    }
  } */

/*  double saldo = 1000.0; // Saldo inicial em reais

    void main() {
      print('Boas-vindas ao seu banco digital!');
      print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

      print('Digite o valor do Pix que deseja realizar:');
      double valorPix = double.parse(stdin.readLineSync()!);

      if(saldo >= valorPix){
        saldo -= valorPix;
        print('Pix efetuado com sucesso! Seu saldo atual é: $saldo');
      } else {
        print('Saldo insuficiente');
      }
    } */

/* void main(){
      Map <int, String> meses = {1 : 'Janeiro', 2 : 'Fevereiro', 3 : 'Março', 4 : 'Abril', 5 : 'Maio', 6 : 'Junho', 7 : 'Julho', 8 : 'Agosto', 9 : 'Setembro', 10 : 'Outubro', 11 : 'Novembro', 12 : 'Dezembro'};
      print('Digite um número de 1 a 12 para selecionar um mês do ano: ');
      int entrada = int.parse(stdin.readLineSync()!);
      print('O mês escolhido foi ${meses[entrada]}');
    } */


/* void main(){
      int idade = int.parse(stdin.readLineSync()!);
      if (idade > 18){
        print ('Você tem idade para dirigir!');
      } else{
        print ('Você não tem idade para dirigir!');
      }
  } 
*/


/*  ###################
    ### CONTA CUPOM ###
    ###################
  void main(){
  while (true){
  print('Digite o valor da sua compra: ');
  double compra = double.parse(stdin.readLineSync()!);
  int cupons = (compra / 50).floor();
  print('Você ganhou $cupons cupons!');
}}
*/

/*  ############################################
    ### SAQUE DE PONTOS (CORREÇÃO DE CODIGO) ### 
    ############################################
  void main() {
  double pontosIniciais = 100;
  double pontosRetirados;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  pontosRetirados = double.parse(stdin.readLineSync()!);
    void pontosRestantes(){
    print("Você resgatou $pontosRetirados pontos. Pontos restantes: ${pontosIniciais - pontosRetirados}.");
  }
  pontosRestantes();
} */


/* ###########################
   ### DEBITA PIX DA CONTA ###
   ###########################
double saldo = 1000.0; // Saldo inicial em reais

void main() {
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  saldo -= valorPix;

  print('Pix realizado com sucesso!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
} */


/*  #################################################
    ### CALCULA SALÁRIO LIQUIDO / HORA TRABALHADA ###
    #################################################
    void main(){
    double salarioph = 50;
    print('Insira quantas horas foram trabalhadas: ');
    double horas = double.parse(stdin.readLineSync()!);
    double desconto = (salarioph * horas) * 0.05;
    print('O salário líquido é de: ${(horas * salarioph) - desconto}');
  } */


/*  ############################################
    ### CALCULAR MÉDIA DE IDADE DE 3 PESSOAS ###
    ############################################
  void main() {
  //SOLICITAR IDADE DE 3 PESSOAS
  print('Digite a idade da primeira pessoa: ');
  int nome1 = int.parse(stdin.readLineSync()!);
  print('Digite a idade da segunda pessoa: ');
  int nome2 = int.parse(stdin.readLineSync()!);
  print('Digite a idade da terceira pessoa: ');
  int nome3 = int.parse(stdin.readLineSync()!);

  print('A média das idades é: ${(nome1 + nome2 + nome3) / 3}');

} */