import "package:flutter/material.dart";
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/screens/app/notificacoes/components/lista_notificacoes.dart';

class Notificacoes extends StatelessWidget {
  const Notificacoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificações'),
        backgroundColor: base,
      ),
      body: Column(
          children: const [
            ListaNotificacoes()
          ]
      ),
    );
  }
}