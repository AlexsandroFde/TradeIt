import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/screens/autenticacao/recuperar_senha/components/components.dart';
import 'package:trade_it/screens/autenticacao/bloc/auth_page_bloc.dart';
import 'package:trade_it/screens/autenticacao/bloc/auth_page_events.dart';

class RecuperarSenha extends StatelessWidget {
  const RecuperarSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 80, 40, 15),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/trade_it_.jpg"),
                      fit: BoxFit.fill)),
            ),
            const Text("Recuperação de senha",
                style: TextStyle(
                    color: Color.fromRGBO(117, 54, 175, 1),
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            const RecuperarTextField(),
            const SizedBox(height: 15),
            const RecuperarButton(),
            const SizedBox(height: 15),
            const Text(
              "Você receberá um link para cadastrar uma nova senha.",
              style: TextStyle(color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.bottomCenter,
                child: RichText(
                    text: TextSpan(
                        text: "Voltar ao login",
                        style: const TextStyle(color: base, fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()..onTap = () => context.read<AuthPageBloc>().add(MudarTela(tela: "Login"))
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
