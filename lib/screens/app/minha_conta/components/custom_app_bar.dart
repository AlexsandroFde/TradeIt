import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomAppBarMC extends StatelessWidget {
  const CustomAppBarMC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Minha Conta"),
      flexibleSpace: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                text: "Karen Ribeiro\n", style: TextStyle(fontSize: 18),
                children: [
                  TextSpan(text: "karenribeiro@gmail.com\n", style: TextStyle(fontSize: 15)),
                  TextSpan(text: "85 9 87XX-XXXX", style: TextStyle(fontSize: 18))
                ]
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: RichText(
              text: TextSpan(
                  text: "Editar",
                  style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
                  recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, "/Editar")
              )
          ),
        ),
      ],
    );
  }
}
