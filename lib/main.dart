import 'package:flutter/material.dart';
import 'package:pokedex_app/controllers/pokemon_controller.dart';
import 'package:pokedex_app/view/home.dart';
import 'package:pokedex_app/repository/pokemon_repository.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => PokemonRepository()),
        ChangeNotifierProvider(
          create: (context) => PokemonController(context.read()),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Pokedex',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
