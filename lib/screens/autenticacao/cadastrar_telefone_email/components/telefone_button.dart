import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class TelefoneButton extends StatelessWidget {
  const TelefoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool telefone = state is AuthPageCadastrarTelefoneEmailState && state.telefone;
        return Expanded(
          child: Column(
            children: [
              TextButton(onPressed: () {
                context.read<AuthPageBloc>().add(MudarTela(novaTela: "Telefone"));
                FocusManager.instance.primaryFocus?.unfocus();
              },
                  style: const ButtonStyle(
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: MaterialStatePropertyAll(Colors.transparent)),
                  child: Text("Telefone", style: TextStyle(color: telefone ? const Color.fromRGBO(117, 54, 175, 1) : Colors.black54, fontSize: 16, fontWeight: FontWeight.bold))),
              Divider(color: telefone ? const Color.fromRGBO(117, 54, 175, 1) : Colors.black26, thickness: 1.3),
            ],
          ),
        );
      }
    );
  }
}
