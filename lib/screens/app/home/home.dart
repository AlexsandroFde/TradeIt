import 'package:flutter/material.dart';
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/screens/app/home/components/components.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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