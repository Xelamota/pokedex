import 'package:flutter/material.dart';
import 'package:pokedex_app/view/detalhe.dart';
import 'package:pokedex_app/repository/model/pokemon.dart';

class PokemonWidget extends StatelessWidget {
  final Pokemon pokemon;
  const PokemonWidget({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return Detalhe(
                pokemon: pokemon,
              );
            },
          ));
        },
        child: Row(
          children: [
            Image.network(
              pokemon.thumbnailImage ?? '',
              height: 100,
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '#${pokemon.number}',
                ),
                Text(
                  pokemon.name ?? '',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
