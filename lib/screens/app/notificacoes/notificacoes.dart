import "package:flutter/material.dart";
import 'package:trade_it/constants/constants.dart';

import 'components/lista_notificacoes.dart';

class Notificacoes extends StatefulWidget {
  const Notificacoes({Key? key}) : super(key: key);

  @override
  State<Notificacoes> createState() => _NotificacoesState();
}

class _NotificacoesState extends State<Notificacoes> {
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