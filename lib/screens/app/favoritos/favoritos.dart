import "package:flutter/material.dart";
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/screens/app/favoritos/componets/lista_favoritos.dart';

class Favoritos extends StatelessWidget {
  const Favoritos({Key? key}) : super (key: key);

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