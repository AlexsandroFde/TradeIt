import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 25, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(
                  text: "Meus Anúncios",
                  style: const TextStyle(color: Colors.black87, fontSize: 19, fontWeight: FontWeight.w400),
                  recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, "/MeusAnuncios")
              )
          ),
          const SizedBox(height: 25),
          RichText(
              text: TextSpan(
                  text: "Favoritos",
                  style: const TextStyle(color: Colors.black87, fontSize: 19, fontWeight: FontWeight.w400),
                  recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, "/Favoritos")
              )
          ),
          const SizedBox(height: 25),
          RichText(
              text: TextSpan(
                  text: "Meu Perfil",
                  style: const TextStyle(color: Colors.black87, fontSize: 19, fontWeight: FontWeight.w400),
                  recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, "/MeuPerfil")
              )
          ),
          const SizedBox(height: 25),
          RichText(
              text: TextSpan(
                  text: "Segurança e Privacidade",
                  style: const TextStyle(color: Colors.black87, fontSize: 19, fontWeight: FontWeight.w400),
                  recognizer: TapGestureRecognizer()..onTap = () => Navigator.pushNamed(context, "/Seguranca")
              )
          )
        ],
      ),
    );
  }
}
