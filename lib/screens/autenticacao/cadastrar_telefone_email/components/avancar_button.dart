import 'package:trade_it/screens/autenticacao/bloc/bloc.dart';

class AvancarButton extends StatelessWidget {
  const AvancarButton ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<AuthPageBloc, AuthPageState>(
      builder: (context, state) {
        bool button = state is AuthPageCadastrarTelefoneEmailState && state.button;
        bool telefone = state is AuthPageCadastrarTelefoneEmailState && state.telefone;
        return SizedBox(
          width: size.width,
          height: 46,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(button ? null : const Color.fromRGBO(117, 54, 175, 0.4)),
                  elevation: const MaterialStatePropertyAll(0)),
              onPressed: () => button ? context.read<AuthPageBloc>().add(MudarTela(novaTela: telefone ? "ConfirmarT" : "ConfirmarE")): null,
              child: const Text("Avançar",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
        );
      }
    )
    ;
  }
}