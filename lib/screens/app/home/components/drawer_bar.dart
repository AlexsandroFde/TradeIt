import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trade_it/screens/autenticacao/bloc/auth_page_bloc.dart';
import 'package:trade_it/screens/autenticacao/bloc/auth_page_events.dart';
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/data/data.dart';
import 'package:trade_it/models/barra_lateral.dart';
import 'dart:math' as math;

class DrawerBar extends StatelessWidget {
  const DrawerBar({Key? key}) : super(key: key);

  _buildBarra(BuildContext context, int index) {
    BarraLateral barralateral = barra[index];

    return Padding(
      padding: const EdgeInsets.all(0),
      child: MaterialButton(
        height: 50,
        onPressed: () => Navigator.pushNamed(context, barralateral.rota),
        child: Row(
          children: [
            Icon(barralateral.icon, size: 30),
            const SizedBox(width: 5),
            Text(barralateral.text),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
            titleSpacing: 0,
            backgroundColor: base,
            leading: const Icon(Icons.person_outline_rounded, size: 30),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Karen Ribeiro",
                    style: TextStyle(fontSize: 14), textAlign: TextAlign.start),
                Text(
                  "karenribeiro@gmail.com",
                  style: TextStyle(fontSize: 10),
                  textAlign: TextAlign.start,
                )
              ],
            )),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: barra.length,
            itemBuilder: (context, index) {
              return _buildBarra(context, index);
            },
          ),
        ),
        const Divider(
          thickness: 1.3,
        ),
        MaterialButton(
          height: 50,
          onPressed: () => context.read<AuthPageBloc>().add(Deslogar()),
          child: Row(
            children: [
              Transform(
                  transform: Matrix4.rotationY(math.pi),
                  alignment: Alignment.center,
                  child: const Icon(Icons.logout, size: 30)),
              const SizedBox(width: 5),
              const Text("Sair"),
            ],
          ),
        ),
      ],
    );
  }
}
