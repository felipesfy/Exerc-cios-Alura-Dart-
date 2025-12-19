
class Animal{
  String especie;
  String nome;

  Animal(this.especie, this.nome);

  void emitirSom(){
    print('O animal $nome da espécie $especie emitiu um som');
  }
}

class Cachorro extends Animal{
  Cachorro(super.especie, super.nome);

  @override
  void emitirSom(){
    print('O cachorro $nome, da espécie $especie, latiu!');
  }

  void abanarRabo(){
    print('O cachorro $nome, da especie $especie, abanou o rabo!');
  }
}

class Gato extends Animal{
  Gato(super.especie, super.nome);

  @override
  void emitirSom(){
    print('O gato $nome, da espécie $especie, miou!');
  }

  void arranharMoveis(){
    print('O gato $nome, da especie $especie, arranhou um móvel!');
  }
}