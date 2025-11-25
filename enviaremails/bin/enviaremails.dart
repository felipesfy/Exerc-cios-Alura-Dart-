void sendMail(String email){
  print('Email enviado para: $email');
}

void main(){
  // List<String> listaEmails = ['joao@gmail.com', 'maria@gmail.com'];

  // listaEmails.add('enzo@gmal.com');

  // for (String email in listaEmails){
  //   sendMail(email);
  // }

  Set<String> setEmails = {'joao@gmail.com', 'maria@gmail.com'};

  setEmails.add('enzo@gmail.com');
  setEmails.add('enzo@gmail.com');
  setEmails.add('enzo@gmail.com');

  print(setEmails);


}