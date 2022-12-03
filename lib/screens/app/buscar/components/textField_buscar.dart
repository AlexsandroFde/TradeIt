import 'package:flutter/material.dart';
import 'package:trade_it/constants/constants.dart';

class BuscarTextField extends StatelessWidget {
  const BuscarTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width - 80,
      height: 50,
      child: const TextField(
        cursorHeight: 30,
        strutStyle: StrutStyle(leading: 0.5),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                color: base
              )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          hintText: 'Buscar',
        ),
      )
    );
  }
}
