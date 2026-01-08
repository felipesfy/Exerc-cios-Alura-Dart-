import 'package:http/http.dart';

void main (){
  // print('Olá, mundo!');
  requestData();
}

void requestData(){
  String url = 'https://gist.githubusercontent.com/felipesfy/0002786b7932f5ba275b50139ce714d8/raw/05665b8bba66ffab3164672db90f0706ae5c3533/accounts.json';
  Future<Response> futureResponse =  get(Uri.parse(url));
  print(futureResponse);
  futureResponse.then((Response response) {
    print(response);
    print(response.body);
  },);
}