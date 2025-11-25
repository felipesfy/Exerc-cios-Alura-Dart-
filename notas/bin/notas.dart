import 'dart:io';

void main() {
  List<String> notas = [];
  menu(notas);
}

String getComando(){
  List<String> comandos = <String> ['1', '2', '3'];
  print('Digite um comando: 1 - Adicionar notas, 2 - Listar notas, 3 - Sair');
  String? entrada;
  
  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)){
    print('Comando inválido!');
    getComando();
  }

  return entrada!;
}

List<String> addNota(List<String> notas){
  print('Escreva uma nota: ');
  String? nota;

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty){
    print('Não é possível inserir uma nota vazia!');
    addNota(notas);
  }

  notas.add(nota!);

  return notas;
}

void listarNotas (List<String> notas){
  for (var i = 0; i < notas.length; i++){
    print(notas[i]);
  }
}

void menu(List<String> notas){
  String comando = getComando();

  switch (comando){
    case '1':
    addNota(notas);
    menu(notas);

    case '2':
    listarNotas(notas);
    menu(notas);

    case '3':
    print('Até breve!');
  }
}