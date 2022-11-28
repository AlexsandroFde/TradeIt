import 'package:flutter/material.dart';
import 'package:trade_it/data/data.dart';

import '../../../../models/notificacao.dart';

class ListaNotificacoes extends StatelessWidget {
  const ListaNotificacoes({Key? key}) : super(key: key);

  _buildNotificacoes(BuildContext context, int index) {
    Notificacao lista = notificacoes[index];
    return MaterialButton(
      onPressed: () => Navigator.pushNamed(context, "/Notificacao"),
      height: 85,
      shape: const Border(bottom: BorderSide(color: Color(0x15000000))),
      color: Colors.white,
      padding: const EdgeInsets.only(left: 6, top: 0,right: 6, bottom: 0),
      child: Row(
        children: [
          Container(
            height: 62,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(9)),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 4)
                ),
              ],
              image: DecorationImage(image: AssetImage(lista.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(lista.title, style: const TextStyle(fontSize: 16)),
                    const Expanded(child: SizedBox()),
                    Text(lista.time, style: const TextStyle(fontSize: 11, color: Color.fromRGBO(112, 112, 112, 1)))
                  ],
                ),
                const Text("Aproveite os melhores anúncios por tempo limitado!", style: TextStyle(fontSize: 11, color: Color.fromRGBO(112, 112, 112, 1)), textAlign: TextAlign.left, ),
                const SizedBox(height: 30)
              ],
            ),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
      ListView.builder(
        padding: const EdgeInsets.all(0),
        itemCount: notificacoes.length,
        itemBuilder: (context, index) {
          return _buildNotificacoes(context, index);
        },
      ),
    );
  }
}
