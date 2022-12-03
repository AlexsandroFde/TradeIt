import 'package:flutter/material.dart';
import 'package:trade_it/screens/app/buscar/components/textField_buscar.dart';

class Buscar extends StatelessWidget {
  const Buscar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        titleSpacing: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const BuscarTextField(),
      ),
    );
  }
}
