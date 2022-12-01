import 'package:flutter/gestures.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';
import 'package:trade_it/screens/autenticacao/cadastrar_senha/components/components.dart';
import 'package:trade_it/constants/constants.dart';

class CadastrarSenha extends StatelessWidget {
  const CadastrarSenha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthPageBloc, AuthPageState>(
        builder: (context, state) {
          bool telefone = state.telefone;
          return Column(
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.fromLTRB(40, 150, 40, 15),
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/trade_it.jpg"),
                                  fit: BoxFit.fill)
                          ),
                        ),
                        const Text("Crie uma senha",style: TextStyle(
                            color: Color.fromRGBO(117, 54, 175, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                        const SizedBox(height: 30),
                        const SenhaTextFieldCS(),
                        const SizedBox(height: 15),
                        const ConfirmarSenhaTextFieldCS(),
                        const SizedBox(height: 15),
                        const AvancarButtonCS()
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.black26, width: 0.5)),
                child: Center(
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
          );
        }
      ),
    );
  }
}
