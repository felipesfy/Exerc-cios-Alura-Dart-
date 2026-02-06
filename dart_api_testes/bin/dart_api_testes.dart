import 'package:http/http.dart';

void main(){
  print('Hello World!');
  fetchRecipes();
}

void fetchRecipes(){
  String url = 'https://gist.githubusercontent.com/felipesfy/aea082f445992f71b1b19b5f1a3c7f14/raw/7537ebad1d01fec3c71b4683e1ae58212830641d/recipes.json';
  Uri uri = Uri.parse(url);
  get(uri).then((value) {
    print(value.body);
  },);
}