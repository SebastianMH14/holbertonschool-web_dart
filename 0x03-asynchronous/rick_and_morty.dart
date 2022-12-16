import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  String url = 'https://rickandmortyapi.com/api/character';
  try {
    var response = await http.get(Uri.parse(url));
    var characters = json.decode(response.body);
    characters.forEach((character) => print(character['name']));
  } catch (e) {
    print("error caught: $e");
  }
}
