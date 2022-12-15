import "package:flutter/material.dart";
import 'package:trade_it/screens/app/minha_conta/components/buttons.dart';
import 'package:trade_it/screens/app/minha_conta/components/custom_app_bar.dart';

class MinhaConta extends StatelessWidget {
  const MinhaConta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: CustomAppBarMC()
      ),
      body: Column(
          children: const [
            Buttons()
          ]
      ),
    );
  }
}