import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokedex_app/repository/model/pokemon.dart';

class PokemonRepository {
  Future<List<Pokemon>> getPokemonList() async {
    Uri uri = Uri.parse('http://104.131.18.84/pokemon/?limit=18&page=0');

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      List<Pokemon> pokemonList = [];
      Map json = jsonDecode(response.body);

      for (var item in (json['data'] as List)) {
        pokemonList.add(Pokemon.fromJson(item));
      }

      return pokemonList;
    } else {
      return [];
    }
  }
}
