import 'package:flutter/material.dart';
import 'package:trade_it/constants/constants.dart';

import 'components/buttons.dart';
import 'components/custom_app_bar.dart';
import 'components/drawer_bar.dart';
import 'components/lista_anuncios.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: CustomAppBar(),
      drawer: const Drawer(
        child: DrawerBar(),
      ),
      body: Column(
        children: const [
          Buttons(),
          ListaAnuncios(),
        ],
      ),
    );
  }
}