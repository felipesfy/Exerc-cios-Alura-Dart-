class Cliente{
  String nome;
  List<int> _quartos;

  void reservaQuarto(int quarto){
    print('Qual quarto deseja reservar?');
    _quartos.add(quarto);
    print('Reserva efetuada com sucesso!');
    exibeReserva();
  }

  void cancelaReserva(int quarto){
    if (_quartos.contains(quarto)){
      _quartos.remove(quarto);
    } else{
        print('O cliente $nome, não possui reserva para o quarto $quarto');
      }
    exibeReserva();
  }

  void exibeReserva(){
    if (_quartos.isNotEmpty){
      print('Os quartos $_quartos, estão reservados no nome de $nome');
    } else {
        print('O usuário $nome, não possui quartos reservados');
      }
    
  }

  Cliente(this.nome, this._quartos);
}