import 'package:flutter/material.dart';
import 'package:pokedex_app/repository/model/pokemon.dart';
import 'package:pokedex_app/repository/pokemon_repository.dart';

class PokemonController extends ChangeNotifier {
  List<Pokemon> pokemonList = [];
  bool loading = true;
  final PokemonRepository _repository;

  PokemonController(this._repository);

  void loadPokemon() async {
    List<Pokemon> list = await _repository.getPokemonList();
    pokemonList = list;
    loading = false;
    notifyListeners();
  }
}
