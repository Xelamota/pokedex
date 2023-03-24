import 'package:flutter/material.dart';
import 'package:pokedex_app/repository/model/pokemon.dart';

class Detalhe extends StatelessWidget {
  final Pokemon pokemon;
  const Detalhe({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pokemon.name ?? '')),
      body: Card(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Image.network(
                    pokemon.thumbnailImage ?? '',
                    height: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('#${pokemon.number}'),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text(
                  "${pokemon.description}",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 5),
              child: Row(
                children: const [
                  Text(
                    'Tipo:',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 20, left: 20),
              child: Row(
                children: [
                  Text(
                    '${pokemon.type}',
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
              child: Row(
                children: const [
                  Text(
                    'Fraquezas:',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 20),
              child: Row(
                children: [
                  Text(
                    '${pokemon.weakness}',
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
