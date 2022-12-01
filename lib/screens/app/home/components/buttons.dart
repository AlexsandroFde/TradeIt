import 'package:flutter/material.dart';
import 'package:trade_it/constants/constants.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/Categorias"),
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(
                        ContinuousRectangleBorder(side: BorderSide.none)),
                    fixedSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                child: const Text(
                  "Categorias",
                  style: TextStyle(color: base, fontSize: 19),
                ))),
        Expanded(
            flex: 1,
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/Filtros"),
                style: const ButtonStyle(
                    shape: MaterialStatePropertyAll(
                        ContinuousRectangleBorder(side: BorderSide.none)),
                    fixedSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                    backgroundColor: MaterialStatePropertyAll(Colors.white)),
                child: const Text(
                  "Filtros",
                  style: TextStyle(color: base, fontSize: 19),
                )))
      ],
    );
  }
}
