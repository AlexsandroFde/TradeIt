import 'package:trade_it/screens/autenticacao/cadastrar_telefone_email/components/components.dart';
import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class CadastrarTelefoneEmail extends StatelessWidget {
  const CadastrarTelefoneEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool telefone = state is AuthPageCadastrarTelefoneEmailState && state.telefone;
        return Scaffold(
          body: Column(
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
                              image: DecorationImage(image: AssetImage("assets/images/trade_it_.jpg"),
                                  fit: BoxFit.fill)
                          ),
                        ),
                        Row(
                          children: const [
                            TelefoneButton(),
                            EmailButton(),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const TelefoneEmailTextField(),
                        const SizedBox(height: 15),
                        Text("Você poderá receber notificações por ${telefone ? "SMS" : "email"} para fins de segurança e login.",
                            style: const TextStyle(color: Colors.black54),
                            textAlign: TextAlign.center),
                        const SizedBox(height: 15),
                        const AvancarButton()
                      ],
                    ),
                  ],
                ),
              ),
              const Entrar()
            ],
          ),
        );
      }
    );
  }
}
