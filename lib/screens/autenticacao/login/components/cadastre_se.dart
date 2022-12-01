import 'package:flutter/gestures.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';
import 'package:trade_it/constants/constants.dart';

class CadastreSe extends StatelessWidget {
  const CadastreSe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          border: Border.all(
              style: BorderStyle.solid,
              color: Colors.black26, width: 0.5)),
      child: Center(
        child: RichText(text: TextSpan(
            text: "Não tem uma conta?",
            style: const TextStyle(color: Colors.black54),
            children: [
              TextSpan(
                  text: " Cadastre-se", style: const TextStyle(fontWeight: FontWeight.bold, color: base),
                  recognizer: TapGestureRecognizer()..onTap = () => context.read<AuthPageBloc>().add(MudarTela(tela: "Cadastro"))
              )
            ]
        )),
      ),
    );
  }
}
