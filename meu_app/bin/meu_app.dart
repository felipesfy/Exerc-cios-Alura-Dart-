import 'dart:io';

void main() {
  print ("Olá, digite seu nome:");
  var nome = stdin.readLineSync();
  print ("Digite sua idade:");
  var idade = stdin.readLineSync();
  print ("Olá $nome, você tem $idade anos!");
}