import "package:flutter/material.dart";
import 'package:trade_it/constants/constants.dart';

import 'componets/lista_favoritos.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({Key? key}) : super (key: key);

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          title: const Text('Favoritos'),
          backgroundColor: base,
        ),
        body: Column(
            children: const [
              ListaFavoritos()
            ]
        )
    );
  }
}