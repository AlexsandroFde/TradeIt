import 'package:flutter/material.dart';
import 'package:trade_it/screens/app/categorias/components/lista_categorias.dart';

class Categorias extends StatelessWidget {
  const Categorias({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
      ),
      body: Column(
          children: const [
            ListaCategorias()
          ]
      ),
    );
  }
}