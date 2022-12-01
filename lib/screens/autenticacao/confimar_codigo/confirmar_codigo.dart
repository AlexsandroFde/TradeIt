import 'package:flutter/gestures.dart';
import 'package:trade_it/screens/autenticacao/auth_page.dart';
import 'package:trade_it/screens/autenticacao/confimar_codigo/components/components.dart';
import 'package:trade_it/constants/constants.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class ConfirmarCodigo extends StatelessWidget {
  const ConfirmarCodigo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool telefone = state.telefone;
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(40, 100, 40, 15),
            child: Column(
              children: [
                const Text("INSERIR CÓDIGO DE CONFIRMAÇÃO", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                const SizedBox(height: 25),
                const Expanded(
                  flex: 3,
                  child: CodigoTextField(),
                ),
                RichText(
                  textAlign: TextAlign.center,
                    text: TextSpan(
                    text: "Insira o código de confirmação que enviamos para o ${telefone ? "telefone +55 ${state.cell}" : "email ${state.email}"}.",
                    style: const TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: " Reenviar código.", style: const TextStyle(fontWeight: FontWeight.bold, color: base),
                          recognizer: TapGestureRecognizer()..onTap = () {}
                      )
                    ]
                )),
                const SizedBox(height: 15),
                const AvancarButtonCC(),
                Expanded(
                  flex: 10,
                  child: Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: RichText(
                        text: TextSpan(
                            text: "Voltar ao Cadastrar ${telefone ? "telefone" : "email"}",
                            style: const TextStyle(color: base, fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()..onTap = () => context.read<AuthPageBloc>().add(MudarTela(tela: "TelefoneEmail"))
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
